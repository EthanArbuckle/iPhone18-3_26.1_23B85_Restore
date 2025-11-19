@interface SlalomDecoder
+ (BOOL)isJREServiceProviderID:(unsigned __int8)a3;
+ (id)sharedInstance;
- (SlalomDecoder)init;
- (id)DecodeStartE1TLV:(id *)a3 error:(id *)a4;
- (id)DecodeTransactionE1TLV:(id *)a3 error:(id *)a4;
- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7;
- (id)parseDeselectEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (id)parseEndEvent:(id)a3 withApplet:(id)a4 withTransceiver:(id)a5 error:(id *)a6;
- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8;
- (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (id)parseTransactionEvent:(id)a3 withApplet:(id)a4 error:(id *)a5;
- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7;
- (void)cleanup;
@end

@implementation SlalomDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SlalomDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance__singleton_1;

  return v2;
}

uint64_t __31__SlalomDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SlalomDecoder)init
{
  v7.receiver = self;
  v7.super_class = SlalomDecoder;
  v2 = [(SlalomDecoder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v2->_eotInProgress = 0;
    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v5 = +[AppletTranslator userDefaults];
      v2->_debug = [v5 BOOLForKey:@"debug.slalom"];
    }

    else
    {
      v2->_debug = 0;
    }

    [AppletTranslator registerForCleanup:v2];
  }

  return v2;
}

- (void)cleanup
{
  [(NSMutableArray *)self->_hciArray removeAllObjects];
  self->_eotInProgress = 0;
  serviceProvider = self->_serviceProvider;
  self->_serviceProvider = 0;
}

- (id)parseHCIEvent:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withTransceiver:(id)a7 withError:(id *)a8
{
  v75[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (self->_eotInProgress)
  {
    goto LABEL_28;
  }

  if ([v14 length] <= 1)
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v68 = [v14 length];
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Short eventData? %u", buf, 8u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Short eventData? %u", objc_msgSend(v14, "length")];
    v21 = v20;
    if (!a8)
    {
      goto LABEL_27;
    }

    v22 = *a8;
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v72[0] = *MEMORY[0x277CCA450];
      v72[1] = v25;
      v73[0] = v20;
      v73[1] = v22;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v73;
      v28 = v72;
      v29 = 2;
    }

    else
    {
      v74 = *MEMORY[0x277CCA450];
      v75[0] = v20;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v75;
      v28 = &v74;
      v29 = 1;
    }

    v43 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
    v44 = v23;
    v45 = 6;
LABEL_26:
    *a8 = [v44 errorWithDomain:@"ATL" code:v45 userInfo:v43];

LABEL_27:
LABEL_28:
    v46 = 0;
    goto LABEL_29;
  }

  v30 = *[v14 bytes];
  v31 = *([v14 bytes] + 1);
  if (v30 == 16 && v31 == 1)
  {
    v32 = ATLLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v68 = v15;
      *&v68[8] = 2112;
      v69 = v16;
      v70 = 2112;
      v71 = v17;
      _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", v15, v16, v17];
    v21 = v33;
    if (!a8)
    {
      goto LABEL_27;
    }

    v34 = *a8;
    v35 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v37 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v37;
      v64[0] = v33;
      v64[1] = v34;
      v38 = MEMORY[0x277CBEAC0];
      v39 = v64;
      v40 = v63;
      v41 = 2;
    }

    else
    {
      v65 = *MEMORY[0x277CCA450];
      v66 = v33;
      v38 = MEMORY[0x277CBEAC0];
      v39 = &v66;
      v40 = &v65;
      v41 = 1;
    }

    v43 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];
    v44 = v35;
    v45 = 2;
    goto LABEL_26;
  }

  if (v30 > 16)
  {
    if (v30 == 17)
    {
      v42 = [(SlalomDecoder *)self parseTransactionEvent:v14 withApplet:v15 error:a8];
      goto LABEL_39;
    }

    if (v30 == 18)
    {
      v42 = [(SlalomDecoder *)self parseDeselectEvent:v14 withApplet:v15 error:a8];
      goto LABEL_39;
    }

LABEL_32:
    v49 = ATLLogObject();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v68 = v30;
      *&v68[4] = 1024;
      *&v68[6] = v31;
      _os_log_impl(&dword_22EEF5000, v49, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v30, v31];
    v21 = v50;
    if (!a8)
    {
      goto LABEL_27;
    }

    v51 = *a8;
    v52 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    if (*a8)
    {
      v54 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v54;
      v60[0] = v50;
      v60[1] = v51;
      v55 = MEMORY[0x277CBEAC0];
      v56 = v60;
      v57 = v59;
      v58 = 2;
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62 = v50;
      v55 = MEMORY[0x277CBEAC0];
      v56 = &v62;
      v57 = &v61;
      v58 = 1;
    }

    v43 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:v58];
    v44 = v52;
    v45 = 3;
    goto LABEL_26;
  }

  if (v30 == 1)
  {
    v42 = [(SlalomDecoder *)self parseStartEvent:v14 withApplet:v15 error:a8];
    goto LABEL_39;
  }

  if (v30 != 2)
  {
    goto LABEL_32;
  }

  v42 = [(SlalomDecoder *)self parseEndEvent:v14 withApplet:v15 withTransceiver:v18 error:a8];
LABEL_39:
  v46 = v42;
LABEL_29:

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)parseStartEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] == 22)
  {
    v10 = [v8 bytes];
    if (*(v10 + 1) == 7)
    {
      v58[0] = &unk_2843C6AB8;
      v58[1] = &unk_2843C6AD0;
      v59[0] = @"Contact";
      v59[1] = @"Contactless";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 2)];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (v13)
      {
        *v68 = v10 + 3;
        *&v68[8] = [v8 length] - 3;
        v14 = [(SlalomDecoder *)self DecodeStartE1TLV:v68 error:a5];
        v52[0] = @"EventType";
        v52[1] = @"appletIdentifier";
        v53[0] = @"StartEvent";
        v53[1] = v9;
        v52[2] = @"Version";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 1)];
        v53[2] = v15;
        v53[3] = v13;
        v52[3] = @"Interface";
        v52[4] = @"IgnoreRFEvents";
        v53[4] = MEMORY[0x277CBEC28];
        v53[5] = MEMORY[0x277CBEC38];
        v52[5] = @"DontWaitForEOT";
        v52[6] = @"RequiresPowerCycle";
        v53[6] = MEMORY[0x277CBEC38];
        v53[7] = MEMORY[0x277CBEC38];
        v52[7] = @"EoTCallbackExpected";
        v52[8] = @"DelayExpressReentry";
        v53[8] = &unk_2843C6AE8;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:9];

        v17 = ATLLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v51 = v16;
          _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];
        [(NSMutableArray *)self->_hciArray addObject:v18];
      }

      else
      {
        v35 = ATLLogObject();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = *(v10 + 2);
          *v68 = 67109120;
          *&v68[4] = v36;
          _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Unknown interface type %u", v68, 8u);
        }

        v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v10 + 2)];
        v38 = v37;
        if (a5)
        {
          v39 = *a5;
          v40 = MEMORY[0x277CCA9B8];
          v41 = *MEMORY[0x277CCA450];
          if (*a5)
          {
            v42 = *MEMORY[0x277CCA7E8];
            v54[0] = *MEMORY[0x277CCA450];
            v54[1] = v42;
            v55[0] = v37;
            v55[1] = v39;
            v43 = MEMORY[0x277CBEAC0];
            v44 = v55;
            v45 = v54;
            v46 = 2;
          }

          else
          {
            v56 = *MEMORY[0x277CCA450];
            v57 = v37;
            v43 = MEMORY[0x277CBEAC0];
            v44 = &v57;
            v45 = &v56;
            v46 = 1;
          }

          v49 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:v46];
          *a5 = [v40 errorWithDomain:@"ATL" code:3 userInfo:v49];
        }
      }

      goto LABEL_27;
    }

    v28 = ATLLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(v10 + 1);
      *v68 = 67109120;
      *&v68[4] = v29;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Start Event version %u", v68, 8u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v10 + 1)];
    v11 = v30;
    if (a5)
    {
      v31 = *a5;
      v22 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v33 = *MEMORY[0x277CCA7E8];
        v60[0] = *MEMORY[0x277CCA450];
        v60[1] = v33;
        v61[0] = v30;
        v61[1] = v31;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v61;
        v27 = v60;
        goto LABEL_17;
      }

      v62 = *MEMORY[0x277CCA450];
      v63 = v30;
      v25 = MEMORY[0x277CBEAC0];
      v26 = &v63;
      v27 = &v62;
      goto LABEL_25;
    }
  }

  else
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v68 = 134218240;
      *&v68[4] = [v8 length];
      *&v68[12] = 2048;
      *&v68[14] = 22;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Start Event length %zu (exp %zu)", v68, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event length %zu (exp %zu)", objc_msgSend(v8, "length"), 22];
    v11 = v20;
    if (a5)
    {
      v21 = *a5;
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v64[0] = *MEMORY[0x277CCA450];
        v64[1] = v24;
        v65[0] = v20;
        v65[1] = v21;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v65;
        v27 = v64;
LABEL_17:
        v34 = 2;
LABEL_26:
        v13 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v34];
        *a5 = [v22 errorWithDomain:@"ATL" code:3 userInfo:v13];
LABEL_27:

        goto LABEL_28;
      }

      v66 = *MEMORY[0x277CCA450];
      v67 = v20;
      v25 = MEMORY[0x277CBEAC0];
      v26 = &v67;
      v27 = &v66;
LABEL_25:
      v34 = 1;
      goto LABEL_26;
    }
  }

LABEL_28:

  v47 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)parseEndEvent:(id)a3 withApplet:(id)a4 withTransceiver:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 length] != 2)
  {
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v39 = [v7 length];
      *&v39[8] = 2048;
      v40 = 2;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "End Event length %zu (exp %zu)", buf, 0x16u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End Event length %zu (exp %zu)", objc_msgSend(v7, "length"), 2];
    v13 = v22;
    if (!a6)
    {
      goto LABEL_18;
    }

    v23 = *a6;
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    if (*a6)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v34[0] = *MEMORY[0x277CCA450];
      v34[1] = v25;
      v35[0] = v22;
      v35[1] = v23;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v35;
      v20 = v34;
      goto LABEL_13;
    }

    v36 = *MEMORY[0x277CCA450];
    v37 = v22;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v37;
    v20 = &v36;
LABEL_16:
    v26 = 1;
    goto LABEL_17;
  }

  v8 = [v7 bytes];
  if (*(v8 + 1) != 7)
  {
    v9 = v8;
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v9 + 1);
      *buf = 67109376;
      *v39 = v11;
      *&v39[4] = 1024;
      *&v39[6] = 7;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "End Event version %u (exp %u)", buf, 0xEu);
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End Event version %u (exp %u)", *(v9 + 1), 7];
    v13 = v12;
    if (!a6)
    {
      goto LABEL_18;
    }

    v14 = *a6;
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    if (*a6)
    {
      v17 = *MEMORY[0x277CCA7E8];
      v30[0] = *MEMORY[0x277CCA450];
      v30[1] = v17;
      v31[0] = v12;
      v31[1] = v14;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v31;
      v20 = v30;
LABEL_13:
      v26 = 2;
LABEL_17:
      v27 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v26];
      *a6 = [v15 errorWithDomain:@"ATL" code:3 userInfo:v27];

LABEL_18:
      goto LABEL_19;
    }

    v32 = *MEMORY[0x277CCA450];
    v33 = v12;
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v33;
    v20 = &v32;
    goto LABEL_16;
  }

LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)parseDeselectEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] == 3)
  {
    v10 = [v8 bytes];
    if (*(v10 + 1) == 7)
    {
      v52[0] = &unk_2843C6AB8;
      v52[1] = &unk_2843C6AD0;
      v53[0] = @"Contact";
      v53[1] = @"Contactless";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 2)];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (v13)
      {
        v46[0] = @"EventType";
        v46[1] = @"appletIdentifier";
        v47[0] = @"DeselectEvent";
        v47[1] = v9;
        v46[2] = @"Interface";
        v47[2] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
        v15 = ATLLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v63 = v14;
          _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:v14];
      }

      else
      {
        v32 = ATLLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *(v10 + 2);
          *buf = 67109120;
          *v63 = v33;
          _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
        }

        v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v10 + 2)];
        v14 = v34;
        if (a5)
        {
          v35 = *a5;
          v36 = MEMORY[0x277CCA9B8];
          v37 = *MEMORY[0x277CCA450];
          if (*a5)
          {
            v38 = *MEMORY[0x277CCA7E8];
            v48[0] = *MEMORY[0x277CCA450];
            v48[1] = v38;
            v49[0] = v34;
            v49[1] = v35;
            v39 = MEMORY[0x277CBEAC0];
            v40 = v49;
            v41 = v48;
            v42 = 2;
          }

          else
          {
            v50 = *MEMORY[0x277CCA450];
            v51 = v34;
            v39 = MEMORY[0x277CBEAC0];
            v40 = &v51;
            v41 = &v50;
            v42 = 1;
          }

          v43 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
          *a5 = [v36 errorWithDomain:@"ATL" code:3 userInfo:v43];
        }
      }

      goto LABEL_30;
    }

    v25 = ATLLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v10 + 1);
      *buf = 67109376;
      *v63 = v26;
      *&v63[4] = 1024;
      *&v63[6] = 1;
      _os_log_impl(&dword_22EEF5000, v25, OS_LOG_TYPE_ERROR, "Deselect Event version  %u (exp %u)", buf, 0xEu);
    }

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Deselect Event version  %u (exp %u)", *(v10 + 1), 1];
    v11 = v27;
    if (a5)
    {
      v28 = *a5;
      v19 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v54[0] = *MEMORY[0x277CCA450];
        v54[1] = v30;
        v55[0] = v27;
        v55[1] = v28;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v55;
        v24 = v54;
        goto LABEL_17;
      }

      v56 = *MEMORY[0x277CCA450];
      v57 = v27;
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v57;
      v24 = &v56;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v63 = [v8 length];
      *&v63[8] = 2048;
      v64 = 3;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Deselect Event length %zu (exp %zu)", buf, 0x16u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Deselect Event length %zu (exp %zu)", objc_msgSend(v8, "length"), 3];
    v11 = v17;
    if (a5)
    {
      v18 = *a5;
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v21 = *MEMORY[0x277CCA7E8];
        v58[0] = *MEMORY[0x277CCA450];
        v58[1] = v21;
        v59[0] = v17;
        v59[1] = v18;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v59;
        v24 = v58;
LABEL_17:
        v31 = 2;
LABEL_26:
        v13 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v31];
        *a5 = [v19 errorWithDomain:@"ATL" code:3 userInfo:v13];
LABEL_30:

        goto LABEL_31;
      }

      v60 = *MEMORY[0x277CCA450];
      v61 = v17;
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v61;
      v24 = &v60;
LABEL_25:
      v31 = 1;
      goto LABEL_26;
    }
  }

LABEL_31:

  v44 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)parseTransactionEvent:(id)a3 withApplet:(id)a4 error:(id *)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length] <= 2)
  {
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = [v8 length];
      *&buf[12] = 2048;
      *&buf[14] = 3;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Transaction Event length %zu (at least %zu)", buf, 0x16u);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transaction Event length %zu (at least %zu)", objc_msgSend(v8, "length"), 3];
    v12 = v11;
    if (!a5)
    {
      goto LABEL_45;
    }

    v13 = *a5;
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v87[0] = *MEMORY[0x277CCA450];
      v87[1] = v16;
      v88[0] = v11;
      v88[1] = v13;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v88;
      v19 = v87;
LABEL_27:
      v42 = 2;
LABEL_44:
      v58 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v42];
      *a5 = [v14 errorWithDomain:@"ATL" code:3 userInfo:v58];

LABEL_45:
      v57 = 0;
      goto LABEL_51;
    }

    v89 = *MEMORY[0x277CCA450];
    v90 = v11;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v90;
    v19 = &v89;
    goto LABEL_43;
  }

  v20 = [v8 bytes];
  v21 = v20;
  if (*(v20 + 1) != 7)
  {
    v36 = ATLLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *(v21 + 1);
      *buf = 67109376;
      *&buf[4] = v37;
      *&buf[8] = 1024;
      *&buf[10] = 7;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Transaction Event version %u (exp %u)", buf, 0xEu);
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transaction Event version %u (exp %u)", *(v21 + 1), 7];
    v12 = v38;
    if (!a5)
    {
      goto LABEL_45;
    }

    v39 = *a5;
    v14 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    if (*a5)
    {
      v41 = *MEMORY[0x277CCA7E8];
      v83[0] = *MEMORY[0x277CCA450];
      v83[1] = v41;
      v84[0] = v38;
      v84[1] = v39;
      v17 = MEMORY[0x277CBEAC0];
      v18 = v84;
      v19 = v83;
      goto LABEL_27;
    }

    v85 = *MEMORY[0x277CCA450];
    v86 = v38;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v86;
    v19 = &v85;
LABEL_43:
    v42 = 1;
    goto LABEL_44;
  }

  *buf = v20 + 3;
  *&buf[8] = [v8 length] - 3;
  v22 = [(SlalomDecoder *)self DecodeTransactionE1TLV:buf error:a5];
  v81[0] = &unk_2843C6AB8;
  v81[1] = &unk_2843C6AD0;
  v82[0] = @"Contact";
  v82[1] = @"Contactless";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 2)];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (v25)
  {
    v75[0] = @"EventType";
    v75[1] = @"appletIdentifier";
    v76[0] = @"TransactionEvent";
    v76[1] = v9;
    v75[2] = @"Version";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 1)];
    v76[2] = v26;
    v76[3] = v25;
    v64 = v25;
    v75[3] = @"Interface";
    v75[4] = @"type";
    v76[4] = &unk_2843C6B00;
    v75[5] = @"tlv";
    v27 = [MEMORY[0x277CBEA90] dataWithDERItem:buf];
    v76[5] = v27;
    v75[6] = @"parsedInfo";
    v28 = v22;
    if (!v22)
    {
      v28 = [MEMORY[0x277CBEB68] null];
    }

    v76[6] = v28;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:7];
    if (!v22)
    {
    }

    v65 = v23;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = self->_hciArray;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v30)
    {
      v31 = v30;
      v61 = v22;
      v62 = v9;
      v32 = *v67;
      while (2)
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v67 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v66 + 1) + 8 * i) objectForKeyedSubscript:@"EventType"];

          if (v34 == @"TransactionEvent")
          {
            v35 = 0;
            goto LABEL_30;
          }
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      v35 = 1;
LABEL_30:
      v22 = v61;
      v9 = v62;
    }

    else
    {
      v35 = 1;
    }

    v46 = v63;
    [(NSMutableArray *)self->_hciArray addObject:v63];
    v55 = ATLLogObject();
    v25 = v64;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *v72 = 138412290;
      v73 = v63;
      _os_log_impl(&dword_22EEF5000, v55, OS_LOG_TYPE_DEBUG, "%@", v72, 0xCu);
    }

    if (v35)
    {
      v70[0] = @"EventType";
      v70[1] = @"paymentMode";
      v71[0] = @"StartEvent";
      v71[1] = &unk_2843C6B18;
      v70[2] = @"appletIdentifier";
      v70[3] = @"Interface";
      v71[2] = v9;
      v71[3] = v64;
      v70[4] = @"Version";
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v21 + 1)];
      v71[4] = v56;
      v71[5] = MEMORY[0x277CBEC28];
      v70[5] = @"IgnoreRFEvents";
      v70[6] = @"DontWaitForEOT";
      v71[6] = MEMORY[0x277CBEC38];
      v71[7] = MEMORY[0x277CBEC38];
      v70[7] = @"RequiresPowerCycle";
      v70[8] = @"EoTCallbackExpected";
      v70[9] = @"DelayExpressReentry";
      v71[8] = MEMORY[0x277CBEC38];
      v71[9] = &unk_2843C6AE8;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:10];
      v23 = v65;
LABEL_49:

      goto LABEL_50;
    }

    v57 = 0;
    v23 = v65;
  }

  else
  {
    v43 = ATLLogObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *(v21 + 2);
      *v72 = 67109120;
      LODWORD(v73) = v44;
      _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Unknown interface type %u", v72, 8u);
    }

    v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v21 + 2)];
    v46 = v45;
    if (a5)
    {
      v47 = *a5;
      v48 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      if (*a5)
      {
        v50 = *MEMORY[0x277CCA7E8];
        v77[0] = *MEMORY[0x277CCA450];
        v77[1] = v50;
        v78[0] = v45;
        v78[1] = v47;
        v51 = MEMORY[0x277CBEAC0];
        v52 = v78;
        v53 = v77;
        v54 = 2;
      }

      else
      {
        v79 = *MEMORY[0x277CCA450];
        v80 = v45;
        v51 = MEMORY[0x277CBEAC0];
        v52 = &v80;
        v53 = &v79;
        v54 = 1;
      }

      v56 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:v54];
      [v48 errorWithDomain:@"ATL" code:3 userInfo:v56];
      *a5 = v57 = 0;
      goto LABEL_49;
    }

    v57 = 0;
  }

LABEL_50:

LABEL_51:
  v59 = *MEMORY[0x277D85DE8];

  return v57;
}

- (id)DecodeTransactionE1TLV:(id *)a3 error:(id *)a4
{
  v118[1] = *MEMORY[0x277D85DE8];
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v6 = DERDecodeItemCtx(a3, &v88);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v114) = v7;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1 %d", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1 %d", v7];
    v10 = v9;
    if (a4)
    {
      v11 = *a4;
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v115[0] = *MEMORY[0x277CCA450];
        v115[1] = v14;
        v116[0] = v9;
        v116[1] = v11;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v116;
        v17 = v115;
        v18 = 2;
      }

      else
      {
        v117 = *MEMORY[0x277CCA450];
        v118[0] = v9;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v118;
        v17 = &v117;
        v18 = 1;
      }

      v47 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *a4 = [v12 errorWithDomain:@"ATL" code:3 userInfo:v47];
    }

LABEL_32:
    v34 = 0;
    goto LABEL_33;
  }

  if (v88 != 0xE000000000000001)
  {
    v35 = ATLLogObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v114 = v88;
      _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v86 = v88;
    v37 = [v36 initWithFormat:@"Unexpected tag 0x%llx"];
    v38 = v37;
    if (a4)
    {
      v39 = *a4;
      v40 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v42 = *MEMORY[0x277CCA7E8];
        v109[0] = *MEMORY[0x277CCA450];
        v109[1] = v42;
        v110[0] = v37;
        v110[1] = v39;
        v43 = MEMORY[0x277CBEAC0];
        v44 = v110;
        v45 = v109;
        v46 = 2;
      }

      else
      {
        v111 = *MEMORY[0x277CCA450];
        v112 = v37;
        v43 = MEMORY[0x277CBEAC0];
        v44 = &v112;
        v45 = &v111;
        v46 = 1;
      }

      v48 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:v46];
      *a4 = [v40 errorWithDomain:@"ATL" code:3 userInfo:v48];
    }

    LogBinary(OS_LOG_TYPE_ERROR, "[SlalomDecoder DecodeTransactionE1TLV:error:]", 356, a3->var0, a3->var1, @"E1 TLV data", v49, v50, v86);
    goto LABEL_32;
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v87 = [MEMORY[0x277CBEB18] array];
  v20 = v90;
  if (v90 < 1)
  {
LABEL_20:
    v91[0] = @"OPRead";
    v91[1] = @"OPWrite";
    v33 = v87;
    v92[0] = v19;
    v92[1] = v87;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
    goto LABEL_66;
  }

  v21 = 0;
  v22 = v89;
  while (1)
  {
    if (v20 - v21 <= 1)
    {
      v53 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v54 = ATLLogObject();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v53;
        _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1, length issue: %@", buf, 0xCu);
      }

      v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1, length issue: %@", v53];
      v56 = v55;
      if (a4)
      {
        v57 = *a4;
        v58 = MEMORY[0x277CCA9B8];
        if (*a4)
        {
          v59 = *MEMORY[0x277CCA7E8];
          v105[0] = *MEMORY[0x277CCA450];
          v105[1] = v59;
          v106[0] = v55;
          v106[1] = v57;
          v60 = MEMORY[0x277CBEAC0];
          v61 = v106;
          v62 = v105;
          goto LABEL_56;
        }

        v107 = *MEMORY[0x277CCA450];
        v108 = v55;
        v60 = MEMORY[0x277CBEAC0];
        v61 = &v108;
        v62 = &v107;
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    v23 = (v22 + v21);
    v24 = *v23;
    v25 = v21 + 2;
    if (v24 != 194)
    {
      break;
    }

    if (v20 - v25 <= 3)
    {
      v53 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v73 = ATLLogObject();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v53;
        _os_log_impl(&dword_22EEF5000, v73, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event C2 tag, length issue: %@", buf, 0xCu);
      }

      v74 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event C2 tag, length issue: %@", v53];
      v56 = v74;
      if (a4)
      {
        v75 = *a4;
        v58 = MEMORY[0x277CCA9B8];
        v76 = *MEMORY[0x277CCA450];
        if (*a4)
        {
          v77 = *MEMORY[0x277CCA7E8];
          v97[0] = *MEMORY[0x277CCA450];
          v97[1] = v77;
          v98[0] = v74;
          v98[1] = v75;
          v60 = MEMORY[0x277CBEAC0];
          v61 = v98;
          v62 = v97;
          goto LABEL_56;
        }

        v99 = *MEMORY[0x277CCA450];
        v100 = v74;
        v60 = MEMORY[0x277CBEAC0];
        v61 = &v100;
        v62 = &v99;
LABEL_62:
        v83 = 1;
LABEL_63:
        v85 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:v83];
        *a4 = [v58 errorWithDomain:@"ATL" code:3 userInfo:v85];
      }

LABEL_64:

      goto LABEL_65;
    }

    v28 = v19;
    v29 = v23[1];
    v26 = objc_alloc_init(SlalomWriteOperation);
    v30 = *(v25 + v22);
    v31 = *(v23 + 2);
    v32 = v21 + 6;
    [(SlalomWriteOperation *)v26 setServiceCode:v30];
    [(SlalomWriteOperation *)v26 setBlockNumber:v31];
    if (v29 == 6)
    {
      [(SlalomWriteOperation *)v26 setOffsets:bswap32(*(v32 + v22)) >> 16];
      LODWORD(v32) = v21 + 8;
    }

    [v87 addObject:v26];
    v21 = v32;
    v19 = v28;
LABEL_19:

    v20 = v90;
    if (v21 >= v90)
    {
      goto LABEL_20;
    }
  }

  if (v24 == 193)
  {
    if (v20 - v25 <= 3)
    {
      v53 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
      v78 = ATLLogObject();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v53;
        _os_log_impl(&dword_22EEF5000, v78, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event C1 tag, length issue: %@", buf, 0xCu);
      }

      v79 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event C1 tag, length issue: %@", v53];
      v56 = v79;
      if (a4)
      {
        v80 = *a4;
        v58 = MEMORY[0x277CCA9B8];
        v81 = *MEMORY[0x277CCA450];
        if (!*a4)
        {
          v103 = *MEMORY[0x277CCA450];
          v104 = v79;
          v60 = MEMORY[0x277CBEAC0];
          v61 = &v104;
          v62 = &v103;
          goto LABEL_62;
        }

        v82 = *MEMORY[0x277CCA7E8];
        v101[0] = *MEMORY[0x277CCA450];
        v101[1] = v82;
        v102[0] = v79;
        v102[1] = v80;
        v60 = MEMORY[0x277CBEAC0];
        v61 = v102;
        v62 = v101;
LABEL_56:
        v83 = 2;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    v26 = objc_alloc_init(SlalomReadOperation);
    v27 = *(v25 + v22);
    v21 += 6;
    [(SlalomWriteOperation *)v26 setBlockNumber:*(v23 + 2)];
    [(SlalomWriteOperation *)v26 setServiceCode:v27];
    [v19 addObject:v26];
    goto LABEL_19;
  }

  v63 = ATLLogObject();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v114) = v24;
    _os_log_impl(&dword_22EEF5000, v63, OS_LOG_TYPE_ERROR, "Failed to decode Transaction Event E1, tag received was not C0 or C1: %2X", buf, 8u);
  }

  v64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Transaction Event E1, tag received was not C0 or C1: %2X", v24];
  v53 = v64;
  if (a4)
  {
    v65 = *a4;
    v66 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    if (*a4)
    {
      v68 = *MEMORY[0x277CCA7E8];
      v93[0] = *MEMORY[0x277CCA450];
      v93[1] = v68;
      v94[0] = v64;
      v94[1] = v65;
      v69 = MEMORY[0x277CBEAC0];
      v70 = v94;
      v71 = v93;
      v72 = 2;
    }

    else
    {
      v95 = *MEMORY[0x277CCA450];
      v96 = v64;
      v69 = MEMORY[0x277CBEAC0];
      v70 = &v96;
      v71 = &v95;
      v72 = 1;
    }

    v84 = [v69 dictionaryWithObjects:v70 forKeys:v71 count:v72];
    *a4 = [v66 errorWithDomain:@"ATL" code:3 userInfo:v84];
  }

LABEL_65:

  v34 = 0;
  v33 = v87;
LABEL_66:

LABEL_33:
  v51 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)DecodeStartE1TLV:(id *)a3 error:(id *)a4
{
  v96[1] = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73[0] = 0;
  v73[1] = 0;
  v7 = DERDecodeItemCtx(a3, &v72);
  if (v7)
  {
    v8 = v7;
    v9 = ATLLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v8;
      _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_ERROR, "Failed to decode Start Event E1 %d", &buf, 8u);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Start Event E1 %d", v8];
    v11 = v10;
    if (a4)
    {
      v12 = *a4;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v15 = *MEMORY[0x277CCA7E8];
        v93[0] = *MEMORY[0x277CCA450];
        v93[1] = v15;
        v94[0] = v10;
        v94[1] = v12;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v94;
        v18 = v93;
        v19 = 2;
      }

      else
      {
        v95 = *MEMORY[0x277CCA450];
        v96[0] = v10;
        v16 = MEMORY[0x277CBEAC0];
        v17 = v96;
        v18 = &v95;
        v19 = 1;
      }

      v43 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
      *a4 = [v13 errorWithDomain:@"ATL" code:3 userInfo:v43];
    }

    goto LABEL_42;
  }

  if (v72 == 0xE000000000000001)
  {
    v87 = 0u;
    v88 = 0u;
    buf = 0u;
    v20 = DERParseSequenceSpec(v73, &startEventE1ContentSpec, &buf, 0x30uLL);
    if (v20)
    {
      v21 = v20;
      v22 = ATLLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v78 = 67109120;
        LODWORD(v79) = v21;
        _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to decode Start Event E1 contents %d", v78, 8u);
      }

      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Start Event E1 contents %d", v21];
      v11 = v23;
      if (!a4)
      {
        goto LABEL_42;
      }

      v24 = *a4;
      v25 = MEMORY[0x277CCA9B8];
      if (*a4)
      {
        v26 = *MEMORY[0x277CCA7E8];
        v82[0] = *MEMORY[0x277CCA450];
        v82[1] = v26;
        v83[0] = v23;
        v83[1] = v24;
        v27 = MEMORY[0x277CBEAC0];
        v28 = v83;
        v29 = v82;
        v30 = 2;
      }

      else
      {
        v84 = *MEMORY[0x277CCA450];
        v85 = v23;
        v27 = MEMORY[0x277CBEAC0];
        v28 = &v85;
        v29 = &v84;
        v30 = 1;
      }

      v44 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *a4 = [v25 errorWithDomain:@"ATL" code:3 userInfo:v44];
      goto LABEL_41;
    }

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v80[0] = &unk_2843C6AD0;
    v80[1] = &unk_2843C6B30;
    v81[0] = @"Suica";
    v81[1] = @"QuicPay";
    v80[2] = &unk_2843C6B48;
    v80[3] = &unk_2843C6B60;
    v81[2] = @"iD";
    v81[3] = @"Octopus";
    v80[4] = &unk_2843C6B78;
    v80[5] = &unk_2843C6B90;
    v81[4] = @"Cross";
    v81[5] = @"Mogul";
    v80[6] = &unk_2843C6BA8;
    v80[7] = &unk_2843C6BC0;
    v81[6] = @"Gondola";
    v81[7] = @"Wildcat";
    v80[8] = &unk_2843C6BD8;
    v81[8] = @"JRE Operator";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:9];
    if (*(&v88 + 1) && (*v88 >= 0xE0u ? (v45 = 224) : (v45 = *v88), [MEMORY[0x277CCABB0] numberWithUnsignedChar:v45], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "objectForKeyedSubscript:", v46), v47 = objc_claimAutoreleasedReturnValue(), v46, v47))
    {
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v88];
      serviceProvider = self->_serviceProvider;
      self->_serviceProvider = v48;

      [v11 setObject:v47 forKeyedSubscript:@"SP"];
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v88];
      [v11 setObject:v50 forKeyedSubscript:@"SPRaw"];

      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*buf];
      [v11 setObject:v51 forKeyedSubscript:@"SystemCode"];

      v52 = [MEMORY[0x277CBEA90] dataWithBytes:v87 length:8];
      v53 = [v52 asHexString];
      [v11 setObject:v53 forKeyedSubscript:@"IDm"];
    }

    else
    {
      v57 = ATLLogObject();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = [MEMORY[0x277CBEA90] dataWithDERItem:&v88];
        *v78 = 138412290;
        v79 = v58;
        _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_ERROR, "Unknown SP identifier %@", v78, 0xCu);
      }

      v59 = objc_alloc(MEMORY[0x277CCACA8]);
      v60 = [MEMORY[0x277CBEA90] dataWithDERItem:&v88];
      v47 = [v59 initWithFormat:@"Unknown SP identifier %@", v60];

      if (!a4)
      {
        goto LABEL_40;
      }

      v61 = *a4;
      v62 = MEMORY[0x277CCA9B8];
      v63 = *MEMORY[0x277CCA450];
      if (*a4)
      {
        v64 = *MEMORY[0x277CCA7E8];
        v74[0] = *MEMORY[0x277CCA450];
        v74[1] = v64;
        v75[0] = v47;
        v75[1] = v61;
        v65 = MEMORY[0x277CBEAC0];
        v66 = v75;
        v67 = v74;
        v68 = 2;
      }

      else
      {
        v76 = *MEMORY[0x277CCA450];
        v77 = v47;
        v65 = MEMORY[0x277CBEAC0];
        v66 = &v77;
        v67 = &v76;
        v68 = 1;
      }

      v52 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:v68];
      *a4 = [v62 errorWithDomain:@"ATL" code:3 userInfo:v52];
    }

LABEL_40:
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v31 = ATLLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v72;
    _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Unexpected tag 0x%llx", &buf, 0xCu);
  }

  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  v71 = v72;
  v33 = [v32 initWithFormat:@"Unexpected tag 0x%llx"];
  v34 = v33;
  if (a4)
  {
    v35 = *a4;
    v36 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    if (*a4)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v89[0] = *MEMORY[0x277CCA450];
      v89[1] = v38;
      v90[0] = v33;
      v90[1] = v35;
      v39 = MEMORY[0x277CBEAC0];
      v40 = v90;
      v41 = v89;
      v42 = 2;
    }

    else
    {
      v91 = *MEMORY[0x277CCA450];
      v92 = v33;
      v39 = MEMORY[0x277CBEAC0];
      v40 = &v92;
      v41 = &v91;
      v42 = 1;
    }

    v54 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:v42];
    *a4 = [v36 errorWithDomain:@"ATL" code:3 userInfo:v54];
  }

  LogBinary(OS_LOG_TYPE_ERROR, "[SlalomDecoder DecodeStartE1TLV:error:]", 446, a3->var0, a3->var1, @"E1 TLV data", v55, v56, v71);
LABEL_43:
  v69 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getAppletStateAndHistory:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v546[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [MEMORY[0x277CBEA90] dataWithHexString:v13];
  v17 = SelectByNameCmd(v16);

  v18 = [v12 transceiveAndCheckSW:v17 error:a7];
  v19 = v18;
  if (!v18)
  {
    v34 = 0;
    goto LABEL_352;
  }

  v454[0] = [v18 bytes];
  v443 = v19;
  v454[1] = [v19 length];
  v452 = 0;
  v453[0] = 0;
  v453[1] = 0;
  DERFindItem(v454, 0xA000000000000005, &v452);
  if (v20)
  {
    v21 = v20;
    v22 = ATLLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&dword_22EEF5000, v22, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", buf, 8u);
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v21];
    v24 = v23;
    if (a7)
    {
      v25 = v15;
      v26 = *a7;
      v27 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v543[0] = *MEMORY[0x277CCA450];
        v543[1] = v29;
        v544[0] = v23;
        v544[1] = v26;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v544;
        v32 = v543;
        v33 = 2;
      }

      else
      {
        v545 = *MEMORY[0x277CCA450];
        v546[0] = v23;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v546;
        v32 = &v545;
        v33 = 1;
      }

      v48 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      *a7 = [v27 errorWithDomain:@"ATL" code:3 userInfo:v48];

      v15 = v25;
    }

    v34 = 0;
    v19 = v443;
    goto LABEL_352;
  }

  v542 = 0u;
  v541 = 0u;
  v540 = 0u;
  v539 = 0u;
  v538 = 0u;
  v537 = 0u;
  *buf = 0u;
  v35 = DERParseSequenceSpec(v453, &selectResponseA5ContentSpec, buf, 0x18uLL);
  if (!v35)
  {
    v434 = [MEMORY[0x277CBEB38] dictionary];
    v49 = *v541;
    v429 = [MEMORY[0x277CBEA90] dataWithBytes:v537 length:?];
    if (v49 >= 0xE0)
    {
      v50 = 224;
    }

    else
    {
      v50 = v49;
    }

    v440 = [MEMORY[0x277CBEB18] array];
    v441 = v17;
    v428 = v13;
    if (v50 > 5)
    {
      if (v50 <= 7)
      {
        if (v50 != 6)
        {
          v51 = [MEMORY[0x277CBEB38] dictionary];
          [v51 setObject:&unk_2843C6BA8 forKeyedSubscript:@"SPRaw"];
          [v51 setObject:@"Gondola" forKeyedSubscript:@"SP"];
          v52 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:0 withTransceiver:v12 withError:a7];
          v53 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:1 withTransceiver:v12 withError:a7];
          v54 = v53;
          if (!v52 || !v53)
          {
            v430 = v15;
            v117 = ATLLogObject();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              *v520 = 0;
              _os_log_impl(&dword_22EEF5000, v117, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola S/N, invalid blocks", v520, 2u);
            }

            v118 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola S/N, invalid blocks"];
            v119 = v118;
            if (a7)
            {
              v120 = v51;
              v121 = v14;
              v122 = *a7;
              v123 = MEMORY[0x277CCA9B8];
              v124 = *MEMORY[0x277CCA450];
              if (*a7)
              {
                v125 = *MEMORY[0x277CCA7E8];
                v504[0] = *MEMORY[0x277CCA450];
                v504[1] = v125;
                v505[0] = v118;
                v505[1] = v122;
                v126 = MEMORY[0x277CBEAC0];
                v127 = v505;
                v128 = v504;
                v129 = 2;
              }

              else
              {
                v506 = *MEMORY[0x277CCA450];
                v507 = v118;
                v126 = MEMORY[0x277CBEAC0];
                v127 = &v507;
                v128 = &v506;
                v129 = 1;
              }

              v273 = [v126 dictionaryWithObjects:v127 forKeys:v128 count:v129];
              *a7 = [v123 errorWithDomain:@"ATL" code:3 userInfo:v273];

              v14 = v121;
              v51 = v120;
            }

            v70 = 0;
            v68 = 0;
            v66 = 0;
            goto LABEL_183;
          }

          v55 = [GondolaDecoder decodeCardNumberFromBlock0:v52 andBlock1:v53];
          [v51 setObject:v55 forKeyedSubscript:@"CardIdentifier"];

          v56 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:0 withTransceiver:v12 withError:a7];
          v57 = v52;
          v58 = v54;
          v59 = v56;

          v60 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:1 withTransceiver:v12 withError:a7];

          v435 = v59;
          if (v59 && v60)
          {
            v410 = v51;
            v61 = [GondolaDecoder isCardUsageFlag:v59];
            v420 = v60;
            v62 = [GondolaDecoder isCardEffectiveFlag:v60];
            if (v61)
            {
              [MEMORY[0x277CCABB0] numberWithInt:v62 ^ 1];
              v64 = v63 = v15;
              [v51 setObject:v64 forKeyedSubscript:@"CardDenyListed"];

              v15 = v63;
            }

            else
            {
              [v51 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"CardDenyListed"];
            }

            if (self->_debug)
            {
              v232 = [MEMORY[0x277CCABB0] numberWithBool:v61];
              [v51 setObject:v232 forKeyedSubscript:@"CardActivated"];

              v233 = [MEMORY[0x277CCABB0] numberWithBool:v62];
              [v51 setObject:v233 forKeyedSubscript:@"CardEffective"];

              v234 = [MEMORY[0x277CCACA8] hexStringFromBytes:v542 length:2];
              [v51 setObject:v234 forKeyedSubscript:@"LifeCycleState"];
            }

            v235 = v420;
            v236 = [GondolaDecoder decodeEnrollmentDateAfterDelivery:v420];
            v237 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
            v238 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26647 withBlockNumber:0 withTransceiver:v12 withError:a7];

            v409 = v237;
            if (v238)
            {
              v415 = v12;
              v407 = v236;
              v437 = v238;
              v239 = [GondolaDecoder getPurseBalance:v238];
              v498[0] = @"BalanceIdentifier";
              v498[1] = @"Balance";
              v499[0] = @"Purse";
              v499[1] = v239;
              v498[2] = @"BalanceCurrency";
              v498[3] = @"BalanceCurrencyExponent";
              v499[2] = @"JPY";
              v499[3] = &unk_2843C6AB8;
              v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v499 forKeys:v498 count:4];
              [v237 addObject:v240];

              v418 = [MEMORY[0x277CBEB18] array];
              v241 = 0;
              v242 = @"TopUp";
              v243 = @"Amount";
              v426 = v14;
              v432 = v15;
              while (1)
              {
                v244 = v243;
                v245 = v242;
                v423 = v235;
                v246 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:v241 withTransceiver:v12 withError:a7];

                v235 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:v241 | 1u withTransceiver:v12 withError:a7];

                v247 = !v246 || v235 == 0;
                v437 = v246;
                if (v247)
                {
                  break;
                }

                v248 = [GondolaDecoder decodeHistoryBlock1:v246 andWithBlock2:v235];
                v242 = v245;
                v249 = [v248 objectForKeyedSubscript:v245];
                v243 = v244;
                v250 = [v249 objectForKeyedSubscript:v244];

                if (v250)
                {
                  v251 = [v248 objectForKeyedSubscript:v242];
                  [v418 addObject:v251];
                }

                v252 = [v248 objectForKeyedSubscript:@"Charge"];
                v253 = [v252 objectForKeyedSubscript:v243];

                if (v253)
                {
                  v254 = [v248 objectForKeyedSubscript:@"Charge"];
                  [v418 addObject:v254];
                }

                v255 = v241;
                v241 += 2;
                v15 = v432;
                if (v255 >= 4)
                {
                  v420 = v235;
                  v256 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"SerialNumber" ascending:0];
                  v489 = v256;
                  v257 = [MEMORY[0x277CBEA60] arrayWithObjects:&v489 count:1];
                  v258 = [v418 sortedArrayUsingDescriptors:v257];
                  [v434 setObject:v258 forKeyedSubscript:@"TransactionHistory"];

                  v450 = 0u;
                  v451 = 0u;
                  v448 = 0u;
                  v449 = 0u;
                  v259 = v418;
                  v260 = [v259 countByEnumeratingWithState:&v448 objects:v488 count:16];
                  if (v260)
                  {
                    v261 = v260;
                    v262 = *v449;
                    do
                    {
                      for (i = 0; i != v261; ++i)
                      {
                        if (*v449 != v262)
                        {
                          objc_enumerationMutation(v259);
                        }

                        v264 = *(*(&v448 + 1) + 8 * i);
                        v265 = [v264 objectForKey:@"fakeTransactionId"];

                        if (v265)
                        {
                          v266 = [v264 objectForKeyedSubscript:@"fakeTransactionId"];
                          [v264 setObject:v266 forKeyedSubscript:@"SerialNumber"];

                          [v264 removeObjectForKey:@"fakeTransactionId"];
                        }
                      }

                      v261 = [v259 countByEnumeratingWithState:&v448 objects:v488 count:16];
                    }

                    while (v261);
                  }

                  v12 = v415;
                  v267 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:7 withTransceiver:v415 withError:a7];

                  if (v267)
                  {
                    v268 = [GondolaDecoder decodeAutoTopUpAmount:v267];
                    v14 = v426;
                    v15 = v432;
                    v17 = v441;
                    v269 = v409;
                    if ([v268 intValue] >= 1)
                    {
                      [v434 setObject:v268 forKeyedSubscript:@"CardDefaultAAVSAmount"];
                    }

                    v270 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26699 withBlockNumber:0 withTransceiver:v415 withError:a7];

                    if (v270)
                    {
                      v271 = v407;
                      if (v407)
                      {
                        v272 = [GondolaDecoder decodeLoyaltyPointBalancesAndExpiration:v270 withActivationDate:v407];
                        if (v272)
                        {
                          [v409 addObjectsFromArray:v272];
                        }

                        v271 = v407;
                      }

                      [v410 setObject:v409 forKeyedSubscript:@"Balances"];
                      v186 = v410;
                      [v434 setObject:v410 forKeyedSubscript:@"State"];

                      v187 = 0;
                      v188 = 0;
                      v66 = 0;
LABEL_198:

                      v68 = v188;
                      v194 = v434;
                      v70 = v187;
LABEL_337:
                      v34 = v194;
LABEL_349:

                      v13 = v428;
                      v72 = v429;
                      v39 = v434;
LABEL_350:

                      goto LABEL_351;
                    }

                    v398 = ATLLogObject();
                    v236 = v407;
                    if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
                    {
                      *v520 = 0;
                      _os_log_impl(&dword_22EEF5000, v398, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola loyalty balances, invalid block", v520, 2u);
                    }

                    v286 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola loyalty balances, invalid block"];
                    v285 = v410;
                    if (a7)
                    {
                      v399 = *a7;
                      v375 = MEMORY[0x277CCA9B8];
                      v400 = *MEMORY[0x277CCA450];
                      v437 = v286;
                      if (*a7)
                      {
                        v401 = *MEMORY[0x277CCA7E8];
                        v480[0] = *MEMORY[0x277CCA450];
                        v480[1] = v401;
                        v481[0] = v286;
                        v481[1] = v399;
                        v378 = MEMORY[0x277CBEAC0];
                        v379 = v481;
                        v380 = v480;
LABEL_327:
                        v402 = 2;
LABEL_344:
                        v395 = [v378 dictionaryWithObjects:v379 forKeys:v380 count:v402];
                        *a7 = [v375 errorWithDomain:@"ATL" code:3 userInfo:v395];
                        goto LABEL_345;
                      }

                      v482 = *MEMORY[0x277CCA450];
                      v483 = v286;
                      v378 = MEMORY[0x277CBEAC0];
                      v379 = &v483;
                      v380 = &v482;
LABEL_343:
                      v402 = 1;
                      goto LABEL_344;
                    }
                  }

                  else
                  {
                    v373 = ATLLogObject();
                    v14 = v426;
                    v15 = v432;
                    v17 = v441;
                    v269 = v409;
                    if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
                    {
                      *v520 = 0;
                      _os_log_impl(&dword_22EEF5000, v373, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola AAVS settings, invalid block", v520, 2u);
                    }

                    v286 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola AAVS settings, invalid block"];
                    v285 = v410;
                    v236 = v407;
                    if (a7)
                    {
                      v374 = *a7;
                      v375 = MEMORY[0x277CCA9B8];
                      v376 = *MEMORY[0x277CCA450];
                      v437 = v286;
                      if (*a7)
                      {
                        v377 = *MEMORY[0x277CCA7E8];
                        v484[0] = *MEMORY[0x277CCA450];
                        v484[1] = v377;
                        v485[0] = v286;
                        v485[1] = v374;
                        v378 = MEMORY[0x277CBEAC0];
                        v379 = v485;
                        v380 = v484;
                        goto LABEL_327;
                      }

                      v486 = *MEMORY[0x277CCA450];
                      v487 = v286;
                      v378 = MEMORY[0x277CBEAC0];
                      v379 = &v487;
                      v380 = &v486;
                      goto LABEL_343;
                    }
                  }

LABEL_346:

LABEL_347:
                  v70 = 0;
                  v68 = 0;
                  v66 = 0;
LABEL_348:
                  v34 = 0;
                  goto LABEL_349;
                }
              }

              v420 = v235;
              v305 = ATLLogObject();
              if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
              {
                *v520 = 0;
                _os_log_impl(&dword_22EEF5000, v305, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola history, invalid blocks", v520, 2u);
              }

              v306 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola history, invalid blocks"];
              v307 = v306;
              v17 = v441;
              v269 = v409;
              v14 = v426;
              if (a7)
              {
                v308 = v15;
                v309 = *a7;
                v310 = MEMORY[0x277CCA9B8];
                v311 = *MEMORY[0x277CCA450];
                if (*a7)
                {
                  v312 = *MEMORY[0x277CCA7E8];
                  v490[0] = *MEMORY[0x277CCA450];
                  v490[1] = v312;
                  v491[0] = v306;
                  v491[1] = v309;
                  v313 = MEMORY[0x277CBEAC0];
                  v314 = v491;
                  v315 = v490;
                  v316 = 2;
                }

                else
                {
                  v492 = *MEMORY[0x277CCA450];
                  v493 = v306;
                  v313 = MEMORY[0x277CBEAC0];
                  v314 = &v493;
                  v315 = &v492;
                  v316 = 1;
                }

                v396 = [v313 dictionaryWithObjects:v314 forKeys:v315 count:v316];
                *a7 = [v310 errorWithDomain:@"ATL" code:3 userInfo:v396];

                v15 = v308;
              }

              v285 = v410;
              v236 = v407;
              v395 = v418;
            }

            else
            {
              v284 = ATLLogObject();
              v285 = v410;
              if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
              {
                *v520 = 0;
                _os_log_impl(&dword_22EEF5000, v284, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola purse, invalid block", v520, 2u);
              }

              v286 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola purse, invalid block"];
              v17 = v441;
              if (!a7)
              {
                v269 = v409;
                goto LABEL_346;
              }

              v287 = *a7;
              v288 = MEMORY[0x277CCA9B8];
              v289 = *MEMORY[0x277CCA450];
              v437 = v286;
              if (*a7)
              {
                v290 = *MEMORY[0x277CCA7E8];
                v494[0] = *MEMORY[0x277CCA450];
                v494[1] = v290;
                v495[0] = v286;
                v495[1] = v287;
                v291 = MEMORY[0x277CBEAC0];
                v292 = v495;
                v293 = v494;
                v294 = 2;
              }

              else
              {
                v496 = *MEMORY[0x277CCA450];
                v497 = v286;
                v291 = MEMORY[0x277CBEAC0];
                v292 = &v497;
                v293 = &v496;
                v294 = 1;
              }

              v395 = [v291 dictionaryWithObjects:v292 forKeys:v293 count:v294];
              *a7 = [v288 errorWithDomain:@"ATL" code:3 userInfo:v395];
              v269 = v409;
            }

LABEL_345:

            v286 = v437;
            goto LABEL_346;
          }

          v146 = v60;
          v147 = ATLLogObject();
          v17 = v441;
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            *v520 = 0;
            _os_log_impl(&dword_22EEF5000, v147, OS_LOG_TYPE_ERROR, "Failed to retrieve Gondola Usage Flag and/or Effectiveness Flag, invalid blocks", v520, 2u);
          }

          v148 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Gondola Usage Flag and/or Effectiveness Flag, invalid blocks"];
          v149 = v148;
          if (a7)
          {
            v412 = v51;
            v150 = v15;
            v151 = *a7;
            v152 = MEMORY[0x277CCA9B8];
            v153 = *MEMORY[0x277CCA450];
            if (*a7)
            {
              v154 = *MEMORY[0x277CCA7E8];
              v500[0] = *MEMORY[0x277CCA450];
              v500[1] = v154;
              v501[0] = v148;
              v501[1] = v151;
              v155 = MEMORY[0x277CBEAC0];
              v156 = v501;
              v157 = v500;
              v158 = 2;
            }

            else
            {
              v502 = *MEMORY[0x277CCA450];
              v503 = v148;
              v155 = MEMORY[0x277CBEAC0];
              v156 = &v503;
              v157 = &v502;
              v158 = 1;
            }

            v347 = [v155 dictionaryWithObjects:v156 forKeys:v157 count:v158];
            *a7 = [v152 errorWithDomain:@"ATL" code:3 userInfo:v347];

            v15 = v150;
            v51 = v412;
          }

          goto LABEL_321;
        }

LABEL_43:
        v430 = v15;
        v424 = v14;
        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v49];
        [v434 setObject:v73 forKeyedSubscript:@"NFServiceProviderID"];

        v74 = 0;
        v66 = 0;
        v68 = 0;
        v70 = 0;
        while (1)
        {
          v75 = v66;
          v66 = FelicaGetDataFileSystemCommand(2319, v74);

          if (v66)
          {
            v76 = [v12 transceiveAndCheckSW:v66 error:a7];

            if (!v76)
            {
              v68 = 0;
              v34 = 0;
              goto LABEL_184;
            }

            v77 = FeliCaGetBlockDataFromGetDataCommand(v76);

            if (v77)
            {
              [v440 addObject:v77];
              v70 = v77;
            }

            else
            {
              v78 = ATLLogObject();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *v520 = 67109378;
                v521 = v74;
                v522 = 2112;
                *v523 = v76;
                _os_log_impl(&dword_22EEF5000, v78, OS_LOG_TYPE_DEFAULT, "failed to get block for Suica history, blocknumber %04x with response %@", v520, 0x12u);
              }

              v70 = 0;
            }

            v68 = v76;
            v17 = v441;
          }

          if (++v74 == 20)
          {
            if (![v440 count])
            {
              v106 = ATLLogObject();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *v520 = 0;
                _os_log_impl(&dword_22EEF5000, v106, OS_LOG_TYPE_ERROR, "Suica History failure: could not get a single history block. Aborting.", v520, 2u);
              }

              v107 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Suica History failure: could not get a single history block. Aborting."];
              v108 = v107;
              if (a7)
              {
                v109 = *a7;
                v110 = MEMORY[0x277CCA9B8];
                v111 = *MEMORY[0x277CCA450];
                if (*a7)
                {
                  v112 = *MEMORY[0x277CCA7E8];
                  v528[0] = *MEMORY[0x277CCA450];
                  v528[1] = v112;
                  v529[0] = v107;
                  v529[1] = v109;
                  v113 = MEMORY[0x277CBEAC0];
                  v114 = v529;
                  v115 = v528;
                  v116 = 2;
                }

                else
                {
                  v530 = *MEMORY[0x277CCA450];
                  v531 = v107;
                  v113 = MEMORY[0x277CBEAC0];
                  v114 = &v531;
                  v115 = &v530;
                  v116 = 1;
                }

                v197 = [v113 dictionaryWithObjects:v114 forKeys:v115 count:v116];
                *a7 = [v110 errorWithDomain:@"ATL" code:3 userInfo:v197];

                v14 = v424;
              }

              v34 = 0;
              v15 = v430;
              goto LABEL_349;
            }

            v79 = [HPHistoryDecoder parseSuicaHistoryBlocks:v440 withIDm:v429];
            [v434 addEntriesFromDictionary:v79];

            [v434 setObject:&unk_2843C6AD0 forKeyedSubscript:@"NFServiceProviderID"];
            v80 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v49];
            [v434 setObject:v80 forKeyedSubscript:@"SPRaw"];

            v81 = [v429 asHexString];
            [v434 setObject:v81 forKeyedSubscript:@"NFDPAN"];

            v82 = FelicaGetDataFileSystemCommand(4239, 0);

            if (!v82)
            {
              v34 = v68;
              goto LABEL_121;
            }

            v34 = [v12 transceiveAndCheckSW:v82 error:a7];

            if (v34)
            {
              v83 = FeliCaGetBlockDataFromGetDataCommand(v34);

              if (v83)
              {
                v84 = [HPHistoryDecoder getInOutStation:v83];
                var1 = v84.var1;
                v86 = [MEMORY[0x277CCABB0] numberWithInt:v84.var0];
                [v434 setObject:v86 forKeyedSubscript:@"NFInStation"];

                v87 = [MEMORY[0x277CCABB0] numberWithInt:var1];
                [v434 setObject:v87 forKeyedSubscript:@"NFInStationShinkansen"];

                v14 = v424;
                v70 = v83;
              }

              else
              {
                v70 = 0;
              }

LABEL_121:
              v66 = FelicaGetDataFileSystemCommand(6219, 0);

              if (!v66)
              {
                v68 = v34;
                goto LABEL_127;
              }

              v68 = [v12 transceiveAndCheckSW:v66 error:a7];

              if (v68)
              {
                v191 = FeliCaGetBlockDataFromGetDataCommand(v68);

                v70 = v191;
                if (v191)
                {
                  v192 = [HPHistoryDecoder getGreenCarTicketUsed:v191];
                  v193 = [MEMORY[0x277CCABB0] numberWithBool:v192];
                  v194 = v434;
                  [v434 setObject:v193 forKeyedSubscript:@"NFTicketUsed"];

                  v195 = [MEMORY[0x277CBEB18] array];
                  [v195 addObject:v70];
                  v196 = [HPHistoryDecoder parseGreencarBlocks:v195];
                  if (v196)
                  {
                    [v434 setObject:v196 forKeyedSubscript:@"NFGreenCarTicket"];
                  }

                  else
                  {
                    v275 = ATLLogObject();
                    if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                    {
                      *v520 = 0;
                      _os_log_impl(&dword_22EEF5000, v275, OS_LOG_TYPE_DEFAULT, "failed to parse GreenCar blocks", v520, 2u);
                    }

                    v14 = v424;
                  }

LABEL_193:
                  v276 = FelicaGetDataFileSystemCommand(139, 0);

                  v66 = v276;
                  v15 = v430;
                  if (!v276)
                  {
                    v17 = v441;
                    goto LABEL_337;
                  }

                  v277 = v70;
                  v188 = [v12 transceiveAndCheckSW:v276 error:a7];

                  if (v188)
                  {
                    v278 = FeliCaGetBlockDataFromGetDataCommand(v188);

                    if (v278)
                    {
                      v279 = [HPHistoryDecoder getCommuterBalance:v278];
                      v280 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(*&v279)];
                      [v434 setObject:v280 forKeyedSubscript:@"NFBalance"];

                      v281 = *([v278 bytes] + 8);
                      v282 = [MEMORY[0x277CCABB0] numberWithInt:(v281 >> 4) & 1];
                      [v434 setObject:v282 forKeyedSubscript:@"NFNotifyOnLowBalance"];

                      v283 = [MEMORY[0x277CCABB0] numberWithInt:(v281 >> 5) & 1];
                      [v434 setObject:v283 forKeyedSubscript:@"NFAllowBalanceUsageForCommute"];

                      v186 = [MEMORY[0x277CCABB0] numberWithBool:{+[HPHistoryDecoder getIsDenyListed:](HPHistoryDecoder, "getIsDenyListed:", v278)}];
                      [v434 setObject:v186 forKeyedSubscript:@"NFBlacklisted"];
                      v187 = v278;
LABEL_197:
                      v17 = v441;
                      goto LABEL_198;
                    }

                    v68 = v188;
                    v70 = 0;
                    v17 = v441;
LABEL_336:
                    v194 = v434;
                    goto LABEL_337;
                  }

                  v68 = 0;
                  v34 = 0;
                  v70 = v277;
LABEL_185:
                  v17 = v441;
                  goto LABEL_349;
                }

LABEL_127:
                v194 = v434;
                goto LABEL_193;
              }

LABEL_183:
              v34 = 0;
            }

            else
            {
              v68 = 0;
              v66 = v82;
            }

LABEL_184:
            v15 = v430;
            goto LABEL_185;
          }
        }
      }

      if (v50 == 224 || v50 == 8)
      {
        goto LABEL_43;
      }

LABEL_59:
      v88 = ATLLogObject();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *v520 = 67109120;
        v521 = v50;
        _os_log_impl(&dword_22EEF5000, v88, OS_LOG_TYPE_ERROR, "Could not GET APPLET HISTORY: unknown Service Provider ID %02X in SELECT Response", v520, 8u);
      }

      v89 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Could not GET APPLET HISTORY: unknown Service Provider ID %02X in SELECT Response", v50];
      v90 = v89;
      if (a7)
      {
        v91 = v15;
        v92 = *a7;
        v93 = MEMORY[0x277CCA9B8];
        v94 = *MEMORY[0x277CCA450];
        if (*a7)
        {
          v95 = *MEMORY[0x277CCA7E8];
          v455[0] = *MEMORY[0x277CCA450];
          v455[1] = v95;
          v456[0] = v89;
          v456[1] = v92;
          v96 = MEMORY[0x277CBEAC0];
          v97 = v456;
          v98 = v455;
          v99 = 2;
        }

        else
        {
          v457 = *MEMORY[0x277CCA450];
          v458 = v89;
          v96 = MEMORY[0x277CBEAC0];
          v97 = &v458;
          v98 = &v457;
          v99 = 1;
        }

        v189 = [v96 dictionaryWithObjects:v97 forKeys:v98 count:v99];
        *a7 = [v93 errorWithDomain:@"ATL" code:3 userInfo:v189];

        v15 = v91;
      }

      goto LABEL_347;
    }

    if (v50 == 1)
    {
      goto LABEL_43;
    }

    if (v50 == 4)
    {
      v431 = v15;
      v51 = [MEMORY[0x277CBEB38] dictionary];
      [v51 setObject:&unk_2843C6B90 forKeyedSubscript:@"SPRaw"];
      [v51 setObject:@"Mogul" forKeyedSubscript:@"SP"];
      v100 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:0 withTransceiver:v12 withError:a7];
      v101 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:1 withTransceiver:v12 withError:a7];
      v102 = v101;
      if (!v100 || !v101)
      {
        v130 = ATLLogObject();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          *v520 = 0;
          _os_log_impl(&dword_22EEF5000, v130, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul card settings, invalid blocks", v520, 2u);
        }

        v131 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul card settings, invalid blocks"];
        v132 = v131;
        if (a7)
        {
          v133 = *a7;
          v134 = MEMORY[0x277CCA9B8];
          v135 = *MEMORY[0x277CCA450];
          if (*a7)
          {
            v136 = *MEMORY[0x277CCA7E8];
            v476[0] = *MEMORY[0x277CCA450];
            v476[1] = v136;
            v477[0] = v131;
            v477[1] = v133;
            v137 = MEMORY[0x277CBEAC0];
            v138 = v477;
            v139 = v476;
            v140 = 2;
          }

          else
          {
            v478 = *MEMORY[0x277CCA450];
            v479 = v131;
            v137 = MEMORY[0x277CBEAC0];
            v138 = &v479;
            v139 = &v478;
            v140 = 1;
          }

          v274 = [v137 dictionaryWithObjects:v138 forKeys:v139 count:v140];
          *a7 = [v134 errorWithDomain:@"ATL" code:3 userInfo:v274];

          v15 = v431;
        }

        v70 = 0;
        v68 = 0;
        v66 = 0;
        v34 = 0;
        goto LABEL_185;
      }

      v425 = v14;
      v103 = [MogulDecoder decodeCardID:v100];
      [v51 setObject:v103 forKeyedSubscript:@"CardIdentifier"];
      v104 = [MogulDecoder decodeEnableFlag:v102];
      v105 = [MogulDecoder decodeStatusFlag:v102];
      if (!v104 || (v105 & 0xFFFFFFFD) != 0)
      {
        v159 = [MEMORY[0x277CCABB0] numberWithInt:v104 != 1];
        [v51 setObject:v159 forKeyedSubscript:@"CardDenyListed"];
      }

      else
      {
        [v51 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CardDenyListed"];
      }

      v160 = [MogulDecoder decodeChargeAmountFlagValue:v102];
      if (v160)
      {
        [v51 setObject:v160 forKeyedSubscript:@"CardDefaultAAVSAmount"];
      }

      v161 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      v162 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21911 withBlockNumber:0 withTransceiver:v12 withError:a7];

      if (v162)
      {
        v413 = v51;
        v422 = v162;
        v163 = [MogulDecoder getPurseBalance:v162];
        v474[0] = @"BalanceIdentifier";
        v474[1] = @"Balance";
        v475[0] = @"Purse";
        v475[1] = v163;
        v474[2] = @"BalanceCurrency";
        v474[3] = @"BalanceCurrencyExponent";
        v475[2] = @"JPY";
        v475[3] = &unk_2843C6AB8;
        v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v475 forKeys:v474 count:4];
        v165 = v161;
        v166 = v164;
        v436 = v165;
        [v165 addObject:v164];

        v167 = [MEMORY[0x277CBEB18] array];
        v168 = 0;
        v169 = 0;
        do
        {
          v170 = v169;
          v169 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22095 withBlockNumber:v168 withTransceiver:v12 withError:a7];

          if (!v169)
          {
            v208 = ATLLogObject();
            if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
            {
              *v520 = 0;
              _os_log_impl(&dword_22EEF5000, v208, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul history, invalid block", v520, 2u);
            }

            v209 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul history, invalid block"];
            v210 = v209;
            v51 = v413;
            if (a7)
            {
              v211 = *a7;
              v212 = MEMORY[0x277CCA9B8];
              v213 = *MEMORY[0x277CCA450];
              if (*a7)
              {
                v214 = *MEMORY[0x277CCA7E8];
                v466[0] = *MEMORY[0x277CCA450];
                v466[1] = v214;
                v467[0] = v209;
                v467[1] = v211;
                v215 = MEMORY[0x277CBEAC0];
                v216 = v467;
                v217 = v466;
                v218 = 2;
              }

              else
              {
                v468 = *MEMORY[0x277CCA450];
                v469 = v209;
                v215 = MEMORY[0x277CBEAC0];
                v216 = &v469;
                v217 = &v468;
                v218 = 1;
              }

              v348 = [v215 dictionaryWithObjects:v216 forKeys:v217 count:v218];
              *a7 = [v212 errorWithDomain:@"ATL" code:3 userInfo:v348];

              v15 = v431;
            }

            v173 = v422;
LABEL_318:
            v161 = v436;
            goto LABEL_319;
          }

          v171 = [MogulDecoder decodeTransactionHistoryEntry:v169];
          if (v171)
          {
            [v167 addObject:v171];
          }

          v172 = v168++;
        }

        while (v172 < 4);
        [v434 setObject:v167 forKeyedSubscript:@"TransactionHistory"];

        v173 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:0 withTransceiver:v12 withError:a7];

        v174 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:1 withTransceiver:v12 withError:a7];

        if (v173 && v174)
        {
          v414 = v12;
          v417 = v174;
          v175 = [MogulDecoder decodePointsData:v173 andWith:v174];
          v176 = v175;
          if (v175)
          {
            v446 = 0u;
            v447 = 0u;
            v444 = 0u;
            v445 = 0u;
            v177 = [v175 countByEnumeratingWithState:&v444 objects:v465 count:16];
            if (v177)
            {
              v178 = v177;
              v179 = *v445;
              do
              {
                for (j = 0; j != v178; ++j)
                {
                  if (*v445 != v179)
                  {
                    objc_enumerationMutation(v176);
                  }

                  v181 = *(*(&v444 + 1) + 8 * j);
                  v463[0] = @"Balance";
                  v182 = [v181 balance];
                  v464[0] = v182;
                  v464[1] = @"XXX";
                  v463[1] = @"BalanceCurrency";
                  v463[2] = @"BalanceCurrencyExponent";
                  v464[2] = &unk_2843C6AB8;
                  v463[3] = @"BalanceExpirationDate";
                  v183 = [v181 expiration];
                  v464[3] = v183;
                  v463[4] = @"BalanceIdentifier";
                  v184 = [v181 name];
                  v464[4] = v184;
                  v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v464 forKeys:v463 count:5];
                  [v436 addObject:v185];
                }

                v178 = [v176 countByEnumeratingWithState:&v444 objects:v465 count:16];
              }

              while (v178);
            }
          }

          v186 = v413;
          [v413 setObject:v436 forKeyedSubscript:@"Balances"];
          [v434 setObject:v413 forKeyedSubscript:@"State"];

          v187 = 0;
          v188 = 0;
          v66 = 0;
          v12 = v414;
          v14 = v425;
          v15 = v431;
          goto LABEL_197;
        }

        v327 = ATLLogObject();
        if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
        {
          *v520 = 0;
          _os_log_impl(&dword_22EEF5000, v327, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul loyalty points, invalid blocks", v520, 2u);
        }

        v328 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul loyalty points, invalid blocks"];
        v167 = v328;
        v161 = v436;
        v102 = v174;
        if (a7)
        {
          v329 = *a7;
          v330 = MEMORY[0x277CCA9B8];
          v331 = *MEMORY[0x277CCA450];
          v51 = v413;
          if (*a7)
          {
            v332 = *MEMORY[0x277CCA7E8];
            v459[0] = *MEMORY[0x277CCA450];
            v459[1] = v332;
            v460[0] = v328;
            v460[1] = v329;
            v333 = MEMORY[0x277CBEAC0];
            v334 = v460;
            v335 = v459;
            v336 = 2;
          }

          else
          {
            v461 = *MEMORY[0x277CCA450];
            v462 = v328;
            v333 = MEMORY[0x277CBEAC0];
            v334 = &v462;
            v335 = &v461;
            v336 = 1;
          }

          v397 = [v333 dictionaryWithObjects:v334 forKeys:v335 count:v336];
          *a7 = [v330 errorWithDomain:@"ATL" code:3 userInfo:v397];

          goto LABEL_318;
        }

        v51 = v413;
LABEL_319:

        v17 = v441;
      }

      else
      {
        v198 = ATLLogObject();
        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          *v520 = 0;
          _os_log_impl(&dword_22EEF5000, v198, OS_LOG_TYPE_ERROR, "Failed to retrieve Mogul purse balance, invalid block", v520, 2u);
        }

        v199 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to retrieve Mogul purse balance, invalid block"];
        v173 = v199;
        v17 = v441;
        if (a7)
        {
          v200 = *a7;
          v201 = MEMORY[0x277CCA9B8];
          v202 = *MEMORY[0x277CCA450];
          if (*a7)
          {
            v203 = *MEMORY[0x277CCA7E8];
            v470[0] = *MEMORY[0x277CCA450];
            v470[1] = v203;
            v471[0] = v199;
            v471[1] = v200;
            v204 = MEMORY[0x277CBEAC0];
            v205 = v471;
            v206 = v470;
            v207 = 2;
          }

          else
          {
            v472 = *MEMORY[0x277CCA450];
            v473 = v199;
            v204 = MEMORY[0x277CBEAC0];
            v205 = &v473;
            v206 = &v472;
            v207 = 1;
          }

          v167 = [v204 dictionaryWithObjects:v205 forKeys:v206 count:v207];
          *a7 = [v201 errorWithDomain:@"ATL" code:3 userInfo:v167];
          goto LABEL_319;
        }
      }

LABEL_321:
      goto LABEL_347;
    }

    if (v50 != 5)
    {
      goto LABEL_59;
    }

    v65 = [MEMORY[0x277CBEB38] dictionary];
    [v65 setObject:&unk_2843C6B60 forKeyedSubscript:@"SPRaw"];
    v66 = FelicaGetDataFileSystemCommand(279, 0);
    v421 = v65;
    if (!v66)
    {
      v411 = 0;
      v70 = 0;
      v68 = 0;
      goto LABEL_86;
    }

    v67 = [v12 transceiveAndCheckSW:v66 error:a7];
    v68 = v67;
    if (!v67)
    {
      v190 = 0;
      v70 = 0;
      goto LABEL_312;
    }

    v69 = FeliCaGetBlockDataFromGetDataCommand(v67);
    if (v69)
    {
      v70 = v69;
      v71 = [OctopusDecoder getPurseBalance:v69];
      if (v71)
      {
        v411 = v71;
LABEL_86:
        v141 = FelicaGetDataFileSystemCommand(1800, 0);

        if (!v141)
        {
          v142 = v68;
          goto LABEL_221;
        }

        v142 = [v12 transceiveAndCheckSW:v141 error:a7];

        if (v142)
        {
          v143 = v15;
          v144 = FeliCaGetBlockDataFromGetDataCommand(v142);

          if (v144)
          {
            v145 = [OctopusDecoder getLoyaltyBalance:v144];
            [v421 setObject:v145 forKeyedSubscript:@"PointBalance"];
            v70 = v144;
          }

          else
          {
            v145 = ATLLogObject();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
            {
              *v520 = 67109634;
              v521 = 1800;
              v522 = 1024;
              *v523 = 0;
              *&v523[4] = 2112;
              *&v523[6] = v142;
              _os_log_impl(&dword_22EEF5000, v145, OS_LOG_TYPE_DEFAULT, "Octopus Rewards : GET DATA for Service Code %d and block %d is invalid: %@", v520, 0x18u);
            }

            v70 = 0;
          }

          v15 = v143;

          v65 = v421;
LABEL_221:
          v438 = v141;
          v317 = [v65 objectForKeyedSubscript:@"PointBalance"];

          if (!v317)
          {
            v318 = ATLLogObject();
            if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
            {
              *v520 = 0;
              _os_log_impl(&dword_22EEF5000, v318, OS_LOG_TYPE_DEFAULT, "failed to retrieved rewards", v520, 2u);
            }
          }

          v319 = v142;
          v320 = [MEMORY[0x277CBEAA8] date];
          v66 = FelicaGetDataFileSystemCommand(776, 0);

          v433 = v15;
          if (v66)
          {
            v419 = v320;
            v68 = [v12 transceiveAndCheckSW:v66 error:a7];

            if (v68)
            {
              v321 = FeliCaGetBlockDataFromGetDataCommand(v68);

              if (v321)
              {
                v322 = [OctopusDecoder getBaseDate:v321];

                v408 = [OctopusDecoder getNegativeValueLimit:v321];
                v70 = v321;
                v323 = [OctopusDecoder getAAVSAmount:v321];
                if (v323)
                {
                  v324 = v421;
                  [v421 setObject:v323 forKeyedSubscript:@"CardDefaultAAVSAmount"];
                }

                else
                {
                  v349 = v14;
                  v350 = ATLLogObject();
                  if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
                  {
                    *v520 = 0;
                    _os_log_impl(&dword_22EEF5000, v350, OS_LOG_TYPE_DEFAULT, "failed to retrieved AAVS amount", v520, 2u);
                  }

                  v14 = v349;
                  v324 = v421;
                }

                if (v408 && v411)
                {
                  v351 = [v411 decimalNumberBySubtracting:?];
                  [v324 setObject:v351 forKeyedSubscript:@"Balance"];

                  *v520 = 0;
                  v325 = [ATLCurrency currencyCodeForNumber:344 exponentOut:v520];
                  if (v325)
                  {
                    [v324 setObject:v325 forKeyedSubscript:@"CardCurrency"];
                    [MEMORY[0x277CCABB0] numberWithShort:*v520];
                    v353 = v352 = v14;
                    [v421 setObject:v353 forKeyedSubscript:@"CardCurrencyExponent"];

                    v14 = v352;
                    [v421 setObject:&unk_2843C6BF0 forKeyedSubscript:@"CardCurrencyCode"];
                  }

LABEL_261:

                  v419 = v322;
                  v416 = [MEMORY[0x277CBEB18] array];
                  v354 = 0;
                  v439 = v68;
                  v15 = v433;
                  v17 = v441;
                  v427 = v14;
                  while (1)
                  {
                    v355 = v66;
                    v66 = FelicaGetDataFileSystemCommand(1036, v354);

                    if (v66)
                    {
                      v68 = [v12 transceiveAndCheckSW:v66 error:a7];

                      if (!v68)
                      {
                        v326 = 0;
                        goto LABEL_289;
                      }

                      v439 = v68;
                      v356 = FeliCaGetBlockDataFromGetDataCommand(v68);

                      if (v356)
                      {
                        v357 = [OctopusDecoder parseTLOGBlock:v356 withBaseDate:v419];
                        if (v357)
                        {
                          v358 = [v421 objectForKeyedSubscript:@"CardDefaultAAVSAmount"];
                          v359 = [v421 objectForKeyedSubscript:@"Balance"];
                          v360 = [OctopusDecoder injectTLOGAAVS:v357 withAAVSAmount:v358 andBalance:v359];

                          if (![OctopusDecoder filterHistoryEntry:v357])
                          {
                            [v416 addObject:v357];
                          }

                          if (v360)
                          {
                            [v416 addObject:v360];
                          }

                          v14 = v427;
                          v17 = v441;
                        }
                      }

                      else
                      {
                        v357 = ATLLogObject();
                        if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                        {
                          *v520 = 67109634;
                          v521 = 1036;
                          v522 = 1024;
                          *v523 = v354;
                          *&v523[4] = 2112;
                          *&v523[6] = v439;
                          _os_log_impl(&dword_22EEF5000, v357, OS_LOG_TYPE_DEFAULT, "Octopus TLOG : GET DATA for Service Code %d and block %d is invalid: %@", v520, 0x18u);
                        }

                        v356 = 0;
                      }

                      v70 = v356;
                      v15 = v433;
                    }

                    if (++v354 == 10)
                    {
                      v361 = FelicaGetDataFileSystemCommand(520, 0);

                      if (v361)
                      {
                        v68 = [v12 transceiveAndCheckSW:v361 error:a7];

                        if (v68)
                        {
                          v442 = v361;
                          v362 = FeliCaGetBlockDataFromGetDataCommand(v68);

                          if (v362)
                          {
                            v363 = v15;
                            v364 = [MEMORY[0x277CCABB0] numberWithInt:{+[OctopusDecoder isDenyListed:](OctopusDecoder, "isDenyListed:", v362)}];
                            [v421 setObject:v364 forKeyedSubscript:@"CardDenyListed"];

                            v15 = v363;
                            v365 = v421;
                            v70 = v362;
                            v361 = v442;
                            goto LABEL_282;
                          }

                          v381 = ATLLogObject();
                          if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
                          {
                            *v520 = 67109634;
                            v521 = 520;
                            v522 = 1024;
                            *v523 = 0;
                            *&v523[4] = 2112;
                            *&v523[6] = v68;
                            _os_log_impl(&dword_22EEF5000, v381, OS_LOG_TYPE_ERROR, "Octopus Card Settings : GET DATA for Service Code %d and block %d is invalid: %@", v520, 0x18u);
                          }

                          v382 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Card Settings : GET DATA for Service Code %d and block %d is invalid: %@", 520, 0, v68];
                          v383 = v382;
                          if (a7)
                          {
                            v384 = v15;
                            v385 = v14;
                            v386 = *a7;
                            v387 = MEMORY[0x277CCA9B8];
                            v388 = *MEMORY[0x277CCA450];
                            if (*a7)
                            {
                              v389 = *MEMORY[0x277CCA7E8];
                              v508[0] = *MEMORY[0x277CCA450];
                              v508[1] = v389;
                              v509[0] = v382;
                              v509[1] = v386;
                              v390 = MEMORY[0x277CBEAC0];
                              v391 = v509;
                              v392 = v508;
                              v393 = 2;
                            }

                            else
                            {
                              v510 = *MEMORY[0x277CCA450];
                              v511 = v382;
                              v390 = MEMORY[0x277CBEAC0];
                              v391 = &v511;
                              v392 = &v510;
                              v393 = 1;
                            }

                            v404 = [v390 dictionaryWithObjects:v391 forKeys:v392 count:v393];
                            *a7 = [v387 errorWithDomain:@"ATL" code:3 userInfo:v404];

                            v14 = v385;
                            v15 = v384;
                          }

                          v394 = 0;
                          v326 = 0;
                          v66 = v442;
                          v366 = v416;
LABEL_333:

                          v338 = v408;
                          goto LABEL_334;
                        }

                        v326 = 0;
                        v66 = v361;
LABEL_289:
                        v366 = v416;
                      }

                      else
                      {
                        v68 = v439;
                        v365 = v421;
LABEL_282:
                        v66 = FelicaGetDataFileSystemCommand(2312, 0);

                        v366 = v416;
                        if (v66)
                        {
                          v367 = [v12 transceiveAndCheckSW:v66 error:0];

                          if (v367)
                          {
                            v368 = FeliCaGetBlockDataFromGetDataCommand(v367);

                            if (v368)
                            {
                              if ([OctopusDecoder getEnRouteStatus:v368])
                              {
                                [MEMORY[0x277CBEB18] arrayWithObject:@"TransitTrain"];
                                v370 = v369 = v15;
                                [v421 setObject:v370 forKeyedSubscript:@"TransactionInProgress"];

                                v15 = v369;
                                v365 = v421;
                              }

                              v70 = v368;
                            }

                            else
                            {
                              v70 = 0;
                            }
                          }
                        }

                        else
                        {
                          v367 = v68;
                        }

                        [v434 setObject:v416 forKeyedSubscript:@"TransactionHistory"];
                        [v434 setObject:v365 forKeyedSubscript:@"State"];
                        v326 = 1;
                        v68 = v367;
                      }

                      v394 = v70;
                      goto LABEL_333;
                    }
                  }
                }

LABEL_231:
                v325 = ATLLogObject();
                if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                {
                  *v520 = 0;
                  _os_log_impl(&dword_22EEF5000, v325, OS_LOG_TYPE_DEFAULT, "failed to retrieved negative value limit", v520, 2u);
                }

                goto LABEL_261;
              }

              v337 = ATLLogObject();
              if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
              {
                *v520 = 67109634;
                v521 = 776;
                v522 = 1024;
                *v523 = 0;
                *&v523[4] = 2112;
                *&v523[6] = v68;
                _os_log_impl(&dword_22EEF5000, v337, OS_LOG_TYPE_ERROR, "Octopus Internal : GET DATA for Service Code %d and block %d is invalid: %@", v520, 0x18u);
              }

              v338 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Internal : GET DATA for Service Code %d and block %d is invalid: %@", 776, 0, v68];
              if (a7)
              {
                v339 = *a7;
                v340 = MEMORY[0x277CCA9B8];
                v341 = *MEMORY[0x277CCA450];
                v408 = v338;
                if (*a7)
                {
                  v342 = *MEMORY[0x277CCA7E8];
                  v512[0] = *MEMORY[0x277CCA450];
                  v512[1] = v342;
                  v513[0] = v338;
                  v513[1] = v339;
                  v343 = MEMORY[0x277CBEAC0];
                  v344 = v513;
                  v345 = v512;
                  v346 = 2;
                }

                else
                {
                  v514 = *MEMORY[0x277CCA450];
                  v515 = v338;
                  v343 = MEMORY[0x277CBEAC0];
                  v344 = &v515;
                  v345 = &v514;
                  v346 = 1;
                }

                v403 = [v343 dictionaryWithObjects:v344 forKeys:v345 count:v346];
                [v340 errorWithDomain:@"ATL" code:3 userInfo:v403];
                v394 = 0;
                *a7 = v326 = 0;
                v366 = v403;
                goto LABEL_333;
              }

              v394 = 0;
              v326 = 0;
LABEL_334:

              v70 = v394;
            }

            else
            {
              v326 = 0;
            }

            if ((v326 & 1) == 0)
            {
              goto LABEL_348;
            }

            goto LABEL_336;
          }

          v408 = 0;
          v68 = v319;
          v322 = v320;
          goto LABEL_231;
        }

        v68 = 0;
        v66 = v141;
        v190 = v411;
LABEL_312:

        goto LABEL_348;
      }

      v219 = v14;
      v295 = ATLLogObject();
      if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
      {
        *v520 = 0;
        _os_log_impl(&dword_22EEF5000, v295, OS_LOG_TYPE_ERROR, "failed to retrieved balance", v520, 2u);
      }

      v296 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to retrieved balance"];
      v222 = v296;
      if (a7)
      {
        v223 = v15;
        v297 = *a7;
        v298 = MEMORY[0x277CCA9B8];
        v299 = *MEMORY[0x277CCA450];
        if (*a7)
        {
          v300 = *MEMORY[0x277CCA7E8];
          v524[0] = *MEMORY[0x277CCA450];
          v524[1] = v300;
          v525[0] = v296;
          v525[1] = v297;
          v301 = MEMORY[0x277CBEAC0];
          v302 = v525;
          v303 = v524;
          v304 = 2;
        }

        else
        {
          v526 = *MEMORY[0x277CCA450];
          v527 = v296;
          v301 = MEMORY[0x277CBEAC0];
          v302 = &v527;
          v303 = &v526;
          v304 = 1;
        }

        v371 = [v301 dictionaryWithObjects:v302 forKeys:v303 count:v304];
        v372 = [v298 errorWithDomain:@"ATL" code:3 userInfo:v371];
LABEL_310:
        *a7 = v372;

        v14 = v219;
        v15 = v223;
        goto LABEL_311;
      }
    }

    else
    {
      v219 = v14;
      v220 = ATLLogObject();
      if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
      {
        *v520 = 67109634;
        v521 = 279;
        v522 = 1024;
        *v523 = 0;
        *&v523[4] = 2112;
        *&v523[6] = v68;
        _os_log_impl(&dword_22EEF5000, v220, OS_LOG_TYPE_ERROR, "Octopus Purse : GET DATA for Service Code %d and block %d is invalid: %@", v520, 0x18u);
      }

      v221 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Octopus Purse : GET DATA for Service Code %d and block %d is invalid: %@", 279, 0, v68];
      v222 = v221;
      if (a7)
      {
        v223 = v15;
        v224 = *a7;
        v225 = MEMORY[0x277CCA9B8];
        v226 = *MEMORY[0x277CCA450];
        if (*a7)
        {
          v227 = *MEMORY[0x277CCA7E8];
          v516[0] = *MEMORY[0x277CCA450];
          v516[1] = v227;
          v517[0] = v221;
          v517[1] = v224;
          v228 = MEMORY[0x277CBEAC0];
          v229 = v517;
          v230 = v516;
          v231 = 2;
        }

        else
        {
          v518 = *MEMORY[0x277CCA450];
          v519 = v221;
          v228 = MEMORY[0x277CBEAC0];
          v229 = &v519;
          v230 = &v518;
          v231 = 1;
        }

        v371 = [v228 dictionaryWithObjects:v229 forKeys:v230 count:v231];
        v372 = [v225 errorWithDomain:@"ATL" code:3 userInfo:v371];
        v70 = 0;
        goto LABEL_310;
      }

      v70 = 0;
    }

    v14 = v219;
LABEL_311:

    v190 = 0;
    v17 = v441;
    v65 = v421;
    goto LABEL_312;
  }

  v36 = v35;
  v37 = ATLLogObject();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *v520 = 67109120;
    v521 = v36;
    _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v520, 8u);
  }

  v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v36];
  v39 = v38;
  if (a7)
  {
    v40 = *a7;
    v41 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v43 = *MEMORY[0x277CCA7E8];
      v532[0] = *MEMORY[0x277CCA450];
      v532[1] = v43;
      v533[0] = v38;
      v533[1] = v40;
      v44 = MEMORY[0x277CBEAC0];
      v45 = v533;
      v46 = v532;
      v47 = 2;
    }

    else
    {
      v534 = *MEMORY[0x277CCA450];
      v535 = v38;
      v44 = MEMORY[0x277CBEAC0];
      v45 = &v535;
      v46 = &v534;
      v47 = 1;
    }

    v72 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47];
    [v41 errorWithDomain:@"ATL" code:3 userInfo:v72];
    *a7 = v34 = 0;
    goto LABEL_350;
  }

  v34 = 0;
LABEL_351:
  v19 = v443;

LABEL_352:
  v405 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)GetAppletProperties:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C6AE8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:{2, a6, a7}];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)processEndOfTransaction:(id)a3 withApplet:(id)a4 withPackage:(id)a5 withModule:(id)a6 withError:(id *)a7
{
  v88[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    self->_eotInProgress = 1;
    v12 = [MEMORY[0x277CBEA90] dataWithHexString:v11];
    v13 = EndOfTransactionCmd(v12, 0);
    v14 = [v10 transceive:v13 error:0];
    v15 = SelectByNameCmd(v12);

    v16 = [v10 transceiveAndCheckSW:v15 error:a7];
    v65[0] = [v16 bytes];
    v65[1] = [v16 length];
    v63 = 0;
    v64[0] = 0;
    v64[1] = 0;
    DERFindItem(v65, 0xA000000000000005, &v63);
    if (v17)
    {
      v18 = v17;
      v19 = ATLLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v18;
        _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", buf, 8u);
      }

      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v18];
      v21 = v20;
      if (!a7)
      {
        goto LABEL_30;
      }

      v22 = *a7;
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v25 = *MEMORY[0x277CCA7E8];
        v81[0] = *MEMORY[0x277CCA450];
        v81[1] = v25;
        v82[0] = v20;
        v82[1] = v22;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v82;
        v28 = v81;
LABEL_19:
        v47 = 2;
LABEL_29:
        v52 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v47];
        *a7 = [v23 errorWithDomain:@"ATL" code:3 userInfo:v52];

LABEL_30:
        self->_eotInProgress = 0;
        [(NSMutableArray *)self->_hciArray removeAllObjects];
        v49 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v83 = *MEMORY[0x277CCA450];
      v84 = v20;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v84;
      v28 = &v83;
      goto LABEL_28;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v40 = DERParseSequenceSpec(v64, &selectResponseA5ContentSpec, buf, 0x18uLL);
    if (v40)
    {
      v41 = v40;
      v42 = ATLLogObject();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v72 = 67109120;
        v73 = v41;
        _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v72, 8u);
      }

      v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v41];
      v21 = v43;
      if (!a7)
      {
        goto LABEL_30;
      }

      v44 = *a7;
      v23 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v68[0] = *MEMORY[0x277CCA450];
        v68[1] = v46;
        v69[0] = v43;
        v69[1] = v44;
        v26 = MEMORY[0x277CBEAC0];
        v27 = v69;
        v28 = v68;
        goto LABEL_19;
      }

      v70 = *MEMORY[0x277CCA450];
      v71 = v43;
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v71;
      v28 = &v70;
LABEL_28:
      v47 = 1;
      goto LABEL_29;
    }

    v50 = *v79;
    if (v50 == 3)
    {
      v51 = off_2788744B0;
    }

    else
    {
      if (v50 != 2)
      {
        self->_eotInProgress = 0;
        [(NSMutableArray *)self->_hciArray removeAllObjects];
        goto LABEL_43;
      }

      v51 = off_2788744C0;
    }

    v55 = [(__objc2_class *)*v51 generateEndEventFromHCI:self->_hciArray withTransceiver:v10];
    [(NSMutableArray *)self->_hciArray removeAllObjects];
    if (v55)
    {
      v56 = [v55 objectForKeyedSubscript:@"NFServiceProviderID"];
      v62 = [v55 objectForKeyedSubscript:@"readOnly"];
      v57 = [v56 unsignedShortValue];
      v58 = -4095;
      if ([SlalomDecoder isJREServiceProviderID:v57])
      {
        v60 = v62;
      }

      else
      {
        v59 = v57 & 0xFE;
        v60 = v62;
        if (v59 != 4)
        {
          if ([v62 BOOLValue])
          {
            v58 = -4094;
          }

          else
          {
            v58 = -4095;
          }
        }
      }

      goto LABEL_46;
    }

LABEL_43:
    v66 = @"NFServiceProviderID";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v50];
    v67 = v56;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v58 = -4094;
LABEL_46:

    v49 = [MEMORY[0x277CBEB38] dictionary];
    [v49 setObject:v11 forKeyedSubscript:@"appletIdentifier"];
    [v49 setObject:&unk_2843C6B00 forKeyedSubscript:@"type"];
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v58];
    [v49 setObject:v61 forKeyedSubscript:@"result"];

    [v49 setObject:v55 forKeyedSubscript:@"felicaInfo"];
    self->_eotInProgress = 0;

    goto LABEL_31;
  }

  v29 = ATLLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Transceiver is required to process End of Transaction method call.", buf, 2u);
  }

  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Transceiver is required to process End of Transaction method call."];
  v31 = v30;
  if (a7)
  {
    v32 = *a7;
    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v35 = *MEMORY[0x277CCA7E8];
      v85[0] = *MEMORY[0x277CCA450];
      v85[1] = v35;
      v86[0] = v30;
      v86[1] = v32;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v86;
      v38 = v85;
      v39 = 2;
    }

    else
    {
      v87 = *MEMORY[0x277CCA450];
      v88[0] = v30;
      v36 = MEMORY[0x277CBEAC0];
      v37 = v88;
      v38 = &v87;
      v39 = 1;
    }

    v48 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:v39];
    *a7 = [v33 errorWithDomain:@"ATL" code:4 userInfo:v48];
  }

  [(NSMutableArray *)self->_hciArray removeAllObjects];
  v49 = 0;
LABEL_32:

  v53 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)getServiceProviderData:(id)a3 withPackage:(id)a4 withModule:(id)a5 withTransceiver:(id)a6 withError:(id *)a7
{
  v221[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = [MEMORY[0x277CBEA90] dataWithHexString:a3];
  v11 = SelectByNameCmd(v10);

  v12 = [v9 transceiveAndCheckSW:v11 error:a7];
  v13 = v12;
  if (!v12)
  {
LABEL_17:
    v41 = 0;
    goto LABEL_112;
  }

  v168[0] = [v12 bytes];
  v168[1] = [v13 length];
  v166 = 0;
  v167[0] = 0;
  v167[1] = 0;
  DERFindItem(v168, 0xA000000000000005, &v166);
  if (v14)
  {
    v15 = v14;
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v15;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Failed to find tag 'A5' in Slalom SELECT response, %d", &buf, 8u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to find tag 'A5' in Slalom SELECT response, %d", v15];
    v18 = v17;
    if (a7)
    {
      v19 = *a7;
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v22 = *MEMORY[0x277CCA7E8];
        v218[0] = *MEMORY[0x277CCA450];
        v218[1] = v22;
        v219[0] = v17;
        v219[1] = v19;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v219;
        v25 = v218;
        v26 = 2;
      }

      else
      {
        v220 = *MEMORY[0x277CCA450];
        v221[0] = v17;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v221;
        v25 = &v220;
        v26 = 1;
      }

      v40 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
      *a7 = [v20 errorWithDomain:@"ATL" code:3 userInfo:v40];
    }

    goto LABEL_17;
  }

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  buf = 0u;
  v27 = DERParseSequenceSpec(v167, &selectResponseA5ContentSpec, &buf, 0x18uLL);
  if (v27)
  {
    v28 = v27;
    v29 = ATLLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v209 = 67109120;
      v210 = v28;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Failed to decode SELECT response contents %d", v209, 8u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode SELECT response contents %d", v28];
    v31 = v30;
    if (a7)
    {
      v32 = *a7;
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v205[0] = *MEMORY[0x277CCA450];
        v205[1] = v35;
        v206[0] = v30;
        v206[1] = v32;
        v36 = MEMORY[0x277CBEAC0];
        v37 = v206;
        v38 = v205;
        v39 = 2;
      }

      else
      {
        v207 = *MEMORY[0x277CCA450];
        v208 = v30;
        v36 = MEMORY[0x277CBEAC0];
        v37 = &v208;
        v38 = &v207;
        v39 = 1;
      }

      v43 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:v39];
      v56 = v33;
      v57 = 3;
LABEL_27:
      [v56 errorWithDomain:@"ATL" code:v57 userInfo:v43];
      *a7 = v41 = 0;
LABEL_110:

      goto LABEL_111;
    }

    goto LABEL_40;
  }

  v42 = *v216;
  if (v42 == 7)
  {
    v31 = objc_opt_new();
    v58 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:0 withTransceiver:v9 withError:a7];
    v43 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26575 withBlockNumber:1 withTransceiver:v9 withError:a7];
    if (v58)
    {
      v59 = [GondolaDecoder decodeCardNumberFromBlock0:v58 andBlock1:v43];
      v60 = [v59 asHexString];
      [v31 setObject:v60 forKeyedSubscript:@"CardNumber"];

      v61 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26647 withBlockNumber:0 withTransceiver:v9 withError:a7];

      if (v61)
      {
        v62 = [v61 subdataWithOffset:0 length:4];
        v63 = [v62 asHexString];
        [v31 setObject:v63 forKeyedSubscript:@"Balance"];

        v64 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:1 withTransceiver:v9 withError:a7];

        v65 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26571 withBlockNumber:0 withTransceiver:v9 withError:a7];

        if (!v64 || !v65)
        {
          v109 = ATLLogObject();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *v209 = 0;
            _os_log_impl(&dword_22EEF5000, v109, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v209, 2u);
          }

          v110 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v111 = v110;
          if (a7)
          {
            v112 = *a7;
            v113 = MEMORY[0x277CCA9B8];
            v114 = *MEMORY[0x277CCA450];
            if (*a7)
            {
              v115 = *MEMORY[0x277CCA7E8];
              v181[0] = *MEMORY[0x277CCA450];
              v181[1] = v115;
              v182[0] = v110;
              v182[1] = v112;
              v116 = MEMORY[0x277CBEAC0];
              v117 = v182;
              v118 = v181;
              v119 = 2;
            }

            else
            {
              v183 = *MEMORY[0x277CCA450];
              v184 = v110;
              v116 = MEMORY[0x277CBEAC0];
              v117 = &v184;
              v118 = &v183;
              v119 = 1;
            }

            v151 = [v116 dictionaryWithObjects:v117 forKeys:v118 count:v119];
            *a7 = [v113 errorWithDomain:@"ATL" code:8 userInfo:v151];
          }

          goto LABEL_107;
        }

        v66 = [v64 subdataWithOffset:3 length:3];
        v67 = [v66 asHexString];
        [v31 setObject:v67 forKeyedSubscript:@"EntryDate"];

        v68 = [MEMORY[0x277CCABB0] numberWithBool:{+[GondolaDecoder isCardUsageFlag:](GondolaDecoder, "isCardUsageFlag:", v65)}];
        [v31 setObject:v68 forKeyedSubscript:@"UsageStartFlag"];

        v69 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v64, "u8:", 12)}];
        [v31 setObject:v69 forKeyedSubscript:@"BrandApplicationStatus"];

        v70 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26699 withBlockNumber:0 withTransceiver:v9 withError:a7];

        if (v70)
        {
          v71 = [v70 asHexString];
          [v31 setObject:v71 forKeyedSubscript:@"PointBlock"];

          v65 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:26635 withBlockNumber:7 withTransceiver:v9 withError:a7];

          if (v65)
          {
            v72 = [v65 subdataWithOffset:4 length:5];
            v73 = [v72 asHexString];
            [v31 setObject:v73 forKeyedSubscript:@"BitData9"];

            v41 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v31 options:1 error:a7];
LABEL_108:
            v43 = v64;
            goto LABEL_109;
          }

          v152 = ATLLogObject();
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            *v209 = 0;
            _os_log_impl(&dword_22EEF5000, v152, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v209, 2u);
          }

          v153 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v65 = v153;
          if (!a7)
          {
LABEL_107:
            v41 = 0;
            goto LABEL_108;
          }

          v154 = *a7;
          v144 = MEMORY[0x277CCA9B8];
          v155 = *MEMORY[0x277CCA450];
          if (*a7)
          {
            v156 = *MEMORY[0x277CCA7E8];
            v173[0] = *MEMORY[0x277CCA450];
            v173[1] = v156;
            v174[0] = v153;
            v174[1] = v154;
            v147 = MEMORY[0x277CBEAC0];
            v148 = v174;
            v149 = v173;
            goto LABEL_95;
          }

          v175 = *MEMORY[0x277CCA450];
          v176 = v153;
          v147 = MEMORY[0x277CBEAC0];
          v148 = &v176;
          v149 = &v175;
        }

        else
        {
          v141 = ATLLogObject();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            *v209 = 0;
            _os_log_impl(&dword_22EEF5000, v141, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v209, 2u);
          }

          v142 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
          v65 = v142;
          if (!a7)
          {
            goto LABEL_107;
          }

          v143 = *a7;
          v144 = MEMORY[0x277CCA9B8];
          v145 = *MEMORY[0x277CCA450];
          if (*a7)
          {
            v146 = *MEMORY[0x277CCA7E8];
            v177[0] = *MEMORY[0x277CCA450];
            v177[1] = v146;
            v178[0] = v142;
            v178[1] = v143;
            v147 = MEMORY[0x277CBEAC0];
            v148 = v178;
            v149 = v177;
LABEL_95:
            v157 = 2;
LABEL_106:
            v160 = [v147 dictionaryWithObjects:v148 forKeys:v149 count:v157];
            *a7 = [v144 errorWithDomain:@"ATL" code:8 userInfo:v160];

            goto LABEL_107;
          }

          v179 = *MEMORY[0x277CCA450];
          v180 = v142;
          v147 = MEMORY[0x277CBEAC0];
          v148 = &v180;
          v149 = &v179;
        }

        v157 = 1;
        goto LABEL_106;
      }

      v103 = ATLLogObject();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        *v209 = 0;
        _os_log_impl(&dword_22EEF5000, v103, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v209, 2u);
      }

      v104 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
      v65 = v104;
      if (!a7)
      {
LABEL_86:
        v41 = 0;
LABEL_109:

        goto LABEL_110;
      }

      v105 = *a7;
      v97 = MEMORY[0x277CCA9B8];
      v106 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v107 = *MEMORY[0x277CCA7E8];
        v185[0] = *MEMORY[0x277CCA450];
        v185[1] = v107;
        v186[0] = v104;
        v186[1] = v105;
        v100 = MEMORY[0x277CBEAC0];
        v101 = v186;
        v102 = v185;
        goto LABEL_56;
      }

      v187 = *MEMORY[0x277CCA450];
      v188 = v104;
      v100 = MEMORY[0x277CBEAC0];
      v101 = &v188;
      v102 = &v187;
    }

    else
    {
      v94 = ATLLogObject();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        *v209 = 0;
        _os_log_impl(&dword_22EEF5000, v94, OS_LOG_TYPE_ERROR, "Failed to decode Gondola SP Opaque Data", v209, 2u);
      }

      v95 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Gondola SP Opaque Data"];
      v65 = v95;
      if (!a7)
      {
        goto LABEL_86;
      }

      v96 = *a7;
      v97 = MEMORY[0x277CCA9B8];
      v98 = *MEMORY[0x277CCA450];
      if (*a7)
      {
        v99 = *MEMORY[0x277CCA7E8];
        v189[0] = *MEMORY[0x277CCA450];
        v189[1] = v99;
        v190[0] = v95;
        v190[1] = v96;
        v100 = MEMORY[0x277CBEAC0];
        v101 = v190;
        v102 = v189;
LABEL_56:
        v108 = 2;
LABEL_85:
        v150 = [v100 dictionaryWithObjects:v101 forKeys:v102 count:v108];
        *a7 = [v97 errorWithDomain:@"ATL" code:8 userInfo:v150];

        goto LABEL_86;
      }

      v191 = *MEMORY[0x277CCA450];
      v192 = v95;
      v100 = MEMORY[0x277CBEAC0];
      v101 = &v192;
      v102 = &v191;
    }

    v108 = 1;
    goto LABEL_85;
  }

  if (v42 == 4)
  {
    v31 = objc_opt_new();
    v43 = objc_opt_new();
    [v43 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    v44 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:0 withTransceiver:v9 withError:a7];
    v45 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21899 withBlockNumber:1 withTransceiver:v9 withError:a7];
    v46 = v45;
    if (v44 && v45)
    {
      v163 = [MogulDecoder decodeCardID:v44];
      v47 = [v163 asHexString];
      [v31 setObject:v47 forKeyedSubscript:@"CardNumber"];

      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeTopupFlag:](MogulDecoder, "decodeTopupFlag:", v46)}];
      [v31 setObject:v48 forKeyedSubscript:@"TopUpFlag"];

      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeTopupSettings:](MogulDecoder, "decodeTopupSettings:", v46)}];
      [v31 setObject:v49 forKeyedSubscript:@"TopUpSettings"];

      v50 = [MEMORY[0x277CCABB0] numberWithInt:{+[MogulDecoder decodeEnableFlag:](MogulDecoder, "decodeEnableFlag:", v46)}];
      [v31 setObject:v50 forKeyedSubscript:@"EffectiveFlag"];

      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{+[MogulDecoder decodeStatusFlag:](MogulDecoder, "decodeStatusFlag:", v46)}];
      [v31 setObject:v51 forKeyedSubscript:@"StatusFlag"];

      v52 = [SlalomDecoder getDataAndCheckFeliCaServiceCode:21911 withBlockNumber:0 withTransceiver:v9 withError:a7];

      if (v52)
      {
        v53 = [v52 asHexString];
        [v31 setObject:v53 forKeyedSubscript:@"BalanceBlock"];

        [SlalomDecoder getDataAndCheckFeliCaServiceCode:22027 withBlockNumber:1 withTransceiver:v9 withError:a7];
        v54 = v44 = v52;

        if (v54)
        {
          v55 = [v54 asHexString];
          [v31 setObject:v55 forKeyedSubscript:@"PointBlock"];

          v41 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v31 options:1 error:a7];
        }

        else
        {
          v165 = v44;
          v131 = ATLLogObject();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            *v209 = 0;
            _os_log_impl(&dword_22EEF5000, v131, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v209, 2u);
          }

          v132 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
          v54 = v132;
          if (a7)
          {
            v133 = *a7;
            v134 = MEMORY[0x277CCA9B8];
            v135 = *MEMORY[0x277CCA450];
            if (*a7)
            {
              v136 = *MEMORY[0x277CCA7E8];
              v193[0] = *MEMORY[0x277CCA450];
              v193[1] = v136;
              v194[0] = v132;
              v194[1] = v133;
              v137 = MEMORY[0x277CBEAC0];
              v138 = v194;
              v139 = v193;
              v140 = 2;
            }

            else
            {
              v195 = *MEMORY[0x277CCA450];
              v196 = v132;
              v137 = MEMORY[0x277CBEAC0];
              v138 = &v196;
              v139 = &v195;
              v140 = 1;
            }

            v159 = [v137 dictionaryWithObjects:v138 forKeys:v139 count:v140];
            *a7 = [v134 errorWithDomain:@"ATL" code:8 userInfo:v159];
          }

          v41 = 0;
          v44 = v165;
        }
      }

      else
      {
        v120 = ATLLogObject();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          *v209 = 0;
          _os_log_impl(&dword_22EEF5000, v120, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v209, 2u);
        }

        v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
        v54 = v121;
        if (a7)
        {
          v122 = *a7;
          v123 = MEMORY[0x277CCA9B8];
          v124 = *MEMORY[0x277CCA450];
          if (*a7)
          {
            v125 = *MEMORY[0x277CCA7E8];
            v197[0] = *MEMORY[0x277CCA450];
            v197[1] = v125;
            v198[0] = v121;
            v198[1] = v122;
            v126 = MEMORY[0x277CBEAC0];
            v127 = v198;
            v128 = v197;
            v129 = 2;
          }

          else
          {
            v199 = *MEMORY[0x277CCA450];
            v200 = v121;
            v126 = MEMORY[0x277CBEAC0];
            v127 = &v200;
            v128 = &v199;
            v129 = 1;
          }

          v158 = [v126 dictionaryWithObjects:v127 forKeys:v128 count:v129];
          *a7 = [v123 errorWithDomain:@"ATL" code:8 userInfo:v158];
        }

        v41 = 0;
        v44 = v46;
      }
    }

    else
    {
      v84 = ATLLogObject();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *v209 = 0;
        _os_log_impl(&dword_22EEF5000, v84, OS_LOG_TYPE_ERROR, "Failed to decode Mogul SP Opaque Data", v209, 2u);
      }

      v85 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode Mogul SP Opaque Data"];
      v86 = v85;
      if (a7)
      {
        v87 = *a7;
        v164 = MEMORY[0x277CCA9B8];
        v88 = *MEMORY[0x277CCA450];
        if (*a7)
        {
          v89 = *MEMORY[0x277CCA7E8];
          v201[0] = *MEMORY[0x277CCA450];
          v201[1] = v89;
          v202[0] = v85;
          v202[1] = v87;
          v90 = MEMORY[0x277CBEAC0];
          v91 = v202;
          v92 = v201;
          v93 = 2;
        }

        else
        {
          v203 = *MEMORY[0x277CCA450];
          v204 = v85;
          v90 = MEMORY[0x277CBEAC0];
          v91 = &v204;
          v92 = &v203;
          v93 = 1;
        }

        v130 = [v90 dictionaryWithObjects:v91 forKeys:v92 count:v93];
        *a7 = [v164 errorWithDomain:@"ATL" code:8 userInfo:v130];
      }

      v41 = 0;
      v54 = v46;
    }

    goto LABEL_110;
  }

  v74 = ATLLogObject();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    *v209 = 67109120;
    v210 = v42;
    _os_log_impl(&dword_22EEF5000, v74, OS_LOG_TYPE_ERROR, "No Opaque Data for TypeF provider %d", v209, 8u);
  }

  v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No Opaque Data for TypeF provider %d", v42];
  v31 = v75;
  if (a7)
  {
    v76 = *a7;
    v77 = MEMORY[0x277CCA9B8];
    v78 = *MEMORY[0x277CCA450];
    if (*a7)
    {
      v79 = *MEMORY[0x277CCA7E8];
      v169[0] = *MEMORY[0x277CCA450];
      v169[1] = v79;
      v170[0] = v75;
      v170[1] = v76;
      v80 = MEMORY[0x277CBEAC0];
      v81 = v170;
      v82 = v169;
      v83 = 2;
    }

    else
    {
      v171 = *MEMORY[0x277CCA450];
      v172 = v75;
      v80 = MEMORY[0x277CBEAC0];
      v81 = &v172;
      v82 = &v171;
      v83 = 1;
    }

    v43 = [v80 dictionaryWithObjects:v81 forKeys:v82 count:v83];
    v56 = v77;
    v57 = 2;
    goto LABEL_27;
  }

LABEL_40:
  v41 = 0;
LABEL_111:

LABEL_112:
  v161 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (BOOL)isJREServiceProviderID:(unsigned __int8)a3
{
  if (a3 > 8u)
  {
    return a3 > 0xDFu;
  }

  result = 1;
  if (((1 << a3) & 0x142) == 0)
  {
    return a3 > 0xDFu;
  }

  return result;
}

@end