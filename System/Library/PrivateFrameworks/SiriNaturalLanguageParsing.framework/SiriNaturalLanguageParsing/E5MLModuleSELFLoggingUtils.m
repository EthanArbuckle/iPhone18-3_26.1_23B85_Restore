@interface E5MLModuleSELFLoggingUtils
+ (id)_buildMetadataWithNlId:(id)a3;
+ (id)_buildMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5;
+ (id)_generateRandomUUID;
+ (id)logMilCompilationStarted;
+ (id)logMilCompilationStartedWithMetadata:(id)a3;
+ (void)emitEvent:(id)a3;
+ (void)emitEventMilAssetAcquisition:(id)a3 milAssetAcquisitionContextBuilder:(id)a4;
+ (void)emitEventMilAssetAcquisitionWithMetadata:(id)a3 milAssetAcquisitionContextBuilder:(id)a4;
@end

@implementation E5MLModuleSELFLoggingUtils

+ (id)_generateRandomUUID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  [v2 getUUIDBytes:&v5];
  v3 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v2];

  return v3;
}

+ (void)emitEventMilAssetAcquisitionWithMetadata:(id)a3 milAssetAcquisitionContextBuilder:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D590C0];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v8[2](v8, v9);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisitionWithMetadata_milAssetAcquisitionContextBuilder___block_invoke;
  v12[3] = &unk_2784B6F08;
  v13 = v6;
  v14 = v9;
  v10 = v9;
  v11 = v6;
  [a1 emitEvent:v12];
}

void __105__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisitionWithMetadata_milAssetAcquisitionContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setMilAssetAcquisitionContext:*(a1 + 40)];
}

+ (void)emitEventMilAssetAcquisition:(id)a3 milAssetAcquisitionContextBuilder:(id)a4
{
  v6 = MEMORY[0x277D590C0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [a1 _buildMetadataWithNlId:v8];

  v7[2](v7, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisition_milAssetAcquisitionContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [a1 emitEvent:v13];
}

void __93__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisition_milAssetAcquisitionContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setMilAssetAcquisitionContext:*(a1 + 40)];
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

+ (id)_buildMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithResultCandidateId:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277D590F8];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  [v11 setNlId:v10];

  if (v7)
  {
    [v11 setTrpId:v7];
  }

  if (v8)
  {
    [v11 setResultCandidateId:v8];
  }

  [v11 setComponentInvocationSource:0];

  return v11;
}

+ (id)_buildMetadataWithNlId:(id)a3
{
  v3 = MEMORY[0x277D590F8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setNlId:v4];

  return v5;
}

void __93__E5MLModuleSELFLoggingUtils_logMilCompilationFailed_acquisitionType_errorCode_errorMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFailed:v3];
  [v4 setContextId:*(a1 + 40)];
}

void __69__E5MLModuleSELFLoggingUtils_logMilCompilationEnded_acquisitionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEnded:v3];
  [v4 setContextId:*(a1 + 40)];
}

+ (id)logMilCompilationStarted
{
  v3 = objc_alloc_init(MEMORY[0x277D590D8]);
  [v3 setModel:1];
  v4 = [a1 _generateRandomUUID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__E5MLModuleSELFLoggingUtils_logMilCompilationStarted__block_invoke;
  v10[3] = &unk_2784B6E70;
  v11 = v3;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  [a1 emitEventMilAssetAcquisition:v5 milAssetAcquisitionContextBuilder:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __54__E5MLModuleSELFLoggingUtils_logMilCompilationStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStartedOrChanged:v3];
  [v4 setContextId:*(a1 + 40)];
}

void __115__E5MLModuleSELFLoggingUtils_logMilCompilationFailedWithMetadata_contextId_acquisitionType_errorCode_errorMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFailed:v3];
  [v4 setContextId:*(a1 + 40)];
}

void __91__E5MLModuleSELFLoggingUtils_logMilCompilationEndedWithMetadata_contextId_acquisitionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEnded:v3];
  [v4 setContextId:*(a1 + 40)];
}

+ (id)logMilCompilationStartedWithMetadata:(id)a3
{
  v4 = MEMORY[0x277D590D8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setModel:1];
  v7 = [a1 _generateRandomUUID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__E5MLModuleSELFLoggingUtils_logMilCompilationStartedWithMetadata___block_invoke;
  v13[3] = &unk_2784B6E70;
  v14 = v6;
  v8 = v7;
  v15 = v8;
  v9 = v6;
  [a1 emitEventMilAssetAcquisitionWithMetadata:v5 milAssetAcquisitionContextBuilder:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __67__E5MLModuleSELFLoggingUtils_logMilCompilationStartedWithMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStartedOrChanged:v3];
  [v4 setContextId:*(a1 + 40)];
}

@end