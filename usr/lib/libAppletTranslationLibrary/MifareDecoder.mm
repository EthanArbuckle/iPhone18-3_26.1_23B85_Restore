@interface MifareDecoder
+ (id)ParseEndEventShort:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)ParseTimeoutEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)ParseTimeoutEventNative:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)getSPID:(id)a3 withApplet:(id)a4 withError:(id *)a5;
+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)parseEndEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)parseStartEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5;
+ (id)parseStartEventNative:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (BOOL)supportsPlasticCardMode:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
@end

@implementation MifareDecoder

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v53[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v10 length] <= 1)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v47 = [v10 length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(v10, "length")];
    v14 = v13;
    if (!a8)
    {
      goto LABEL_33;
    }

    v15 = *a8;
    v16 = MEMORY[0x277CCA9B8];
    if (*a8)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v17;
      v51[0] = v13;
      v51[1] = v15;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v51;
      v20 = v50;
      v21 = 2;
    }

    else
    {
      v52 = *MEMORY[0x277CCA450];
      v53[0] = v13;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v53;
      v20 = &v52;
      v21 = 1;
    }

    v26 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
    v27 = v16;
    v28 = 6;
LABEL_32:
    *a8 = [v27 errorWithDomain:@"ATL" code:v28 userInfo:v26];

LABEL_33:
    v39 = 0;
    goto LABEL_36;
  }

  v22 = [v10 u8:0];
  v23 = [v10 u8:1];
  v24 = v23;
  if (v22 == 16)
  {
    if ((v23 - 3) <= 1)
    {
      v25 = [MifareDecoder ParseTimeoutEventNative:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

    if (v23 == 255)
    {
      v25 = [MifareDecoder ParseTimeoutEventISO:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v22 == 2)
  {
    if ((v23 - 3) <= 1)
    {
      v25 = [MifareDecoder parseEndEvent:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

    if (v23 == 240)
    {
      v25 = [MifareDecoder ParseEndEventShort:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

    if (v23 == 255)
    {
      v25 = [MifareDecoder parseEndEventISO:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

LABEL_25:
    v29 = ATLLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v47 = v22;
      v48 = 1024;
      v49 = v24;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v22, v24];
    v14 = v30;
    if (!a8)
    {
      goto LABEL_33;
    }

    v31 = *a8;
    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA450];
      v42[1] = v34;
      v43[0] = v30;
      v43[1] = v31;
      v35 = MEMORY[0x277CBEAC0];
      v36 = v43;
      v37 = v42;
      v38 = 2;
    }

    else
    {
      v44 = *MEMORY[0x277CCA450];
      v45 = v30;
      v35 = MEMORY[0x277CBEAC0];
      v36 = &v45;
      v37 = &v44;
      v38 = 1;
    }

    v26 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
    v27 = v32;
    v28 = 3;
    goto LABEL_32;
  }

  if (v22 != 1)
  {
    goto LABEL_25;
  }

  if ((v23 - 3) > 1)
  {
    if (v23 == 255)
    {
      v25 = [MifareDecoder parseStartEventISO:v10 withApplet:v11 error:a8];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  v25 = [MifareDecoder parseStartEventNative:v10 withApplet:v11 error:a8];
LABEL_35:
  v39 = v25;
LABEL_36:

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)parseStartEventNative:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 7)
  {
    v9 = [v7 bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = v8;
    v28[2] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
    v29[2] = v10;
    v28[3] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 4)) >> 16];
    v29[3] = v11;
    v28[4] = @"selectStatus";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 2)];
    v29[4] = v12;
    v28[5] = @"spIdentifier";
    v13 = [MifareDecoder getServiceProvider:*(v9 + 6)];
    v29[5] = v13;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(v9 + 6))}];
    v29[7] = v14;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v15 = [MifareDecoder getEmReentryDelayMs:*(v9 + 6)];
    v29[9] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [v7 length];
      v36 = 2048;
      v37 = 7;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(v7, "length"), 7];
    v10 = v18;
    if (!a5)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v19 = *a5;
    v20 = MEMORY[0x277CCA9B8];
    if (*a5)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v21;
      v31[0] = v18;
      v31[1] = v19;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v31;
      v24 = v30;
      v25 = 2;
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = v18;
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v33;
      v24 = &v32;
      v25 = 1;
    }

    v11 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    [v20 errorWithDomain:@"ATL" code:3 userInfo:v11];
    *a5 = v16 = 0;
  }

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)parseStartEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 10)
  {
    v9 = [v7 bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = v8;
    v28[2] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
    v29[2] = v10;
    v28[3] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v9 + 5))];
    v29[3] = v11;
    v28[4] = @"selectStatus";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 2)) >> 16];
    v29[4] = v12;
    v28[5] = @"spIdentifier";
    v13 = [MifareDecoder getServiceProvider:*(v9 + 9)];
    v29[5] = v13;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(v9 + 9))}];
    v29[7] = v14;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v15 = [MifareDecoder getEmReentryDelayMs:*(v9 + 9)];
    v29[9] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [v7 length];
      v36 = 2048;
      v37 = 10;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(v7, "length"), 10];
    v10 = v18;
    if (!a5)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v19 = *a5;
    v20 = MEMORY[0x277CCA9B8];
    if (*a5)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v21;
      v31[0] = v18;
      v31[1] = v19;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v31;
      v24 = v30;
      v25 = 2;
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33 = v18;
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v33;
      v24 = &v32;
      v25 = 1;
    }

    v11 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    [v20 errorWithDomain:@"ATL" code:3 userInfo:v11];
    *a5 = v16 = 0;
  }

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)parseEndEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v81[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] <= 0x2D)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v7 length];
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(v7, "length")];
    v11 = v10;
    if (a5)
    {
      v12 = *a5;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v78[0] = *MEMORY[0x277CCA450];
        v78[1] = v15;
        v79[0] = v10;
        v79[1] = v12;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v79;
        v18 = v78;
        v19 = 2;
      }

      else
      {
        v80 = *MEMORY[0x277CCA450];
        v81[0] = v10;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v81;
        v18 = &v80;
        v19 = 1;
      }

      v41 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *a5 = [v13 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

    goto LABEL_29;
  }

  v20 = [v7 bytes];
  v11 = [v7 subdataWithRange:{46, objc_msgSend(v7, "length") - 46}];
  v57[0] = [v11 bytes];
  v57[1] = [v11 length];
  buf = 0uLL;
  v77 = 0;
  v21 = DERDecodeItemCtx(v57, &buf);
  if (v21 || buf != 0xE000000000000001)
  {
    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v74 = 67109376;
      *&v74[4] = v21;
      LOWORD(v75[0]) = 2048;
      *(v75 + 2) = buf;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v74, 0x12u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v21, buf];
    v26 = v36;
    if (!a5)
    {
      goto LABEL_28;
    }

    v37 = *a5;
    v28 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v39 = *MEMORY[0x277CCA7E8];
      v70[0] = *MEMORY[0x277CCA450];
      v70[1] = v39;
      v71[0] = v36;
      v71[1] = v37;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v71;
      v33 = v70;
      goto LABEL_20;
    }

    v72 = *MEMORY[0x277CCA450];
    v73 = v36;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v73;
    v33 = &v72;
LABEL_26:
    v40 = 1;
    goto LABEL_27;
  }

  *v74 = 0;
  v75[0] = 0;
  v22 = DERParseSequenceSpec(&buf + 1, &mifareE1TLVSpec, v74, 0x10uLL);
  if (!v22)
  {
    *v68 = -1;
    v42 = [MifareDecoder didTransactionError:**v74 withParameters:v20 withTransactionResult:v68];
    v62 = @"State";
    v60[0] = @"SP";
    v43 = [MifareDecoder getServiceProvider:**v74];
    v60[1] = @"SPRaw";
    v61[0] = v43;
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:**v74];
    v61[1] = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v63 = v45;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

    v58[0] = @"EventType";
    v58[1] = @"appletIdentifier";
    v59[0] = @"EndEvent";
    v59[1] = v8;
    v58[2] = @"Version";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 1)];
    v59[2] = v56;
    v58[3] = @"didError";
    v46 = [MEMORY[0x277CCABB0] numberWithBool:v42];
    v59[3] = v46;
    v58[4] = @"command";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 3)) >> 16];
    v59[4] = v47;
    v58[5] = @"status";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 2)];
    v59[5] = v48;
    v58[6] = @"result";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v68];
    v59[6] = v49;
    v58[7] = @"informative";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 39)) >> 16];
    v59[7] = v50;
    v59[8] = &unk_2843C6A70;
    v58[8] = @"type";
    v58[9] = @"tlv";
    v58[10] = @"parsedInfo";
    v59[9] = v11;
    v59[10] = v55;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:11];

    goto LABEL_30;
  }

  v23 = v22;
  v24 = ATLLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *v68 = 67109120;
    v69 = v23;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v68, 8u);
  }

  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v23];
  v26 = v25;
  if (!a5)
  {
    goto LABEL_28;
  }

  v27 = *a5;
  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  if (!*a5)
  {
    v66 = *MEMORY[0x277CCA450];
    v67 = v25;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v67;
    v33 = &v66;
    goto LABEL_26;
  }

  v30 = *MEMORY[0x277CCA7E8];
  v64[0] = *MEMORY[0x277CCA450];
  v64[1] = v30;
  v65[0] = v25;
  v65[1] = v27;
  v31 = MEMORY[0x277CBEAC0];
  v32 = v65;
  v33 = v64;
LABEL_20:
  v40 = 2;
LABEL_27:
  v52 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v40];
  *a5 = [v28 errorWithDomain:@"ATL" code:3 userInfo:v52];

LABEL_28:
LABEL_29:
  v51 = 0;
LABEL_30:

  v53 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)parseEndEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v81[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] <= 0x30)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v7 length];
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(v7, "length")];
    v11 = v10;
    if (a5)
    {
      v12 = *a5;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v78[0] = *MEMORY[0x277CCA450];
        v78[1] = v15;
        v79[0] = v10;
        v79[1] = v12;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v79;
        v18 = v78;
        v19 = 2;
      }

      else
      {
        v80 = *MEMORY[0x277CCA450];
        v81[0] = v10;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v81;
        v18 = &v80;
        v19 = 1;
      }

      v41 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *a5 = [v13 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

    goto LABEL_29;
  }

  v20 = [v7 bytes];
  v11 = [v7 subdataWithRange:{49, objc_msgSend(v7, "length") - 49}];
  v57[0] = [v11 bytes];
  v57[1] = [v11 length];
  buf = 0uLL;
  v77 = 0;
  v21 = DERDecodeItemCtx(v57, &buf);
  if (v21 || buf != 0xE000000000000001)
  {
    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v74 = 67109376;
      *&v74[4] = v21;
      LOWORD(v75[0]) = 2048;
      *(v75 + 2) = buf;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v74, 0x12u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v21, buf];
    v26 = v36;
    if (!a5)
    {
      goto LABEL_28;
    }

    v37 = *a5;
    v28 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v39 = *MEMORY[0x277CCA7E8];
      v70[0] = *MEMORY[0x277CCA450];
      v70[1] = v39;
      v71[0] = v36;
      v71[1] = v37;
      v31 = MEMORY[0x277CBEAC0];
      v32 = v71;
      v33 = v70;
      goto LABEL_20;
    }

    v72 = *MEMORY[0x277CCA450];
    v73 = v36;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v73;
    v33 = &v72;
LABEL_26:
    v40 = 1;
    goto LABEL_27;
  }

  *v74 = 0;
  v75[0] = 0;
  v22 = DERParseSequenceSpec(&buf + 1, &mifareE1TLVSpec, v74, 0x10uLL);
  if (!v22)
  {
    *v68 = -1;
    v42 = [MifareDecoder didTransactionError:**v74 withISOParameters:v20 withTransactionResult:v68];
    v62 = @"State";
    v60[0] = @"SP";
    v43 = [MifareDecoder getServiceProvider:**v74];
    v60[1] = @"SPRaw";
    v61[0] = v43;
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:**v74];
    v61[1] = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v63 = v45;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

    v58[0] = @"EventType";
    v58[1] = @"appletIdentifier";
    v59[0] = @"EndEvent";
    v59[1] = v8;
    v58[2] = @"Version";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 1)];
    v59[2] = v56;
    v58[3] = @"didError";
    v46 = [MEMORY[0x277CCABB0] numberWithBool:v42];
    v59[3] = v46;
    v58[4] = @"command";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v20 + 4))];
    v59[4] = v47;
    v58[5] = @"status";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 2)) >> 16];
    v59[5] = v48;
    v58[6] = @"result";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v68];
    v59[6] = v49;
    v58[7] = @"informative";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v20 + 42)) >> 16];
    v59[7] = v50;
    v59[8] = &unk_2843C6A70;
    v58[8] = @"type";
    v58[9] = @"tlv";
    v58[10] = @"parsedInfo";
    v59[9] = v11;
    v59[10] = v55;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:11];

    goto LABEL_30;
  }

  v23 = v22;
  v24 = ATLLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *v68 = 67109120;
    v69 = v23;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v68, 8u);
  }

  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v23];
  v26 = v25;
  if (!a5)
  {
    goto LABEL_28;
  }

  v27 = *a5;
  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  if (!*a5)
  {
    v66 = *MEMORY[0x277CCA450];
    v67 = v25;
    v31 = MEMORY[0x277CBEAC0];
    v32 = &v67;
    v33 = &v66;
    goto LABEL_26;
  }

  v30 = *MEMORY[0x277CCA7E8];
  v64[0] = *MEMORY[0x277CCA450];
  v64[1] = v30;
  v65[0] = v25;
  v65[1] = v27;
  v31 = MEMORY[0x277CBEAC0];
  v32 = v65;
  v33 = v64;
LABEL_20:
  v40 = 2;
LABEL_27:
  v52 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v40];
  *a5 = [v28 errorWithDomain:@"ATL" code:3 userInfo:v52];

LABEL_28:
LABEL_29:
  v51 = 0;
LABEL_30:

  v53 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)ParseEndEventShort:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 3)
  {
    v9 = [v7 bytes];
    v24[0] = @"EndEvent";
    v23[0] = @"EventType";
    v23[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
    v23[2] = @"appletIdentifier";
    v23[3] = @"didError";
    v24[1] = v10;
    v24[2] = v8;
    v24[3] = MEMORY[0x277CBEC28];
    v24[4] = &unk_2843C6A88;
    v23[4] = @"result";
    v23[5] = @"type";
    v24[5] = &unk_2843C6A70;
    a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  else
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "End event length %zu", buf, 0xCu);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(v7, "length")];
    v10 = v12;
    if (a5)
    {
      v13 = *a5;
      v14 = MEMORY[0x277CCA9B8];
      if (*a5)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v25[0] = *MEMORY[0x277CCA450];
        v25[1] = v15;
        v26[0] = v12;
        v26[1] = v13;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v26;
        v18 = v25;
        v19 = 2;
      }

      else
      {
        v27 = *MEMORY[0x277CCA450];
        v28 = v12;
        v16 = MEMORY[0x277CBEAC0];
        v17 = &v28;
        v18 = &v27;
        v19 = 1;
      }

      v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *a5 = [v14 errorWithDomain:@"ATL" code:3 userInfo:v20];

      a5 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)ParseTimeoutEventNative:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 8)
  {
    v9 = [v7 bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
    v26[1] = v10;
    v26[2] = v8;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 4)) >> 16];
    v26[4] = v11;
    v25[5] = @"status";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 3)];
    v26[5] = v12;
    v26[6] = &unk_2843C6AA0;
    v25[6] = @"result";
    v25[7] = @"type";
    v26[7] = &unk_2843C6A70;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  }

  else
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(v7, "length")];
    v10 = v15;
    if (!a5)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v16 = *a5;
    v17 = MEMORY[0x277CCA9B8];
    if (*a5)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v27[0] = *MEMORY[0x277CCA450];
      v27[1] = v18;
      v28[0] = v15;
      v28[1] = v16;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v28;
      v21 = v27;
      v22 = 2;
    }

    else
    {
      v29 = *MEMORY[0x277CCA450];
      v30 = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v30;
      v21 = &v29;
      v22 = 1;
    }

    v11 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    [v17 errorWithDomain:@"ATL" code:3 userInfo:v11];
    *a5 = v13 = 0;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)ParseTimeoutEventISO:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length] == 11)
  {
    v9 = [v7 bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v9 + 1)];
    v26[1] = v10;
    v26[2] = v8;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(v9 + 5))];
    v26[4] = v11;
    v25[5] = @"status";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v9 + 3)) >> 16];
    v26[5] = v12;
    v26[6] = &unk_2843C6AA0;
    v25[6] = @"result";
    v25[7] = @"type";
    v26[7] = &unk_2843C6A70;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  }

  else
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = [v7 length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(v7, "length")];
    v10 = v15;
    if (!a5)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v16 = *a5;
    v17 = MEMORY[0x277CCA9B8];
    if (*a5)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v27[0] = *MEMORY[0x277CCA450];
      v27[1] = v18;
      v28[0] = v15;
      v28[1] = v16;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v28;
      v21 = v27;
      v22 = 2;
    }

    else
    {
      v29 = *MEMORY[0x277CCA450];
      v30 = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v30;
      v21 = &v29;
      v22 = 1;
    }

    v11 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    [v17 errorWithDomain:@"ATL" code:3 userInfo:v11];
    *a5 = v13 = 0;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MifareDecoder getSPID:v11 withApplet:v12 withError:a7];
  v16 = v15;
  if (v15)
  {
    v17 = +[MifareDecoder getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:](MifareDecoder, "getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:", [v15 unsignedCharValue], v11, v12, v13, v14, a7);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v17[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [TransceiverWrapper withTransceiver:a6];
  v11 = [MifareDecoder getSPID:v10 withApplet:v9 withError:a7];

  if (v11)
  {
    v16[0] = @"Supported";
    v16[1] = @"DelayExpressReentry";
    v17[0] = MEMORY[0x277CBEC38];
    v12 = +[MifareDecoder getEmReentryDelayMs:](MifareDecoder, "getEmReentryDelayMs:", [v11 unsignedCharValue]);
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Mifare decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mifare decoder doesn't expect processEndOfTransaction"];
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

- (BOOL)supportsPlasticCardMode:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6
{
  v7 = a3;
  v14 = 0;
  v8 = [MifareDecoder getSPID:v7 withApplet:a4 withError:&v14];
  v9 = v8;
  if (v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v11 = +[MifareDecoder getSubDecoder:](MifareDecoder, "getSubDecoder:", [v8 unsignedCharValue]);
    v12 = [objc_opt_class() supportsPlasticCardMode:objc_msgSend(v9 withTransceiver:{"unsignedCharValue"), v7}];
  }

  return v12;
}

+ (id)getSPID:(id)a3 withApplet:(id)a4 withError:(id *)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEA90] dataWithHexString:a4];
  v9 = SelectByNameCmd(v8);

  v10 = [v7 transceiveAndCheckSW:v9 error:a5];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getSPID_withApplet_withError__getDataSpid length:6 freeWhenDone:0];
  v12 = [v7 transceiveAndCheckSW:v11 error:a5];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_14;
  }

  if ([v12 length] != 1)
  {
    v15 = ATLLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_ERROR, "Invalid response length to GET DATA SPID != 1", v29, 2u);
    }

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid response length to GET DATA SPID != 1"];
    v17 = v16;
    if (a5)
    {
      v18 = *a5;
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v21 = *MEMORY[0x277CCA7E8];
        v30[0] = *MEMORY[0x277CCA450];
        v30[1] = v21;
        v31[0] = v16;
        v31[1] = v18;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v31;
        v24 = v30;
        v25 = 2;
      }

      else
      {
        v32 = *MEMORY[0x277CCA450];
        v33[0] = v16;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v33;
        v24 = &v32;
        v25 = 1;
      }

      v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
      *a5 = [v19 errorWithDomain:@"ATL" code:3 userInfo:v26];
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v13, "u8:", 0)}];
LABEL_15:

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withPublicKey:(id)a6 withEncryptionScheme:(id)a7 withTransceiver:(id)a8 withError:(id *)a9
{
  v14 = a9;
  v42[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v38 = 0;
  v21 = [MifareDecoder getSPID:v20 withApplet:v15 withError:&v38];
  v22 = v38;
  if (v22 || !v21)
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Service Provider Opaque Data for Mifare not supported when SPID not available.", buf, 2u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider Opaque Data for Mifare not supported when SPID not available."];
    v23 = v25;
    if (a9)
    {
      v26 = *a9;
      v36 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      if (*a9)
      {
        v28 = *MEMORY[0x277CCA7E8];
        v39[0] = *MEMORY[0x277CCA450];
        v39[1] = v28;
        v40[0] = v25;
        v40[1] = v26;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v40;
        v31 = v39;
        v32 = 2;
      }

      else
      {
        v41 = *MEMORY[0x277CCA450];
        v42[0] = v25;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v42;
        v31 = &v41;
        v32 = 1;
      }

      v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
      *a9 = [v36 errorWithDomain:@"ATL" code:2 userInfo:v33];

      v14 = 0;
    }
  }

  else
  {
    v23 = +[MifareDecoder getSubDecoder:](MifareDecoder, "getSubDecoder:", [v21 unsignedCharValue]);
    v14 = [objc_opt_class() getServiceProviderData:v15 withPackage:v16 withModule:v17 withPublicKey:v18 withEncryptionScheme:v19 withTransceiver:v20 withError:a9];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v14;
}

@end