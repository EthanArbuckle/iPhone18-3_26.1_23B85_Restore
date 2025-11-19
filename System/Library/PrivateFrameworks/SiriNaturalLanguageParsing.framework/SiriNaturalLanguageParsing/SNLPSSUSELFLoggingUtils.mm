@interface SNLPSSUSELFLoggingUtils
+ (id)buildMetadataFromRequestId:(id)a3;
+ (id)buildMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5;
+ (id)generateRandomUUID;
+ (void)emitEvent:(id)a3;
+ (void)emitEventBackgroundUpdate:(id)a3 backgroundUpdateContextBuilder:(id)a4;
+ (void)emitEventUserRequest:(id)a3 userRequestContextBuilder:(id)a4;
+ (void)logBackgroundUpdateEnded:(id)a3 locale:(id)a4 appInfos:(id)a5;
+ (void)logBackgroundUpdateFailed:(id)a3;
+ (void)logUserRequestEnded:(id)a3 triggeredCacheEntryInfos:(id)a4;
+ (void)logUserRequestFailed:(id)a3;
+ (void)logUserRequestStarted:(id)a3;
@end

@implementation SNLPSSUSELFLoggingUtils

+ (id)generateRandomUUID
{
  v5 = 0;
  v6 = 0;
  v2 = [MEMORY[0x277CCAD78] UUID];
  [v2 getUUIDBytes:&v5];
  v3 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v3 setNamespaceA:0];
  [v3 setLowInt:v5];
  [v3 setHighInt:v6];

  return v3;
}

+ (void)emitEventBackgroundUpdate:(id)a3 backgroundUpdateContextBuilder:(id)a4
{
  v6 = MEMORY[0x277D59138];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [a1 buildMetadataWithNlId:v8 andWithTrpId:0 andWithResultCandidateId:0];

  v7[2](v7, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__SNLPSSUSELFLoggingUtils_emitEventBackgroundUpdate_backgroundUpdateContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [a1 emitEvent:v13];
}

void __84__SNLPSSUSELFLoggingUtils_emitEventBackgroundUpdate_backgroundUpdateContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setSsuBackgroundRequestContext:*(a1 + 40)];
}

+ (void)emitEventUserRequest:(id)a3 userRequestContextBuilder:(id)a4
{
  v6 = MEMORY[0x277D59160];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [a1 buildMetadataFromRequestId:v8];

  v7[2](v7, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SNLPSSUSELFLoggingUtils_emitEventUserRequest_userRequestContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [a1 emitEvent:v13];
}

void __74__SNLPSSUSELFLoggingUtils_emitEventUserRequest_userRequestContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setSsuUserRequestContext:*(a1 + 40)];
}

+ (void)emitEvent:(id)a3
{
  v3 = MEMORY[0x277D590F0];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  v4[2](v4, v6);

  v5 = [MEMORY[0x277D552C0] sharedStream];
  [v5 emitMessage:v6];
}

+ (id)buildMetadataFromRequestId:(id)a3
{
  v4 = [MEMORY[0x277D5DEF8] extractRequestLinkData:a3];
  v5 = [v4 nlId];
  v6 = [v4 trpId];
  v7 = [v4 resultCandidateId];
  v8 = [a1 buildMetadataWithNlId:v5 andWithTrpId:v6 andWithResultCandidateId:v7];

  return v8;
}

+ (id)buildMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5
{
  v7 = 0;
  v5 = [MEMORY[0x277D5DEF8] createNLXClientEventMetadataWithNlId:a3 andWithTrpId:a4 andWithResultCandidateId:a5 andWithRequester:&v7];

  return v5;
}

+ (void)logBackgroundUpdateFailed:(id)a3
{
  v4 = MEMORY[0x277D59148];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SNLPSSUSELFLoggingUtils_logBackgroundUpdateFailed___block_invoke;
  v8[3] = &unk_2784B6EE0;
  v9 = v6;
  v7 = v6;
  [a1 emitEventBackgroundUpdate:v5 backgroundUpdateContextBuilder:v8];
}

+ (void)logBackgroundUpdateEnded:(id)a3 locale:(id)a4 appInfos:(id)a5
{
  v7 = MEMORY[0x277D59140];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  [v10 setAppInfos:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SNLPSSUSELFLoggingUtils_logBackgroundUpdateEnded_locale_appInfos___block_invoke;
  v12[3] = &unk_2784B6EE0;
  v13 = v10;
  v11 = v10;
  [a1 emitEventBackgroundUpdate:v9 backgroundUpdateContextBuilder:v12];
}

+ (void)logUserRequestFailed:(id)a3
{
  v4 = MEMORY[0x277D59170];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SNLPSSUSELFLoggingUtils_logUserRequestFailed___block_invoke;
  v8[3] = &unk_2784B6EB8;
  v9 = v6;
  v7 = v6;
  [a1 emitEventUserRequest:v5 userRequestContextBuilder:v8];
}

+ (void)logUserRequestEnded:(id)a3 triggeredCacheEntryInfos:(id)a4
{
  v6 = MEMORY[0x277D59168];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setTriggeredCacheEntryInfos:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SNLPSSUSELFLoggingUtils_logUserRequestEnded_triggeredCacheEntryInfos___block_invoke;
  v11[3] = &unk_2784B6EB8;
  v12 = v9;
  v10 = v9;
  [a1 emitEventUserRequest:v8 userRequestContextBuilder:v11];
}

+ (void)logUserRequestStarted:(id)a3
{
  v4 = MEMORY[0x277D59180];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setExists:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SNLPSSUSELFLoggingUtils_logUserRequestStarted___block_invoke;
  v8[3] = &unk_2784B6EB8;
  v9 = v6;
  v7 = v6;
  [a1 emitEventUserRequest:v5 userRequestContextBuilder:v8];
}

@end