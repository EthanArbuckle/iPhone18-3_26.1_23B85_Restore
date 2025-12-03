@interface AtlasDecoder
+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error;
+ (id)amountDictionaryWithAmount:(id)amount withIdentifier:(id)identifier usingAmountKey:(id)key usingCurrencyKey:(id)currencyKey usingExponentKey:(id)exponentKey usingIdentifierKey:(id)identifierKey;
+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry;
+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator;
+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id;
+ (id)decodeBestContractList:(id)list;
+ (id)decodeContractFFBitMap:(id)map;
+ (id)decodeContractJourneyDataBitmap:(id)bitmap;
+ (id)decodeContractRestrictionBitmap:(id)bitmap;
+ (id)decodeContractSaleDataBitmap:(id)bitmap;
+ (id)decodeContractStructureFF:(id)f;
+ (id)decodeContractValidityBitmap:(id)bitmap;
+ (id)decodeCounterStructure03:(id)structure03;
+ (id)decodeCounterStructure0C:(id)c;
+ (id)decodeEnvironmentBitMap:(id)map;
+ (id)decodeEnvironmentData:(id)data;
+ (id)decodeEnvironmentDataBitMap:(id)map;
+ (id)decodeEventBitMap:(id)map;
+ (id)decodeEventEntry:(id)entry;
+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list;
+ (id)formatTransitDetailRaw:(id)raw;
+ (id)getAbsoluteDateComponents:(id)components withTime:(id)time;
+ (id)getAbsoluteDateComponentsWithDefaultMinutes:(id)minutes withTime:(id)time withDefaultMinutes:(id)defaultMinutes;
+ (id)getInternalEnRouteStatus:(id)status;
+ (id)getTransitModality:(id)modality;
+ (id)getUnvalidatableContracts:(id)contracts;
+ (id)sharedInstance;
- (AtlasDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getCardIdFromSelectResponse:(id)response;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseCommandEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseEndEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHistory:(id)history withContractList:(id)list;
- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)parseTransactionEvent:(id)event withApplet:(id)applet error:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)cleanup;
- (void)stripContract:(id)contract;
@end

@implementation AtlasDecoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AtlasDecoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__singleton;

  return v2;
}

uint64_t __30__AtlasDecoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__singleton = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AtlasDecoder)init
{
  v13.receiver = self;
  v13.super_class = AtlasDecoder;
  v2 = [(AtlasDecoder *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hciArray = v2->_hciArray;
    v2->_hciArray = v3;

    v5 = [ATLTimer alloc];
    v6 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __20__AtlasDecoder_init__block_invoke;
    v11[3] = &unk_278874C98;
    v7 = v2;
    v12 = v7;
    v8 = [(ATLTimer *)v5 initOnQueue:v6 withTimerBlock:v11];
    timer = v7->_timer;
    v7->_timer = v8;

    [AppletTranslator registerForCleanup:v7];
  }

  return v2;
}

void __20__AtlasDecoder_init__block_invoke(uint64_t a1)
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
    *v9 = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Starting cleanup", v9, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_hciArray removeAllObjects];
  serviceProvider = selfCopy->_serviceProvider;
  selfCopy->_serviceProvider = 0;

  appletAID = selfCopy->_appletAID;
  selfCopy->_appletAID = 0;

  selfCopy->_errorTransaction = 0;
  errorCode = selfCopy->_errorCode;
  selfCopy->_errorCode = 0;

  transactionDetailRaw = selfCopy->_transactionDetailRaw;
  selfCopy->_transactionDetailRaw = 0;

  [(ATLTimer *)selfCopy->_timer stopTimer];
  objc_sync_exit(selfCopy);
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (!self->_appletAID)
  {
    objc_storeStrong(&self->_appletAID, applet);
  }

  if ([eventCopy length] <= 1)
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v54 = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v21 = v20;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v61[0] = *MEMORY[0x277CCA450];
        v61[1] = v24;
        v62[0] = v20;
        v62[1] = v22;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      }

      else
      {
        v63 = *MEMORY[0x277CCA450];
        v64[0] = v20;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      }
      v35 = ;
      *error = [v23 errorWithDomain:@"ATL" code:6 userInfo:v35];
    }

LABEL_28:

LABEL_29:
    v37 = 0;
    goto LABEL_34;
  }

  v25 = *[eventCopy bytes];
  v26 = *([eventCopy bytes] + 1);
  if (v26 != 7)
  {
    v29 = ATLLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v54 = v26;
      _os_log_impl(&dword_22EEF5000, v29, OS_LOG_TYPE_ERROR, "Unsupported version %u", buf, 8u);
    }

    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unsupported version %u", v26];
    v21 = v30;
    if (error)
    {
      v31 = *error;
      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v34 = *MEMORY[0x277CCA7E8];
        v57[0] = *MEMORY[0x277CCA450];
        v57[1] = v34;
        v58[0] = v30;
        v58[1] = v31;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      }

      else
      {
        v59 = *MEMORY[0x277CCA450];
        v60 = v30;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      }
      v36 = ;
      *error = [v32 errorWithDomain:@"ATL" code:2 userInfo:v36];
    }

    goto LABEL_28;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v25 <= 16)
  {
    if (v25 == 1)
    {
      v28 = [(AtlasDecoder *)selfCopy parseStartEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_33;
    }

    if (v25 == 2)
    {
      v28 = [(AtlasDecoder *)selfCopy parseEndEvent:eventCopy withApplet:appletCopy error:error];
      goto LABEL_33;
    }

LABEL_37:
    objc_sync_exit(selfCopy);

    v40 = ATLLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v54 = v25;
      v55 = 1024;
      v56 = 7;
      _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Invalid event type 0x%x version 0x%x", buf, 0xEu);
    }

    v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid event type 0x%x version 0x%x", v25, 7];
    v42 = v41;
    if (error)
    {
      v43 = *error;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v46 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v46;
        v50[0] = v41;
        v50[1] = v43;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52 = v41;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      }

      v48 = v47;
      *error = [v44 errorWithDomain:@"ATL" code:3 userInfo:v47];
    }

    goto LABEL_29;
  }

  if (v25 == 17)
  {
    v28 = [(AtlasDecoder *)selfCopy parseTransactionEvent:eventCopy withApplet:appletCopy error:error];
    goto LABEL_33;
  }

  if (v25 == 18)
  {
    v28 = [(AtlasDecoder *)selfCopy parseDeselectEvent:eventCopy withApplet:appletCopy error:error];
    goto LABEL_33;
  }

  if (v25 != 19)
  {
    goto LABEL_37;
  }

  v28 = [(AtlasDecoder *)selfCopy parseCommandEvent:eventCopy withApplet:appletCopy error:error];
LABEL_33:
  v37 = v28;
  objc_sync_exit(selfCopy);

LABEL_34:
  v38 = *MEMORY[0x277D85DE8];

  return v37;
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
          error = [(AtlasDecoder *)self generateContactEndEvent:appletCopy withDidError:v12 != 144];
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
  v92[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] > 2)
  {
    bytes = [eventCopy bytes];
    v22 = bytes;
    if (*(bytes + 1) == 7)
    {
      if (!*(bytes + 2))
      {
        v23 = @"Contact";
LABEL_19:
        v74[0] = bytes + 3;
        v74[1] = [eventCopy length] - 3;
        v37 = [AtlasDecoder DecodeTransactionE1TLV:v74 error:error];
        v38 = v37;
        if (error)
        {
          v39 = 0;
          if (*error || !v37)
          {
            goto LABEL_58;
          }
        }

        else if (!v37)
        {
          v39 = 0;
LABEL_58:

          goto LABEL_64;
        }

        v47 = [v37 objectForKeyedSubscript:@"recordData"];
        if ([v47 sfi] == 8 || objc_msgSend(v47, "sfi") == 29)
        {
          content = [v47 content];
          v49 = 8 * [content length];

          if (v49 >= 0x35)
          {
            content2 = [v47 content];
            v51 = [AtlasDecoder decodeEventEntry:content2];

            if (v51)
            {
              v52 = [v51 objectForKeyedSubscript:@"EventCode"];
              if (v52)
              {
                v53 = [AtlasDecoder formatTransitDetailRaw:v52];
                v54 = v53;
                if (v53)
                {
                  transactionDetailRaw = self->_transactionDetailRaw;
                  if (transactionDetailRaw)
                  {
                    if (v53 != transactionDetailRaw)
                    {
                      log = ATLLogObject();
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        v56 = self->_transactionDetailRaw;
                        *buf = 138412546;
                        v78 = v56;
                        v79 = 2112;
                        v80 = v54;
                        _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_DEFAULT, "Inconsistent transaction details received during a single transaction %@ -> %@", buf, 0x16u);
                      }
                    }
                  }
                }

                v57 = self->_transactionDetailRaw;
                self->_transactionDetailRaw = v54;
              }

              v58 = [v51 objectForKeyedSubscript:@"EventResult"];

              if (v58)
              {
                v59 = [v51 objectForKeyedSubscript:@"EventResult"];
                errorCode = self->_errorCode;
                self->_errorCode = v59;

                longLongValue = [(NSNumber *)self->_errorCode longLongValue];
                if ((longLongValue - 32) >= 2 && (longLongValue - 131) >= 2)
                {
                  self->_errorTransaction = 1;
                }

                v62 = ATLLogObject();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = self->_errorCode;
                  *buf = 138412290;
                  v78 = v63;
                  _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_DEFAULT, "*** SpecialEvent written with ErrorCode = %@", buf, 0xCu);
                }
              }
            }
          }
        }

        v64 = ATLLogObject();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = self->_transactionDetailRaw;
          *buf = 138412290;
          v78 = v65;
          _os_log_impl(&dword_22EEF5000, v64, OS_LOG_TYPE_DEBUG, "*** _transactionDetailRaw = %@", buf, 0xCu);
        }

        v75[0] = @"EventType";
        v75[1] = @"appletIdentifier";
        v76[1] = appletCopy;
        v76[2] = v23;
        v76[0] = @"TransactionEvent";
        v75[2] = @"Interface";
        v75[3] = @"Version";
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v22 + 1)];
        v76[3] = v66;
        v76[4] = &unk_2843C65F0;
        v75[4] = @"spIdentifier";
        v75[5] = @"sfi";
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v47, "sfi")}];
        v76[5] = v67;
        v75[6] = @"recordId";
        v68 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v47, "recordId")}];
        v76[6] = v68;
        v75[7] = @"recordContent";
        content3 = [v47 content];
        v76[7] = content3;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:8];

        v70 = ATLLogObject();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v78 = v39;
          _os_log_impl(&dword_22EEF5000, v70, OS_LOG_TYPE_DEBUG, "TransactionEvent %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_hciArray addObject:v39];
        goto LABEL_58;
      }

      if (*(bytes + 2) == 1)
      {
        v23 = @"Contactless";
        goto LABEL_19;
      }

      v40 = ATLLogObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v22 + 2);
        *buf = 67109120;
        LODWORD(v78) = v41;
        _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
      }

      v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v22 + 2)];
      v12 = v42;
      if (!error)
      {
        goto LABEL_63;
      }

      v43 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v45 = *MEMORY[0x277CCA7E8];
        v81[0] = *MEMORY[0x277CCA450];
        v81[1] = v45;
        v82[0] = v42;
        v82[1] = v43;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v82;
        v33 = v81;
        goto LABEL_28;
      }

      v83 = *MEMORY[0x277CCA450];
      v84 = v42;
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v84;
      v33 = &v83;
    }

    else
    {
      v24 = ATLLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(v22 + 1);
        *buf = 67109120;
        LODWORD(v78) = v25;
        _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Start Event version %u", buf, 8u);
      }

      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Start Event version %u", *(v22 + 1)];
      v12 = v26;
      if (!error)
      {
        goto LABEL_63;
      }

      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v85[0] = *MEMORY[0x277CCA450];
        v85[1] = v30;
        v86[0] = v26;
        v86[1] = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v86;
        v33 = v85;
LABEL_28:
        v46 = 2;
LABEL_61:
        v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v46];
        v35 = v28;
        v36 = 3;
        goto LABEL_62;
      }

      v87 = *MEMORY[0x277CCA450];
      v88 = v26;
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v88;
      v33 = &v87;
    }

    v46 = 1;
    goto LABEL_61;
  }

  v10 = ATLLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v78) = [eventCopy length];
    _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
  v12 = v11;
  if (!error)
  {
    goto LABEL_63;
  }

  v13 = *error;
  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  if (*error)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v89[0] = *MEMORY[0x277CCA450];
    v89[1] = v16;
    v90[0] = v11;
    v90[1] = v13;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v90;
    v19 = v89;
    v20 = 2;
  }

  else
  {
    v91 = *MEMORY[0x277CCA450];
    v92[0] = v11;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v92;
    v19 = &v91;
    v20 = 1;
  }

  v34 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  v35 = v14;
  v36 = 6;
LABEL_62:
  *error = [v35 errorWithDomain:@"ATL" code:v36 userInfo:v34];

LABEL_63:
  v39 = 0;
LABEL_64:

  v71 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)parseStartEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 3)
  {
    v13 = ATLLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v57 = [eventCopy length];
      v58 = 2048;
      v59 = 3;
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
      v54 = *MEMORY[0x277CCA450];
      v55 = v14;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v55;
      v22 = &v54;
      goto LABEL_31;
    }

    v19 = *MEMORY[0x277CCA7E8];
    v52[0] = *MEMORY[0x277CCA450];
    v52[1] = v19;
    v53[0] = v14;
    v53[1] = v16;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v53;
    v22 = v52;
LABEL_28:
    v38 = 2;
LABEL_32:
    v39 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v38];
    *error = [v17 errorWithDomain:@"ATL" code:3 userInfo:v39];

    error = 0;
    goto LABEL_33;
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
      LODWORD(v57) = v24;
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
      v50 = *MEMORY[0x277CCA450];
      v51 = v25;
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v51;
      v22 = &v50;
      goto LABEL_31;
    }

    v28 = *MEMORY[0x277CCA7E8];
    v48[0] = *MEMORY[0x277CCA450];
    v48[1] = v28;
    v49[0] = v25;
    v49[1] = v26;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v49;
    v22 = v48;
    goto LABEL_28;
  }

  if (!*(bytes + 2))
  {
    v12 = @"Contact";
    goto LABEL_18;
  }

  if (*(bytes + 2) == 1)
  {
    v12 = @"Contactless";
LABEL_18:
    v42[0] = @"EventType";
    v42[1] = @"appletIdentifier";
    v43[1] = appletCopy;
    v43[2] = v12;
    v43[0] = @"StartEvent";
    v42[2] = @"Interface";
    v42[3] = @"Version";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
    v42[4] = @"IgnoreRFEvents";
    v42[5] = @"DontWaitForEOT";
    v43[5] = MEMORY[0x277CBEC38];
    v43[6] = MEMORY[0x277CBEC38];
    v43[3] = v29;
    v43[4] = MEMORY[0x277CBEC28];
    v42[6] = @"RequiresPowerCycle";
    v42[7] = @"EoTCallbackExpected";
    v42[8] = @"DelayExpressReentry";
    v43[7] = MEMORY[0x277CBEC28];
    v43[8] = &unk_2843C6608;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];

    v30 = ATLLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v57 = v15;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    error = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
    v31 = ATLLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_DEBUG, "Stopping currently running timer due to incoming SELECT", buf, 2u);
    }

    [(ATLTimer *)self->_timer stopTimer];
    [(NSMutableArray *)self->_hciArray addObject:error];
    goto LABEL_33;
  }

  v32 = ATLLogObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = *(v11 + 2);
    *buf = 67109120;
    LODWORD(v57) = v33;
    _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
  }

  v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v11 + 2)];
  v15 = v34;
  if (error)
  {
    v35 = *error;
    v17 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v37 = *MEMORY[0x277CCA7E8];
      v44[0] = *MEMORY[0x277CCA450];
      v44[1] = v37;
      v45[0] = v34;
      v45[1] = v35;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v45;
      v22 = v44;
      goto LABEL_28;
    }

    v46 = *MEMORY[0x277CCA450];
    v47 = v34;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v47;
    v22 = &v46;
LABEL_31:
    v38 = 1;
    goto LABEL_32;
  }

LABEL_33:

  v40 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)parseDeselectEvent:(id)event withApplet:(id)applet error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  if ([eventCopy length] != 3)
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v43) = [eventCopy length];
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "Invalid eventData length %u", buf, 8u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid eventData length %u", objc_msgSend(eventCopy, "length")];
    v18 = v17;
    if (!error)
    {
      goto LABEL_24;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v50[0] = *MEMORY[0x277CCA450];
      v50[1] = v22;
      v51[0] = v17;
      v51[1] = v19;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v51;
      v25 = v50;
      v26 = 2;
    }

    else
    {
      v52 = *MEMORY[0x277CCA450];
      v53[0] = v17;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v53;
      v25 = &v52;
      v26 = 1;
    }

    v37 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    v38 = v20;
    v39 = 6;
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
    v27 = ATLLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(v11 + 2);
      *buf = 67109120;
      LODWORD(v43) = v28;
      _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Unknown interface type %u", buf, 8u);
    }

    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown interface type %u", *(v11 + 2)];
    v18 = v29;
    if (!error)
    {
      goto LABEL_24;
    }

    v30 = *error;
    v31 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v46[0] = *MEMORY[0x277CCA450];
      v46[1] = v32;
      v47[0] = v29;
      v47[1] = v30;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v47;
      v35 = v46;
      v36 = 2;
    }

    else
    {
      v48 = *MEMORY[0x277CCA450];
      v49 = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v49;
      v35 = &v48;
      v36 = 1;
    }

    v37 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    v38 = v31;
    v39 = 3;
LABEL_23:
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];

LABEL_24:
    goto LABEL_25;
  }

  v44[0] = @"EventType";
  v44[1] = @"appletIdentifier";
  v45[1] = appletCopy;
  v45[2] = @"Contactless";
  v45[0] = @"DeselectEvent";
  v44[2] = @"Interface";
  v44[3] = @"Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(bytes + 1)];
  v44[4] = @"IgnoreRFEvents";
  v44[5] = @"DontWaitForEOT";
  v45[3] = v12;
  v45[4] = MEMORY[0x277CBEC38];
  v45[5] = MEMORY[0x277CBEC38];
  v45[6] = MEMORY[0x277CBEC28];
  v44[6] = @"RequiresPowerCycle";
  v44[7] = @"DelayExpressReentry";
  v45[7] = &unk_2843C6608;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:8];

  v14 = ATLLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v13;
    _os_log_impl(&dword_22EEF5000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_hciArray addObject:v13];
  v15 = ATLLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEBUG, "Starting 150 ms timer due to reception of DESELECT", buf, 2u);
  }

  [(ATLTimer *)self->_timer startTimerWithDelay:?];
LABEL_26:

  v40 = *MEMORY[0x277D85DE8];

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
        _os_log_impl(&dword_22EEF5000, v12, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
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
    v33[6] = &unk_2843C6620;
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
  v39 = *MEMORY[0x277D85DE8];
  v3 = ATLLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  if (![(NSMutableArray *)self->_hciArray count])
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v22 = 0;
    goto LABEL_27;
  }

  if (self->_appletAID)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = self->_hciArray;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v27;
      *&v6 = 138412290;
      v25 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = ATLLogObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v37 = v10;
            _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }
        }

        v7 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v7);
    }

    if (self->_errorTransaction)
    {
      v12 = 0;
    }

    else
    {
      v12 = 64;
    }

    if (self->_errorTransaction)
    {
      v13 = ATLLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        errorCode = self->_errorCode;
        *buf = 138412290;
        v37 = errorCode;
        _os_log_impl(&dword_22EEF5000, v13, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    if (!self->_transactionDetailRaw)
    {
      v15 = [MEMORY[0x277CBEA90] dataWithHexString:@"010000"];
      transactionDetailRaw = self->_transactionDetailRaw;
      self->_transactionDetailRaw = v15;
    }

    v34[0] = @"EventType";
    v34[1] = @"appletIdentifier";
    appletAID = self->_appletAID;
    v35[0] = @"EndEvent";
    v35[1] = appletAID;
    v34[2] = @"Version";
    v34[3] = @"Interface";
    v35[2] = &unk_2843C6638;
    v35[3] = @"Contactless";
    v34[4] = @"didError";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{self->_errorTransaction, v25, v26}];
    v35[4] = v18;
    v34[5] = @"result";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
    v35[5] = v19;
    v35[6] = &unk_2843C6620;
    v34[6] = @"type";
    v34[7] = @"parsedInfo";
    v30 = @"TypeDetailRaw";
    v31 = self->_transactionDetailRaw;
    v32 = @"Transaction";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v33 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v35[7] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];

LABEL_27:
    goto LABEL_29;
  }

  v22 = 0;
LABEL_29:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Supported";
  v10[1] = @"DelayExpressReentry";
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = &unk_2843C6608;
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
    _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Atlas decoder doesn't expect processEndOfTransaction", v22, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Atlas decoder doesn't expect processEndOfTransaction"];
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

+ (id)DecodeTransactionE1TLV:(id *)v error:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v5 = DERDecodeItemCtx(v, &v43);
  if (v5 || v43 != 0xE000000000000001)
  {
    v19 = ATLLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v54 = 67109376;
      *&v54[4] = v5;
      *&v54[8] = 2048;
      *&v54[10] = v43;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "Failed to decode E1 tag %d or wrong tag 0x%llx", v54, 0x12u);
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v20 initWithFormat:@"Failed to decode E1 tag %d or wrong tag 0x%llx", v5, v43];
    v22 = v21;
    if (!error)
    {
      goto LABEL_33;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v26 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v26;
      v60[0] = v21;
      v60[1] = v23;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v60;
      v29 = v59;
LABEL_20:
      v35 = 2;
LABEL_32:
      v40 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v35];
      *error = [v24 errorWithDomain:@"ATL" code:3 userInfo:v40];

LABEL_33:
      error = 0;
      goto LABEL_34;
    }

    v61 = *MEMORY[0x277CCA450];
    v62[0] = v21;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v62;
    v29 = &v61;
LABEL_31:
    v35 = 1;
    goto LABEL_32;
  }

  if (!v45)
  {
    v30 = ATLLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Missing E1 content", v54, 2u);
    }

    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Missing E1 content"];
    v22 = v31;
    if (!error)
    {
      goto LABEL_33;
    }

    v32 = *error;
    v24 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v55[0] = *MEMORY[0x277CCA450];
      v55[1] = v34;
      v56[0] = v31;
      v56[1] = v32;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v56;
      v29 = v55;
      goto LABEL_20;
    }

    v57 = *MEMORY[0x277CCA450];
    v58 = v31;
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v58;
    v29 = &v57;
    goto LABEL_31;
  }

  memset(v54, 0, 32);
  v6 = DERParseSequenceSpec(&v44, &AtlasTransactionEventE1ContentsSpec, v54, 0x20uLL);
  if (v6)
  {
    v7 = v6;
    v8 = ATLLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v53 = v7;
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
        v48[0] = *MEMORY[0x277CCA450];
        v48[1] = v14;
        v49[0] = v9;
        v49[1] = v11;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v49;
        v17 = v48;
        v18 = 2;
      }

      else
      {
        v50 = *MEMORY[0x277CCA450];
        v51 = v9;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v51;
        v17 = &v50;
        v18 = 1;
      }

      v39 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
      *error = [v12 errorWithDomain:@"ATL" code:3 userInfo:v39];

      error = 0;
    }
  }

  else
  {
    v10 = objc_alloc_init(AtlasRecordData);
    [(AtlasRecordData *)v10 setSfi:**v54];
    [(AtlasRecordData *)v10 setRecordId:*(*v54 + 1)];
    v36 = [MEMORY[0x277CBEA90] dataWithDERItem:&v54[16]];
    [(AtlasRecordData *)v10 setContent:v36];

    if ([(AtlasRecordData *)v10 sfi]>= 0x1F)
    {
      v37 = ATLLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(AtlasRecordData *)v10 sfi];
        *buf = 67109120;
        v53 = v38;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEFAULT, "Unexpected SFI (0x%02X) provided in TransactionEvent", buf, 8u);
      }
    }

    v46 = @"recordData";
    v47 = v10;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  }

LABEL_34:
  v41 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v118[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  schemeCopy = scheme;
  dataCopy = data;
  v17 = [TransceiverWrapper withTransceiver:transceiver];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v20 = [MEMORY[0x277CBEA90] dataWithHexString:dataCopy];

  v21 = SelectByNameCmd(v20);

  v110 = 0;
  v22 = [v17 transceiveAndCheckSW:v21 error:&v110];
  v23 = v110;
  if (!v23)
  {
    v95 = v22;
    if (!v22)
    {
      v64 = ATLLogObject();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v64, OS_LOG_TYPE_ERROR, "No response to SELECT received", buf, 2u);
      }

      v65 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No response to SELECT received"];
      v66 = v65;
      if (error)
      {
        v67 = v21;
        v68 = *error;
        v69 = MEMORY[0x277CCA9B8];
        v70 = *MEMORY[0x277CCA450];
        if (*error)
        {
          v71 = *MEMORY[0x277CCA7E8];
          v115[0] = *MEMORY[0x277CCA450];
          v115[1] = v71;
          v116[0] = v65;
          v116[1] = v68;
          v72 = MEMORY[0x277CBEAC0];
          v73 = v116;
          v74 = v115;
          v75 = 2;
        }

        else
        {
          v117 = *MEMORY[0x277CCA450];
          v118[0] = v65;
          v72 = MEMORY[0x277CBEAC0];
          v73 = v118;
          v74 = &v117;
          v75 = 1;
        }

        v76 = [v72 dictionaryWithObjects:v73 forKeys:v74 count:v75];
        *error = [v69 errorWithDomain:@"ATL" code:5 userInfo:v76];

        v21 = v67;
      }

      v24 = 0;
      errorCopy = 0;
      goto LABEL_88;
    }

    v84 = v21;
    [v22 base64EncodedStringWithOptions:0];
    v27 = v26 = v22;
    [v19 setObject:v27 forKeyedSubscript:@"answerSelectApplication"];

    v83 = [(AtlasDecoder *)self getCardIdFromSelectResponse:v26];
    asHexString = [v83 asHexString];
    [v18 setObject:asHexString forKeyedSubscript:@"cardId"];

    selectRemoteTicketingCmd = [(AtlasDecoder *)self SelectRemoteTicketingCmd];
    v81 = [v17 transceiveAndCheckSW:? error:?];
    v29 = [v81 base64EncodedStringWithOptions:0];
    [v19 setObject:v29 forKeyedSubscript:@"answerSelectFileRT"];

    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:11];
    v109 = 0;
    v31 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:7 count:1 error:&v109];
    v32 = v109;
    v87 = v31;
    if (v32)
    {
      v33 = ATLLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 7;
        _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Failed to read Environment File SFI %d", buf, 8u);
      }

      v31 = v87;
    }

    if (v31)
    {
      [v30 addObject:v31];
    }

    v108 = v32;
    v93 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:8 count:3 error:&v108];
    v34 = v108;

    if (v34)
    {
      v35 = ATLLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 8;
        _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Failed to read Transaction History SFI %d", buf, 8u);
      }
    }

    if (v93)
    {
      [v30 addObject:?];
    }

    v107 = v34;
    v92 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:9 count:4 error:&v107];
    v36 = v107;

    if (v36)
    {
      v37 = ATLLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 9;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to read Contracts File SFI %d", buf, 8u);
      }
    }

    if (v92)
    {
      [v30 addObject:?];
    }

    v106 = v36;
    v91 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:10 count:1 error:&v106];
    v38 = v106;

    if (v38)
    {
      v39 = ATLLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 10;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v91)
    {
      [v30 addObject:?];
    }

    v105 = v38;
    v90 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:11 count:1 error:&v105];
    v40 = v105;

    if (v40)
    {
      v41 = ATLLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 11;
        _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v90)
    {
      [v30 addObject:?];
    }

    v104 = v40;
    v89 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:12 count:1 error:&v104];
    v42 = v104;

    if (v42)
    {
      v43 = ATLLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 12;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v89)
    {
      [v30 addObject:?];
    }

    v103 = v42;
    v88 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:13 count:1 error:&v103];
    v44 = v103;

    if (v44)
    {
      v45 = ATLLogObject();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 13;
        _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v88)
    {
      [v30 addObject:?];
    }

    v96 = v30;
    v102 = v44;
    v46 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:6 count:4 error:&v102];
    v47 = v102;

    v86 = v46;
    if (v47)
    {
      v48 = ATLLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 6;
        _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_ERROR, "Failed to read Contract Extentions File SFI %d", buf, 8u);
      }

      v46 = v86;
    }

    v94 = v19;
    if (v46)
    {
      [v96 addObject:v46];
    }

    v101 = v47;
    v49 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:29 count:3 error:&v101];
    v50 = v101;

    v85 = v49;
    if (v50)
    {
      v51 = ATLLogObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 29;
        _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Failed to read Special Events File SFI %d", buf, 8u);
      }

      v49 = v85;
    }

    if (v49)
    {
      [v96 addObject:v49];
    }

    v100 = v50;
    v52 = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:30 count:1 error:&v100];
    v53 = v100;

    if (v53)
    {
      v54 = ATLLogObject();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 30;
        _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_ERROR, "Failed to read Best Contracts SFI %d", buf, 8u);
      }
    }

    if (v52)
    {
      [v96 addObject:v52];
    }

    v80 = v52;
    v99 = v53;
    error = [(AtlasDecoder *)self readPartnerRecords:v17 sfi:25 count:1 error:&v99, error];
    v56 = v99;

    if (v56)
    {
      v57 = ATLLogObject();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = 25;
        _os_log_impl(&dword_22EEF5000, v57, OS_LOG_TYPE_ERROR, "Failed to read All Counters SFI %d", buf, 8u);
      }
    }

    if (error)
    {
      [v96 addObject:error];
    }

    [v94 setObject:v96 forKeyedSubscript:@"recordFiles"];
    [v18 setObject:v94 forKeyedSubscript:@"cardBinaryrecord"];
    v111 = @"cardImage";
    v112 = v18;
    v58 = v18;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v98 = v56;
    v60 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v59 options:1 error:&v98];
    v24 = v98;

    if (keyCopy)
    {
      v97 = v24;
      v61 = keyCopy;
      errorCopy = [_TtC24AppletTranslationLibrary17OpaqueDataService serializedHPKEWithData:v60 publicKey:keyCopy scheme:schemeCopy error:&v97];
      v62 = v97;

      if (v79)
      {
        v18 = v58;
        if (v62)
        {
          v63 = v62;
          *v79 = v62;
        }

        v24 = v62;
        keyCopy = v61;
        goto LABEL_84;
      }

      v24 = v62;
      keyCopy = v61;
    }

    else
    {
      errorCopy = v60;
    }

    v18 = v58;
LABEL_84:
    v21 = v84;

    v19 = v94;
LABEL_88:
    v22 = v95;
    goto LABEL_89;
  }

  v24 = v23;
  if (error)
  {
    v25 = v23;
    errorCopy = 0;
    *error = v24;
  }

LABEL_89:

  v77 = *MEMORY[0x277D85DE8];

  return errorCopy;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v12 = SelectByNameCmd(v11);

  v100 = 0;
  v13 = [historyCopy transceiveAndCheckSW:v12 error:&v100];
  v14 = v100;
  v15 = v14;
  if (v13)
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v99 = v15;
    v18 = [(AtlasDecoder *)self readAndDecodeContracts:historyCopy sfi:9 count:4 error:&v99];
    v19 = v99;

    v85 = v18;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        v21 = 0;
        *error = v19;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v23 = [v18 copy];
      [v16 setObject:v23 forKeyedSubscript:@"ContractList"];

      v98 = 0;
      [(AtlasDecoder *)self readAndDecodeHistory:historyCopy sfi:8 count:10 error:&v98];
      v25 = v24 = self;
      v26 = v98;
      if (v26)
      {
        v19 = v26;
        if (error)
        {
          v27 = v26;
          v21 = 0;
          *error = v19;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        [v16 setObject:v25 forKeyedSubscript:@"TransactionHistory"];
        v82 = [(AtlasDecoder *)v24 parseHistory:v25 withContractList:v18];
        v84 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
        v97 = 0;
        v28 = [(AtlasDecoder *)v24 readAndDecodeBestContractList:historyCopy sfi:30 error:&v97];
        v29 = v97;
        v81 = v28;
        if (v29)
        {
          v19 = v29;
          if (error)
          {
            v30 = v29;
            v21 = 0;
            *error = v19;
          }

          else
          {
            v21 = 0;
          }

          v63 = v82;
        }

        else
        {
          v75 = v24;
          errorCopy = error;
          v77 = v17;
          v79 = v13;
          v80 = v12;
          v78 = v16;
          [v16 setObject:v28 forKeyedSubscript:@"BestContractList"];
          v31 = [AtlasDecoder getUnvalidatableContracts:v28];
          v32 = ATLLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v106 = v31;
            _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "unValidatableContracts: %@", buf, 0xCu);
          }

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v33 = v85;
          obj = [v85 copy];
          v34 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
          v83 = v31;
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v87 = *v94;
            do
            {
              v37 = 0;
              do
              {
                if (*v94 != v87)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v93 + 1) + 8 * v37);
                ++v36;
                v39 = ATLLogObject();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  LODWORD(v106) = v36;
                  _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "contractPointerId %d", buf, 8u);
                }

                v40 = ATLLogObject();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  v41 = [v38 objectForKeyedSubscript:@"ContractBitmap"];
                  *buf = 138412290;
                  v106 = v41;
                  _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_DEBUG, "ContractBitmap %@", buf, 0xCu);
                }

                v42 = ATLLogObject();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  v43 = [v38 objectForKeyedSubscript:@"ContractStatus"];
                  *buf = 138412290;
                  v106 = v43;
                  _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_DEBUG, "ContractStatus %@", buf, 0xCu);
                }

                v44 = ATLLogObject();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  v45 = [v38 objectForKeyedSubscript:@"ContractTariff"];
                  *buf = 138412290;
                  v106 = v45;
                  _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEBUG, "ContractTariff %@", buf, 0xCu);
                }

                v46 = ATLLogObject();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  v47 = [v38 objectForKeyedSubscript:@"ContractCounters"];
                  *buf = 138412290;
                  v106 = v47;
                  _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_DEBUG, "ContractCounters %@", buf, 0xCu);
                }

                v48 = ATLLogObject();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  v49 = [v38 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  *buf = 138412290;
                  v106 = v49;
                  _os_log_impl(&dword_22EEF5000, v48, OS_LOG_TYPE_DEBUG, "ContractValidityJourneysData %@", buf, 0xCu);
                }

                v50 = [v38 objectForKeyedSubscript:@"ContractStatus"];
                integerValue = [v50 integerValue];

                if (integerValue == 1 && ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v36], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", v52), v53 = objc_claimAutoreleasedReturnValue(), v53, v52, !v53))
                {
                  v54 = [v38 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  v55 = [v54 objectForKeyedSubscript:@"ContractCounterStructure"];

                  if ([v55 integerValue] == 12)
                  {
                    v56 = [v38 objectForKeyedSubscript:@"ContractCounters"];
                    v57 = [v56 objectForKeyedSubscript:@"CounterContractCount"];

                    v58 = [v38 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                    v59 = [AtlasDecoder amountDictionaryWithAmount:v57 withIdentifier:v58 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingIdentifierKey:@"BalanceIdentifier"];

                    v33 = v85;
                    [v84 addObject:v59];
                    [v85 removeObject:v38];

                    v31 = v83;
                  }
                }

                else
                {
                  [v33 removeObject:v38];
                }

                ++v37;
              }

              while (v35 != v37);
              v60 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
              v35 = v60;
            }

            while (v60);
          }

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v61 = v33;
          v62 = [v61 countByEnumeratingWithState:&v89 objects:v103 count:16];
          v17 = v77;
          v63 = v82;
          if (v62)
          {
            v64 = v62;
            v65 = *v90;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v90 != v65)
                {
                  objc_enumerationMutation(v61);
                }

                [(AtlasDecoder *)v75 stripContract:*(*(&v89 + 1) + 8 * i)];
              }

              v64 = [v61 countByEnumeratingWithState:&v89 objects:v103 count:16];
            }

            while (v64);
          }

          [v77 setObject:v61 forKeyedSubscript:@"CommutePlans"];
          [v77 setObject:v84 forKeyedSubscript:@"Balances"];
          v88 = 0;
          v67 = [(AtlasDecoder *)v75 readAndDecodeEnvironment:historyCopy sfi:7 error:&v88];
          v68 = v88;
          v19 = v68;
          if (v68)
          {
            v13 = v79;
            v12 = v80;
            if (errorCopy)
            {
              v69 = v68;
              v21 = 0;
              *errorCopy = v19;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v70 = [v67 objectForKeyedSubscript:@"EnvApplicationEndDate"];

            v13 = v79;
            if (v70)
            {
              v71 = [v67 objectForKeyedSubscript:@"EnvApplicationEndDate"];
              v72 = [AtlasDecoder getAbsoluteDateComponents:v71 withTime:0];
              [v77 setObject:v72 forKeyedSubscript:@"CardExpirationDate"];
            }

            v101[0] = @"State";
            v101[1] = @"TransactionHistory";
            v102[0] = v77;
            v102[1] = v82;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
            v12 = v80;
          }

          v16 = v78;
        }
      }
    }

    v15 = v19;
  }

  else if (error)
  {
    v22 = v14;
    v21 = 0;
    *error = v15;
  }

  else
  {
    v21 = 0;
  }

  v73 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)stripContract:(id)contract
{
  contractCopy = contract;
  [contractCopy removeObjectForKey:@"ContractBitmap"];
  [contractCopy removeObjectForKey:@"ContractTariff"];
  [contractCopy removeObjectForKey:@"ContractPointerNumber"];
  [contractCopy removeObjectForKey:@"ContractValidityStartDate"];
  [contractCopy removeObjectForKey:@"ContractValidityEndDate"];
  [contractCopy removeObjectForKey:@"ContractValidityStartTime"];
  [contractCopy removeObjectForKey:@"ContractValidityEndTime"];
  [contractCopy removeObjectForKey:@"ContractValidityInfoBitmap"];
}

- (id)parseHistory:(id)history withContractList:(id)list
{
  v75[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  listCopy = list;
  v71 = historyCopy;
  v6 = [historyCopy count];
  v69 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v72 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0x2818E8000uLL;
    do
    {
      v73 = v7;
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{8, v69}];
      v10 = [v71 objectAtIndexedSubscript:v7];
      v11 = [v10 objectForKeyedSubscript:@"EventDateStamp"];
      v12 = [v10 objectForKeyedSubscript:@"EventTimeStamp"];
      v13 = [v10 objectForKeyedSubscript:@"EventCode"];
      v14 = [v10 objectForKeyedSubscript:@"EventServiceProvider"];
      v15 = [v10 objectForKeyedSubscript:@"EventContractPointer"];
      v16 = [v10 objectForKeyedSubscript:@"EventSerialNumber"];
      v17 = [v8 + 2992 calculateTransactionSN:v11 withTimeStamp:v12 withEventCode:v13 withSP:v14 withContractPointer:v15 withDifferentiator:v16];
      [v9 setObject:v17 forKeyedSubscript:@"SerialNumber"];

      v18 = [v10 objectForKeyedSubscript:@"EventCode"];
      v19 = [v8 + 2992 getInternalEnRouteStatus:v18];
      [v9 setObject:v19 forKeyedSubscript:@"InternalEnRouteStatus"];

      v20 = [v10 objectForKeyedSubscript:@"EventCode"];
      v21 = [v8 + 2992 getTransitModality:v20];
      [v9 setObject:v21 forKeyedSubscript:@"TypeDetail"];

      v22 = [v10 objectForKeyedSubscript:@"EventCode"];
      v23 = [v8 + 2992 formatTransitDetailRaw:v22];
      [v9 setObject:v23 forKeyedSubscript:@"TypeDetailRaw"];

      v24 = [v10 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v25 = v73 + 1;

      v26 = 1;
      if (v24 == @"CVPEnter" && v25 < v72)
      {
        v27 = [v71 objectAtIndexedSubscript:v25];
        v28 = [v27 objectForKeyedSubscript:@"EventCode"];
        unsignedLongValue = [v28 unsignedLongValue];

        v30 = unsignedLongValue >> 4;
        v26 = 1;
        if (v30 != 1 && v30 != 4)
        {
          v31 = [MEMORY[0x277CBEA90] dataWithBytes:&AtlasCardReadBytes length:3];
          [v9 setObject:v31 forKeyedSubscript:@"TypeDetailRaw"];

          v26 = 0;
        }
      }

      v32 = [v9 objectForKeyedSubscript:@"TypeDetailRaw"];
      v33 = [v32 isEqualToBytes:&AtlasCardReadBytes length:3];

      if (v33)
      {
        [v9 setObject:@"CardRead" forKeyedSubscript:@"TypeDetail"];
        v26 = 0;
      }

      [v9 setObject:&unk_2843C6680 forKeyedSubscript:@"CityCode"];
      v34 = [v10 objectForKeyedSubscript:@"EventLocationId"];

      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = [v10 objectForKeyedSubscript:@"EventLocationId"];
      integerValue = [v35 integerValue];

      v37 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v37 == @"Enter")
      {
        v39 = 1;
      }

      else
      {
        v38 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
        v39 = v38 == @"CVPEnter";
      }

      if (v39 && integerValue)
      {
        v40 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
        [v9 setObject:v40 forKeyedSubscript:@"StartStation"];
      }

      v41 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v42 = v41;
      if (v41 == @"Exit")
      {

        if (!integerValue)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v43 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];

        if (v43 != @"CVPExit" || !integerValue)
        {
          goto LABEL_22;
        }
      }

      v44 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
      [v9 setObject:v44 forKeyedSubscript:@"EndStation"];

LABEL_22:
      v45 = [v10 objectForKeyedSubscript:@"EventDateStamp"];
      v46 = [v10 objectForKeyedSubscript:@"EventTimeStamp"];
      v47 = [AtlasDecoder getAbsoluteDateComponents:v45 withTime:v46];
      [v9 setObject:v47 forKeyedSubscript:@"TransactionTime"];

      v48 = [v10 objectForKeyedSubscript:@"EventDataDateFirstStamp"];

      if (v48)
      {
        v49 = [v10 objectForKeyedSubscript:@"EventDataDateFirstStamp"];
        v50 = [v10 objectForKeyedSubscript:@"EventDataTimeFirstStamp"];
        v51 = [AtlasDecoder getAbsoluteDateComponents:v49 withTime:v50];
        [v9 setObject:v51 forKeyedSubscript:@"FirstStampTime"];
      }

      v52 = [v10 objectForKeyedSubscript:@"EventContractPointer"];
      v53 = [v52 unsignedIntValue] - 1;

      v54 = [listCopy objectAtIndex:v53];
      v55 = [v54 objectForKeyedSubscript:@"ContractValidityJourneysData"];
      v56 = [v55 objectForKeyedSubscript:@"ContractCounterStructure"];
      unsignedIntValue = [v56 unsignedIntValue];

      if (unsignedIntValue == 12)
      {
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
        v59 = [v54 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v60 = [AtlasDecoder amountDictionaryWithAmount:v58 withIdentifier:v59 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingIdentifierKey:@"AmountIdentifier"];

        v75[0] = v60;
        v61 = v75;
        v62 = @"Amounts";
      }

      else
      {
        v63 = [v54 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v64 = [v54 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
        v65 = [v54 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
        v60 = [AtlasDecoder commutePlanWithIdAndExpiry:v63 withExpiry:v64 withUniqueId:v65];

        v74 = v60;
        v61 = &v74;
        v62 = @"CommutePlans";
      }

      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
      [v9 setObject:v66 forKeyedSubscript:v62];

      [v69 addObject:v9];
      v7 = v73 + 1;
      v8 = 0x2818E8000;
    }

    while (v72 != v73 + 1);
  }

  v67 = *MEMORY[0x277D85DE8];

  return v69;
}

- (id)getCardIdFromSelectResponse:(id)response
{
  responseCopy = response;
  v13[0] = [responseCopy bytes];
  v4 = [responseCopy length];

  v13[1] = v4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = DERFindItem(v13, 0xC000000000000007, &v10);
  v7 = v6;
  v8 = 0;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:{v12, v5}];
  }

  return v8;
}

+ (id)decodeEnvironmentBitMap:(id)map
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"EnvNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v5 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 0)}];
  v16[0] = v5;
  v15[1] = @"EnvApplicationIssuerId";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v16[1] = v6;
  v15[2] = @"EnvApplicationEndDate";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v16[2] = v7;
  v15[3] = @"EnvAuthenticator";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v16[3] = v8;
  v15[4] = @"EnvDataBitmap";
  v9 = MEMORY[0x277CCABB0];
  v10 = [mapCopy isBitSet:6];

  v11 = [v9 numberWithBool:v10];
  v16[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)decodeEnvironmentDataBitMap:(id)map
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"EnvDataCardStatus";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(map, "isBitSet:", 0)}];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)decodeEnvironmentData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([dataCopy length] > 0x1C)
  {
    v8 = [dataCopy readBinaryValueAtBit:0 numberOfBits:6];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    [dictionary setValue:v9 forKey:@"EnvVersionNumber"];

    v10 = [dataCopy readBinaryValueAtBit:6 numberOfBits:7];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    v12 = [self decodeEnvironmentBitMap:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    [dictionary setValue:v13 forKey:@"EnvBitmap"];

    v14 = [v12 objectForKeyedSubscript:@"EnvNetworkId"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = [dataCopy readBinaryValueAtBit:13 numberOfBits:24];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
      [dictionary setValue:v17 forKey:@"EnvNetworkId"];

      v18 = 37;
    }

    else
    {
      v18 = 13;
    }

    v19 = [v12 objectForKeyedSubscript:@"EnvApplicationIssuerId"];
    bOOLValue2 = [v19 BOOLValue];

    if (bOOLValue2)
    {
      v21 = [dataCopy readBinaryValueAtBit:v18 numberOfBits:8];
      v18 += 8;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
      [dictionary setValue:v22 forKey:@"EnvApplicationIssuerId"];
    }

    v23 = [v12 objectForKeyedSubscript:@"EnvApplicationEndDate"];
    bOOLValue3 = [v23 BOOLValue];

    if (bOOLValue3)
    {
      v25 = [dataCopy readBinaryValueAtBit:v18 numberOfBits:14];
      v18 += 14;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
      [dictionary setValue:v26 forKey:@"EnvApplicationEndDate"];
    }

    v27 = [v12 objectForKeyedSubscript:@"EnvAuthenticator"];
    bOOLValue4 = [v27 BOOLValue];

    if (bOOLValue4)
    {
      v29 = [dataCopy readBinaryValueAtBit:v18 numberOfBits:16];
      v18 += 16;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      [dictionary setValue:v30 forKey:@"EnvAuthenticator"];
    }

    v31 = [v12 objectForKeyedSubscript:@"EnvDataBitmap"];
    bOOLValue5 = [v31 BOOLValue];

    if (bOOLValue5)
    {
      v33 = [dataCopy readBinaryValueAtBit:v18 numberOfBits:2];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
      [dictionary setValue:v34 forKey:@"EnvDataBitmap"];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      v36 = [self decodeEnvironmentDataBitMap:v35];

      v37 = [v36 objectForKeyedSubscript:@"EnvDataCardStatus"];
      LODWORD(v34) = [v37 BOOLValue];

      if (v34)
      {
        v38 = [dataCopy readBinaryValueAtBit:v18 + 2 numberOfBits:1];
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
        [dictionary setValue:v39 forKey:@"EnvDataCardStatus"];
      }
    }

    v7 = dictionary;
  }

  else
  {
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v42[0] = 67109120;
      v42[1] = [dataCopy length];
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_ERROR, "Invalid data length %u", v42, 8u);
    }

    v7 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)decodeBestContractList:(id)list
{
  v33 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if ([listCopy length] == 29)
  {
    v4 = [listCopy readBinaryValueAtBit:0 numberOfBits:4];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v5 = 0x277CBE000uLL;
    if (v4)
    {
      v6 = 0;
      v7 = 4;
      v25 = v4;
      do
      {
        v8 = [listCopy readBinaryValueAtBit:v7 numberOfBits:{3, v25}];
        v9 = [listCopy readBinaryValueAtBit:v7 + 3 numberOfBits:4];
        v10 = [listCopy readBinaryValueAtBit:v7 + 7 numberOfBits:8];
        v11 = [listCopy readBinaryValueAtBit:v7 + 15 numberOfBits:4];
        v12 = [listCopy readBinaryValueAtBit:v7 + 19 numberOfBits:5];
        v29[0] = @"BestContractBitmap";
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
        v30[0] = v13;
        v29[1] = @"BestContractIssuer";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
        v30[1] = v14;
        v29[2] = @"BestContractType";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v30[2] = v15;
        v29[3] = @"BestContractPriority";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
        v30[3] = v16;
        v29[4] = @"BestContractPointer";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
        v30[4] = v17;
        [*(v5 + 2752) dictionaryWithObjects:v30 forKeys:v29 count:5];
        v19 = v18 = v5;
        [v26 addObject:v19];

        v5 = v18;
        v4 = v25;
        ++v6;
        v7 += 24;
      }

      while (v25 > v6);
    }

    v27[0] = @"BestContract";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
    v27[1] = @"BestContractList";
    v28[0] = v20;
    v21 = v26;
    v28[1] = v26;
    v22 = [*(v5 + 2752) dictionaryWithObjects:v28 forKeys:v27 count:2];
  }

  else
  {
    v21 = ATLLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = [listCopy length];
      _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "Invalid data length %u", buf, 8u);
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)decodeCounterStructure03:(id)structure03
{
  v3 = MEMORY[0x277CBEB38];
  structure03Copy = structure03;
  dictionary = [v3 dictionary];
  v6 = [structure03Copy readBinaryValueAtBit:0 numberOfBits:10];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setValue:v7 forKey:@"CounterContractCount"];

  v8 = [structure03Copy readBinaryValueAtBit:10 numberOfBits:14];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setValue:v9 forKey:@"CounterCounterValidityEndDate"];

  return dictionary;
}

+ (id)decodeCounterStructure0C:(id)c
{
  v3 = MEMORY[0x277CBEB38];
  cCopy = c;
  dictionary = [v3 dictionary];
  v6 = [cCopy readBinaryValueAtBit:0 numberOfBits:6];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setValue:v7 forKey:@"CounterContractCount"];

  v8 = [cCopy readBinaryValueAtBit:6 numberOfBits:18];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setValue:v9 forKey:@"CounterCounterRelativeFirstStamp15Mn"];

  return dictionary;
}

+ (id)decodeContractStructureFF:(id)f
{
  fCopy = f;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = 20;
  v7 = [fCopy readBinaryValueAtBit:0 numberOfBits:20];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [self decodeContractFFBitMap:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  [dictionary setValue:v10 forKey:@"ContractBitmap"];

  v11 = [v9 objectForKeyedSubscript:@"ContractNetworkId"];
  LODWORD(v8) = [v11 BOOLValue];

  if (v8)
  {
    v12 = [fCopy readBinaryValueAtBit:20 numberOfBits:24];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
    [dictionary setValue:v13 forKey:@"ContractNetworkId"];

    v6 = 44;
  }

  v14 = [v9 objectForKeyedSubscript:@"ContractProvider"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v16 = [fCopy readBinaryValueAtBit:v6 numberOfBits:8];
    v6 += 8;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
    [dictionary setValue:v17 forKey:@"ContractProvider"];
  }

  v18 = [v9 objectForKeyedSubscript:@"ContractTariff"];
  bOOLValue2 = [v18 BOOLValue];

  if (bOOLValue2)
  {
    v20 = [fCopy readBinaryValueAtBit:v6 numberOfBits:16];
    v6 += 16;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    [dictionary setValue:v21 forKey:@"ContractTariff"];
  }

  v22 = [v9 objectForKeyedSubscript:@"ContractSerialNumber"];
  bOOLValue3 = [v22 BOOLValue];

  if (bOOLValue3)
  {
    v24 = [fCopy readBinaryValueAtBit:v6 numberOfBits:32];
    v6 += 32;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
    [dictionary setValue:v25 forKey:@"ContractSerialNumber"];
  }

  v26 = [v9 objectForKeyedSubscript:@"ContractCustomerInfoBitmap"];
  bOOLValue4 = [v26 BOOLValue];

  if (bOOLValue4)
  {
    v28 = [fCopy readBinaryValueAtBit:v6 numberOfBits:2];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
    v30 = [v29 isBitSet:0];
    v31 = 8;
    if (!v30)
    {
      v31 = 2;
    }

    v6 += v31;
    if ([v29 isBitSet:1])
    {
      v6 += 32;
    }
  }

  v32 = [v9 objectForKeyedSubscript:@"ContractPassengerInfoBitmap"];
  bOOLValue5 = [v32 BOOLValue];

  if (bOOLValue5)
  {
    v34 = [fCopy readBinaryValueAtBit:v6 numberOfBits:2];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
    v36 = [v35 isBitSet:0];
    v37 = 10;
    if (!v36)
    {
      v37 = 2;
    }

    v6 += v37;
    if ([v35 isBitSet:1])
    {
      v6 += 8;
    }
  }

  v38 = [v9 objectForKeyedSubscript:@"ContractPayMethod"];
  bOOLValue6 = [v38 BOOLValue];

  if (bOOLValue6)
  {
    v40 = v6 + 11;
  }

  else
  {
    v40 = v6;
  }

  v41 = [v9 objectForKeyedSubscript:@"ContractServices"];
  bOOLValue7 = [v41 BOOLValue];

  if (bOOLValue7)
  {
    v40 += 16;
  }

  v43 = [v9 objectForKeyedSubscript:@"ContractPriceAmount"];
  bOOLValue8 = [v43 BOOLValue];

  if (bOOLValue8)
  {
    v40 += 16;
  }

  v45 = [v9 objectForKeyedSubscript:@"ContractPriceUnit"];
  bOOLValue9 = [v45 BOOLValue];

  if (bOOLValue9)
  {
    v40 += 16;
  }

  v47 = [v9 objectForKeyedSubscript:@"ContractRestrictionBitmap"];
  bOOLValue10 = [v47 BOOLValue];

  if (bOOLValue10)
  {
    v49 = [fCopy readBinaryValueAtBit:v40 numberOfBits:7];
    v50 = v40 + 7;
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49];
    v52 = [self decodeContractRestrictionBitmap:v51];

    v53 = [v52 objectForKeyedSubscript:@"ContractRestrictStart"];
    bOOLValue11 = [v53 BOOLValue];

    if (bOOLValue11)
    {
      v55 = [fCopy readBinaryValueAtBit:v40 + 7 numberOfBits:11];
      v50 = v40 + 18;
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
      [dictionary setValue:v56 forKey:@"ContractRestrictStart"];
    }

    v57 = [v52 objectForKeyedSubscript:@"ContractRestrictEnd"];
    bOOLValue12 = [v57 BOOLValue];

    if (bOOLValue12)
    {
      v59 = [fCopy readBinaryValueAtBit:v50 numberOfBits:11];
      v50 += 11;
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v59];
      [dictionary setValue:v60 forKey:@"ContractRestrictEnd"];
    }

    v61 = [v52 objectForKeyedSubscript:@"ContractRestrictDay"];
    bOOLValue13 = [v61 BOOLValue];

    if (bOOLValue13)
    {
      v63 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
      [dictionary setValue:v64 forKey:@"ContractRestrictDay"];
    }

    v65 = [v52 objectForKeyedSubscript:@"ContractRestrictTimeCode"];
    bOOLValue14 = [v65 BOOLValue];

    if (bOOLValue14)
    {
      v67 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v67];
      [dictionary setValue:v68 forKey:@"ContractRestrictTimeCode"];
    }

    v69 = [v52 objectForKeyedSubscript:@"ContractRestrictCode"];
    bOOLValue15 = [v69 BOOLValue];

    if (bOOLValue15)
    {
      v71 = [fCopy readBinaryValueAtBit:v50 numberOfBits:8];
      v50 += 8;
      v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v71];
      [dictionary setValue:v72 forKey:@"ContractRestrictCode"];
    }

    v73 = [v52 objectForKeyedSubscript:@"ContractRestrictProduct"];
    bOOLValue16 = [v73 BOOLValue];

    if (bOOLValue16)
    {
      v75 = [fCopy readBinaryValueAtBit:v50 numberOfBits:16];
      v50 += 16;
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v75];
      [dictionary setValue:v76 forKey:@"ContractRestrictProduct"];
    }

    v77 = [v52 objectForKeyedSubscript:@"ContractRestrictLocation"];
    bOOLValue17 = [v77 BOOLValue];

    if (bOOLValue17)
    {
      v79 = [fCopy readBinaryValueAtBit:v50 numberOfBits:16];
      v50 += 16;
      v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
      [dictionary setValue:v80 forKey:@"ContractRestrictLocation"];
    }

    v40 = v50;
  }

  v81 = [v9 objectForKeyedSubscript:@"ContractValidityInfoBitmap"];
  bOOLValue18 = [v81 BOOLValue];

  if (bOOLValue18)
  {
    v83 = [fCopy readBinaryValueAtBit:v40 numberOfBits:9];
    v84 = v40 + 9;
    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    [dictionary setValue:v85 forKey:@"ContractValidityInfoBitmap"];

    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    v87 = [self decodeContractValidityBitmap:v86];

    v88 = [v87 objectForKeyedSubscript:@"ContractValidityStartDate"];
    bOOLValue19 = [v88 BOOLValue];

    if (bOOLValue19)
    {
      v90 = [fCopy readBinaryValueAtBit:v40 + 9 numberOfBits:14];
      v84 = v40 + 23;
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v90];
      [dictionary setValue:v91 forKey:@"ContractValidityStartDate"];
    }

    v92 = [v87 objectForKeyedSubscript:@"ContractValidityStartTime"];
    bOOLValue20 = [v92 BOOLValue];

    if (bOOLValue20)
    {
      v94 = [fCopy readBinaryValueAtBit:v84 numberOfBits:11];
      v84 += 11;
      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v94];
      [dictionary setValue:v95 forKey:@"ContractValidityStartTime"];
    }

    v96 = [v87 objectForKeyedSubscript:@"ContractValidityEndDate"];
    bOOLValue21 = [v96 BOOLValue];

    if (bOOLValue21)
    {
      v98 = [fCopy readBinaryValueAtBit:v84 numberOfBits:14];
      v84 += 14;
      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v98];
      [dictionary setValue:v99 forKey:@"ContractValidityEndDate"];
    }

    v100 = [v87 objectForKeyedSubscript:@"ContractValidityEndTime"];
    bOOLValue22 = [v100 BOOLValue];

    if (bOOLValue22)
    {
      v102 = [fCopy readBinaryValueAtBit:v84 numberOfBits:11];
      v84 += 11;
      v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v102];
      [dictionary setValue:v103 forKey:@"ContractValidityEndTime"];
    }

    v104 = [v87 objectForKeyedSubscript:@"ContractValidityDuration"];
    bOOLValue23 = [v104 BOOLValue];

    if (bOOLValue23)
    {
      v106 = [fCopy readBinaryValueAtBit:v84 numberOfBits:8];
      v84 += 8;
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v106];
      [dictionary setValue:v107 forKey:@"ContractValidityDuration"];
    }

    v108 = [v87 objectForKeyedSubscript:@"ContractValidityLimitDate"];
    bOOLValue24 = [v108 BOOLValue];

    if (bOOLValue24)
    {
      v110 = [fCopy readBinaryValueAtBit:v84 numberOfBits:14];
      v84 += 14;
      v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v110];
      [dictionary setValue:v111 forKey:@"ContractValidityLimitDate"];
    }

    v112 = [v87 objectForKeyedSubscript:@"ContractValidityZones"];
    bOOLValue25 = [v112 BOOLValue];

    if (bOOLValue25)
    {
      v114 = [fCopy readBinaryValueAtBit:v84 numberOfBits:8];
      v84 += 8;
      v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v114];
      [dictionary setValue:v115 forKey:@"ContractValidityZones"];
    }

    v116 = [v87 objectForKeyedSubscript:@"ContractValidityJourneys"];
    bOOLValue26 = [v116 BOOLValue];

    if (bOOLValue26)
    {
      v118 = [fCopy readBinaryValueAtBit:v84 numberOfBits:16];
      v119 = [fCopy readBinaryValueAtBit:v84 + 1 numberOfBits:5];
      v120 = [fCopy readBinaryValueAtBit:v84 + 8 numberOfBits:8];
      v121 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v119];
      [dictionary2 setValue:v121 forKey:@"ContractCounterStructure"];

      v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v120];
      [dictionary2 setValue:v122 forKey:@"ContractCounterLastLoadCount"];

      v84 += 16;
      v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v118];
      [dictionary setValue:v123 forKey:@"ContractValidityJourneys"];

      [dictionary setObject:dictionary2 forKeyedSubscript:@"ContractValidityJourneysData"];
    }

    v124 = [v87 objectForKeyedSubscript:@"ContractPeriodJourneys"];
    bOOLValue27 = [v124 BOOLValue];

    if (bOOLValue27)
    {
      v126 = [fCopy readBinaryValueAtBit:v84 numberOfBits:16];
      v84 += 16;
      v127 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v126];
      [dictionary setValue:v127 forKey:@"ContractPeriodJourneys"];
    }

    v40 = v84;
  }

  v128 = [v9 objectForKeyedSubscript:@"ContractJourneyDataBitmap"];
  bOOLValue28 = [v128 BOOLValue];

  if (bOOLValue28)
  {
    v130 = [fCopy readBinaryValueAtBit:v40 numberOfBits:8];
    v131 = v40 + 8;
    v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130];
    v133 = [self decodeContractJourneyDataBitmap:v132];

    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130];
    [dictionary setValue:v134 forKey:@"ContractJourneyDataBitmap"];

    v135 = [v133 objectForKeyedSubscript:@"ContractJourneyOrigin"];
    LODWORD(v132) = [v135 BOOLValue];

    if (v132)
    {
      v136 = [fCopy readBinaryValueAtBit:v40 + 8 numberOfBits:16];
      v131 = v40 + 24;
      v137 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v136];
      [dictionary setValue:v137 forKey:@"ContractJourneyOrigin"];
    }

    v138 = [v133 objectForKeyedSubscript:@"ContractJourneyDestination"];
    bOOLValue29 = [v138 BOOLValue];

    if (bOOLValue29)
    {
      v140 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v140];
      [dictionary setValue:v141 forKey:@"ContractJourneyDestination"];
    }

    v142 = [v133 objectForKeyedSubscript:@"ContractJourneyRouteNumbers"];
    bOOLValue30 = [v142 BOOLValue];

    if (bOOLValue30)
    {
      v144 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v144];
      [dictionary setValue:v145 forKey:@"ContractJourneyRouteNumbers"];
    }

    v146 = [v133 objectForKeyedSubscript:@"ContractJourneyRouteVariants"];
    bOOLValue31 = [v146 BOOLValue];

    if (bOOLValue31)
    {
      v148 = [fCopy readBinaryValueAtBit:v131 numberOfBits:8];
      v131 += 8;
      v149 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v148];
      [dictionary setValue:v149 forKey:@"ContractJourneyRouteVariants"];
    }

    v150 = [v133 objectForKeyedSubscript:@"ContractJourneyRun"];
    bOOLValue32 = [v150 BOOLValue];

    if (bOOLValue32)
    {
      v152 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v152];
      [dictionary setValue:v153 forKey:@"ContractJourneyRun"];
    }

    v154 = [v133 objectForKeyedSubscript:@"ContractJourneyVia"];
    bOOLValue33 = [v154 BOOLValue];

    if (bOOLValue33)
    {
      v156 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v157 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      [dictionary setValue:v157 forKey:@"ContractJourneyVia"];
    }

    v158 = [v133 objectForKeyedSubscript:@"ContractJourneyVia"];
    bOOLValue34 = [v158 BOOLValue];

    if (bOOLValue34)
    {
      v160 = [fCopy readBinaryValueAtBit:v131 numberOfBits:16];
      v131 += 16;
      v161 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v160];
      [dictionary setValue:v161 forKey:@"ContractJourneyDistance"];
    }

    v162 = [v133 objectForKeyedSubscript:@"ContractJourneyInterchanges"];
    bOOLValue35 = [v162 BOOLValue];

    if (bOOLValue35)
    {
      v164 = [fCopy readBinaryValueAtBit:v131 numberOfBits:8];
      v131 += 8;
      v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v164];
      [dictionary setValue:v165 forKey:@"ContractJourneyInterchanges"];
    }

    v40 = v131;
  }

  v166 = [v9 objectForKeyedSubscript:@"ContractSaleDataBitmap"];
  bOOLValue36 = [v166 BOOLValue];

  if (bOOLValue36)
  {
    v168 = [fCopy readBinaryValueAtBit:v40 numberOfBits:4];
    v169 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v168];
    v170 = [self decodeContractSaleDataBitmap:v169];

    v171 = [v170 objectForKeyedSubscript:@"ContractSaleDate"];
    bOOLValue37 = [v171 BOOLValue];

    v173 = 18;
    if (!bOOLValue37)
    {
      v173 = 4;
    }

    v40 += v173;
    v174 = [v170 objectForKeyedSubscript:@"ContractSaleTime"];
    bOOLValue38 = [v174 BOOLValue];

    if (bOOLValue38)
    {
      v40 += 11;
    }

    v176 = [v170 objectForKeyedSubscript:@"ContractSaleAgent"];
    bOOLValue39 = [v176 BOOLValue];

    if (bOOLValue39)
    {
      v40 += 8;
    }

    v178 = [v170 objectForKeyedSubscript:@"ContractSaleDevice"];
    bOOLValue40 = [v178 BOOLValue];

    if (bOOLValue40)
    {
      v40 += 16;
    }
  }

  v180 = [v9 objectForKeyedSubscript:@"ContractStatus"];
  bOOLValue41 = [v180 BOOLValue];

  if (bOOLValue41)
  {
    v182 = [fCopy readBinaryValueAtBit:v40 numberOfBits:8];
    v40 += 8;
    v183 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v182];
    [dictionary setValue:v183 forKey:@"ContractStatus"];
  }

  v184 = [v9 objectForKeyedSubscript:@"ContractLoyaltyPoints"];
  bOOLValue42 = [v184 BOOLValue];

  if (bOOLValue42)
  {
    v186 = [fCopy readBinaryValueAtBit:v40 numberOfBits:16];
    v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v186];
    [dictionary setValue:v187 forKey:@"ContractLoyaltyPoints"];
  }

  v188 = dictionary;

  return dictionary;
}

+ (id)decodeEventBitMap:(id)map
{
  v34[23] = *MEMORY[0x277D85DE8];
  v33[0] = @"EventNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v32 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v34[0] = v32;
  v33[1] = @"EventCode";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v34[1] = v31;
  v33[2] = @"EventResult";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 3)}];
  v34[2] = v30;
  v33[3] = @"EventServiceProvider";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v34[3] = v29;
  v33[4] = @"EventNotOkCounter";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 5)}];
  v34[4] = v28;
  v33[5] = @"EventSerialNumber";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 6)}];
  v34[5] = v27;
  v33[6] = @"EventDestination";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 7)}];
  v34[6] = v26;
  v33[7] = @"EventLocationId";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 8)}];
  v34[7] = v25;
  v33[8] = @"EventLocationGate";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 9)}];
  v34[8] = v24;
  v33[9] = @"EventDevice";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 10)}];
  v34[9] = v23;
  v33[10] = @"EventRouteNumber";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 11)}];
  v34[10] = v22;
  v33[11] = @"EventRouteVariant";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 12)}];
  v34[11] = v21;
  v33[12] = @"EventJourneyRun";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 13)}];
  v34[12] = v20;
  v33[13] = @"EventVehicleId";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 14)}];
  v34[13] = v19;
  v33[14] = @"EventLocationType";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 16)}];
  v34[14] = v18;
  v33[15] = @"EventJourneyInterchanges";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 19)}];
  v34[15] = v5;
  v33[16] = @"EventTotalJourneys";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 21)}];
  v34[16] = v6;
  v33[17] = @"EventJourneyDistance";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 22)}];
  v34[17] = v7;
  v33[18] = @"EventPriceAmount";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 23)}];
  v34[18] = v8;
  v33[19] = @"EventPriceUnit";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 24)}];
  v34[19] = v9;
  v33[20] = @"EventContractPointer";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 25)}];
  v34[20] = v10;
  v33[21] = @"EventAuthenticator";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 26)}];
  v34[21] = v11;
  v33[22] = @"EventDataBitmap";
  v12 = MEMORY[0x277CCABB0];
  v13 = [mapCopy isBitSet:27];

  v14 = [v12 numberWithBool:v13];
  v34[22] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:23];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decodeEventEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [entryCopy readBinaryValueAtBit:0 numberOfBits:14];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  [dictionary setObject:v7 forKeyedSubscript:@"EventDateStamp"];

  v8 = [entryCopy readBinaryValueAtBit:14 numberOfBits:11];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [dictionary setObject:v9 forKeyedSubscript:@"EventTimeStamp"];

  v10 = [entryCopy readBinaryValueAtBit:25 numberOfBits:28];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  v12 = [self decodeEventBitMap:v11];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  [dictionary setObject:v13 forKeyedSubscript:@"EventBitmap"];

  v14 = [v12 objectForKeyedSubscript:@"EventCode"];
  LODWORD(v11) = [v14 BOOLValue];

  if (v11)
  {
    v15 = [entryCopy readBinaryValueAtBit:53 numberOfBits:8];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    [dictionary setObject:v16 forKeyedSubscript:@"EventCode"];

    v17 = 61;
  }

  else
  {
    v17 = 53;
  }

  v18 = [v12 objectForKeyedSubscript:@"EventResult"];
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
    v20 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
    [dictionary setObject:v21 forKeyedSubscript:@"EventResult"];
  }

  v22 = [v12 objectForKeyedSubscript:@"EventServiceProvider"];
  bOOLValue2 = [v22 BOOLValue];

  if (bOOLValue2)
  {
    v24 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
    [dictionary setObject:v25 forKeyedSubscript:@"EventServiceProvider"];
  }

  v26 = [v12 objectForKeyedSubscript:@"EventNotOkCounter"];
  bOOLValue3 = [v26 BOOLValue];

  if (bOOLValue3)
  {
    v28 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
    [dictionary setObject:v29 forKeyedSubscript:@"EventNotOkCounter"];
  }

  v30 = [v12 objectForKeyedSubscript:@"EventSerialNumber"];
  bOOLValue4 = [v30 BOOLValue];

  if (bOOLValue4)
  {
    v32 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:24];
    v17 += 24;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v32];
    [dictionary setObject:v33 forKeyedSubscript:@"EventSerialNumber"];
  }

  v34 = [v12 objectForKeyedSubscript:@"EventLocationId"];
  bOOLValue5 = [v34 BOOLValue];

  if (bOOLValue5)
  {
    v36 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
    [dictionary setObject:v37 forKeyedSubscript:@"EventLocationId"];
  }

  v38 = [v12 objectForKeyedSubscript:@"EventLocationGate"];
  bOOLValue6 = [v38 BOOLValue];

  if (bOOLValue6)
  {
    v40 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:8];
    v17 += 8;
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v40];
    [dictionary setObject:v41 forKeyedSubscript:@"EventLocationGate"];
  }

  v42 = [v12 objectForKeyedSubscript:@"EventDevice"];
  bOOLValue7 = [v42 BOOLValue];

  if (bOOLValue7)
  {
    v44 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v44];
    [dictionary setObject:v45 forKeyedSubscript:@"EventDevice"];
  }

  v46 = [v12 objectForKeyedSubscript:@"EventRouteNumber"];
  bOOLValue8 = [v46 BOOLValue];

  if (bOOLValue8)
  {
    v48 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
    [dictionary setObject:v49 forKeyedSubscript:@"EventRouteNumber"];
  }

  v50 = [v12 objectForKeyedSubscript:@"EventJourneyRun"];
  bOOLValue9 = [v50 BOOLValue];

  if (bOOLValue9)
  {
    v52 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
    [dictionary setObject:v53 forKeyedSubscript:@"EventJourneyRun"];
  }

  v54 = [v12 objectForKeyedSubscript:@"EventVehicleId"];
  bOOLValue10 = [v54 BOOLValue];

  if (bOOLValue10)
  {
    v56 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:16];
    v17 += 16;
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
    [dictionary setObject:v57 forKeyedSubscript:@"EventVehicleId"];
  }

  v58 = [v12 objectForKeyedSubscript:@"EventContractPointer"];
  bOOLValue11 = [v58 BOOLValue];

  if (bOOLValue11)
  {
    v60 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:5];
    v17 += 5;
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60];
    [dictionary setObject:v61 forKeyedSubscript:@"EventContractPointer"];
  }

  v62 = [v12 objectForKeyedSubscript:@"EventDataBitmap"];
  bOOLValue12 = [v62 BOOLValue];

  if (bOOLValue12)
  {
    v64 = [entryCopy readBinaryValueAtBit:v17 numberOfBits:5];
    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v64];
    [dictionary setObject:v65 forKeyedSubscript:@"EventDataBitmap"];

    v66 = [entryCopy readBinaryValueAtBit:v17 + 5 numberOfBits:14];
    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
    [dictionary setObject:v67 forKeyedSubscript:@"EventDataDateFirstStamp"];

    v68 = [entryCopy readBinaryValueAtBit:v17 + 19 numberOfBits:11];
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v68];
    [dictionary setObject:v69 forKeyedSubscript:@"EventDataTimeFirstStamp"];
  }

  return dictionary;
}

+ (id)decodeContractFFBitMap:(id)map
{
  v28[17] = *MEMORY[0x277D85DE8];
  v27[0] = @"ContractNetworkId";
  v3 = MEMORY[0x277CCABB0];
  mapCopy = map;
  v26 = [v3 numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 0)}];
  v28[0] = v26;
  v27[1] = @"ContractProvider";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 1)}];
  v28[1] = v25;
  v27[2] = @"ContractTariff";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 2)}];
  v28[2] = v24;
  v27[3] = @"ContractSerialNumber";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 3)}];
  v28[3] = v23;
  v27[4] = @"ContractCustomerInfoBitmap";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 4)}];
  v28[4] = v22;
  v27[5] = @"ContractPassengerInfoBitmap";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 5)}];
  v28[5] = v21;
  v27[6] = @"ContractPayMethod";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 8)}];
  v28[6] = v20;
  v27[7] = @"ContractServices";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 9)}];
  v28[7] = v19;
  v27[8] = @"ContractPriceAmount";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 10)}];
  v28[8] = v18;
  v27[9] = @"ContractPriceUnit";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 11)}];
  v28[9] = v5;
  v27[10] = @"ContractRestrictionBitmap";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 12)}];
  v28[10] = v6;
  v27[11] = @"ContractValidityInfoBitmap";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 13)}];
  v28[11] = v7;
  v27[12] = @"ContractJourneyDataBitmap";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 14)}];
  v28[12] = v8;
  v27[13] = @"ContractSaleDataBitmap";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 15)}];
  v28[13] = v9;
  v27[14] = @"ContractStatus";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 16)}];
  v28[14] = v10;
  v27[15] = @"ContractLoyaltyPoints";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mapCopy, "isBitSet:", 17)}];
  v28[15] = v11;
  v27[16] = @"ContractAuthenticator";
  v12 = MEMORY[0x277CCABB0];
  v13 = [mapCopy isBitSet:18];

  v14 = [v12 numberWithBool:v13];
  v28[16] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:17];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decodeContractValidityBitmap:(id)bitmap
{
  v20[9] = *MEMORY[0x277D85DE8];
  v19[0] = @"ContractValidityStartDate";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v18 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v20[0] = v18;
  v19[1] = @"ContractValidityStartTime";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v20[1] = v5;
  v19[2] = @"ContractValidityEndDate";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v20[2] = v6;
  v19[3] = @"ContractValidityEndTime";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v20[3] = v7;
  v19[4] = @"ContractValidityDuration";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v20[4] = v8;
  v19[5] = @"ContractValidityLimitDate";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v20[5] = v9;
  v19[6] = @"ContractValidityZones";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 6)}];
  v20[6] = v10;
  v19[7] = @"ContractValidityJourneys";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 7)}];
  v20[7] = v11;
  v19[8] = @"ContractPeriodJourneys";
  v12 = MEMORY[0x277CCABB0];
  v13 = [bitmapCopy isBitSet:8];

  v14 = [v12 numberWithBool:v13];
  v20[8] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decodeContractJourneyDataBitmap:(id)bitmap
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = @"ContractJourneyOrigin";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v19[0] = v5;
  v18[1] = @"ContractJourneyDestination";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v19[1] = v6;
  v18[2] = @"ContractJourneyRouteNumbers";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v19[2] = v7;
  v18[3] = @"ContractJourneyRouteVariants";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v19[3] = v8;
  v18[4] = @"ContractJourneyRun";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v19[4] = v9;
  v18[5] = @"ContractJourneyVia";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v19[5] = v10;
  v18[6] = @"ContractJourneyDistance";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 6)}];
  v19[6] = v11;
  v18[7] = @"ContractJourneyInterchanges";
  v12 = MEMORY[0x277CCABB0];
  v13 = [bitmapCopy isBitSet:7];

  v14 = [v12 numberWithBool:v13];
  v19[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decodeContractSaleDataBitmap:(id)bitmap
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"ContractSaleDate";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v15[0] = v5;
  v14[1] = @"ContractSaleTime";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v15[1] = v6;
  v14[2] = @"ContractSaleAgent";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v15[2] = v7;
  v14[3] = @"ContractSaleDevice";
  v8 = MEMORY[0x277CCABB0];
  v9 = [bitmapCopy isBitSet:3];

  v10 = [v8 numberWithBool:v9];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decodeContractRestrictionBitmap:(id)bitmap
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"ContractRestrictStart";
  v3 = MEMORY[0x277CCABB0];
  bitmapCopy = bitmap;
  v5 = [v3 numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 0)}];
  v18[0] = v5;
  v17[1] = @"ContractRestrictEnd";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 1)}];
  v18[1] = v6;
  v17[2] = @"ContractRestrictDay";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 2)}];
  v18[2] = v7;
  v17[3] = @"ContractRestrictTimeCode";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 3)}];
  v18[3] = v8;
  v17[4] = @"ContractRestrictCode";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 4)}];
  v18[4] = v9;
  v17[5] = @"ContractRestrictProduct";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(bitmapCopy, "isBitSet:", 5)}];
  v18[5] = v10;
  v17[6] = @"ContractRestrictLocation";
  v11 = MEMORY[0x277CCABB0];
  v12 = [bitmapCopy isBitSet:6];

  v13 = [v11 numberWithBool:v12];
  v18[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getTransitModality:(id)modality
{
  unsignedLongValue = [modality unsignedLongValue];
  if (unsignedLongValue == 89)
  {
    return @"TransitOther";
  }

  v5 = unsignedLongValue >> 4;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      return @"TransitBus";
    }

    if (v5 == 3)
    {
      return @"TransitMetro";
    }
  }

  else
  {
    switch(v5)
    {
      case 4uLL:
        return @"TransitLightRail";
      case 5uLL:
        return @"TransitTrain";
      case 0xEuLL:
        return @"TransitOther";
    }
  }

  return @"Transit";
}

+ (id)formatTransitDetailRaw:(id)raw
{
  unsignedLongValue = [raw unsignedLongValue];
  v4 = (unsignedLongValue & 0xF) - 2;
  if (v4 < 0xA && ((0x233u >> v4) & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 4;
  }

  else
  {
    v8 = unsignedLongValue >> 4;
    if (v8 == 14)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    if (v8 == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v8 == 5)
    {
      v11 = 3;
    }

    else
    {
      v11 = v9;
    }

    if (v8 == 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v10;
    }

    if (v8 == 4)
    {
      v13 = 3;
    }

    else
    {
      v13 = v11;
    }

    if (v8 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v8 == 3;
    }

    v7 = 1;
    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v12;
    }

    if ((unsignedLongValue >> 4) <= 3uLL)
    {
      v6 = v14;
    }

    else
    {
      v6 = v13;
    }
  }

  v15 = [MEMORY[0x277CBEB28] dataWithCapacity:3];
  [v15 appendByte:v7];
  [v15 appendByte:v6];
  [v15 appendByte:v5];

  return v15;
}

+ (id)getInternalEnRouteStatus:(id)status
{
  v3 = ([status unsignedLongValue] & 0xF) - 1;
  if (v3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_278874CB8 + v3);
  }
}

+ (id)getAbsoluteDateComponents:(id)components withTime:(id)time
{
  timeCopy = time;
  if (components)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(components, "intValue") + 1}];
    if (timeCopy)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(timeCopy, "intValue")}];
    }

    else
    {
      v7 = &unk_2843C66C8;
    }

    v9 = [MEMORY[0x277CBEAB8] dateWithYear:1997 month:1 day:objc_msgSend(v6 hour:"intValue") minute:0 second:{objc_msgSend(v7, "intValue"), 0}];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v9 setCalendar:currentCalendar];
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v9 setTimeZone:v11];

    date = [v9 date];
    v8 = [currentCalendar components:3145852 fromDate:date];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getAbsoluteDateComponentsWithDefaultMinutes:(id)minutes withTime:(id)time withDefaultMinutes:(id)defaultMinutes
{
  if (!time)
  {
    time = defaultMinutes;
  }

  defaultMinutes = [AtlasDecoder getAbsoluteDateComponents:minutes withTime:time, defaultMinutes];

  return defaultMinutes;
}

+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list
{
  identifierCopy = identifier;
  codeCopy = code;
  listCopy = list;
  v10 = [identifierCopy objectForKeyedSubscript:@"ContractCounterStructure"];
  if (v10)
  {
    v11 = [identifierCopy objectForKeyedSubscript:@"ContractCounterLastLoadCount"];
  }

  else
  {
    v11 = 0;
  }

  integerValue = [v10 integerValue];
  v13 = MEMORY[0x277CCACA8];
  intValue = [codeCopy intValue];
  intValue2 = [listCopy intValue];
  if (integerValue == 3)
  {
    [v13 stringWithFormat:@"%05d_%02X_%d", intValue, intValue2, objc_msgSend(v11, "intValue")];
  }

  else
  {
    [v13 stringWithFormat:@"%05d_%02X_1", intValue, intValue2, v18];
  }
  v16 = ;

  return v16;
}

+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator
{
  differentiatorCopy = &unk_2843C66E0;
  if (differentiator)
  {
    differentiatorCopy = differentiator;
  }

  v15 = differentiatorCopy;
  differentiatorCopy2 = differentiator;
  pointerCopy = pointer;
  pCopy = p;
  codeCopy = code;
  stampCopy = stamp;
  nCopy = n;
  v21 = +[HashHelper hashHelper];
  v22 = [(HashHelper *)v21 addNumber:nCopy];

  v23 = [(HashHelper *)v22 addNumber:stampCopy];

  v24 = [(HashHelper *)v23 addNumber:codeCopy];

  v25 = [(HashHelper *)v24 addNumber:pCopy];

  v26 = [(HashHelper *)v25 addNumber:pointerCopy];

  v27 = [(HashHelper *)v26 addNumber:v15];

  getHash = [(HashHelper *)v27 getHash];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(getHash, "u32BE:", 0)}];

  return v29;
}

+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry
{
  expiryCopy = expiry;
  idCopy = id;
  v7 = +[HashHelper hashHelper];
  v8 = [(HashHelper *)v7 addString:idCopy];

  v9 = [(HashHelper *)v8 addDateComponents:expiryCopy];

  getHash = [(HashHelper *)v9 getHash];

  asHexString = [getHash asHexString];

  return asHexString;
}

+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (id)
  {
    v23[0] = @"CommutePlanIdentifier";
    v23[1] = @"CommutePlanValidityEndDate";
    v24[0] = expiry;
    v24[1] = withExpiry;
    v23[2] = @"CommutePlanUniqueIdentifier";
    v24[2] = id;
    v7 = MEMORY[0x277CBEAC0];
    idCopy = id;
    withExpiryCopy = withExpiry;
    expiryCopy = expiry;
    v11 = v24;
    v12 = v23;
    v13 = v7;
    v14 = 3;
  }

  else
  {
    v21[0] = @"CommutePlanIdentifier";
    v21[1] = @"CommutePlanValidityEndDate";
    v22[0] = expiry;
    v22[1] = withExpiry;
    v15 = MEMORY[0x277CBEAC0];
    idCopy = 0;
    withExpiryCopy2 = withExpiry;
    expiryCopy2 = expiry;
    v11 = v22;
    v12 = v21;
    v13 = v15;
    v14 = 2;
  }

  v18 = [v13 dictionaryWithObjects:v11 forKeys:v12 count:v14];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
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
  v30[2] = &unk_2843C66C8;
  v29[2] = exponentKeyCopy;
  v29[3] = identifierKeyCopy;
  v24 = [identifierCopy dataUsingEncoding:4];

  asHexString = [v24 asHexString];
  v30[3] = asHexString;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)getUnvalidatableContracts:(id)contracts
{
  v26 = *MEMORY[0x277D85DE8];
  contractsCopy = contracts;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = contractsCopy;
  v5 = [contractsCopy objectForKeyedSubscript:@"BestContractList"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = ATLLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEBUG, "contract -> %@", buf, 0xCu);
        }

        v12 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
        integerValue = [v12 integerValue];

        if ((integerValue & 0xFCu) >= 0xCuLL)
        {
          v14 = [v10 objectForKeyedSubscript:@"BestContractPriority"];
          v15 = [v10 objectForKeyedSubscript:@"BestContractPointer"];
          [dictionary setObject:v14 forKeyedSubscript:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end