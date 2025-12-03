@interface E5MLModuleSELFLoggingUtils
+ (id)_buildMetadataWithNlId:(id)id;
+ (id)_buildMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId;
+ (id)_generateRandomUUID;
+ (id)logMilCompilationStarted;
+ (id)logMilCompilationStartedWithMetadata:(id)metadata;
+ (void)emitEvent:(id)event;
+ (void)emitEventMilAssetAcquisition:(id)acquisition milAssetAcquisitionContextBuilder:(id)builder;
+ (void)emitEventMilAssetAcquisitionWithMetadata:(id)metadata milAssetAcquisitionContextBuilder:(id)builder;
@end

@implementation E5MLModuleSELFLoggingUtils

+ (id)_generateRandomUUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  [uUID getUUIDBytes:&v5];
  v3 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:uUID];

  return v3;
}

+ (void)emitEventMilAssetAcquisitionWithMetadata:(id)metadata milAssetAcquisitionContextBuilder:(id)builder
{
  metadataCopy = metadata;
  v7 = MEMORY[0x277D590C0];
  builderCopy = builder;
  v9 = objc_alloc_init(v7);
  builderCopy[2](builderCopy, v9);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisitionWithMetadata_milAssetAcquisitionContextBuilder___block_invoke;
  v12[3] = &unk_2784B6F08;
  v13 = metadataCopy;
  v14 = v9;
  v10 = v9;
  v11 = metadataCopy;
  [self emitEvent:v12];
}

void __105__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisitionWithMetadata_milAssetAcquisitionContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setMilAssetAcquisitionContext:*(a1 + 40)];
}

+ (void)emitEventMilAssetAcquisition:(id)acquisition milAssetAcquisitionContextBuilder:(id)builder
{
  v6 = MEMORY[0x277D590C0];
  builderCopy = builder;
  acquisitionCopy = acquisition;
  v9 = objc_alloc_init(v6);
  v10 = [self _buildMetadataWithNlId:acquisitionCopy];

  builderCopy[2](builderCopy, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisition_milAssetAcquisitionContextBuilder___block_invoke;
  v13[3] = &unk_2784B6F08;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [self emitEvent:v13];
}

void __93__E5MLModuleSELFLoggingUtils_emitEventMilAssetAcquisition_milAssetAcquisitionContextBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEventMetadata:v3];
  [v4 setMilAssetAcquisitionContext:*(a1 + 40)];
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

+ (id)_buildMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithResultCandidateId:(id)candidateId
{
  trpIdCopy = trpId;
  candidateIdCopy = candidateId;
  v9 = MEMORY[0x277D590F8];
  idCopy = id;
  v11 = objc_alloc_init(v9);
  [v11 setNlId:idCopy];

  if (trpIdCopy)
  {
    [v11 setTrpId:trpIdCopy];
  }

  if (candidateIdCopy)
  {
    [v11 setResultCandidateId:candidateIdCopy];
  }

  [v11 setComponentInvocationSource:0];

  return v11;
}

+ (id)_buildMetadataWithNlId:(id)id
{
  v3 = MEMORY[0x277D590F8];
  idCopy = id;
  v5 = objc_alloc_init(v3);
  [v5 setNlId:idCopy];

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
  _generateRandomUUID = [self _generateRandomUUID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__E5MLModuleSELFLoggingUtils_logMilCompilationStarted__block_invoke;
  v10[3] = &unk_2784B6E70;
  v11 = v3;
  v5 = _generateRandomUUID;
  v12 = v5;
  v6 = v3;
  [self emitEventMilAssetAcquisition:v5 milAssetAcquisitionContextBuilder:v10];
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

+ (id)logMilCompilationStartedWithMetadata:(id)metadata
{
  v4 = MEMORY[0x277D590D8];
  metadataCopy = metadata;
  v6 = objc_alloc_init(v4);
  [v6 setModel:1];
  _generateRandomUUID = [self _generateRandomUUID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__E5MLModuleSELFLoggingUtils_logMilCompilationStartedWithMetadata___block_invoke;
  v13[3] = &unk_2784B6E70;
  v14 = v6;
  v8 = _generateRandomUUID;
  v15 = v8;
  v9 = v6;
  [self emitEventMilAssetAcquisitionWithMetadata:metadataCopy milAssetAcquisitionContextBuilder:v13];

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