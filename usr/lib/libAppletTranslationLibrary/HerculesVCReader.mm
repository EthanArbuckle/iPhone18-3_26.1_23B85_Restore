@interface HerculesVCReader
+ (id)getCurrentTransitSummary:(id)summary withError:(id *)error;
+ (id)readBalancesFromVC:(id)c forCity:(id)city withError:(id *)error;
@end

@implementation HerculesVCReader

+ (id)readBalancesFromVC:(id)c forCity:(id)city withError:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  cCopy = c;
  cityCopy = city;
  v70 = 0;
  v9 = [MifareUtils getMcmDataDal:21071 withTransceiver:cCopy withError:&v70];
  v10 = v70;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
      goto LABEL_53;
    }

    goto LABEL_20;
  }

  if ([v9 length] != 352)
  {
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 length];
      *buf = 134217984;
      v84 = v18;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Unexpected RTA Data length %lu", buf, 0xCu);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected RTA Data length %lu", objc_msgSend(v9, "length")];
    v20 = v19;
    if (error)
    {
      v21 = *error;
      v22 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v23 = *MEMORY[0x277CCA7E8];
        v79[0] = *MEMORY[0x277CCA450];
        v79[1] = v23;
        v80[0] = v19;
        v80[1] = v21;
        v24 = MEMORY[0x277CBEAC0];
        v25 = v80;
        v26 = v79;
        v27 = 2;
      }

      else
      {
        v81 = *MEMORY[0x277CCA450];
        v82 = v19;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v82;
        v26 = &v81;
        v27 = 1;
      }

      v31 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
      *error = [v22 errorWithDomain:@"ATL" code:3 userInfo:v31];
    }

    v11 = 0;
LABEL_20:
    v13 = 0;
    goto LABEL_53;
  }

  v69 = 0;
  v14 = [MifareUtils getMcmDataDal:21327 withTransceiver:cCopy withError:&v69];
  v15 = v69;
  if (v15)
  {
    v11 = v15;
    if (error)
    {
      v16 = v15;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v68 = 0;
    v28 = [HerculesVCReader getCurrentTransitSummary:v14 withError:&v68];
    v29 = v68;
    if (v29)
    {
      v11 = v29;
      if (error)
      {
        v30 = v29;
        v13 = 0;
        *error = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v66 = v28;
      v32 = *([v28 bytes] + 15) & 3;
      if (v32 == 1)
      {
        v33 = [MEMORY[0x277CBEA90] dataWithReversedBytes:objc_msgSend(v9 length:{"bytes"), 16}];
        v34 = *([v33 bytes] + 15) & 3;
        v64 = v33;
        if (v34 == 1)
        {
          v35 = [v33 u8:7];
          v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
          v36 = 0;
          while (1)
          {
            v67 = 0;
            v37 = [HerculesVCReader getBalanceForPass:v36 withRiderClass:v35 withTransitSummary:v66 withRTAData:v9 forCity:cityCopy withError:&v67];
            v38 = v67;
            v11 = v38;
            if (v38)
            {
              break;
            }

            if (v37)
            {
              [v65 addObject:v37];
            }

            if (++v36 == 6)
            {
              v13 = v65;
              v65 = v13;
              goto LABEL_50;
            }
          }

          if (error)
          {
            v59 = v38;
            *error = v11;
          }
        }

        else
        {
          v50 = ATLLogObject();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v84) = v34;
            _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Unexpected Issue Object data format %hhu", buf, 8u);
          }

          v65 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Issue Object data format %hhu", v34, v64];
          if (error)
          {
            v51 = *error;
            v52 = MEMORY[0x277CCA9B8];
            v53 = *MEMORY[0x277CCA450];
            if (*error)
            {
              v54 = *MEMORY[0x277CCA7E8];
              v71[0] = *MEMORY[0x277CCA450];
              v71[1] = v54;
              v72[0] = v65;
              v72[1] = v51;
              v55 = MEMORY[0x277CBEAC0];
              v56 = v72;
              v57 = v71;
              v58 = 2;
            }

            else
            {
              v73 = *MEMORY[0x277CCA450];
              v74 = v65;
              v55 = MEMORY[0x277CBEAC0];
              v56 = &v74;
              v57 = &v73;
              v58 = 1;
            }

            v61 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:v58];
            *error = [v52 errorWithDomain:@"ATL" code:3 userInfo:v61];
          }

          v11 = 0;
        }

        v13 = 0;
LABEL_50:
        v28 = v66;
      }

      else
      {
        v39 = ATLLogObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v84) = v32;
          _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unexpected Transit Summary data format %hhu", buf, 8u);
        }

        v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transit Summary data format %hhu", v32];
        v41 = v40;
        if (error)
        {
          v42 = *error;
          v43 = MEMORY[0x277CCA9B8];
          v44 = *MEMORY[0x277CCA450];
          if (*error)
          {
            v45 = *MEMORY[0x277CCA7E8];
            v75[0] = *MEMORY[0x277CCA450];
            v75[1] = v45;
            v76[0] = v40;
            v76[1] = v42;
            v46 = MEMORY[0x277CBEAC0];
            v47 = v76;
            v48 = v75;
            v49 = 2;
          }

          else
          {
            v77 = *MEMORY[0x277CCA450];
            v78 = v40;
            v46 = MEMORY[0x277CBEAC0];
            v47 = &v78;
            v48 = &v77;
            v49 = 1;
          }

          v60 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:v49];
          *error = [v43 errorWithDomain:@"ATL" code:3 userInfo:v60];
        }

        v11 = 0;
        v13 = 0;
        v28 = v66;
      }
    }
  }

LABEL_53:
  v62 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)getCurrentTransitSummary:(id)summary withError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  if ([summaryCopy length] == 32)
  {
    v6 = *([summaryCopy bytes] + 13);
    v7 = v6 >> 4;
    v8 = *([summaryCopy bytes] + 29);
    v9 = v8 >> 4;
    if (v6 >> 4 <= v8 >> 4)
    {
      v10 = v8 >> 4;
    }

    else
    {
      v10 = v6 >> 4;
    }

    if (v7 >= v8 >> 4)
    {
      v11 = v8 >> 4;
    }

    else
    {
      v11 = v6 >> 4;
    }

    v12 = MEMORY[0x277CBEA90];
    bytes = [summaryCopy bytes];
    v14 = bytes;
    if (v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 15;
    }

    if (v15)
    {
      if (v6 < 0x10)
      {
LABEL_21:
        v27 = [v12 dataWithReversedBytes:v14 length:16];
        goto LABEL_25;
      }
    }

    else if (v7 >= v9)
    {
      goto LABEL_21;
    }

    v14 = bytes + 16;
    goto LABEL_21;
  }

  v16 = ATLLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v36 = [summaryCopy length];
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Unexpected Transit Summary length %lu", buf, 0xCu);
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transit Summary length %lu", objc_msgSend(summaryCopy, "length")];
  v18 = v17;
  if (error)
  {
    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v31[0] = *MEMORY[0x277CCA450];
      v31[1] = v22;
      v32[0] = v17;
      v32[1] = v19;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v32;
      v25 = v31;
      v26 = 2;
    }

    else
    {
      v33 = *MEMORY[0x277CCA450];
      v34 = v17;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v34;
      v25 = &v33;
      v26 = 1;
    }

    v28 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    *error = [v20 errorWithDomain:@"ATL" code:3 userInfo:v28];
  }

  v27 = 0;
LABEL_25:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

@end