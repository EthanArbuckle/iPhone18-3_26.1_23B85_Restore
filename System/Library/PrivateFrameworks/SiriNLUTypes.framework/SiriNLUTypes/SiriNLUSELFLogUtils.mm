@interface SiriNLUSELFLogUtils
+ (BOOL)isLegacyNlContextPresent:(id)present;
+ (BOOL)isNlContextPresent:(id)present;
+ (id)convertAccepted:(id)accepted;
+ (id)convertAcknowledged:(id)acknowledged;
+ (id)convertCancelled:(id)cancelled;
+ (id)convertCorrectionOutcome:(id)outcome;
+ (id)convertDelegated:(id)delegated;
+ (id)convertGaveOptions:(id)options;
+ (id)convertInformed:(id)informed;
+ (id)convertInternalSpanData:(id)data;
+ (id)convertLegacyNLContext:(id)context;
+ (id)convertLvcResult:(id)result;
+ (id)convertMatchInfo:(id)info;
+ (id)convertMatchingSpan:(id)span;
+ (id)convertMatchingSpanTier1:(id)tier1;
+ (id)convertMentionDetectorSpanData:(id)data;
+ (id)convertMentionResolverSpanData:(id)data;
+ (id)convertNLContext:(id)context;
+ (id)convertNonTier1UsoGraph:(id)graph;
+ (id)convertNonTier1UsoGraph:(id)graph identifiers:(id)identifiers entitySpans:(id)spans;
+ (id)convertOffered:(id)offered;
+ (id)convertPLUMSpanData:(id)data;
+ (id)convertParser:(id)parser;
+ (id)convertPrompted:(id)prompted;
+ (id)convertReformedTurnInputBundle:(id)bundle;
+ (id)convertRejected:(id)rejected;
+ (id)convertRepetitionResult:(id)result;
+ (id)convertReportedFailure:(id)failure;
+ (id)convertReportedSuccess:(id)success;
+ (id)convertSiriVocabularySpanData:(id)data;
+ (id)convertSystemDialogAct:(id)act;
+ (id)convertTask:(id)task;
+ (id)convertToken:(id)token;
+ (id)convertTokenChain:(id)chain;
+ (id)convertTurnContext:(id)context;
+ (id)convertTurnInput:(id)input;
+ (id)convertUUID:(id)d;
+ (id)convertUserDialogAct:(id)act;
+ (id)convertUserParse:(id)parse;
+ (id)convertUserStatedTask:(id)task;
+ (id)convertUsoEdge:(id)edge;
+ (id)convertUsoEntityIdentifier:(id)identifier;
+ (id)convertUsoEntityIdentifier:(id)identifier index:(int64_t)index;
+ (id)convertUsoEntityIdentifierTier1:(id)tier1 index:(int64_t)index;
+ (id)convertUsoEntitySpan:(id)span;
+ (id)convertUsoEntitySpan:(id)span index:(int64_t)index;
+ (id)convertUsoEntitySpanTier1:(id)tier1 index:(int64_t)index;
+ (id)convertUsoGraph:(id)graph;
+ (id)convertUsoNode:(id)node;
+ (id)convertUsoNodeDataTier1:(id)tier1 index:(int64_t)index;
+ (id)convertUtteranceAlignment:(id)alignment;
+ (id)convertUtteranceSpan:(id)span;
+ (id)convertVersion:(id)version;
+ (id)convertWantedToPause:(id)pause;
+ (id)convertWantedToProceed:(id)proceed;
+ (id)convertWantedToRepeat:(id)repeat;
+ (id)convertWantedToUndo:(id)undo;
+ (id)createAllZeroUUID;
+ (id)createCDMAllServicesSetupEndedLog:(id)log;
+ (id)createCDMAllServicesSetupFailedLog:(id)log;
+ (id)createCDMAllServicesSetupStartedLog:(id)log;
+ (id)createCDMAllServicesWarmupEndedLog:(id)log;
+ (id)createCDMAllServicesWarmupFailedLog:(id)log;
+ (id)createCDMAllServicesWarmupStartedLog:(id)log;
+ (id)createCDMAssetSetupEndedLog:(id)log metadata:(id)metadata;
+ (id)createCDMAssetSetupStartedLog:(id)log serviceTypes:(id)types metadata:(id)metadata;
+ (id)createCDMAssetsReportedLog:(id)log metadata:(id)metadata;
+ (id)createCDMClientSetupEndedLog:(id)log;
+ (id)createCDMClientWarmupEndedLog:(id)log;
+ (id)createCDMRequestEndedLog:(id)log metadata:(id)metadata;
+ (id)createCDMSetupMissingAssetsDetectedLog:(id)log services:(id)services metadata:(id)metadata;
+ (id)createCdmXpcEventProcessingEndedLog:(id)log metadata:(id)metadata;
+ (id)createContextUpdateEndedLog:(id)log contextUpdateResponse:(id)response metadata:(id)metadata;
+ (id)createDelegatedUserDialogActTier1Event:(id)event withLinkId:(id)id;
+ (id)createMatchingSpanEndedLog:(id)log spanMatchResponse:(id)response metadata:(id)metadata;
+ (id)createNLXClientEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithSubRequestId:(id)subRequestId andWithResultCandidateId:(id)candidateId andWithRequester:(int *)requester;
+ (id)createNLXClientEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId andWithRequester:(int *)requester;
+ (id)createNLXCurareContext:(id)context metadata:(id)metadata;
+ (id)createNLXLegacyNLContextTier1Event:(id)event withLinkId:(id)id;
+ (id)createSystemDialogActTier1Event:(id)event withLinkId:(id)id;
+ (id)createTokenizationEndedLog:(id)log tokenizationResponse:(id)response metadata:(id)metadata;
+ (id)extractRequestLinkData:(id)data;
+ (id)getAppBundleTypeEnumsMapping;
+ (id)getErrorDomainMapping;
+ (id)getObjCUsoGraphFromOntologyUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)siri :ontology::UsoGraph;
+ (id)getReferenceFromAccepted:(id)accepted;
+ (id)getReferenceFromAcknowledged:(id)acknowledged;
+ (id)getReferenceFromCancelled:(id)cancelled;
+ (id)getReferenceFromRejected:(id)rejected;
+ (id)getReferenceFromWantedToPause:(id)pause;
+ (id)getReferenceFromWantedToProceed:(id)proceed;
+ (id)getReferenceFromWantedToRepeat:(id)repeat;
+ (id)getTaskFromUserStatedTask:(id)task;
+ (int)convertCDMMatcherName:(int)name;
+ (int)convertCDMParserAlgorithmType:(int)type;
+ (int)convertCDMReformType:(int)type;
+ (int)convertCDMRepetitionType:(int)type;
+ (int)convertCDMRewriteType:(int)type;
+ (int)convertComponentInvocationSource:(int)source;
+ (int)convertLegacyContextSource:(int)source;
+ (int)convertMatchInfoAliasType:(int)type;
+ (int)convertUSOEntityIdentifierNluComponent:(int)component;
+ (int)convertUSOEntitySpanNluComponent:(int)component;
+ (int)convertUsoBackingAppBundleType:(id)type;
+ (int)getErrorDomain:(id)domain;
+ (void)populateEventsWithMetadata:(id)metadata metadata:(id)a4;
@end

@implementation SiriNLUSELFLogUtils

+ (id)createAllZeroUUID
{
  v2 = objc_alloc_init(SIRINLUEXTERNALUUID);
  [(SIRINLUEXTERNALUUID *)v2 setLowInt:0];
  [(SIRINLUEXTERNALUUID *)v2 setHighInt:0];
  v3 = [SiriNLUSELFLogUtils convertUUID:v2];

  return v3;
}

+ (id)getAppBundleTypeEnumsMapping
{
  if (+[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping]::onceToken != -1)
  {
    dispatch_once(&+[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping]::onceToken, &__block_literal_global_152);
  }

  v3 = +[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping]::appBundleTypeEnumsMapping;

  return v3;
}

void __51__SiriNLUSELFLogUtils_getAppBundleTypeEnumsMapping__block_invoke()
{
  v31[27] = *MEMORY[0x1E69E9840];
  v30[0] = *MEMORY[0x1E69D2420];
  v29 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v31[0] = v29;
  v30[1] = *MEMORY[0x1E69D2428];
  v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v31[1] = v28;
  v30[2] = *MEMORY[0x1E69D23F8];
  v27 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v31[2] = v27;
  v30[3] = *MEMORY[0x1E69D2400];
  v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v31[3] = v26;
  v30[4] = *MEMORY[0x1E69D2368];
  v25 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:24];
  v31[4] = v25;
  v30[5] = *MEMORY[0x1E69D2370];
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:20];
  v31[5] = v24;
  v30[6] = *MEMORY[0x1E69D2378];
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:22];
  v31[6] = v23;
  v30[7] = *MEMORY[0x1E69D2380];
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v31[7] = v22;
  v30[8] = *MEMORY[0x1E69D2388];
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:5];
  v31[8] = v21;
  v30[9] = *MEMORY[0x1E69D2390];
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:18];
  v31[9] = v20;
  v30[10] = @"NlxErrorDomainMDSUaaP";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:11];
  v31[10] = v19;
  v30[11] = @"NlxErrorDomainPLUM";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:12];
  v31[11] = v18;
  v30[12] = @"NlxErrorDomainCATI";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v31[12] = v17;
  v30[13] = *MEMORY[0x1E69D2398];
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v31[13] = v16;
  v30[14] = *MEMORY[0x1E69D23A0];
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:16];
  v31[14] = v15;
  v30[15] = *MEMORY[0x1E69D23A8];
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:7];
  v31[15] = v14;
  v30[16] = *MEMORY[0x1E69D23B0];
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:14];
  v31[16] = v13;
  v30[17] = *MEMORY[0x1E69D23B8];
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:17];
  v31[17] = v0;
  v30[18] = *MEMORY[0x1E69D23C0];
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:8];
  v31[18] = v1;
  v30[19] = *MEMORY[0x1E69D23C8];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:9];
  v31[19] = v2;
  v30[20] = *MEMORY[0x1E69D23D0];
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:10];
  v31[20] = v3;
  v30[21] = *MEMORY[0x1E69D23D8];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:15];
  v31[21] = v4;
  v30[22] = *MEMORY[0x1E69D23E0];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:19];
  v31[22] = v5;
  v30[23] = *MEMORY[0x1E69D23F0];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:12];
  v31[23] = v6;
  v30[24] = *MEMORY[0x1E69D2408];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:25];
  v31[24] = v7;
  v30[25] = *MEMORY[0x1E69D2410];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:21];
  v31[25] = v8;
  v30[26] = *MEMORY[0x1E69D2418];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:23];
  v31[26] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:27];
  v11 = +[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping]::appBundleTypeEnumsMapping;
  +[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping]::appBundleTypeEnumsMapping = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (int)getErrorDomain:(id)domain
{
  domainCopy = domain;
  if (domainCopy)
  {
    v4 = +[SiriNLUSELFLogUtils getErrorDomainMapping];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:domainCopy];
      v7 = v6;
      if (v6)
      {
        intValue = [v6 intValue];
      }

      else
      {
        intValue = 0;
      }
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (id)getErrorDomainMapping
{
  if (+[SiriNLUSELFLogUtils getErrorDomainMapping]::onceToken != -1)
  {
    dispatch_once(&+[SiriNLUSELFLogUtils getErrorDomainMapping]::onceToken, &__block_literal_global_2984);
  }

  v3 = +[SiriNLUSELFLogUtils getErrorDomainMapping]::errorDomainStringToEnum;

  return v3;
}

void __44__SiriNLUSELFLogUtils_getErrorDomainMapping__block_invoke()
{
  v26[22] = *MEMORY[0x1E69E9840];
  v25[0] = @"NlxErrorDomainCDM";
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v26[0] = v24;
  v25[1] = @"NlxErrorDomainCDMClient";
  v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v26[1] = v23;
  v25[2] = @"NlxErrorDomainAssetsManager";
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v26[2] = v22;
  v25[3] = @"NlxErrorDomainDAG";
  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v26[3] = v21;
  v25[4] = @"NlxErrorDomainNlv4";
  v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:5];
  v26[4] = v20;
  v25[5] = @"NlxErrorDomainSNLC";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v26[5] = v19;
  v25[6] = @"NlxErrorDomainPSC";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:7];
  v26[6] = v18;
  v25[7] = @"NlxErrorDomainEmbedding";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:8];
  v26[7] = v17;
  v25[8] = @"NlxErrorDomainCcqrAerCbR";
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:9];
  v26[8] = v16;
  v25[9] = @"NlxErrorDomainUaaP";
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:10];
  v26[9] = v15;
  v25[10] = @"NlxErrorDomainMDSUaaP";
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:11];
  v26[10] = v14;
  v25[11] = @"NlxErrorDomainPLUM";
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:12];
  v26[11] = v13;
  v25[12] = @"NlxErrorDomainCATI";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:13];
  v26[12] = v0;
  v25[13] = @"NlxErrorDomainTokenizer";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:14];
  v26[13] = v1;
  v25[14] = @"NlxErrorDomainSpanMatch";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:15];
  v26[14] = v2;
  v25[15] = @"NlxErrorDomainOverrides";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:16];
  v26[15] = v3;
  v25[16] = @"NlxErrorDomainShortcut";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:17];
  v26[16] = v4;
  v25[17] = @"NlxErrorDomainRepetitionDetection";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:18];
  v26[17] = v5;
  v25[18] = @"NlxErrorDomainMentionDetector";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:19];
  v26[18] = v6;
  v25[19] = @"NlxErrorDomainMentionResolver";
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:20];
  v26[19] = v7;
  v25[20] = @"NlxErrorDomainContextUpdate";
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:21];
  v26[20] = v8;
  v25[21] = @"NlxErrorDomainContextualSpanMatcher";
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:22];
  v26[21] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:22];
  v11 = +[SiriNLUSELFLogUtils getErrorDomainMapping]::errorDomainStringToEnum;
  +[SiriNLUSELFLogUtils getErrorDomainMapping]::errorDomainStringToEnum = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)extractRequestLinkData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(SiriNLUSELFRequestLinkData);
  if (dataCopy)
  {
    v5 = @"No ResultCandidateId";
    connectionId = [dataCopy connectionId];
    v7 = [dataCopy idA];
    v32 = connectionId;

    if (v7)
    {
      v8 = [dataCopy idA];
      v9 = [v8 componentsSeparatedByString:@":"];

      if (v9 && [v9 count])
      {
        v10 = [v9 count];
        v11 = [v9 objectAtIndex:0];
        v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
        v13 = loggerContext(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
          _os_log_debug_impl(&dword_1C8774000, v13, OS_LOG_TYPE_DEBUG, "%s SELF RequestLink: Getting NL ID info...", buf, 0xCu);
        }

        v14 = loggerContext(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
          v35 = 2112;
          v36 = v11;
          _os_log_debug_impl(&dword_1C8774000, v14, OS_LOG_TYPE_DEBUG, "%s Target ID: %@", buf, 0x16u);
        }

        if (v12)
        {
          v15 = [MEMORY[0x1E69CE1E8] derivedIdentifierForComponentName:7 fromSourceIdentifier:v12];
          v16 = [SiriNLUExternalTypesConverter convertFromUUID:v15];
          v17 = loggerContext(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            uUIDString = [v15 UUIDString];
            *buf = 136315394;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            v35 = 2112;
            v36 = uUIDString;
            _os_log_debug_impl(&dword_1C8774000, v17, OS_LOG_TYPE_DEBUG, "%s SELF RequestLink: NL ID: %@", buf, 0x16u);
          }
        }

        else
        {
          v15 = loggerContext(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            _os_log_impl(&dword_1C8774000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: SELF RequestLink extraction error - upstream UUID could not be converted into NSUUID!", buf, 0xCu);
          }

          v16 = 0;
        }

        if (v10 == 2)
        {
          v5 = [v9 objectAtIndex:1];
          v20 = loggerContext(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            v35 = 2112;
            v36 = v5;
            _os_log_debug_impl(&dword_1C8774000, v20, OS_LOG_TYPE_DEBUG, "%s SELF RequestLink: RC ID: %@", buf, 0x16u);
          }

          v10 = 2;
        }

        else
        {
          v5 = @"No ResultCandidateId";
        }
      }

      else
      {
        v11 = loggerContext(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
          _os_log_impl(&dword_1C8774000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: SELF RequestLink: Splitting the ID with a delimiter returned nil or an array of size 0!", buf, 0xCu);
        }

        v10 = 0;
        v12 = 0;
        v16 = 0;
      }

      if (![dataCopy hasTrpId] || (objc_msgSend(dataCopy, "trpId"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length") == 0, v21, v22))
      {
        v25 = loggerContext(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
          _os_log_impl(&dword_1C8774000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: SELF TRP ID: The transition relevance place Id (trpId) inside RequestID was nil!", buf, 0xCu);
        }

        v19 = 0;
      }

      else
      {
        v23 = objc_alloc(MEMORY[0x1E696AFB0]);
        trpId = [dataCopy trpId];
        v25 = [v23 initWithUUIDString:trpId];

        if (v25)
        {
          v19 = [SiriNLUExternalTypesConverter convertFromUUID:v25];
          v26 = loggerContext(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            uUIDString2 = [v25 UUIDString];
            *buf = 136315394;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            v35 = 2112;
            v36 = uUIDString2;
            v31 = uUIDString2;
            _os_log_debug_impl(&dword_1C8774000, v26, OS_LOG_TYPE_DEBUG, "%s SELF TRP ID: %@", buf, 0x16u);
          }
        }

        else
        {
          v26 = loggerContext(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            _os_log_impl(&dword_1C8774000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: SELF TRP ID extraction error - upstream UUID for TRP ID could not be converted into NSUUID!", buf, 0xCu);
          }

          v19 = 0;
        }
      }
    }

    else
    {
      v9 = loggerContext(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
        _os_log_impl(&dword_1C8774000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: SELF RequestLink: The ID inside RequestID was nil!", buf, 0xCu);
      }

      v10 = 0;
      v12 = 0;
      v19 = 0;
      v16 = 0;
    }

    v18 = v32;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v5 = @"No ResultCandidateId";
  }

  [(SiriNLUSELFRequestLinkData *)v4 setNlId:v16, v31];
  [(SiriNLUSELFRequestLinkData *)v4 setTrpId:v19];
  [(SiriNLUSELFRequestLinkData *)v4 setResultCandidateId:v5];
  [(SiriNLUSELFRequestLinkData *)v4 setTargetName:v18];
  [(SiriNLUSELFRequestLinkData *)v4 setTargetUUID:v12];
  [(SiriNLUSELFRequestLinkData *)v4 setSplitCount:v10];

  v28 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int)convertLegacyContextSource:(int)source
{
  if ((source - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16584[source - 1];
  }
}

+ (int)convertComponentInvocationSource:(int)source
{
  if ((source - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return source;
  }
}

+ (int)convertCDMParserAlgorithmType:(int)type
{
  if (type < 3)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMReformType:(int)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMRewriteType:(int)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMRepetitionType:(int)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C8C15D60[type];
  }
}

+ (int)convertCDMMatcherName:(int)name
{
  if (name < 9)
  {
    return name + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertMatchInfoAliasType:(int)type
{
  if (type < 8)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertUSOEntitySpanNluComponent:(int)component
{
  if (component > 6)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16568[component];
  }
}

+ (int)convertUSOEntityIdentifierNluComponent:(int)component
{
  if (component > 6)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16568[component];
  }
}

+ (id)convertLvcResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (resultCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0F0]);
    multilingualVariants = [resultCopy multilingualVariants];

    if (multilingualVariants)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      multilingualVariants2 = [resultCopy multilingualVariants];
      v7 = [multilingualVariants2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(multilingualVariants2);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            v11 = objc_alloc_init(MEMORY[0x1E69CF118]);
            languageVariantName = [v10 languageVariantName];
            [v11 setLanguageVariantName:languageVariantName];

            [v10 languageVariantScore];
            [v11 setLanguageVariantConfidenceScore:?];
            [v4 addMultilingualVariants:v11];
          }

          v7 = [multilingualVariants2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }
    }

    parser = [resultCopy parser];
    v14 = parser == 0;

    if (!v14)
    {
      parser2 = [resultCopy parser];
      v16 = [SiriNLUSELFLogUtils convertParser:parser2];
      [v4 setCdmParser:v16];
    }
  }

  else
  {
    v4 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertReformedTurnInputBundle:(id)bundle
{
  v20 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF130]);
    [v4 setType:{+[SiriNLUSELFLogUtils convertCDMReformType:](SiriNLUSELFLogUtils, "convertCDMReformType:", objc_msgSend(bundleCopy, "type"))}];
    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    currentTurn = [bundleCopy currentTurn];
    v7 = [SiriNLUSELFLogUtils convertTurnInput:currentTurn];

    if (v7)
    {
      mainItem = [v7 mainItem];
      [v4 setCurrentTurn:mainItem];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      tier1Events = [v7 tier1Events];
      v10 = [tier1Events countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [tier1Events countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    [(SiriInstrumentationObjectContainer *)v5 setMainItem:v4];
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertToken:(id)token
{
  v18 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1E8]);
    value = [tokenCopy value];
    [v4 setValue:value];

    [v4 setBegin:{objc_msgSend(tokenCopy, "begin")}];
    [v4 setEnd:{objc_msgSend(tokenCopy, "end")}];
    [v4 setIsSignificant:{objc_msgSend(tokenCopy, "isSignificant")}];
    [v4 setIsWhitespace:{objc_msgSend(tokenCopy, "isWhitespace")}];
    [v4 setNonWhitespaceTokenIndex:{objc_msgSend(tokenCopy, "nonWhitespaceTokenIndex")}];
    cleanValue = [tokenCopy cleanValue];
    [v4 setCleanValue:cleanValue];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    normalizedValues = [tokenCopy normalizedValues];
    v8 = [normalizedValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(normalizedValues);
          }

          [v4 addNormalizedValues:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [normalizedValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 setTokenIndex:{objc_msgSend(tokenCopy, "tokenIndex")}];
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertTokenChain:(id)chain
{
  v17 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  if (chainCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1F0]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    tokens = [chainCopy tokens];
    v6 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(tokens);
          }

          v9 = [SiriNLUSELFLogUtils convertToken:*(*(&v12 + 1) + 8 * i)];
          [v4 addTokens:v9];
        }

        v6 = [tokens countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertMentionResolverSpanData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF298]);
    [dataCopy modelScore];
    [v4 setModelScore:?];
    [dataCopy jointScore];
    [v4 setJointScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMentionDetectorSpanData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF290]);
    [dataCopy score];
    [v4 setScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertPLUMSpanData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF2C8]);
    [dataCopy score];
    [v4 setScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertSiriVocabularySpanData:(id)data
{
  if (data)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF198]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertInternalSpanData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0E8]);
    siriVocabularySpanData = [dataCopy siriVocabularySpanData];
    v6 = [SiriNLUSELFLogUtils convertSiriVocabularySpanData:siriVocabularySpanData];
    [v4 setSiriVocabularySpanData:v6];

    plumSpanData = [dataCopy plumSpanData];
    v8 = [SiriNLUSELFLogUtils convertPLUMSpanData:plumSpanData];
    [v4 setPlumSpanData:v8];

    mentionDetectorSpanData = [dataCopy mentionDetectorSpanData];
    v10 = [SiriNLUSELFLogUtils convertMentionDetectorSpanData:mentionDetectorSpanData];
    [v4 setMentionDetectorSpanData:v10];

    mentionResolverSpanData = [dataCopy mentionResolverSpanData];
    v12 = [SiriNLUSELFLogUtils convertMentionResolverSpanData:mentionResolverSpanData];
    [v4 setMentionResolverSpanData:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMatchingSpanTier1:(id)tier1
{
  tier1Copy = tier1;
  if (tier1Copy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF110]);
    input = [tier1Copy input];
    [v4 setInput:input];

    semanticValue = [tier1Copy semanticValue];
    [v4 setSemanticValue:semanticValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMatchingSpan:(id)span
{
  v39 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  if (spanCopy)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69CF0F8]);
    label = [spanCopy label];
    [v26 setLabel:label];

    [v26 setStartTokenIndex:{objc_msgSend(spanCopy, "startTokenIndex")}];
    [v26 setEndTokenIndex:{objc_msgSend(spanCopy, "endTokenIndex")}];
    internalSpanData = [spanCopy internalSpanData];
    v5 = [SiriNLUSELFLogUtils convertInternalSpanData:internalSpanData];
    [v26 setInternalSpanData:v5];

    v6 = 0;
    v7 = 0;
    while ([spanCopy matcherNamesCount] > v6)
    {
      [v26 addMatcherNames:{+[SiriNLUSELFLogUtils convertCDMMatcherName:](SiriNLUSELFLogUtils, "convertCDMMatcherName:", objc_msgSend(spanCopy, "matcherNamesAtIndex:", v6))}];
      v7 |= [spanCopy matcherNamesAtIndex:v6++] == 2;
    }

    v8 = objc_alloc_init(SiriInstrumentationObjectContainer);
    usoGraph = [spanCopy usoGraph];
    v10 = [SiriNLUSELFLogUtils convertUsoGraph:usoGraph];

    v24 = v10;
    if (v10)
    {
      mainItem = [v10 mainItem];
      [v26 setUsoGraph:mainItem];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = [v10 tier1Events];
      v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        v13 = *v34;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v33 + 1) + 8 * i);
            if (v7)
            {
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              cdmUsoGraphTier1 = [v15 cdmUsoGraphTier1];
              usoGraphTier1 = [cdmUsoGraphTier1 usoGraphTier1];
              linkedUsoGraphNodeDatas = [usoGraphTier1 linkedUsoGraphNodeDatas];

              v19 = [linkedUsoGraphNodeDatas countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v19)
              {
                v20 = *v30;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v30 != v20)
                    {
                      objc_enumerationMutation(linkedUsoGraphNodeDatas);
                    }

                    [*(*(&v29 + 1) + 8 * j) setLinkedUsoNodeData:{0, v24}];
                  }

                  v19 = [linkedUsoGraphNodeDatas countByEnumeratingWithState:&v29 objects:v37 count:16];
                }

                while (v19);
              }
            }

            [(SiriInstrumentationObjectContainer *)v8 addTier1Event:v15, v24];
          }

          v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v12);
      }
    }

    [(SiriInstrumentationObjectContainer *)v8 setMainItem:v26, v24];
  }

  else
  {
    v8 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getTaskFromUserStatedTask:(id)task
{
  taskCopy = task;
  v4 = taskCopy;
  if (taskCopy)
  {
    task = [taskCopy task];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:task];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToPause:(id)pause
{
  pauseCopy = pause;
  v4 = pauseCopy;
  if (pauseCopy)
  {
    reference = [pauseCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToProceed:(id)proceed
{
  proceedCopy = proceed;
  v4 = proceedCopy;
  if (proceedCopy)
  {
    reference = [proceedCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  v4 = acknowledgedCopy;
  if (acknowledgedCopy)
  {
    reference = [acknowledgedCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToRepeat:(id)repeat
{
  repeatCopy = repeat;
  v4 = repeatCopy;
  if (repeatCopy)
  {
    reference = [repeatCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v4 = cancelledCopy;
  if (cancelledCopy)
  {
    reference = [cancelledCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromRejected:(id)rejected
{
  rejectedCopy = rejected;
  v4 = rejectedCopy;
  if (rejectedCopy)
  {
    reference = [rejectedCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v4 = acceptedCopy;
  if (acceptedCopy)
  {
    reference = [acceptedCopy reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:reference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUserStatedTask:(id)task
{
  if (task)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CF240]);
    [v3 setExists:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)convertDelegated:(id)delegated
{
  v31 = *MEMORY[0x1E69E9840];
  delegatedCopy = delegated;
  if (delegatedCopy)
  {
    v23 = objc_alloc_init(MEMORY[0x1E69CF0D8]);
    [v23 setAsrHypothesisIndex:{objc_msgSend(delegatedCopy, "asrHypothesisIndex")}];
    externalParserId = [delegatedCopy externalParserId];
    [v23 setExternalParserId:externalParserId];

    v24 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    matchingSpans = [delegatedCopy matchingSpans];
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = [matchingSpans countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(matchingSpans);
          }

          v11 = 0;
          v12 = *(*(&v26 + 1) + 8 * i);
          while ([v12 matcherNamesCount] > v11)
          {
            if ([v12 matcherNamesAtIndex:v11] == 1)
            {
              v5 = (v5 + 1);
            }

            else
            {
              v5 = v5;
            }

            v13 = [v12 matcherNamesAtIndex:v11];
            v14 = [v12 matcherNamesAtIndex:v11];
            if (v13 == 3)
            {
              v6 = (v6 + 1);
            }

            else
            {
              v6 = v6;
            }

            if (v14 == 4)
            {
              v7 = (v7 + 1);
            }

            else
            {
              v7 = v7;
            }

            ++v11;
          }
        }

        v8 = [matchingSpans countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v15 = v23;
    [v23 setSiriVocabularySpanCount:v5];
    [v23 setMentionResolverSpanCount:v6];
    [v23 setContextMatcherSpanCount:v7];
    if ([delegatedCopy hasRewrite])
    {
      rewrite = [delegatedCopy rewrite];
      [v23 setRewriteType:{+[SiriNLUSELFLogUtils convertCDMRewriteType:](SiriNLUSELFLogUtils, "convertCDMRewriteType:", objc_msgSend(rewrite, "rewriteType"))}];

      v17 = objc_alloc(MEMORY[0x1E69CF640]);
      v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v19 = [v17 initWithNSUUID:v18];

      [v23 setLinkId:v19];
      v20 = [SiriNLUSELFLogUtils createDelegatedUserDialogActTier1Event:delegatedCopy withLinkId:v19];
      [(SiriInstrumentationObjectContainer *)v24 addTier1Event:v20];

      v15 = v23;
    }

    [(SiriInstrumentationObjectContainer *)v24 setMainItem:v15];
  }

  else
  {
    v24 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)convertWantedToUndo:(id)undo
{
  if (undo)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CF260]);
    [v3 setExists:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)convertWantedToPause:(id)pause
{
  pauseCopy = pause;
  if (pauseCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF248]);
    taskId = [pauseCopy taskId];

    if (taskId)
    {
      taskId2 = [pauseCopy taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:taskId2];
      [v4 setTaskId:v7];
    }

    else
    {
      taskId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:taskId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertWantedToProceed:(id)proceed
{
  proceedCopy = proceed;
  if (proceedCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF250]);
    taskId = [proceedCopy taskId];

    if (taskId)
    {
      taskId2 = [proceedCopy taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:taskId2];
      [v4 setTaskId:v7];
    }

    else
    {
      taskId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:taskId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  if (acknowledgedCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF218]);
    systemDialogActId = [acknowledgedCopy systemDialogActId];

    if (systemDialogActId)
    {
      systemDialogActId2 = [acknowledgedCopy systemDialogActId];
      v7 = [SiriNLUSELFLogUtils convertUUID:systemDialogActId2];
      [v4 setSystemDialogActId:v7];
    }

    else
    {
      systemDialogActId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setSystemDialogActId:systemDialogActId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertWantedToRepeat:(id)repeat
{
  repeatCopy = repeat;
  if (repeatCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF258]);
    systemDialogActId = [repeatCopy systemDialogActId];

    if (systemDialogActId)
    {
      systemDialogActId2 = [repeatCopy systemDialogActId];
      v7 = [SiriNLUSELFLogUtils convertUUID:systemDialogActId2];
      [v4 setSystemDialogActId:v7];
    }

    else
    {
      systemDialogActId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setSystemDialogActId:systemDialogActId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (cancelledCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF220]);
    taskId = [cancelledCopy taskId];

    if (taskId)
    {
      taskId2 = [cancelledCopy taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:taskId2];
      [v4 setTaskId:v7];
    }

    else
    {
      taskId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:taskId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRejected:(id)rejected
{
  rejectedCopy = rejected;
  if (rejectedCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF238]);
    offerId = [rejectedCopy offerId];

    if (offerId)
    {
      offerId2 = [rejectedCopy offerId];
      v7 = [SiriNLUSELFLogUtils convertUUID:offerId2];
      [v4 setOfferId:v7];
    }

    else
    {
      offerId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setOfferId:offerId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertAccepted:(id)accepted
{
  acceptedCopy = accepted;
  if (acceptedCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF210]);
    offerId = [acceptedCopy offerId];

    if (offerId)
    {
      offerId2 = [acceptedCopy offerId];
      v7 = [SiriNLUSELFLogUtils convertUUID:offerId2];
      [v4 setOfferId:v7];
    }

    else
    {
      offerId2 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setOfferId:offerId2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUserDialogAct:(id)act
{
  v53 = *MEMORY[0x1E69E9840];
  actCopy = act;
  if (!actCopy)
  {
    v7 = 0;
    goto LABEL_27;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF228]);
  alignment = [actCopy alignment];
  v6 = [SiriNLUSELFLogUtils convertUtteranceAlignment:alignment];
  [v4 setAlignment:v6];

  v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
  if ([actCopy hasAccepted])
  {
    accepted = [actCopy accepted];
    v9 = [SiriNLUSELFLogUtils convertAccepted:accepted];
    [v4 setAccepted:v9];

    accepted2 = [actCopy accepted];
    v11 = [SiriNLUSELFLogUtils getReferenceFromAccepted:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasRejected])
  {
    rejected = [actCopy rejected];
    v13 = [SiriNLUSELFLogUtils convertRejected:rejected];
    [v4 setRejected:v13];

    accepted2 = [actCopy rejected];
    v11 = [SiriNLUSELFLogUtils getReferenceFromRejected:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasCancelled])
  {
    cancelled = [actCopy cancelled];
    v15 = [SiriNLUSELFLogUtils convertCancelled:cancelled];
    [v4 setCancelled:v15];

    accepted2 = [actCopy cancelled];
    v11 = [SiriNLUSELFLogUtils getReferenceFromCancelled:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasWantedToRepeat])
  {
    wantedToRepeat = [actCopy wantedToRepeat];
    v17 = [SiriNLUSELFLogUtils convertWantedToRepeat:wantedToRepeat];
    [v4 setWantedToRepeat:v17];

    accepted2 = [actCopy wantedToRepeat];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToRepeat:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasAcknowledged])
  {
    acknowledged = [actCopy acknowledged];
    v19 = [SiriNLUSELFLogUtils convertAcknowledged:acknowledged];
    [v4 setAcknowledged:v19];

    accepted2 = [actCopy acknowledged];
    v11 = [SiriNLUSELFLogUtils getReferenceFromAcknowledged:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasWantedToProceed])
  {
    wantedToProceed = [actCopy wantedToProceed];
    v21 = [SiriNLUSELFLogUtils convertWantedToProceed:wantedToProceed];
    [v4 setWantedToProceed:v21];

    accepted2 = [actCopy wantedToProceed];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToProceed:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasWantedToPause])
  {
    wantedToPause = [actCopy wantedToPause];
    v23 = [SiriNLUSELFLogUtils convertWantedToPause:wantedToPause];
    [v4 setWantedToPause:v23];

    accepted2 = [actCopy wantedToPause];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToPause:accepted2];
    goto LABEL_17;
  }

  if ([actCopy hasWantedToUndo])
  {
    wantedToUndo = [actCopy wantedToUndo];
    v33 = [SiriNLUSELFLogUtils convertWantedToUndo:wantedToUndo];
    [v4 setWantedToUndo:v33];
  }

  else if ([actCopy hasDelegated])
  {
    delegated = [actCopy delegated];
    v35 = [SiriNLUSELFLogUtils convertDelegated:delegated];

    if (v35)
    {
      mainItem = [v35 mainItem];
      [v4 setDelegated:mainItem];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      tier1Events = [v35 tier1Events];
      v38 = [tier1Events countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v38)
      {
        v39 = *v48;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v48 != v39)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v47 + 1) + 8 * i)];
          }

          v38 = [tier1Events countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v38);
      }
    }
  }

  else if ([actCopy hasUserStatedTask])
  {
    userStatedTask = [actCopy userStatedTask];
    v42 = [SiriNLUSELFLogUtils convertUserStatedTask:userStatedTask];
    [v4 setUserStatedTask:v42];

    accepted2 = [actCopy userStatedTask];
    v11 = [SiriNLUSELFLogUtils getTaskFromUserStatedTask:accepted2];
LABEL_17:
    v24 = v11;

    if (v24)
    {
      mainItem2 = [v24 mainItem];
      [v4 setReference:mainItem2];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      tier1Events2 = [v24 tier1Events];
      v27 = [tier1Events2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v27)
      {
        v28 = *v44;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(tier1Events2);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v43 + 1) + 8 * j)];
          }

          v27 = [tier1Events2 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v27);
      }
    }

    goto LABEL_26;
  }

  v24 = 0;
LABEL_26:
  [(SiriInstrumentationObjectContainer *)v7 setMainItem:v4];

LABEL_27:
  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertParser:(id)parser
{
  parserCopy = parser;
  if (parserCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF128]);
    [v4 setAlgorithm:{+[SiriNLUSELFLogUtils convertCDMParserAlgorithmType:](SiriNLUSELFLogUtils, "convertCDMParserAlgorithmType:", objc_msgSend(parserCopy, "algorithm"))}];
    [v4 setParserId:{objc_msgSend(parserCopy, "parserId")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRepetitionResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF138]);
    [v4 setAsrHypothesisIndex:{objc_msgSend(resultCopy, "asrHypothesisIndex")}];
    [v4 setRepetitionType:{+[SiriNLUSELFLogUtils convertCDMRepetitionType:](SiriNLUSELFLogUtils, "convertCDMRepetitionType:", objc_msgSend(resultCopy, "repetitionType"))}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertCorrectionOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if (outcomeCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0D0]);
    [v4 setCorrectionType:{+[SiriNLUSELFLogUtils convertCDMCorrectionType:](SiriNLUSELFLogUtils, "convertCDMCorrectionType:", objc_msgSend(outcomeCopy, "type"))}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUserParse:(id)parse
{
  v37 = *MEMORY[0x1E69E9840];
  parseCopy = parse;
  if (parseCopy)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69CF230]);
    v3 = [parseCopy idA];
    v4 = [SiriNLUSELFLogUtils convertUUID:v3];
    [v26 setId:v4];

    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    userDialogActs = [parseCopy userDialogActs];
    v7 = [userDialogActs countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(userDialogActs);
          }

          parseCopy = [SiriNLUSELFLogUtils convertUserDialogAct:*(*(&v31 + 1) + 8 * i), parseCopy];
          v11 = parseCopy;
          if (parseCopy)
          {
            mainItem = [parseCopy mainItem];
            [v26 addUserDialogActs:mainItem];

            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            tier1Events = [v11 tier1Events];
            v14 = [tier1Events countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              v15 = *v28;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v28 != v15)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v27 + 1) + 8 * j)];
                }

                v14 = [tier1Events countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v14);
            }
          }
        }

        v7 = [userDialogActs countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    [parseCopy probability];
    [v26 setProbability:?];
    repetitionResult = [parseCopy repetitionResult];
    v18 = [SiriNLUSELFLogUtils convertRepetitionResult:repetitionResult];
    [v26 setRepetitionResult:v18];

    parser = [parseCopy parser];
    v20 = [SiriNLUSELFLogUtils convertParser:parser];
    [v26 setParser:v20];

    [parseCopy comparableProbability];
    [v26 setComparableProbability:?];
    correctionOutcome = [parseCopy correctionOutcome];
    v22 = [SiriNLUSELFLogUtils convertCorrectionOutcome:correctionOutcome];
    [v26 setCorrectionOutcome:v22];

    [(SiriInstrumentationObjectContainer *)v5 setMainItem:v26];
  }

  else
  {
    v5 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertReportedFailure:(id)failure
{
  v34 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  if (failureCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1D0]);
    taskId = [failureCopy taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:taskId];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    reason = [failureCopy reason];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:reason];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setReason:mainItem];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      tier1Events = [v9 tier1Events];
      v12 = [tier1Events countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v28 + 1) + 8 * i)];
          }

          v12 = [tier1Events countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }
    }

    task = [failureCopy task];
    v16 = [SiriNLUSELFLogUtils convertUsoGraph:task];

    if (v16)
    {
      mainItem2 = [v16 mainItem];
      [v4 setTask:mainItem2];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      tier1Events2 = [v16 tier1Events];
      v19 = [tier1Events2 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(tier1Events2);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v24 + 1) + 8 * j)];
          }

          v19 = [tier1Events2 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }

    [(SiriInstrumentationObjectContainer *)v7 setMainItem:v4];
  }

  else
  {
    v7 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertReportedSuccess:(id)success
{
  v22 = *MEMORY[0x1E69E9840];
  successCopy = success;
  if (successCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1D8]);
    taskId = [successCopy taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:taskId];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    task = [successCopy task];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:task];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setTask:mainItem];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      tier1Events = [v9 tier1Events];
      v12 = [tier1Events countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v17 + 1) + 8 * i)];
          }

          v12 = [tier1Events countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    [(SiriInstrumentationObjectContainer *)v7 setMainItem:v4];
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertInformed:(id)informed
{
  v33 = *MEMORY[0x1E69E9840];
  informedCopy = informed;
  if (informedCopy)
  {
    v22 = objc_alloc_init(MEMORY[0x1E69CF1B8]);
    taskId = [informedCopy taskId];
    v4 = [SiriNLUSELFLogUtils convertUUID:taskId];
    [v22 setTaskId:v4];

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    entities = [informedCopy entities];
    v7 = entities;
    v8 = [entities countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          informedCopy = [SiriNLUSELFLogUtils convertUsoGraph:*(*(&v27 + 1) + 8 * i), informedCopy];
          v12 = informedCopy;
          if (informedCopy)
          {
            mainItem = [informedCopy mainItem];
            [v22 addEntities:mainItem];

            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            tier1Events = [v12 tier1Events];
            v15 = [tier1Events countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v15)
            {
              v16 = *v24;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v24 != v16)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  [v5 addObject:*(*(&v23 + 1) + 8 * j)];
                }

                v15 = [tier1Events countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v15);
            }
          }
        }

        entities = v7;
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v18 = objc_alloc_init(SiriInstrumentationObjectContainer);
    [(SiriInstrumentationObjectContainer *)v18 setMainItem:v22];
    [(SiriInstrumentationObjectContainer *)v18 setTier1Events:v5];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)convertGaveOptions:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69CF1B0]);
    v3 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    choices = [optionsCopy choices];
    obj = choices;
    v5 = [choices countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [SiriNLUSELFLogUtils convertUserDialogAct:*(*(&v24 + 1) + 8 * i)];
          v9 = v8;
          if (v8)
          {
            mainItem = [v8 mainItem];
            [v19 addChoices:mainItem];

            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            tier1Events = [v9 tier1Events];
            v12 = [tier1Events countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              v13 = *v21;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v21 != v13)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  [(SiriInstrumentationObjectContainer *)v3 addTier1Event:*(*(&v20 + 1) + 8 * j)];
                }

                v12 = [tier1Events countByEnumeratingWithState:&v20 objects:v28 count:16];
              }

              while (v12);
            }
          }
        }

        choices = obj;
        v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v5);
    }

    [(SiriInstrumentationObjectContainer *)v3 setMainItem:v19];
  }

  else
  {
    v3 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)convertOffered:(id)offered
{
  v20 = *MEMORY[0x1E69E9840];
  offeredCopy = offered;
  if (offeredCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1C0]);
    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    offeredAct = [offeredCopy offeredAct];
    v7 = [SiriNLUSELFLogUtils convertUserDialogAct:offeredAct];

    if (v7)
    {
      mainItem = [v7 mainItem];
      [v4 setOfferedAct:mainItem];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      tier1Events = [v7 tier1Events];
      v10 = [tier1Events countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [tier1Events countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    [(SiriInstrumentationObjectContainer *)v5 setMainItem:v4];
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertPrompted:(id)prompted
{
  v22 = *MEMORY[0x1E69E9840];
  promptedCopy = prompted;
  if (promptedCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1C8]);
    taskId = [promptedCopy taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:taskId];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    target = [promptedCopy target];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:target];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setTarget:mainItem];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      tier1Events = [v9 tier1Events];
      v12 = [tier1Events countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v17 + 1) + 8 * i)];
          }

          v12 = [tier1Events countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    [(SiriInstrumentationObjectContainer *)v7 setMainItem:v4];
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertSystemDialogAct:(id)act
{
  v31 = *MEMORY[0x1E69E9840];
  actCopy = act;
  if (!actCopy)
  {
    v5 = 0;
    goto LABEL_32;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF1A0]);
  v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
  v6 = [actCopy idA];
  v7 = [SiriNLUSELFLogUtils convertUUID:v6];
  [v4 setId:v7];

  if ([actCopy hasPrompted])
  {
    prompted = [actCopy prompted];
    v9 = [SiriNLUSELFLogUtils convertPrompted:prompted];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setPrompted:mainItem];
LABEL_21:

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      tier1Events = [v9 tier1Events];
      v17 = [tier1Events countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v26 + 1) + 8 * i)];
          }

          v17 = [tier1Events countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }
    }
  }

  else if ([actCopy hasOffered])
  {
    offered = [actCopy offered];
    v9 = [SiriNLUSELFLogUtils convertOffered:offered];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setOffered:mainItem];
      goto LABEL_21;
    }
  }

  else if ([actCopy hasGaveOptions])
  {
    gaveOptions = [actCopy gaveOptions];
    v9 = [SiriNLUSELFLogUtils convertGaveOptions:gaveOptions];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setGaveOptions:mainItem];
      goto LABEL_21;
    }
  }

  else if ([actCopy hasInformed])
  {
    informed = [actCopy informed];
    v9 = [SiriNLUSELFLogUtils convertInformed:informed];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setInformed:mainItem];
      goto LABEL_21;
    }
  }

  else if ([actCopy hasReportedSuccess])
  {
    reportedSuccess = [actCopy reportedSuccess];
    v9 = [SiriNLUSELFLogUtils convertReportedSuccess:reportedSuccess];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setReportedSuccess:mainItem];
      goto LABEL_21;
    }
  }

  else if ([actCopy hasReportedFailure])
  {
    reportedFailure = [actCopy reportedFailure];
    v9 = [SiriNLUSELFLogUtils convertReportedFailure:reportedFailure];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setReportedFailure:mainItem];
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([actCopy hasRenderedText])
  {
    v20 = objc_alloc(MEMORY[0x1E69CF640]);
    v21 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v22 = [v20 initWithNSUUID:v21];

    [v4 setLinkId:v22];
    v23 = [SiriNLUSELFLogUtils createSystemDialogActTier1Event:actCopy withLinkId:v22];
    [(SiriInstrumentationObjectContainer *)v5 addTier1Event:v23];
  }

  [(SiriInstrumentationObjectContainer *)v5 setMainItem:v4];

LABEL_32:
  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertLegacyNLContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF2B8]);
    [v4 setIsDictationPrompt:{objc_msgSend(contextCopy, "dictationPrompt")}];
    [v4 setIsStrictPrompt:{objc_msgSend(contextCopy, "strictPrompt")}];
    previousDomainName = [contextCopy previousDomainName];
    [v4 setPreviousDomainName:previousDomainName];

    [v4 setIsListenAfterSpeaking:{objc_msgSend(contextCopy, "listenAfterSpeaking")}];
    [v4 setLegacyContextSource:{+[SiriNLUSELFLogUtils convertLegacyContextSource:](SiriNLUSELFLogUtils, "convertLegacyContextSource:", objc_msgSend(contextCopy, "legacyContextSource"))}];
    v6 = objc_alloc(MEMORY[0x1E69CF640]);
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v8 = [v6 initWithNSUUID:v7];

    [v4 setLinkId:v8];
    v9 = objc_alloc_init(SiriInstrumentationObjectContainer);
    [(SiriInstrumentationObjectContainer *)v9 setMainItem:v4];
    v10 = [SiriNLUSELFLogUtils createNLXLegacyNLContextTier1Event:contextCopy withLinkId:v8];
    [(SiriInstrumentationObjectContainer *)v9 addTier1Event:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertTask:(id)task
{
  v23 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  if (taskCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1E0]);
    taskId = [taskCopy taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:taskId];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    task = [taskCopy task];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:task];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setTask:mainItem];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      tier1Events = [v9 tier1Events];
      v12 = [tier1Events countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v18 + 1) + 8 * i)];
          }

          v12 = [tier1Events countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    if ([taskCopy hasScore])
    {
      score = [taskCopy score];
      [score value];
      [v4 setScore:?];
    }

    [(SiriInstrumentationObjectContainer *)v7 setMainItem:v4];
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertNLContext:(id)context
{
  v75 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    v40 = contextCopy;
    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v44 = objc_alloc_init(MEMORY[0x1E69CF120]);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [v4 activeTasks];
    v6 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v6)
    {
      v7 = *v66;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v66 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [SiriNLUSELFLogUtils convertTask:*(*(&v65 + 1) + 8 * i)];
          v10 = v9;
          if (v9)
          {
            mainItem = [v9 mainItem];
            [v44 addActiveTasks:mainItem];

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            tier1Events = [v10 tier1Events];
            v13 = [tier1Events countByEnumeratingWithState:&v61 objects:v73 count:16];
            if (v13)
            {
              v14 = *v62;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v62 != v14)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v61 + 1) + 8 * j)];
                }

                v13 = [tier1Events countByEnumeratingWithState:&v61 objects:v73 count:16];
              }

              while (v13);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v6);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    executedTasks = [v40 executedTasks];
    obja = executedTasks;
    v17 = [executedTasks countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v17)
    {
      v18 = *v58;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(obja);
          }

          v20 = [SiriNLUSELFLogUtils convertTask:*(*(&v57 + 1) + 8 * k)];
          v21 = v20;
          if (v20)
          {
            mainItem2 = [v20 mainItem];
            [v44 addExecutedTasks:mainItem2];

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            tier1Events2 = [v21 tier1Events];
            v24 = [tier1Events2 countByEnumeratingWithState:&v53 objects:v71 count:16];
            if (v24)
            {
              v25 = *v54;
              do
              {
                for (m = 0; m != v24; ++m)
                {
                  if (*v54 != v25)
                  {
                    objc_enumerationMutation(tier1Events2);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v53 + 1) + 8 * m)];
                }

                v24 = [tier1Events2 countByEnumeratingWithState:&v53 objects:v71 count:16];
              }

              while (v24);
            }
          }
        }

        executedTasks = obja;
        v17 = [obja countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v17);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    systemDialogActs = [v40 systemDialogActs];
    objb = systemDialogActs;
    v28 = [systemDialogActs countByEnumeratingWithState:&v49 objects:v70 count:16];
    if (v28)
    {
      v29 = *v50;
      do
      {
        for (n = 0; n != v28; ++n)
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(objb);
          }

          v31 = [SiriNLUSELFLogUtils convertSystemDialogAct:*(*(&v49 + 1) + 8 * n)];
          v32 = v31;
          if (v31)
          {
            mainItem3 = [v31 mainItem];
            [v44 addSystemDialogActs:mainItem3];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            tier1Events3 = [v32 tier1Events];
            v35 = [tier1Events3 countByEnumeratingWithState:&v45 objects:v69 count:16];
            if (v35)
            {
              v36 = *v46;
              do
              {
                for (ii = 0; ii != v35; ++ii)
                {
                  if (*v46 != v36)
                  {
                    objc_enumerationMutation(tier1Events3);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v45 + 1) + 8 * ii)];
                }

                v35 = [tier1Events3 countByEnumeratingWithState:&v45 objects:v69 count:16];
              }

              while (v35);
            }
          }
        }

        systemDialogActs = objb;
        v28 = [objb countByEnumeratingWithState:&v49 objects:v70 count:16];
      }

      while (v28);
    }

    [(SiriInstrumentationObjectContainer *)v5 setMainItem:v44];
    v4 = v40;
  }

  else
  {
    v5 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)isLegacyNlContextPresent:(id)present
{
  presentCopy = present;
  v5 = presentCopy;
  if (presentCopy)
  {
    if (([presentCopy dictationPrompt] & 1) == 0 && (objc_msgSend(v5, "strictPrompt") & 1) == 0 && (objc_msgSend(v5, "listenAfterSpeaking") & 1) == 0)
    {
      hasPreviousDomainName = [v5 hasPreviousDomainName];
      if (hasPreviousDomainName && ([v5 previousDomainName], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqualToString:", &stru_1F487A568) & 1) == 0))
      {
      }

      else
      {
        renderedTextsCount = [v5 renderedTextsCount];
        if (hasPreviousDomainName)
        {
        }

        if (!renderedTextsCount)
        {
          goto LABEL_10;
        }
      }
    }

    v8 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v8 = 0;
LABEL_13:

  return v8;
}

+ (BOOL)isNlContextPresent:(id)present
{
  presentCopy = present;
  v4 = presentCopy;
  v5 = presentCopy && ([presentCopy activeTasksCount] || objc_msgSend(v4, "executedTasksCount") || objc_msgSend(v4, "systemDialogActsCount"));

  return v5;
}

+ (id)convertTurnContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF200]);
  v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
  nlContext = [contextCopy nlContext];
  v7 = [SiriNLUSELFLogUtils isNlContextPresent:nlContext];

  if (v7)
  {
    nlContext2 = [contextCopy nlContext];
    v9 = [SiriNLUSELFLogUtils convertNLContext:nlContext2];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setNlContext:mainItem];
LABEL_9:
    }
  }

  else
  {
    legacyNlContext = [contextCopy legacyNlContext];
    v12 = [SiriNLUSELFLogUtils isLegacyNlContextPresent:legacyNlContext];

    if (!v12)
    {
      v9 = 0;
      goto LABEL_11;
    }

    legacyNlContext2 = [contextCopy legacyNlContext];
    v9 = [SiriNLUSELFLogUtils convertLegacyNLContext:legacyNlContext2];

    if (v9)
    {
      mainItem = [v9 mainItem];
      [v4 setLegacyNlContext:mainItem];
      goto LABEL_9;
    }
  }

LABEL_11:
  [(SiriInstrumentationObjectContainer *)v5 setMainItem:v4];
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    tier1Events = [v9 tier1Events];
    v15 = [tier1Events countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(tier1Events);
          }

          [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v20 + 1) + 8 * i)];
        }

        v15 = [tier1Events countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertTurnInput:(id)input
{
  v32 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (inputCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF208]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    asrOutputs = [inputCopy asrOutputs];
    v6 = [asrOutputs countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(asrOutputs);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if (v9)
          {
            v10 = [v9 idA];
            v11 = [SiriNLUSELFLogUtils convertUUID:v10];
            [v4 addAsrHypothesisIds:v11];
          }
        }

        v6 = [asrOutputs countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    [v4 setIsTapToEdit:{objc_msgSend(inputCopy, "tapToEdit")}];
    v12 = objc_alloc_init(SiriInstrumentationObjectContainer);
    turnContext = [inputCopy turnContext];
    v14 = [SiriNLUSELFLogUtils convertTurnContext:turnContext];

    if (v14)
    {
      mainItem = [v14 mainItem];
      [v4 setTurnContext:mainItem];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      tier1Events = [v14 tier1Events];
      v17 = [tier1Events countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v17)
      {
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(tier1Events);
            }

            [(SiriInstrumentationObjectContainer *)v12 addTier1Event:*(*(&v22 + 1) + 8 * j)];
          }

          v17 = [tier1Events countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v17);
      }
    }

    [(SiriInstrumentationObjectContainer *)v12 setMainItem:v4];
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)getObjCUsoGraphFromOntologyUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)siri :ontology::UsoGraph
{
  v3 = *siri.var0;
  if (*siri.var0)
  {
    v5 = &unk_1F4879278;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    siri::ontology::UsoGraphProtoWriter::toProtobuf(v3, &v5, siri.var0);
    operator new();
  }

  return 0;
}

+ (id)convertUsoEntitySpanTier1:(id)tier1 index:(int64_t)index
{
  v42 = *MEMORY[0x1E69E9840];
  tier1Copy = tier1;
  if (tier1Copy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CF830]);
    [v5 setIndex:index];
    if ([tier1Copy hasOriginAppId])
    {
      originAppId = [tier1Copy originAppId];
      value = [originAppId value];
      [v5 setOriginAppId:value];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    properties = [tier1Copy properties];
    v9 = [properties countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(properties);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E69CF878]);
          v14 = [v12 key];
          [v13 setKey:v14];

          if ([v12 hasValueString])
          {
            valueString = [v12 valueString];
            value2 = [valueString value];
            [v13 setValueString:value2];
          }

          if ([v12 hasValueInt])
          {
            valueInt = [v12 valueInt];
            [v13 setValueInt:{objc_msgSend(valueInt, "value")}];
          }

          if ([v12 hasValueFloat])
          {
            valueFloat = [v12 valueFloat];
            [valueFloat value];
            [v13 setValueFloat:?];
          }

          [v5 addProperties:v13];
        }

        v9 = [properties countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    alternatives = [tier1Copy alternatives];
    v20 = [alternatives countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v20)
    {
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(alternatives);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = objc_alloc_init(MEMORY[0x1E69CF800]);
          alternative = [v23 alternative];
          [v24 setAlternative:alternative];

          if ([v23 hasProbability])
          {
            probability = [v23 probability];
            [probability value];
            [v24 setProbability:?];
          }

          [v5 addAlternatives:v24];
        }

        v20 = [alternatives countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    if ([tier1Copy hasOriginEntityId])
    {
      originEntityId = [tier1Copy originEntityId];
      value3 = [originEntityId value];
      [v5 setOriginEntityId:value3];
    }
  }

  else
  {
    v5 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoEntityIdentifierTier1:(id)tier1 index:(int64_t)index
{
  tier1Copy = tier1;
  if (tier1Copy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF820]);
    [v6 setIndex:index];
    value = [tier1Copy value];
    [v6 setValue:value];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUsoNodeDataTier1:(id)tier1 index:(int64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  tier1Copy = tier1;
  if (tier1Copy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF870]);
    [v6 setIndex:index];
    if ([tier1Copy hasStringPayload])
    {
      stringPayload = [tier1Copy stringPayload];
      value = [stringPayload value];
      [v6 setStringPayload:value];
    }

    if ([tier1Copy hasIntegerPayload])
    {
      integerPayload = [tier1Copy integerPayload];
      [v6 setIntegerPayload:{objc_msgSend(integerPayload, "value")}];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    normalizedStringPayloads = [tier1Copy normalizedStringPayloads];
    v11 = [normalizedStringPayloads countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(normalizedStringPayloads);
          }

          [v6 addNormalizedStringPayloads:*(*(&v16 + 1) + 8 * i)];
        }

        v11 = [normalizedStringPayloads countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)convertUtteranceSpan:(id)span
{
  spanCopy = span;
  if (spanCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF888]);
    if ([spanCopy hasStartIndex])
    {
      [v4 setStartIndex:{objc_msgSend(spanCopy, "startIndex")}];
    }

    if ([spanCopy hasEndIndex])
    {
      [v4 setEndIndex:{objc_msgSend(spanCopy, "endIndex")}];
    }

    if ([spanCopy hasStartUnicodeScalarIndex])
    {
      [v4 setStartUnicodeScalarIndex:{objc_msgSend(spanCopy, "startUnicodeScalarIndex")}];
    }

    if ([spanCopy hasEndUnicodeScalarIndex])
    {
      [v4 setEndUnicodeScalarIndex:{objc_msgSend(spanCopy, "endUnicodeScalarIndex")}];
    }

    if ([spanCopy hasStartMilliSeconds])
    {
      [v4 setStartMilliseconds:{objc_msgSend(spanCopy, "startMilliSeconds")}];
    }

    if ([spanCopy hasEndMilliSeconds])
    {
      [v4 setEndMilliseconds:{objc_msgSend(spanCopy, "endMilliSeconds")}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUtteranceAlignment:(id)alignment
{
  v17 = *MEMORY[0x1E69E9840];
  alignmentCopy = alignment;
  if (alignmentCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF880]);
    if ([alignmentCopy hasAsrHypothesisIndex])
    {
      [v4 setAsrHypothesisIndex:{objc_msgSend(alignmentCopy, "asrHypothesisIndex")}];
    }

    if ([alignmentCopy hasNodeIndex])
    {
      [v4 setNodeIndex:{objc_msgSend(alignmentCopy, "nodeIndex")}];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    spans = [alignmentCopy spans];
    v6 = [spans countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(spans);
          }

          v9 = [SiriNLUSELFLogUtils convertUtteranceSpan:*(*(&v12 + 1) + 8 * i)];
          [v4 addSpans:v9];
        }

        v6 = [spans countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int)convertUsoBackingAppBundleType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v4 = +[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:typeCopy];
      v7 = v6;
      if (v6)
      {
        intValue = [v6 intValue];
      }

      else
      {
        intValue = 0;
      }
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (id)convertUsoEntitySpan:(id)span index:(int64_t)index
{
  spanCopy = span;
  if (spanCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF828]);
    if (index == -1)
    {
      index = [spanCopy nodeIndex];
    }

    [v6 setNodeIndex:index];
    if ([spanCopy hasSourceComponent])
    {
      v7 = +[SiriNLUSELFLogUtils convertUSOEntitySpanNluComponent:](SiriNLUSELFLogUtils, "convertUSOEntitySpanNluComponent:", [spanCopy sourceComponent]);
    }

    else
    {
      v7 = 0;
    }

    [v6 setSourceComponent:v7];
    if ([spanCopy hasLabel])
    {
      label = [spanCopy label];
      value = [label value];
      [v6 setLabel:value];
    }

    if ([spanCopy hasMatchInfo])
    {
      matchInfo = [spanCopy matchInfo];
      v11 = [SiriNLUSELFLogUtils convertMatchInfo:matchInfo];
      [v6 setMatchInfo:v11];
    }

    if ([spanCopy hasStartIndex])
    {
      startIndex = [spanCopy startIndex];
      [v6 setStartIndex:{objc_msgSend(startIndex, "value")}];
    }

    if ([spanCopy hasEndIndex])
    {
      endIndex = [spanCopy endIndex];
      [v6 setEndIndex:{objc_msgSend(endIndex, "value")}];
    }

    if ([spanCopy hasOriginAppId])
    {
      originAppId = [spanCopy originAppId];
      value2 = [originAppId value];
      [v6 setOriginAppBundleIdType:{+[SiriNLUSELFLogUtils convertUsoBackingAppBundleType:](SiriNLUSELFLogUtils, "convertUsoBackingAppBundleType:", value2)}];
    }

    else
    {
      [v6 setOriginAppBundleIdType:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUsoEntitySpan:(id)span
{
  v3 = [SiriNLUSELFLogUtils convertUsoEntitySpan:span index:-1];

  return v3;
}

+ (id)convertMatchInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF860]);
    if ([infoCopy hasMatchSignalBitset])
    {
      [v4 setMatchSignalBitset:{objc_msgSend(infoCopy, "matchSignalBitset")}];
    }

    if ([infoCopy hasMatchScore])
    {
      matchScore = [infoCopy matchScore];
      [matchScore value];
      [v4 setMatchScore:?];
    }

    if ([infoCopy hasMaxTokenCount])
    {
      maxTokenCount = [infoCopy maxTokenCount];
      [v4 setMaxTokenCount:{objc_msgSend(maxTokenCount, "value")}];
    }

    if ([infoCopy hasMatchedTokenCount])
    {
      matchedTokenCount = [infoCopy matchedTokenCount];
      [v4 setMatchedTokenCount:{objc_msgSend(matchedTokenCount, "value")}];
    }

    if ([infoCopy hasMaxStopWordCount])
    {
      maxStopWordCount = [infoCopy maxStopWordCount];
      [v4 setMaxStopWordCount:{objc_msgSend(maxStopWordCount, "value")}];
    }

    if ([infoCopy hasMatchedStopWordCount])
    {
      matchedStopWordCount = [infoCopy matchedStopWordCount];
      [v4 setMatchedStopWordCount:{objc_msgSend(matchedStopWordCount, "value")}];
    }

    if ([infoCopy hasEditDistance])
    {
      editDistance = [infoCopy editDistance];
      [v4 setEditDistance:{objc_msgSend(editDistance, "value")}];
    }

    if ([infoCopy hasMaxAliasCount])
    {
      maxAliasCount = [infoCopy maxAliasCount];
      [v4 setMaxAliasCount:{objc_msgSend(maxAliasCount, "value")}];
    }

    if ([infoCopy hasMatchedAliasCount])
    {
      matchedAliasCount = [infoCopy matchedAliasCount];
      [v4 setMatchedAliasCount:{objc_msgSend(matchedAliasCount, "value")}];
    }

    for (i = 0; [infoCopy matchedAliasTypesCount] > i; ++i)
    {
      [v4 addMatchedAliasTypes:{+[SiriNLUSELFLogUtils convertMatchInfoAliasType:](SiriNLUSELFLogUtils, "convertMatchInfoAliasType:", objc_msgSend(infoCopy, "matchedAliasTypesAtIndex:", i))}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUsoEntityIdentifier:(id)identifier index:(int64_t)index
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF818]);
    if (index == -1)
    {
      index = [identifierCopy nodeIndex];
    }

    [v6 setNodeIndex:index];
    if ([identifierCopy hasProbability])
    {
      probability = [identifierCopy probability];
      [probability value];
      [v6 setProbability:?];
    }

    if ([identifierCopy hasNamespaceA])
    {
      namespaceA = [identifierCopy namespaceA];
      value = [namespaceA value];
      [v6 setIdentifierNamespace:value];
    }

    if ([identifierCopy hasSourceComponent])
    {
      v10 = +[SiriNLUSELFLogUtils convertUSOEntityIdentifierNluComponent:](SiriNLUSELFLogUtils, "convertUSOEntityIdentifierNluComponent:", [identifierCopy sourceComponent]);
    }

    else
    {
      v10 = 0;
    }

    [v6 setSourceNluComponent:v10];
    if ([identifierCopy hasBackingAppBundleId])
    {
      backingAppBundleId = [identifierCopy backingAppBundleId];
      [v6 setBackingAppBundleType:{+[SiriNLUSELFLogUtils convertUsoBackingAppBundleType:](SiriNLUSELFLogUtils, "convertUsoBackingAppBundleType:", backingAppBundleId)}];
    }

    else
    {
      [v6 setBackingAppBundleType:0];
    }

    if ([identifierCopy hasGroupIndex])
    {
      [v6 setGroupIndex:{objc_msgSend(identifierCopy, "groupIndex")}];
    }

    if ([identifierCopy hasInterpretationGroup])
    {
      [v6 setInterpretationGroup:{objc_msgSend(identifierCopy, "interpretationGroup")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUsoEntityIdentifier:(id)identifier
{
  v3 = [SiriNLUSELFLogUtils convertUsoEntityIdentifier:identifier index:-1];

  return v3;
}

+ (id)convertUsoEdge:(id)edge
{
  edgeCopy = edge;
  if (edgeCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF808]);
    [v4 setFromIndex:{objc_msgSend(edgeCopy, "fromIndex")}];
    [v4 setToIndex:{objc_msgSend(edgeCopy, "toIndex")}];
    if ([edgeCopy hasLabel])
    {
      v5 = objc_alloc_init(MEMORY[0x1E69CF810]);
      label = [edgeCopy label];
      [v5 setUsoElementId:{objc_msgSend(label, "usoElementId")}];

      label2 = [edgeCopy label];
      [v5 setEnumeration:{objc_msgSend(label2, "enumeration")}];

      label3 = [edgeCopy label];
      hasBaseEdgeLabel = [label3 hasBaseEdgeLabel];

      if (hasBaseEdgeLabel)
      {
        v10 = objc_alloc_init(MEMORY[0x1E69CF858]);
        label4 = [edgeCopy label];
        baseEdgeLabel = [label4 baseEdgeLabel];
        value = [baseEdgeLabel value];
        [v10 setValue:value];

        [v5 setBaseEdgeLabel:v10];
      }

      [v4 setLabel:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUsoNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF868]);
    if ([nodeCopy hasUsoElementId])
    {
      [v4 setUsoElementId:{objc_msgSend(nodeCopy, "usoElementId")}];
    }

    if ([nodeCopy hasUsoVerbElementId])
    {
      usoVerbElementId = [nodeCopy usoVerbElementId];
      [v4 setUsoVerbElementId:{objc_msgSend(usoVerbElementId, "value")}];
    }

    if ([nodeCopy hasEntityLabel])
    {
      entityLabel = [nodeCopy entityLabel];
      [v4 setEntityLabel:entityLabel];
    }

    if ([nodeCopy hasVerbLabel])
    {
      verbLabel = [nodeCopy verbLabel];
      [v4 setVerbLabel:verbLabel];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertNonTier1UsoGraph:(id)graph identifiers:(id)identifiers entitySpans:(id)spans
{
  v83 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  identifiersCopy = identifiers;
  spansCopy = spans;
  if (graphCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69CF840]);
    version = [graphCopy version];
    v12 = [SiriNLUSELFLogUtils convertVersion:version];
    [v10 setVersion:v12];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    nodes = [graphCopy nodes];
    v14 = [nodes countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v14)
    {
      v15 = *v73;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v73 != v15)
          {
            objc_enumerationMutation(nodes);
          }

          v17 = [SiriNLUSELFLogUtils convertUsoNode:*(*(&v72 + 1) + 8 * i)];
          [v10 addNodes:v17];
        }

        v14 = [nodes countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v14);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    edges = [graphCopy edges];
    v19 = [edges countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v19)
    {
      v20 = *v69;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(edges);
          }

          v22 = [SiriNLUSELFLogUtils convertUsoEdge:*(*(&v68 + 1) + 8 * j)];
          [v10 addEdges:v22];
        }

        v19 = [edges countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v19);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    alignments = [graphCopy alignments];
    v24 = [alignments countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v24)
    {
      v25 = *v65;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(alignments);
          }

          v27 = [SiriNLUSELFLogUtils convertUtteranceAlignment:*(*(&v64 + 1) + 8 * k)];
          [v10 addAlignments:v27];
        }

        v24 = [alignments countByEnumeratingWithState:&v64 objects:v80 count:16];
      }

      while (v24);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    identifiers = [graphCopy identifiers];
    v29 = [identifiers countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v29)
    {
      v30 = *v61;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(identifiers);
          }

          v32 = [SiriNLUSELFLogUtils convertUsoEntityIdentifier:*(*(&v60 + 1) + 8 * m)];
          [v10 addIdentifiers:v32];
        }

        v29 = [identifiers countByEnumeratingWithState:&v60 objects:v79 count:16];
      }

      while (v29);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    spans = [graphCopy spans];
    v34 = [spans countByEnumeratingWithState:&v56 objects:v78 count:16];
    if (v34)
    {
      v35 = *v57;
      do
      {
        for (n = 0; n != v34; ++n)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(spans);
          }

          v37 = [SiriNLUSELFLogUtils convertUsoEntitySpan:*(*(&v56 + 1) + 8 * n)];
          [v10 addSpans:v37];
        }

        v34 = [spans countByEnumeratingWithState:&v56 objects:v78 count:16];
      }

      while (v34);
    }

    if (identifiersCopy)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = identifiersCopy;
      v39 = [v38 countByEnumeratingWithState:&v52 objects:v77 count:16];
      if (v39)
      {
        v40 = *v53;
        do
        {
          for (ii = 0; ii != v39; ++ii)
          {
            if (*v53 != v40)
            {
              objc_enumerationMutation(v38);
            }

            [v10 addIdentifiers:*(*(&v52 + 1) + 8 * ii)];
          }

          v39 = [v38 countByEnumeratingWithState:&v52 objects:v77 count:16];
        }

        while (v39);
      }
    }

    if (spansCopy)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v42 = spansCopy;
      v43 = [v42 countByEnumeratingWithState:&v48 objects:v76 count:16];
      if (v43)
      {
        v44 = *v49;
        do
        {
          for (jj = 0; jj != v43; ++jj)
          {
            if (*v49 != v44)
            {
              objc_enumerationMutation(v42);
            }

            [v10 addSpans:{*(*(&v48 + 1) + 8 * jj), v48}];
          }

          v43 = [v42 countByEnumeratingWithState:&v48 objects:v76 count:16];
        }

        while (v43);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)convertNonTier1UsoGraph:(id)graph
{
  v3 = [SiriNLUSELFLogUtils convertNonTier1UsoGraph:graph identifiers:0 entitySpans:0];

  return v3;
}

+ (id)convertUsoGraph:(id)graph
{
  v14 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  v10 = graphCopy;
  if (graphCopy)
  {
    SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(graphCopy);
    v6 = *SharedUsoVocabManager;
    v5 = SharedUsoVocabManager[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v5;
    [SiriNLUTypesConverterUtils convertUsoGraphFromObjCToCpp:v10];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = v6;
      v12 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = v6;
      v12 = 0;
    }

    siri::ontology::UsoGraphProtoReader::fromProtobuf(&v11, v13);
  }

  v7 = *MEMORY[0x1E69E9840];

  return 0;
}

+ (id)convertVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF648]);
    [v4 setMajor:{objc_msgSend(versionCopy, "majorVersion")}];
    [v4 setMinor:{objc_msgSend(versionCopy, "minorVersion")}];
    [v4 setPatch:{objc_msgSend(versionCopy, "patchVersion")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    v8[1] = [dCopy highInt];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8];
    v6 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createDelegatedUserDialogActTier1Event:(id)event withLinkId:(id)id
{
  eventCopy = event;
  idCopy = id;
  if (eventCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF0E0]);
    [v7 setLinkId:idCopy];
    if ([eventCopy hasRewrite])
    {
      rewrite = [eventCopy rewrite];
      rewriteType = [rewrite rewriteType];

      if (rewriteType != 3)
      {
        rewrite2 = [eventCopy rewrite];
        rewrittenUtterance = [rewrite2 rewrittenUtterance];
        [v7 setRewrittenUtterance:rewrittenUtterance];
      }
    }

    v12 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v12 setCdmDelegatedUserDialogActTier1:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)createSystemDialogActTier1Event:(id)event withLinkId:(id)id
{
  eventCopy = event;
  idCopy = id;
  if (eventCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF1A8]);
    [v7 setLinkId:idCopy];
    if ([eventCopy hasRenderedText])
    {
      renderedText = [eventCopy renderedText];
      value = [renderedText value];
      [v7 setRenderedText:value];
    }

    v10 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v10 setCdmSystemDialogActTier1:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createNLXLegacyNLContextTier1Event:(id)event withLinkId:(id)id
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  idCopy = id;
  if (eventCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF2C0]);
    [v7 setLinkId:idCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    renderedTexts = [eventCopy renderedTexts];
    v9 = [renderedTexts countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(renderedTexts);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (v12 && [*(*(&v17 + 1) + 8 * i) hasValue])
          {
            value = [v12 value];
            [v7 addRenderedTexts:value];
          }
        }

        v9 = [renderedTexts countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v14 setNlxLegacyNLContextTier1:v7];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)createCdmXpcEventProcessingEndedLog:(id)log metadata:(id)metadata
{
  logCopy = log;
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x1E69CF278]);
  [v7 setExists:1];
  v8 = objc_alloc_init(MEMORY[0x1E69CF270]);
  [v8 setEnded:v7];
  if (logCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
    [v8 setContextId:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v10 setEventMetadata:metadataCopy];
  [v10 setCdmXpcEventProcessingContext:v8];
  v11 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v11 setMainEvent:v10];

  return v11;
}

+ (id)createContextUpdateEndedLog:(id)log contextUpdateResponse:(id)response metadata:(id)metadata
{
  v32 = *MEMORY[0x1E69E9840];
  logCopy = log;
  responseCopy = response;
  metadataCopy = metadata;
  if (responseCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CF0C8]);
    if (logCopy)
    {
      v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
      [v8 setContextId:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; [responseCopy reformedTurnInputBundlesCount] > i; ++i)
    {
      v12 = [responseCopy reformedTurnInputBundlesAtIndex:i];
      v13 = [SiriNLUSELFLogUtils convertReformedTurnInputBundle:v12];

      if (v13)
      {
        mainItem = [v13 mainItem];
        [v8 addReformedTurnInputBundles:mainItem];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        tier1Events = [v13 tier1Events];
        v16 = [tier1Events countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          v17 = *v28;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(tier1Events);
              }

              [v10 addObject:*(*(&v27 + 1) + 8 * j)];
            }

            v16 = [tier1Events countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v16);
        }
      }
    }

    v19 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v19 setEventMetadata:metadataCopy];
    [v19 setCdmContextUpdateEnded:v8];
    v20 = objc_alloc_init(SiriInstrumentationEventContainer);
    [(SiriInstrumentationEventContainer *)v20 setMainEvent:v19];
    v21 = [v10 copy];
    [(SiriInstrumentationEventContainer *)v20 setTier1Events:v21];

    tier1Events2 = [(SiriInstrumentationEventContainer *)v20 tier1Events];
    [SiriNLUSELFLogUtils populateEventsWithMetadata:tier1Events2 metadata:metadataCopy];
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)createTokenizationEndedLog:(id)log tokenizationResponse:(id)response metadata:(id)metadata
{
  v5 = [SiriNLUSELFLogUtils createTokenizationEndedLog:log tokenizationResponse:response tokenizationInputType:0 metadata:metadata];

  return v5;
}

+ (id)createMatchingSpanEndedLog:(id)log spanMatchResponse:(id)response metadata:(id)metadata
{
  v40 = *MEMORY[0x1E69E9840];
  logCopy = log;
  responseCopy = response;
  metadataCopy = metadata;
  if (responseCopy)
  {
    v34 = objc_alloc_init(MEMORY[0x1E69CF100]);
    if (logCopy)
    {
      v8 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
      [v34 setContextId:v8];
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E69CF108]);
    v11 = objc_alloc(MEMORY[0x1E69CF640]);
    v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v13 = [v11 initWithNSUUID:v12];

    v31 = v13;
    [v34 setLinkId:v13];
    [v10 setLinkId:v13];
    for (i = 0; [responseCopy matchingSpansCount] > i; ++i)
    {
      v15 = [responseCopy matchingSpansAtIndex:i];
      v16 = [SiriNLUSELFLogUtils convertMatchingSpan:v15];

      if (v16)
      {
        mainItem = [v16 mainItem];
        [v34 addMatchingSpans:mainItem];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        tier1Events = [v16 tier1Events];
        v19 = [tier1Events countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v19)
        {
          v20 = *v36;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(tier1Events);
              }

              [v9 addObject:*(*(&v35 + 1) + 8 * j)];
            }

            v19 = [tier1Events countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v19);
        }
      }

      v22 = [responseCopy matchingSpansAtIndex:i];
      v23 = [SiriNLUSELFLogUtils convertMatchingSpanTier1:v22];

      [v10 addMatchingSpans:v23];
    }

    v24 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v24 setEventMetadata:metadataCopy];
    [v24 setCdmMatchingSpanEndedTier1:v10];
    [v9 addObject:v24];
    v25 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v25 setEventMetadata:metadataCopy];
    [v25 setCdmMatchingSpanEnded:v34];
    v26 = objc_alloc_init(SiriInstrumentationEventContainer);
    [(SiriInstrumentationEventContainer *)v26 setMainEvent:v25];
    v27 = [v9 copy];
    [(SiriInstrumentationEventContainer *)v26 setTier1Events:v27];

    tier1Events2 = [(SiriInstrumentationEventContainer *)v26 tier1Events];
    [SiriNLUSELFLogUtils populateEventsWithMetadata:tier1Events2 metadata:metadataCopy];
  }

  else
  {
    v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)createCDMAssetsReportedLog:(id)log metadata:(id)metadata
{
  logCopy = log;
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x1E69CF080]);
  [v7 setAssets:logCopy];
  v8 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v8 setEventMetadata:metadataCopy];
  [v8 setCdmAssetsReported:v7];
  v9 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v9 setMainEvent:v8];

  return v9;
}

+ (id)createCDMSetupMissingAssetsDetectedLog:(id)log services:(id)services metadata:(id)metadata
{
  v25 = *MEMORY[0x1E69E9840];
  logCopy = log;
  servicesCopy = services;
  metadataCopy = metadata;
  v10 = objc_alloc_init(MEMORY[0x1E69CF188]);
  v11 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
  [v10 setContextId:v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = servicesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [v10 addServicesMissingAsset:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "intValue", v20)}];
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v16 setEventMetadata:metadataCopy];
  [v16 setCdmSetupMissingAssetsDetected:v10];
  v17 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v17 setMainEvent:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)createCDMAssetSetupEndedLog:(id)log metadata:(id)metadata
{
  logCopy = log;
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x1E69CF068]);
  [v7 setExists:1];
  v8 = objc_alloc_init(MEMORY[0x1E69CF060]);
  [v8 setEnded:v7];
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
  [v8 setContextId:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v10 setEventMetadata:metadataCopy];
  [v10 setCdmAssetSetupContext:v8];
  v11 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v11 setMainEvent:v10];

  return v11;
}

+ (id)createCDMAssetSetupStartedLog:(id)log serviceTypes:(id)types metadata:(id)metadata
{
  v26 = *MEMORY[0x1E69E9840];
  logCopy = log;
  typesCopy = types;
  metadataCopy = metadata;
  v10 = objc_alloc_init(MEMORY[0x1E69CF078]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = typesCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v10 addServices:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "intValue", v21)}];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = objc_alloc_init(MEMORY[0x1E69CF060]);
  [v15 setStartedOrChanged:v10];
  v16 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:logCopy];
  [v15 setContextId:v16];

  v17 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v17 setEventMetadata:metadataCopy];
  [v17 setCdmAssetSetupContext:v15];
  v18 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v18 setMainEvent:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)createCDMAllServicesWarmupFailedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF050]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setFailed:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesWarmupEndedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF048]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesWarmupStartedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF058]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setStartedOrChanged:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMClientWarmupEndedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF0B0]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF0A8]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmClientWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupFailedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF030]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setFailed:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupEndedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF028]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupStartedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF038]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setStartedOrChanged:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMClientSetupEndedLog:(id)log
{
  logCopy = log;
  v4 = objc_alloc_init(MEMORY[0x1E69CF090]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF088]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:logCopy];
  [v6 setCdmClientSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMRequestEndedLog:(id)log metadata:(id)metadata
{
  v41 = *MEMORY[0x1E69E9840];
  logCopy = log;
  metadataCopy = metadata;
  v30 = objc_alloc_init(MEMORY[0x1E69CF148]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (logCopy)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    parses = [logCopy parses];
    v7 = [parses countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(parses);
          }

          v10 = [SiriNLUSELFLogUtils convertUserParse:*(*(&v35 + 1) + 8 * i)];
          v11 = v10;
          if (v10)
          {
            mainItem = [v10 mainItem];
            [v30 addParses:mainItem];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            tier1Events = [v11 tier1Events];
            v14 = [tier1Events countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v14)
            {
              v15 = *v32;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v32 != v15)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  [v5 addObject:*(*(&v31 + 1) + 8 * j)];
                }

                v14 = [tier1Events countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v14);
            }
          }
        }

        v7 = [parses countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    languageVariantResult = [logCopy languageVariantResult];
    v18 = languageVariantResult == 0;

    if (!v18)
    {
      languageVariantResult2 = [logCopy languageVariantResult];
      v20 = [SiriNLUSELFLogUtils convertLvcResult:languageVariantResult2];
      [v30 setLanguageVariantClassifierResult:v20];
    }
  }

  v21 = objc_alloc_init(MEMORY[0x1E69CF140]);
  [v21 setEnded:v30];
  v22 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v22 setEventMetadata:metadataCopy];
  [v22 setCdmRequestContext:v21];
  v23 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v23 setMainEvent:v22];
  v24 = [v5 copy];
  [(SiriInstrumentationEventContainer *)v23 setTier1Events:v24];

  tier1Events2 = [(SiriInstrumentationEventContainer *)v23 tier1Events];
  [SiriNLUSELFLogUtils populateEventsWithMetadata:tier1Events2 metadata:metadataCopy];

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)createNLXCurareContext:(id)context metadata:(id)metadata
{
  contextCopy = context;
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x1E69CF2B0]);
  v8 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:contextCopy];
  [v7 setCurareId:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v9 setNlxCurareContext:v7];
  [v9 setEventMetadata:metadataCopy];
  v10 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v10 setMainEvent:v9];

  return v10;
}

+ (id)createNLXClientEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithSubRequestId:(id)subRequestId andWithResultCandidateId:(id)candidateId andWithRequester:(int *)requester
{
  idCopy = id;
  trpIdCopy = trpId;
  requestIdCopy = requestId;
  subRequestIdCopy = subRequestId;
  candidateIdCopy = candidateId;
  v18 = objc_alloc_init(MEMORY[0x1E69CF2A8]);
  v19 = [SiriNLUSELFLogUtils convertUUID:idCopy];
  [v18 setNlId:v19];

  v20 = [SiriNLUSELFLogUtils convertUUID:trpIdCopy];
  [v18 setTrpId:v20];

  v21 = [SiriNLUSELFLogUtils convertUUID:requestIdCopy];
  [v18 setRequestId:v21];

  v22 = [SiriNLUSELFLogUtils convertUUID:subRequestIdCopy];
  [v18 setSubRequestId:v22];

  [v18 setResultCandidateId:candidateIdCopy];
  [v18 setComponentInvocationSource:{+[SiriNLUSELFLogUtils convertComponentInvocationSource:](SiriNLUSELFLogUtils, "convertComponentInvocationSource:", *requester)}];

  return v18;
}

+ (id)createNLXClientEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId andWithRequester:(int *)requester
{
  v6 = [self createNLXClientEventMetadataWithNlId:id andWithTrpId:trpId andWithRequestId:0 andWithSubRequestId:0 andWithResultCandidateId:candidateId andWithRequester:requester];

  return v6;
}

+ (void)populateEventsWithMetadata:(id)metadata metadata:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v6 = a4;
  if (metadataCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = metadataCopy;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) setEventMetadata:{v6, v12}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end