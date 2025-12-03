@interface HerculesMappings
+ (id)addBalancesFromVC:(id)c withTransceiver:(id)transceiver forCity:(id)city withError:(id *)error;
+ (id)getStationCode:(id)code withTransitInformation:(id)information forCity:(id)city;
+ (id)getStationMode:(id)mode forCity:(id)city;
+ (id)getTransitModality:(id)modality forCity:(id)city;
+ (id)mergeTaps:(id)taps forCity:(id)city outEnRoute:(id *)route;
+ (id)processEnRouteStatus:(id)status forTransitInformation:(id)information forCity:(id)city;
@end

@implementation HerculesMappings

+ (id)getStationCode:(id)code withTransitInformation:(id)information forCity:(id)city
{
  codeCopy = code;
  informationCopy = information;
  if ([city intValue] == 5)
  {
    v9 = [informationCopy u8:0];
    v10 = [informationCopy u16BE:1];
    v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(codeCopy, "length") + 3}];
    [v11 appendShortBE:v10];
    [v11 appendByte:v9];
    [v11 appendData:codeCopy];
  }

  else
  {
    v11 = codeCopy;
  }

  return v11;
}

+ (id)getStationMode:(id)mode forCity:(id)city
{
  modeCopy = mode;
  cityCopy = city;
  v7 = [modeCopy u8:3];
  intValue = [cityCopy intValue];

  v9 = @"StartStation";
  if (intValue == 1)
  {
    if (v7 == 2 || v7 == 12)
    {
      v9 = @"EndStation";
    }
  }

  else if (intValue == 7 && [modeCopy u16BE:1] == 4 && (v7 - 64) < 4u)
  {
    v9 = off_278875338[(v7 - 64)];
  }

  return v9;
}

+ (id)getTransitModality:(id)modality forCity:(id)city
{
  modalityCopy = modality;
  intValue = [city intValue];
  if (intValue == 1)
  {
    v10 = [modalityCopy u16BE:1];
    if (v10 <= 0x3D)
    {
      if (((1 << v10) & 0x2008020000200044) != 0)
      {
        goto LABEL_17;
      }

      if (((1 << v10) & 0x400038) != 0)
      {
LABEL_12:
        v9 = @"TransitTrain";
        goto LABEL_21;
      }

      if (v10 == 23)
      {
        v9 = @"PurchaseAdmissionParking";
        goto LABEL_21;
      }
    }

    v11 = v10 - 81;
    if (v11 <= 0x3C)
    {
      if (((1 << (v10 - 81)) & 0x1000010040100401) != 0)
      {
        goto LABEL_17;
      }

      if (v11 == 50)
      {
        goto LABEL_12;
      }
    }

    if (v10 != 71)
    {
      goto LABEL_20;
    }

LABEL_17:
    v9 = @"TransitBus";
    goto LABEL_21;
  }

  if (intValue == 5)
  {
    LOBYTE(v7) = [modalityCopy u8:0] - 1;
    if (v7 < 4u)
    {
      v7 = v7;
      v8 = off_278875380;
      goto LABEL_8;
    }

LABEL_20:
    v9 = @"Transit";
    goto LABEL_21;
  }

  if (intValue != 7)
  {
    goto LABEL_20;
  }

  LODWORD(v7) = [modalityCopy u8:0] - 2;
  if (v7 >= 5)
  {
    goto LABEL_20;
  }

  v7 = v7;
  v8 = off_278875358;
LABEL_8:
  v9 = v8[v7];
LABEL_21:

  return v9;
}

+ (id)processEnRouteStatus:(id)status forTransitInformation:(id)information forCity:(id)city
{
  statusCopy = status;
  informationCopy = information;
  cityCopy = city;
  v10 = [informationCopy u8:3];
  intValue = [cityCopy intValue];

  if (intValue == 1)
  {
    if (v10 <= 8)
    {
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if (v10 != 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 == 9)
      {
        goto LABEL_17;
      }

      if (v10 != 12)
      {
        if (v10 != 11)
        {
          goto LABEL_20;
        }

LABEL_15:
        [statusCopy setObject:@"Start" forKeyedSubscript:@"InternalEnRouteStatus"];
        v12 = @"EnRoute";
        v13 = @"IgnoreReason";
LABEL_19:
        [statusCopy setObject:v12 forKeyedSubscript:v13];
        goto LABEL_20;
      }
    }

LABEL_14:
    v12 = @"End";
LABEL_18:
    v13 = @"InternalEnRouteStatus";
    goto LABEL_19;
  }

  if (intValue == 7 && [informationCopy u16BE:1] == 4)
  {
    if ((v10 - 63) <= 4)
    {
      if (((1 << (v10 - 63)) & 0x16) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((v10 - 61) > 1)
    {
      goto LABEL_20;
    }

LABEL_17:
    v12 = @"Cancel";
    goto LABEL_18;
  }

LABEL_20:

  return statusCopy;
}

+ (id)mergeTaps:(id)taps forCity:(id)city outEnRoute:(id *)route
{
  v34 = *MEMORY[0x277D85DE8];
  tapsCopy = taps;
  if ([tapsCopy count])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [tapsCopy objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v9)
      {
        if ((v7 & 1) != 0 && (([@"Start" isEqualToString:v9] & 1) != 0 || objc_msgSend(@"Transfer", "isEqualToString:", v9)))
        {
          *route = [v8 objectForKeyedSubscript:@"TypeDetail"];
        }

        if ([@"End" isEqualToString:v9])
        {
          v10 = v6 + 1;
          if (v6 + 1 < [tapsCopy count])
          {
            while (1)
            {
              v11 = [tapsCopy objectAtIndexedSubscript:v10];
              v12 = [v11 objectForKeyedSubscript:@"InternalEnRouteStatus"];
              if (v12)
              {
                break;
              }

              if (++v10 >= [tapsCopy count])
              {
                v7 = 0;
                v10 = v6;
                goto LABEL_15;
              }
            }

            v13 = v12;
            if (([@"End" isEqualToString:v12] & 1) == 0 && (objc_msgSend(@"Cancel", "isEqualToString:", v13) & 1) == 0)
            {
              v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
              [v14 setObject:@"Merged" forKeyedSubscript:@"IgnoreReason"];
              [tapsCopy setObject:v14 atIndexedSubscript:v10];
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
              v24 = v23 = v14;
              v15 = [v14 objectForKeyedSubscript:@"StartStation"];
              if (v15)
              {
                [v24 setObject:v15 forKeyedSubscript:@"StartStation"];
              }

              v22 = v15;
              [v24 setObject:v23 forKeyedSubscript:@"MergedStartRecord"];
              [tapsCopy setObject:v24 atIndexedSubscript:v6];
              v16 = ATLLogObject();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v23 objectForKeyedSubscript:@"SerialNumber"];
                v18 = [v24 objectForKeyedSubscript:@"SerialNumber"];
                *buf = 67109890;
                v27 = v10;
                v28 = 2112;
                v29 = v17;
                v30 = 1024;
                v31 = v6;
                v32 = 2112;
                v33 = v18;
                v19 = v18;
                _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Merged events %u (SN %@) --> %u (SN %@)", buf, 0x22u);
              }
            }

            v7 = 0;
            goto LABEL_15;
          }
        }

        v7 = 0;
      }

      v10 = v6;
LABEL_15:

      v6 = v10 + 1;
    }

    while (v10 + 1 < [tapsCopy count]);
  }

  v20 = *MEMORY[0x277D85DE8];

  return tapsCopy;
}

+ (id)addBalancesFromVC:(id)c withTransceiver:(id)transceiver forCity:(id)city withError:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  cCopy = c;
  transceiverCopy = transceiver;
  cityCopy = city;
  if (([cityCopy intValue] | 4) == 5)
  {
    v63 = 0;
    v12 = [HerculesVCReader readBalancesFromVC:transceiverCopy forCity:cityCopy withError:&v63];
    v13 = v63;
    v14 = 0x278874000uLL;
    if (v13 && +[AppletTranslator isInternalBuild])
    {
      if (error)
      {
        v15 = v13;
        v16 = 0;
        *error = v13;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      errorCopy = error;
      v52 = v13;
      v54 = cityCopy;
      v55 = transceiverCopy;
      v17 = [cCopy mutableCopy];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v53 = v12;
      v18 = v12;
      v19 = v17;
      v20 = v18;
      v21 = [v18 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v60;
        v56 = v20;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v60 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v59 + 1) + 8 * i);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __72__HerculesMappings_addBalancesFromVC_withTransceiver_forCity_withError___block_invoke;
            v58[3] = &unk_278875318;
            v58[4] = v25;
            v26 = Find(cCopy, v58);
            if (v26)
            {
              v27 = *(v14 + 1168);
              if (+[AppletTranslator isInternalBuild]() && ([v25 isEqual:v26] & 1) == 0)
              {
                v57 = v19;
                v35 = ATLLogObject();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v69 = v25;
                  v70 = 2112;
                  v71 = v26;
                  _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Found a balance discrepancy %@ %@", buf, 0x16u);
                }

                v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Found a balance discrepancy %@ %@", v25, v26];
                v38 = v37;
                cityCopy = v54;
                transceiverCopy = v55;
                v13 = v52;
                v12 = v53;
                if (errorCopy)
                {
                  v39 = cCopy;
                  v40 = *errorCopy;
                  v41 = MEMORY[0x277CCA9B8];
                  v42 = *MEMORY[0x277CCA450];
                  if (*errorCopy)
                  {
                    v43 = *MEMORY[0x277CCA7E8];
                    v64[0] = *MEMORY[0x277CCA450];
                    v64[1] = v43;
                    v65[0] = v37;
                    v65[1] = v40;
                    v44 = MEMORY[0x277CBEAC0];
                    v45 = v65;
                    v46 = v64;
                    v47 = 2;
                  }

                  else
                  {
                    v66 = *MEMORY[0x277CCA450];
                    v67 = v37;
                    v44 = MEMORY[0x277CBEAC0];
                    v45 = &v67;
                    v46 = &v66;
                    v47 = 1;
                  }

                  v48 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
                  *errorCopy = [v41 errorWithDomain:@"ATL" code:3 userInfo:v48];

                  cCopy = v39;
                }

                v16 = 0;
                v34 = v57;
                goto LABEL_31;
              }
            }

            else
            {
              v28 = v23;
              v29 = v14;
              v30 = ATLLogObject();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                [v25 objectForKeyedSubscript:@"BalanceIdentifier"];
                v31 = v19;
                v33 = v32 = cCopy;
                *buf = 138412290;
                v69 = v33;
                _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "Adding missing balance %@", buf, 0xCu);

                cCopy = v32;
                v19 = v31;
                v20 = v56;
              }

              [v19 addObject:v25];
              v14 = v29;
              v23 = v28;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v16 = v19;
      cityCopy = v54;
      transceiverCopy = v55;
      v34 = v19;
      v13 = v52;
      v12 = v53;
LABEL_31:
    }
  }

  else
  {
    v16 = cCopy;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __72__HerculesMappings_addBalancesFromVC_withTransceiver_forCity_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"BalanceIdentifier"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"BalanceIdentifier"];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end