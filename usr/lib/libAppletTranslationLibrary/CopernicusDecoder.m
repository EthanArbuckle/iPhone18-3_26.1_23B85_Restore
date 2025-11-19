@interface CopernicusDecoder
+ (BOOL)supportsStepUp:(id)a3;
+ (id)getInstance;
- (CopernicusDecoder)init;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)_stringFromASCIIBytes:(id *)a3;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)handleApplicationSpecific:(id)a3 appletAID:(id)a4 error:(id *)a5;
- (id)handleControlFlow:(id)a3 appletAID:(id)a4 error:(id *)a5;
- (id)handleEventInFast:(unsigned __int8)a3 eventData:(id)a4 appletAID:(id)a5 error:(id *)a6;
- (id)handleEventInStandard:(unsigned __int8)a3 eventData:(id)a4 appletAID:(id)a5 error:(id *)a6;
- (id)handleMessageInExchange:(id)a3 appletAID:(id)a4 error:(id *)a5;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (void)cleanup;
- (void)parseHomeSpecificCFParameters:(id *)a3 into:(id)a4;
@end

@implementation CopernicusDecoder

+ (id)getInstance
{
  if (getInstance_onceToken_0 != -1)
  {
    +[CopernicusDecoder getInstance];
  }

  v3 = getInstance_inst_0;

  return v3;
}

uint64_t __32__CopernicusDecoder_getInstance__block_invoke()
{
  getInstance_inst_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CopernicusDecoder)init
{
  v6.receiver = self;
  v6.super_class = CopernicusDecoder;
  v2 = [(CopernicusDecoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CopernicusDecoder *)v2 setEndPointIdentifier:0];
    [(CopernicusDecoder *)v3 setReaderIdentifier:0];
    [(CopernicusDecoder *)v3 setState:0];
    [(CopernicusDecoder *)v3 setTransactionType:0xFFFFFFFFLL];
    v4 = objc_opt_new();
    [(CopernicusDecoder *)v3 setStepUpData:v4];

    [AppletTranslator registerForCleanup:v3];
  }

  return v3;
}

- (void)cleanup
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(CopernicusDecoder *)self state])
  {
    v3 = ATLLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = [(CopernicusDecoder *)self state];
      _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "Clearing non-idle Copernicus state %d", v6, 8u);
    }

    [(CopernicusDecoder *)self setEndPointIdentifier:0];
    [(CopernicusDecoder *)self setState:0];
    [(CopernicusDecoder *)self setTransactionType:0xFFFFFFFFLL];
    v4 = [(CopernicusDecoder *)self stepUpData];
    [v4 removeAllObjects];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v77[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if ([v11 length] <= 1)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v71 = [v11 length];
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(v11, "length")];
    v15 = v14;
    if (!a8)
    {
      goto LABEL_31;
    }

    v16 = *a8;
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v74[0] = *MEMORY[0x277CCA450];
      v74[1] = *MEMORY[0x277CCA7E8];
      v75[0] = v14;
      v75[1] = v16;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v75;
      v21 = v74;
      v22 = 2;
    }

    else
    {
      v76 = *MEMORY[0x277CCA450];
      v77[0] = v14;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v77;
      v21 = &v76;
      v22 = 1;
    }

    v44 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    v45 = v17;
    v46 = 6;
LABEL_30:
    *a8 = [v45 errorWithDomain:@"ATL" code:v46 userInfo:v44];

LABEL_31:
LABEL_32:
    v47 = 0;
    goto LABEL_33;
  }

  v23 = [v11 u8:0];
  v24 = [v11 u8:1];
  if ((v24 - 16) >= 3)
  {
    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v71 = v24;
      v72 = 1024;
      v73 = v23;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Decoder only support version 0x10, 0x11, and 0x12 of HCI event, got version=0x%02X with eventType=0x%02X", buf, 0xEu);
    }

    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Decoder only support version 0x10, 0x11, and 0x12 of HCI event, got version=0x%02X with eventType=0x%02X", v24, v23];
    v15 = v32;
    if (!a8)
    {
      goto LABEL_31;
    }

    v33 = *a8;
    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v36 = *MEMORY[0x277CCA7E8];
      v66[0] = *MEMORY[0x277CCA450];
      v66[1] = v36;
      v67[0] = v32;
      v67[1] = v33;
      v37 = MEMORY[0x277CBEAC0];
      v38 = v67;
      v39 = v66;
      v40 = 2;
    }

    else
    {
      v68 = *MEMORY[0x277CCA450];
      v69 = v32;
      v37 = MEMORY[0x277CBEAC0];
      v38 = &v69;
      v39 = &v68;
      v40 = 1;
    }

    v44 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:v40];
    v45 = v34;
    v46 = 3;
    goto LABEL_30;
  }

  if (v23 == 23 && [v11 length] >= 4)
  {
    v61 = 0;
    v25 = [v11 subdataWithRange:{2, 2}];
    [v25 getBytes:&v61 length:2];

    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v71 = bswap32(v61) >> 16;
      v27 = "Fatal Copernicus Error: 0x%04X";
      v28 = v26;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 8;
LABEL_39:
      _os_log_impl(&dword_22EEF5000, v28, v29, v27, buf, v30);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v41 = ATLLogObject();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v71 = v23;
    v72 = 1024;
    v73 = [(CopernicusDecoder *)self state];
    _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEFAULT, "Received event 0x%02X in state %d", buf, 0xEu);
  }

  v42 = [(CopernicusDecoder *)self state];
  if (v42 > 2)
  {
    if ((v42 - 3) < 2)
    {
      v43 = [(CopernicusDecoder *)self handleEventInDummy:v23 eventData:v11 appletAID:v12 error:a8];
      goto LABEL_48;
    }

    if (v42 == 5)
    {
      v26 = ATLLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "Transaction already ended . . .";
        v28 = v26;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 2;
        goto LABEL_39;
      }

LABEL_40:

      goto LABEL_32;
    }

LABEL_42:
    v50 = ATLLogObject();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = [(CopernicusDecoder *)self state];
      *buf = 67109120;
      v71 = v51;
      _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Invalid state %d", buf, 8u);
    }

    v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid state %d", -[CopernicusDecoder state](self, "state")];
    v15 = v52;
    if (!a8)
    {
      goto LABEL_31;
    }

    v53 = *a8;
    v54 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v56 = *MEMORY[0x277CCA7E8];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = v56;
      v63[0] = v52;
      v63[1] = v53;
      v57 = MEMORY[0x277CBEAC0];
      v58 = v63;
      v59 = v62;
      v60 = 2;
    }

    else
    {
      v64 = *MEMORY[0x277CCA450];
      v65 = v52;
      v57 = MEMORY[0x277CBEAC0];
      v58 = &v65;
      v59 = &v64;
      v60 = 1;
    }

    v44 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:v60];
    v45 = v54;
    v46 = 8;
    goto LABEL_30;
  }

  if (!v42)
  {
    v43 = [(CopernicusDecoder *)self handleEventInIdle:v23 eventVersion:v24 eventData:v11 appletAID:v12 error:a8];
    goto LABEL_48;
  }

  if (v42 == 1)
  {
    v43 = [(CopernicusDecoder *)self handleEventInStandard:v23 eventData:v11 appletAID:v12 error:a8];
    goto LABEL_48;
  }

  if (v42 != 2)
  {
    goto LABEL_42;
  }

  v43 = [(CopernicusDecoder *)self handleEventInFast:v23 eventData:v11 appletAID:v12 error:a8];
LABEL_48:
  v47 = v43;
LABEL_33:

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)handleEventInStandard:(unsigned __int8)a3 eventData:(id)a4 appletAID:(id)a5 error:(id *)a6
{
  v8 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v8 > 7)
  {
    if (v8 <= 10)
    {
      if (v8 == 8)
      {
        v13 = [(CopernicusDecoder *)self handleFailureWithImmediateExit:8 appletAID:v11 error:a6];
      }

      else
      {
        if (v8 == 9)
        {
          goto LABEL_20;
        }

        v13 = [(CopernicusDecoder *)self handleApplicationSpecific:v10 appletAID:v11 error:a6];
      }

      goto LABEL_19;
    }

    if ((v8 - 14) < 2)
    {
      goto LABEL_20;
    }

    if (v8 == 11)
    {
      v13 = [(CopernicusDecoder *)self handleFailure:11 appletAID:v11 error:a6];
      goto LABEL_19;
    }

    if (v8 == 13)
    {
      v13 = [(CopernicusDecoder *)self handleMessageInExchange:v10 appletAID:v11 error:a6];
      goto LABEL_19;
    }
  }

  else
  {
    if ((v8 - 3) < 5 || v8 == 1)
    {
      goto LABEL_20;
    }

    if (v8 == 2)
    {
      v13 = [(CopernicusDecoder *)self handleControlFlow:v10 appletAID:v11 error:a6];
LABEL_19:
      v12 = v13;
      goto LABEL_20;
    }
  }

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v8;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%02X, ignoring", v17, 8u);
  }

  v12 = 0;
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)handleEventInFast:(unsigned __int8)a3 eventData:(id)a4 appletAID:(id)a5 error:(id *)a6
{
  v8 = a3;
  v21[9] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v8 > 7)
  {
    if (v8 <= 0xF)
    {
      if (((1 << v8) & 0x6600) != 0)
      {
        goto LABEL_20;
      }

      if (v8 == 11)
      {
        if ([CopernicusDecoder isAutomotiveAID:v11])
        {
          v14 = [(CopernicusDecoder *)self endPointIdentifier];
          [(CopernicusDecoder *)self setState:5];
          v20[0] = @"EventType";
          v20[1] = @"appletIdentifier";
          v21[0] = @"EndEvent";
          v21[1] = v11;
          v20[2] = @"didError";
          v20[3] = @"command";
          v21[2] = &unk_2843C6518;
          v21[3] = &unk_2843C6548;
          v20[4] = @"endPointIdentifier";
          v20[5] = @"informative";
          v21[4] = v14;
          v21[5] = &unk_2843C6518;
          v20[6] = @"BackgroundTransaction";
          v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
          v21[6] = v15;
          v21[7] = &unk_2843C6560;
          v20[7] = @"ptaTransactionMode";
          v20[8] = @"result";
          v21[8] = &unk_2843C6578;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:9];

          goto LABEL_20;
        }

        v13 = [(CopernicusDecoder *)self handleFailure:11 appletAID:v11 error:a6];
        goto LABEL_19;
      }

      if (v8 == 15)
      {
        v12 = 0;
        self->_state = 1;
        goto LABEL_20;
      }
    }

    if (v8 == 8)
    {
      v13 = [(CopernicusDecoder *)self handleFailureWithImmediateExit:8 appletAID:v11 error:a6];
      goto LABEL_19;
    }
  }

  else
  {
    if ((v8 - 3) < 5 || v8 == 1)
    {
      goto LABEL_20;
    }

    if (v8 == 2)
    {
      v13 = [(CopernicusDecoder *)self handleControlFlow:v10 appletAID:v11 error:a6];
LABEL_19:
      v12 = v13;
      goto LABEL_20;
    }
  }

  v16 = ATLLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = v8;
    _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Unknown event type 0x%02X, ignoring", v19, 8u);
  }

  v12 = 0;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)handleControlFlow:(id)a3 appletAID:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] <= 3)
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = 4;
      *&buf[12] = 1024;
      *&buf[14] = [v8 length];
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Event type 0x02 expected length 0x%lx got 0x%x", buf, 0x12u);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event type 0x02 expected length 0x%lx got 0x%x", 4, objc_msgSend(v8, "length")];
    v12 = v11;
    if (!a5)
    {
      goto LABEL_31;
    }

    v13 = *a5;
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v16;
      v51[0] = v11;
      v51[1] = v13;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v51;
      v19 = v50;
LABEL_17:
      v28 = 2;
LABEL_30:
      v39 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v28];
      *a5 = [v14 errorWithDomain:@"ATL" code:3 userInfo:v39];

LABEL_31:
      v38 = 0;
      goto LABEL_32;
    }

    v52 = *MEMORY[0x277CCA450];
    v53 = v11;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v53;
    v19 = &v52;
    goto LABEL_29;
  }

  v20 = [(CopernicusDecoder *)self endPointIdentifier];

  if (!v20)
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Control flow with no endPointIdentifier?!", buf, 2u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Control flow with no endPointIdentifier?!"];
    v12 = v25;
    if (!a5)
    {
      goto LABEL_31;
    }

    v26 = *a5;
    v14 = MEMORY[0x277CCA9B8];
    if (*a5)
    {
      v27 = *MEMORY[0x277CCA7E8];
      v46[0] = *MEMORY[0x277CCA450];
      v46[1] = v27;
      v47[0] = v25;
      v47[1] = v26;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v47;
      v19 = v46;
      goto LABEL_17;
    }

    v48 = *MEMORY[0x277CCA450];
    v49 = v25;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v49;
    v19 = &v48;
LABEL_29:
    v28 = 1;
    goto LABEL_30;
  }

  v21 = [v8 bytes];
  v22 = *(v21 + 2);
  if (v22 >= 2)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(v21 + 2);
      *buf = 67109120;
      *&buf[4] = v29;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring CF with P1 0x%X", buf, 8u);
    }

    goto LABEL_31;
  }

  v23 = *(v21 + 2) && [(CopernicusDecoder *)self state]== 1 && [CopernicusDecoder isAutomotiveAID:v9];
  v12 = [(CopernicusDecoder *)self endPointIdentifier];
  v30 = [(CopernicusDecoder *)self state];
  [(CopernicusDecoder *)self setState:5];
  v44[0] = @"EventType";
  v44[1] = @"appletIdentifier";
  v45[0] = @"EndEvent";
  v45[1] = v9;
  v44[2] = @"didError";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:v22 == 0];
  v45[2] = v42;
  v45[3] = &unk_2843C6590;
  v44[3] = @"command";
  v44[4] = @"endPointIdentifier";
  v45[4] = v12;
  v44[5] = @"informative";
  v31 = [MEMORY[0x277CCABB0] numberWithInt:__rev16(*(v21 + 2))];
  v45[5] = v31;
  v44[6] = @"BackgroundTransaction";
  v43 = v9;
  v32 = [MEMORY[0x277CCABB0] numberWithInt:{-[CopernicusDecoder transactionType](self, "transactionType") == 5}];
  v45[6] = v32;
  v44[7] = @"result";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(v22 != 0) << 6];
  v45[7] = v33;
  v44[8] = @"ptaTransactionMode";
  if (v30 == 2)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
  v45[8] = v35;
  v45[9] = MEMORY[0x277CBEC28];
  v44[9] = @"DontWaitForEOT";
  v44[10] = @"ForceExpressExit";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  v45[10] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:11];
  v38 = [v37 mutableCopy];

  v9 = v43;
  if (+[CopernicusDecoder isHomeAID:](CopernicusDecoder, "isHomeAID:", v43) && [v8 length] >= 5)
  {
    *buf = [v8 bytes] + 4;
    *&buf[8] = [v8 length] - 4;
    [(CopernicusDecoder *)self parseHomeSpecificCFParameters:buf into:v38];
  }

LABEL_32:

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)handleApplicationSpecific:(id)a3 appletAID:(id)a4 error:(id *)a5
{
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(CopernicusDecoder *)self endPointIdentifier];

  if (!v10)
  {
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Application Specific with no endpoint identifier?", buf, 2u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Application Specific with no endpoint identifier?"];
    v13 = v22;
    if (!a5)
    {
      goto LABEL_29;
    }

    v23 = *a5;
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v49[0] = *MEMORY[0x277CCA450];
      v49[1] = v25;
      v50[0] = v22;
      v50[1] = v23;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v50;
      v20 = v49;
      goto LABEL_13;
    }

    v51 = *MEMORY[0x277CCA450];
    v52[0] = v22;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v52;
    v20 = &v51;
LABEL_27:
    v26 = 1;
    goto LABEL_28;
  }

  if ([v8 length] <= 3)
  {
    v11 = ATLLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = [v8 length];
      _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Event Application Specific too small %u", buf, 8u);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Event Application Specific too small %u", objc_msgSend(v8, "length")];
    v13 = v12;
    if (!a5)
    {
      goto LABEL_29;
    }

    v14 = *a5;
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v45[0] = *MEMORY[0x277CCA450];
      v45[1] = v17;
      v46[0] = v12;
      v46[1] = v14;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v46;
      v20 = v45;
LABEL_13:
      v26 = 2;
LABEL_28:
      v37 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v26];
      *a5 = [v15 errorWithDomain:@"ATL" code:3 userInfo:v37];

LABEL_29:
LABEL_30:
      v31 = 0;
      goto LABEL_31;
    }

    v47 = *MEMORY[0x277CCA450];
    v48 = v12;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v48;
    v20 = &v47;
    goto LABEL_27;
  }

  v27 = [v8 bytes];
  if (![CopernicusDecoder supportsStepUp:v9]|| *(v27 + 2) != 64 || *(v27 + 3) != 160)
  {
    v34 = ATLLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(v27 + 2);
      v36 = *(v27 + 3);
      *buf = 138412802;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = v35;
      v41 = 1024;
      v42 = v36;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "Not interested in Application Specific for AID %@ P1 0x%X P2 0x%X", buf, 0x18u);
    }

    goto LABEL_30;
  }

  [(CopernicusDecoder *)self setState:5];
  v43[0] = @"EventType";
  v43[1] = @"StepUpReaderData";
  stepUpData = self->_stepUpData;
  v44[0] = @"StepUpRequested";
  v44[1] = stepUpData;
  v44[2] = v9;
  v43[2] = @"appletIdentifier";
  v43[3] = @"endPointIdentifier";
  v29 = [(CopernicusDecoder *)self endPointIdentifier];
  v44[3] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  v31 = [v30 mutableCopy];

  v32 = [(CopernicusDecoder *)self readerIdentifier];

  if (v32)
  {
    v33 = [(CopernicusDecoder *)self readerIdentifier];
    [v31 setObject:v33 forKeyedSubscript:@"readerIdentifier"];
  }

  if (+[CopernicusDecoder isHomeAID:](CopernicusDecoder, "isHomeAID:", v9) && [v8 length] >= 5)
  {
    *buf = [v8 bytes] + 4;
    *&buf[8] = [v8 length] - 4;
    [(CopernicusDecoder *)self parseHomeSpecificCFParameters:buf into:v31];
  }

LABEL_31:

  v38 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)handleMessageInExchange:(id)a3 appletAID:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (+[CopernicusDecoder supportsStepUp:](CopernicusDecoder, "supportsStepUp:", a4) && [v7 length] >= 3)
  {
    v8 = [v7 length] - 3;
    v16[0] = [v7 bytes] + 2;
    v16[1] = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__CopernicusDecoder_handleMessageInExchange_appletAID_error___block_invoke;
    v14[3] = &unk_278874BC8;
    v14[4] = self;
    v15 = v7;
    v9 = DERDecodeSequenceWithBlock(v16, v14);
    if (v9)
    {
      v10 = v9;
      v11 = ATLLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = v10;
        _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_ERROR, "Failed to decode contents of EXCHANGE %d", buf, 8u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __61__CopernicusDecoder_handleMessageInExchange_appletAID_error___block_invoke(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a2 != 0xC000000000000000)
  {
    v5 = ATLLogObject();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = *a2;
    v14 = 134217984;
    v15 = v10;
    v6 = "Ignoring exchange tag 0x%llx";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
    v9 = 12;
    goto LABEL_10;
  }

  if (a2[2] != 32)
  {
    v5 = ATLLogObject();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v11 = a2[2];
    v14 = 134217984;
    v15 = v11;
    v6 = "StepUp -- invalid length %zx for shared secret";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_9;
  }

  v4 = [*(a1 + 40) subdataWithRange:{4, 32}];
  [*(*(a1 + 32) + 32) setObject:v4 forKeyedSubscript:@"SharedSecret"];

  v5 = ATLLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    v6 = "StepUp - got shared secret over exchange";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
LABEL_10:
    _os_log_impl(&dword_22EEF5000, v7, v8, v6, &v14, v9);
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "CopernicusDecoder doesn't support GetState", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CopernicusDecoder doesn't support GetState"];
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

+ (BOOL)supportsStepUp:(id)a3
{
  v3 = a3;
  v4 = [CopernicusDecoder isHomeAID:v3]|| [CopernicusDecoder isHydraAID:v3];

  return v4;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = &unk_2843C6500;
  if (![CopernicusDecoder isHomeAID:v7]&& ![CopernicusDecoder isHydraAID:v7])
  {
    v8 = &unk_2843C6518;
  }

  v12[0] = @"Supported";
  v12[1] = @"DelayExpressReentry";
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Copernicus decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Copernicus decoder doesn't expect processEndOfTransaction"];
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

- (void)parseHomeSpecificCFParameters:(id *)a3 into:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __62__CopernicusDecoder_Home__parseHomeSpecificCFParameters_into___block_invoke;
  v17 = &unk_278874BC8;
  v18 = self;
  v7 = v6;
  v19 = v7;
  v8 = DERDecodeSequenceWithBlock(a3, &v14);
  if (v8)
  {
    v9 = v8;
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CBEA90] dataWithDERItem:{a3, v14, v15, v16, v17, v18}];
      v12 = [v11 asHexString];
      *buf = 67109378;
      v21 = v9;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to parse additional HomeKit data (%d) - %@", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __62__CopernicusDecoder_Home__parseHomeSpecificCFParameters_into___block_invoke(uint64_t a1, void *a2)
{
  if (*a2 == 0x400000000000000DLL)
  {
    v3 = [*(a1 + 32) _stringFromASCIIBytes:a2 + 1];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = @"HomeKitModel";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  if (*a2 == 0x400000000000000CLL)
  {
    v3 = [*(a1 + 32) _stringFromASCIIBytes:a2 + 1];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = @"HomeKitManufacturer";
LABEL_7:
      [v4 setObject:v3 forKeyedSubscript:v5];
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 0;
}

- (id)_stringFromASCIIBytes:(id *)a3
{
  var1 = a3->var1;
  if (var1)
  {
    var0 = a3->var0;
    while (1)
    {
      v5 = *var0++;
      if (v5 < 0)
      {
        break;
      }

      if (!--var1)
      {
        goto LABEL_5;
      }
    }

    v6 = 0;
  }

  else
  {
LABEL_5:
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3->var0 length:a3->var1 encoding:1];
  }

  return v6;
}

@end