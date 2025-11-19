@interface HerculesDecoder
+ (BOOL)didTransactionError:(id *)a3 withTransactionResult:(unsigned __int16 *)a4;
+ (BOOL)supportsPlasticCardMode:(unsigned __int8)a3 withTransceiver:(id)a4;
+ (id)addAmount:(id *)a3 withCurrency:(id *)a4 usingAmountKey:(id)a5 usingCurrencyKey:(id)a6 usingExponentKey:(id)a7;
+ (id)calculateTransactionSN:(id *)a3 withDeviceId:(id *)a4 withDeviceSN:(id *)a5;
+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
+ (id)getIdentifier:(id *)a3 withInstanceIdentifier:(id *)a4;
+ (id)getRecords:(id)a3 withError:(id *)a4;
+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
+ (id)getTransactionsFromRecord:(id *)a3 withCityCode:(id)a4 withServerRefreshRequired:(id *)a5 withStateDict:(id)a6 withError:(id *)a7;
+ (id)parseBalanceCollection:(id *)a3 withError:(id *)a4;
+ (id)parseBalanceItem:(id *)a3 withError:(id *)a4;
+ (id)parseDalData:(id)a3 withCityCode:(id)a4 withStateDict:(id)a5 withError:(id *)a6;
+ (id)parseDateAndTime:(id *)a3;
+ (id)parseEvent:(id *)a3 withError:(id *)a4;
+ (id)parseIdentifierCollection:(id *)a3 withError:(id *)a4;
+ (id)parseIdentifierItem:(id *)a3 withError:(id *)a4;
+ (id)parsePurchaseEvent:(id *)a3 withError:(id *)a4;
+ (id)parseSaleEvent:(id *)a3 withError:(id *)a4;
+ (id)parseUseEvent:(id *)a3 withError:(id *)a4;
@end

@implementation HerculesDecoder

+ (BOOL)didTransactionError:(id *)a3 withTransactionResult:(unsigned __int16 *)a4
{
  v5 = *&a3->var4[31] != 0x4000 || (*(&a3->var7 + 1) ^ 0x13 | a3->var8[1] ^ 0xEE) != 0;
  if (a4)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 64;
    }

    if (HIBYTE(a3->var7) == 15)
    {
      v7 = -4096;
    }

    else
    {
      v7 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

+ (BOOL)supportsPlasticCardMode:(unsigned __int8)a3 withTransceiver:(id)a4
{
  v10 = 0;
  v4 = [MifareUtils getMcmDataDal:17987 withTransceiver:a4 withError:&v10];
  v5 = v10;
  if ([v4 length] == 2 && v5 == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "u16BE:", 0)}];
    v7 = [HerculesMappings supportsPlasticCardMode:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v39 = 0;
  v9 = [MifareUtils getMcmDataDal:17987 withTransceiver:v8 withError:&v39];
  v10 = v39;
  if ([v9 length] != 2 && v10 == 0)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 asHexString];
      *buf = 138412290;
      v47 = v13;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Invalid city code '%@'", buf, 0xCu);
    }

    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v9 asHexString];
    v16 = [v14 initWithFormat:@"Invalid city code '%@'", v15];

    v17 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v10 = [v17 errorWithDomain:@"ATL" code:3 userInfo:v18];
  }

  if (!v10)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v9, "u16BE:", 0)}];
    v38 = 0;
    v22 = [MifareUtils getMcmDataDal:17734 withTransceiver:v8 withError:&v38];
    v10 = v38;
    if (![v22 length] && !v10)
    {
      v23 = ATLLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "No DAL data for Event File", buf, 2u);
      }

      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for Event File"];
      v25 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = v24;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v10 = [v25 errorWithDomain:@"ATL" code:3 userInfo:v26];
    }

    if (v10)
    {
      if (a7)
      {
        v27 = v10;
        v20 = 0;
        *a7 = v10;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_30;
    }

    v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v37 = 0;
    v29 = [HerculesDecoder parseDalData:v22 withCityCode:v21 withStateDict:v28 withError:&v37];
    v30 = v37;
    if (v30)
    {
      v10 = v30;
      if (a7)
      {
LABEL_23:
        v31 = v10;
        v20 = 0;
        *a7 = v10;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v32 = [v28 objectForKeyedSubscript:@"Balances"];
      v36 = 0;
      v33 = [HerculesMappings addBalancesFromVC:v32 withTransceiver:v8 forCity:v21 withError:&v36];
      v10 = v36;
      [v28 setObject:v33 forKeyedSubscript:@"Balances"];

      if (!v10)
      {
        v40[0] = @"State";
        v40[1] = @"TransactionHistory";
        v41[0] = v28;
        v41[1] = v29;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        goto LABEL_29;
      }

      if (a7)
      {
        goto LABEL_23;
      }
    }

    v20 = 0;
    goto LABEL_29;
  }

  if (a7)
  {
    v19 = v10;
    v20 = 0;
    *a7 = v10;
  }

  else
  {
    v20 = 0;
  }

LABEL_31:

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)getRecords:(id)a3 withError:(id *)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v39 = [v5 bytes];
  v40 = [v5 length];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v7 = [v5 bytes];
  v8 = [v5 bytes];
  v9 = [v5 length];
  v10 = v8 + v9;
  if (v7 >= v8 + v9)
  {
LABEL_10:
    v14 = [v6 reverseObjectEnumerator];
    v15 = [v14 allObjects];
  }

  else
  {
    v11 = v9;
    while (1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v12 = DERDecodeItemCtx(&v39, &v36);
      if (v12)
      {
        break;
      }

      if (v36 != 0xE000000000000000)
      {
        v26 = ATLLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v46 = v36;
          _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Unexpected event tag 0x%llx", buf, 0xCu);
        }

        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v28 = [v27 initWithFormat:@"Unexpected event tag 0x%llx", v36];
        v19 = v28;
        if (a4)
        {
          v29 = *a4;
          v21 = MEMORY[0x277CCA9B8];
          v30 = *MEMORY[0x277CCA450];
          if (*a4)
          {
            v31 = *MEMORY[0x277CCA7E8];
            v41[0] = *MEMORY[0x277CCA450];
            v41[1] = v31;
            v42[0] = v28;
            v42[1] = v29;
            v23 = MEMORY[0x277CBEAC0];
            v24 = v42;
            v25 = v41;
LABEL_21:
            v32 = 2;
LABEL_25:
            v33 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v32];
            *a4 = [v21 errorWithDomain:@"ATL" code:3 userInfo:v33];

            goto LABEL_26;
          }

          v43 = *MEMORY[0x277CCA450];
          v44 = v28;
          v23 = MEMORY[0x277CBEAC0];
          v24 = &v44;
          v25 = &v43;
LABEL_24:
          v32 = 1;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v37 - v7 + v38 freeWhenDone:0];
      [v6 addObject:v13];

      v7 = (v37 + v38);
      if (v37 + v38 < v10)
      {
        while (!*v7)
        {
          if (++v7 >= v10)
          {
            v7 = (v8 + v11);
            break;
          }
        }
      }

      v39 = v7;
      v40 = v10 - v7;
      if (v10 <= v7)
      {
        goto LABEL_10;
      }
    }

    v16 = v12;
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v46) = v16;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Failed to decode item %d", buf, 8u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode item %d", v16];
    v19 = v18;
    if (a4)
    {
      v20 = *a4;
      v21 = MEMORY[0x277CCA9B8];
      if (*a4)
      {
        v22 = *MEMORY[0x277CCA7E8];
        v47[0] = *MEMORY[0x277CCA450];
        v47[1] = v22;
        v48[0] = v18;
        v48[1] = v20;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v48;
        v25 = v47;
        goto LABEL_21;
      }

      v49 = *MEMORY[0x277CCA450];
      v50[0] = v18;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v50;
      v25 = &v49;
      goto LABEL_24;
    }

LABEL_26:

    v15 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)parseDalData:(id)a3 withCityCode:(id)a4 withStateDict:(id)a5 withError:(id *)a6
{
  v71[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v53 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [HerculesDecoder getRecords:v9 withError:a6];
    v12 = v11;
    if (!*a6)
    {
      if ([v11 count])
      {
        v51 = v9;
        v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v50 = v12;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v59;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v59 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v58 + 1) + 8 * i);
              *buf = 0;
              v57 = 0;
              *buf = [v19 bytes];
              v57 = [v19 length];
              if (v16)
              {
                v20 = 0;
              }

              else
              {
                v20 = &v55;
              }

              if (!v16)
              {
                v55 = 0;
              }

              if ([v10 count])
              {
                v21 = 0;
              }

              else
              {
                v21 = v10;
              }

              v22 = [HerculesDecoder getTransactionsFromRecord:buf withCityCode:v53 withServerRefreshRequired:v20 withStateDict:v21 withError:a6];
              if (!v16)
              {
                v16 = v55;
              }

              if (*a6)
              {

                v33 = 0;
                v12 = v50;
                v9 = v51;
                v34 = v52;
                v35 = v13;
                goto LABEL_44;
              }

              if ([v22 count])
              {
                [v52 addObjectsFromArray:v22];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v58 objects:v63 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

        v54 = 0;
        v46 = [HerculesMappings mergeTaps:v52 forCity:v53 outEnRoute:&v54];
        v35 = v54;

        if (v16)
        {
          [v10 setObject:v16 forKeyedSubscript:@"ServerRefreshRequired"];
        }

        v12 = v50;
        v9 = v51;
        if (v35)
        {
          v62 = v35;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          [v10 setObject:v47 forKeyedSubscript:@"TransactionInProgress"];
        }

        v34 = v46;
        v33 = v34;
LABEL_44:
      }

      else
      {
        v36 = ATLLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "No records", buf, 2u);
        }

        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No records"];
        v16 = v37;
        v38 = *a6;
        v39 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277CCA450];
        if (*a6)
        {
          v41 = *MEMORY[0x277CCA7E8];
          v64[0] = *MEMORY[0x277CCA450];
          v64[1] = v41;
          v65[0] = v37;
          v65[1] = v38;
          v42 = MEMORY[0x277CBEAC0];
          v43 = v65;
          v44 = v64;
          v45 = 2;
        }

        else
        {
          v66 = *MEMORY[0x277CCA450];
          v67 = v37;
          v42 = MEMORY[0x277CBEAC0];
          v43 = &v67;
          v44 = &v66;
          v45 = 1;
        }

        v34 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:v45];
        [v39 errorWithDomain:@"ATL" code:3 userInfo:v34];
        *a6 = v33 = 0;
      }

      goto LABEL_48;
    }

LABEL_30:
    v33 = 0;
    goto LABEL_49;
  }

  v23 = ATLLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "No DAL data", buf, 2u);
  }

  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data"];
  v12 = v24;
  if (!a6)
  {
    goto LABEL_30;
  }

  v25 = *a6;
  v26 = MEMORY[0x277CCA9B8];
  v27 = *MEMORY[0x277CCA450];
  if (*a6)
  {
    v28 = *MEMORY[0x277CCA7E8];
    v68[0] = *MEMORY[0x277CCA450];
    v68[1] = v28;
    v69[0] = v24;
    v69[1] = v25;
    v29 = MEMORY[0x277CBEAC0];
    v30 = v69;
    v31 = v68;
    v32 = 2;
  }

  else
  {
    v70 = *MEMORY[0x277CCA450];
    v71[0] = v24;
    v29 = MEMORY[0x277CBEAC0];
    v30 = v71;
    v31 = &v70;
    v32 = 1;
  }

  v16 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
  [v26 errorWithDomain:@"ATL" code:3 userInfo:v16];
  *a6 = v33 = 0;
LABEL_48:

LABEL_49:
  v48 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)getTransactionsFromRecord:(id *)a3 withCityCode:(id)a4 withServerRefreshRequired:(id *)a5 withStateDict:(id)a6 withError:(id *)a7
{
  v126[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a6;
  v85 = 0;
  v86[0] = 0;
  v86[1] = 0;
  v13 = DERDecodeItemCtx(a3, &v85);
  if (v13)
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Failed to decode E0 %d", buf, 8u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E0 %d", v13];
    v16 = v15;
    if (a7)
    {
      v17 = *a7;
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v20 = *MEMORY[0x277CCA7E8];
        v123[0] = *MEMORY[0x277CCA450];
        v123[1] = v20;
        v124[0] = v15;
        v124[1] = v17;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
      }

      else
      {
        v125 = *MEMORY[0x277CCA450];
        v126[0] = v15;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:&v125 count:1];
      }
      v37 = ;
      *a7 = [v18 errorWithDomain:@"ATL" code:3 userInfo:v37];
    }

LABEL_37:
    v50 = 0;
    goto LABEL_38;
  }

  if (v85 != 0xE000000000000000)
  {
    v29 = ATLLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v85;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx when trying to decode E0", buf, 0xCu);
    }

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v76 = v85;
    v31 = [v30 initWithFormat:@"Unexpected tag 0x%llx when trying to decode E0"];
    v32 = v31;
    if (a7)
    {
      v33 = *a7;
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v36 = *MEMORY[0x277CCA7E8];
        v119[0] = *MEMORY[0x277CCA450];
        v119[1] = v36;
        v120[0] = v31;
        v120[1] = v33;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
      }

      else
      {
        v121 = *MEMORY[0x277CCA450];
        v122 = v31;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      }
      v47 = ;
      *a7 = [v34 errorWithDomain:@"ATL" code:3 userInfo:v47];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "+[HerculesDecoder getTransactionsFromRecord:withCityCode:withServerRefreshRequired:withStateDict:withError:]", 296, a3->var0, a3->var1, @"Record data", v48, v49, v76);
    goto LABEL_37;
  }

  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  v113 = 0u;
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  *buf = 0u;
  v110 = 0u;
  v21 = DERParseSequenceSpec(v86, &EventContentSpec, buf, 0xC0uLL);
  if (v21)
  {
    v22 = ATLLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v91 = 67109120;
      *&v91[4] = v21;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to decode E0 contents %d", v91, 8u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E0 contents %d", v21];
    v24 = v23;
    if (a7)
    {
      v25 = *a7;
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v105[0] = *MEMORY[0x277CCA450];
        v105[1] = v28;
        v106[0] = v23;
        v106[1] = v25;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
      }

      else
      {
        v107 = *MEMORY[0x277CCA450];
        v108 = v23;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      }

      v60 = LABEL_62:;
      [v26 errorWithDomain:@"ATL" code:3 userInfo:v60];
      *a7 = v50 = 0;
LABEL_67:

      goto LABEL_68;
    }

    goto LABEL_60;
  }

  if (**buf != 1)
  {
    v53 = ATLLogObject();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = **buf;
      *v91 = 67109120;
      *&v91[4] = v54;
      _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Incorrect record version %hhu", v91, 8u);
    }

    v55 = objc_alloc(MEMORY[0x277CCACA8]);
    v56 = [v55 initWithFormat:@"Incorrect record version %hhu", **buf];
    v24 = v56;
    if (a7)
    {
      v57 = *a7;
      v26 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v59 = *MEMORY[0x277CCA7E8];
        v101[0] = *MEMORY[0x277CCA450];
        v101[1] = v59;
        v102[0] = v56;
        v102[1] = v57;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
      }

      else
      {
        v103 = *MEMORY[0x277CCA450];
        v104 = v56;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (!v12)
  {
LABEL_28:
    v40 = [HerculesDecoder parseDateAndTime:&v111];
    v41 = [HerculesDecoder calculateTransactionSN:&v111 withDeviceId:&v113 withDeviceSN:&v114];
    v42 = v41;
    if (a5 && *(&v117 + 1) && *v117)
    {
      v43 = v41;
      *a5 = v42;
    }

    v44 = [MEMORY[0x277CBEA90] dataWithDERItem:&v110];
    if (*(&v112[0] + 1))
    {
      v45 = [MEMORY[0x277CBEA90] dataWithDERItem:v112];
      v46 = [HerculesMappings getStationCode:v45 withTransitInformation:v44 forCity:v11];
    }

    else
    {
      v46 = 0;
    }

    *v91 = 0;
    v92 = v91;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__0;
    v95 = __Block_byref_object_dispose__0;
    v96 = [MEMORY[0x277CBEB18] array];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __108__HerculesDecoder_getTransactionsFromRecord_withCityCode_withServerRefreshRequired_withStateDict_withError___block_invoke;
    v78[3] = &unk_2788749E8;
    v24 = v40;
    v79 = v24;
    v60 = v42;
    v80 = v60;
    v81 = v11;
    v61 = v44;
    v82 = v61;
    v62 = v46;
    v83 = v62;
    v84 = v91;
    if (DERDecodeSequenceWithBlock(&v118, v78))
    {
      v63 = ATLLogObject();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *v77 = 0;
        _os_log_impl(&dword_22EEF5000, v63, OS_LOG_TYPE_ERROR, "Failed to parse event", v77, 2u);
      }

      v64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse event"];
      v65 = v64;
      if (a7)
      {
        v66 = *a7;
        v67 = MEMORY[0x277CCA9B8];
        v68 = *MEMORY[0x277CCA450];
        if (*a7)
        {
          v69 = *MEMORY[0x277CCA7E8];
          v87[0] = *MEMORY[0x277CCA450];
          v87[1] = v69;
          v88[0] = v64;
          v88[1] = v66;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
        }

        else
        {
          v89 = *MEMORY[0x277CCA450];
          v90 = v64;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        }
        v70 = ;
        *a7 = [v67 errorWithDomain:@"ATL" code:3 userInfo:v70];
      }

      v50 = 0;
    }

    else
    {
      v50 = *(v92 + 5);
    }

    _Block_object_dispose(v91, 8);
    goto LABEL_67;
  }

  v38 = [HerculesDecoder parseBalanceCollection:v115 withError:a7];
  if (v38)
  {
    [v12 setObject:v38 forKeyedSubscript:@"Balances"];
    if (*(&v116 + 1))
    {
      v39 = [MEMORY[0x277CCABB0] numberWithInt:*v116 != 0];
      [v12 setObject:v39 forKeyedSubscript:@"CardDenyListed"];
    }

    goto LABEL_28;
  }

  v71 = ATLLogObject();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    *v91 = 0;
    _os_log_impl(&dword_22EEF5000, v71, OS_LOG_TYPE_ERROR, "Empty balance array", v91, 2u);
  }

  v72 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Empty balance array"];
  v24 = v72;
  if (a7)
  {
    v73 = *a7;
    v26 = MEMORY[0x277CCA9B8];
    v74 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v75 = *MEMORY[0x277CCA7E8];
      v97[0] = *MEMORY[0x277CCA450];
      v97[1] = v75;
      v98[0] = v72;
      v98[1] = v73;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
    }

    else
    {
      v99 = *MEMORY[0x277CCA450];
      v100 = v72;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    }

    goto LABEL_62;
  }

LABEL_60:
  v50 = 0;
LABEL_68:

LABEL_38:
  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

uint64_t __108__HerculesDecoder_getTransactionsFromRecord_withCityCode_withServerRefreshRequired_withStateDict_withError___block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = [HerculesDecoder parseEvent:a2 withError:&v16];
  v4 = v16;
  if (v4)
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v6 = 3;
LABEL_16:

    goto LABEL_17;
  }

  if (v3)
  {
    [v3 setObject:a1[4] forKeyedSubscript:@"TransactionTime"];
    [v3 setObject:a1[5] forKeyedSubscript:@"SerialNumber"];
    [v3 setObject:a1[6] forKeyedSubscript:@"CityCode"];
    v7 = [v3 objectForKeyedSubscript:@"TypeDetail"];
    v8 = [v7 hasPrefix:@"Transit"];

    if (v8)
    {
      v9 = [HerculesMappings getTransitModality:a1[7] forCity:a1[6]];
      [v3 setObject:v9 forKeyedSubscript:@"TypeDetail"];

      if (a1[8])
      {
        v10 = [HerculesMappings getStationMode:a1[7] forCity:a1[6]];
        [v3 setObject:a1[8] forKeyedSubscript:v10];
      }

      v11 = [HerculesMappings processEnRouteStatus:v3 forTransitInformation:a1[7] forCity:a1[6]];

      v3 = v11;
    }

    else
    {
      v12 = [v3 objectForKeyedSubscript:@"TypeDetail"];
      if ([v12 hasPrefix:@"TopUp"])
      {
        v13 = a1[8];

        if (v13)
        {
          [v3 setObject:a1[8] forKeyedSubscript:@"StartStation"];
        }
      }

      else
      {
      }
    }

    [*(*(a1[9] + 8) + 40) addObject:v3];
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 0;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)parseEvent:(id *)a3 withError:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  var0 = a3->var0;
  if (a3->var0 <= 0xE000000000000002)
  {
    if (var0 == 0xE000000000000001)
    {
      v7 = [HerculesDecoder parseUseEvent:&a3->var1 withError:a4];
      goto LABEL_17;
    }

    if (var0 == 0xE000000000000002)
    {
      v7 = [HerculesDecoder parseSaleEvent:&a3->var1 withError:a4];
      goto LABEL_17;
    }
  }

  else
  {
    if (var0 == 0xE000000000000003)
    {
      v7 = [HerculesDecoder parsePurchaseEvent:&a3->var1 withError:a4];
      goto LABEL_17;
    }

    if (var0 == 0xE000000000000004 || var0 == 0xE00000000000000ELL)
    {
      goto LABEL_16;
    }
  }

  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3->var0;
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%llx", &v12, 0xCu);
  }

LABEL_16:
  v7 = 0;
LABEL_17:
  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)parseUseEvent:(id *)a3 withError:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v5 = DERParseSequenceSpec(a3, &UseEventContentSpec, v23, 0x20uLL);
  if (!v5)
  {
    v17 = [HerculesDecoder parseIdentifierCollection:v23 withError:a4];
    v9 = v17;
    if (v17)
    {
      v18 = Filter(v17, &__block_literal_global);
      v19 = Filter(v9, &__block_literal_global_573);
      v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      [v20 setObject:@"Transit" forKeyedSubscript:@"TypeDetail"];
      if ([v18 count])
      {
        [v20 setObject:v18 forKeyedSubscript:@"Amounts"];
      }

      if ([v19 count])
      {
        [v20 setObject:v19 forKeyedSubscript:@"CommutePlans"];
      }

      goto LABEL_16;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = ATLLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v29 = v6;
    _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode use event item contents %d", buf, 8u);
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode use event item contents %d", v6];
  v9 = v8;
  if (!a4)
  {
    goto LABEL_13;
  }

  v10 = *a4;
  v11 = MEMORY[0x277CCA9B8];
  if (*a4)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v24[0] = *MEMORY[0x277CCA450];
    v24[1] = v12;
    v25[0] = v8;
    v25[1] = v10;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v25;
    v15 = v24;
    v16 = 2;
  }

  else
  {
    v26 = *MEMORY[0x277CCA450];
    v27 = v8;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v27;
    v15 = &v26;
    v16 = 1;
  }

  v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
  [v11 errorWithDomain:@"ATL" code:3 userInfo:v18];
  *a4 = v20 = 0;
LABEL_16:

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

BOOL __43__HerculesDecoder_parseUseEvent_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"AmountIdentifier"];
  v3 = v2 != 0;

  return v3;
}

BOOL __43__HerculesDecoder_parseUseEvent_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"CommutePlanIdentifier"];
  v3 = v2 != 0;

  return v3;
}

+ (id)parseSaleEvent:(id *)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v5 = DERParseSequenceSpec(a3, &SaleEventContentSpec, &v29, 0xB0uLL);
  if (v5)
  {
    v6 = v5;
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v41 = v6;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode sale event item contents %d", buf, 8u);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode sale event item contents %d", v6];
    v9 = v8;
    if (a4)
    {
      v10 = *a4;
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v13;
        v37[0] = v8;
        v37[1] = v10;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v37;
        v16 = v36;
        v17 = 2;
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = v8;
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v39;
        v16 = &v38;
        v17 = 1;
      }

      v22 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      [v11 errorWithDomain:@"ATL" code:3 userInfo:v22];
      *a4 = v26 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v26 = 0;
    goto LABEL_13;
  }

  v18 = [HerculesDecoder addAmount:v32 withCurrency:&v31 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
  v9 = v18;
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = [v18 objectForKeyedSubscript:@"Amount"];
  v20 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:1 exponent:0 isNegative:1];
  v21 = [v19 decimalNumberByMultiplyingBy:v20];
  [v9 setObject:v21 forKeyedSubscript:@"Amount"];

  v22 = [HerculesDecoder getIdentifier:&v29 withInstanceIdentifier:v30];
  [v9 setObject:v22 forKeyedSubscript:@"AmountIdentifier"];
  v23 = MEMORY[0x277CBEB38];
  v34[1] = @"Amounts";
  v35[0] = @"TopUp";
  v33 = v9;
  v34[0] = @"TypeDetail";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v35[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v26 = [v23 dictionaryWithDictionary:v25];

LABEL_12:
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)parsePurchaseEvent:(id *)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v5 = DERParseSequenceSpec(a3, &PurchaseEventContentSpec, &v25, 0x90uLL);
  if (v5)
  {
    v6 = v5;
    v7 = ATLLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v37 = v6;
      _os_log_impl(&dword_22EEF5000, v7, OS_LOG_TYPE_ERROR, "Failed to decode purchase event item contents %d", buf, 8u);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode purchase event item contents %d", v6];
    v9 = v8;
    if (a4)
    {
      v10 = *a4;
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v13 = *MEMORY[0x277CCA7E8];
        v32[0] = *MEMORY[0x277CCA450];
        v32[1] = v13;
        v33[0] = v8;
        v33[1] = v10;
        v14 = MEMORY[0x277CBEAC0];
        v15 = v33;
        v16 = v32;
        v17 = 2;
      }

      else
      {
        v34 = *MEMORY[0x277CCA450];
        v35 = v8;
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v35;
        v16 = &v34;
        v17 = 1;
      }

      v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
      [v11 errorWithDomain:@"ATL" code:3 userInfo:v18];
      *a4 = v22 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v22 = 0;
    goto LABEL_13;
  }

  v9 = [HerculesDecoder addAmount:v28 withCurrency:&v27 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
  if (!v9)
  {
    goto LABEL_9;
  }

  v18 = [HerculesDecoder getIdentifier:&v25 withInstanceIdentifier:v26];
  [v9 setObject:v18 forKeyedSubscript:@"AmountIdentifier"];
  v19 = MEMORY[0x277CBEB38];
  v30[1] = @"Amounts";
  v31[0] = @"Purchase";
  v30[0] = @"TypeDetail";
  v29 = v9;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v22 = [v19 dictionaryWithDictionary:v21];

LABEL_12:
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)parseBalanceCollection:(id *)a3 withError:(id *)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (a3 && a3->var1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = [MEMORY[0x277CBEB18] array];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__HerculesDecoder_parseBalanceCollection_withError___block_invoke;
    v25[3] = &unk_278874A30;
    v25[4] = buf;
    if (DERDecodeSequenceWithBlock(a3, v25))
    {
      v6 = ATLLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "Failed to parse balance item", v24, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse balance item"];
      v8 = v7;
      if (a4)
      {
        v9 = *a4;
        v10 = MEMORY[0x277CCA9B8];
        if (*a4)
        {
          v11 = *MEMORY[0x277CCA7E8];
          v32[0] = *MEMORY[0x277CCA450];
          v32[1] = v11;
          v33[0] = v7;
          v33[1] = v9;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        }

        else
        {
          v34 = *MEMORY[0x277CCA450];
          v35 = v7;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        }
        v12 = ;
        *a4 = [v10 errorWithDomain:@"ATL" code:3 userInfo:v12];
      }

      v20 = 0;
    }

    else
    {
      v20 = *(v27 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Missing or zero length balance collection", buf, 2u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing or zero length balance collection"];
    v15 = v14;
    if (a4)
    {
      v16 = *a4;
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v19;
        v37[0] = v14;
        v37[1] = v16;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39[0] = v14;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      }
      v21 = ;
      *a4 = [v17 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __52__HerculesDecoder_parseBalanceCollection_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [HerculesDecoder parseBalanceItem:a2 withError:&v9];
  v4 = v9;
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v5 = 0;
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v5 = 3;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)parseBalanceItem:(id *)a3 withError:(id *)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (a3->var0 == 0xE000000000000005)
  {
    memset(v44, 0, sizeof(v44));
    v42 = 0u;
    v43 = 0u;
    *v41 = 0u;
    v6 = DERParseSequenceSpec(&a3->var1, &BalanceItemContentSpec, v41, 0x70uLL);
    if (v6)
    {
      v7 = v6;
      v8 = ATLLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v7;
        _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode balance item contents %d", buf, 8u);
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode balance item contents %d", v7];
      v10 = v9;
      if (a4)
      {
        v11 = *a4;
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA450];
        if (*a4)
        {
          v14 = *MEMORY[0x277CCA7E8];
          v35[0] = *MEMORY[0x277CCA450];
          v35[1] = v14;
          v36[0] = v9;
          v36[1] = v11;
          v15 = MEMORY[0x277CBEAC0];
          v16 = v36;
          v17 = v35;
          v18 = 2;
        }

        else
        {
          v37 = *MEMORY[0x277CCA450];
          v38 = v9;
          v15 = MEMORY[0x277CBEAC0];
          v16 = &v38;
          v17 = &v37;
          v18 = 1;
        }

        v32 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
        *a4 = [v12 errorWithDomain:@"ATL" code:3 userInfo:v32];

        a4 = 0;
      }
    }

    else
    {
      a4 = [HerculesDecoder addAmount:v44 withCurrency:&v43 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent"];
      v10 = [HerculesDecoder getIdentifier:v41 withInstanceIdentifier:&v42];
      [a4 setObject:v10 forKeyedSubscript:@"BalanceIdentifier"];
    }
  }

  else
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      var0 = a3->var0;
      *v41 = 134217984;
      *&v41[4] = var0;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx for balance item", v41, 0xCu);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected tag 0x%llx for balance item", a3->var0];
    v22 = v21;
    if (a4)
    {
      v23 = *a4;
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v26 = *MEMORY[0x277CCA7E8];
        v45[0] = *MEMORY[0x277CCA450];
        v45[1] = v26;
        v46[0] = v21;
        v46[1] = v23;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v46;
        v29 = v45;
        v30 = 2;
      }

      else
      {
        v47 = *MEMORY[0x277CCA450];
        v48[0] = v21;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v48;
        v29 = &v47;
        v30 = 1;
      }

      v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *a4 = [v24 errorWithDomain:@"ATL" code:3 userInfo:v31];
    }

    a4 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (id)parseIdentifierCollection:(id *)a3 withError:(id *)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (a3 && a3->var1)
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = [MEMORY[0x277CBEB18] array];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__HerculesDecoder_parseIdentifierCollection_withError___block_invoke;
    v25[3] = &unk_278874A30;
    v25[4] = buf;
    if (DERDecodeSequenceWithBlock(a3, v25))
    {
      v6 = ATLLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "Failed to parse identifier item", v24, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to parse identifier item"];
      v8 = v7;
      if (a4)
      {
        v9 = *a4;
        v10 = MEMORY[0x277CCA9B8];
        if (*a4)
        {
          v11 = *MEMORY[0x277CCA7E8];
          v32[0] = *MEMORY[0x277CCA450];
          v32[1] = v11;
          v33[0] = v7;
          v33[1] = v9;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        }

        else
        {
          v34 = *MEMORY[0x277CCA450];
          v35 = v7;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        }
        v12 = ;
        *a4 = [v10 errorWithDomain:@"ATL" code:3 userInfo:v12];
      }

      v20 = 0;
    }

    else
    {
      v20 = *(v27 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Missing or zero length identifier collection", buf, 2u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing or zero length identifier collection"];
    v15 = v14;
    if (a4)
    {
      v16 = *a4;
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v19;
        v37[0] = v14;
        v37[1] = v16;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39[0] = v14;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      }
      v21 = ;
      *a4 = [v17 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __55__HerculesDecoder_parseIdentifierCollection_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [HerculesDecoder parseIdentifierItem:a2 withError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v6 = 3;
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)parseIdentifierItem:(id *)a3 withError:(id *)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (a3->var0 == 0xE000000000000006)
  {
    v48 = 0u;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    *v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v6 = DERParseSequenceSpec(&a3->var1, &IdItemContentSpec, v44, 0xA0uLL);
    if (v6)
    {
      v7 = v6;
      v8 = ATLLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v43 = v7;
        _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode id item contents %d", buf, 8u);
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode id item contents %d", v7];
      v10 = v9;
      if (a4)
      {
        v11 = *a4;
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA450];
        if (*a4)
        {
          v14 = *MEMORY[0x277CCA7E8];
          v38[0] = *MEMORY[0x277CCA450];
          v38[1] = v14;
          v39[0] = v9;
          v39[1] = v11;
          v15 = MEMORY[0x277CBEAC0];
          v16 = v39;
          v17 = v38;
          v18 = 2;
        }

        else
        {
          v40 = *MEMORY[0x277CCA450];
          v41 = v9;
          v15 = MEMORY[0x277CBEAC0];
          v16 = &v41;
          v17 = &v40;
          v18 = 1;
        }

        v34 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
        *a4 = [v12 errorWithDomain:@"ATL" code:3 userInfo:v34];

        a4 = 0;
      }
    }

    else
    {
      v10 = [HerculesDecoder getIdentifier:v44 withInstanceIdentifier:v45];
      if (*(&v47[0] + 1))
      {
        v31 = [HerculesDecoder addAmount:v47 withCurrency:&v46 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent"];
        a4 = v31;
        v32 = @"AmountIdentifier";
      }

      else
      {
        a4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        if (*(&v48 + 1))
        {
          v35 = [HerculesDecoder parseDateAndTime:&v48];
          [a4 setObject:v35 forKeyedSubscript:@"CommutePlanExpirationDate"];
        }

        v32 = @"CommutePlanIdentifier";
        v31 = a4;
      }

      [v31 setObject:v10 forKeyedSubscript:v32];
    }
  }

  else
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      var0 = a3->var0;
      *v44 = 134217984;
      *&v44[4] = var0;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx for identifier item", v44, 0xCu);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected tag 0x%llx for identifier item", a3->var0];
    v22 = v21;
    if (a4)
    {
      v23 = *a4;
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v26 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v26;
        v50[0] = v21;
        v50[1] = v23;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v50;
        v29 = v49;
        v30 = 2;
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52[0] = v21;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v52;
        v29 = &v51;
        v30 = 1;
      }

      v33 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *a4 = [v24 errorWithDomain:@"ATL" code:3 userInfo:v33];
    }

    a4 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (id)getIdentifier:(id *)a3 withInstanceIdentifier:(id *)a4
{
  if (a4->var1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CBEA90] dataWithDERItem:a3];
    v7 = [v6 asHexString];
    v8 = [MEMORY[0x277CBEA90] dataWithDERItem:a4];
    v9 = [v8 asHexString];
    v10 = [v5 stringWithFormat:@"%@-%@", v7, v9];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithDERItem:a3];
    v10 = [v6 asHexString];
  }

  return v10;
}

+ (id)parseDateAndTime:(id *)a3
{
  v4 = MEMORY[0x277CBEAB8];
  v5 = DecodeBCD(a3->var0, 1);
  v6 = DecodeBCD(a3->var0 + 1, 1);
  v7 = DecodeBCD(a3->var0 + 2, 1);
  v8 = DecodeBCD(a3->var0 + 3, 1);
  v9 = DecodeBCD(a3->var0 + 4, 1);
  v10 = DecodeBCD(a3->var0 + 5, 1);

  return [v4 dateWithYear:v5 + 2000 month:v6 day:v7 hour:v8 minute:v9 second:v10];
}

+ (id)addAmount:(id *)a3 withCurrency:(id *)a4 usingAmountKey:(id)a5 usingCurrencyKey:(id)a6 usingExponentKey:(id)a7
{
  v27[3] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (a3->var1)
  {
    v25 = 0;
    if (a4->var1 && ([ATLCurrency currencyCodeForNumber:DecodeBCD(a4) exponentOut:&v25], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = [MEMORY[0x277CCABB0] numberWithShort:v25];
    }

    else
    {
      v15 = @"XXX";
      v16 = &unk_2843C6398;
    }

    S32BE = ReadS32BE(a3);
    if (S32BE >= 0)
    {
      v18 = S32BE;
    }

    else
    {
      v18 = -S32BE;
    }

    v19 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v18 exponent:-v25 isNegative:S32BE >> 31];
    v20 = MEMORY[0x277CBEB38];
    v26[0] = v11;
    v26[1] = v12;
    v27[0] = v19;
    v27[1] = v15;
    v26[2] = v13;
    v27[2] = v16;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v22 = [v20 dictionaryWithDictionary:v21];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)calculateTransactionSN:(id *)a3 withDeviceId:(id *)a4 withDeviceSN:(id *)a5
{
  v8 = +[HashHelper hashHelper];
  v9 = [(HashHelper *)v8 addData:a3->var1 withLength:?];
  v10 = [(HashHelper *)v9 addData:a4->var1 withLength:?];
  v11 = [(HashHelper *)v10 addData:a5->var1 withLength:?];
  v12 = [(HashHelper *)v11 getHash];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "u32BE:", 0)}];

  return v13;
}

+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = ATLLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "MIFARE Hercules Decoder doesn't support getServiceProviderData", v23, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Hercules Decoder doesn't support getServiceProviderData"];
  v11 = v10;
  if (a9)
  {
    v12 = *a9;
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    if (*a9)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v24[0] = *MEMORY[0x277CCA450];
      v24[1] = v15;
      v25[0] = v10;
      v25[1] = v12;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v25;
      v18 = v24;
      v19 = 2;
    }

    else
    {
      v26 = *MEMORY[0x277CCA450];
      v27[0] = v10;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v27;
      v18 = &v26;
      v19 = 1;
    }

    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    *a9 = [v13 errorWithDomain:@"ATL" code:2 userInfo:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "MIFARE Hercules Decoder doesn't support getServiceProviderData", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MIFARE Hercules Decoder doesn't support getServiceProviderData"];
  v10 = v9;
  if (a7)
  {
    v11 = *a7;
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v14 = *MEMORY[0x277CCA7E8];
      v23[0] = *MEMORY[0x277CCA450];
      v23[1] = v14;
      v24[0] = v9;
      v24[1] = v11;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v24;
      v17 = v23;
      v18 = 2;
    }

    else
    {
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v9;
      v15 = MEMORY[0x277CBEAC0];
      v16 = v26;
      v17 = &v25;
      v18 = 1;
    }

    v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    *a7 = [v12 errorWithDomain:@"ATL" code:2 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

@end