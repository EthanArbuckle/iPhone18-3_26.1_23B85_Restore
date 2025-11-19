@interface SiriNLUSELFLogUtils
+ (BOOL)isLegacyNlContextPresent:(id)a3;
+ (BOOL)isNlContextPresent:(id)a3;
+ (id)convertAccepted:(id)a3;
+ (id)convertAcknowledged:(id)a3;
+ (id)convertCancelled:(id)a3;
+ (id)convertCorrectionOutcome:(id)a3;
+ (id)convertDelegated:(id)a3;
+ (id)convertGaveOptions:(id)a3;
+ (id)convertInformed:(id)a3;
+ (id)convertInternalSpanData:(id)a3;
+ (id)convertLegacyNLContext:(id)a3;
+ (id)convertLvcResult:(id)a3;
+ (id)convertMatchInfo:(id)a3;
+ (id)convertMatchingSpan:(id)a3;
+ (id)convertMatchingSpanTier1:(id)a3;
+ (id)convertMentionDetectorSpanData:(id)a3;
+ (id)convertMentionResolverSpanData:(id)a3;
+ (id)convertNLContext:(id)a3;
+ (id)convertNonTier1UsoGraph:(id)a3;
+ (id)convertNonTier1UsoGraph:(id)a3 identifiers:(id)a4 entitySpans:(id)a5;
+ (id)convertOffered:(id)a3;
+ (id)convertPLUMSpanData:(id)a3;
+ (id)convertParser:(id)a3;
+ (id)convertPrompted:(id)a3;
+ (id)convertReformedTurnInputBundle:(id)a3;
+ (id)convertRejected:(id)a3;
+ (id)convertRepetitionResult:(id)a3;
+ (id)convertReportedFailure:(id)a3;
+ (id)convertReportedSuccess:(id)a3;
+ (id)convertSiriVocabularySpanData:(id)a3;
+ (id)convertSystemDialogAct:(id)a3;
+ (id)convertTask:(id)a3;
+ (id)convertToken:(id)a3;
+ (id)convertTokenChain:(id)a3;
+ (id)convertTurnContext:(id)a3;
+ (id)convertTurnInput:(id)a3;
+ (id)convertUUID:(id)a3;
+ (id)convertUserDialogAct:(id)a3;
+ (id)convertUserParse:(id)a3;
+ (id)convertUserStatedTask:(id)a3;
+ (id)convertUsoEdge:(id)a3;
+ (id)convertUsoEntityIdentifier:(id)a3;
+ (id)convertUsoEntityIdentifier:(id)a3 index:(int64_t)a4;
+ (id)convertUsoEntityIdentifierTier1:(id)a3 index:(int64_t)a4;
+ (id)convertUsoEntitySpan:(id)a3;
+ (id)convertUsoEntitySpan:(id)a3 index:(int64_t)a4;
+ (id)convertUsoEntitySpanTier1:(id)a3 index:(int64_t)a4;
+ (id)convertUsoGraph:(id)a3;
+ (id)convertUsoNode:(id)a3;
+ (id)convertUsoNodeDataTier1:(id)a3 index:(int64_t)a4;
+ (id)convertUtteranceAlignment:(id)a3;
+ (id)convertUtteranceSpan:(id)a3;
+ (id)convertVersion:(id)a3;
+ (id)convertWantedToPause:(id)a3;
+ (id)convertWantedToProceed:(id)a3;
+ (id)convertWantedToRepeat:(id)a3;
+ (id)convertWantedToUndo:(id)a3;
+ (id)createAllZeroUUID;
+ (id)createCDMAllServicesSetupEndedLog:(id)a3;
+ (id)createCDMAllServicesSetupFailedLog:(id)a3;
+ (id)createCDMAllServicesSetupStartedLog:(id)a3;
+ (id)createCDMAllServicesWarmupEndedLog:(id)a3;
+ (id)createCDMAllServicesWarmupFailedLog:(id)a3;
+ (id)createCDMAllServicesWarmupStartedLog:(id)a3;
+ (id)createCDMAssetSetupEndedLog:(id)a3 metadata:(id)a4;
+ (id)createCDMAssetSetupStartedLog:(id)a3 serviceTypes:(id)a4 metadata:(id)a5;
+ (id)createCDMAssetsReportedLog:(id)a3 metadata:(id)a4;
+ (id)createCDMClientSetupEndedLog:(id)a3;
+ (id)createCDMClientWarmupEndedLog:(id)a3;
+ (id)createCDMRequestEndedLog:(id)a3 metadata:(id)a4;
+ (id)createCDMSetupMissingAssetsDetectedLog:(id)a3 services:(id)a4 metadata:(id)a5;
+ (id)createCdmXpcEventProcessingEndedLog:(id)a3 metadata:(id)a4;
+ (id)createContextUpdateEndedLog:(id)a3 contextUpdateResponse:(id)a4 metadata:(id)a5;
+ (id)createDelegatedUserDialogActTier1Event:(id)a3 withLinkId:(id)a4;
+ (id)createMatchingSpanEndedLog:(id)a3 spanMatchResponse:(id)a4 metadata:(id)a5;
+ (id)createNLXClientEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithRequestId:(id)a5 andWithSubRequestId:(id)a6 andWithResultCandidateId:(id)a7 andWithRequester:(int *)a8;
+ (id)createNLXClientEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5 andWithRequester:(int *)a6;
+ (id)createNLXCurareContext:(id)a3 metadata:(id)a4;
+ (id)createNLXLegacyNLContextTier1Event:(id)a3 withLinkId:(id)a4;
+ (id)createSystemDialogActTier1Event:(id)a3 withLinkId:(id)a4;
+ (id)createTokenizationEndedLog:(id)a3 tokenizationResponse:(id)a4 metadata:(id)a5;
+ (id)extractRequestLinkData:(id)a3;
+ (id)getAppBundleTypeEnumsMapping;
+ (id)getErrorDomainMapping;
+ (id)getObjCUsoGraphFromOntologyUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph;
+ (id)getReferenceFromAccepted:(id)a3;
+ (id)getReferenceFromAcknowledged:(id)a3;
+ (id)getReferenceFromCancelled:(id)a3;
+ (id)getReferenceFromRejected:(id)a3;
+ (id)getReferenceFromWantedToPause:(id)a3;
+ (id)getReferenceFromWantedToProceed:(id)a3;
+ (id)getReferenceFromWantedToRepeat:(id)a3;
+ (id)getTaskFromUserStatedTask:(id)a3;
+ (int)convertCDMMatcherName:(int)a3;
+ (int)convertCDMParserAlgorithmType:(int)a3;
+ (int)convertCDMReformType:(int)a3;
+ (int)convertCDMRepetitionType:(int)a3;
+ (int)convertCDMRewriteType:(int)a3;
+ (int)convertComponentInvocationSource:(int)a3;
+ (int)convertLegacyContextSource:(int)a3;
+ (int)convertMatchInfoAliasType:(int)a3;
+ (int)convertUSOEntityIdentifierNluComponent:(int)a3;
+ (int)convertUSOEntitySpanNluComponent:(int)a3;
+ (int)convertUsoBackingAppBundleType:(id)a3;
+ (int)getErrorDomain:(id)a3;
+ (void)populateEventsWithMetadata:(id)a3 metadata:(id)a4;
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

+ (int)getErrorDomain:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[SiriNLUSELFLogUtils getErrorDomainMapping];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:v3];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 intValue];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (id)extractRequestLinkData:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(SiriNLUSELFRequestLinkData);
  if (v3)
  {
    v5 = @"No ResultCandidateId";
    v6 = [v3 connectionId];
    v7 = [v3 idA];
    v32 = v6;

    if (v7)
    {
      v8 = [v3 idA];
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
            v30 = [v15 UUIDString];
            *buf = 136315394;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            v35 = 2112;
            v36 = v30;
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

      if (![v3 hasTrpId] || (objc_msgSend(v3, "trpId"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length") == 0, v21, v22))
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
        v24 = [v3 trpId];
        v25 = [v23 initWithUUIDString:v24];

        if (v25)
        {
          v19 = [SiriNLUExternalTypesConverter convertFromUUID:v25];
          v26 = loggerContext(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = [v25 UUIDString];
            *buf = 136315394;
            v34 = "+[SiriNLUSELFLogUtils extractRequestLinkData:]";
            v35 = 2112;
            v36 = v27;
            v31 = v27;
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

+ (int)convertLegacyContextSource:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16584[a3 - 1];
  }
}

+ (int)convertComponentInvocationSource:(int)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertCDMParserAlgorithmType:(int)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMReformType:(int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMRewriteType:(int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertCDMRepetitionType:(int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C8C15D60[a3];
  }
}

+ (int)convertCDMMatcherName:(int)a3
{
  if (a3 < 9)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertMatchInfoAliasType:(int)a3
{
  if (a3 < 8)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)convertUSOEntitySpanNluComponent:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16568[a3];
  }
}

+ (int)convertUSOEntityIdentifierNluComponent:(int)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1C8C16568[a3];
  }
}

+ (id)convertLvcResult:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0F0]);
    v5 = [v3 multilingualVariants];

    if (v5)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [v3 multilingualVariants];
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = *v20;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            v11 = objc_alloc_init(MEMORY[0x1E69CF118]);
            v12 = [v10 languageVariantName];
            [v11 setLanguageVariantName:v12];

            [v10 languageVariantScore];
            [v11 setLanguageVariantConfidenceScore:?];
            [v4 addMultilingualVariants:v11];
          }

          v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }
    }

    v13 = [v3 parser];
    v14 = v13 == 0;

    if (!v14)
    {
      v15 = [v3 parser];
      v16 = [SiriNLUSELFLogUtils convertParser:v15];
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

+ (id)convertReformedTurnInputBundle:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF130]);
    [v4 setType:{+[SiriNLUSELFLogUtils convertCDMReformType:](SiriNLUSELFLogUtils, "convertCDMReformType:", objc_msgSend(v3, "type"))}];
    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v6 = [v3 currentTurn];
    v7 = [SiriNLUSELFLogUtils convertTurnInput:v6];

    if (v7)
    {
      v8 = [v7 mainItem];
      [v4 setCurrentTurn:v8];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 tier1Events];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)convertToken:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1E8]);
    v5 = [v3 value];
    [v4 setValue:v5];

    [v4 setBegin:{objc_msgSend(v3, "begin")}];
    [v4 setEnd:{objc_msgSend(v3, "end")}];
    [v4 setIsSignificant:{objc_msgSend(v3, "isSignificant")}];
    [v4 setIsWhitespace:{objc_msgSend(v3, "isWhitespace")}];
    [v4 setNonWhitespaceTokenIndex:{objc_msgSend(v3, "nonWhitespaceTokenIndex")}];
    v6 = [v3 cleanValue];
    [v4 setCleanValue:v6];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v3 normalizedValues];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v4 addNormalizedValues:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 setTokenIndex:{objc_msgSend(v3, "tokenIndex")}];
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertTokenChain:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1F0]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 tokens];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [SiriNLUSELFLogUtils convertToken:*(*(&v12 + 1) + 8 * i)];
          [v4 addTokens:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (id)convertMentionResolverSpanData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF298]);
    [v3 modelScore];
    [v4 setModelScore:?];
    [v3 jointScore];
    [v4 setJointScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMentionDetectorSpanData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF290]);
    [v3 score];
    [v4 setScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertPLUMSpanData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF2C8]);
    [v3 score];
    [v4 setScore:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertSiriVocabularySpanData:(id)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF198]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertInternalSpanData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0E8]);
    v5 = [v3 siriVocabularySpanData];
    v6 = [SiriNLUSELFLogUtils convertSiriVocabularySpanData:v5];
    [v4 setSiriVocabularySpanData:v6];

    v7 = [v3 plumSpanData];
    v8 = [SiriNLUSELFLogUtils convertPLUMSpanData:v7];
    [v4 setPlumSpanData:v8];

    v9 = [v3 mentionDetectorSpanData];
    v10 = [SiriNLUSELFLogUtils convertMentionDetectorSpanData:v9];
    [v4 setMentionDetectorSpanData:v10];

    v11 = [v3 mentionResolverSpanData];
    v12 = [SiriNLUSELFLogUtils convertMentionResolverSpanData:v11];
    [v4 setMentionResolverSpanData:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMatchingSpanTier1:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF110]);
    v5 = [v3 input];
    [v4 setInput:v5];

    v6 = [v3 semanticValue];
    [v4 setSemanticValue:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertMatchingSpan:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
  if (v27)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69CF0F8]);
    v3 = [v27 label];
    [v26 setLabel:v3];

    [v26 setStartTokenIndex:{objc_msgSend(v27, "startTokenIndex")}];
    [v26 setEndTokenIndex:{objc_msgSend(v27, "endTokenIndex")}];
    v4 = [v27 internalSpanData];
    v5 = [SiriNLUSELFLogUtils convertInternalSpanData:v4];
    [v26 setInternalSpanData:v5];

    v6 = 0;
    v7 = 0;
    while ([v27 matcherNamesCount] > v6)
    {
      [v26 addMatcherNames:{+[SiriNLUSELFLogUtils convertCDMMatcherName:](SiriNLUSELFLogUtils, "convertCDMMatcherName:", objc_msgSend(v27, "matcherNamesAtIndex:", v6))}];
      v7 |= [v27 matcherNamesAtIndex:v6++] == 2;
    }

    v8 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v9 = [v27 usoGraph];
    v10 = [SiriNLUSELFLogUtils convertUsoGraph:v9];

    v24 = v10;
    if (v10)
    {
      v11 = [v10 mainItem];
      [v26 setUsoGraph:v11];

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
              v16 = [v15 cdmUsoGraphTier1];
              v17 = [v16 usoGraphTier1];
              v18 = [v17 linkedUsoGraphNodeDatas];

              v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v19)
              {
                v20 = *v30;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v30 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [*(*(&v29 + 1) + 8 * j) setLinkedUsoNodeData:{0, v24}];
                  }

                  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
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

+ (id)getTaskFromUserStatedTask:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 task];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToPause:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToProceed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromAcknowledged:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromWantedToRepeat:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromCancelled:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromRejected:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getReferenceFromAccepted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reference];
    v6 = [SiriNLUSELFLogUtils convertUsoGraph:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUserStatedTask:(id)a3
{
  if (a3)
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

+ (id)convertDelegated:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = a3;
  if (v25)
  {
    v23 = objc_alloc_init(MEMORY[0x1E69CF0D8]);
    [v23 setAsrHypothesisIndex:{objc_msgSend(v25, "asrHypothesisIndex")}];
    v3 = [v25 externalParserId];
    [v23 setExternalParserId:v3];

    v24 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [v25 matchingSpans];
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v4);
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

        v8 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v15 = v23;
    [v23 setSiriVocabularySpanCount:v5];
    [v23 setMentionResolverSpanCount:v6];
    [v23 setContextMatcherSpanCount:v7];
    if ([v25 hasRewrite])
    {
      v16 = [v25 rewrite];
      [v23 setRewriteType:{+[SiriNLUSELFLogUtils convertCDMRewriteType:](SiriNLUSELFLogUtils, "convertCDMRewriteType:", objc_msgSend(v16, "rewriteType"))}];

      v17 = objc_alloc(MEMORY[0x1E69CF640]);
      v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v19 = [v17 initWithNSUUID:v18];

      [v23 setLinkId:v19];
      v20 = [SiriNLUSELFLogUtils createDelegatedUserDialogActTier1Event:v25 withLinkId:v19];
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

+ (id)convertWantedToUndo:(id)a3
{
  if (a3)
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

+ (id)convertWantedToPause:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF248]);
    v5 = [v3 taskId];

    if (v5)
    {
      v6 = [v3 taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setTaskId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertWantedToProceed:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF250]);
    v5 = [v3 taskId];

    if (v5)
    {
      v6 = [v3 taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setTaskId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertAcknowledged:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF218]);
    v5 = [v3 systemDialogActId];

    if (v5)
    {
      v6 = [v3 systemDialogActId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setSystemDialogActId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setSystemDialogActId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertWantedToRepeat:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF258]);
    v5 = [v3 systemDialogActId];

    if (v5)
    {
      v6 = [v3 systemDialogActId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setSystemDialogActId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setSystemDialogActId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertCancelled:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF220]);
    v5 = [v3 taskId];

    if (v5)
    {
      v6 = [v3 taskId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setTaskId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setTaskId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRejected:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF238]);
    v5 = [v3 offerId];

    if (v5)
    {
      v6 = [v3 offerId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setOfferId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setOfferId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertAccepted:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF210]);
    v5 = [v3 offerId];

    if (v5)
    {
      v6 = [v3 offerId];
      v7 = [SiriNLUSELFLogUtils convertUUID:v6];
      [v4 setOfferId:v7];
    }

    else
    {
      v6 = +[SiriNLUSELFLogUtils createAllZeroUUID];
      [v4 setOfferId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUserDialogAct:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_27;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF228]);
  v5 = [v3 alignment];
  v6 = [SiriNLUSELFLogUtils convertUtteranceAlignment:v5];
  [v4 setAlignment:v6];

  v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
  if ([v3 hasAccepted])
  {
    v8 = [v3 accepted];
    v9 = [SiriNLUSELFLogUtils convertAccepted:v8];
    [v4 setAccepted:v9];

    v10 = [v3 accepted];
    v11 = [SiriNLUSELFLogUtils getReferenceFromAccepted:v10];
    goto LABEL_17;
  }

  if ([v3 hasRejected])
  {
    v12 = [v3 rejected];
    v13 = [SiriNLUSELFLogUtils convertRejected:v12];
    [v4 setRejected:v13];

    v10 = [v3 rejected];
    v11 = [SiriNLUSELFLogUtils getReferenceFromRejected:v10];
    goto LABEL_17;
  }

  if ([v3 hasCancelled])
  {
    v14 = [v3 cancelled];
    v15 = [SiriNLUSELFLogUtils convertCancelled:v14];
    [v4 setCancelled:v15];

    v10 = [v3 cancelled];
    v11 = [SiriNLUSELFLogUtils getReferenceFromCancelled:v10];
    goto LABEL_17;
  }

  if ([v3 hasWantedToRepeat])
  {
    v16 = [v3 wantedToRepeat];
    v17 = [SiriNLUSELFLogUtils convertWantedToRepeat:v16];
    [v4 setWantedToRepeat:v17];

    v10 = [v3 wantedToRepeat];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToRepeat:v10];
    goto LABEL_17;
  }

  if ([v3 hasAcknowledged])
  {
    v18 = [v3 acknowledged];
    v19 = [SiriNLUSELFLogUtils convertAcknowledged:v18];
    [v4 setAcknowledged:v19];

    v10 = [v3 acknowledged];
    v11 = [SiriNLUSELFLogUtils getReferenceFromAcknowledged:v10];
    goto LABEL_17;
  }

  if ([v3 hasWantedToProceed])
  {
    v20 = [v3 wantedToProceed];
    v21 = [SiriNLUSELFLogUtils convertWantedToProceed:v20];
    [v4 setWantedToProceed:v21];

    v10 = [v3 wantedToProceed];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToProceed:v10];
    goto LABEL_17;
  }

  if ([v3 hasWantedToPause])
  {
    v22 = [v3 wantedToPause];
    v23 = [SiriNLUSELFLogUtils convertWantedToPause:v22];
    [v4 setWantedToPause:v23];

    v10 = [v3 wantedToPause];
    v11 = [SiriNLUSELFLogUtils getReferenceFromWantedToPause:v10];
    goto LABEL_17;
  }

  if ([v3 hasWantedToUndo])
  {
    v32 = [v3 wantedToUndo];
    v33 = [SiriNLUSELFLogUtils convertWantedToUndo:v32];
    [v4 setWantedToUndo:v33];
  }

  else if ([v3 hasDelegated])
  {
    v34 = [v3 delegated];
    v35 = [SiriNLUSELFLogUtils convertDelegated:v34];

    if (v35)
    {
      v36 = [v35 mainItem];
      [v4 setDelegated:v36];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v37 = [v35 tier1Events];
      v38 = [v37 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v38)
      {
        v39 = *v48;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v48 != v39)
            {
              objc_enumerationMutation(v37);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v47 + 1) + 8 * i)];
          }

          v38 = [v37 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v38);
      }
    }
  }

  else if ([v3 hasUserStatedTask])
  {
    v41 = [v3 userStatedTask];
    v42 = [SiriNLUSELFLogUtils convertUserStatedTask:v41];
    [v4 setUserStatedTask:v42];

    v10 = [v3 userStatedTask];
    v11 = [SiriNLUSELFLogUtils getTaskFromUserStatedTask:v10];
LABEL_17:
    v24 = v11;

    if (v24)
    {
      v25 = [v24 mainItem];
      [v4 setReference:v25];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v26 = [v24 tier1Events];
      v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v27)
      {
        v28 = *v44;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(v26);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v43 + 1) + 8 * j)];
          }

          v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
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

+ (id)convertParser:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF128]);
    [v4 setAlgorithm:{+[SiriNLUSELFLogUtils convertCDMParserAlgorithmType:](SiriNLUSELFLogUtils, "convertCDMParserAlgorithmType:", objc_msgSend(v3, "algorithm"))}];
    [v4 setParserId:{objc_msgSend(v3, "parserId")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRepetitionResult:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF138]);
    [v4 setAsrHypothesisIndex:{objc_msgSend(v3, "asrHypothesisIndex")}];
    [v4 setRepetitionType:{+[SiriNLUSELFLogUtils convertCDMRepetitionType:](SiriNLUSELFLogUtils, "convertCDMRepetitionType:", objc_msgSend(v3, "repetitionType"))}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertCorrectionOutcome:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF0D0]);
    [v4 setCorrectionType:{+[SiriNLUSELFLogUtils convertCDMCorrectionType:](SiriNLUSELFLogUtils, "convertCDMCorrectionType:", objc_msgSend(v3, "type"))}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUserParse:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a3;
  if (v25)
  {
    v26 = objc_alloc_init(MEMORY[0x1E69CF230]);
    v3 = [v25 idA];
    v4 = [SiriNLUSELFLogUtils convertUUID:v3];
    [v26 setId:v4];

    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v25 userDialogActs];
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [SiriNLUSELFLogUtils convertUserDialogAct:*(*(&v31 + 1) + 8 * i), v25];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 mainItem];
            [v26 addUserDialogActs:v12];

            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v13 = [v11 tier1Events];
            v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              v15 = *v28;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v28 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v27 + 1) + 8 * j)];
                }

                v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v14);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    [v25 probability];
    [v26 setProbability:?];
    v17 = [v25 repetitionResult];
    v18 = [SiriNLUSELFLogUtils convertRepetitionResult:v17];
    [v26 setRepetitionResult:v18];

    v19 = [v25 parser];
    v20 = [SiriNLUSELFLogUtils convertParser:v19];
    [v26 setParser:v20];

    [v25 comparableProbability];
    [v26 setComparableProbability:?];
    v21 = [v25 correctionOutcome];
    v22 = [SiriNLUSELFLogUtils convertCorrectionOutcome:v21];
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

+ (id)convertReportedFailure:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1D0]);
    v5 = [v3 taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:v5];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v8 = [v3 reason];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setReason:v10];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [v9 tier1Events];
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v28 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }
    }

    v15 = [v3 task];
    v16 = [SiriNLUSELFLogUtils convertUsoGraph:v15];

    if (v16)
    {
      v17 = [v16 mainItem];
      [v4 setTask:v17];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = [v16 tier1Events];
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v24 + 1) + 8 * j)];
          }

          v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

+ (id)convertReportedSuccess:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1D8]);
    v5 = [v3 taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:v5];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v8 = [v3 task];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setTask:v10];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [v9 tier1Events];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v17 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)convertInformed:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E69CF1B8]);
    v3 = [v21 taskId];
    v4 = [SiriNLUSELFLogUtils convertUUID:v3];
    [v22 setTaskId:v4];

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v21 entities];
    v7 = v6;
    v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

          v11 = [SiriNLUSELFLogUtils convertUsoGraph:*(*(&v27 + 1) + 8 * i), v21];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 mainItem];
            [v22 addEntities:v13];

            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v14 = [v12 tier1Events];
            v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v15)
            {
              v16 = *v24;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v24 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [v5 addObject:*(*(&v23 + 1) + 8 * j)];
                }

                v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v15);
            }
          }
        }

        v6 = v7;
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

+ (id)convertGaveOptions:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69CF1B0]);
    v3 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [v17 choices];
    obj = v4;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            v10 = [v8 mainItem];
            [v19 addChoices:v10];

            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v11 = [v9 tier1Events];
            v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              v13 = *v21;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v21 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  [(SiriInstrumentationObjectContainer *)v3 addTier1Event:*(*(&v20 + 1) + 8 * j)];
                }

                v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
              }

              while (v12);
            }
          }
        }

        v4 = obj;
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

+ (id)convertOffered:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1C0]);
    v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v6 = [v3 offeredAct];
    v7 = [SiriNLUSELFLogUtils convertUserDialogAct:v6];

    if (v7)
    {
      v8 = [v7 mainItem];
      [v4 setOfferedAct:v8];

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 tier1Events];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)convertPrompted:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1C8]);
    v5 = [v3 taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:v5];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v8 = [v3 target];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setTarget:v10];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [v9 tier1Events];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v17 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)convertSystemDialogAct:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_32;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF1A0]);
  v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
  v6 = [v3 idA];
  v7 = [SiriNLUSELFLogUtils convertUUID:v6];
  [v4 setId:v7];

  if ([v3 hasPrompted])
  {
    v8 = [v3 prompted];
    v9 = [SiriNLUSELFLogUtils convertPrompted:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setPrompted:v10];
LABEL_21:

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = [v9 tier1Events];
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v26 + 1) + 8 * i)];
          }

          v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }
    }
  }

  else if ([v3 hasOffered])
  {
    v11 = [v3 offered];
    v9 = [SiriNLUSELFLogUtils convertOffered:v11];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setOffered:v10];
      goto LABEL_21;
    }
  }

  else if ([v3 hasGaveOptions])
  {
    v12 = [v3 gaveOptions];
    v9 = [SiriNLUSELFLogUtils convertGaveOptions:v12];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setGaveOptions:v10];
      goto LABEL_21;
    }
  }

  else if ([v3 hasInformed])
  {
    v13 = [v3 informed];
    v9 = [SiriNLUSELFLogUtils convertInformed:v13];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setInformed:v10];
      goto LABEL_21;
    }
  }

  else if ([v3 hasReportedSuccess])
  {
    v14 = [v3 reportedSuccess];
    v9 = [SiriNLUSELFLogUtils convertReportedSuccess:v14];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setReportedSuccess:v10];
      goto LABEL_21;
    }
  }

  else if ([v3 hasReportedFailure])
  {
    v15 = [v3 reportedFailure];
    v9 = [SiriNLUSELFLogUtils convertReportedFailure:v15];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setReportedFailure:v10];
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v3 hasRenderedText])
  {
    v20 = objc_alloc(MEMORY[0x1E69CF640]);
    v21 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v22 = [v20 initWithNSUUID:v21];

    [v4 setLinkId:v22];
    v23 = [SiriNLUSELFLogUtils createSystemDialogActTier1Event:v3 withLinkId:v22];
    [(SiriInstrumentationObjectContainer *)v5 addTier1Event:v23];
  }

  [(SiriInstrumentationObjectContainer *)v5 setMainItem:v4];

LABEL_32:
  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertLegacyNLContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF2B8]);
    [v4 setIsDictationPrompt:{objc_msgSend(v3, "dictationPrompt")}];
    [v4 setIsStrictPrompt:{objc_msgSend(v3, "strictPrompt")}];
    v5 = [v3 previousDomainName];
    [v4 setPreviousDomainName:v5];

    [v4 setIsListenAfterSpeaking:{objc_msgSend(v3, "listenAfterSpeaking")}];
    [v4 setLegacyContextSource:{+[SiriNLUSELFLogUtils convertLegacyContextSource:](SiriNLUSELFLogUtils, "convertLegacyContextSource:", objc_msgSend(v3, "legacyContextSource"))}];
    v6 = objc_alloc(MEMORY[0x1E69CF640]);
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v8 = [v6 initWithNSUUID:v7];

    [v4 setLinkId:v8];
    v9 = objc_alloc_init(SiriInstrumentationObjectContainer);
    [(SiriInstrumentationObjectContainer *)v9 setMainItem:v4];
    v10 = [SiriNLUSELFLogUtils createNLXLegacyNLContextTier1Event:v3 withLinkId:v8];
    [(SiriInstrumentationObjectContainer *)v9 addTier1Event:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertTask:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF1E0]);
    v5 = [v3 taskId];
    v6 = [SiriNLUSELFLogUtils convertUUID:v5];
    [v4 setTaskId:v6];

    v7 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v8 = [v3 task];
    v9 = [SiriNLUSELFLogUtils convertUsoGraph:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setTask:v10];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [v9 tier1Events];
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(SiriInstrumentationObjectContainer *)v7 addTier1Event:*(*(&v18 + 1) + 8 * i)];
          }

          v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    if ([v3 hasScore])
    {
      v15 = [v3 score];
      [v15 value];
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

+ (id)convertNLContext:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v40 = v3;
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
            v11 = [v9 mainItem];
            [v44 addActiveTasks:v11];

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v12 = [v10 tier1Events];
            v13 = [v12 countByEnumeratingWithState:&v61 objects:v73 count:16];
            if (v13)
            {
              v14 = *v62;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v62 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v61 + 1) + 8 * j)];
                }

                v13 = [v12 countByEnumeratingWithState:&v61 objects:v73 count:16];
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
    v16 = [v40 executedTasks];
    obja = v16;
    v17 = [v16 countByEnumeratingWithState:&v57 objects:v72 count:16];
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
            v22 = [v20 mainItem];
            [v44 addExecutedTasks:v22];

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v23 = [v21 tier1Events];
            v24 = [v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
            if (v24)
            {
              v25 = *v54;
              do
              {
                for (m = 0; m != v24; ++m)
                {
                  if (*v54 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v53 + 1) + 8 * m)];
                }

                v24 = [v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
              }

              while (v24);
            }
          }
        }

        v16 = obja;
        v17 = [obja countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v17);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v27 = [v40 systemDialogActs];
    objb = v27;
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v70 count:16];
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
            v33 = [v31 mainItem];
            [v44 addSystemDialogActs:v33];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v34 = [v32 tier1Events];
            v35 = [v34 countByEnumeratingWithState:&v45 objects:v69 count:16];
            if (v35)
            {
              v36 = *v46;
              do
              {
                for (ii = 0; ii != v35; ++ii)
                {
                  if (*v46 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v45 + 1) + 8 * ii)];
                }

                v35 = [v34 countByEnumeratingWithState:&v45 objects:v69 count:16];
              }

              while (v35);
            }
          }
        }

        v27 = objb;
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

+ (BOOL)isLegacyNlContextPresent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (([v4 dictationPrompt] & 1) == 0 && (objc_msgSend(v5, "strictPrompt") & 1) == 0 && (objc_msgSend(v5, "listenAfterSpeaking") & 1) == 0)
    {
      v6 = [v5 hasPreviousDomainName];
      if (v6 && ([v5 previousDomainName], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqualToString:", &stru_1F487A568) & 1) == 0))
      {
      }

      else
      {
        v7 = [v5 renderedTextsCount];
        if (v6)
        {
        }

        if (!v7)
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

+ (BOOL)isNlContextPresent:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && ([v3 activeTasksCount] || objc_msgSend(v4, "executedTasksCount") || objc_msgSend(v4, "systemDialogActsCount"));

  return v5;
}

+ (id)convertTurnContext:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CF200]);
  v5 = objc_alloc_init(SiriInstrumentationObjectContainer);
  v6 = [v3 nlContext];
  v7 = [SiriNLUSELFLogUtils isNlContextPresent:v6];

  if (v7)
  {
    v8 = [v3 nlContext];
    v9 = [SiriNLUSELFLogUtils convertNLContext:v8];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setNlContext:v10];
LABEL_9:
    }
  }

  else
  {
    v11 = [v3 legacyNlContext];
    v12 = [SiriNLUSELFLogUtils isLegacyNlContextPresent:v11];

    if (!v12)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v13 = [v3 legacyNlContext];
    v9 = [SiriNLUSELFLogUtils convertLegacyNLContext:v13];

    if (v9)
    {
      v10 = [v9 mainItem];
      [v4 setLegacyNlContext:v10];
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
    v14 = [v9 tier1Events];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(SiriInstrumentationObjectContainer *)v5 addTier1Event:*(*(&v20 + 1) + 8 * i)];
        }

        v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertTurnInput:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF208]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v3 asrOutputs];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if (v9)
          {
            v10 = [v9 idA];
            v11 = [SiriNLUSELFLogUtils convertUUID:v10];
            [v4 addAsrHypothesisIds:v11];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    [v4 setIsTapToEdit:{objc_msgSend(v3, "tapToEdit")}];
    v12 = objc_alloc_init(SiriInstrumentationObjectContainer);
    v13 = [v3 turnContext];
    v14 = [SiriNLUSELFLogUtils convertTurnContext:v13];

    if (v14)
    {
      v15 = [v14 mainItem];
      [v4 setTurnContext:v15];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = [v14 tier1Events];
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v17)
      {
        v18 = *v23;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(SiriInstrumentationObjectContainer *)v12 addTier1Event:*(*(&v22 + 1) + 8 * j)];
          }

          v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

+ (id)getObjCUsoGraphFromOntologyUsoGraph:()unique_ptr<siri:(std::default_delete<siri::ontology::UsoGraph>>)a3 :ontology::UsoGraph
{
  v3 = *a3.var0;
  if (*a3.var0)
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
    siri::ontology::UsoGraphProtoWriter::toProtobuf(v3, &v5, a3.var0);
    operator new();
  }

  return 0;
}

+ (id)convertUsoEntitySpanTier1:(id)a3 index:(int64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a3;
  if (v31)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CF830]);
    [v5 setIndex:a4];
    if ([v31 hasOriginAppId])
    {
      v6 = [v31 originAppId];
      v7 = [v6 value];
      [v5 setOriginAppId:v7];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = [v31 properties];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E69CF878]);
          v14 = [v12 key];
          [v13 setKey:v14];

          if ([v12 hasValueString])
          {
            v15 = [v12 valueString];
            v16 = [v15 value];
            [v13 setValueString:v16];
          }

          if ([v12 hasValueInt])
          {
            v17 = [v12 valueInt];
            [v13 setValueInt:{objc_msgSend(v17, "value")}];
          }

          if ([v12 hasValueFloat])
          {
            v18 = [v12 valueFloat];
            [v18 value];
            [v13 setValueFloat:?];
          }

          [v5 addProperties:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v9);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v31 alternatives];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v20)
    {
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = objc_alloc_init(MEMORY[0x1E69CF800]);
          v25 = [v23 alternative];
          [v24 setAlternative:v25];

          if ([v23 hasProbability])
          {
            v26 = [v23 probability];
            [v26 value];
            [v24 setProbability:?];
          }

          [v5 addAlternatives:v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    if ([v31 hasOriginEntityId])
    {
      v27 = [v31 originEntityId];
      v28 = [v27 value];
      [v5 setOriginEntityId:v28];
    }
  }

  else
  {
    v5 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUsoEntityIdentifierTier1:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF820]);
    [v6 setIndex:a4];
    v7 = [v5 value];
    [v6 setValue:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUsoNodeDataTier1:(id)a3 index:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF870]);
    [v6 setIndex:a4];
    if ([v5 hasStringPayload])
    {
      v7 = [v5 stringPayload];
      v8 = [v7 value];
      [v6 setStringPayload:v8];
    }

    if ([v5 hasIntegerPayload])
    {
      v9 = [v5 integerPayload];
      [v6 setIntegerPayload:{objc_msgSend(v9, "value")}];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v5 normalizedStringPayloads];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [v6 addNormalizedStringPayloads:*(*(&v16 + 1) + 8 * i)];
        }

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)convertUtteranceSpan:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF888]);
    if ([v3 hasStartIndex])
    {
      [v4 setStartIndex:{objc_msgSend(v3, "startIndex")}];
    }

    if ([v3 hasEndIndex])
    {
      [v4 setEndIndex:{objc_msgSend(v3, "endIndex")}];
    }

    if ([v3 hasStartUnicodeScalarIndex])
    {
      [v4 setStartUnicodeScalarIndex:{objc_msgSend(v3, "startUnicodeScalarIndex")}];
    }

    if ([v3 hasEndUnicodeScalarIndex])
    {
      [v4 setEndUnicodeScalarIndex:{objc_msgSend(v3, "endUnicodeScalarIndex")}];
    }

    if ([v3 hasStartMilliSeconds])
    {
      [v4 setStartMilliseconds:{objc_msgSend(v3, "startMilliSeconds")}];
    }

    if ([v3 hasEndMilliSeconds])
    {
      [v4 setEndMilliseconds:{objc_msgSend(v3, "endMilliSeconds")}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUtteranceAlignment:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF880]);
    if ([v3 hasAsrHypothesisIndex])
    {
      [v4 setAsrHypothesisIndex:{objc_msgSend(v3, "asrHypothesisIndex")}];
    }

    if ([v3 hasNodeIndex])
    {
      [v4 setNodeIndex:{objc_msgSend(v3, "nodeIndex")}];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 spans];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [SiriNLUSELFLogUtils convertUtteranceSpan:*(*(&v12 + 1) + 8 * i)];
          [v4 addSpans:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (int)convertUsoBackingAppBundleType:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[SiriNLUSELFLogUtils getAppBundleTypeEnumsMapping];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:v3];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 intValue];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)convertUsoEntitySpan:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF828]);
    if (a4 == -1)
    {
      a4 = [v5 nodeIndex];
    }

    [v6 setNodeIndex:a4];
    if ([v5 hasSourceComponent])
    {
      v7 = +[SiriNLUSELFLogUtils convertUSOEntitySpanNluComponent:](SiriNLUSELFLogUtils, "convertUSOEntitySpanNluComponent:", [v5 sourceComponent]);
    }

    else
    {
      v7 = 0;
    }

    [v6 setSourceComponent:v7];
    if ([v5 hasLabel])
    {
      v8 = [v5 label];
      v9 = [v8 value];
      [v6 setLabel:v9];
    }

    if ([v5 hasMatchInfo])
    {
      v10 = [v5 matchInfo];
      v11 = [SiriNLUSELFLogUtils convertMatchInfo:v10];
      [v6 setMatchInfo:v11];
    }

    if ([v5 hasStartIndex])
    {
      v12 = [v5 startIndex];
      [v6 setStartIndex:{objc_msgSend(v12, "value")}];
    }

    if ([v5 hasEndIndex])
    {
      v13 = [v5 endIndex];
      [v6 setEndIndex:{objc_msgSend(v13, "value")}];
    }

    if ([v5 hasOriginAppId])
    {
      v14 = [v5 originAppId];
      v15 = [v14 value];
      [v6 setOriginAppBundleIdType:{+[SiriNLUSELFLogUtils convertUsoBackingAppBundleType:](SiriNLUSELFLogUtils, "convertUsoBackingAppBundleType:", v15)}];
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

+ (id)convertUsoEntitySpan:(id)a3
{
  v3 = [SiriNLUSELFLogUtils convertUsoEntitySpan:a3 index:-1];

  return v3;
}

+ (id)convertMatchInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF860]);
    if ([v3 hasMatchSignalBitset])
    {
      [v4 setMatchSignalBitset:{objc_msgSend(v3, "matchSignalBitset")}];
    }

    if ([v3 hasMatchScore])
    {
      v5 = [v3 matchScore];
      [v5 value];
      [v4 setMatchScore:?];
    }

    if ([v3 hasMaxTokenCount])
    {
      v6 = [v3 maxTokenCount];
      [v4 setMaxTokenCount:{objc_msgSend(v6, "value")}];
    }

    if ([v3 hasMatchedTokenCount])
    {
      v7 = [v3 matchedTokenCount];
      [v4 setMatchedTokenCount:{objc_msgSend(v7, "value")}];
    }

    if ([v3 hasMaxStopWordCount])
    {
      v8 = [v3 maxStopWordCount];
      [v4 setMaxStopWordCount:{objc_msgSend(v8, "value")}];
    }

    if ([v3 hasMatchedStopWordCount])
    {
      v9 = [v3 matchedStopWordCount];
      [v4 setMatchedStopWordCount:{objc_msgSend(v9, "value")}];
    }

    if ([v3 hasEditDistance])
    {
      v10 = [v3 editDistance];
      [v4 setEditDistance:{objc_msgSend(v10, "value")}];
    }

    if ([v3 hasMaxAliasCount])
    {
      v11 = [v3 maxAliasCount];
      [v4 setMaxAliasCount:{objc_msgSend(v11, "value")}];
    }

    if ([v3 hasMatchedAliasCount])
    {
      v12 = [v3 matchedAliasCount];
      [v4 setMatchedAliasCount:{objc_msgSend(v12, "value")}];
    }

    for (i = 0; [v3 matchedAliasTypesCount] > i; ++i)
    {
      [v4 addMatchedAliasTypes:{+[SiriNLUSELFLogUtils convertMatchInfoAliasType:](SiriNLUSELFLogUtils, "convertMatchInfoAliasType:", objc_msgSend(v3, "matchedAliasTypesAtIndex:", i))}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUsoEntityIdentifier:(id)a3 index:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69CF818]);
    if (a4 == -1)
    {
      a4 = [v5 nodeIndex];
    }

    [v6 setNodeIndex:a4];
    if ([v5 hasProbability])
    {
      v7 = [v5 probability];
      [v7 value];
      [v6 setProbability:?];
    }

    if ([v5 hasNamespaceA])
    {
      v8 = [v5 namespaceA];
      v9 = [v8 value];
      [v6 setIdentifierNamespace:v9];
    }

    if ([v5 hasSourceComponent])
    {
      v10 = +[SiriNLUSELFLogUtils convertUSOEntityIdentifierNluComponent:](SiriNLUSELFLogUtils, "convertUSOEntityIdentifierNluComponent:", [v5 sourceComponent]);
    }

    else
    {
      v10 = 0;
    }

    [v6 setSourceNluComponent:v10];
    if ([v5 hasBackingAppBundleId])
    {
      v11 = [v5 backingAppBundleId];
      [v6 setBackingAppBundleType:{+[SiriNLUSELFLogUtils convertUsoBackingAppBundleType:](SiriNLUSELFLogUtils, "convertUsoBackingAppBundleType:", v11)}];
    }

    else
    {
      [v6 setBackingAppBundleType:0];
    }

    if ([v5 hasGroupIndex])
    {
      [v6 setGroupIndex:{objc_msgSend(v5, "groupIndex")}];
    }

    if ([v5 hasInterpretationGroup])
    {
      [v6 setInterpretationGroup:{objc_msgSend(v5, "interpretationGroup")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertUsoEntityIdentifier:(id)a3
{
  v3 = [SiriNLUSELFLogUtils convertUsoEntityIdentifier:a3 index:-1];

  return v3;
}

+ (id)convertUsoEdge:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF808]);
    [v4 setFromIndex:{objc_msgSend(v3, "fromIndex")}];
    [v4 setToIndex:{objc_msgSend(v3, "toIndex")}];
    if ([v3 hasLabel])
    {
      v5 = objc_alloc_init(MEMORY[0x1E69CF810]);
      v6 = [v3 label];
      [v5 setUsoElementId:{objc_msgSend(v6, "usoElementId")}];

      v7 = [v3 label];
      [v5 setEnumeration:{objc_msgSend(v7, "enumeration")}];

      v8 = [v3 label];
      v9 = [v8 hasBaseEdgeLabel];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E69CF858]);
        v11 = [v3 label];
        v12 = [v11 baseEdgeLabel];
        v13 = [v12 value];
        [v10 setValue:v13];

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

+ (id)convertUsoNode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF868]);
    if ([v3 hasUsoElementId])
    {
      [v4 setUsoElementId:{objc_msgSend(v3, "usoElementId")}];
    }

    if ([v3 hasUsoVerbElementId])
    {
      v5 = [v3 usoVerbElementId];
      [v4 setUsoVerbElementId:{objc_msgSend(v5, "value")}];
    }

    if ([v3 hasEntityLabel])
    {
      v6 = [v3 entityLabel];
      [v4 setEntityLabel:v6];
    }

    if ([v3 hasVerbLabel])
    {
      v7 = [v3 verbLabel];
      [v4 setVerbLabel:v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertNonTier1UsoGraph:(id)a3 identifiers:(id)a4 entitySpans:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69CF840]);
    v11 = [v7 version];
    v12 = [SiriNLUSELFLogUtils convertVersion:v11];
    [v10 setVersion:v12];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v13 = [v7 nodes];
    v14 = [v13 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v14)
    {
      v15 = *v73;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v73 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [SiriNLUSELFLogUtils convertUsoNode:*(*(&v72 + 1) + 8 * i)];
          [v10 addNodes:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v14);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v18 = [v7 edges];
    v19 = [v18 countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v19)
    {
      v20 = *v69;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [SiriNLUSELFLogUtils convertUsoEdge:*(*(&v68 + 1) + 8 * j)];
          [v10 addEdges:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v19);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v23 = [v7 alignments];
    v24 = [v23 countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v24)
    {
      v25 = *v65;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [SiriNLUSELFLogUtils convertUtteranceAlignment:*(*(&v64 + 1) + 8 * k)];
          [v10 addAlignments:v27];
        }

        v24 = [v23 countByEnumeratingWithState:&v64 objects:v80 count:16];
      }

      while (v24);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v28 = [v7 identifiers];
    v29 = [v28 countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v29)
    {
      v30 = *v61;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = [SiriNLUSELFLogUtils convertUsoEntityIdentifier:*(*(&v60 + 1) + 8 * m)];
          [v10 addIdentifiers:v32];
        }

        v29 = [v28 countByEnumeratingWithState:&v60 objects:v79 count:16];
      }

      while (v29);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v33 = [v7 spans];
    v34 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
    if (v34)
    {
      v35 = *v57;
      do
      {
        for (n = 0; n != v34; ++n)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = [SiriNLUSELFLogUtils convertUsoEntitySpan:*(*(&v56 + 1) + 8 * n)];
          [v10 addSpans:v37];
        }

        v34 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
      }

      while (v34);
    }

    if (v8)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = v8;
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

    if (v9)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v42 = v9;
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

+ (id)convertNonTier1UsoGraph:(id)a3
{
  v3 = [SiriNLUSELFLogUtils convertNonTier1UsoGraph:a3 identifiers:0 entitySpans:0];

  return v3;
}

+ (id)convertUsoGraph:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = v3;
  if (v3)
  {
    SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v3);
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

+ (id)convertVersion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CF648]);
    [v4 setMajor:{objc_msgSend(v3, "majorVersion")}];
    [v4 setMinor:{objc_msgSend(v3, "minorVersion")}];
    [v4 setPatch:{objc_msgSend(v3, "patchVersion")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8[1] = [v3 highInt];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8];
    v6 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createDelegatedUserDialogActTier1Event:(id)a3 withLinkId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF0E0]);
    [v7 setLinkId:v6];
    if ([v5 hasRewrite])
    {
      v8 = [v5 rewrite];
      v9 = [v8 rewriteType];

      if (v9 != 3)
      {
        v10 = [v5 rewrite];
        v11 = [v10 rewrittenUtterance];
        [v7 setRewrittenUtterance:v11];
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

+ (id)createSystemDialogActTier1Event:(id)a3 withLinkId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF1A8]);
    [v7 setLinkId:v6];
    if ([v5 hasRenderedText])
    {
      v8 = [v5 renderedText];
      v9 = [v8 value];
      [v7 setRenderedText:v9];
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

+ (id)createNLXLegacyNLContextTier1Event:(id)a3 withLinkId:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CF2C0]);
    [v7 setLinkId:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v5 renderedTexts];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (v12 && [*(*(&v17 + 1) + 8 * i) hasValue])
          {
            v13 = [v12 value];
            [v7 addRenderedTexts:v13];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)createCdmXpcEventProcessingEndedLog:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69CF278]);
  [v7 setExists:1];
  v8 = objc_alloc_init(MEMORY[0x1E69CF270]);
  [v8 setEnded:v7];
  if (v5)
  {
    v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v5];
    [v8 setContextId:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v10 setEventMetadata:v6];
  [v10 setCdmXpcEventProcessingContext:v8];
  v11 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v11 setMainEvent:v10];

  return v11;
}

+ (id)createContextUpdateEndedLog:(id)a3 contextUpdateResponse:(id)a4 metadata:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v7 = a4;
  v26 = a5;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CF0C8]);
    if (v25)
    {
      v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v25];
      [v8 setContextId:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; [v7 reformedTurnInputBundlesCount] > i; ++i)
    {
      v12 = [v7 reformedTurnInputBundlesAtIndex:i];
      v13 = [SiriNLUSELFLogUtils convertReformedTurnInputBundle:v12];

      if (v13)
      {
        v14 = [v13 mainItem];
        [v8 addReformedTurnInputBundles:v14];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v13 tier1Events];
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          v17 = *v28;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [v10 addObject:*(*(&v27 + 1) + 8 * j)];
            }

            v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v16);
        }
      }
    }

    v19 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v19 setEventMetadata:v26];
    [v19 setCdmContextUpdateEnded:v8];
    v20 = objc_alloc_init(SiriInstrumentationEventContainer);
    [(SiriInstrumentationEventContainer *)v20 setMainEvent:v19];
    v21 = [v10 copy];
    [(SiriInstrumentationEventContainer *)v20 setTier1Events:v21];

    v22 = [(SiriInstrumentationEventContainer *)v20 tier1Events];
    [SiriNLUSELFLogUtils populateEventsWithMetadata:v22 metadata:v26];
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)createTokenizationEndedLog:(id)a3 tokenizationResponse:(id)a4 metadata:(id)a5
{
  v5 = [SiriNLUSELFLogUtils createTokenizationEndedLog:a3 tokenizationResponse:a4 tokenizationInputType:0 metadata:a5];

  return v5;
}

+ (id)createMatchingSpanEndedLog:(id)a3 spanMatchResponse:(id)a4 metadata:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v7 = a4;
  v33 = a5;
  if (v7)
  {
    v34 = objc_alloc_init(MEMORY[0x1E69CF100]);
    if (v32)
    {
      v8 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v32];
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
    for (i = 0; [v7 matchingSpansCount] > i; ++i)
    {
      v15 = [v7 matchingSpansAtIndex:i];
      v16 = [SiriNLUSELFLogUtils convertMatchingSpan:v15];

      if (v16)
      {
        v17 = [v16 mainItem];
        [v34 addMatchingSpans:v17];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = [v16 tier1Events];
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v19)
        {
          v20 = *v36;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [v9 addObject:*(*(&v35 + 1) + 8 * j)];
            }

            v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v19);
        }
      }

      v22 = [v7 matchingSpansAtIndex:i];
      v23 = [SiriNLUSELFLogUtils convertMatchingSpanTier1:v22];

      [v10 addMatchingSpans:v23];
    }

    v24 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v24 setEventMetadata:v33];
    [v24 setCdmMatchingSpanEndedTier1:v10];
    [v9 addObject:v24];
    v25 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
    [v25 setEventMetadata:v33];
    [v25 setCdmMatchingSpanEnded:v34];
    v26 = objc_alloc_init(SiriInstrumentationEventContainer);
    [(SiriInstrumentationEventContainer *)v26 setMainEvent:v25];
    v27 = [v9 copy];
    [(SiriInstrumentationEventContainer *)v26 setTier1Events:v27];

    v28 = [(SiriInstrumentationEventContainer *)v26 tier1Events];
    [SiriNLUSELFLogUtils populateEventsWithMetadata:v28 metadata:v33];
  }

  else
  {
    v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)createCDMAssetsReportedLog:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69CF080]);
  [v7 setAssets:v5];
  v8 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v8 setEventMetadata:v6];
  [v8 setCdmAssetsReported:v7];
  v9 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v9 setMainEvent:v8];

  return v9;
}

+ (id)createCDMSetupMissingAssetsDetectedLog:(id)a3 services:(id)a4 metadata:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E69CF188]);
  v11 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v7];
  [v10 setContextId:v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v8;
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
  [v16 setEventMetadata:v9];
  [v16 setCdmSetupMissingAssetsDetected:v10];
  v17 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v17 setMainEvent:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)createCDMAssetSetupEndedLog:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69CF068]);
  [v7 setExists:1];
  v8 = objc_alloc_init(MEMORY[0x1E69CF060]);
  [v8 setEnded:v7];
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v5];
  [v8 setContextId:v9];

  v10 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v10 setEventMetadata:v6];
  [v10 setCdmAssetSetupContext:v8];
  v11 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v11 setMainEvent:v10];

  return v11;
}

+ (id)createCDMAssetSetupStartedLog:(id)a3 serviceTypes:(id)a4 metadata:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E69CF078]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
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
  v16 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v7];
  [v15 setContextId:v16];

  v17 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v17 setEventMetadata:v9];
  [v17 setCdmAssetSetupContext:v15];
  v18 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v18 setMainEvent:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)createCDMAllServicesWarmupFailedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF050]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setFailed:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesWarmupEndedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF048]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesWarmupStartedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF058]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF040]);
  [v5 setStartedOrChanged:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMClientWarmupEndedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF0B0]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF0A8]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmClientWarmupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupFailedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF030]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setFailed:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupEndedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF028]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMAllServicesSetupStartedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF038]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF020]);
  [v5 setStartedOrChanged:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmAllServicesSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMClientSetupEndedLog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CF090]);
  [v4 setExists:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CF088]);
  [v5 setEnded:v4];
  v6 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v6 setEventMetadata:v3];
  [v6 setCdmClientSetupContext:v5];
  v7 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v7 setMainEvent:v6];

  return v7;
}

+ (id)createCDMRequestEndedLog:(id)a3 metadata:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = a4;
  v30 = objc_alloc_init(MEMORY[0x1E69CF148]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v29)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [v29 parses];
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [SiriNLUSELFLogUtils convertUserParse:*(*(&v35 + 1) + 8 * i)];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 mainItem];
            [v30 addParses:v12];

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v13 = [v11 tier1Events];
            v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v14)
            {
              v15 = *v32;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v32 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  [v5 addObject:*(*(&v31 + 1) + 8 * j)];
                }

                v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v14);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    v17 = [v29 languageVariantResult];
    v18 = v17 == 0;

    if (!v18)
    {
      v19 = [v29 languageVariantResult];
      v20 = [SiriNLUSELFLogUtils convertLvcResult:v19];
      [v30 setLanguageVariantClassifierResult:v20];
    }
  }

  v21 = objc_alloc_init(MEMORY[0x1E69CF140]);
  [v21 setEnded:v30];
  v22 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v22 setEventMetadata:v28];
  [v22 setCdmRequestContext:v21];
  v23 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v23 setMainEvent:v22];
  v24 = [v5 copy];
  [(SiriInstrumentationEventContainer *)v23 setTier1Events:v24];

  v25 = [(SiriInstrumentationEventContainer *)v23 tier1Events];
  [SiriNLUSELFLogUtils populateEventsWithMetadata:v25 metadata:v28];

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)createNLXCurareContext:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69CF2B0]);
  v8 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v5];
  [v7 setCurareId:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v9 setNlxCurareContext:v7];
  [v9 setEventMetadata:v6];
  v10 = objc_alloc_init(SiriInstrumentationEventContainer);
  [(SiriInstrumentationEventContainer *)v10 setMainEvent:v9];

  return v10;
}

+ (id)createNLXClientEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithRequestId:(id)a5 andWithSubRequestId:(id)a6 andWithResultCandidateId:(id)a7 andWithRequester:(int *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_alloc_init(MEMORY[0x1E69CF2A8]);
  v19 = [SiriNLUSELFLogUtils convertUUID:v13];
  [v18 setNlId:v19];

  v20 = [SiriNLUSELFLogUtils convertUUID:v14];
  [v18 setTrpId:v20];

  v21 = [SiriNLUSELFLogUtils convertUUID:v15];
  [v18 setRequestId:v21];

  v22 = [SiriNLUSELFLogUtils convertUUID:v16];
  [v18 setSubRequestId:v22];

  [v18 setResultCandidateId:v17];
  [v18 setComponentInvocationSource:{+[SiriNLUSELFLogUtils convertComponentInvocationSource:](SiriNLUSELFLogUtils, "convertComponentInvocationSource:", *a8)}];

  return v18;
}

+ (id)createNLXClientEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5 andWithRequester:(int *)a6
{
  v6 = [a1 createNLXClientEventMetadataWithNlId:a3 andWithTrpId:a4 andWithRequestId:0 andWithSubRequestId:0 andWithResultCandidateId:a5 andWithRequester:a6];

  return v6;
}

+ (void)populateEventsWithMetadata:(id)a3 metadata:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
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