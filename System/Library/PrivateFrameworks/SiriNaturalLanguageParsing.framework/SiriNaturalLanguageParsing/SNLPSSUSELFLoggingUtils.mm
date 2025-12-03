@interface SNLPSSUSELFLoggingUtils
+ (id)buildMetadataFromRequestId:(id)id;
+ (id)buildMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId;
+ (id)generateRandomUUID;
+ (void)emitEvent:(id)event;
+ (void)emitEventBackgroundUpdate:(id)update backgroundUpdateContextBuilder:(id)builder;
+ (void)emitEventUserRequest:(id)request userRequestContextBuilder:(id)builder;
+ (void)logBackgroundUpdateEnded:(id)ended locale:(id)locale appInfos:(id)infos;
+ (void)logBackgroundUpdateFailed:(id)failed;
+ (void)logUserRequestEnded:(id)ended triggeredCacheEntryInfos:(id)infos;
+ (void)logUserRequestFailed:(id)failed;
+ (void)logUserRequestStarted:(id)started;
@end

@implementation SNLPSSUSELFLoggingUtils

+ (id)generateRandomUUID
{
  v5 = 0;
  v6 = 0;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [uUID getUUIDBytes:&v5];
  v3 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v3 setNamespaceA:0];
  [v3 setLowInt:v5];
  [v3 setHighInt:v6];

  return v3;
}

+ (void)emitEventBackgroundUpdate:(id)update backgroundUpdateContextBuilder:(id)builder
{
  v6 = MEMORY[0x277D59138];
  builderCopy = builder;
  updateCopy = update;
  v9 = objc_alloc_init(v6);
  v10 = [self buildMetadataWithNlId:updateCopy andWithTrpId:0 andWithResultCandidateId:0];

  builderCopy[2](builderCopy, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__SNLPSSUSELFLoggingUtils_emitEventBackgroundUpdate_backgroundUpdateContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [self emitEvent:v13];
}

void __84__SNLPSSUSELFLoggingUtils_emitEventBackgroundUpdate_backgroundUpdateContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setSsuBackgroundRequestContext:*(a1 + 40)];
}

+ (void)emitEventUserRequest:(id)request userRequestContextBuilder:(id)builder
{
  v6 = MEMORY[0x277D59160];
  builderCopy = builder;
  requestCopy = request;
  v9 = objc_alloc_init(v6);
  v10 = [self buildMetadataFromRequestId:requestCopy];

  builderCopy[2](builderCopy, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SNLPSSUSELFLoggingUtils_emitEventUserRequest_userRequestContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [self emitEvent:v13];
}

void __74__SNLPSSUSELFLoggingUtils_emitEventUserRequest_userRequestContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setSsuUserRequestContext:*(a1 + 40)];
}

+ (void)emitEvent:(id)event
{
  v3 = MEMORY[0x277D590F0];
  eventCopy = event;
  v6 = objc_alloc_init(v3);
  eventCopy[2](eventCopy, v6);

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v6];
}

+ (id)buildMetadataFromRequestId:(id)id
{
  v4 = [MEMORY[0x277D5DEF8] extractRequestLinkData:id];
  nlId = [v4 nlId];
  trpId = [v4 trpId];
  resultCandidateId = [v4 resultCandidateId];
  v8 = [self buildMetadataWithNlId:nlId andWithTrpId:trpId andWithResultCandidateId:resultCandidateId];

  return v8;
}

+ (id)buildMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId
{
  v7 = 0;
  v5 = [MEMORY[0x277D5DEF8] createNLXClientEventMetadataWithNlId:id andWithTrpId:trpId andWithResultCandidateId:candidateId andWithRequester:&v7];

  return v5;
}

+ (void)logBackgroundUpdateFailed:(id)failed
{
  v4 = MEMORY[0x277D59148];
  failedCopy = failed;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SNLPSSUSELFLoggingUtils_logBackgroundUpdateFailed___block_invoke;
  v8[3] = &unk_2784B6EE0;
  v9 = v6;
  v7 = v6;
  [self emitEventBackgroundUpdate:failedCopy backgroundUpdateContextBuilder:v8];
}

+ (void)logBackgroundUpdateEnded:(id)ended locale:(id)locale appInfos:(id)infos
{
  v7 = MEMORY[0x277D59140];
  infosCopy = infos;
  endedCopy = ended;
  v10 = objc_alloc_init(v7);
  [v10 setAppInfos:infosCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SNLPSSUSELFLoggingUtils_logBackgroundUpdateEnded_locale_appInfos___block_invoke;
  v12[3] = &unk_2784B6EE0;
  v13 = v10;
  v11 = v10;
  [self emitEventBackgroundUpdate:endedCopy backgroundUpdateContextBuilder:v12];
}

+ (void)logUserRequestFailed:(id)failed
{
  v4 = MEMORY[0x277D59170];
  failedCopy = failed;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SNLPSSUSELFLoggingUtils_logUserRequestFailed___block_invoke;
  v8[3] = &unk_2784B6EB8;
  v9 = v6;
  v7 = v6;
  [self emitEventUserRequest:failedCopy userRequestContextBuilder:v8];
}

+ (void)logUserRequestEnded:(id)ended triggeredCacheEntryInfos:(id)infos
{
  v6 = MEMORY[0x277D59168];
  infosCopy = infos;
  endedCopy = ended;
  v9 = objc_alloc_init(v6);
  [v9 setTriggeredCacheEntryInfos:infosCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SNLPSSUSELFLoggingUtils_logUserRequestEnded_triggeredCacheEntryInfos___block_invoke;
  v11[3] = &unk_2784B6EB8;
  v12 = v9;
  v10 = v9;
  [self emitEventUserRequest:endedCopy userRequestContextBuilder:v11];
}

+ (void)logUserRequestStarted:(id)started
{
  v4 = MEMORY[0x277D59180];
  startedCopy = started;
  v6 = objc_alloc_init(v4);
  [v6 setExists:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SNLPSSUSELFLoggingUtils_logUserRequestStarted___block_invoke;
  v8[3] = &unk_2784B6EB8;
  v9 = v6;
  v7 = v6;
  [self emitEventUserRequest:startedCopy userRequestContextBuilder:v8];
}

@end