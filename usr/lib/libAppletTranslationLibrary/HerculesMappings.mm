@interface HerculesMappings
+ (id)addBalancesFromVC:(id)a3 withTransceiver:(id)a4 forCity:(id)a5 withError:(id *)a6;
+ (id)getStationCode:(id)a3 withTransitInformation:(id)a4 forCity:(id)a5;
+ (id)getStationMode:(id)a3 forCity:(id)a4;
+ (id)getTransitModality:(id)a3 forCity:(id)a4;
+ (id)mergeTaps:(id)a3 forCity:(id)a4 outEnRoute:(id *)a5;
+ (id)processEnRouteStatus:(id)a3 forTransitInformation:(id)a4 forCity:(id)a5;
@end

@implementation HerculesMappings

+ (id)getStationCode:(id)a3 withTransitInformation:(id)a4 forCity:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([a5 intValue] == 5)
  {
    v9 = [v8 u8:0];
    v10 = [v8 u16BE:1];
    v11 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v7, "length") + 3}];
    [v11 appendShortBE:v10];
    [v11 appendByte:v9];
    [v11 appendData:v7];
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

+ (id)getStationMode:(id)a3 forCity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 u8:3];
  v8 = [v6 intValue];

  v9 = @"StartStation";
  if (v8 == 1)
  {
    if (v7 == 2 || v7 == 12)
    {
      v9 = @"EndStation";
    }
  }

  else if (v8 == 7 && [v5 u16BE:1] == 4 && (v7 - 64) < 4u)
  {
    v9 = off_278875338[(v7 - 64)];
  }

  return v9;
}

+ (id)getTransitModality:(id)a3 forCity:(id)a4
{
  v5 = a3;
  v6 = [a4 intValue];
  if (v6 == 1)
  {
    v10 = [v5 u16BE:1];
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

  if (v6 == 5)
  {
    LOBYTE(v7) = [v5 u8:0] - 1;
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

  if (v6 != 7)
  {
    goto LABEL_20;
  }

  LODWORD(v7) = [v5 u8:0] - 2;
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

+ (id)processEnRouteStatus:(id)a3 forTransitInformation:(id)a4 forCity:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 u8:3];
  v11 = [v9 intValue];

  if (v11 == 1)
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
        [v7 setObject:@"Start" forKeyedSubscript:@"InternalEnRouteStatus"];
        v12 = @"EnRoute";
        v13 = @"IgnoreReason";
LABEL_19:
        [v7 setObject:v12 forKeyedSubscript:v13];
        goto LABEL_20;
      }
    }

LABEL_14:
    v12 = @"End";
LABEL_18:
    v13 = @"InternalEnRouteStatus";
    goto LABEL_19;
  }

  if (v11 == 7 && [v8 u16BE:1] == 4)
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

  return v7;
}

+ (id)mergeTaps:(id)a3 forCity:(id)a4 outEnRoute:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v9)
      {
        if ((v7 & 1) != 0 && (([@"Start" isEqualToString:v9] & 1) != 0 || objc_msgSend(@"Transfer", "isEqualToString:", v9)))
        {
          *a5 = [v8 objectForKeyedSubscript:@"TypeDetail"];
        }

        if ([@"End" isEqualToString:v9])
        {
          v10 = v6 + 1;
          if (v6 + 1 < [v5 count])
          {
            while (1)
            {
              v11 = [v5 objectAtIndexedSubscript:v10];
              v12 = [v11 objectForKeyedSubscript:@"InternalEnRouteStatus"];
              if (v12)
              {
                break;
              }

              if (++v10 >= [v5 count])
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
              [v5 setObject:v14 atIndexedSubscript:v10];
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
              v24 = v23 = v14;
              v15 = [v14 objectForKeyedSubscript:@"StartStation"];
              if (v15)
              {
                [v24 setObject:v15 forKeyedSubscript:@"StartStation"];
              }

              v22 = v15;
              [v24 setObject:v23 forKeyedSubscript:@"MergedStartRecord"];
              [v5 setObject:v24 atIndexedSubscript:v6];
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

    while (v10 + 1 < [v5 count]);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)addBalancesFromVC:(id)a3 withTransceiver:(id)a4 forCity:(id)a5 withError:(id *)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v11 intValue] | 4) == 5)
  {
    v63 = 0;
    v12 = [HerculesVCReader readBalancesFromVC:v10 forCity:v11 withError:&v63];
    v13 = v63;
    v14 = 0x278874000uLL;
    if (v13 && +[AppletTranslator isInternalBuild])
    {
      if (a6)
      {
        v15 = v13;
        v16 = 0;
        *a6 = v13;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v51 = a6;
      v52 = v13;
      v54 = v11;
      v55 = v10;
      v17 = [v9 mutableCopy];
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
            v26 = Find(v9, v58);
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
                v11 = v54;
                v10 = v55;
                v13 = v52;
                v12 = v53;
                if (v51)
                {
                  v39 = v9;
                  v40 = *v51;
                  v41 = MEMORY[0x277CCA9B8];
                  v42 = *MEMORY[0x277CCA450];
                  if (*v51)
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
                  *v51 = [v41 errorWithDomain:@"ATL" code:3 userInfo:v48];

                  v9 = v39;
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
                v33 = v32 = v9;
                *buf = 138412290;
                v69 = v33;
                _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEFAULT, "Adding missing balance %@", buf, 0xCu);

                v9 = v32;
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
      v11 = v54;
      v10 = v55;
      v34 = v19;
      v13 = v52;
      v12 = v53;
LABEL_31:
    }
  }

  else
  {
    v16 = v9;
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