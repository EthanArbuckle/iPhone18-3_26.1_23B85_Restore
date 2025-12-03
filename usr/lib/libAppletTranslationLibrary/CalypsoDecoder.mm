@interface CalypsoDecoder
+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error;
+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey;
+ (id)getCardConfig:(unint64_t)config;
+ (id)getSubDecoder:(unsigned __int8)decoder;
+ (id)sharedInstance;
- (CalypsoDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)getSubDecoderConfig:(id)config withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)cleanup;
@end

@implementation CalypsoDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CalypsoDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance__singleton_0;

  return v2;
}

uint64_t __32__CalypsoDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CalypsoDecoder)init
{
  v16.receiver = self;
  v16.super_class = CalypsoDecoder;
  v2 = [(CalypsoDecoder *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v5 = [ATLTimer alloc];
    v6 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__CalypsoDecoder_init__block_invoke;
    v14[3] = &unk_278874C98;
    v7 = v2;
    v15 = v7;
    v8 = [(ATLTimer *)v5 initOnQueue:v6 withTimerBlock:v14];
    timer = v7->_timer;
    v7->_timer = v8;

    if ((+[AppletTranslator isInternalBuild]& 1) != 0)
    {
      v10 = +[AppletTranslator userDefaults];
      v7->_debug = [v10 BOOLForKey:@"debug.calypso"];
    }

    else
    {
      v7->_debug = 0;
    }

    v11 = +[AppletConfigurationData getCalypsoSettings];
    staticConfig = v7->_staticConfig;
    v7->_staticConfig = v11;

    [AppletTranslator registerForCleanup:v7];
  }

  return v2;
}

void __22__CalypsoDecoder_init__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "dispatching timer block", &v8, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) generateEndEventFromHCI];
  if (v4)
  {
    v5 = +[AppletTranslator getATLDelegate];
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEBUG, "EndEvent sent %@", &v8, 0xCu);
    }

    [v5 notifyTransactionEvent:v4];
  }

  objc_sync_exit(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanup
{
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Starting cleanup", v12, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  appletAID = selfCopy->_appletAID;
  selfCopy->_appletAID = 0;

  selfCopy->_errorTransaction = 0;
  errorCode = selfCopy->_errorCode;
  selfCopy->_errorCode = 0;

  transactionDetailRaw = selfCopy->_transactionDetailRaw;
  selfCopy->_transactionDetailRaw = 0;

  cityCode = selfCopy->_cityCode;
  selfCopy->_cityCode = 0;

  serviceProvider = selfCopy->_serviceProvider;
  selfCopy->_serviceProvider = 0;

  staticConfig = selfCopy->_staticConfig;
  selfCopy->_staticConfig = 0;

  currentSubDecoder = selfCopy->_currentSubDecoder;
  selfCopy->_currentSubDecoder = 0;

  [(NSMutableArray *)selfCopy->_hciArray removeAllObjects];
  [(ATLTimer *)selfCopy->_timer stopTimer];
  objc_sync_exit(selfCopy);
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v82[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v17 = ATLLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    asHexString = [eventCopy asHexString];
    *buf = 138412290;
    *v77 = asHexString;
    _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_DEBUG, "Incoming event data: %@", buf, 0xCu);
  }

  v19 = [(CalypsoDecoder *)self getSubDecoderConfig:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  v20 = ATLLogObject();
  v21 = v20;
  if (!v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v77 = appletCopy;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "parseHCIEvent requires static configuration for %@", buf, 0xCu);
    }

    appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"parseHCIEvent requires static configuration for %@", appletCopy];
    selfCopy = appletCopy;
    if (error)
    {
      v33 = *error;
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v36 = *MEMORY[0x277CCA7E8];
        v79[0] = *MEMORY[0x277CCA450];
        v79[1] = v36;
        v80[0] = appletCopy;
        v80[1] = v33;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
      }

      else
      {
        v81 = *MEMORY[0x277CCA450];
        v82[0] = appletCopy;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
      }
      v49 = ;
      *error = [v34 errorWithDomain:@"ATL" code:2 userInfo:v49];

      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    staticConfig = self->_staticConfig;
    *buf = 138412546;
    *v77 = v19;
    *&v77[8] = 2112;
    v78 = staticConfig;
    _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEBUG, "currentSubDecoder: %@ \n _staticConfig: %@", buf, 0x16u);
  }

  if (!self->_appletAID)
  {
    objc_storeStrong(&self->_appletAID, applet);
  }

  if ([eventCopy length] <= 1)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [eventCopy length];
      *buf = 67109120;
      *v77 = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    selfCopy = v25;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v72[0] = *MEMORY[0x277CCA450];
        v72[1] = v30;
        v73[0] = v25;
        v73[1] = v27;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
      }

      else
      {
        v74 = *MEMORY[0x277CCA450];
        v75 = v25;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      }

      v50 = v31;
      *error = [v28 errorWithDomain:@"ATL" code:6 userInfo:v31];

LABEL_39:
      error = 0;
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v37 = eventCopy;
  v38 = *[eventCopy bytes];
  v39 = eventCopy;
  v40 = *([eventCopy bytes] + 1);
  if (v40 != 7)
  {
    v42 = ATLLogObject();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v77 = v40;
      _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Unsupported version %u", buf, 8u);
    }

    v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported version %u", v40];
    selfCopy = v43;
    if (error)
    {
      v44 = *error;
      v45 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v47 = *MEMORY[0x277CCA7E8];
        v68[0] = *MEMORY[0x277CCA450];
        v68[1] = v47;
        v69[0] = v43;
        v69[1] = v44;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
      }

      else
      {
        v70 = *MEMORY[0x277CCA450];
        v71 = v43;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      }

      v51 = v48;
      *error = [v45 errorWithDomain:@"ATL" code:2 userInfo:v48];

      goto LABEL_39;
    }

    goto LABEL_40;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v38 <= 16)
  {
    if (v38 == 1)
    {
      v41 = [(CalypsoDecoder *)selfCopy parseStartEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_46;
    }

    if (v38 == 2)
    {
      v41 = [(CalypsoDecoder *)selfCopy parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_46;
    }
  }

  else
  {
    switch(v38)
    {
      case 0x11:
        v41 = [(CalypsoDecoder *)selfCopy parseTransactionEvent:eventCopy withApplet:appletCopy error:error];
        goto LABEL_46;
      case 0x12:
        v41 = [(CalypsoDecoder *)selfCopy parseDeselectEvent:eventCopy withApplet:appletCopy error:error];
        goto LABEL_46;
      case 0x13:
        v41 = [(CalypsoDecoder *)selfCopy parseCommandEvent:eventCopy withApplet:appletCopy error:error];
LABEL_46:
        error = v41;
        objc_sync_exit(selfCopy);
        goto LABEL_40;
    }
  }

  objc_sync_exit(selfCopy);

  v54 = ATLLogObject();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v77 = v38;
    *&v77[4] = 1024;
    *&v77[6] = 7;
    _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
  }

  v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v38, 7];
  selfCopy = v55;
  if (error)
  {
    v56 = *error;
    v57 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v59 = *MEMORY[0x277CCA7E8];
      v64[0] = *MEMORY[0x277CCA450];
      v64[1] = v59;
      v65[0] = v55;
      v65[1] = v56;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
    }

    else
    {
      v66 = *MEMORY[0x277CCA450];
      v67 = v55;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    }

    v61 = v60;
    *error = [v57 errorWithDomain:@"ATL" code:3 userInfo:v60];

    goto LABEL_39;
  }

LABEL_40:

  v52 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] == 10)
  {
    bytes = [eventCopy bytes];
    if (*(bytes + 1) == 7)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:bytes + 3 length:5];
      v12 = *(bytes + 8);
      v13 = [v11 u8:1];
      if (*(bytes + 2) == 1)
      {
        v38 = @"Contactless";
LABEL_33:
        v59[0] = @"EventType";
        v59[1] = @"appletIdentifier";
        v60[1] = appletCopy;
        v60[2] = v38;
        v60[0] = @"CommandEvent";
        v59[2] = @"Interface";
        v59[3] = @"Version";
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
        v60[3] = v53;
        v60[4] = v11;
        v59[4] = @"command";
        v59[5] = @"status";
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:__rev16(v12)];
        v60[5] = v54;
        error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:6];

        v55 = ATLLogObject();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          errorCopy = error;
          _os_log_impl(&dword_22EEF5000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:error];
        goto LABEL_29;
      }

      if (!*(bytes + 2))
      {
        if (v13 == 142)
        {
          error = [(CalypsoDecoder *)self generateContactEndEvent:appletCopy withDidError:v12 != 144];
          goto LABEL_29;
        }

        v38 = @"Contact";
        goto LABEL_33;
      }

      v39 = ATLLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *(bytes + 2);
        *buf = 67109120;
        LODWORD(errorCopy) = v40;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
      }

      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(bytes + 2)];
      v42 = v41;
      if (error)
      {
        v43 = *error;
        v44 = MEMORY[0x277CCA9B8];
        v45 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v46 = *MEMORY[0x277CCA7E8];
          v61[0] = *MEMORY[0x277CCA450];
          v61[1] = v46;
          v62[0] = v41;
          v62[1] = v43;
          v47 = MEMORY[0x277CBEAC0];
          v48 = v62;
          v49 = v61;
          v50 = 2;
        }

        else
        {
          v63 = *MEMORY[0x277CCA450];
          v64 = v41;
          v47 = MEMORY[0x277CBEAC0];
          v48 = &v64;
          v49 = &v63;
          v50 = 1;
        }

        v56 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:v50];
        *error = [v44 errorWithDomain:@"ATL" code:3 userInfo:v56];
      }

LABEL_28:
      error = 0;
      goto LABEL_29;
    }

    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bytes + 1);
      *buf = 67109120;
      LODWORD(errorCopy) = v25;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Command Event version %u", buf, 8u);
    }

    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Event version %u", *(bytes + 1)];
    v11 = v26;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v65[0] = *MEMORY[0x277CCA450];
        v65[1] = v30;
        v66[0] = v26;
        v66[1] = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v66;
        v33 = v65;
        v34 = 2;
      }

      else
      {
        v67 = *MEMORY[0x277CCA450];
        v68 = v26;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v68;
        v33 = &v67;
        v34 = 1;
      }

      v35 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      v36 = v28;
      v37 = 3;
LABEL_27:
      *error = [v36 errorWithDomain:@"ATL" code:v37 userInfo:v35];

      goto LABEL_28;
    }
  }

  else
  {
    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(errorCopy) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v11 = v15;
    if (error)
    {
      v16 = *error;
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v19 = *MEMORY[0x277CCA7E8];
        v69[0] = *MEMORY[0x277CCA450];
        v69[1] = v19;
        v70[0] = v15;
        v70[1] = v16;
        v20 = MEMORY[0x277CBEAC0];
        v21 = v70;
        v22 = v69;
        v23 = 2;
      }

      else
      {
        v71 = *MEMORY[0x277CCA450];
        v72[0] = v15;
        v20 = MEMORY[0x277CBEAC0];
        v21 = v72;
        v22 = &v71;
        v23 = 1;
      }

      v35 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
      v36 = v17;
      v37 = 6;
      goto LABEL_27;
    }
  }

LABEL_29:

  v51 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v82[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  v10 = [(NSData *)eventCopy length];
  v11 = ATLLogObject();
  v12 = v11;
  if (v10 <= 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v66) = [(NSData *)eventCopy length];
      _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", -[NSData length](eventCopy, "length")];
    v14 = v13;
    if (!error)
    {
      goto LABEL_45;
    }

    v15 = *error;
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v79[0] = *MEMORY[0x277CCA450];
      v79[1] = v18;
      v80[0] = v13;
      v80[1] = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v80;
      v21 = v79;
      v22 = 2;
    }

    else
    {
      v81 = *MEMORY[0x277CCA450];
      v82[0] = v13;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v82;
      v21 = &v81;
      v22 = 1;
    }

    v36 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    v37 = v16;
    v38 = 6;
LABEL_44:
    *error = [v37 errorWithDomain:@"ATL" code:v38 userInfo:v36];

LABEL_45:
    v41 = 0;
    goto LABEL_46;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = eventCopy;
    _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEBUG, "eventData: %@", buf, 0xCu);
  }

  bytes = [(NSData *)eventCopy bytes];
  v24 = bytes;
  if (*(bytes + 1) != 7)
  {
    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(v24 + 1);
      *buf = 67109120;
      LODWORD(v66) = v27;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
    }

    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v24 + 1)];
    v14 = v28;
    if (!error)
    {
      goto LABEL_45;
    }

    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v75[0] = *MEMORY[0x277CCA450];
      v75[1] = v32;
      v76[0] = v28;
      v76[1] = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v76;
      v35 = v75;
LABEL_39:
      v59 = 2;
LABEL_43:
      v36 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v59];
      v37 = v30;
      v38 = 3;
      goto LABEL_44;
    }

    v77 = *MEMORY[0x277CCA450];
    v78 = v28;
    v33 = MEMORY[0x277CBEAC0];
    v34 = &v78;
    v35 = &v77;
LABEL_42:
    v59 = 1;
    goto LABEL_43;
  }

  if (!*(bytes + 2))
  {
    v25 = @"Contact";
    goto LABEL_21;
  }

  if (*(bytes + 2) != 1)
  {
    v54 = ATLLogObject();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = *(v24 + 2);
      *buf = 67109120;
      LODWORD(v66) = v55;
      _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v24 + 2)];
    v14 = v56;
    if (!error)
    {
      goto LABEL_45;
    }

    v57 = *error;
    v30 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v58 = *MEMORY[0x277CCA7E8];
      v71[0] = *MEMORY[0x277CCA450];
      v71[1] = v58;
      v72[0] = v56;
      v72[1] = v57;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v72;
      v35 = v71;
      goto LABEL_39;
    }

    v73 = *MEMORY[0x277CCA450];
    v74 = v56;
    v33 = MEMORY[0x277CBEAC0];
    v34 = &v74;
    v35 = &v73;
    goto LABEL_42;
  }

  v25 = @"Contactless";
LABEL_21:
  v62[0] = bytes + 3;
  v62[1] = [(NSData *)eventCopy length]- 3;
  v39 = [CalypsoDecoder DecodeTransactionE1TLV:v62 error:error];
  v40 = ATLLogObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = v39;
    _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_DEBUG, "trxInfo: %@", buf, 0xCu);
  }

  if (error && *error)
  {
    v41 = 0;
  }

  else
  {
    v42 = [(NSData *)v39 objectForKeyedSubscript:@"recordData"];
    v43 = ATLLogObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v42;
      _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEBUG, "eventRecord: %@", buf, 0xCu);
    }

    [self->_currentSubDecoder interpretTransactionEvent:v42];
    v44 = ATLLogObject();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      errorTransaction = self->_errorTransaction;
      errorCode = self->_errorCode;
      transactionDetailRaw = self->_transactionDetailRaw;
      *buf = 138412802;
      v66 = transactionDetailRaw;
      v67 = 1024;
      v68 = errorTransaction;
      v69 = 2112;
      v70 = errorCode;
      _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEBUG, "*** _transactionDetailRaw = %@,  _errorTransaction = %d,  _errorCode = %@", buf, 0x1Cu);
    }

    v63[0] = @"EventType";
    v63[1] = @"appletIdentifier";
    v64[1] = appletCopy;
    v64[2] = v25;
    v64[0] = @"TransactionEvent";
    v63[2] = @"Interface";
    v63[3] = @"Version";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v24 + 1)];
    serviceProvider = self->_serviceProvider;
    v64[3] = v48;
    v64[4] = serviceProvider;
    v63[4] = @"spIdentifier";
    v63[5] = @"sfi";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NSData sfi](v42, "sfi")}];
    v64[5] = v50;
    v63[6] = @"recordId";
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NSData recordId](v42, "recordId")}];
    v64[6] = v51;
    v63[7] = @"recordContent";
    content = [(NSData *)v42 content];
    v64[7] = content;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:8];

    v53 = ATLLogObject();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v41;
      _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_DEBUG, "TransactionEvent %@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_hciArray addObject:v41];
  }

LABEL_46:
  v60 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 3)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v58 = [eventCopy length];
      v59 = 2048;
      v60 = 3;
      _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_ERROR, "Start Event length %zu (exp %zu)", buf, 0x16u);
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event length %zu (exp %zu)", objc_msgSend(eventCopy, "length"), 3];
    v15 = v14;
    if (!error)
    {
      goto LABEL_33;
    }

    v16 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    if (!*error)
    {
      v55 = *MEMORY[0x277CCA450];
      v56 = v14;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v56;
      v22 = &v55;
      goto LABEL_31;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v53[0] = *MEMORY[0x277CCA450];
    v53[1] = v19;
    v54[0] = v14;
    v54[1] = v16;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v54;
    v22 = v53;
LABEL_28:
    v39 = 2;
LABEL_32:
    v40 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v39];
    *error = [v17 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_33:
    v30 = 0;
    goto LABEL_34;
  }

  bytes = [eventCopy bytes];
  v11 = bytes;
  if (*(bytes + 1) != 7)
  {
    v23 = ATLLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v11 + 1);
      *buf = 67109120;
      LODWORD(v58) = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v11 + 1)];
    v15 = v25;
    if (!error)
    {
      goto LABEL_33;
    }

    v26 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    if (!*error)
    {
      v51 = *MEMORY[0x277CCA450];
      v52 = v25;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v52;
      v22 = &v51;
      goto LABEL_31;
    }

    v28 = *MEMORY[0x277CCA7E8];
    v49[0] = *MEMORY[0x277CCA450];
    v49[1] = v28;
    v50[0] = v25;
    v50[1] = v26;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v50;
    v22 = v49;
    goto LABEL_28;
  }

  if (!*(bytes + 2))
  {
    v12 = @"Contact";
    goto LABEL_18;
  }

  if (*(bytes + 2) != 1)
  {
    v33 = ATLLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v11 + 2);
      *buf = 67109120;
      LODWORD(v58) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v11 + 2)];
    v15 = v35;
    if (!error)
    {
      goto LABEL_33;
    }

    v36 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v45[0] = *MEMORY[0x277CCA450];
      v45[1] = v38;
      v46[0] = v35;
      v46[1] = v36;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v46;
      v22 = v45;
      goto LABEL_28;
    }

    v47 = *MEMORY[0x277CCA450];
    v48 = v35;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v48;
    v22 = &v47;
LABEL_31:
    v39 = 1;
    goto LABEL_32;
  }

  v12 = @"Contactless";
LABEL_18:
  v43[0] = @"EventType";
  v43[1] = @"appletIdentifier";
  v44[1] = appletCopy;
  v44[2] = v12;
  v44[0] = @"StartEvent";
  v43[2] = @"Interface";
  v43[3] = @"Version";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v43[4] = @"IgnoreRFEvents";
  v43[5] = @"DontWaitForEOT";
  v44[5] = MEMORY[0x277CBEC38];
  v44[6] = MEMORY[0x277CBEC38];
  v44[3] = v29;
  v44[4] = MEMORY[0x277CBEC28];
  v43[6] = @"RequiresPowerCycle";
  v43[7] = @"EoTCallbackExpected";
  v43[8] = @"DelayExpressReentry";
  v44[7] = MEMORY[0x277CBEC28];
  v44[8] = &unk_2843C6878;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:9];

  v31 = ATLLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEBUG, "Stopping currently running timer due to incoming SELECT", buf, 2u);
  }

  [(ATLTimer *)self->_timer stopTimer];
  v32 = ATLLogObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v58 = v30;
    _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "Start Event %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_hciArray addObject:v30];
LABEL_34:

  v41 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 3)
  {
    v20 = ATLLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v47) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v22 = v21;
    if (!error)
    {
      goto LABEL_24;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v26 = *MEMORY[0x277CCA7E8];
      v54[0] = *MEMORY[0x277CCA450];
      v54[1] = v26;
      v55[0] = v21;
      v55[1] = v23;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v55;
      v29 = v54;
      v30 = 2;
    }

    else
    {
      v56 = *MEMORY[0x277CCA450];
      v57[0] = v21;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v57;
      v29 = &v56;
      v30 = 1;
    }

    v41 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
    v42 = v24;
    v43 = 6;
    goto LABEL_23;
  }

  bytes = [eventCopy bytes];
  if (!*(bytes + 2))
  {
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v11 = bytes;
  if (*(bytes + 2) != 1)
  {
    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(v11 + 2);
      *buf = 67109120;
      LODWORD(v47) = v32;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v11 + 2)];
    v22 = v33;
    if (!error)
    {
      goto LABEL_24;
    }

    v34 = *error;
    v35 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v36 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v36;
      v51[0] = v33;
      v51[1] = v34;
      v37 = MEMORY[0x277CBEAC0];
      v38 = v51;
      v39 = v50;
      v40 = 2;
    }

    else
    {
      v52 = *MEMORY[0x277CCA450];
      v53 = v33;
      v37 = MEMORY[0x277CBEAC0];
      v38 = &v53;
      v39 = &v52;
      v40 = 1;
    }

    v41 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:v40];
    v42 = v35;
    v43 = 3;
LABEL_23:
    *error = [v42 errorWithDomain:@"ATL" code:v43 userInfo:v41];

LABEL_24:
    goto LABEL_25;
  }

  v48[0] = @"EventType";
  v48[1] = @"appletIdentifier";
  v49[1] = appletCopy;
  v49[2] = @"Contactless";
  v49[0] = @"DeselectEvent";
  v48[2] = @"Interface";
  v48[3] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v48[4] = @"IgnoreRFEvents";
  v48[5] = @"DontWaitForEOT";
  v49[3] = v12;
  v49[4] = MEMORY[0x277CBEC38];
  v49[5] = MEMORY[0x277CBEC38];
  v49[6] = MEMORY[0x277CBEC28];
  v48[6] = @"RequiresPowerCycle";
  v48[7] = @"DelayExpressReentry";
  v49[7] = &unk_2843C6878;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:8];

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v13;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_hciArray addObject:v13];
  v15 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
  v16 = [v15 objectForKeyedSubscript:self->_cityCode];
  v17 = [v16 objectForKeyedSubscript:@"endEventDelayMs"];
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  v19 = ATLLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v47 = unsignedIntegerValue;
    _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEBUG, "Starting %lld ms timer due to reception of DESELECT", buf, 0xCu);
  }

  [(ATLTimer *)self->_timer startTimerWithDelay:unsignedIntegerValue];
LABEL_26:

  v44 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] == 2)
  {
    bytes = [eventCopy bytes];
    if (self->_errorTransaction)
    {
      v11 = 0;
    }

    else
    {
      v11 = 64;
    }

    if (self->_errorTransaction)
    {
      v12 = ATLLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        errorCode = self->_errorCode;
        *buf = 138412290;
        v39 = errorCode;
        _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction(ErrorCode = %@)", buf, 0xCu);
      }
    }

    v32[0] = @"EventType";
    v32[1] = @"appletIdentifier";
    v33[0] = @"EndEvent";
    v33[1] = appletCopy;
    v32[2] = @"Version";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v33[2] = v14;
    v33[3] = @"Contactless";
    v32[3] = @"Interface";
    v32[4] = @"didError";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_errorTransaction];
    v33[4] = v15;
    v32[5] = @"result";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
    v32[6] = @"type";
    v33[5] = v16;
    v33[6] = &unk_2843C6890;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];

    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_hciArray addObject:v17];
  }

  else
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v39 = [eventCopy length];
      v40 = 2048;
      v41 = 2;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "End event length %zu (exp) %zu", buf, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"End event length %zu (exp) %zu", objc_msgSend(eventCopy, "length"), 2];
    v21 = v20;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v34[0] = *MEMORY[0x277CCA450];
        v34[1] = v24;
        v35[0] = v20;
        v35[1] = v22;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v35;
        v27 = v34;
        v28 = 2;
      }

      else
      {
        v36 = *MEMORY[0x277CCA450];
        v37 = v20;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v37;
        v27 = &v36;
        v28 = 1;
      }

      v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v23 errorWithDomain:@"ATL" code:3 userInfo:v29];
    }

    v17 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)generateEndEventFromHCI
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  currentSubDecoder = self->_currentSubDecoder;
  v5 = ATLLogObject();
  v6 = v5;
  if (!currentSubDecoder)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Warning: SubDecoder has not been set (nil)", buf, 2u);
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_currentSubDecoder;
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEBUG, "CurrentSubDecoder: %@", buf, 0xCu);
  }

  if (![(NSMutableArray *)self->_hciArray count])
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    goto LABEL_24;
  }

  if (!self->_appletAID)
  {
LABEL_24:
    generateEndEventFromHCI = 0;
    goto LABEL_25;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_hciArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = ATLLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v13;
          _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  generateEndEventFromHCI = [self->_currentSubDecoder generateEndEventFromHCI];
LABEL_25:
  v17 = *MEMORY[0x277D85DE8];

  return generateEndEventFromHCI;
}

+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v5 = DERDecodeItemCtx(v, &v44);
  if (v5 || v44 != 0xE000000000000001)
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v55 = 67109376;
      *&v55[4] = v5;
      *&v55[8] = 2048;
      *&v55[10] = v44;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v55, 0x12u);
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v20 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v5, v44];
    v22 = v21;
    if (!error)
    {
      goto LABEL_35;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v26 = *MEMORY[0x277CCA7E8];
      v60[0] = *MEMORY[0x277CCA450];
      v60[1] = v26;
      v61[0] = v21;
      v61[1] = v23;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v61;
      v29 = v60;
LABEL_20:
      v35 = 2;
LABEL_34:
      v41 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v35];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v41];

LABEL_35:
      error = 0;
      goto LABEL_36;
    }

    v62 = *MEMORY[0x277CCA450];
    v63[0] = v21;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v63;
    v29 = &v62;
LABEL_33:
    v35 = 1;
    goto LABEL_34;
  }

  if (!v46)
  {
    v30 = ATLLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v55 = 0;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Missing E1 content", v55, 2u);
    }

    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v22 = v31;
    if (!error)
    {
      goto LABEL_35;
    }

    v32 = *error;
    v24 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = v34;
      v57[0] = v31;
      v57[1] = v32;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v57;
      v29 = v56;
      goto LABEL_20;
    }

    v58 = *MEMORY[0x277CCA450];
    v59 = v31;
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v59;
    v29 = &v58;
    goto LABEL_33;
  }

  memset(v55, 0, 32);
  v6 = DERParseSequenceSpec(&v45, &CalypsoTransactionEventE1ContentsSpec, v55, 0x20uLL);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v50) = v7;
      _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to validate transaction event contents %d", buf, 8u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to validate transaction event contents %d", v7];
    v10 = v9;
    if (error)
    {
      v11 = *error;
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v14 = *MEMORY[0x277CCA7E8];
        v51[0] = *MEMORY[0x277CCA450];
        v51[1] = v14;
        v52[0] = v9;
        v52[1] = v11;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v52;
        v17 = v51;
        v18 = 2;
      }

      else
      {
        v53 = *MEMORY[0x277CCA450];
        v54 = v9;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v54;
        v17 = &v53;
        v18 = 1;
      }

      v40 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v40];

      error = 0;
    }
  }

  else
  {
    v10 = objc_alloc_init(CalypsoHciRecordData);
    [(CalypsoHciRecordData *)v10 setSfi:**v55];
    [(CalypsoHciRecordData *)v10 setRecordId:*(*v55 + 1)];
    v36 = [MEMORY[0x277CBEA90] dataWithDERItem:&v55[16]];
    [(CalypsoHciRecordData *)v10 setContent:v36];

    if ([(CalypsoHciRecordData *)v10 sfi]>= 0x1F)
    {
      v37 = ATLLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(CalypsoHciRecordData *)v10 sfi];
        *buf = 67109120;
        LODWORD(v50) = v38;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEFAULT, "Unexpected SFI (0x%02X) provided in TransactionEvent", buf, 8u);
      }
    }

    v39 = ATLLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = v10;
      _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "decodedRecordData: %@", buf, 0xCu);
    }

    v47 = @"recordData";
    v48 = v10;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  }

LABEL_36:
  v42 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v16 = [MEMORY[0x277CBEA90] dataWithHexString:appletCopy];
  v17 = SelectByNameCmd(v16);

  v47 = 0;
  v18 = [historyCopy transceiveAndCheckSW:v17 error:&v47];
  v19 = v47;
  v20 = v19;
  if (v18)
  {
    v46 = v19;
    v21 = [(CalypsoDecoder *)self getSubDecoderConfig:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:historyCopy withError:error];
    if (v21)
    {
      v43 = moduleCopy;
      v44 = packageCopy;
      v22 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
      v23 = [v22 objectForKeyedSubscript:self->_cityCode];
      v24 = [v23 objectForKeyedSubscript:@"altFileMapping"];

      if (v24)
      {
        v25 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"fileMapping"];
        v26 = [v25 objectForKeyedSubscript:self->_cityCode];

        v27 = [CalypsoReaderContext readAllFiles:historyCopy withFileMapping:v26 debug:self->_debug error:error];
        if (v27)
        {
          v28 = [v21 getAppletStateAndHistory:v27 withError:error];
        }

        else
        {
          v28 = 0;
        }

        moduleCopy = v43;
        packageCopy = v44;
      }

      else
      {
        moduleCopy = v43;
        packageCopy = v44;
        v28 = [v21 getAppletStateAndHistory:historyCopy withApplet:appletCopy withPackage:v44 withModule:v43 withError:error];
      }
    }

    else
    {
      v30 = ATLLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = appletCopy;
        _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "No subDecoder configured for %@", buf, 0xCu);
      }

      appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No subDecoder configured for %@", appletCopy];
      v32 = appletCopy;
      if (error)
      {
        v33 = *error;
        v45 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v35 = *MEMORY[0x277CCA7E8];
          v48[0] = *MEMORY[0x277CCA450];
          v48[1] = v35;
          v49[0] = appletCopy;
          v49[1] = v33;
          v36 = MEMORY[0x277CBEAC0];
          v37 = v49;
          v38 = v48;
          v39 = 2;
        }

        else
        {
          v50 = *MEMORY[0x277CCA450];
          v51 = appletCopy;
          v36 = MEMORY[0x277CBEAC0];
          v37 = &v51;
          v38 = &v50;
          v39 = 1;
        }

        v40 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:v39];
        *error = [v45 errorWithDomain:@"ATL" code:6 userInfo:v40];
      }

      v28 = 0;
    }

    v20 = v46;
  }

  else if (error)
  {
    v29 = v19;
    v28 = 0;
    *error = v20;
  }

  else
  {
    v28 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)getSubDecoderConfig:(id)config withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  configCopy = config;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (!self->_staticConfig)
  {
    v13 = +[AppletConfigurationData getCalypsoSettings];
    staticConfig = self->_staticConfig;
    self->_staticConfig = v13;
  }

  v15 = ATLLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = self->_staticConfig;
    *buf = 138412290;
    v64 = v16;
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "_staticConfig: \n %@", buf, 0xCu);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"aidToCityMapping"];
  v18 = [v17 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v60;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        uppercaseString = [(NSDictionary *)configCopy uppercaseString];
        v24 = [uppercaseString hasPrefix:v22];

        if (v24)
        {
          v25 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"aidToCityMapping"];
          v26 = [v25 objectForKeyedSubscript:v22];
          cityCode = self->_cityCode;
          self->_cityCode = v26;

          v28 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
          v29 = [v28 objectForKeyedSubscript:self->_cityCode];
          v30 = [v29 objectForKeyedSubscript:@"spid"];
          serviceProvider = self->_serviceProvider;
          self->_serviceProvider = v30;

          v32 = [CalypsoDecoder getSubDecoder:[(NSNumber *)self->_cityCode unsignedCharValue]];
          currentSubDecoder = self->_currentSubDecoder;
          self->_currentSubDecoder = v32;

          objc_storeStrong(&self->_appletAID, config);
          goto LABEL_15;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v59 objects:v75 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v34 = self->_currentSubDecoder;
  v35 = ATLLogObject();
  v36 = v35;
  if (v34)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      appletAID = self->_appletAID;
      v38 = self->_cityCode;
      v39 = self->_serviceProvider;
      v40 = self->_currentSubDecoder;
      *buf = 138413058;
      v64 = appletAID;
      v65 = 2112;
      v66 = v38;
      v67 = 2112;
      v68 = v39;
      v69 = 2112;
      v70 = v40;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEBUG, "(getSubDecoderConfig) CONFIG aid: %@ cityCode: %@  serviceProvider: %@ currentSubDecoder: %@", buf, 0x2Au);
    }

    v41 = self->_currentSubDecoder;
  }

  else
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = configCopy;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "No subDecoder configured for %@", buf, 0xCu);
    }

    configCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No subDecoder configured for %@", configCopy];
    v43 = configCopy;
    if (error)
    {
      v44 = *error;
      v45 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v47 = *MEMORY[0x277CCA7E8];
        v71[0] = *MEMORY[0x277CCA450];
        v71[1] = v47;
        v72[0] = configCopy;
        v72[1] = v44;
        v48 = MEMORY[0x277CBEAC0];
        v49 = v72;
        v50 = v71;
        v51 = 2;
      }

      else
      {
        v73 = *MEMORY[0x277CCA450];
        v74 = configCopy;
        v48 = MEMORY[0x277CBEAC0];
        v49 = &v74;
        v50 = &v73;
        v51 = 1;
      }

      v52 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:v51];
      *error = [v45 errorWithDomain:@"ATL" code:6 userInfo:v52];
    }

    v41 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (!self->_currentSubDecoder)
  {
    v16 = [(CalypsoDecoder *)self getSubDecoderConfig:propertiesCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
    currentSubDecoder = self->_currentSubDecoder;
    self->_currentSubDecoder = v16;
  }

  if (self->_cityCode)
  {
    v18 = [(NSDictionary *)self->_staticConfig objectForKeyedSubscript:@"calypsoSettings"];
    v19 = [v18 objectForKeyedSubscript:self->_cityCode];
    v20 = [v19 objectForKeyedSubscript:@"expressReentryDelayMs"];

    v35[0] = @"Supported";
    v35[1] = @"DelayExpressReentry";
    v36[0] = MEMORY[0x277CBEC38];
    v36[1] = v20;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      cityCode = self->_cityCode;
      *buf = 138412546;
      v42 = cityCode;
      v43 = 2112;
      v44 = propertiesCopy;
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "CityCode (%@) is not configured for AID %@", buf, 0x16u);
    }

    propertiesCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CityCode (%@) is not configured for AID %@", self->_cityCode, propertiesCopy];
    v20 = propertiesCopy;
    if (error)
    {
      v24 = *error;
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v27 = *MEMORY[0x277CCA7E8];
        v37[0] = *MEMORY[0x277CCA450];
        v37[1] = v27;
        v38[0] = propertiesCopy;
        v38[1] = v24;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v38;
        v30 = v37;
        v31 = 2;
      }

      else
      {
        v39 = *MEMORY[0x277CCA450];
        v40 = propertiesCopy;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v40;
        v30 = &v39;
        v31 = 1;
      }

      v32 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
      *error = [v25 errorWithDomain:@"ATL" code:6 userInfo:v32];

      error = 0;
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = ATLLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Calypso decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Calypso decoder doesn't expect processEndOfTransaction"];
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

+ (id)getSubDecoder:(unsigned __int8)decoder
{
  decoderCopy = decoder;
  v12 = *MEMORY[0x277D85DE8];
  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109376;
    v9[1] = decoderCopy;
    v10 = 1024;
    v11 = 255;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEBUG, "---> internalCityCode: %d currentCityCode: %d", v9, 0xEu);
  }

  if (decoderCopy == 1)
  {
    v6 = &off_2788744C8;
  }

  else
  {
    if (decoderCopy == 255)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v6 = off_278874498;
  }

  v5 = objc_alloc_init(*v6);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v21 = [(CalypsoDecoder *)self getSubDecoderConfig:dataCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:transceiverCopy withError:error];
  }

  else
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = dataCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Service Provider (Opaque) Data requires static configuration for %@", buf, 0xCu);
    }

    dataCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider (Opaque) Data requires static configuration for %@", dataCopy];
    v26 = dataCopy;
    if (error)
    {
      v27 = *error;
      v37 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v38[0] = *MEMORY[0x277CCA450];
        v38[1] = v29;
        v39[0] = dataCopy;
        v39[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v39;
        v32 = v38;
        v33 = 2;
      }

      else
      {
        v40 = *MEMORY[0x277CCA450];
        v41 = dataCopy;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v41;
        v32 = &v40;
        v33 = 1;
      }

      v34 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      *error = [v37 errorWithDomain:@"ATL" code:2 userInfo:v34];
    }

    v23 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey
{
  v30[4] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCA980];
  identifierKeyCopy = identifierKey;
  exponentKeyCopy = exponentKey;
  currencyKeyCopy = currencyKey;
  keyCopy = key;
  identifierCopy = identifier;
  amountCopy = amount;
  intValue = [amountCopy intValue];
  if (intValue >= 0)
  {
    v21 = intValue;
  }

  else
  {
    v21 = -intValue;
  }

  intValue2 = [amountCopy intValue];

  v23 = [v13 decimalNumberWithMantissa:v21 exponent:0 isNegative:intValue2 >> 31];
  v29[0] = keyCopy;
  v29[1] = currencyKeyCopy;
  v30[0] = v23;
  v30[1] = @"XXX";
  v30[2] = &unk_2843C68D8;
  v29[2] = exponentKeyCopy;
  v29[3] = identifierKeyCopy;
  v24 = [identifierCopy dataUsingEncoding:4];

  asHexString = [v24 asHexString];
  v30[3] = asHexString;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)getCardConfig:(unint64_t)config
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v5 = [MEMORY[0x277CBEA90] dataWithLongBE:config];
  v6 = +[AppletConfigurationData getCalypsoSettings];
  v7 = [v6 objectForKeyedSubscript:@"idToCityMapping"];

  asHexString = [v5 asHexString];
  v9 = [v7 objectForKeyedSubscript:asHexString];

  [v4 setObject:v9 forKeyedSubscript:@"atlCityCode"];
  v10 = +[AppletConfigurationData getCalypsoSettings];
  v11 = [v10 objectForKeyedSubscript:@"calypsoSettings"];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:@"supportsMerge"];
    [v4 setObject:v13 forKeyedSubscript:@"supportsMerge"];

    v14 = [v12 objectForKeyedSubscript:@"altFileMapping"];
    [v4 setObject:v14 forKeyedSubscript:@"altFileMapping"];

    v15 = [v12 objectForKeyedSubscript:@"altFileMapping"];

    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = +[AppletConfigurationData getCalypsoSettings];
    v17 = [v16 objectForKeyedSubscript:@"fileMapping"];
    v18 = [v17 objectForKeyedSubscript:v9];

    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEBUG, "cityFileMapping %@", &v23, 0xCu);
    }

    [v4 setObject:v18 forKeyedSubscript:@"cityFileStructure"];
  }

  else
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEFAULT, "No city-specific settings for networkId %@ (internal) city %@", &v23, 0x16u);
    }
  }

LABEL_9:
  v20 = ATLLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_DEBUG, "Static config: %@", &v23, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

@end