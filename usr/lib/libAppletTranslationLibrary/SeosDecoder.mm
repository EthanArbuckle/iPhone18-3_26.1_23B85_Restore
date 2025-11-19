@interface SeosDecoder
+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation SeosDecoder

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v75[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v10 length] > 1)
  {
    v23 = *[v10 bytes];
    v24 = *([v10 bytes] + 1);
    if (v24 == 1)
    {
      v25 = ATLLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Legacy SEOS, punting", buf, 2u);
      }

      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Legacy SEOS, punting"];
      v14 = v26;
      if (!a8)
      {
        goto LABEL_33;
      }

      v27 = *a8;
      v28 = MEMORY[0x277CCA9B8];
      if (*a8)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v68[0] = *MEMORY[0x277CCA450];
        v68[1] = v29;
        v69[0] = v26;
        v69[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v69;
        v32 = v68;
        v33 = 2;
      }

      else
      {
        v70 = *MEMORY[0x277CCA450];
        v71 = v26;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v71;
        v32 = &v70;
        v33 = 1;
      }

      v40 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      v41 = v28;
      v42 = 2;
      goto LABEL_32;
    }

    if ([v10 length] > 9)
    {
      if (v23 == 1 && v24 == 255)
      {
        v39 = [SeosDecoder parseStartEvent:v10 withApplet:v11 error:a8];
      }

      else
      {
        if (v23 != 2 || v24 != 255)
        {
          v46 = ATLLogObject();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v61 = v23;
            v62 = 1024;
            v63 = v24;
            _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
          }

          v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v23, v24];
          v14 = v47;
          if (!a8)
          {
            goto LABEL_33;
          }

          v48 = *a8;
          v49 = MEMORY[0x277CCA9B8];
          v50 = *MEMORY[0x277CCA450];
          if (*a8)
          {
            v51 = *MEMORY[0x277CCA7E8];
            v56[0] = *MEMORY[0x277CCA450];
            v56[1] = v51;
            v57[0] = v47;
            v57[1] = v48;
            v52 = MEMORY[0x277CBEAC0];
            v53 = v57;
            v54 = v56;
            v55 = 2;
          }

          else
          {
            v58 = *MEMORY[0x277CCA450];
            v59 = v47;
            v52 = MEMORY[0x277CBEAC0];
            v53 = &v59;
            v54 = &v58;
            v55 = 1;
          }

          v40 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:v55];
          v41 = v49;
          v42 = 3;
          goto LABEL_32;
        }

        v39 = [SeosDecoder parseEndEvent:v10 withApplet:v11 error:a8];
      }

      v43 = v39;
      goto LABEL_34;
    }

    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v61 = [v10 length];
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(v10, "length")];
    v14 = v35;
    if (!a8)
    {
      goto LABEL_33;
    }

    v36 = *a8;
    v16 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v64[0] = *MEMORY[0x277CCA450];
      v64[1] = v38;
      v65[0] = v35;
      v65[1] = v36;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v65;
      v21 = v64;
      goto LABEL_7;
    }

    v66 = *MEMORY[0x277CCA450];
    v67 = v35;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v67;
    v21 = &v66;
LABEL_24:
    v22 = 1;
    goto LABEL_25;
  }

  v12 = ATLLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v61 = [v10 length];
    _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(v10, "length")];
  v14 = v13;
  if (!a8)
  {
    goto LABEL_33;
  }

  v15 = *a8;
  v16 = MEMORY[0x277CCA9B8];
  v17 = *MEMORY[0x277CCA450];
  if (!*a8)
  {
    v74 = *MEMORY[0x277CCA450];
    v75[0] = v13;
    v19 = MEMORY[0x277CBEAC0];
    v20 = v75;
    v21 = &v74;
    goto LABEL_24;
  }

  v18 = *MEMORY[0x277CCA7E8];
  v72[0] = *MEMORY[0x277CCA450];
  v72[1] = v18;
  v73[0] = v13;
  v73[1] = v15;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v73;
  v21 = v72;
LABEL_7:
  v22 = 2;
LABEL_25:
  v40 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
  v41 = v16;
  v42 = 6;
LABEL_32:
  *a8 = [v41 errorWithDomain:@"ATL" code:v42 userInfo:v40];

LABEL_33:
  v43 = 0;
LABEL_34:

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "SeosDecoder doesn't support GetState", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SeosDecoder doesn't support GetState"];
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

+ (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] != 10)
  {
    v15 = ATLLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(v7, "length")];
    v10 = v16;
    if (a5)
    {
      v17 = *a5;
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v20 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v20;
        v50[0] = v16;
        v50[1] = v17;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v50;
        v23 = v49;
        v24 = 2;
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52[0] = v16;
        v21 = MEMORY[0x277CBEAC0];
        v22 = v52;
        v23 = &v51;
        v24 = 1;
      }

      v11 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
      v35 = v18;
      v36 = 6;
      goto LABEL_19;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_21;
  }

  v9 = [v7 bytes];
  if ((~*(v9 + 5) & 0xA580) != 0)
  {
    v25 = ATLLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v9 + 5);
      *buf = 67109376;
      v46 = v26;
      v47 = 1024;
      v48 = 42368;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Unexpected cmd of StartEvent %u (exp) %u", buf, 0xEu);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected cmd of StartEvent %u (exp) %u", *(v9 + 5), 42368];
    v10 = v27;
    if (a5)
    {
      v28 = *a5;
      v29 = MEMORY[0x277CCA9B8];
      if (*a5)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v41[0] = *MEMORY[0x277CCA450];
        v41[1] = v30;
        v42[0] = v27;
        v42[1] = v28;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v42;
        v33 = v41;
        v34 = 2;
      }

      else
      {
        v43 = *MEMORY[0x277CCA450];
        v44 = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v44;
        v33 = &v43;
        v34 = 1;
      }

      v11 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      v35 = v29;
      v36 = 3;
LABEL_19:
      [v35 errorWithDomain:@"ATL" code:v36 userInfo:v11];
      *a5 = v14 = 0;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v39[0] = @"EventType";
  v39[1] = @"appletIdentifier";
  v40[0] = @"StartEvent";
  v40[1] = v8;
  v39[2] = @"Version";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
  v40[2] = v10;
  v39[3] = @"command";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v9 + 5))];
  v40[3] = v11;
  v39[4] = @"selectStatus";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 2)) >> 16];
  v40[4] = v12;
  v39[5] = @"spIdentifier";
  v13 = [SeosDecoder resolveServiceProvider:*(v9 + 9)];
  v39[6] = @"IgnoreRFEvents";
  v39[7] = @"DontWaitForEOT";
  v40[5] = v13;
  v40[6] = MEMORY[0x277CBEC38];
  v40[7] = MEMORY[0x277CBEC38];
  v40[8] = MEMORY[0x277CBEC28];
  v39[8] = @"RequiresPowerCycle";
  v39[9] = @"DelayExpressReentry";
  v40[9] = &unk_2843C7208;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:10];

LABEL_20:
LABEL_21:

  v37 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v111[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] <= 0x30)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [v7 length];
      *&buf[12] = 2048;
      *&buf[14] = 49;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "End event length %zu (exp) %zu", buf, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu (exp) %zu", objc_msgSend(v7, "length"), 49];
    v11 = v10;
    if (!a5)
    {
      goto LABEL_41;
    }

    v12 = *a5;
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v15 = *MEMORY[0x277CCA7E8];
      v108[0] = *MEMORY[0x277CCA450];
      v108[1] = v15;
      v109[0] = v10;
      v109[1] = v12;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v109;
      v18 = v108;
LABEL_29:
      v48 = 2;
LABEL_40:
      v62 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v48];
      *a5 = [v13 errorWithDomain:@"ATL" code:3 userInfo:v62];

LABEL_41:
      v63 = 0;
      goto LABEL_42;
    }

    v110 = *MEMORY[0x277CCA450];
    v111[0] = v10;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v111;
    v18 = &v110;
    goto LABEL_39;
  }

  v19 = [v7 bytes];
  v20 = v19;
  v21 = *(v19 + 40);
  if (v21 != 1 && v21 != 0x4000)
  {
    v36 = ATLLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(v20 + 40);
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Unexpected Transaction Status %d", buf, 8u);
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Transaction Status %d", *(v20 + 40)];
    v11 = v38;
    if (!a5)
    {
      goto LABEL_41;
    }

    v39 = *a5;
    v13 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v41 = *MEMORY[0x277CCA7E8];
      v104[0] = *MEMORY[0x277CCA450];
      v104[1] = v41;
      v105[0] = v38;
      v105[1] = v39;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v105;
      v18 = v104;
      goto LABEL_29;
    }

    v106 = *MEMORY[0x277CCA450];
    v107 = v38;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v107;
    v18 = &v106;
LABEL_39:
    v48 = 1;
    goto LABEL_40;
  }

  if ((*(v19 + 42) | 0x2000) != 0x2002)
  {
    v42 = ATLLogObject();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = *(v20 + 42);
      *buf = 67109120;
      *&buf[4] = v43;
      _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unexpected Informative %d", buf, 8u);
    }

    v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected Informative %d", *(v20 + 42)];
    v11 = v44;
    if (!a5)
    {
      goto LABEL_41;
    }

    v45 = *a5;
    v13 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v47 = *MEMORY[0x277CCA7E8];
      v100[0] = *MEMORY[0x277CCA450];
      v100[1] = v47;
      v101[0] = v44;
      v101[1] = v45;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v101;
      v18 = v100;
      goto LABEL_29;
    }

    v102 = *MEMORY[0x277CCA450];
    v103 = v44;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v103;
    v18 = &v102;
    goto LABEL_39;
  }

  v11 = [v7 subdataWithRange:{49, objc_msgSend(v7, "length") - 49}];
  v80[0] = [v11 bytes];
  v80[1] = [v11 length];
  memset(buf, 0, sizeof(buf));
  v22 = DERDecodeItemCtx(v80, buf);
  if (v22 || *buf != 0xE000000000000001)
  {
    v49 = ATLLogObject();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *v97 = 67109376;
      *&v97[4] = v22;
      LOWORD(v98[0]) = 2048;
      *(v98 + 2) = *buf;
      _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v97, 0x12u);
    }

    v50 = objc_alloc(MEMORY[0x277CCACA8]);
    v51 = [v50 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v22, *buf];
    v52 = v51;
    if (a5)
    {
      v53 = *a5;
      v54 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v56 = *MEMORY[0x277CCA7E8];
        v93[0] = *MEMORY[0x277CCA450];
        v93[1] = v56;
        v94[0] = v51;
        v94[1] = v53;
        v57 = MEMORY[0x277CBEAC0];
        v58 = v94;
        v59 = v93;
        v60 = 2;
      }

      else
      {
        v95 = *MEMORY[0x277CCA450];
        v96 = v51;
        v57 = MEMORY[0x277CBEAC0];
        v58 = &v96;
        v59 = &v95;
        v60 = 1;
      }

      v66 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:v60];
      *a5 = [v54 errorWithDomain:@"ATL" code:3 userInfo:v66];
    }

    goto LABEL_41;
  }

  *v97 = 0;
  v98[0] = 0;
  v23 = DERParseSequenceSpec(&buf[8], &seosE1TLVSpec, v97, 0x10uLL);
  if (!v23)
  {
    if (v98[0])
    {
      v61 = [SeosDecoder resolveServiceProvider:**v97];
    }

    else
    {
      v61 = @"ABSENT";
    }

    v79 = v61;
    v84 = v61;
    v85 = @"State";
    v83 = @"SP";
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v86 = v68;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];

    v71 = *(v20 + 40) != 0x4000 || *(v20 + 2) != 144 || *(v20 + 42) != 2;
    v81[0] = @"EventType";
    v81[1] = @"appletIdentifier";
    v82[0] = @"EndEvent";
    v82[1] = v8;
    v81[2] = @"Version";
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 1)];
    v82[2] = v78;
    v81[3] = @"didError";
    v72 = [MEMORY[0x277CCABB0] numberWithBool:v71];
    v82[3] = v72;
    v81[4] = @"command";
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v20 + 4))];
    v82[4] = v73;
    v81[5] = @"status";
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 2)) >> 16];
    v82[5] = v74;
    v81[6] = @"result";
    if (v71)
    {
      v75 = 256;
    }

    else
    {
      v75 = 64;
    }

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v75];
    v82[6] = v76;
    v81[7] = @"informative";
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 42)) >> 16];
    v82[7] = v77;
    v82[8] = &unk_2843C7220;
    v81[8] = @"type";
    v81[9] = @"tlv";
    v81[10] = @"parsedInfo";
    v82[9] = v11;
    v82[10] = v67;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:11];

    v27 = v79;
    goto LABEL_65;
  }

  v24 = v23;
  v25 = ATLLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v91 = 67109120;
    v92 = v24;
    _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v91, 8u);
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v24];
  v27 = v26;
  if (a5)
  {
    v28 = *a5;
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v87[0] = *MEMORY[0x277CCA450];
      v87[1] = v31;
      v88[0] = v26;
      v88[1] = v28;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v88;
      v34 = v87;
      v35 = 2;
    }

    else
    {
      v89 = *MEMORY[0x277CCA450];
      v90 = v26;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v90;
      v34 = &v89;
      v35 = 1;
    }

    v67 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    [v29 errorWithDomain:@"ATL" code:3 userInfo:v67];
    *a5 = v63 = 0;
LABEL_65:

    goto LABEL_66;
  }

  v63 = 0;
LABEL_66:

LABEL_42:
  v64 = *MEMORY[0x277D85DE8];

  return v63;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C7208;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, a6, a7}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "SEOS decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SEOS decoder doesn't expect processEndOfTransaction"];
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
    *a7 = [v12 errorWithDomain:@"ATL" code:7 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

@end