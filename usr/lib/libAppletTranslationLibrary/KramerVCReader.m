@interface KramerVCReader
+ (id)decodeDirectory:(id)a3;
+ (id)decodeIPEHeader:(id)a3;
+ (id)decodeIPETyp16:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeIPETyp22:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeIPETyp22Ifr2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeIPETyp23:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeIPETyp23Ifr2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeIPETyp2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5;
+ (id)decodeTransientTicketIfr1:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withRecordOffset:(id)a6;
+ (id)decodeVGHeader:(id)a3;
+ (id)decodeVGTyp22:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6;
+ (id)decodeVGTyp23:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6;
+ (id)decodeVGTyp2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6;
+ (id)deriveWalletData:(id)a3 withSector:(unsigned __int8)a4 withValueGroup:(id)a5;
+ (id)getBestExpiry:(id)a3 withLatestValueGroup:(id)a4;
+ (id)getCommutePlanIdentifier:(id)a3;
+ (id)getCommutePlanIdentifier:(id)a3 withTyp:(id)a4 withPtyp:(id)a5 withCpicc:(id)a6 withPassDuration:(id)a7 withPromotionCode:(id)a8 withConcessionaryClass:(id)a9 withEntitlementCode:(id)a10 withRouteCode:(id)a11 withValidAtOrFrom:(id)a12 withValidTo:(id)a13;
+ (id)getCommutePlanUniqueId:(id)a3 withSector:(id)a4;
+ (id)getIPELabelDetails:(id)a3 withError:(id *)a4;
+ (id)getLatestValueGroup:(id)a3;
+ (id)getLogDirectoryEntry:(id)a3;
+ (id)getTopupCredits:(id)a3 withIpeId:(unsigned __int16)a4;
+ (id)processSectorChain:(id)a3 forIPE:(unsigned __int8)a4;
+ (id)readCardFromVC:(id)a3 forCity:(id)a4 withError:(id *)a5;
+ (id)readCyclicLogFromVC:(id)a3 forCity:(id)a4 withError:(id *)a5;
+ (id)readIPEFromVC:(id)a3 withStorageFile:(unsigned __int8)a4 withTyp:(unsigned __int8)a5 withSectorChain:(id)a6 withDirectoryDetails:(id)a7 withError:(id *)a8;
+ (id)readVGFromVC:(id)a3 withStorageFile:(unsigned __int8)a4 withTyp:(unsigned __int8)a5 withSectorChain:(id)a6 withError:(id *)a7;
@end

@implementation KramerVCReader

+ (id)readCardFromVC:(id)a3 forCity:(id)a4 withError:(id *)a5
{
  v72[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v70 = 0;
  v61 = v7;
  v9 = [MifareUtils getMcmDataDal:19215 withTransceiver:v7 withError:&v70];
  v10 = v70;
  if ([v9 length])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "No DAL data for Directory File", buf, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for Directory File"];
    v14 = MEMORY[0x277CCA9B8];
    v71 = *MEMORY[0x277CCA450];
    v72[0] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    v10 = [v14 errorWithDomain:@"ATL" code:3 userInfo:v15];
  }

  if (v10)
  {
    if (a5)
    {
      v16 = v10;
      v17 = 0;
      *a5 = v10;
      goto LABEL_35;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  if (*[v9 bytes] != 8448)
  {
    v10 = 0;
    if (a5)
    {
      v17 = 0;
      *a5 = 0;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v58 = v8;
  v18 = 0x277CBE000uLL;
  v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v59 = v9;
  do
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 5 * v20 + 2, 5}];
    if ([v22 isAll00])
    {
      v23 = [*(v18 + 2872) dictionaryWithCapacity:1];
      [v63 addObject:v23];

      ++v20;
    }

    else
    {
      v68 = v21;
      v24 = [KramerVCReader getIPELabelDetails:v22 withError:&v68];
      v25 = v68;

      v26 = [v24 objectForKeyedSubscript:@"IPEType"];
      v27 = [KramerVCReader processSectorChain:v9 forIPE:v19];
      if ([v27 count])
      {
        v28 = [v27 lastObject];
        v29 = [v28 unsignedIntValue] == 13;

        v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
        [v24 setObject:v30 forKeyedSubscript:@"IPEBlocked"];

        [v24 setObject:v27 forKeyedSubscript:@"IPESectorChain"];
      }

      ++v20;
      v64 = v26;
      v31 = [v26 unsignedCharValue];
      v67 = v25;
      v32 = [KramerVCReader readIPEFromVC:v61 withStorageFile:v20 withTyp:v31 withSectorChain:v27 withDirectoryDetails:v24 withError:&v67];
      v33 = v67;

      [v24 addEntriesFromDictionary:v32];
      v34 = [v24 objectForKeyedSubscript:@"IPEValueGroupFlag"];
      v35 = [v34 unsignedIntValue];

      if (v35)
      {
        v36 = v27;
        v37 = [v24 objectForKeyedSubscript:@"OverflowFlag"];
        v38 = [v37 unsignedIntValue];

        if (v38 == 1)
        {
          v39 = [v36 subarrayWithRange:{1, objc_msgSend(v36, "count")}];

          v36 = v39;
          v40 = 1;
        }

        else
        {
          v40 = 0;
        }

        if ([v36 count])
        {
          v41 = [v36 objectAtIndex:v40];
          v42 = [v41 unsignedCharValue];

          if (v42 <= 0xC)
          {
            v43 = [v64 unsignedCharValue];
            v66 = v33;
            v44 = [KramerVCReader readVGFromVC:v61 withStorageFile:v42 withTyp:v43 withSectorChain:v36 withError:&v66];
            v45 = v66;

            [v24 addEntriesFromDictionary:v44];
            v33 = v45;
          }
        }

        v62 = v33;
      }

      else
      {
        v62 = v33;
      }

      v46 = v18;
      v47 = [*(v18 + 2872) dictionaryWithCapacity:10];
      v48 = [KramerVCReader getLatestValueGroup:v24];
      [v24 setObject:v48 forKeyedSubscript:@"LatestValueGroup"];
      v49 = [KramerVCReader getTopupCredits:v24 withIpeId:v20];
      if (v49)
      {
        [v24 setObject:v49 forKeyedSubscript:@"VGTopups"];
      }

      v50 = [KramerVCReader deriveWalletData:v24 withSector:v19 withValueGroup:v48];
      [v47 addEntriesFromDictionary:v50];
      [v24 addEntriesFromDictionary:v50];
      [v63 addObject:v24];
      [v60 addObject:v47];

      v9 = v59;
      v18 = v46;
      v21 = v62;
    }

    ++v19;
  }

  while (v20 != 7);
  v51 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes") + 37, 5}];
  v52 = [*(v18 + 2872) dictionaryWithCapacity:2];
  v53 = [KramerVCReader getLogDirectoryEntry:v51];
  [v52 setObject:v53 forKeyedSubscript:@"LogDirectory"];

  v65 = v21;
  v54 = [KramerVCReader readCyclicLogFromVC:v61 forCity:&unk_2843C6320 withError:&v65];
  v10 = v65;

  [v52 setObject:v54 forKeyedSubscript:@"CyclicLog"];
  [v63 addObject:v52];
  v17 = v57;
  [v57 setObject:v52 forKeyedSubscript:@"CyclicLog"];
  [v57 setObject:v60 forKeyedSubscript:@"CommutePlans"];
  [v57 setObject:v63 forKeyedSubscript:@"ATLInternal"];

  v8 = v58;
LABEL_35:

  v55 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)readIPEFromVC:(id)a3 withStorageFile:(unsigned __int8)a4 withTyp:(unsigned __int8)a5 withSectorChain:(id)a6 withDirectoryDetails:(id)a7 withError:(id *)a8
{
  v83 = a5;
  v11 = a4;
  v100[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v86 = 0;
  v15 = [MifareUtils getMcmDataDal:v11 | 0x4B00u withTransceiver:v12 withError:&v86];
  v16 = v86;
  v84 = v15;
  if ([v15 length])
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 0;
  }

  if (v17)
  {
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v23 = MEMORY[0x277CCA9B8];
    v99 = *MEMORY[0x277CCA450];
    v100[0] = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:&v99 count:1];
    v16 = [v23 errorWithDomain:@"ATL" code:3 userInfo:v24];

    v12 = v20;
    v13 = v19;
    v14 = v18;
  }

  if (!v16)
  {
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v28 = [KramerVCReader decodeIPEHeader:v84];
    v81 = v27;
    [v27 addEntriesFromDictionary:v28];
    v82 = v28;
    v29 = [v28 objectForKeyedSubscript:@"IPELength"];
    v30 = [v29 unsignedShortValue];

    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v82 objectForKeyedSubscript:@"IPELength"];
      v33 = [v32 unsignedShortValue];
      *buf = 67109376;
      *v98 = v33;
      *&v98[4] = 1024;
      *&v98[6] = 4 * v30;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, "IPE Length %d blocks %d bytes", buf, 0xEu);
    }

    if (v30 < 0x1D)
    {
      v37 = v81;
      v38 = v82;
      goto LABEL_27;
    }

    [v81 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
    if (![v13 count])
    {
      v39 = ATLLogObject();
      v38 = v82;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEFAULT, "IPE overflow indicated, but there is no next sector in chain.", buf, 2u);
      }

      v37 = v81;
      [v81 setObject:@"IPE Overflow: Missing next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
      [v81 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      goto LABEL_27;
    }

    v34 = [v13 firstObject];
    v35 = [v34 unsignedShortValue];

    if (!v35 || v35 == 13 || v35 == v11)
    {
      v36 = ATLLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEFAULT, "IPE overflow indicated, but chain entry does not indicate a new sector to read.", buf, 2u);
      }

      v37 = v81;
      [v81 setObject:@"IPE Overflow: Invalid next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
      [v81 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      v38 = v82;
      goto LABEL_27;
    }

    v85 = 0;
    v74 = [MifareUtils getMcmDataDal:(v35 + 19200) withTransceiver:v12 withError:&v85];
    v16 = v85;
    if (![v84 length])
    {
      v38 = v82;
      if (v16)
      {
LABEL_74:
        if (v16)
        {
          if (a8)
          {
            v79 = v16;
            *a8 = v16;
          }

          v26 = 0;
          v37 = v81;
          goto LABEL_64;
        }

        v80 = [v84 mutableCopy];
        [v80 appendData:v74];

        v84 = v80;
        v37 = v81;
LABEL_27:
        v40 = [v38 objectForKeyedSubscript:@"IPEFormatRev"];
        v41 = [v40 unsignedShortValue];

        if (v83 > 21)
        {
          if (v83 == 22)
          {
            if ((v41 - 3) > 0xFFFFFFFD)
            {
              v16 = 0;
            }

            else
            {
              v48 = ATLLogObject();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v98 = v41;
                _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 22", buf, 8u);
              }

              v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 22", v41];
              v50 = MEMORY[0x277CCA9B8];
              v89 = *MEMORY[0x277CCA450];
              v90 = v49;
              v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
              v16 = [v50 errorWithDomain:@"ATL" code:8 userInfo:v51];
            }

            v67 = [v38 objectForKeyedSubscript:@"IPEFormatRev"];
            v68 = [v38 objectForKeyedSubscript:@"IPEBitmap"];
            v69 = [KramerVCReader decodeIPETyp22:v84 withIfr:v67 withBitmap:v68];
            [v37 addEntriesFromDictionary:v69];

            v70 = [v14 objectForKeyedSubscript:@"IPEValueGroupFlag"];
            LODWORD(v67) = [v70 unsignedIntValue];

            if (!v67)
            {
              goto LABEL_61;
            }

LABEL_60:
            v71 = &unk_2843C6338;
LABEL_62:
            [v37 setObject:v71 forKeyedSubscript:@"CountBasedFlag"];
LABEL_63:
            v26 = v37;
LABEL_64:

            goto LABEL_65;
          }

          if (v83 != 23)
          {
            goto LABEL_38;
          }

          if ((v41 - 3) > 0xFFFFFFFD)
          {
            v16 = 0;
          }

          else
          {
            v42 = ATLLogObject();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v98 = v41;
              _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 23", buf, 8u);
            }

            v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 23", v41];
            v44 = MEMORY[0x277CCA9B8];
            v87 = *MEMORY[0x277CCA450];
            v88 = v43;
            v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v16 = [v44 errorWithDomain:@"ATL" code:8 userInfo:v45];
          }

          v59 = [v38 objectForKeyedSubscript:@"IPEFormatRev"];
          v60 = [v38 objectForKeyedSubscript:@"IPEBitmap"];
          v61 = [KramerVCReader decodeIPETyp23:v84 withIfr:v59 withBitmap:v60];
        }

        else
        {
          if (v83 != 2)
          {
            if (v83 == 16)
            {
              if (v41 == 1)
              {
                v16 = 0;
              }

              else
              {
                v52 = ATLLogObject();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *v98 = v41;
                  _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
                }

                v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", v41];
                v54 = MEMORY[0x277CCA9B8];
                v91 = *MEMORY[0x277CCA450];
                v92 = v53;
                v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                v16 = [v54 errorWithDomain:@"ATL" code:8 userInfo:v55];
              }

              v56 = [v38 objectForKeyedSubscript:@"IPEFormatRev"];
              v57 = [v38 objectForKeyedSubscript:@"IPEBitmap"];
              v58 = [KramerVCReader decodeIPETyp16:v84 withIfr:v56 withBitmap:v57];
              [v37 addEntriesFromDictionary:v58];

LABEL_61:
              v71 = &unk_2843C6320;
              goto LABEL_62;
            }

LABEL_38:
            v46 = ATLLogObject();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v83];
              *buf = 138412290;
              *v98 = v47;
              _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEFAULT, "Specific decoding not yet implemented for TYP %@", buf, 0xCu);
            }

            v16 = 0;
            goto LABEL_63;
          }

          if (v41 == 1)
          {
            v16 = 0;
          }

          else
          {
            v62 = ATLLogObject();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v98 = v41;
              _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
            }

            v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", v41];
            v64 = MEMORY[0x277CCA9B8];
            v93 = *MEMORY[0x277CCA450];
            v94 = v63;
            v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v16 = [v64 errorWithDomain:@"ATL" code:8 userInfo:v65];
          }

          v59 = [v38 objectForKeyedSubscript:@"IPEFormatRev"];
          v60 = [v38 objectForKeyedSubscript:@"IPEBitmap"];
          v61 = [KramerVCReader decodeIPETyp2:v84 withIfr:v59 withBitmap:v60];
        }

        v66 = v61;
        [v37 addEntriesFromDictionary:v61];

        goto LABEL_60;
      }

      v75 = ATLLogObject();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v75, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
      }

      v76 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
      v77 = MEMORY[0x277CCA9B8];
      v95 = *MEMORY[0x277CCA450];
      v96 = v76;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v16 = [v77 errorWithDomain:@"ATL" code:3 userInfo:v78];
    }

    v38 = v82;
    goto LABEL_74;
  }

  if (a8)
  {
    v25 = v16;
    v26 = 0;
    *a8 = v16;
  }

  else
  {
    v26 = 0;
  }

LABEL_65:

  v72 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)readVGFromVC:(id)a3 withStorageFile:(unsigned __int8)a4 withTyp:(unsigned __int8)a5 withSectorChain:(id)a6 withError:(id *)a7
{
  v68 = a5;
  v82[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [v10 firstObject];
  v12 = [v11 unsignedShortValue];

  v70 = 0;
  v13 = [MifareUtils getMcmDataDal:(v12 + 19200) withTransceiver:v9 withError:&v70];
  v14 = v70;
  if ([v13 length])
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (v15)
  {
    v16 = v13;
    v17 = v9;
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v20 = MEMORY[0x277CCA9B8];
    v81 = *MEMORY[0x277CCA450];
    v82[0] = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    v14 = [v20 errorWithDomain:@"ATL" code:3 userInfo:v21];

    v9 = v17;
    v13 = v16;
  }

  if (!v14)
  {
    v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
    v66 = v13;
    v26 = [KramerVCReader decodeVGHeader:v13];
    [v25 addEntriesFromDictionary:v26];
    v27 = [v26 objectForKeyedSubscript:@"VGLength"];
    v28 = [v27 unsignedShortValue];

    v29 = ATLLogObject();
    v67 = v26;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v26 objectForKeyedSubscript:@"IPELength"];
      v31 = [v30 unsignedShortValue];
      *buf = 67109376;
      *v80 = v31;
      *&v80[4] = 1024;
      *&v80[6] = 4 * v28;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "VG Length %d blocks %d bytes", buf, 0xEu);

      v26 = v67;
    }

    v32 = [v26 objectForKeyedSubscript:@"VGFormatRev"];
    v33 = [v32 unsignedIntValue];

    v22 = v10;
    if (v28 >= 0x1D)
    {
      [v25 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
      if ([v10 count] == 1)
      {
        v34 = ATLLogObject();
        v35 = v68;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "VG overflow indicated, but there is no next sector in chain.", buf, 2u);
        }

        [v25 setObject:@"VG Overflow: Missing next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
        [v25 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
LABEL_27:
        if (v35 > 21)
        {
          if (v35 == 22)
          {
            if ((v33 - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v45 = ATLLogObject();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v80 = v33;
                _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 22", buf, 8u);
              }

              v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 22", v33];
              v47 = MEMORY[0x277CCA9B8];
              v73 = *MEMORY[0x277CCA450];
              v74 = v46;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
              v14 = [v47 errorWithDomain:@"ATL" code:8 userInfo:v48];
            }

            v43 = [v67 objectForKeyedSubscript:@"VGFormatRev"];
            v49 = [v67 objectForKeyedSubscript:@"VGBitmap"];
            v50 = [v67 objectForKeyedSubscript:@"VGNumValueRecords"];
            v51 = [KramerVCReader decodeVGTyp22:v66 withIfr:v43 withBitmap:v49 withNumRecords:v50];
          }

          else
          {
            if (v35 != 23)
            {
LABEL_37:
              v43 = ATLLogObject();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35];
                *buf = 138412290;
                *v80 = v44;
                _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEBUG, "Specific decoding not yet implemented for TYP %@", buf, 0xCu);
              }

              v14 = 0;
              goto LABEL_55;
            }

            if ((v33 - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v39 = ATLLogObject();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v80 = v33;
                _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 23", buf, 8u);
              }

              v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 23", v33];
              v41 = MEMORY[0x277CCA9B8];
              v71 = *MEMORY[0x277CCA450];
              v72 = v40;
              v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
              v14 = [v41 errorWithDomain:@"ATL" code:8 userInfo:v42];
            }

            v43 = [v67 objectForKeyedSubscript:@"VGFormatRev"];
            v49 = [v67 objectForKeyedSubscript:@"VGBitmap"];
            v50 = [v67 objectForKeyedSubscript:@"VGNumValueRecords"];
            v51 = [KramerVCReader decodeVGTyp23:v66 withIfr:v43 withBitmap:v49 withNumRecords:v50];
          }
        }

        else
        {
          if (v35 != 2)
          {
            if (v35 == 16)
            {
              v14 = 0;
LABEL_56:
              v24 = v25;
LABEL_57:
              v13 = v66;

              goto LABEL_58;
            }

            goto LABEL_37;
          }

          if (v33 == 9)
          {
            v14 = 0;
          }

          else
          {
            v52 = ATLLogObject();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v80 = v33;
              _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 2", buf, 8u);
            }

            v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 2", v33];
            v54 = MEMORY[0x277CCA9B8];
            v75 = *MEMORY[0x277CCA450];
            v76 = v53;
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v14 = [v54 errorWithDomain:@"ATL" code:8 userInfo:v55];
          }

          v43 = [v67 objectForKeyedSubscript:@"VGFormatRev"];
          v49 = [v67 objectForKeyedSubscript:@"VGBitmap"];
          v50 = [v67 objectForKeyedSubscript:@"VGNumValueRecords"];
          v51 = [KramerVCReader decodeVGTyp2:v66 withIfr:v43 withBitmap:v49 withNumRecords:v50];
        }

        v56 = v51;
        [v25 addEntriesFromDictionary:v51];

LABEL_55:
        goto LABEL_56;
      }

      v36 = [v10 firstObject];
      v37 = [v36 unsignedCharValue];

      if (!v37 || v37 == 13 || v12 == v37)
      {
        v38 = ATLLogObject();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EEF5000, v38, OS_LOG_TYPE_DEFAULT, "VG overflow indicated, but chain entry does not indicate a new sector to read.", buf, 2u);
        }

        [v25 setObject:@"VG Overflow: Invalid next sector" forKeyedSubscript:@"OverflowChainErrorMsg"];
        [v25 setObject:&unk_2843C6350 forKeyedSubscript:@"OverflowFlag"];
      }

      else
      {
        v69 = 0;
        v59 = [MifareUtils getMcmDataDal:(v12 + 19200) withTransceiver:v9 withError:&v69];
        v14 = v69;
        if (![v66 length] && !v14)
        {
          v60 = ATLLogObject();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", buf, 2u);
          }

          v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
          v62 = MEMORY[0x277CCA9B8];
          v77 = *MEMORY[0x277CCA450];
          v78 = v61;
          v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v14 = [v62 errorWithDomain:@"ATL" code:3 userInfo:v63];
        }

        if (v14)
        {
          if (a7)
          {
            v64 = v14;
            *a7 = v14;
          }

          v24 = 0;
          goto LABEL_57;
        }

        v65 = [v66 mutableCopy];
        [v65 appendData:v59];

        v66 = v65;
      }
    }

    v35 = v68;
    goto LABEL_27;
  }

  v22 = v10;
  if (a7)
  {
    v23 = v14;
    v24 = 0;
    *a7 = v14;
  }

  else
  {
    v24 = 0;
  }

LABEL_58:

  v57 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)readCyclicLogFromVC:(id)a3 forCity:(id)a4 withError:(id *)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v6 = [MifareUtils getMcmDataDal:19214 withTransceiver:a3 withError:&v21];
  v7 = v21;
  if ([v6 length])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "No DAL data for specified DAL ID", v20, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No DAL data for specified DAL ID"];
    v11 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v7 = [v11 errorWithDomain:@"ATL" code:3 userInfo:v12];
  }

  if (v7)
  {
    if (a5)
    {
      v13 = v7;
      v14 = 0;
      *a5 = v7;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v15 = 0;
    do
    {
      v16 = v15;
      v17 = [KramerVCReader decodeCyclicLogEntry:v6 withRecordIndex:v15];
      [v14 addObject:v17];

      ++v15;
    }

    while (v16 < 3);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getIPELabelDetails:(id)a3 withError:(id *)a4
{
  v4 = a3;
  v5 = *[v4 bytes];
  v6 = *([v4 bytes] + 3);
  [v4 bytes];
  v7 = bswap32(*[v4 bytes]) >> 18;
  v8 = bswap32(*([v4 bytes] + 1));
  v9 = *([v4 bytes] + 2);
  v10 = [v4 bytes];

  v11 = bswap32(*(v10 + 3) & 0xFF3F) >> 16;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v5 >> 7];
  [v12 setObject:v13 forKeyedSubscript:@"OIDExtensionFlag"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v12 setObject:v14 forKeyedSubscript:@"OID"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(v8 >> 21) & 0x1F];
  [v12 setObject:v15 forKeyedSubscript:@"IPEType"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9 & 0xF];
  [v12 setObject:v16 forKeyedSubscript:@"IPESubType"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v6 >> 7];
  [v12 setObject:v17 forKeyedSubscript:@"IPEValueGroupFlag"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v12 setObject:v18 forKeyedSubscript:@"IPEIinNotInShellFlag"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
  [v12 setObject:v19 forKeyedSubscript:@"IPEExpiryDate"];

  return v12;
}

+ (id)getCommutePlanIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"OID"];
  v5 = [v3 objectForKeyedSubscript:@"IPEType"];
  v6 = [v3 objectForKeyedSubscript:@"IPESubType"];
  v15 = [v3 objectForKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];
  v14 = [v3 objectForKeyedSubscript:@"IPEPassDuration"];
  v7 = [v3 objectForKeyedSubscript:@"IPEPromoCode"];
  v13 = [v3 objectForKeyedSubscript:@"IPEConcessionaryClass"];
  v8 = [v3 objectForKeyedSubscript:@"IPEEntitlementCode"];
  v9 = [v3 objectForKeyedSubscript:@"IPERouteCode"];
  v10 = [v3 objectForKeyedSubscript:@"IPEValidAtOrFrom"];
  v11 = [v3 objectForKeyedSubscript:@"IPEValidTo"];

  v16 = [KramerVCReader getCommutePlanIdentifier:v4 withTyp:v5 withPtyp:v6 withCpicc:v15 withPassDuration:v14 withPromotionCode:v7 withConcessionaryClass:v13 withEntitlementCode:v8 withRouteCode:v9 withValidAtOrFrom:v10 withValidTo:v11];

  return v16;
}

+ (id)getCommutePlanIdentifier:(id)a3 withTyp:(id)a4 withPtyp:(id)a5 withCpicc:(id)a6 withPassDuration:(id)a7 withPromotionCode:(id)a8 withConcessionaryClass:(id)a9 withEntitlementCode:(id)a10 withRouteCode:(id)a11 withValidAtOrFrom:(id)a12 withValidTo:(id)a13
{
  v41 = a6;
  v40 = a7;
  v39 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v38 = a13;
  v34 = MEMORY[0x277CCACA8];
  v22 = a5;
  v23 = a4;
  v33 = [a3 intValue];
  v32 = [v23 intValue];

  v31 = [v22 intValue];
  if (v41)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(v41, "intValue")];
  }

  else
  {
    v37 = &stru_2843B92D8;
  }

  if (v40)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(v40, "intValue")];
    if (v39)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v36 = &stru_2843B92D8;
    if (v39)
    {
LABEL_6:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(v39, "intValue")];
      if (v18)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  v35 = &stru_2843B92D8;
  if (v18)
  {
LABEL_7:
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(v18, "intValue")];
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_13:
    v25 = &stru_2843B92D8;
    if (v20)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v24 = &stru_2843B92D8;
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(v19, "intValue")];
  if (v20)
  {
LABEL_9:
    v26 = [v20 asHexString];
    goto LABEL_15;
  }

LABEL_14:
  v26 = &stru_2843B92D8;
LABEL_15:
  if (v21)
  {
    v27 = [v21 asHexString];
  }

  else
  {
    v27 = &stru_2843B92D8;
  }

  if (v38)
  {
    v28 = [v38 asHexString];
    v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", v33, v32, v31, v37, v36, v35, v24, v25, v26, v27, v28];

    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", v33, v32, v31, v37, v36, v35, v24, v25, v26, v27, &stru_2843B92D8];
  if (v21)
  {
LABEL_20:
  }

LABEL_21:
  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v39)
  {
  }

  if (v40)
  {
  }

  if (v41)
  {
  }

  return v29;
}

+ (id)getCommutePlanUniqueId:(id)a3 withSector:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HashHelper hashHelper];
  v8 = [(HashHelper *)v7 addString:v6];

  v9 = [(HashHelper *)v8 addNumber:v5];

  v10 = [(HashHelper *)v9 getHash];

  v11 = [v10 asHexString];

  return v11;
}

+ (id)processSectorChain:(id)a3 forIPE:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  if (v4 <= 0xC)
  {
    LOBYTE(v7) = v4;
    do
    {
      v8 = *([v5 bytes] + (v4 >> 1) + 42);
      v9 = v8 >> 4;
      v10 = v8 & 0xF;
      v11 = (v7 & 1) != 0 ? v10 : v9;
      if (!v11)
      {
        break;
      }

      if (v11 == 13 || v11 == 15)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [v6 addObject:v14];

        break;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
      [v6 addObject:v13];

      if (v4 + 1 == v11)
      {
        v7 = 13;
      }

      else
      {
        v7 = v11 - 1;
      }

      v4 = v7;
    }

    while (v7 < 0xDu);
  }

  return v6;
}

+ (id)decodeIPETyp2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = a5;
  v9 = [v7 dictionaryWithCapacity:2];
  v10 = [v6 bytes];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 5)];
  [v9 setObject:v11 forKeyedSubscript:@"IPEFlags"];

  LOBYTE(v11) = [v8 unsignedCharValue];
  if (v11)
  {
    v12 = [v6 bytes];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v12 + 22)) >> 8];
    [v9 setObject:v13 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v9;
}

+ (id)decodeIPETyp16:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  v9 = *([v6 bytes] + 2);
  if (v9 != 255)
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v42[0] = 67109120;
      v42[1] = v9;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_DEFAULT, "Remove Date value(%d) is not 255. This is inconsistent with expections for IPE 16.", v42, 8u);
    }
  }

  v11 = bswap32(*([v6 bytes] + 3)) >> 16;
  v12 = bswap32(*([v6 bytes] + 16) & 0xFF3F) >> 16;
  v13 = *([v6 bytes] + 27);
  v14 = *([v6 bytes] + 28);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
  [v8 setObject:v15 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
  [v8 setObject:v16 forKeyedSubscript:@"IPEEntitlementExpiryRaw"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
  [v8 setObject:v17 forKeyedSubscript:@"IPEEntitlementCode"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
  [v8 setObject:v18 forKeyedSubscript:@"IPEConcessionaryClass"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  [v8 setObject:v19 forKeyedSubscript:@"IPERemoveDate"];

  if (([v7 unsignedCharValue] & 2) != 0)
  {
    v21 = [v6 subdataWithOffset:29 length:4];
    v22 = [v21 asHexString];
    [v8 setObject:v22 forKeyedSubscript:@"TmpSecondaryID"];

    v20 = 33;
  }

  else
  {
    v20 = 29;
  }

  if (([v7 unsignedCharValue] & 4) != 0)
  {
    v23 = [v6 u8:v20];
    v24 = v23;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
    [v8 setObject:v25 forKeyedSubscript:@"TmpForenameLength"];

    LODWORD(v25) = v20 + 1;
    v26 = [v6 subdataWithOffset:v20 + 1 length:v24];
    [v8 setObject:v26 forKeyedSubscript:@"TmpForename"];

    v27 = v25 + v24;
    v28 = [v6 u8:v27];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v28];
    [v8 setObject:v29 forKeyedSubscript:@"TmpSurnameLength"];

    v30 = (v27 + 1);
    v31 = [v6 subdataWithOffset:v30 length:v28];
    [v8 setObject:v31 forKeyedSubscript:@"TmpSurname"];

    v20 = v30 + v28;
  }

  if (([v7 unsignedCharValue] & 8) != 0)
  {
    v32 = [v6 bytes];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v32 + v20)) >> 16];
    [v8 setObject:v33 forKeyedSubscript:@"IPEHalfDayOfWeek"];

    v34 = v20 + 2;
    v35 = [v6 u8:v20 + 3] + 2;
    v36 = [v6 subdataWithOffset:v34 length:v35];
    [v8 setObject:v36 forKeyedSubscript:@"IPEValidAtOrFrom"];
    v20 = v34 + v35;
  }

  if (([v7 unsignedCharValue] & 0x10) != 0)
  {
    v37 = [v6 u8:v20 + 1] + 2;
    v38 = [v6 subdataWithOffset:v20 length:v37];
    [v8 setObject:v38 forKeyedSubscript:@"IPEValidTo"];
    v20 += v37;
  }

  if ([v7 unsignedCharValue])
  {
    v39 = [v6 subdataWithOffset:v20 length:3];
    [v8 setObject:v39 forKeyedSubscript:@"IPELevelIIN"];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)decodeIPETyp22:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp22Ifr2:v7 withIfr:v8 withBitmap:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:13];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v7, "bytes") + 5)) >> 16}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v7, "bytes") + 8)) >> 18}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    v13 = [v7 bytes];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(v13 + 9)) >> 15) & 0x7FF];
    [v10 setObject:v14 forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v7, "bytes") + 12) >> 5}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v7, "bytes") + 12) & 0x1F}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEValidityCode"];

    v17 = bswap32(*([v7 bytes] + 13));
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
    [v10 setObject:v18 forKeyedSubscript:@"IPEValidityStartRaw"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 16)}];
    [v10 setObject:v19 forKeyedSubscript:@"IPEPromoCode"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 17)}];
    [v10 setObject:v20 forKeyedSubscript:@"IPEValidOnDayCode"];

    if (v17 >= 0x100)
    {
      v21 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
      [v10 setObject:v21 forKeyedSubscript:@"IPEValidityStart"];
    }

    if (([v9 unsignedCharValue] & 0x10) != 0)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v7, "bytes") + 26)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

      v22 = 28;
    }

    else
    {
      v22 = 26;
    }

    if (([v9 unsignedCharValue] & 2) != 0)
    {
      v24 = [v7 u8:v22 | 1] + 2;
      v25 = [v7 subdataWithOffset:v22 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

      v22 += v24;
    }

    if (([v9 unsignedCharValue] & 4) != 0)
    {
      v26 = [v7 u8:v22 + 1] + 2;
      v27 = [v7 subdataWithOffset:v22 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEValidTo"];

      v22 += v26;
    }

    if (([v9 unsignedCharValue] & 8) != 0)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + v22)}];
      [v10 setObject:v28 forKeyedSubscript:@"IPEPassDuration"];

      ++v22;
    }

    if ([v9 unsignedCharValue])
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v7, "bytes") + v22)) >> 8}];
      [v10 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp22Ifr2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v6, "bytes") + 5)) >> 16}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v6, "bytes") + 8)) >> 18}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  v11 = [v6 bytes];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(v11 + 9)) >> 15) & 0x7FF];
  [v8 setObject:v12 forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v6, "bytes") + 12) >> 5}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v6, "bytes") + 12) & 0x1F}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEValidityCode"];

  v15 = bswap32(*([v6 bytes] + 13));
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15 >> 8];
  [v8 setObject:v16 forKeyedSubscript:@"IPEValidityStartRaw"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 16)}];
  [v8 setObject:v17 forKeyedSubscript:@"IPEPromoCode"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 17)}];
  [v8 setObject:v18 forKeyedSubscript:@"IPEValidOnDayCode"];

  if (v15 >= 0x100)
  {
    v19 = [KramerMappings getAbsoluteDateComponents:v15 >> 8];
    [v8 setObject:v19 forKeyedSubscript:@"IPEValidityStart"];
  }

  if (([v7 unsignedCharValue] & 0x10) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v6, "bytes") + 28)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    v20 = 30;
  }

  else
  {
    v20 = 28;
  }

  if (([v7 unsignedCharValue] & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + v20)}];
    [v8 setObject:v22 forKeyedSubscript:@"IPEPassDuration"];

    v20 |= 1u;
  }

  if (([v7 unsignedCharValue] & 2) != 0)
  {
    v23 = [v6 subdataWithOffset:v20 length:5];
    [v8 setObject:v23 forKeyedSubscript:@"IPERouteCode"];

    LODWORD(v23) = v20 + 5;
    v24 = [v6 u8:v20 + 6] + 2;
    v25 = [v6 subdataWithOffset:v20 + 5 length:v24];
    [v8 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

    v26 = v23 + v24;
    v27 = [v6 u8:v26 + 1] + 2;
    v28 = [v6 subdataWithOffset:v26 length:v27];
    [v8 setObject:v28 forKeyedSubscript:@"IPEValidTo"];

    v20 = v26 + v27;
  }

  if ([v7 unsignedCharValue])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v6, "bytes") + v20)) >> 8}];
    [v8 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPETyp23:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp23Ifr2:v7 withIfr:v8 withBitmap:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 5)}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v7, "bytes") + 7)) >> 19}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v7, "bytes") + 9) >> 3}];
    [v10 setObject:v13 forKeyedSubscript:@"IPEValidityCode"];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v7, "bytes") + 9) & 0xFF07) >> 16}];
    [v10 setObject:v14 forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v7, "bytes") + 11) & 7}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 24)}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEPromoCode"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v7, "bytes") + 25)) >> 16}];
    [v10 setObject:v17 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    if (([v9 unsignedCharValue] & 8) != 0)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v7, "bytes") + 27) >> 4}];
      [v10 setObject:v19 forKeyedSubscript:@"IPEOperatingMode"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 28)}];
      [v10 setObject:v20 forKeyedSubscript:@"IPEMaxTransfers"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v7, "bytes") + 29)}];
      [v10 setObject:v21 forKeyedSubscript:@"IPETimeLimit"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v7, "bytes") + 30)) >> 16}];
      [v10 setObject:v22 forKeyedSubscript:@"IPEValueRideJourney"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v7, "bytes") + 32)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

      v18 = 33;
    }

    else
    {
      v18 = 27;
    }

    if (([v9 unsignedCharValue] & 4) != 0)
    {
      v24 = [v7 u8:v18 + 1] + 2;
      v25 = [v7 subdataWithOffset:v18 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEOrigin1"];

      v18 += v24;
    }

    if (([v9 unsignedCharValue] & 2) != 0)
    {
      v26 = [v7 u8:v18 + 1] + 2;
      v27 = [v7 subdataWithOffset:v18 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEDest1"];

      v18 += v26;
    }

    if ([v9 unsignedCharValue])
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v7, "bytes") + v18)) >> 8}];
      [v10 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp23Ifr2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 5)}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v6, "bytes") + 7)) >> 19}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v6, "bytes") + 9) >> 3}];
  [v8 setObject:v11 forKeyedSubscript:@"IPEValidityCode"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v6, "bytes") + 9) & 0xFF07) >> 16}];
  [v8 setObject:v12 forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v6, "bytes") + 11) & 7}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 26)}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEPromoCode"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v6, "bytes") + 27)) >> 16}];
  [v8 setObject:v15 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

  if (([v7 unsignedCharValue] & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v6, "bytes") + 29) >> 4}];
    [v8 setObject:v17 forKeyedSubscript:@"IPEOperatingMode"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 30)}];
    [v8 setObject:v18 forKeyedSubscript:@"IPEMaxTransfers"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v6, "bytes") + 31)}];
    [v8 setObject:v19 forKeyedSubscript:@"IPETimeLimit"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v6, "bytes") + 32)) >> 16}];
    [v8 setObject:v20 forKeyedSubscript:@"IPEValueRideJourney"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v6, "bytes") + 34)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

    v22 = [v6 subdataWithOffset:35 length:5];
    [v8 setObject:v22 forKeyedSubscript:@"IPERouteCode"];

    v16 = 40;
  }

  else
  {
    v16 = 29;
  }

  if (([v7 unsignedCharValue] & 2) != 0)
  {
    v23 = [v6 u8:v16 + 1] + 2;
    v24 = [v6 subdataWithOffset:v16 length:v23];
    [v8 setObject:v24 forKeyedSubscript:@"IPEOrigin1"];

    v25 = v16 + v23;
    v26 = [v6 u8:(v25 + 1)] + 2;
    v27 = [v6 subdataWithOffset:v25 length:v26];
    [v8 setObject:v27 forKeyedSubscript:@"IPEDest1"];

    v16 = v25 + v26;
  }

  if ([v7 unsignedCharValue])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v6, "bytes") + v16)) >> 8}];
    [v8 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPEHeader:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[v4 bytes] >> 2;
  v7 = (bswap32(*[v4 bytes]) >> 20) & 0x3F;
  v8 = [v4 bytes];

  v9 = *(v8 + 1) & 0xF;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  [v5 setObject:v10 forKeyedSubscript:@"IPELength"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v5 setObject:v11 forKeyedSubscript:@"IPEBitmap"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  [v5 setObject:v12 forKeyedSubscript:@"IPEFormatRev"];

  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = v9;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected IFR value for IPE (%d)", v16, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)decodeVGHeader:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[v4 bytes] >> 2;
  v7 = (bswap32(*[v4 bytes]) >> 20) & 0x3F;
  v8 = [v4 bytes];

  v9 = *(v8 + 1) & 0xF;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
  [v5 setObject:v10 forKeyedSubscript:@"VGLength"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v5 setObject:v11 forKeyedSubscript:@"VGBitmap"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  [v5 setObject:v12 forKeyedSubscript:@"VGFormatRev"];

  if ((v9 - 11) <= 0xFFFFFFFD)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 67109120;
      LODWORD(v23) = v9;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected IFR value for VG (%d)", &v22, 8u);
    }
  }

  v14 = v7 & 0x3E;
  if (v14 <= 0x37)
  {
    if (v14 == 32)
    {
      v15 = 1;
      goto LABEL_19;
    }

    if (v14 == 48)
    {
      v15 = 2;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v14)
    {
      case '8':
        v15 = 3;
        goto LABEL_19;
      case '<':
        v15 = 4;
        goto LABEL_19;
      case '>':
        v15 = 5;
        goto LABEL_19;
    }
  }

  v16 = ATLLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v7 & 0x3E];
    v22 = 138412290;
    v23 = v17;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Unexpected number of records for the Value Group (%@)", &v22, 0xCu);
  }

  v15 = 0;
LABEL_19:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
  [v5 setObject:v18 forKeyedSubscript:@"VGNumValueRecords"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
  [v5 setObject:v19 forKeyedSubscript:@"VGExtendedFlag"];

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getLogDirectoryEntry:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:7];
  v6 = [v4 isAll00];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v5 setObject:v7 forKeyedSubscript:@"LogUninitialized"];

  v8 = *[v4 bytes];
  v9 = (*[v4 bytes] >> 2) & 0x1F;
  v10 = *[v4 bytes];
  v11 = bswap32(*([v4 bytes] + 1)) >> 8;
  v12 = *([v4 bytes] + 4) >> 6;
  v13 = [v4 bytes];

  LOBYTE(v13) = *(v13 + 4);
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v8 >> 7];
  [v5 setObject:v14 forKeyedSubscript:@"LogNormalModeFlag"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
  [v5 setObject:v15 forKeyedSubscript:@"LogIpePointer"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10 & 3];
  [v5 setObject:v16 forKeyedSubscript:@"LogEntryExitIndicator"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  [v5 setObject:v17 forKeyedSubscript:@"LogDateTimeStampRaw"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
  [v5 setObject:v18 forKeyedSubscript:@"LogRecordOffset"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13 & 0x3F];
  [v5 setObject:v19 forKeyedSubscript:@"LogPassbackTime"];

  v20 = [KramerMappings getAbsoluteDateComponents:v11];
  [v5 setObject:v20 forKeyedSubscript:@"LogDateTimeStamp"];

  return v5;
}

+ (id)decodeVGTyp2:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6
{
  v30 = a3;
  v7 = [a6 unsignedCharValue];
  v8 = v7;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (v7)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [v30 subdataWithOffset:v11 length:{15, v29}];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      [v13 setObject:v14 forKeyedSubscript:@"VGRecordOffset"];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v12, "bytes") >> 4}];
      [v13 setObject:v15 forKeyedSubscript:@"VGTrxType"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v12, "bytes") & 0xFF0F) >> 16}];
      [v13 setObject:v16 forKeyedSubscript:@"VGTrxSerialNum"];

      v17 = bswap32(*([v12 bytes] + 2));
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
      [v13 setObject:v18 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v12, "bytes") + 5))}];
      [v13 setObject:v19 forKeyedSubscript:@"VGISAMIDMod"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 9)}];
      [v13 setObject:v20 forKeyedSubscript:@"VGActionSeqNum"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v12, "bytes") + 10)) >> 16}];
      [v13 setObject:v21 forKeyedSubscript:@"VGValue"];

      v22 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 12) >> 4}];
      [v13 setObject:v22 forKeyedSubscript:@"VGCurrencyCode"];

      v23 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 12) & 0xF}];
      [v13 setObject:v23 forKeyedSubscript:@"VGCountJourneyLegs"];

      v24 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(v12, "bytes") + 13)) >> 19}];
      [v13 setObject:v24 forKeyedSubscript:@"VGCumulativeFare"];

      v25 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v12, "bytes") + 14) & 3}];
      [v13 setObject:v25 forKeyedSubscript:@"VGTYPFlags"];

      if (v17 >= 0x100)
      {
        v26 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
        if (v26)
        {
          [v13 setObject:v26 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      [v9 addObject:v13];

      ++v10;
      v11 += 15;
    }

    while (v8 != v10);
  }

  v27 = v29;
  [v29 setObject:v9 forKeyedSubscript:{@"ValueGroupRecords", v29}];

  return v27;
}

+ (id)decodeVGTyp22:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6
{
  v35 = a3;
  v7 = [a6 unsignedCharValue];
  v33 = v7;
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (v7)
  {
    v8 = 0;
    v9 = 2;
    do
    {
      v10 = [v35 subdataWithOffset:v9 length:{15, v32}];
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
      [v11 setObject:v12 forKeyedSubscript:@"VGRecordOffset"];

      v13 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v10, "bytes") >> 4}];
      [v11 setObject:v13 forKeyedSubscript:@"VGTrxType"];

      v14 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v10, "bytes") & 0xFF0F) >> 16}];
      [v11 setObject:v14 forKeyedSubscript:@"VGTrxSerialNum"];

      v15 = bswap32(*([v10 bytes] + 2));
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15 >> 8];
      [v11 setObject:v16 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v10, "bytes") + 5))}];
      [v11 setObject:v17 forKeyedSubscript:@"VGISAMIDMod"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v10, "bytes") + 9)}];
      [v11 setObject:v18 forKeyedSubscript:@"VGActionSeqNum"];

      v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v10, "bytes") + 10) >> 2}];
      [v11 setObject:v19 forKeyedSubscript:@"VGRemainingPasses"];

      v20 = [v10 bytes];
      v21 = [MEMORY[0x277CCABB0] numberWithShort:(bswap32(*(v20 + 10)) >> 20) & 0x3F];
      [v11 setObject:v21 forKeyedSubscript:@"VGTYPFlags"];

      v22 = (bswap32(*([v10 bytes] + 11)) >> 14) & 0x3FFF;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
      [v11 setObject:v23 forKeyedSubscript:@"VGExpiryStoredPassRaw"];

      v24 = *([v10 bytes] + 13) & 0xFF3F;
      v25 = bswap32(v24) >> 16;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v25];
      [v11 setObject:v26 forKeyedSubscript:@"VGExpiryCurrentRaw"];

      if (v15 >= 0x100)
      {
        v27 = [KramerMappings getAbsoluteDateComponents:v15 >> 8];
        if (v27)
        {
          [v11 setObject:v27 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      if (v22)
      {
        v28 = [KramerMappings getAbsoluteDateComponents:v22 withTime:0];
        if (v28)
        {
          [v11 setObject:v28 forKeyedSubscript:@"VGExpiryStoredPass"];
        }
      }

      if (v24)
      {
        v29 = [KramerMappings getAbsoluteDateComponents:v25 withTime:0];
        if (v29)
        {
          [v11 setObject:v29 forKeyedSubscript:@"VGExpiryCurrent"];
        }
      }

      [v34 addObject:v11];

      ++v8;
      v9 += 15;
    }

    while (v33 != v8);
  }

  v30 = v32;
  [v32 setObject:v34 forKeyedSubscript:{@"ValueGroupRecords", v32}];

  return v30;
}

+ (id)decodeVGTyp23:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withNumRecords:(id)a6
{
  v28 = a3;
  v7 = [a6 unsignedCharValue];
  v8 = v7;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (v7)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [v28 subdataWithOffset:v11 length:{15, v27}];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
      [v13 setObject:v14 forKeyedSubscript:@"VGRecordOffset"];

      v15 = [MEMORY[0x277CCABB0] numberWithInt:{*objc_msgSend(v12, "bytes") >> 4}];
      [v13 setObject:v15 forKeyedSubscript:@"VGTrxType"];

      v16 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*objc_msgSend(v12, "bytes") & 0xFF0F) >> 16}];
      [v13 setObject:v16 forKeyedSubscript:@"VGTrxSerialNum"];

      v17 = bswap32(*([v12 bytes] + 2));
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
      [v13 setObject:v18 forKeyedSubscript:@"VGDateTimeStampRaw"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(v12, "bytes") + 5))}];
      [v13 setObject:v19 forKeyedSubscript:@"VGISAMIDMod"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 9)}];
      [v13 setObject:v20 forKeyedSubscript:@"VGActionSeqNum"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 10)}];
      [v13 setObject:v21 forKeyedSubscript:@"VGRemainingRides"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 11)}];
      [v13 setObject:v22 forKeyedSubscript:@"VGTransfers"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(v12, "bytes") + 12)}];
      [v13 setObject:v23 forKeyedSubscript:@"VGTYPFlags"];

      if (v17 >= 0x100)
      {
        v24 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
        if (v24)
        {
          [v13 setObject:v24 forKeyedSubscript:@"VGDateTimeStamp"];
        }
      }

      [v9 addObject:v13];

      ++v10;
      v11 += 15;
    }

    while (v8 != v10);
  }

  v25 = v27;
  [v27 setObject:v9 forKeyedSubscript:{@"ValueGroupRecords", v27}];

  return v25;
}

+ (id)decodeTransientTicketIfr1:(id)a3 withIfr:(id)a4 withBitmap:(id)a5 withRecordOffset:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEB38];
  v11 = a6;
  v12 = [v10 dictionaryWithCapacity:7];
  v13 = [v11 unsignedShortValue];

  v14 = v13 + 7;
  if ([v9 unsignedShortValue])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v8, "bytes") + (v13 + 7)) >> 4}];
    [v12 setObject:v15 forKeyedSubscript:@"AmountCurrency"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(v8, "bytes") + v14 + 1)) >> 16}];
    [v12 setObject:v16 forKeyedSubscript:@"Amount"];

    v14 = v13 + 12;
  }

  if (([v9 unsignedShortValue] & 2) != 0)
  {
    v17 = [v8 subdataWithOffset:v14 length:7];
    [v12 setObject:v17 forKeyedSubscript:@"EndStation"];

    v14 += 7;
  }

  if (([v9 unsignedShortValue] & 4) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(v8, "bytes") + v14) & 0x1F}];
    [v12 setObject:v18 forKeyedSubscript:@"TTIpeId"];

    ++v14;
  }

  if (([v9 unsignedShortValue] & 8) != 0)
  {
    v19 = [v8 subdataWithOffset:v14 length:7];
    [v12 setObject:v19 forKeyedSubscript:@"StartStation"];

    v14 += 7;
  }

  if (([v9 unsignedShortValue] & 0x20) != 0)
  {
    v20 = [v8 subdataWithOffset:v14 length:7];
    v21 = [v20 asHexString];
    [v12 setObject:v21 forKeyedSubscript:@"TTRouteCode"];

    v14 += 7;
  }

  if (([v9 unsignedShortValue] & 0x80) != 0)
  {
    v22 = [v8 subdataWithOffset:v14 length:3];
    v23 = [v22 asHexString];
    [v12 setObject:v23 forKeyedSubscript:@"TTIin"];
  }

  return v12;
}

+ (id)deriveWalletData:(id)a3 withSector:(unsigned __int8)a4 withValueGroup:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v10 = [KramerVCReader getCommutePlanIdentifier:v7];
  [v9 setObject:v10 forKeyedSubscript:@"CommutePlanIdentifier"];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:(v6 + 1)];
  v12 = [KramerVCReader getCommutePlanUniqueId:v10 withSector:v11];

  [v9 setObject:v12 forKeyedSubscript:@"CommutePlanUniqueIdentifier"];
  v13 = [v7 objectForKeyedSubscript:@"IPEValidityStart"];

  if (v13)
  {
    v14 = [v7 objectForKeyedSubscript:@"IPEValidityStart"];
    [v9 setObject:v14 forKeyedSubscript:@"CommutePlanValidityStartDate"];
  }

  v15 = [KramerVCReader getBestExpiry:v7 withLatestValueGroup:v8];
  [v9 setObject:v15 forKeyedSubscript:@"CommutePlanValidityEndDate"];

  return v9;
}

+ (id)getLatestValueGroup:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"ValueGroupRecords"];
  v5 = [v3 objectForKeyedSubscript:@"IPEValueGroupFlag"];
  if (v5 && (v6 = v5, v7 = [v4 count], v6, v7))
  {
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"VGTrxSerialNum" ascending:0];
    v23[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v10 = [v4 sortedArrayUsingDescriptors:v9];

    v11 = [v10 firstObject];
    v12 = [v3 objectForKeyedSubscript:@"IPEType"];
    v13 = [v12 unsignedShortValue];

    if (v13 == 22)
    {
      v14 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];
      v15 = [v14 unsignedShortValue];

      if (v15)
      {
        v16 = [v11 objectForKeyedSubscript:@"VGTYPFlags"];
        v17 = [v16 unsignedShortValue];

        if ((v17 & 2) == 0)
        {
          v18 = ATLLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEFAULT, "Warning: TYP22 VG has remainingPasses, but StoredPasses flag is not set.", v22, 2u);
          }
        }
      }
    }

    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)getTopupCredits:(id)a3 withIpeId:(unsigned __int16)a4
{
  v49 = a4;
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ValueGroupRecords"];
  if ([v5 count] < 2)
  {
    v50 = 0;
    goto LABEL_23;
  }

  v47 = v4;
  v6 = [v4 objectForKeyedSubscript:@"VGNumValueRecords"];
  v7 = [v6 unsignedShortValue];

  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v45 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"VGTrxSerialNum" ascending:0];
  v51[0] = v45;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v46 = v5;
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  if ([v9 count] != 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v16 = @"VGRemainingRides";
    v48 = v9;
    while (1)
    {
      v17 = v16;
      v18 = v10;
      v19 = v11;
      v11 = [v9 objectAtIndexedSubscript:v13];

      v10 = [v9 objectAtIndexedSubscript:v13 + 1];

      v20 = [v11 objectForKeyedSubscript:@"VGTrxSerialNum"];
      LODWORD(v18) = [v20 unsignedShortValue];

      v21 = [v11 objectForKeyedSubscript:@"VGDateTimeStampRaw"];
      v22 = [v21 unsignedIntValue];
      v23 = v22;
      if (v18 >= 2)
      {
        if (!v22)
        {

          goto LABEL_20;
        }

        v24 = [v10 objectForKeyedSubscript:@"VGDateTimeStampRaw"];
        v23 = [v24 unsignedIntValue];
      }

      if (v23)
      {
        v25 = [v11 objectForKeyedSubscript:@"VGTrxType"];
        v26 = [v25 unsignedShortValue];

        if (v26 <= 5)
        {
          v16 = v17;
          if (((1 << v26) & 0x32) != 0)
          {
            v27 = [v11 mutableCopy];

            v28 = [v11 objectForKeyedSubscript:@"VGValue"];

            if (v28)
            {
              v29 = [v11 objectForKeyedSubscript:@"VGValue"];
              v30 = [v29 shortValue];
              v31 = [v10 objectForKeyedSubscript:@"VGValue"];
              v15 = v30 - [v31 shortValue];
              v16 = v17;
            }

            v32 = [v11 objectForKeyedSubscript:v16];

            if (v32)
            {
              v33 = [v11 objectForKeyedSubscript:v16];
              v34 = [v33 shortValue];
              v35 = [v10 objectForKeyedSubscript:v16];
              v15 = v34 - [v35 shortValue];

              v16 = v17;
            }

            v36 = v15;
            v37 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];

            if (v37)
            {
              v38 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];
              v39 = [v38 shortValue];
              v40 = [v10 objectForKeyedSubscript:@"VGRemainingPasses"];
              v36 = v39 - [v40 shortValue];

              v16 = v17;
            }

            v15 = v36;
            v41 = [MEMORY[0x277CCABB0] numberWithShort:v36];
            [v27 setObject:v41 forKeyedSubscript:@"VGTopupCredit"];

            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v49];
            [v27 setObject:v42 forKeyedSubscript:@"VGIpePointer"];

            [v50 addObject:v27];
            v12 = v27;
            v9 = v48;
          }

          goto LABEL_21;
        }
      }

LABEL_20:
      v16 = v17;
LABEL_21:
      v13 = ++v14;
      if ([v9 count] - 1 <= v14)
      {
        goto LABEL_22;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_22:

  v5 = v46;
  v4 = v47;
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];

  return v50;
}

+ (id)getBestExpiry:(id)a3 withLatestValueGroup:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"IPEType"];
  v8 = [v7 unsignedShortValue];

  v9 = [v5 objectForKeyedSubscript:@"IPEExpiryDate"];
  v10 = [v9 unsignedShortValue];

  if (v8 > 21)
  {
    if (v8 == 22)
    {
      v16 = [v5 objectForKeyedSubscript:@"IPEExpiryTime"];
      v14 = [v16 unsignedShortValue];

      if (v6)
      {
        v17 = [v6 objectForKeyedSubscript:@"VGExpiryCurrentRaw"];
        v18 = [v17 unsignedShortValue];

        if (v18)
        {
          v10 = v18;
        }

        else
        {
          v19 = [v6 objectForKeyedSubscript:@"VGExpiryStoredPassRaw"];
          v20 = [v19 unsignedShortValue];

          if (v20)
          {
            v10 = v20;
          }

          else
          {
            v10 = v10;
          }
        }
      }
    }

    else
    {
      if (v8 != 23)
      {
        goto LABEL_10;
      }

      v13 = [v5 objectForKeyedSubscript:@"IPEExpiryTime"];
      v14 = [v13 unsignedShortValue];
    }

    if (v14)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    if (v8 == 16)
    {
      v11 = [v5 objectForKeyedSubscript:@"IPEEntitlementExpiryRaw"];
      v12 = [v11 unsignedShortValue];

      if (v12)
      {
        v10 = v12;
      }

      else
      {
        v10 = v10;
      }

      goto LABEL_20;
    }

LABEL_10:
    v15 = ATLLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 67109120;
      v24[1] = v8;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Warning: IPE Typ %d is not supported! Default expiry date from Directory Entry is used.", v24, 8u);
    }
  }

LABEL_20:
  v14 = 1439;
LABEL_21:
  v21 = [KramerMappings getAbsoluteDateComponents:v10 withTime:v14];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)decodeDirectory:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:20];
  v6 = MEMORY[0x277CBEA90];
  v7 = [v4 bytes];

  v8 = [v6 dataWithBytes:v7 + 37 length:5];
  v9 = [KramerVCReader getLogDirectoryEntry:v8];
  [v5 setObject:v9 forKeyedSubscript:@"LogDirectory"];

  return v5;
}

@end