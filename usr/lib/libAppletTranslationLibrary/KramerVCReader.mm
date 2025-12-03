@interface KramerVCReader
+ (id)decodeDirectory:(id)directory;
+ (id)decodeIPEHeader:(id)header;
+ (id)decodeIPETyp16:(id)typ16 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp22Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp23Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeIPETyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap;
+ (id)decodeTransientTicketIfr1:(id)ifr1 withIfr:(id)ifr withBitmap:(id)bitmap withRecordOffset:(id)offset;
+ (id)decodeVGHeader:(id)header;
+ (id)decodeVGTyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)decodeVGTyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)decodeVGTyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records;
+ (id)deriveWalletData:(id)data withSector:(unsigned __int8)sector withValueGroup:(id)group;
+ (id)getBestExpiry:(id)expiry withLatestValueGroup:(id)group;
+ (id)getCommutePlanIdentifier:(id)identifier;
+ (id)getCommutePlanIdentifier:(id)identifier withTyp:(id)typ withPtyp:(id)ptyp withCpicc:(id)cpicc withPassDuration:(id)duration withPromotionCode:(id)code withConcessionaryClass:(id)class withEntitlementCode:(id)self0 withRouteCode:(id)self1 withValidAtOrFrom:(id)self2 withValidTo:(id)self3;
+ (id)getCommutePlanUniqueId:(id)id withSector:(id)sector;
+ (id)getIPELabelDetails:(id)details withError:(id *)error;
+ (id)getLatestValueGroup:(id)group;
+ (id)getLogDirectoryEntry:(id)entry;
+ (id)getTopupCredits:(id)credits withIpeId:(unsigned __int16)id;
+ (id)processSectorChain:(id)chain forIPE:(unsigned __int8)e;
+ (id)readCardFromVC:(id)c forCity:(id)city withError:(id *)error;
+ (id)readCyclicLogFromVC:(id)c forCity:(id)city withError:(id *)error;
+ (id)readIPEFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withDirectoryDetails:(id)details withError:(id *)error;
+ (id)readVGFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withError:(id *)error;
@end

@implementation KramerVCReader

+ (id)readCardFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  cityCopy = city;
  v70 = 0;
  v61 = cCopy;
  v9 = [MifareUtils getMcmDataDal:19215 withTransceiver:cCopy withError:&v70];
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
    if (error)
    {
      v16 = v10;
      v17 = 0;
      *error = v10;
      goto LABEL_35;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  if (*[v9 bytes] != 8448)
  {
    v10 = 0;
    if (error)
    {
      v17 = 0;
      *error = 0;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v58 = cityCopy;
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
        lastObject = [v27 lastObject];
        v29 = [lastObject unsignedIntValue] == 13;

        v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
        [v24 setObject:v30 forKeyedSubscript:@"IPEBlocked"];

        [v24 setObject:v27 forKeyedSubscript:@"IPESectorChain"];
      }

      ++v20;
      v64 = v26;
      unsignedCharValue = [v26 unsignedCharValue];
      v67 = v25;
      v32 = [KramerVCReader readIPEFromVC:v61 withStorageFile:v20 withTyp:unsignedCharValue withSectorChain:v27 withDirectoryDetails:v24 withError:&v67];
      v33 = v67;

      [v24 addEntriesFromDictionary:v32];
      v34 = [v24 objectForKeyedSubscript:@"IPEValueGroupFlag"];
      unsignedIntValue = [v34 unsignedIntValue];

      if (unsignedIntValue)
      {
        v36 = v27;
        v37 = [v24 objectForKeyedSubscript:@"OverflowFlag"];
        unsignedIntValue2 = [v37 unsignedIntValue];

        if (unsignedIntValue2 == 1)
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
          unsignedCharValue2 = [v41 unsignedCharValue];

          if (unsignedCharValue2 <= 0xC)
          {
            unsignedCharValue3 = [v64 unsignedCharValue];
            v66 = v33;
            v44 = [KramerVCReader readVGFromVC:v61 withStorageFile:unsignedCharValue2 withTyp:unsignedCharValue3 withSectorChain:v36 withError:&v66];
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

  cityCopy = v58;
LABEL_35:

  v55 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)readIPEFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withDirectoryDetails:(id)details withError:(id *)error
{
  typCopy = typ;
  fileCopy = file;
  v100[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  chainCopy = chain;
  detailsCopy = details;
  v86 = 0;
  v15 = [MifareUtils getMcmDataDal:fileCopy | 0x4B00u withTransceiver:cCopy withError:&v86];
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
    v18 = detailsCopy;
    v19 = chainCopy;
    v20 = cCopy;
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

    cCopy = v20;
    chainCopy = v19;
    detailsCopy = v18;
  }

  if (!v16)
  {
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v28 = [KramerVCReader decodeIPEHeader:v84];
    v81 = v27;
    [v27 addEntriesFromDictionary:v28];
    v82 = v28;
    v29 = [v28 objectForKeyedSubscript:@"IPELength"];
    unsignedShortValue = [v29 unsignedShortValue];

    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v82 objectForKeyedSubscript:@"IPELength"];
      unsignedShortValue2 = [v32 unsignedShortValue];
      *buf = 67109376;
      *v98 = unsignedShortValue2;
      *&v98[4] = 1024;
      *&v98[6] = 4 * unsignedShortValue;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEFAULT, "IPE Length %d blocks %d bytes", buf, 0xEu);
    }

    if (unsignedShortValue < 0x1D)
    {
      v37 = v81;
      v38 = v82;
      goto LABEL_27;
    }

    [v81 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
    if (![chainCopy count])
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

    firstObject = [chainCopy firstObject];
    unsignedShortValue3 = [firstObject unsignedShortValue];

    if (!unsignedShortValue3 || unsignedShortValue3 == 13 || unsignedShortValue3 == fileCopy)
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
    v74 = [MifareUtils getMcmDataDal:(unsignedShortValue3 + 19200) withTransceiver:cCopy withError:&v85];
    v16 = v85;
    if (![v84 length])
    {
      v38 = v82;
      if (v16)
      {
LABEL_74:
        if (v16)
        {
          if (error)
          {
            v79 = v16;
            *error = v16;
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
        unsignedShortValue4 = [v40 unsignedShortValue];

        if (typCopy > 21)
        {
          if (typCopy == 22)
          {
            if ((unsignedShortValue4 - 3) > 0xFFFFFFFD)
            {
              v16 = 0;
            }

            else
            {
              v48 = ATLLogObject();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v98 = unsignedShortValue4;
                _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 22", buf, 8u);
              }

              v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 22", unsignedShortValue4];
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

            v70 = [detailsCopy objectForKeyedSubscript:@"IPEValueGroupFlag"];
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

          if (typCopy != 23)
          {
            goto LABEL_38;
          }

          if ((unsignedShortValue4 - 3) > 0xFFFFFFFD)
          {
            v16 = 0;
          }

          else
          {
            v42 = ATLLogObject();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v98 = unsignedShortValue4;
              _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 23", buf, 8u);
            }

            v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 23", unsignedShortValue4];
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
          if (typCopy != 2)
          {
            if (typCopy == 16)
            {
              if (unsignedShortValue4 == 1)
              {
                v16 = 0;
              }

              else
              {
                v52 = ATLLogObject();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *v98 = unsignedShortValue4;
                  _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
                }

                v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", unsignedShortValue4];
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
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typCopy];
              *buf = 138412290;
              *v98 = v47;
              _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEFAULT, "Specific decoding not yet implemented for TYP %@", buf, 0xCu);
            }

            v16 = 0;
            goto LABEL_63;
          }

          if (unsignedShortValue4 == 1)
          {
            v16 = 0;
          }

          else
          {
            v62 = ATLLogObject();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v98 = unsignedShortValue4;
              _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_ERROR, "Unsupported IFR (%d) for IPE TYP 2", buf, 8u);
            }

            v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported IFR (%d) for IPE TYP 2", unsignedShortValue4];
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

  if (error)
  {
    v25 = v16;
    v26 = 0;
    *error = v16;
  }

  else
  {
    v26 = 0;
  }

LABEL_65:

  v72 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)readVGFromVC:(id)c withStorageFile:(unsigned __int8)file withTyp:(unsigned __int8)typ withSectorChain:(id)chain withError:(id *)error
{
  typCopy = typ;
  v82[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  chainCopy = chain;
  firstObject = [chainCopy firstObject];
  unsignedShortValue = [firstObject unsignedShortValue];

  v70 = 0;
  v13 = [MifareUtils getMcmDataDal:(unsignedShortValue + 19200) withTransceiver:cCopy withError:&v70];
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
    v17 = cCopy;
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

    cCopy = v17;
    v13 = v16;
  }

  if (!v14)
  {
    v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
    v66 = v13;
    v26 = [KramerVCReader decodeVGHeader:v13];
    [v25 addEntriesFromDictionary:v26];
    v27 = [v26 objectForKeyedSubscript:@"VGLength"];
    unsignedShortValue2 = [v27 unsignedShortValue];

    v29 = ATLLogObject();
    v67 = v26;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v26 objectForKeyedSubscript:@"IPELength"];
      unsignedShortValue3 = [v30 unsignedShortValue];
      *buf = 67109376;
      *v80 = unsignedShortValue3;
      *&v80[4] = 1024;
      *&v80[6] = 4 * unsignedShortValue2;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_DEFAULT, "VG Length %d blocks %d bytes", buf, 0xEu);

      v26 = v67;
    }

    v32 = [v26 objectForKeyedSubscript:@"VGFormatRev"];
    unsignedIntValue = [v32 unsignedIntValue];

    v22 = chainCopy;
    if (unsignedShortValue2 >= 0x1D)
    {
      [v25 setObject:&unk_2843C6338 forKeyedSubscript:@"OverflowFlag"];
      if ([chainCopy count] == 1)
      {
        v34 = ATLLogObject();
        v35 = typCopy;
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
            if ((unsignedIntValue - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v45 = ATLLogObject();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v80 = unsignedIntValue;
                _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 22", buf, 8u);
              }

              v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 22", unsignedIntValue];
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

            if ((unsignedIntValue - 11) > 0xFFFFFFFD)
            {
              v14 = 0;
            }

            else
            {
              v39 = ATLLogObject();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v80 = unsignedIntValue;
                _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 23", buf, 8u);
              }

              v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 23", unsignedIntValue];
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

          if (unsignedIntValue == 9)
          {
            v14 = 0;
          }

          else
          {
            v52 = ATLLogObject();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v80 = unsignedIntValue;
              _os_log_impl(&dword_22EEF5000, v52, OS_LOG_TYPE_ERROR, "Unsupported VG (%d) IFR for IPE TYP 2", buf, 8u);
            }

            v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported VG (%d) IFR for IPE TYP 2", unsignedIntValue];
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

      firstObject2 = [chainCopy firstObject];
      unsignedCharValue = [firstObject2 unsignedCharValue];

      if (!unsignedCharValue || unsignedCharValue == 13 || unsignedShortValue == unsignedCharValue)
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
        v59 = [MifareUtils getMcmDataDal:(unsignedShortValue + 19200) withTransceiver:cCopy withError:&v69];
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
          if (error)
          {
            v64 = v14;
            *error = v14;
          }

          v24 = 0;
          goto LABEL_57;
        }

        v65 = [v66 mutableCopy];
        [v65 appendData:v59];

        v66 = v65;
      }
    }

    v35 = typCopy;
    goto LABEL_27;
  }

  v22 = chainCopy;
  if (error)
  {
    v23 = v14;
    v24 = 0;
    *error = v14;
  }

  else
  {
    v24 = 0;
  }

LABEL_58:

  v57 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)readCyclicLogFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v6 = [MifareUtils getMcmDataDal:19214 withTransceiver:c withError:&v21];
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
    if (error)
    {
      v13 = v7;
      v14 = 0;
      *error = v7;
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

+ (id)getIPELabelDetails:(id)details withError:(id *)error
{
  detailsCopy = details;
  v5 = *[detailsCopy bytes];
  v6 = *([detailsCopy bytes] + 3);
  [detailsCopy bytes];
  v7 = bswap32(*[detailsCopy bytes]) >> 18;
  v8 = bswap32(*([detailsCopy bytes] + 1));
  v9 = *([detailsCopy bytes] + 2);
  bytes = [detailsCopy bytes];

  v11 = bswap32(*(bytes + 3) & 0xFF3F) >> 16;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v5 >> 7];
  [v12 setObject:v13 forKeyedSubscript:@"OIDExtensionFlag"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
  [v12 setObject:v14 forKeyedSubscript:@"OID"];

  0x1F = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(v8 >> 21) & 0x1F];
  [v12 setObject:0x1F forKeyedSubscript:@"IPEType"];

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

+ (id)getCommutePlanIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy objectForKeyedSubscript:@"OID"];
  v5 = [identifierCopy objectForKeyedSubscript:@"IPEType"];
  v6 = [identifierCopy objectForKeyedSubscript:@"IPESubType"];
  v15 = [identifierCopy objectForKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];
  v14 = [identifierCopy objectForKeyedSubscript:@"IPEPassDuration"];
  v7 = [identifierCopy objectForKeyedSubscript:@"IPEPromoCode"];
  v13 = [identifierCopy objectForKeyedSubscript:@"IPEConcessionaryClass"];
  v8 = [identifierCopy objectForKeyedSubscript:@"IPEEntitlementCode"];
  v9 = [identifierCopy objectForKeyedSubscript:@"IPERouteCode"];
  v10 = [identifierCopy objectForKeyedSubscript:@"IPEValidAtOrFrom"];
  v11 = [identifierCopy objectForKeyedSubscript:@"IPEValidTo"];

  v16 = [KramerVCReader getCommutePlanIdentifier:v4 withTyp:v5 withPtyp:v6 withCpicc:v15 withPassDuration:v14 withPromotionCode:v7 withConcessionaryClass:v13 withEntitlementCode:v8 withRouteCode:v9 withValidAtOrFrom:v10 withValidTo:v11];

  return v16;
}

+ (id)getCommutePlanIdentifier:(id)identifier withTyp:(id)typ withPtyp:(id)ptyp withCpicc:(id)cpicc withPassDuration:(id)duration withPromotionCode:(id)code withConcessionaryClass:(id)class withEntitlementCode:(id)self0 withRouteCode:(id)self1 withValidAtOrFrom:(id)self2 withValidTo:(id)self3
{
  cpiccCopy = cpicc;
  durationCopy = duration;
  codeCopy = code;
  classCopy = class;
  entitlementCodeCopy = entitlementCode;
  routeCodeCopy = routeCode;
  fromCopy = from;
  toCopy = to;
  v34 = MEMORY[0x277CCACA8];
  ptypCopy = ptyp;
  typCopy = typ;
  intValue = [identifier intValue];
  intValue2 = [typCopy intValue];

  intValue3 = [ptypCopy intValue];
  if (cpiccCopy)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(cpiccCopy, "intValue")];
  }

  else
  {
    v37 = &stru_2843B92D8;
  }

  if (durationCopy)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(durationCopy, "intValue")];
    if (codeCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v36 = &stru_2843B92D8;
    if (codeCopy)
    {
LABEL_6:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(codeCopy, "intValue")];
      if (classCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  v35 = &stru_2843B92D8;
  if (classCopy)
  {
LABEL_7:
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(classCopy, "intValue")];
    if (entitlementCodeCopy)
    {
      goto LABEL_8;
    }

LABEL_13:
    v25 = &stru_2843B92D8;
    if (routeCodeCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v24 = &stru_2843B92D8;
  if (!entitlementCodeCopy)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", objc_msgSend(entitlementCodeCopy, "intValue")];
  if (routeCodeCopy)
  {
LABEL_9:
    asHexString = [routeCodeCopy asHexString];
    goto LABEL_15;
  }

LABEL_14:
  asHexString = &stru_2843B92D8;
LABEL_15:
  if (fromCopy)
  {
    asHexString2 = [fromCopy asHexString];
  }

  else
  {
    asHexString2 = &stru_2843B92D8;
  }

  if (toCopy)
  {
    asHexString3 = [toCopy asHexString];
    v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", intValue, intValue2, intValue3, v37, v36, v35, v24, v25, asHexString, asHexString2, asHexString3];

    if (!fromCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v29 = [v34 stringWithFormat:@"%04X_%02X_%02X_%@_%@_%@_%@_%@_%@_%@_%@", intValue, intValue2, intValue3, v37, v36, v35, v24, v25, asHexString, asHexString2, &stru_2843B92D8];
  if (fromCopy)
  {
LABEL_20:
  }

LABEL_21:
  if (routeCodeCopy)
  {
  }

  if (entitlementCodeCopy)
  {
  }

  if (classCopy)
  {
  }

  if (codeCopy)
  {
  }

  if (durationCopy)
  {
  }

  if (cpiccCopy)
  {
  }

  return v29;
}

+ (id)getCommutePlanUniqueId:(id)id withSector:(id)sector
{
  sectorCopy = sector;
  idCopy = id;
  v7 = +[HashHelper hashHelper];
  v8 = [(HashHelper *)v7 addString:idCopy];

  v9 = [(HashHelper *)v8 addNumber:sectorCopy];

  getHash = [(HashHelper *)v9 getHash];

  asHexString = [getHash asHexString];

  return asHexString;
}

+ (id)processSectorChain:(id)chain forIPE:(unsigned __int8)e
{
  eCopy = e;
  chainCopy = chain;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  if (eCopy <= 0xC)
  {
    LOBYTE(v7) = eCopy;
    do
    {
      v8 = *([chainCopy bytes] + (eCopy >> 1) + 42);
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

      if (eCopy + 1 == v11)
      {
        v7 = 13;
      }

      else
      {
        v7 = v11 - 1;
      }

      eCopy = v7;
    }

    while (v7 < 0xDu);
  }

  return v6;
}

+ (id)decodeIPETyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ2Copy = typ2;
  v7 = MEMORY[0x277CBEB38];
  bitmapCopy = bitmap;
  v9 = [v7 dictionaryWithCapacity:2];
  bytes = [typ2Copy bytes];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 5)];
  [v9 setObject:v11 forKeyedSubscript:@"IPEFlags"];

  LOBYTE(v11) = [bitmapCopy unsignedCharValue];
  if (v11)
  {
    bytes2 = [typ2Copy bytes];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes2 + 22)) >> 8];
    [v9 setObject:v13 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v9;
}

+ (id)decodeIPETyp16:(id)typ16 withIfr:(id)ifr withBitmap:(id)bitmap
{
  v43 = *MEMORY[0x277D85DE8];
  typ16Copy = typ16;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  v9 = *([typ16Copy bytes] + 2);
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

  v11 = bswap32(*([typ16Copy bytes] + 3)) >> 16;
  v12 = bswap32(*([typ16Copy bytes] + 16) & 0xFF3F) >> 16;
  v13 = *([typ16Copy bytes] + 27);
  v14 = *([typ16Copy bytes] + 28);
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

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v21 = [typ16Copy subdataWithOffset:29 length:4];
    asHexString = [v21 asHexString];
    [v8 setObject:asHexString forKeyedSubscript:@"TmpSecondaryID"];

    v20 = 33;
  }

  else
  {
    v20 = 29;
  }

  if (([bitmapCopy unsignedCharValue] & 4) != 0)
  {
    v23 = [typ16Copy u8:v20];
    v24 = v23;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
    [v8 setObject:v25 forKeyedSubscript:@"TmpForenameLength"];

    LODWORD(v25) = v20 + 1;
    v26 = [typ16Copy subdataWithOffset:v20 + 1 length:v24];
    [v8 setObject:v26 forKeyedSubscript:@"TmpForename"];

    v27 = v25 + v24;
    v28 = [typ16Copy u8:v27];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v28];
    [v8 setObject:v29 forKeyedSubscript:@"TmpSurnameLength"];

    v30 = (v27 + 1);
    v31 = [typ16Copy subdataWithOffset:v30 length:v28];
    [v8 setObject:v31 forKeyedSubscript:@"TmpSurname"];

    v20 = v30 + v28;
  }

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    bytes = [typ16Copy bytes];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + v20)) >> 16];
    [v8 setObject:v33 forKeyedSubscript:@"IPEHalfDayOfWeek"];

    v34 = v20 + 2;
    v35 = [typ16Copy u8:v20 + 3] + 2;
    v36 = [typ16Copy subdataWithOffset:v34 length:v35];
    [v8 setObject:v36 forKeyedSubscript:@"IPEValidAtOrFrom"];
    v20 = v34 + v35;
  }

  if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
  {
    v37 = [typ16Copy u8:v20 + 1] + 2;
    v38 = [typ16Copy subdataWithOffset:v20 length:v37];
    [v8 setObject:v38 forKeyedSubscript:@"IPEValidTo"];
    v20 += v37;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v39 = [typ16Copy subdataWithOffset:v20 length:3];
    [v8 setObject:v39 forKeyedSubscript:@"IPELevelIIN"];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)decodeIPETyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ22Copy = typ22;
  ifrCopy = ifr;
  bitmapCopy = bitmap;
  if ([ifrCopy unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp22Ifr2:typ22Copy withIfr:ifrCopy withBitmap:bitmapCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:13];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 5)) >> 16}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 8)) >> 18}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    bytes = [typ22Copy bytes];
    0x7FF = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(bytes + 9)) >> 15) & 0x7FF];
    [v10 setObject:0x7FF forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ22Copy, "bytes") + 12) >> 5}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ22Copy, "bytes") + 12) & 0x1F}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEValidityCode"];

    v17 = bswap32(*([typ22Copy bytes] + 13));
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 >> 8];
    [v10 setObject:v18 forKeyedSubscript:@"IPEValidityStartRaw"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + 16)}];
    [v10 setObject:v19 forKeyedSubscript:@"IPEPromoCode"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + 17)}];
    [v10 setObject:v20 forKeyedSubscript:@"IPEValidOnDayCode"];

    if (v17 >= 0x100)
    {
      v21 = [KramerMappings getAbsoluteDateComponents:v17 >> 8];
      [v10 setObject:v21 forKeyedSubscript:@"IPEValidityStart"];
    }

    if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + 26)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

      v22 = 28;
    }

    else
    {
      v22 = 26;
    }

    if (([bitmapCopy unsignedCharValue] & 2) != 0)
    {
      v24 = [typ22Copy u8:v22 | 1] + 2;
      v25 = [typ22Copy subdataWithOffset:v22 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

      v22 += v24;
    }

    if (([bitmapCopy unsignedCharValue] & 4) != 0)
    {
      v26 = [typ22Copy u8:v22 + 1] + 2;
      v27 = [typ22Copy subdataWithOffset:v22 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEValidTo"];

      v22 += v26;
    }

    if (([bitmapCopy unsignedCharValue] & 8) != 0)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ22Copy, "bytes") + v22)}];
      [v10 setObject:v28 forKeyedSubscript:@"IPEPassDuration"];

      ++v22;
    }

    if ([bitmapCopy unsignedCharValue])
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(typ22Copy, "bytes") + v22)) >> 8}];
      [v10 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp22Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  ifr2Copy = ifr2;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 5)) >> 16}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 8)) >> 18}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  bytes = [ifr2Copy bytes];
  0x7FF = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(bswap32(*(bytes + 9)) >> 15) & 0x7FF];
  [v8 setObject:0x7FF forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 12) >> 5}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 12) & 0x1F}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEValidityCode"];

  v15 = bswap32(*([ifr2Copy bytes] + 13));
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15 >> 8];
  [v8 setObject:v16 forKeyedSubscript:@"IPEValidityStartRaw"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 16)}];
  [v8 setObject:v17 forKeyedSubscript:@"IPEPromoCode"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 17)}];
  [v8 setObject:v18 forKeyedSubscript:@"IPEValidOnDayCode"];

  if (v15 >= 0x100)
  {
    v19 = [KramerMappings getAbsoluteDateComponents:v15 >> 8];
    [v8 setObject:v19 forKeyedSubscript:@"IPEValidityStart"];
  }

  if (([bitmapCopy unsignedCharValue] & 0x10) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 28)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    v20 = 30;
  }

  else
  {
    v20 = 28;
  }

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + v20)}];
    [v8 setObject:v22 forKeyedSubscript:@"IPEPassDuration"];

    v20 |= 1u;
  }

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v23 = [ifr2Copy subdataWithOffset:v20 length:5];
    [v8 setObject:v23 forKeyedSubscript:@"IPERouteCode"];

    LODWORD(v23) = v20 + 5;
    v24 = [ifr2Copy u8:v20 + 6] + 2;
    v25 = [ifr2Copy subdataWithOffset:v20 + 5 length:v24];
    [v8 setObject:v25 forKeyedSubscript:@"IPEValidAtOrFrom"];

    v26 = v23 + v24;
    v27 = [ifr2Copy u8:v26 + 1] + 2;
    v28 = [ifr2Copy subdataWithOffset:v26 length:v27];
    [v8 setObject:v28 forKeyedSubscript:@"IPEValidTo"];

    v20 = v26 + v27;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + v20)) >> 8}];
    [v8 setObject:v29 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPETyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap
{
  typ23Copy = typ23;
  ifrCopy = ifr;
  bitmapCopy = bitmap;
  if ([ifrCopy unsignedIntValue] == 2)
  {
    v10 = [KramerVCReader decodeIPETyp23Ifr2:typ23Copy withIfr:ifrCopy withBitmap:bitmapCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 5)}];
    [v10 setObject:v11 forKeyedSubscript:@"IPEFlags"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 7)) >> 19}];
    [v10 setObject:v12 forKeyedSubscript:@"IPEIssuedDate"];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 9) >> 3}];
    [v10 setObject:v13 forKeyedSubscript:@"IPEValidityCode"];

    v14 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 9) & 0xFF07) >> 16}];
    [v10 setObject:v14 forKeyedSubscript:@"IPEExpiryTime"];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 11) & 7}];
    [v10 setObject:v15 forKeyedSubscript:@"IPEClassCode"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 24)}];
    [v10 setObject:v16 forKeyedSubscript:@"IPEPromoCode"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 25)) >> 16}];
    [v10 setObject:v17 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

    if (([bitmapCopy unsignedCharValue] & 8) != 0)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(typ23Copy, "bytes") + 27) >> 4}];
      [v10 setObject:v19 forKeyedSubscript:@"IPEOperatingMode"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 28)}];
      [v10 setObject:v20 forKeyedSubscript:@"IPEMaxTransfers"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(typ23Copy, "bytes") + 29)}];
      [v10 setObject:v21 forKeyedSubscript:@"IPETimeLimit"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 30)) >> 16}];
      [v10 setObject:v22 forKeyedSubscript:@"IPEValueRideJourney"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + 32)) >> 16}];
      [v10 setObject:v23 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

      v18 = 33;
    }

    else
    {
      v18 = 27;
    }

    if (([bitmapCopy unsignedCharValue] & 4) != 0)
    {
      v24 = [typ23Copy u8:v18 + 1] + 2;
      v25 = [typ23Copy subdataWithOffset:v18 length:v24];
      [v10 setObject:v25 forKeyedSubscript:@"IPEOrigin1"];

      v18 += v24;
    }

    if (([bitmapCopy unsignedCharValue] & 2) != 0)
    {
      v26 = [typ23Copy u8:v18 + 1] + 2;
      v27 = [typ23Copy subdataWithOffset:v18 length:v26];
      [v10 setObject:v27 forKeyedSubscript:@"IPEDest1"];

      v18 += v26;
    }

    if ([bitmapCopy unsignedCharValue])
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(typ23Copy, "bytes") + v18)) >> 8}];
      [v10 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
    }
  }

  return v10;
}

+ (id)decodeIPETyp23Ifr2:(id)ifr2 withIfr:(id)ifr withBitmap:(id)bitmap
{
  ifr2Copy = ifr2;
  bitmapCopy = bitmap;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 5)}];
  [v8 setObject:v9 forKeyedSubscript:@"IPEFlags"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 7)) >> 19}];
  [v8 setObject:v10 forKeyedSubscript:@"IPEIssuedDate"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 9) >> 3}];
  [v8 setObject:v11 forKeyedSubscript:@"IPEValidityCode"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 9) & 0xFF07) >> 16}];
  [v8 setObject:v12 forKeyedSubscript:@"IPEExpiryTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 11) & 7}];
  [v8 setObject:v13 forKeyedSubscript:@"IPEClassCode"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 26)}];
  [v8 setObject:v14 forKeyedSubscript:@"IPEPromoCode"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 27)) >> 16}];
  [v8 setObject:v15 forKeyedSubscript:@"IPEConcessionaryPassIssuerCostCentre"];

  if (([bitmapCopy unsignedCharValue] & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr2Copy, "bytes") + 29) >> 4}];
    [v8 setObject:v17 forKeyedSubscript:@"IPEOperatingMode"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 30)}];
    [v8 setObject:v18 forKeyedSubscript:@"IPEMaxTransfers"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*(objc_msgSend(ifr2Copy, "bytes") + 31)}];
    [v8 setObject:v19 forKeyedSubscript:@"IPETimeLimit"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 32)) >> 16}];
    [v8 setObject:v20 forKeyedSubscript:@"IPEValueRideJourney"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + 34)) >> 16}];
    [v8 setObject:v21 forKeyedSubscript:@"IPEValueRideJourneyCurrCode"];

    v22 = [ifr2Copy subdataWithOffset:35 length:5];
    [v8 setObject:v22 forKeyedSubscript:@"IPERouteCode"];

    v16 = 40;
  }

  else
  {
    v16 = 29;
  }

  if (([bitmapCopy unsignedCharValue] & 2) != 0)
  {
    v23 = [ifr2Copy u8:v16 + 1] + 2;
    v24 = [ifr2Copy subdataWithOffset:v16 length:v23];
    [v8 setObject:v24 forKeyedSubscript:@"IPEOrigin1"];

    v25 = v16 + v23;
    v26 = [ifr2Copy u8:(v25 + 1)] + 2;
    v27 = [ifr2Copy subdataWithOffset:v25 length:v26];
    [v8 setObject:v27 forKeyedSubscript:@"IPEDest1"];

    v16 = v25 + v26;
  }

  if ([bitmapCopy unsignedCharValue])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bswap32(*(objc_msgSend(ifr2Copy, "bytes") + v16)) >> 8}];
    [v8 setObject:v28 forKeyedSubscript:@"IPELevelIIN"];
  }

  return v8;
}

+ (id)decodeIPEHeader:(id)header
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  headerCopy = header;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[headerCopy bytes] >> 2;
  v7 = (bswap32(*[headerCopy bytes]) >> 20) & 0x3F;
  bytes = [headerCopy bytes];

  v9 = *(bytes + 1) & 0xF;
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

+ (id)decodeVGHeader:(id)header
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  headerCopy = header;
  v5 = [v3 dictionaryWithCapacity:3];
  v6 = *[headerCopy bytes] >> 2;
  v7 = (bswap32(*[headerCopy bytes]) >> 20) & 0x3F;
  bytes = [headerCopy bytes];

  v9 = *(bytes + 1) & 0xF;
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
    0x3E = [MEMORY[0x277CCABB0] numberWithInt:v7 & 0x3E];
    v22 = 138412290;
    v23 = 0x3E;
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

+ (id)getLogDirectoryEntry:(id)entry
{
  v3 = MEMORY[0x277CBEB38];
  entryCopy = entry;
  v5 = [v3 dictionaryWithCapacity:7];
  isAll00 = [entryCopy isAll00];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:isAll00];
  [v5 setObject:v7 forKeyedSubscript:@"LogUninitialized"];

  v8 = *[entryCopy bytes];
  v9 = (*[entryCopy bytes] >> 2) & 0x1F;
  v10 = *[entryCopy bytes];
  v11 = bswap32(*([entryCopy bytes] + 1)) >> 8;
  v12 = *([entryCopy bytes] + 4) >> 6;
  bytes = [entryCopy bytes];

  LOBYTE(bytes) = *(bytes + 4);
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

  0x3F = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes & 0x3F];
  [v5 setObject:0x3F forKeyedSubscript:@"LogPassbackTime"];

  v20 = [KramerMappings getAbsoluteDateComponents:v11];
  [v5 setObject:v20 forKeyedSubscript:@"LogDateTimeStamp"];

  return v5;
}

+ (id)decodeVGTyp2:(id)typ2 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ2Copy = typ2;
  unsignedCharValue = [records unsignedCharValue];
  v8 = unsignedCharValue;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedCharValue];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [typ2Copy subdataWithOffset:v11 length:{15, v29}];
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

+ (id)decodeVGTyp22:(id)typ22 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ22Copy = typ22;
  unsignedCharValue = [records unsignedCharValue];
  v33 = unsignedCharValue;
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v8 = 0;
    v9 = 2;
    do
    {
      v10 = [typ22Copy subdataWithOffset:v9 length:{15, v32}];
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

      bytes = [v10 bytes];
      0x3F = [MEMORY[0x277CCABB0] numberWithShort:(bswap32(*(bytes + 10)) >> 20) & 0x3F];
      [v11 setObject:0x3F forKeyedSubscript:@"VGTYPFlags"];

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

+ (id)decodeVGTyp23:(id)typ23 withIfr:(id)ifr withBitmap:(id)bitmap withNumRecords:(id)records
{
  typ23Copy = typ23;
  unsignedCharValue = [records unsignedCharValue];
  v8 = unsignedCharValue;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedCharValue];
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (unsignedCharValue)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v12 = [typ23Copy subdataWithOffset:v11 length:{15, v27}];
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

+ (id)decodeTransientTicketIfr1:(id)ifr1 withIfr:(id)ifr withBitmap:(id)bitmap withRecordOffset:(id)offset
{
  ifr1Copy = ifr1;
  bitmapCopy = bitmap;
  v10 = MEMORY[0x277CBEB38];
  offsetCopy = offset;
  v12 = [v10 dictionaryWithCapacity:7];
  unsignedShortValue = [offsetCopy unsignedShortValue];

  v14 = unsignedShortValue + 7;
  if ([bitmapCopy unsignedShortValue])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr1Copy, "bytes") + (unsignedShortValue + 7)) >> 4}];
    [v12 setObject:v15 forKeyedSubscript:@"AmountCurrency"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{bswap32(*(objc_msgSend(ifr1Copy, "bytes") + v14 + 1)) >> 16}];
    [v12 setObject:v16 forKeyedSubscript:@"Amount"];

    v14 = unsignedShortValue + 12;
  }

  if (([bitmapCopy unsignedShortValue] & 2) != 0)
  {
    v17 = [ifr1Copy subdataWithOffset:v14 length:7];
    [v12 setObject:v17 forKeyedSubscript:@"EndStation"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 4) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{*(objc_msgSend(ifr1Copy, "bytes") + v14) & 0x1F}];
    [v12 setObject:v18 forKeyedSubscript:@"TTIpeId"];

    ++v14;
  }

  if (([bitmapCopy unsignedShortValue] & 8) != 0)
  {
    v19 = [ifr1Copy subdataWithOffset:v14 length:7];
    [v12 setObject:v19 forKeyedSubscript:@"StartStation"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 0x20) != 0)
  {
    v20 = [ifr1Copy subdataWithOffset:v14 length:7];
    asHexString = [v20 asHexString];
    [v12 setObject:asHexString forKeyedSubscript:@"TTRouteCode"];

    v14 += 7;
  }

  if (([bitmapCopy unsignedShortValue] & 0x80) != 0)
  {
    v22 = [ifr1Copy subdataWithOffset:v14 length:3];
    asHexString2 = [v22 asHexString];
    [v12 setObject:asHexString2 forKeyedSubscript:@"TTIin"];
  }

  return v12;
}

+ (id)deriveWalletData:(id)data withSector:(unsigned __int8)sector withValueGroup:(id)group
{
  sectorCopy = sector;
  dataCopy = data;
  groupCopy = group;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v10 = [KramerVCReader getCommutePlanIdentifier:dataCopy];
  [v9 setObject:v10 forKeyedSubscript:@"CommutePlanIdentifier"];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:(sectorCopy + 1)];
  v12 = [KramerVCReader getCommutePlanUniqueId:v10 withSector:v11];

  [v9 setObject:v12 forKeyedSubscript:@"CommutePlanUniqueIdentifier"];
  v13 = [dataCopy objectForKeyedSubscript:@"IPEValidityStart"];

  if (v13)
  {
    v14 = [dataCopy objectForKeyedSubscript:@"IPEValidityStart"];
    [v9 setObject:v14 forKeyedSubscript:@"CommutePlanValidityStartDate"];
  }

  v15 = [KramerVCReader getBestExpiry:dataCopy withLatestValueGroup:groupCopy];
  [v9 setObject:v15 forKeyedSubscript:@"CommutePlanValidityEndDate"];

  return v9;
}

+ (id)getLatestValueGroup:(id)group
{
  v23[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v4 = [groupCopy objectForKeyedSubscript:@"ValueGroupRecords"];
  v5 = [groupCopy objectForKeyedSubscript:@"IPEValueGroupFlag"];
  if (v5 && (v6 = v5, v7 = [v4 count], v6, v7))
  {
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"VGTrxSerialNum" ascending:0];
    v23[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v10 = [v4 sortedArrayUsingDescriptors:v9];

    firstObject = [v10 firstObject];
    v12 = [groupCopy objectForKeyedSubscript:@"IPEType"];
    unsignedShortValue = [v12 unsignedShortValue];

    if (unsignedShortValue == 22)
    {
      v14 = [firstObject objectForKeyedSubscript:@"VGRemainingPasses"];
      unsignedShortValue2 = [v14 unsignedShortValue];

      if (unsignedShortValue2)
      {
        v16 = [firstObject objectForKeyedSubscript:@"VGTYPFlags"];
        unsignedShortValue3 = [v16 unsignedShortValue];

        if ((unsignedShortValue3 & 2) == 0)
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

    v19 = firstObject;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)getTopupCredits:(id)credits withIpeId:(unsigned __int16)id
{
  idCopy = id;
  v51[1] = *MEMORY[0x277D85DE8];
  creditsCopy = credits;
  v5 = [creditsCopy objectForKeyedSubscript:@"ValueGroupRecords"];
  if ([v5 count] < 2)
  {
    v50 = 0;
    goto LABEL_23;
  }

  v47 = creditsCopy;
  v6 = [creditsCopy objectForKeyedSubscript:@"VGNumValueRecords"];
  unsignedShortValue = [v6 unsignedShortValue];

  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedShortValue];
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
      unsignedIntValue = [v21 unsignedIntValue];
      unsignedIntValue2 = unsignedIntValue;
      if (v18 >= 2)
      {
        if (!unsignedIntValue)
        {

          goto LABEL_20;
        }

        v24 = [v10 objectForKeyedSubscript:@"VGDateTimeStampRaw"];
        unsignedIntValue2 = [v24 unsignedIntValue];
      }

      if (unsignedIntValue2)
      {
        v25 = [v11 objectForKeyedSubscript:@"VGTrxType"];
        unsignedShortValue2 = [v25 unsignedShortValue];

        if (unsignedShortValue2 <= 5)
        {
          v16 = v17;
          if (((1 << unsignedShortValue2) & 0x32) != 0)
          {
            v27 = [v11 mutableCopy];

            v28 = [v11 objectForKeyedSubscript:@"VGValue"];

            if (v28)
            {
              v29 = [v11 objectForKeyedSubscript:@"VGValue"];
              shortValue = [v29 shortValue];
              v31 = [v10 objectForKeyedSubscript:@"VGValue"];
              v15 = shortValue - [v31 shortValue];
              v16 = v17;
            }

            v32 = [v11 objectForKeyedSubscript:v16];

            if (v32)
            {
              v33 = [v11 objectForKeyedSubscript:v16];
              shortValue2 = [v33 shortValue];
              v35 = [v10 objectForKeyedSubscript:v16];
              v15 = shortValue2 - [v35 shortValue];

              v16 = v17;
            }

            v36 = v15;
            v37 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];

            if (v37)
            {
              v38 = [v11 objectForKeyedSubscript:@"VGRemainingPasses"];
              shortValue3 = [v38 shortValue];
              v40 = [v10 objectForKeyedSubscript:@"VGRemainingPasses"];
              v36 = shortValue3 - [v40 shortValue];

              v16 = v17;
            }

            v15 = v36;
            v41 = [MEMORY[0x277CCABB0] numberWithShort:v36];
            [v27 setObject:v41 forKeyedSubscript:@"VGTopupCredit"];

            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:idCopy];
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
  creditsCopy = v47;
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];

  return v50;
}

+ (id)getBestExpiry:(id)expiry withLatestValueGroup:(id)group
{
  v25 = *MEMORY[0x277D85DE8];
  expiryCopy = expiry;
  groupCopy = group;
  v7 = [expiryCopy objectForKeyedSubscript:@"IPEType"];
  unsignedShortValue = [v7 unsignedShortValue];

  v9 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryDate"];
  unsignedShortValue2 = [v9 unsignedShortValue];

  if (unsignedShortValue > 21)
  {
    if (unsignedShortValue == 22)
    {
      v16 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryTime"];
      unsignedShortValue3 = [v16 unsignedShortValue];

      if (groupCopy)
      {
        v17 = [groupCopy objectForKeyedSubscript:@"VGExpiryCurrentRaw"];
        unsignedShortValue4 = [v17 unsignedShortValue];

        if (unsignedShortValue4)
        {
          unsignedShortValue2 = unsignedShortValue4;
        }

        else
        {
          v19 = [groupCopy objectForKeyedSubscript:@"VGExpiryStoredPassRaw"];
          unsignedShortValue5 = [v19 unsignedShortValue];

          if (unsignedShortValue5)
          {
            unsignedShortValue2 = unsignedShortValue5;
          }

          else
          {
            unsignedShortValue2 = unsignedShortValue2;
          }
        }
      }
    }

    else
    {
      if (unsignedShortValue != 23)
      {
        goto LABEL_10;
      }

      v13 = [expiryCopy objectForKeyedSubscript:@"IPEExpiryTime"];
      unsignedShortValue3 = [v13 unsignedShortValue];
    }

    if (unsignedShortValue3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (unsignedShortValue != 2)
  {
    if (unsignedShortValue == 16)
    {
      v11 = [expiryCopy objectForKeyedSubscript:@"IPEEntitlementExpiryRaw"];
      unsignedShortValue6 = [v11 unsignedShortValue];

      if (unsignedShortValue6)
      {
        unsignedShortValue2 = unsignedShortValue6;
      }

      else
      {
        unsignedShortValue2 = unsignedShortValue2;
      }

      goto LABEL_20;
    }

LABEL_10:
    v15 = ATLLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 67109120;
      v24[1] = unsignedShortValue;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Warning: IPE Typ %d is not supported! Default expiry date from Directory Entry is used.", v24, 8u);
    }
  }

LABEL_20:
  unsignedShortValue3 = 1439;
LABEL_21:
  v21 = [KramerMappings getAbsoluteDateComponents:unsignedShortValue2 withTime:unsignedShortValue3];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)decodeDirectory:(id)directory
{
  v3 = MEMORY[0x277CBEB38];
  directoryCopy = directory;
  v5 = [v3 dictionaryWithCapacity:20];
  v6 = MEMORY[0x277CBEA90];
  bytes = [directoryCopy bytes];

  v8 = [v6 dataWithBytes:bytes + 37 length:5];
  v9 = [KramerVCReader getLogDirectoryEntry:v8];
  [v5 setObject:v9 forKeyedSubscript:@"LogDirectory"];

  return v5;
}

@end