@interface SpringwaterDecoder
+ (id)calculateCommutePlanUniqueId:(id)id withExpiry:(id)expiry;
+ (id)calculateTransactionSN:(id)n withTimeStamp:(id)stamp withEventCode:(id)code withSP:(id)p withContractPointer:(id)pointer withDifferentiator:(id)differentiator;
+ (id)commutePlanWithIdAndExpiry:(id)expiry withExpiry:(id)withExpiry withUniqueId:(id)id;
+ (id)formatCommutePlanIdentifier:(id)identifier withTariffCode:(id)code withZoneList:(id)list;
+ (id)formatTransitDetailRaw:(id)raw;
+ (id)getCardIdFromSelectResponse:(id)response;
+ (id)getInternalEnRouteStatus:(id)status;
+ (id)getTransitModality:(id)modality;
+ (id)getUnvalidatableContracts:(id)contracts;
+ (void)stripContract:(id)contract;
- (id)generateEndEventFromHCI;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHistory:(id)history withContracts:(id)contracts;
- (void)interpretTransactionEvent:(id)event;
@end

@implementation SpringwaterDecoder

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  errorCopy = error;
  v112[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  schemeCopy = scheme;
  dataCopy = data;
  v16 = [TransceiverWrapper withTransceiver:transceiver];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v19 = [MEMORY[0x277CBEA90] dataWithHexString:dataCopy];

  v20 = SelectByNameCmd(v19);

  v104 = 0;
  v21 = [v16 transceiveAndCheckSW:v20 error:&v104];
  v22 = v104;
  if (v22)
  {
    v23 = v22;
    if (error)
    {
      v24 = v22;
      errorCopy = 0;
      *error = v23;
    }

    goto LABEL_88;
  }

  if (v21)
  {
    v80 = v20;
    v25 = [v21 base64EncodedStringWithOptions:0];
    [v18 setObject:v25 forKeyedSubscript:@"answerSelectApplication"];

    v79 = v21;
    v78 = [SpringwaterDecoder getCardIdFromSelectResponse:v21];
    asHexString = [v78 asHexString];
    [v17 setObject:asHexString forKeyedSubscript:@"cardId"];

    v77 = +[SpringwaterDecoder SelectRemoteTicketingCmd];
    v76 = [v16 transceiveAndCheckSW:? error:?];
    v27 = [v76 base64EncodedStringWithOptions:0];
    [v18 setObject:v27 forKeyedSubscript:@"answerSelectFileRT"];

    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:11];
    v103 = 0;
    v29 = [SpringwaterDecoder readPartnerRecords:v16 sfi:7 count:1 error:&v103];
    v30 = v103;
    v81 = v29;
    if (v30)
    {
      v31 = ATLLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 7;
        _os_log_impl(&dword_22EEF5000, v31, OS_LOG_TYPE_ERROR, "Failed to read Environment File SFI %d", buf, 8u);
      }

      v29 = v81;
    }

    if (v29)
    {
      [v28 addObject:v29];
    }

    v102 = v30;
    v89 = [SpringwaterDecoder readPartnerRecords:v16 sfi:8 count:3 error:&v102];
    v32 = v102;

    if (v32)
    {
      v33 = ATLLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 8;
        _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Failed to read Transaction History SFI %d", buf, 8u);
      }
    }

    if (v89)
    {
      [v28 addObject:?];
    }

    v101 = v32;
    v88 = [SpringwaterDecoder readPartnerRecords:v16 sfi:9 count:4 error:&v101];
    v34 = v101;

    if (v34)
    {
      v35 = ATLLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 9;
        _os_log_impl(&dword_22EEF5000, v35, OS_LOG_TYPE_ERROR, "Failed to read Contracts File SFI %d", buf, 8u);
      }
    }

    if (v88)
    {
      [v28 addObject:?];
    }

    v100 = v34;
    v87 = [SpringwaterDecoder readPartnerRecords:v16 sfi:10 count:1 error:&v100];
    v36 = v100;

    if (v36)
    {
      v37 = ATLLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 10;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v87)
    {
      [v28 addObject:?];
    }

    v99 = v36;
    v86 = [SpringwaterDecoder readPartnerRecords:v16 sfi:11 count:1 error:&v99];
    v38 = v99;

    if (v38)
    {
      v39 = ATLLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 11;
        _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v86)
    {
      [v28 addObject:?];
    }

    v98 = v38;
    v85 = [SpringwaterDecoder readPartnerRecords:v16 sfi:12 count:1 error:&v98];
    v40 = v98;

    if (v40)
    {
      v41 = ATLLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 12;
        _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v85)
    {
      [v28 addObject:?];
    }

    v97 = v40;
    v84 = [SpringwaterDecoder readPartnerRecords:v16 sfi:13 count:1 error:&v97];
    v42 = v97;

    if (v42)
    {
      v43 = ATLLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 13;
        _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_ERROR, "Failed to read Counters File SFI %d", buf, 8u);
      }
    }

    if (v84)
    {
      [v28 addObject:?];
    }

    v96 = v42;
    v83 = [SpringwaterDecoder readPartnerRecords:v16 sfi:6 count:4 error:&v96];
    v44 = v96;

    if (v44)
    {
      v45 = ATLLogObject();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 6;
        _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_ERROR, "Failed to read Contract Extentions File SFI %d", buf, 8u);
      }
    }

    if (v83)
    {
      [v28 addObject:?];
    }

    v95 = v44;
    v82 = [SpringwaterDecoder readPartnerRecords:v16 sfi:29 count:3 error:&v95];
    v46 = v95;

    if (v46)
    {
      v47 = ATLLogObject();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 29;
        _os_log_impl(&dword_22EEF5000, v47, OS_LOG_TYPE_ERROR, "Failed to read Special Events File SFI %d", buf, 8u);
      }
    }

    if (v82)
    {
      [v28 addObject:?];
    }

    v90 = v28;
    v94 = v46;
    v48 = [SpringwaterDecoder readPartnerRecords:v16 sfi:30 count:1 error:&v94];
    v49 = v94;

    if (v49)
    {
      v50 = ATLLogObject();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 30;
        _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Failed to read Best Contracts SFI %d", buf, 8u);
      }
    }

    if (v48)
    {
      [v90 addObject:v48];
    }

    v93 = v49;
    v51 = [SpringwaterDecoder readPartnerRecords:v16 sfi:25 count:1 error:&v93];
    v52 = v93;

    if (v52)
    {
      v53 = ATLLogObject();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v108 = 25;
        _os_log_impl(&dword_22EEF5000, v53, OS_LOG_TYPE_ERROR, "Failed to read All Counters SFI %d", buf, 8u);
      }
    }

    v75 = v48;
    if (v51)
    {
      [v90 addObject:v51];
    }

    [v18 setObject:v90 forKeyedSubscript:@"recordFiles"];
    v54 = v18;
    [v17 setObject:v18 forKeyedSubscript:@"cardBinaryrecord"];
    v105 = @"cardImage";
    v106 = v17;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v92 = v52;
    v56 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v55 options:1 error:&v92];
    v23 = v92;

    if (keyCopy)
    {
      v74 = v17;
      v91 = v23;
      v57 = keyCopy;
      errorCopy = [_TtC24AppletTranslationLibrary17OpaqueDataService serializedHPKEWithData:v56 publicKey:keyCopy scheme:schemeCopy error:&v91];
      v58 = v91;

      if (error)
      {
        v18 = v54;
        if (v58)
        {
          v59 = v58;
          *error = v58;
        }

        v23 = v58;
        keyCopy = v57;
        v17 = v74;
        goto LABEL_84;
      }

      v23 = v58;
      keyCopy = v57;
      v17 = v74;
    }

    else
    {
      errorCopy = v56;
    }

    v18 = v54;
LABEL_84:

    v21 = v79;
    v20 = v80;
    goto LABEL_88;
  }

  v60 = ATLLogObject();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v60, OS_LOG_TYPE_ERROR, "No response to SELECT received", buf, 2u);
  }

  v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No response to SELECT received"];
  v62 = v61;
  if (error)
  {
    v63 = *error;
    v64 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v66 = *MEMORY[0x277CCA7E8];
      v109[0] = *MEMORY[0x277CCA450];
      v109[1] = v66;
      v110[0] = v61;
      v110[1] = v63;
      v67 = MEMORY[0x277CBEAC0];
      v68 = v110;
      v69 = v109;
      v70 = 2;
    }

    else
    {
      v111 = *MEMORY[0x277CCA450];
      v112[0] = v61;
      v67 = MEMORY[0x277CBEAC0];
      v68 = v112;
      v69 = &v111;
      v70 = 1;
    }

    v71 = [v67 dictionaryWithObjects:v68 forKeys:v69 count:v70];
    *error = [v64 errorWithDomain:@"ATL" code:5 userInfo:v71];

    v21 = 0;
  }

  v23 = 0;
  errorCopy = 0;
LABEL_88:

  v72 = *MEMORY[0x277D85DE8];

  return errorCopy;
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
  differentiatorCopy = &unk_2843C67B8;
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

- (id)generateEndEventFromHCI
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEBUG, "Generating EndEventfromHCI ...", buf, 2u);
  }

  v3 = +[CalypsoDecoder sharedInstance];
  getHciArray = [v3 getHciArray];

  v5 = +[CalypsoDecoder sharedInstance];
  getHciArray2 = [v5 getHciArray];
  v7 = [getHciArray2 count];

  if (!v7)
  {
    v28 = ATLLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_DEFAULT, "HCI Array provided does not contain HCI events", buf, 2u);
    }

    v38 = 0;
    goto LABEL_27;
  }

  v8 = +[CalypsoDecoder sharedInstance];
  getAppletAID = [v8 getAppletAID];

  if (getAppletAID)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = getHciArray;
    v10 = getHciArray;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = ATLLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v53 = v15;
            _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEBUG, "--> %@", buf, 0xCu);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v12);
    }

    v17 = +[CalypsoDecoder sharedInstance];
    if ([v17 getErrorTransaction])
    {
      v18 = 0;
    }

    else
    {
      v18 = 64;
    }

    v19 = +[CalypsoDecoder sharedInstance];
    getErrorTransaction = [v19 getErrorTransaction];

    if (getErrorTransaction)
    {
      v21 = ATLLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = +[CalypsoDecoder sharedInstance];
        getErrorCode = [v22 getErrorCode];
        *buf = 138412290;
        v53 = getErrorCode;
        _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_DEFAULT, "*** Error occurred during transaction. SpecialEvents ErrorCode = %@", buf, 0xCu);
      }
    }

    v24 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw = [v24 getTransactionDetailRaw];

    if (!getTransactionDetailRaw)
    {
      v26 = +[CalypsoDecoder sharedInstance];
      v27 = [MEMORY[0x277CBEA90] dataWithHexString:@"010000"];
      [v26 setTransactionDetailRaw:v27];
    }

    v51[0] = @"EndEvent";
    v50[0] = @"EventType";
    v50[1] = @"appletIdentifier";
    v28 = +[CalypsoDecoder sharedInstance];
    getAppletAID2 = [v28 getAppletAID];
    v51[1] = getAppletAID2;
    v51[2] = &unk_2843C67D0;
    v50[2] = @"Version";
    v50[3] = @"Interface";
    v51[3] = @"Contactless";
    v50[4] = @"didError";
    v30 = MEMORY[0x277CCABB0];
    v31 = +[CalypsoDecoder sharedInstance];
    v32 = [v30 numberWithBool:{objc_msgSend(v31, "getErrorTransaction")}];
    v51[4] = v32;
    v50[5] = @"result";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
    v51[5] = v33;
    v51[6] = &unk_2843C67E8;
    v50[6] = @"type";
    v50[7] = @"parsedInfo";
    v48 = @"Transaction";
    v46 = @"TypeDetailRaw";
    v34 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw2 = [v34 getTransactionDetailRaw];
    v47 = getTransactionDetailRaw2;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v51[7] = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:8];

    getHciArray = v41;
LABEL_27:

    goto LABEL_29;
  }

  v38 = 0;
LABEL_29:

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)interpretTransactionEvent:(id)event
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy sfi] != 8 && objc_msgSend(eventCopy, "sfi") != 29)
  {
    goto LABEL_25;
  }

  content = [eventCopy content];
  v6 = 8 * [content length];

  if (v6 >= 0x35)
  {
    content2 = [eventCopy content];
    v8 = [IntercodeDecoder decodeEventEntry:content2];

    if (!v8)
    {
LABEL_21:

      goto LABEL_22;
    }

    v9 = [v8 objectForKeyedSubscript:@"EventCode"];
    if (!v9)
    {
LABEL_13:
      v19 = [v8 objectForKeyedSubscript:@"EventResult"];

      if (v19)
      {
        v20 = +[CalypsoDecoder sharedInstance];
        getErrorCode = [v20 getErrorCode];
        longLongValue = [getErrorCode longLongValue];

        if ((longLongValue - 32) >= 2 && (longLongValue - 131) >= 2)
        {
          v23 = +[CalypsoDecoder sharedInstance];
          [v23 setErrorTransaction:1];
        }

        v24 = ATLLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = +[CalypsoDecoder sharedInstance];
          getErrorCode2 = [v25 getErrorCode];
          v35 = 138412290;
          selfCopy = getErrorCode2;
          _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "*** SpecialEvent written with ErrorCode = %@", &v35, 0xCu);
        }
      }

      goto LABEL_21;
    }

    v10 = [SpringwaterDecoder formatTransitDetailRaw:v9];
    if (v10)
    {
      v11 = +[CalypsoDecoder sharedInstance];
      getTransactionDetailRaw = [v11 getTransactionDetailRaw];
      if (!getTransactionDetailRaw)
      {
LABEL_11:

        goto LABEL_12;
      }

      v13 = getTransactionDetailRaw;
      v14 = +[CalypsoDecoder sharedInstance];
      getTransactionDetailRaw2 = [v14 getTransactionDetailRaw];

      if (v10 != getTransactionDetailRaw2)
      {
        v11 = ATLLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v16 = +[CalypsoDecoder sharedInstance];
          getTransactionDetailRaw3 = [v16 getTransactionDetailRaw];
          v35 = 138412546;
          selfCopy = getTransactionDetailRaw3;
          v37 = 2112;
          v38 = v10;
          _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "Inconsistent transaction details received during a single transaction %@ -> %@", &v35, 0x16u);
        }

        goto LABEL_11;
      }
    }

LABEL_12:
    v18 = +[CalypsoDecoder sharedInstance];
    [v18 setTransactionDetailRaw:v10];

    goto LABEL_13;
  }

LABEL_22:
  v27 = ATLLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = +[CalypsoDecoder sharedInstance];
    getTransactionDetailRaw4 = [v28 getTransactionDetailRaw];
    v30 = +[CalypsoDecoder sharedInstance];
    getErrorTransaction = [v30 getErrorTransaction];
    v32 = +[CalypsoDecoder sharedInstance];
    getErrorCode3 = [v32 getErrorCode];
    v35 = 138413058;
    selfCopy = self;
    v37 = 2112;
    v38 = getTransactionDetailRaw4;
    v39 = 1024;
    v40 = getErrorTransaction;
    v41 = 2112;
    v42 = getErrorCode3;
    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEBUG, "*** (%@) transactionDetailRaw = %@, errorTransaction = %d, errorCode = %@", &v35, 0x26u);
  }

LABEL_25:
  v34 = *MEMORY[0x277D85DE8];
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v106 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v11 = [MEMORY[0x277CBEA90] dataWithHexString:applet];
  v12 = SelectByNameCmd(v11);

  v99 = 0;
  v13 = [historyCopy transceiveAndCheckSW:v12 error:&v99];
  v14 = v99;
  v15 = v14;
  if (v13)
  {
    errorCopy = error;
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    v98 = v15;
    v18 = [(SpringwaterDecoder *)self readAndDecodeContracts:historyCopy sfi:9 count:4 error:&v98];
    v19 = v98;

    if (v19)
    {
      if (errorCopy)
      {
        v20 = v19;
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
      [v16 setObject:v18 forKeyedSubscript:@"ContractList"];
      v97 = 0;
      v23 = [SpringwaterDecoder readAndDecodeHistory:historyCopy sfi:8 count:10 error:&v97];
      v24 = v97;
      if (v24)
      {
        v19 = v24;
        v25 = v23;
        if (errorCopy)
        {
          v26 = v24;
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
        v27 = @"TransactionHistory";
        [v16 setObject:v23 forKeyedSubscript:@"TransactionHistory"];
        v80 = [(SpringwaterDecoder *)self parseHistory:v23 withContracts:v18];
        v83 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
        v96 = 0;
        v28 = [(SpringwaterDecoder *)self readAndDecodeContractList:historyCopy sfi:30 error:&v96];
        v29 = v96;
        v78 = v28;
        v79 = v23;
        if (v29)
        {
          v19 = v29;
          if (errorCopy)
          {
            v30 = v29;
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
          v73 = v17;
          v74 = v16;
          v75 = v13;
          v76 = v12;
          v77 = historyCopy;
          [v16 setObject:v28 forKeyedSubscript:@"BestContractList"];
          v31 = [SpringwaterDecoder getUnvalidatableContracts:v28];
          v32 = ATLLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v105 = v31;
            _os_log_impl(&dword_22EEF5000, v32, OS_LOG_TYPE_DEBUG, "unValidatableContracts: %@", buf, 0xCu);
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          obj = [v18 copy];
          v82 = v31;
          v86 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
          if (v86)
          {
            v33 = 0;
            v85 = *v93;
            do
            {
              v34 = 0;
              do
              {
                if (*v93 != v85)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v92 + 1) + 8 * v34);
                ++v33;
                v36 = ATLLogObject();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  LODWORD(v105) = v33;
                  _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_DEBUG, "contractPointerId %d", buf, 8u);
                }

                v37 = ATLLogObject();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  v38 = [v35 objectForKeyedSubscript:@"ContractBitmap"];
                  *buf = 138412290;
                  v105 = v38;
                  _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEBUG, "ContractBitmap %@", buf, 0xCu);
                }

                v39 = ATLLogObject();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v40 = [v35 objectForKeyedSubscript:@"ContractStatus"];
                  *buf = 138412290;
                  v105 = v40;
                  _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_DEBUG, "ContractStatus %@", buf, 0xCu);
                }

                v41 = ATLLogObject();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v42 = [v35 objectForKeyedSubscript:@"ContractTariff"];
                  *buf = 138412290;
                  v105 = v42;
                  _os_log_impl(&dword_22EEF5000, v41, OS_LOG_TYPE_DEBUG, "ContractTariff %@", buf, 0xCu);
                }

                v43 = ATLLogObject();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  v44 = [v35 objectForKeyedSubscript:@"ContractCounters"];
                  *buf = 138412290;
                  v105 = v44;
                  _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_DEBUG, "ContractCounters %@", buf, 0xCu);
                }

                v45 = ATLLogObject();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  v46 = [v35 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  *buf = 138412290;
                  v105 = v46;
                  _os_log_impl(&dword_22EEF5000, v45, OS_LOG_TYPE_DEBUG, "ContractValidityJourneysData %@", buf, 0xCu);
                }

                v47 = [v35 objectForKeyedSubscript:@"ContractStatus"];
                integerValue = [v47 integerValue];

                if (integerValue == 1 && ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v33], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", v49), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, !v50))
                {
                  v51 = [v35 objectForKeyedSubscript:@"ContractValidityJourneysData"];
                  v52 = [v51 objectForKeyedSubscript:@"ContractCounterStructure"];

                  if ([v52 integerValue] == 12)
                  {
                    v53 = [v35 objectForKeyedSubscript:@"ContractCounters"];
                    [v53 objectForKeyedSubscript:@"CounterContractCount"];
                    v55 = v54 = v27;

                    [v35 objectForKeyedSubscript:@"CommutePlanIdentifier"];
                    v57 = v56 = v18;
                    v58 = [CalypsoDecoder amountDictionaryWithAmount:v55 withIdentifier:v57 usingAmountKey:@"Balance" usingCurrencyKey:@"BalanceCurrency" usingExponentKey:@"BalanceCurrencyExponent" usingIdentifierKey:@"BalanceIdentifier"];

                    v18 = v56;
                    [v83 addObject:v58];
                    [v56 removeObject:v35];

                    v27 = v54;
                    v31 = v82;
                  }
                }

                else
                {
                  [v18 removeObject:v35];
                }

                ++v34;
              }

              while (v86 != v34);
              v59 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
              v86 = v59;
            }

            while (v59);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v60 = v18;
          v61 = [v60 countByEnumeratingWithState:&v88 objects:v102 count:16];
          historyCopy = v77;
          v13 = v75;
          v17 = v73;
          if (v61)
          {
            v62 = v61;
            v63 = *v89;
            do
            {
              for (i = 0; i != v62; ++i)
              {
                if (*v89 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                [SpringwaterDecoder stripContract:*(*(&v88 + 1) + 8 * i)];
              }

              v62 = [v60 countByEnumeratingWithState:&v88 objects:v102 count:16];
            }

            while (v62);
          }

          [v73 setObject:v60 forKeyedSubscript:@"CommutePlans"];
          [v73 setObject:v83 forKeyedSubscript:@"Balances"];
          v87 = 0;
          v65 = [SpringwaterDecoder readAndDecodeEnvironment:v77 sfi:7 error:&v87];
          v66 = v87;
          v19 = v66;
          if (v66)
          {
            v12 = v76;
            if (errorCopy)
            {
              v67 = v66;
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
            v68 = [v65 objectForKeyedSubscript:@"EnvApplicationEndDate"];

            if (v68)
            {
              v69 = [v65 objectForKeyedSubscript:@"EnvApplicationEndDate"];
              v70 = [IntercodeDecoder getAbsoluteDateComponents:v69 withTime:0];
              [v73 setObject:v70 forKeyedSubscript:@"CardExpirationDate"];
            }

            v100[0] = @"State";
            v100[1] = v27;
            v101[0] = v73;
            v101[1] = v80;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
            v12 = v76;
          }

          v16 = v74;
        }

        v25 = v79;
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

  v71 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getAppletStateAndHistory:(id)history withError:(id *)error
{
  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Context version of getAppletStateAndHistory is not yet implemented for Springwater", v6, 2u);
  }

  return 0;
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

+ (void)stripContract:(id)contract
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

- (id)parseHistory:(id)history withContracts:(id)contracts
{
  v73[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  contractsCopy = contracts;
  v70 = historyCopy;
  v6 = [historyCopy count];
  v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v71 = v6;
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
      v9 = [v70 objectAtIndexedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"EventDateStamp"];
      v11 = [v9 objectForKeyedSubscript:@"EventTimeStamp"];
      v12 = [v9 objectForKeyedSubscript:@"EventCode"];
      v13 = [v9 objectForKeyedSubscript:@"EventServiceProvider"];
      v14 = [v9 objectForKeyedSubscript:@"EventContractPointer"];
      [v9 objectForKeyedSubscript:@"EventSerialNumber"];
      v16 = v15 = v7;
      v17 = [SpringwaterDecoder calculateTransactionSN:v10 withTimeStamp:v11 withEventCode:v12 withSP:v13 withContractPointer:v14 withDifferentiator:v16];
      [v8 setObject:v17 forKeyedSubscript:@"SerialNumber"];

      v18 = [v9 objectForKeyedSubscript:@"EventCode"];
      v19 = [SpringwaterDecoder getInternalEnRouteStatus:v18];
      [v8 setObject:v19 forKeyedSubscript:@"InternalEnRouteStatus"];

      v20 = [v9 objectForKeyedSubscript:@"EventCode"];
      v21 = [SpringwaterDecoder getTransitModality:v20];
      [v8 setObject:v21 forKeyedSubscript:@"TypeDetail"];

      v22 = [v9 objectForKeyedSubscript:@"EventCode"];
      v23 = [SpringwaterDecoder formatTransitDetailRaw:v22];
      [v8 setObject:v23 forKeyedSubscript:@"TypeDetailRaw"];

      v24 = [v9 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v7 = v15 + 1;

      v25 = 1;
      if (v24 == @"CVPEnter" && v7 < v71)
      {
        v26 = [v70 objectAtIndexedSubscript:v7];
        v27 = [v26 objectForKeyedSubscript:@"EventCode"];
        unsignedLongValue = [v27 unsignedLongValue];

        v29 = unsignedLongValue >> 4;
        v25 = 1;
        if (v29 != 1 && v29 != 4)
        {
          v30 = [MEMORY[0x277CBEA90] dataWithBytes:&CalypsoCardReadBytes length:3];
          [v8 setObject:v30 forKeyedSubscript:@"TypeDetailRaw"];

          v25 = 0;
        }
      }

      v31 = [v8 objectForKeyedSubscript:@"TypeDetailRaw"];
      v32 = [v31 isEqualToBytes:&CalypsoCardReadBytes length:3];

      if (v32)
      {
        [v8 setObject:@"CardRead" forKeyedSubscript:@"TypeDetail"];
        v25 = 0;
      }

      [v8 setObject:&unk_2843C6830 forKeyedSubscript:@"CityCode"];
      v33 = [v9 objectForKeyedSubscript:@"EventLocationId"];

      if (!v33)
      {
        goto LABEL_22;
      }

      v34 = [v9 objectForKeyedSubscript:@"EventLocationId"];
      integerValue = [v34 integerValue];

      v36 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      if (v36 == @"Enter")
      {
        v38 = 1;
      }

      else
      {
        v37 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
        v38 = v37 == @"CVPEnter";
      }

      if (v38 && integerValue)
      {
        v39 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
        [v8 setObject:v39 forKeyedSubscript:@"StartStation"];
      }

      v40 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];
      v41 = v40;
      if (v40 == @"Exit")
      {

        if (!integerValue)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v42 = [v8 objectForKeyedSubscript:@"InternalEnRouteStatus"];

        if (v42 != @"CVPExit" || !integerValue)
        {
          goto LABEL_22;
        }
      }

      v43 = [MEMORY[0x277CBEA90] dataWithIntBE:integerValue];
      [v8 setObject:v43 forKeyedSubscript:@"EndStation"];

LABEL_22:
      v44 = [v9 objectForKeyedSubscript:@"EventDateStamp"];
      v45 = [v9 objectForKeyedSubscript:@"EventTimeStamp"];
      v46 = [IntercodeDecoder getAbsoluteDateComponents:v44 withTime:v45];
      [v8 setObject:v46 forKeyedSubscript:@"TransactionTime"];

      v47 = [v9 objectForKeyedSubscript:@"EventDataDateFirstStamp"];

      if (v47)
      {
        v48 = [v9 objectForKeyedSubscript:@"EventDataDateFirstStamp"];
        v49 = [v9 objectForKeyedSubscript:@"EventDataTimeFirstStamp"];
        v50 = [IntercodeDecoder getAbsoluteDateComponents:v48 withTime:v49];
        [v8 setObject:v50 forKeyedSubscript:@"FirstStampTime"];
      }

      v51 = [v9 objectForKeyedSubscript:@"EventContractPointer"];
      v52 = [v51 unsignedIntValue] - 1;

      v53 = [contractsCopy objectAtIndex:v52];
      v54 = [v53 objectForKeyedSubscript:@"ContractValidityJourneysData"];
      v55 = [v54 objectForKeyedSubscript:@"ContractCounterStructure"];
      unsignedIntValue = [v55 unsignedIntValue];

      if (unsignedIntValue == 12)
      {
        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v25];
        v58 = [v53 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v59 = [CalypsoDecoder amountDictionaryWithAmount:v57 withIdentifier:v58 usingAmountKey:@"Amount" usingCurrencyKey:@"AmountCurrency" usingExponentKey:@"AmountCurrencyExponent" usingIdentifierKey:@"AmountIdentifier"];

        v73[0] = v59;
        v60 = v73;
        v61 = @"Amounts";
      }

      else
      {
        v62 = [v53 objectForKeyedSubscript:@"CommutePlanIdentifier"];
        v63 = [v53 objectForKeyedSubscript:@"CommutePlanValidityEndDate"];
        v64 = [v53 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
        v59 = [SpringwaterDecoder commutePlanWithIdAndExpiry:v62 withExpiry:v63 withUniqueId:v64];

        v7 = v15 + 1;
        v72 = v59;
        v60 = &v72;
        v61 = @"CommutePlans";
      }

      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
      [v8 setObject:v65 forKeyedSubscript:v61];

      [v68 addObject:v8];
    }

    while (v71 != v7);
  }

  v66 = *MEMORY[0x277D85DE8];

  return v68;
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
    return *(&off_278874E00 + v3);
  }
}

+ (id)getCardIdFromSelectResponse:(id)response
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

@end