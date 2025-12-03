@interface MercuryDecoder
+ (BOOL)IsIncompatibleApplet:(unsigned int)applet sw:(unsigned __int16)sw;
+ (BOOL)isSpecialBusErrorFor45299868:(id)for45299868 state:(id)state transaction:(id)transaction;
+ (id)DecodeE1TLV:(id *)v transactionInfo:(id *)info error:(id *)error;
+ (id)DecodeE456TLV:(id *)v currencyExponent:(id)exponent error:(id *)error;
+ (id)parseActivityTimeout:(id)timeout withApplet:(id)applet error:(id *)error;
+ (id)parseEndEvent:(id)event withApplet:(id)applet moduleAID:(id)d error:(id *)error;
+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
+ (void)ApplyHackFor50863616:(id)for50863616 historyRecords:(id)records transceiver:(id)transceiver;
+ (void)RemoveMatchedTapIns:(id)ins transactionsInProgress:(id)progress;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation MercuryDecoder

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v51[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  moduleCopy = module;
  if (![eventCopy length])
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Empty eventData?", buf, 2u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Empty eventData?"];
    v18 = v17;
    if (!error)
    {
      goto LABEL_24;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v48[0] = *MEMORY[0x277CCA450];
      v48[1] = v21;
      v49[0] = v17;
      v49[1] = v19;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v49;
      v24 = v48;
      v25 = 2;
    }

    else
    {
      v50 = *MEMORY[0x277CCA450];
      v51[0] = v17;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v51;
      v24 = &v50;
      v25 = 1;
    }

    v37 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    v38 = v20;
    v39 = 6;
    goto LABEL_23;
  }

  v14 = *[eventCopy bytes];
  switch(v14)
  {
    case 0x10:
      v15 = [MercuryDecoder parseActivityTimeout:eventCopy withApplet:appletCopy error:error];
      goto LABEL_13;
    case 2:
      v15 = [MercuryDecoder parseEndEvent:eventCopy withApplet:appletCopy moduleAID:moduleCopy error:error];
      goto LABEL_13;
    case 1:
      v15 = [MercuryDecoder parseStartEvent:eventCopy withApplet:appletCopy error:error];
LABEL_13:
      v26 = v15;
      goto LABEL_25;
  }

  v27 = ATLLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v47 = v14;
    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x", buf, 8u);
  }

  v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x", v14];
  v18 = v28;
  if (error)
  {
    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA450];
      v42[1] = v32;
      v43[0] = v28;
      v43[1] = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v43;
      v35 = v42;
      v36 = 2;
    }

    else
    {
      v44 = *MEMORY[0x277CCA450];
      v45 = v28;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v45;
      v35 = &v44;
      v36 = 1;
    }

    v37 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    v38 = v30;
    v39 = 3;
LABEL_23:
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];
  }

LABEL_24:

  v26 = 0;
LABEL_25:

  v40 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  moduleCopy = module;
  v12 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v13 = SelectByNameCmd(v12);

  v14 = [historyCopy transceiveAndCheckSW:v13 error:error];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&getAppletStateAndHistory_withApplet_withPackage_withModule_withError__getE1Cmd length:5 freeWhenDone:0];
    v16 = [historyCopy transceiveAndCheckSW:v15 error:error];
    v17 = v16;
    if (v16)
    {
      v48[0] = [v16 bytes];
      v48[1] = [v17 length];
      v18 = [MercuryDecoder DecodeE1TLV:v48 transactionInfo:0 error:error];
      if (v18)
      {
        v40 = v14;
        v41 = v17;
        v42 = v15;
        v43 = v13;
        v44 = moduleCopy;
        v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
        v47 = 0;
        v46 = 52352;
        v20 = [MEMORY[0x277CBEB28] dataWithBytes:&v46 length:5];
        v45 = 1;
        v39 = 138412290;
        do
        {
          [v20 replaceBytesInRange:3 withBytes:1 length:{&v45, 1, v39}];
          v21 = [historyCopy transceiveAndCheckSW:v20 error:error];
          if (!v21)
          {
            v31 = 0;
            goto LABEL_30;
          }

          v22 = v21;
          if ([v21 length])
          {
            v53 = 0uLL;
            *&v53 = [v22 bytes];
            *(&v53 + 1) = [v22 length];
            v23 = [v18 objectForKeyedSubscript:@"CardCurrencyExponent"];
            v24 = [MercuryDecoder DecodeE456TLV:&v53 currencyExponent:v23 error:error];

            if (v24)
            {
              [v19 addObject:v24];
            }

            else
            {
              bytes = [v22 bytes];
              v26 = [v22 length];
              LogBinary(OS_LOG_TYPE_ERROR, "[MercuryDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:]", 127, bytes, v26, @"Skipping invalid transaction info:", v27, v28, v39);
              if (error && *error)
              {
                v29 = ATLLogObject();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = *error;
                  *buf = v39;
                  v52 = v30;
                  _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Swallowing txn error %@", buf, 0xCu);
                }

                *error = 0;
              }
            }
          }

          ++v45;
        }

        while (v45 <= 0xAu);
        v32 = [v18 objectForKeyedSubscript:@"TransactionInProgress"];
        [MercuryDecoder RemoveMatchedTapIns:v19 transactionsInProgress:v32];

        v33 = [v18 objectForKeyedSubscript:@"SPRaw"];
        unsignedIntegerValue = [v33 unsignedIntegerValue];

        if (unsignedIntegerValue == 16)
        {
          [MercuryDecoder ApplyHackFor50863616:v18 historyRecords:v19 transceiver:historyCopy];
        }

        if (+[AppletTranslator isInternalBuild])
        {
          v35 = [AppletConfigurationData extraDebugScriptForModule:v44];
          if (v35)
          {
            [historyCopy applyScript:v35 ignoreSW:1 error:0];
          }

          v36 = ATLLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v53) = v39;
            *(&v53 + 4) = v35;
            _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEFAULT, "Script executed: %@", &v53, 0xCu);
          }
        }

        v49[0] = @"State";
        v49[1] = @"TransactionHistory";
        v50[0] = v18;
        v50[1] = v19;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
LABEL_30:

        v13 = v43;
        moduleCopy = v44;
        v17 = v41;
        v15 = v42;
        v14 = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 9)
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = [eventCopy length];
      v43 = 2048;
      v44 = 9;
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Start event length %zu (exp) %zu", buf, 0x16u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 9];
    v10 = v15;
    if (error)
    {
      v16 = *error;
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v37[0] = *MEMORY[0x277CCA450];
        v37[1] = v19;
        v38[0] = v15;
        v38[1] = v16;
        v20 = MEMORY[0x277CBEAC0];
        v21 = v38;
        v22 = v37;
LABEL_14:
        v28 = 2;
LABEL_19:
        v11 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v28];
        [v17 errorWithDomain:@"ATL" code:3 userInfo:v11];
        *error = v13 = 0;
        goto LABEL_20;
      }

      v39 = *MEMORY[0x277CCA450];
      v40 = v15;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v40;
      v22 = &v39;
LABEL_18:
      v28 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_21;
  }

  bytes = [eventCopy bytes];
  if (*(bytes + 1) != 2)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(bytes + 1);
      *buf = 67109120;
      LODWORD(v42) = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Start event version %u", buf, 8u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start event version %u", *(bytes + 1)];
    v10 = v25;
    if (error)
    {
      v26 = *error;
      v17 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v33[0] = *MEMORY[0x277CCA450];
        v33[1] = v27;
        v34[0] = v25;
        v34[1] = v26;
        v20 = MEMORY[0x277CBEAC0];
        v21 = v34;
        v22 = v33;
        goto LABEL_14;
      }

      v35 = *MEMORY[0x277CCA450];
      v36 = v25;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v36;
      v22 = &v35;
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v31[0] = @"EventType";
  v31[1] = @"appletIdentifier";
  v32[0] = @"StartEvent";
  v32[1] = appletCopy;
  v31[2] = @"Version";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:2];
  v32[2] = v10;
  v31[3] = @"command";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(*(bytes + 5))];
  v32[3] = v11;
  v31[4] = @"selectStatus";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(bytes + 2)) >> 16];
  v31[5] = @"IgnoreRFEvents";
  v31[6] = @"DontWaitForEOT";
  v32[4] = v12;
  v32[5] = MEMORY[0x277CBEC38];
  v32[6] = MEMORY[0x277CBEC38];
  v32[7] = MEMORY[0x277CBEC38];
  v31[7] = @"RequiresPowerCycle";
  v31[8] = @"DelayExpressReentry";
  v32[8] = &unk_2843C66F8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:9];

LABEL_20:
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)parseEndEvent:(id)event withApplet:(id)applet moduleAID:(id)d error:(id *)error
{
  v78[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  dCopy = d;
  if ([eventCopy length] <= 0x2C)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "End event length %zu", &buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu", objc_msgSend(eventCopy, "length")];
    v15 = v14;
    if (!error)
    {
      goto LABEL_35;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v19 = *MEMORY[0x277CCA7E8];
      v75[0] = *MEMORY[0x277CCA450];
      v75[1] = v19;
      v76[0] = v14;
      v76[1] = v16;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v76;
      v22 = v75;
LABEL_28:
      v54 = 2;
LABEL_34:
      v55 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v54];
      *error = [v17 errorWithDomain:@"ATL" code:3 userInfo:v55];

LABEL_35:
      v43 = 0;
      goto LABEL_36;
    }

    v77 = *MEMORY[0x277CCA450];
    v78[0] = v14;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v78;
    v22 = &v77;
    goto LABEL_33;
  }

  bytes = [eventCopy bytes];
  v24 = bytes;
  if (*(bytes + 1) != 2)
  {
    v48 = ATLLogObject();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = *(v24 + 1);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v49;
      _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "End event version %u", &buf, 8u);
    }

    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event version %u", *(v24 + 1)];
    v15 = v50;
    if (!error)
    {
      goto LABEL_35;
    }

    v51 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v53 = *MEMORY[0x277CCA7E8];
      v71[0] = *MEMORY[0x277CCA450];
      v71[1] = v53;
      v72[0] = v50;
      v72[1] = v51;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v72;
      v22 = v71;
      goto LABEL_28;
    }

    v73 = *MEMORY[0x277CCA450];
    v74 = v50;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v74;
    v22 = &v73;
LABEL_33:
    v54 = 1;
    goto LABEL_34;
  }

  *&buf = bytes + 44;
  *(&buf + 1) = [eventCopy length] - 44;
  v67 = 0;
  v25 = [MercuryDecoder DecodeE1TLV:&buf transactionInfo:&v67 error:error];
  v26 = v67;
  if (v25)
  {
    v65 = dCopy;
    v66 = appletCopy;
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v64 = v25;
    [v27 setObject:v25 forKeyedSubscript:@"State"];
    if (v26)
    {
      [v27 setObject:v26 forKeyedSubscript:@"Transaction"];
    }

    v63 = v27;
    v28 = bswap32(*(v24 + 4));
    v29 = bswap32(*(v24 + 2)) >> 16;
    v30 = [MercuryDecoder IsIncompatibleApplet:v28 sw:v29];
    v31 = *(v24 + 40);
    if (v30)
    {
      v32 = -4092;
    }

    else
    {
      v32 = 64;
    }

    v33 = v31 == 1;
    if (v31 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v58 = v34;
    v35 = [self isSpecialBusErrorFor45299868:v65 state:v64 transaction:v26];
    v60 = MEMORY[0x277CBEB38];
    v68[0] = @"EventType";
    v68[1] = @"appletIdentifier";
    v69[0] = @"EndEvent";
    v69[1] = v66;
    v68[2] = @"Version";
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v24 + 1)];
    v69[2] = v62;
    v68[3] = @"transactionIdentifier";
    v61 = [MEMORY[0x277CBEA90] dataWithBytes:v24 + 8 length:32];
    asHexString = [v61 asHexString];
    v69[3] = asHexString;
    v68[4] = @"didError";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:((v33 || v30) | v35) & 1];
    v69[4] = v36;
    v68[5] = @"command";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
    v69[5] = v37;
    v68[6] = @"status";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
    v69[6] = v38;
    v68[7] = @"result";
    0xFFFC = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v58 & 0xFFFC];
    v69[7] = 0xFFFC;
    v68[8] = @"informative";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(*(v24 + 42)) >> 16];
    v69[8] = v40;
    v69[9] = &unk_2843C6710;
    v68[9] = @"type";
    v68[10] = @"tlv";
    v41 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
    v68[11] = @"parsedInfo";
    v69[10] = v41;
    v69[11] = v63;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:12];
    v43 = [v60 dictionaryWithDictionary:v42];

    if (v26)
    {
      v44 = [v26 objectForKeyedSubscript:@"Amount"];

      if (v44)
      {
        v45 = [v26 objectForKeyedSubscript:@"Amount"];
        [v43 setObject:v45 forKeyedSubscript:@"amount"];
      }
    }

    v25 = v64;
    v46 = [v64 objectForKeyedSubscript:@"CardCurrency"];

    if (v46)
    {
      v47 = [v64 objectForKeyedSubscript:@"CardCurrency"];
      [v43 setObject:v47 forKeyedSubscript:@"currency"];
    }

    dCopy = v65;
    appletCopy = v66;
  }

  else
  {
    v43 = 0;
  }

LABEL_36:
  v56 = *MEMORY[0x277D85DE8];

  return v43;
}

+ (id)parseActivityTimeout:(id)timeout withApplet:(id)applet error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  appletCopy = applet;
  if ([timeoutCopy length] != 11)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v60 = [timeoutCopy length];
      *&v60[8] = 2048;
      v61 = 11;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Activity param length %zu (exp %zu)", buf, 0x16u);
    }

    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Activity param length %zu (exp %zu)", objc_msgSend(timeoutCopy, "length"), 11];
    v25 = v24;
    if (!error)
    {
      goto LABEL_23;
    }

    v26 = *error;
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v55[0] = *MEMORY[0x277CCA450];
      v55[1] = v29;
      v56[0] = v24;
      v56[1] = v26;
      v30 = MEMORY[0x277CBEAC0];
      v31 = v56;
      v32 = v55;
LABEL_17:
      v39 = 2;
LABEL_22:
      v40 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v39];
      *error = [v27 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_23:
      v22 = 0;
      goto LABEL_24;
    }

    v57 = *MEMORY[0x277CCA450];
    v58 = v24;
    v30 = MEMORY[0x277CBEAC0];
    v31 = &v58;
    v32 = &v57;
LABEL_21:
    v39 = 1;
    goto LABEL_22;
  }

  bytes = [timeoutCopy bytes];
  v10 = bytes;
  if (*(bytes + 1) != 2)
  {
    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v10 + 1);
      *buf = 67109376;
      *v60 = v34;
      *&v60[4] = 1024;
      *&v60[6] = 2;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Activity Timeout got vers %u exp %u", buf, 0xEu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Activity Timeout got vers %u exp %u", *(v10 + 1), 2];
    v25 = v35;
    if (!error)
    {
      goto LABEL_23;
    }

    v36 = *error;
    v27 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v38;
      v52[0] = v35;
      v52[1] = v36;
      v30 = MEMORY[0x277CBEAC0];
      v31 = v52;
      v32 = v51;
      goto LABEL_17;
    }

    v53 = *MEMORY[0x277CCA450];
    v54 = v35;
    v30 = MEMORY[0x277CBEAC0];
    v31 = &v54;
    v32 = &v53;
    goto LABEL_21;
  }

  v11 = bswap32(*(bytes + 5));
  v12 = bswap32(*(bytes + 3)) >> 16;
  v13 = [MercuryDecoder IsIncompatibleApplet:v11 sw:v12];
  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v60 = v11;
    *&v60[4] = 1024;
    *&v60[6] = v12;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v13;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEFAULT, "Timeout! Last cmd 0x%x sw 0x%x incompatible %d", buf, 0x14u);
  }

  if (v13)
  {
    v49[0] = @"EventType";
    v49[1] = @"appletIdentifier";
    v50[0] = @"EndEvent";
    v50[1] = appletCopy;
    v49[2] = @"Version";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 1)];
    v50[2] = v15;
    v50[3] = MEMORY[0x277CBEC38];
    v49[3] = @"didError";
    v49[4] = @"command";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
    v50[4] = v16;
    v49[5] = @"status";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
    v50[5] = v17;
    v49[6] = @"TimeOutValue";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v10 + 9)];
    v50[6] = v18;
    v50[7] = &unk_2843C6728;
    v49[7] = @"result";
    v49[8] = @"type";
    v50[8] = &unk_2843C6710;
    v49[9] = @"parsedInfo";
    v47 = @"State";
    v45 = @"SPRaw";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 2)];
    v46 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v48 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v50[9] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:10];
  }

  else
  {
    v43[0] = @"EventType";
    v43[1] = @"Result";
    v44[0] = @"ActivityTimeout";
    v44[1] = @"Success";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  }

LABEL_24:

  v41 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)DecodeE1TLV:(id *)v transactionInfo:(id *)info error:(id *)error
{
  v122[1] = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  v8 = DERDecodeItemCtx(v, &v92);
  if (!v8)
  {
    if (v92 != 0xE000000000000001)
    {
      LogBinary(OS_LOG_TYPE_ERROR, "+[MercuryDecoder DecodeE1TLV:transactionInfo:error:]", 333, v->var0, v->var1, @"Unexpected tag 0x%llx, skipping to contents...", v9, v10, v92);
      v93 = *v;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v112 = 0u;
    buf = 0u;
    memset(v111, 0, sizeof(v111));
    v23 = DERParseSequenceSpec(&v93, &e1ContentSpec, &buf, 0xA0uLL);
    if (v23)
    {
      v24 = v23;
      v25 = ATLLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v102 = 67109120;
        LODWORD(v103) = v24;
        _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Failed to decode E1 contents %d", v102, 8u);
      }

      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 contents %d", v24];
      v27 = v26;
      if (!error)
      {
        v37 = 0;
LABEL_62:

        goto LABEL_63;
      }

      v28 = *error;
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v31 = *MEMORY[0x277CCA7E8];
        v106[0] = *MEMORY[0x277CCA450];
        v106[1] = v31;
        v107[0] = v26;
        v107[1] = v28;
        v32 = MEMORY[0x277CBEAC0];
        v33 = v107;
        v34 = v106;
        v35 = 2;
      }

      else
      {
        v108 = *MEMORY[0x277CCA450];
        v109 = v26;
        v32 = MEMORY[0x277CBEAC0];
        v33 = &v109;
        v34 = &v108;
        v35 = 1;
      }

      v38 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
      [v29 errorWithDomain:@"ATL" code:3 userInfo:v38];
      *error = v37 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v104[0] = &unk_2843C6740;
    v104[1] = &unk_2843C6758;
    v105[0] = @"Pioneer";
    v105[1] = @"Galileo";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
    if (*(&buf + 1) && ([MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "objectForKeyedSubscript:", v39), v40 = objc_claimAutoreleasedReturnValue(), v39, v40))
    {
      [v27 setObject:v40 forKeyedSubscript:@"SP"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf];
      [v27 setObject:v41 forKeyedSubscript:@"SPRaw"];

      if (v111[1])
      {
        v42 = [MEMORY[0x277CBEA90] dataWithDERItem:v111];
        [v27 setObject:v42 forKeyedSubscript:@"CardIdentifier"];
      }

      v91 = 0x7FFF;
      if (!*(&v112 + 1))
      {
        goto LABEL_30;
      }

      v43 = DecodeBCD(&v112);
      v44 = [ATLCurrency currencyCodeForNumber:v43 exponentOut:&v91];
      if (v44)
      {
        v45 = v44;
        [v27 setObject:v44 forKeyedSubscript:@"CardCurrency"];
        v46 = [MEMORY[0x277CCABB0] numberWithShort:v91];
        [v27 setObject:v46 forKeyedSubscript:@"CardCurrencyExponent"];

        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43];
        [v27 setObject:v47 forKeyedSubscript:@"CardCurrencyCode"];

        if (v91 != 0x7FFF && *(&v113 + 1))
        {
          S32BE = ReadS32BE(&v113);
          if (S32BE >= 0)
          {
            v49 = S32BE;
          }

          else
          {
            v49 = -S32BE;
          }

          v50 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v49 exponent:-v91 isNegative:S32BE >> 31];
          [v27 setObject:v50 forKeyedSubscript:@"Balance"];
        }

LABEL_30:
        if (*(&v114 + 1))
        {
          v51 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v114)];
          [v27 setObject:v51 forKeyedSubscript:@"PointBalance"];
        }

        v52 = *(&v115 + 1);
        if (*(&v115 + 1))
        {
          v53 = *(&v115 + 1) / 3uLL;
          3uLL = [MEMORY[0x277CBEB18] arrayWithCapacity:*(&v115 + 1) / 3uLL];
          if (v52 >= 3)
          {
            v55 = 0;
            do
            {
              v56 = DecodeTransactionDetail((v115 + v55));
              [3uLL addObject:v56];

              v55 += 3;
              --v53;
            }

            while (v53);
          }

          v57 = [MEMORY[0x277CBEA60] arrayWithArray:3uLL];
          [v27 setObject:v57 forKeyedSubscript:@"TransactionInProgress"];
        }

        if (*(&v116 + 1))
        {
          v58 = [MEMORY[0x277CCABB0] numberWithInt:*v116 != 0];
          [v27 setObject:v58 forKeyedSubscript:@"CardDenyListed"];
        }

        if (*(&v117 + 1))
        {
          v59 = MEMORY[0x277CBEAB8];
          v60 = DecodeBCD(v117, 1);
          v61 = DecodeBCD((v117 + 1), 1);
          v62 = [v59 dateWithYear:v60 month:v61 day:{DecodeBCD((v117 + 2), 1)}];
          if ([v62 year] != 99 || objc_msgSend(v62, "month") != 12 || objc_msgSend(v62, "day") != 31)
          {
            [v62 setYear:{objc_msgSend(v62, "year") + 2000}];
            [v27 setObject:v62 forKeyedSubscript:@"CardExpirationDate"];
          }
        }

        if (info && *(&v118 + 1))
        {
          v63 = [v27 objectForKeyedSubscript:@"CardCurrencyExponent"];
          *info = [MercuryDecoder DecodeE456TLV:&v118 currencyExponent:v63 error:error];
        }

        v37 = v27;
        goto LABEL_60;
      }

      v79 = ATLLogObject();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *v102 = 134217984;
        v103 = v43;
        _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_ERROR, "Invalid currency code %llu", v102, 0xCu);
      }

      v80 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid currency code %llu", v43];
      v81 = v80;
      if (error)
      {
        v82 = *error;
        v83 = MEMORY[0x277CCA9B8];
        v84 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v85 = *MEMORY[0x277CCA7E8];
          v94[0] = *MEMORY[0x277CCA450];
          v94[1] = v85;
          v95[0] = v80;
          v95[1] = v82;
          v86 = MEMORY[0x277CBEAC0];
          v87 = v95;
          v88 = v94;
          v89 = 2;
        }

        else
        {
          v96 = *MEMORY[0x277CCA450];
          v97 = v80;
          v86 = MEMORY[0x277CBEAC0];
          v87 = &v97;
          v88 = &v96;
          v89 = 1;
        }

        v90 = [v86 dictionaryWithObjects:v87 forKeys:v88 count:v89];
        *error = [v83 errorWithDomain:@"ATL" code:3 userInfo:v90];
      }
    }

    else
    {
      v64 = ATLLogObject();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
        *v102 = 138412290;
        v103 = v65;
        _os_log_impl(&dword_22EEF5000, v64, OS_LOG_TYPE_ERROR, "Invalid SP identifier %@", v102, 0xCu);
      }

      v66 = objc_alloc(MEMORY[0x277CCACA8]);
      v67 = [MEMORY[0x277CBEA90] dataWithDERItem:&buf];
      v40 = [v66 initWithFormat:@"Invalid SP identifier %@", v67];

      if (error)
      {
        v68 = *error;
        v69 = MEMORY[0x277CCA9B8];
        v70 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v71 = *MEMORY[0x277CCA7E8];
          v98[0] = *MEMORY[0x277CCA450];
          v98[1] = v71;
          v99[0] = v40;
          v99[1] = v68;
          v72 = MEMORY[0x277CBEAC0];
          v73 = v99;
          v74 = v98;
          v75 = 2;
        }

        else
        {
          v100 = *MEMORY[0x277CCA450];
          v101 = v40;
          v72 = MEMORY[0x277CBEAC0];
          v73 = &v101;
          v74 = &v100;
          v75 = 1;
        }

        v76 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:v75];
        *error = [v69 errorWithDomain:@"ATL" code:3 userInfo:v76];
      }
    }

    v37 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v11 = v8;
  v12 = ATLLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v11;
    _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Failed to decode E1 %d", &buf, 8u);
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E1 %d", v11];
  v14 = v13;
  if (error)
  {
    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v119[0] = *MEMORY[0x277CCA450];
      v119[1] = v18;
      v120[0] = v13;
      v120[1] = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v120;
      v21 = v119;
      v22 = 2;
    }

    else
    {
      v121 = *MEMORY[0x277CCA450];
      v122[0] = v13;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v122;
      v21 = &v121;
      v22 = 1;
    }

    v36 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    *error = [v16 errorWithDomain:@"ATL" code:3 userInfo:v36];
  }

  v37 = 0;
LABEL_63:
  v77 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)DecodeE456TLV:(id *)v currencyExponent:(id)exponent error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  exponentCopy = exponent;
  v55 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v8 = DERDecodeItemCtx(v, &v55);
  if (v8 || v55 + 0x1FFFFFFFFFFFFFF9 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v8;
      *&buf[8] = 2048;
      *&buf[10] = v55;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Failed to decode E4,E5,E6 %d 0x%llX", buf, 0x12u);
    }

    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v10 initWithFormat:@"Failed to decode E4, E5, E6 %d 0x%llX", v8, v55];
    v12 = v11;
    if (error)
    {
      v13 = *error;
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v73[0] = *MEMORY[0x277CCA450];
        v73[1] = v16;
        v74[0] = v11;
        v74[1] = v13;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v74;
        v19 = v73;
        v20 = 2;
      }

      else
      {
        v75 = *MEMORY[0x277CCA450];
        v76[0] = v11;
        v17 = MEMORY[0x277CBEAC0];
        v18 = v76;
        v19 = &v75;
        v20 = 1;
      }

      v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      *error = [v14 errorWithDomain:@"ATL" code:3 userInfo:v21];
    }

    error = 0;
    goto LABEL_11;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  memset(buf, 0, sizeof(buf));
  v24 = DERParseSequenceSpec(v56, &e456ContentSpec, buf, 0xB0uLL);
  if (v24)
  {
    v25 = v24;
    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v61 = 67109120;
      v62 = v25;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Failed to decode E4,E5,E6 contents %d", v61, 8u);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode E4, E5, E6 contents %d", v25];
    v28 = v27;
    if (error)
    {
      v29 = *error;
      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v32 = *MEMORY[0x277CCA7E8];
        v57[0] = *MEMORY[0x277CCA450];
        v57[1] = v32;
        v58[0] = v27;
        v58[1] = v29;
        v33 = MEMORY[0x277CBEAC0];
        v34 = v58;
        v35 = v57;
        v36 = 2;
      }

      else
      {
        v59 = *MEMORY[0x277CCA450];
        v60 = v27;
        v33 = MEMORY[0x277CBEAC0];
        v34 = &v60;
        v35 = &v59;
        v36 = 1;
      }

      v51 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
      *error = [v30 errorWithDomain:@"ATL" code:3 userInfo:v51];

      error = 0;
    }

    goto LABEL_59;
  }

  error = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
  if (*&buf[8])
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v37 setYear:{DecodeBCD(*buf, 1)}];
    [v37 setMonth:{DecodeBCD((*buf + 1), 1)}];
    [v37 setDay:{DecodeBCD((*buf + 2), 1)}];
    [v37 setYear:{objc_msgSend(v37, "year") + 2000}];
    if (*&buf[24])
    {
      [v37 setHour:{DecodeBCD(*&buf[16], 1)}];
      [v37 setMinute:{DecodeBCD((*&buf[16] + 1), 1)}];
      [v37 setSecond:{DecodeBCD((*&buf[16] + 2), 1)}];
    }

    [error setObject:v37 forKeyedSubscript:@"TransactionTime"];
  }

  if (exponentCopy && *(&v64 + 1))
  {
    S32BE = ReadS32BE(&v64);
    if (S32BE >= 0)
    {
      v39 = S32BE;
    }

    else
    {
      v39 = -S32BE;
    }

    v40 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v39 exponent:-objc_msgSend(exponentCopy isNegative:{"shortValue"), S32BE >> 31}];
    [error setObject:v40 forKeyedSubscript:@"FinalBalance"];
  }

  if (exponentCopy && *(&v65 + 1))
  {
    v41 = ReadS32BE(&v65);
    if (v41 >= 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = -v41;
    }

    v43 = [MEMORY[0x277CCA980] decimalNumberWithMantissa:v42 exponent:-objc_msgSend(exponentCopy isNegative:{"shortValue"), v41 >> 31}];
    [error setObject:v43 forKeyedSubscript:@"Amount"];
  }

  if (*(&v66 + 1))
  {
    v44 = DecodeTransactionDetail(v66);
    [error setObject:v44 forKeyedSubscript:@"TypeDetail"];

    v45 = [MEMORY[0x277CBEA90] dataWithDERItem:&v66];
    [error setObject:v45 forKeyedSubscript:@"TypeDetailRaw"];
  }

  if (*(&v67 + 1))
  {
    v46 = [MEMORY[0x277CBEA90] dataWithDERItem:&v67];
    if (([v46 isAlLFF] & 1) == 0)
    {
      [error setObject:v46 forKeyedSubscript:@"StartStation"];
    }
  }

  if (*(&v68 + 1))
  {
    v47 = [MEMORY[0x277CBEA90] dataWithDERItem:&v68];
    if (([v47 isAlLFF] & 1) == 0)
    {
      [error setObject:v47 forKeyedSubscript:@"EndStation"];
    }
  }

  if (*(&v69 + 1))
  {
    v48 = [error objectForKeyedSubscript:@"TypeDetailRaw"];
    v49 = v48;
    if (v48)
    {
      v50 = *[v48 bytes] << 24;
    }

    else
    {
      v50 = -16777216;
    }

    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50 | ReadU16BE(&v69)];
    [error setObject:v52 forKeyedSubscript:@"SerialNumber"];
  }

  if (*(&v70 + 1))
  {
    v53 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v70)];
    [error setObject:v53 forKeyedSubscript:@"PointsBalance"];
  }

  if (*(&v71 + 1))
  {
    v54 = [MEMORY[0x277CCABB0] numberWithInt:ReadS32BE(&v71)];
    [error setObject:v54 forKeyedSubscript:@"PointsAmount"];
  }

  if (*(&v72 + 1))
  {
    v28 = [MEMORY[0x277CBEA90] dataWithDERItem:&v72];
    [error setObject:v28 forKeyedSubscript:@"TerminalIdentifier"];
LABEL_59:
  }

LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return error;
}

+ (void)RemoveMatchedTapIns:(id)ins transactionsInProgress:(id)progress
{
  v45 = *MEMORY[0x277D85DE8];
  insCopy = ins;
  progressCopy = progress;
  if ([insCopy count])
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = [insCopy objectAtIndexedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"StartStation"];
      v10 = [v8 objectForKeyedSubscript:@"TypeDetail"];
      v11 = [v8 objectForKeyedSubscript:@"Amount"];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"Amount"];
        v13 = [MEMORY[0x277CCA980] numberWithUnsignedInteger:0];
        v14 = [v12 isEqual:v13];
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v9)
        {
          if (v10)
          {
            v15 = [v8 objectForKeyedSubscript:@"EndStation"];

            if (!v15)
            {
              if (v6 < 1)
              {
                v22 = 0;
              }

              else
              {
                v16 = v7;
                while (1)
                {
                  v17 = [insCopy objectAtIndexedSubscript:v16];
                  v18 = [v17 objectForKeyedSubscript:@"EndStation"];
                  v19 = [v17 objectForKeyedSubscript:@"TypeDetail"];
                  v20 = v19;
                  if (v18)
                  {
                    if (v19 && [v19 isEqual:v10])
                    {
                      break;
                    }
                  }

                  v21 = v16-- + 1;
                  if (v21 <= 1)
                  {
                    v22 = 0;
                    goto LABEL_29;
                  }
                }

                v35 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
                [v35 setObject:v8 forKeyedSubscript:@"MergedStartRecord"];
                v33 = [v35 objectForKeyedSubscript:@"StartStation"];

                if (!v33)
                {
                  [v35 setObject:v9 forKeyedSubscript:@"StartStation"];
                }

                v30 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
                [v30 setObject:@"Merged" forKeyedSubscript:@"IgnoreReason"];
                v34 = [v8 objectForKeyedSubscript:@"SerialNumber"];
                v32 = [v17 objectForKeyedSubscript:@"SerialNumber"];
                log = ATLLogObject();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  if (v34)
                  {
                    intValue = [v34 intValue];
                  }

                  else
                  {
                    intValue = -1;
                  }

                  if (v32)
                  {
                    v29 = intValue;
                    intValue2 = [v32 intValue];
                    intValue = v29;
                  }

                  else
                  {
                    intValue2 = -1;
                  }

                  *buf = 67109888;
                  v38 = v6;
                  v39 = 1024;
                  v40 = intValue;
                  v41 = 1024;
                  v42 = v16;
                  v43 = 1024;
                  v44 = intValue2;
                  _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_DEFAULT, "Merged events %u (SN 0x%x) --> %u (SN 0x%x)", buf, 0x1Au);
                }

                [insCopy setObject:v35 atIndexedSubscript:v16];
                [insCopy setObject:v30 atIndexedSubscript:v6];

                v22 = 1;
              }

LABEL_29:
              if (progressCopy)
              {
                v25 = [progressCopy containsObject:v10];
              }

              else
              {
                v25 = 0;
              }

              v26 = ATLLogObject();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                v38 = v6;
                v39 = 1024;
                v40 = v22;
                v41 = 1024;
                v42 = v25;
                _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_DEFAULT, "Tap-In event %d merged %d enRouteEvent %d", buf, 0x14u);
              }

              if (!(v22 & 1 | ((v25 & 1) == 0)))
              {
                v27 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
                [v27 setObject:@"EnRoute" forKeyedSubscript:@"IgnoreReason"];
                [insCopy setObject:v27 atIndexedSubscript:v6];
              }
            }
          }
        }
      }

      ++v6;
      ++v7;
    }

    while (v6 < [insCopy count]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C66F8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, transceiver, error}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Mercury decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mercury decoder doesn't expect processEndOfTransaction"];
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

+ (BOOL)IsIncompatibleApplet:(unsigned int)applet sw:(unsigned __int16)sw
{
  if ((applet & 0xFFFFFBFF) == 0xA40000 && sw == 27266)
  {
    return 1;
  }

  v6 = applet == 11572480 && sw == 27266;
  v8 = applet != -2142240510 && applet != 11568384 || sw == 36864;
  result = 1;
  if (v8)
  {
    v10 = applet == 8912896 && sw != 36864;
    return v6 || v10;
  }

  return result;
}

+ (void)ApplyHackFor50863616:(id)for50863616 historyRecords:(id)records transceiver:(id)transceiver
{
  v69 = *MEMORY[0x277D85DE8];
  for50863616Copy = for50863616;
  recordsCopy = records;
  transceiverCopy = transceiver;
  *(v61 + 3) = 17826304;
  v61[0] = 41984;
  v60 = 40;
  v59 = 10137600;
  v58 = 0;
  v10 = [transceiverCopy transceiveBytesAndCheckSW:v61 length:7 error:&v58];
  v11 = v58;
  v12 = v11;
  if (!v10 || v11)
  {
    v18 = recordsCopy;
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v12;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to select ADF: %@", buf, 0xCu);
    }

    recordsCopy = v18;
    goto LABEL_20;
  }

  v57 = 0;
  v13 = [transceiverCopy transceiveBytesAndCheckSW:&v59 length:5 error:&v57];
  v12 = v57;

  if (!v13 || v12)
  {
    v20 = ATLLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v12;
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Failed to read 0xA8: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if ([v13 length] != 40)
  {
    v12 = ATLLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = [v13 length];
      *buf = 67109120;
      LODWORD(v63) = v22;
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Ignoring wrong length on A8 %u", buf, 8u);
    }

    goto LABEL_19;
  }

  bytes = [v13 bytes];
  v15 = ATLLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(bytes + 15);
    *buf = 67109120;
    LODWORD(v63) = v16;
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Station status byte is 0x%02X", buf, 8u);
  }

  if (*(bytes + 15) == 1)
  {
    v17 = [for50863616Copy objectForKeyedSubscript:@"TransactionInProgress"];
    v12 = [v17 mutableCopy];

    if (([v12 containsObject:@"TransitMetro"]& 1) == 0)
    {
      if (!v12)
      {
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      }

      [v12 addObject:@"TransitMetro"];
      [for50863616Copy setObject:v12 forKeyedSubscript:@"TransactionInProgress"];
    }

LABEL_19:
    v10 = v13;
    goto LABEL_20;
  }

  v23 = DecodeBCD((bytes + 16), 0, 1);
  v24 = DecodeBCD((bytes + 16), 1, 1);
  v52 = DecodeBCD((bytes + 16), 2, 1);
  v50 = DecodeBCD((bytes + 16), 3, 1);
  v48 = DecodeBCD((bytes + 16), 4, 1);
  if (![recordsCopy count])
  {
    goto LABEL_21;
  }

  v46 = v13;
  v47 = for50863616Copy;
  v25 = 0;
  v26 = 0;
  v27 = v23 + 2000;
  while (1)
  {
    v12 = [recordsCopy objectAtIndexedSubscript:{v25, v46, v47}];
    v28 = [v12 objectForKeyedSubscript:@"TransactionTime"];
    v29 = v28;
    if (v28)
    {
      if ([v28 year] == v27 && objc_msgSend(v29, "month") == v24 && objc_msgSend(v29, "day") == v52 && objc_msgSend(v29, "hour") == v50 && objc_msgSend(v29, "minute") == v48)
      {
        break;
      }
    }

    v25 = ++v26;
    if ([recordsCopy count] <= v26)
    {
      v13 = v46;
      for50863616Copy = v47;
      goto LABEL_21;
    }
  }

  v49 = transceiverCopy;
  v30 = [v12 mutableCopy];
  v31 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 5 length:2];
  [v30 setObject:v31 forKeyedSubscript:@"StartStation"];

  v32 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 21 length:2];
  [v30 setObject:v32 forKeyedSubscript:@"EndStation"];

  v51 = recordsCopy;
  [recordsCopy setObject:v30 atIndexedSubscript:v25];
  v33 = ATLLogObject();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v63) = v26;
    _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_DEFAULT, "Modified record %u", buf, 8u);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v30;
  v35 = [v34 countByEnumeratingWithState:&v53 objects:v68 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v53 + 1) + 8 * i);
        v40 = [v12 objectForKeyedSubscript:v39];
        v41 = [v34 objectForKeyedSubscript:v39];
        v42 = [v40 isEqual:v41];

        if ((v42 & 1) == 0)
        {
          v43 = ATLLogObject();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [v12 objectForKeyedSubscript:v39];
            v45 = [v34 objectForKeyedSubscript:v39];
            *buf = 138412802;
            v63 = v39;
            v64 = 2112;
            v65 = v44;
            v66 = 2112;
            v67 = v45;
            _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEFAULT, "%@ changed %@ -> %@", buf, 0x20u);
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v53 objects:v68 count:16];
    }

    while (v36);
  }

  v10 = v46;
  for50863616Copy = v47;
  transceiverCopy = v49;
  recordsCopy = v51;
LABEL_20:

  v13 = v10;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSpecialBusErrorFor45299868:(id)for45299868 state:(id)state transaction:(id)transaction
{
  stateCopy = state;
  if ([for45299868 isEqualToString:@"9156000014020001"])
  {
    v8 = [stateCopy objectForKeyedSubscript:@"TransactionInProgress"];
    v9 = [v8 containsObject:@"TransitBus"];
    if (transaction)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end