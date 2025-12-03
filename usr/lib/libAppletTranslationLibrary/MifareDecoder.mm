@interface MifareDecoder
+ (id)ParseEndEventShort:(id)short withApplet:(id)applet error:(id *)error;
+ (id)ParseTimeoutEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)ParseTimeoutEventNative:(id)native withApplet:(id)applet error:(id *)error;
+ (id)getSPID:(id)d withApplet:(id)applet withError:(id *)error;
+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (id)parseEndEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)parseStartEventISO:(id)o withApplet:(id)applet error:(id *)error;
+ (id)parseStartEventNative:(id)native withApplet:(id)applet error:(id *)error;
- (BOOL)supportsPlasticCardMode:(id)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation MifareDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] <= 1)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v47 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(eventCopy, "length")];
    v14 = v13;
    if (!error)
    {
      goto LABEL_33;
    }

    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    if (*error)
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
    *error = [v27 errorWithDomain:@"ATL" code:v28 userInfo:v26];

LABEL_33:
    v39 = 0;
    goto LABEL_36;
  }

  v22 = [eventCopy u8:0];
  v23 = [eventCopy u8:1];
  v24 = v23;
  if (v22 == 16)
  {
    if ((v23 - 3) <= 1)
    {
      v25 = [MifareDecoder ParseTimeoutEventNative:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v23 == 255)
    {
      v25 = [MifareDecoder ParseTimeoutEventISO:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (v22 == 2)
  {
    if ((v23 - 3) <= 1)
    {
      v25 = [MifareDecoder parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v23 == 240)
    {
      v25 = [MifareDecoder ParseEndEventShort:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    if (v23 == 255)
    {
      v25 = [MifareDecoder parseEndEventISO:eventCopy withApplet:appletCopy error:error];
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
    if (!error)
    {
      goto LABEL_33;
    }

    v31 = *error;
    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    if (*error)
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
      v25 = [MifareDecoder parseStartEventISO:eventCopy withApplet:appletCopy error:error];
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  v25 = [MifareDecoder parseStartEventNative:eventCopy withApplet:appletCopy error:error];
LABEL_35:
  v39 = v25;
LABEL_36:

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)parseStartEventNative:(id)native withApplet:(id)applet error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  nativeCopy = native;
  appletCopy = applet;
  if ([nativeCopy length] == 7)
  {
    bytes = [nativeCopy bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = appletCopy;
    v28[2] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v29[2] = v10;
    v28[3] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 4)) >> 16];
    v29[3] = v11;
    v28[4] = @"selectStatus";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 2)];
    v29[4] = v12;
    v28[5] = @"spIdentifier";
    v13 = [MifareDecoder getServiceProvider:*(bytes + 6)];
    v29[5] = v13;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(bytes + 6))}];
    v29[7] = v14;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v15 = [MifareDecoder getEmReentryDelayMs:*(bytes + 6)];
    v29[9] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [nativeCopy length];
      v36 = 2048;
      v37 = 7;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(nativeCopy, "length"), 7];
    v10 = v18;
    if (!error)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
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
    *error = v16 = 0;
  }

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)parseStartEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  if ([oCopy length] == 10)
  {
    bytes = [oCopy bytes];
    v28[0] = @"EventType";
    v28[1] = @"appletIdentifier";
    v29[0] = @"StartEvent";
    v29[1] = appletCopy;
    v28[2] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v29[2] = v10;
    v28[3] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 5))];
    v29[3] = v11;
    v28[4] = @"selectStatus";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    v29[4] = v12;
    v28[5] = @"spIdentifier";
    v13 = [MifareDecoder getServiceProvider:*(bytes + 9)];
    v29[5] = v13;
    v29[6] = MEMORY[0x277CBEC38];
    v28[6] = @"IgnoreRFEvents";
    v28[7] = @"DontWaitForEOT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{+[MifareDecoder getDontWaitForEOT:](MifareDecoder, "getDontWaitForEOT:", *(bytes + 9))}];
    v29[7] = v14;
    v29[8] = MEMORY[0x277CBEC28];
    v28[8] = @"RequiresPowerCycle";
    v28[9] = @"DelayExpressReentry";
    v15 = [MifareDecoder getEmReentryDelayMs:*(bytes + 9)];
    v29[9] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  }

  else
  {
    v17 = ATLLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = [oCopy length];
      v36 = 2048;
      v37 = 10;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(oCopy, "length"), 10];
    v10 = v18;
    if (!error)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
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
    *error = v16 = 0;
  }

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v81[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] <= 0x2D)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v11 = v10;
    if (error)
    {
      v12 = *error;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      if (*error)
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
      *error = [v13 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

    goto LABEL_29;
  }

  bytes = [eventCopy bytes];
  v11 = [eventCopy subdataWithRange:{46, objc_msgSend(eventCopy, "length") - 46}];
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
    if (!error)
    {
      goto LABEL_28;
    }

    v37 = *error;
    v28 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    if (*error)
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
    v42 = [MifareDecoder didTransactionError:**v74 withParameters:bytes withTransactionResult:v68];
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
    v59[1] = appletCopy;
    v58[2] = @"Version";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v59[2] = v56;
    v58[3] = @"didError";
    v46 = [MEMORY[0x277CCABB0] numberWithBool:v42];
    v59[3] = v46;
    v58[4] = @"command";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 3)) >> 16];
    v59[4] = v47;
    v58[5] = @"status";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 2)];
    v59[5] = v48;
    v58[6] = @"result";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v68];
    v59[6] = v49;
    v58[7] = @"informative";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 39)) >> 16];
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
  if (!error)
  {
    goto LABEL_28;
  }

  v27 = *error;
  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  if (!*error)
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
  *error = [v28 errorWithDomain:@"ATL" code:3 userInfo:v52];

LABEL_28:
LABEL_29:
  v51 = 0;
LABEL_30:

  v53 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)parseEndEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v81[1] = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  if ([oCopy length] <= 0x30)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [oCopy length];
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(oCopy, "length")];
    v11 = v10;
    if (error)
    {
      v12 = *error;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      if (*error)
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
      *error = [v13 errorWithDomain:@"ATL" code:3 userInfo:v41];
    }

    goto LABEL_29;
  }

  bytes = [oCopy bytes];
  v11 = [oCopy subdataWithRange:{49, objc_msgSend(oCopy, "length") - 49}];
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
    if (!error)
    {
      goto LABEL_28;
    }

    v37 = *error;
    v28 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    if (*error)
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
    v42 = [MifareDecoder didTransactionError:**v74 withISOParameters:bytes withTransactionResult:v68];
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
    v59[1] = appletCopy;
    v58[2] = @"Version";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v59[2] = v56;
    v58[3] = @"didError";
    v46 = [MEMORY[0x277CCABB0] numberWithBool:v42];
    v59[3] = v46;
    v58[4] = @"command";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 4))];
    v59[4] = v47;
    v58[5] = @"status";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
    v59[5] = v48;
    v58[6] = @"result";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v68];
    v59[6] = v49;
    v58[7] = @"informative";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 42)) >> 16];
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
  if (!error)
  {
    goto LABEL_28;
  }

  v27 = *error;
  v28 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  if (!*error)
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
  *error = [v28 errorWithDomain:@"ATL" code:3 userInfo:v52];

LABEL_28:
LABEL_29:
  v51 = 0;
LABEL_30:

  v53 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)ParseEndEventShort:(id)short withApplet:(id)applet error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  shortCopy = short;
  appletCopy = applet;
  if ([shortCopy length] == 3)
  {
    bytes = [shortCopy bytes];
    v24[0] = @"EndEvent";
    v23[0] = @"EventType";
    v23[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v23[2] = @"appletIdentifier";
    v23[3] = @"didError";
    v24[1] = v10;
    v24[2] = appletCopy;
    v24[3] = MEMORY[0x277CBEC28];
    v24[4] = &unk_2843C6A88;
    v23[4] = @"result";
    v23[5] = @"type";
    v24[5] = &unk_2843C6A70;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  else
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v30 = [shortCopy length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "End event length %zu", buf, 0xCu);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(shortCopy, "length")];
    v10 = v12;
    if (error)
    {
      v13 = *error;
      v14 = MEMORY[0x277CCA9B8];
      if (*error)
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
      *error = [v14 errorWithDomain:@"ATL" code:3 userInfo:v20];

      error = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)ParseTimeoutEventNative:(id)native withApplet:(id)applet error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  nativeCopy = native;
  appletCopy = applet;
  if ([nativeCopy length] == 8)
  {
    bytes = [nativeCopy bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v26[1] = v10;
    v26[2] = appletCopy;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 4)) >> 16];
    v26[4] = v11;
    v25[5] = @"status";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 3)];
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
      v32 = [nativeCopy length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(nativeCopy, "length")];
    v10 = v15;
    if (!error)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
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
    *error = v13 = 0;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)ParseTimeoutEventISO:(id)o withApplet:(id)applet error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  oCopy = o;
  appletCopy = applet;
  if ([oCopy length] == 11)
  {
    bytes = [oCopy bytes];
    v26[0] = @"EndEvent";
    v25[0] = @"EventType";
    v25[1] = @"Version";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v26[1] = v10;
    v26[2] = appletCopy;
    v25[2] = @"appletIdentifier";
    v25[3] = @"didError";
    v26[3] = MEMORY[0x277CBEC38];
    v25[4] = @"command";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 5))];
    v26[4] = v11;
    v25[5] = @"status";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 3)) >> 16];
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
      v32 = [oCopy length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "event length %zu", buf, 0xCu);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"event length %zu", objc_msgSend(oCopy, "length")];
    v10 = v15;
    if (!error)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    if (*error)
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
    *error = v13 = 0;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v15 = [MifareDecoder getSPID:historyCopy withApplet:appletCopy withError:error];
  v16 = v15;
  if (v15)
  {
    v17 = +[MifareDecoder getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:](MifareDecoder, "getAppletStateAndHistory:withTransceiver:withApplet:withPackage:withModule:withError:", [v15 unsignedCharValue], historyCopy, appletCopy, packageCopy, moduleCopy, error);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v10 = [TransceiverWrapper withTransceiver:transceiver];
  v11 = [MifareDecoder getSPID:v10 withApplet:propertiesCopy withError:error];

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

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
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
  if (error)
  {
    v11 = *error;
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    if (*error)
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
    *error = [v12 errorWithDomain:@"ATL" code:7 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)supportsPlasticCardMode:(id)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module
{
  modeCopy = mode;
  v14 = 0;
  v8 = [MifareDecoder getSPID:modeCopy withApplet:applet withError:&v14];
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
    v12 = [objc_opt_class() supportsPlasticCardMode:objc_msgSend(v9 withTransceiver:{"unsignedCharValue"), modeCopy}];
  }

  return v12;
}

+ (id)getSPID:(id)d withApplet:(id)applet withError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v9 = SelectByNameCmd(v8);

  v10 = [dCopy transceiveAndCheckSW:v9 error:error];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getSPID_withApplet_withError__getDataSpid length:6 freeWhenDone:0];
  v12 = [dCopy transceiveAndCheckSW:v11 error:error];
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
    if (error)
    {
      v18 = *error;
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      if (*error)
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
      *error = [v19 errorWithDomain:@"ATL" code:3 userInfo:v26];
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

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v42[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v38 = 0;
  v21 = [MifareDecoder getSPID:transceiverCopy withApplet:dataCopy withError:&v38];
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
    if (error)
    {
      v26 = *error;
      v36 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      if (*error)
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
      *error = [v36 errorWithDomain:@"ATL" code:2 userInfo:v33];

      errorCopy = 0;
    }
  }

  else
  {
    v23 = +[MifareDecoder getSubDecoder:](MifareDecoder, "getSubDecoder:", [v21 unsignedCharValue]);
    errorCopy = [objc_opt_class() getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:transceiverCopy withError:error];
  }

  v34 = *MEMORY[0x277D85DE8];

  return errorCopy;
}

@end