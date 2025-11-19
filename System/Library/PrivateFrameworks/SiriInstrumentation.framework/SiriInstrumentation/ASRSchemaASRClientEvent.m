@interface ASRSchemaASRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (ASRSchemaASRActiveConfigUpdateContext)activeConfigUpdateContext;
- (ASRSchemaASRAlternativeSelectionTextCategorized)alternativeSelectionTextCategorized;
- (ASRSchemaASRAppLanguageModelLoadContext)appLanguageModelLoadContext;
- (ASRSchemaASRAppleNeuralEngineCompilationContext)appleNeuralEngineCompilationContext;
- (ASRSchemaASRAppleNeuralEngineModelInitializationContext)appleNeuralEngineModelInitializationContext;
- (ASRSchemaASRAssetLoadContext)assetLoadContext;
- (ASRSchemaASRAudioPacketArrivalContext)audioPacketArrivalContext;
- (ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream)audioPacketContainingEndOfFirstWordReadyUpstream;
- (ASRSchemaASRAudioSpeechPacketArrivalContext)audioSpeechPacketArrivalContext;
- (ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
- (ASRSchemaASRClientEvent)initWithDictionary:(id)a3;
- (ASRSchemaASRClientEvent)initWithJSON:(id)a3;
- (ASRSchemaASRContextualEntityCollectionTriggered)contextualEntityCollectionTriggered;
- (ASRSchemaASRContextualEntityRetrievalContext)contextualEntityRetrievalContext;
- (ASRSchemaASRDictationVoiceCommandInfoTier1)dictationVoiceCommandInfoTier1;
- (ASRSchemaASRDictationVoiceCommandMetricsReported)dictationVoiceCommandMetricsReported;
- (ASRSchemaASREmbeddedSpeechProcessContext)embeddedSpeechProcessContext;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)finalAudioPacketContainingSpeechReadyUpstream;
- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)finalAudioPacketContainingSpeechReceived;
- (ASRSchemaASRFinalResultGenerated)finalResultGenerated;
- (ASRSchemaASRFirstAudioPacketProcessed)firstAudioPacketProcessed;
- (ASRSchemaASRFirstAudioPacketReadyUpstream)firstAudioPacketReadyUpstream;
- (ASRSchemaASRFirstAudioPacketRecorded)firstAudioPacketRecorded;
- (ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed)firstSecondAfterLeadingSilenceProcessed;
- (ASRSchemaASRFrameProcessingReady)frameProcessingReady;
- (ASRSchemaASRInitializationContext)initializationContext;
- (ASRSchemaASRIntermediateUtteranceInfoTier1)intermediateUtteranceInfoTier1;
- (ASRSchemaASRJitLanguageModelEnrollmentContext)languageModelEnrollmentContext;
- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)jitLanguageModelEnrollmentEndedTier1;
- (ASRSchemaASRLeadingSilenceProcessed)leadingSilenceProcessed;
- (ASRSchemaASRManualEditClassificationContext)manualEditClassificationContext;
- (ASRSchemaASRManualEditMetricClassified)manualEditMetricClassified;
- (ASRSchemaASRManualEditTextClassified)manualEditTextClassified;
- (ASRSchemaASRPackageGenerated)packageGenerated;
- (ASRSchemaASRPartialResultGenerated)partialResultGenerated;
- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)personalizationUserEditNamedEntityMetrics;
- (ASRSchemaASRPreheatContext)preheatContext;
- (ASRSchemaASRRecognitionResultTier1)recognitionResultTier1;
- (ASRSchemaASRRequestContext)requestContext;
- (ASRSchemaASRRescoringDeliberationResultTier1)rescoringDeliberationResultTier1;
- (ASRSchemaASRSampledAudioFileDeleted)sampledAudioFileDeleted;
- (ASRSchemaASRSampledAudioFileDeletionFailed)sampledAudioFileDeletionFailed;
- (ASRSchemaASRSampledAudioFileEnqueueFailed)sampledAudioFileEnqueueFailed;
- (ASRSchemaASRSampledAudioFileEnqueued)sampledAudioFileEnqueued;
- (ASRSchemaASRSampledAudioFileStorageFailed)sampledAudioFileStorageFailed;
- (ASRSchemaASRSampledAudioFileStored)sampledAudioFileStored;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteActiveConfigUpdateContext;
- (void)deleteAlternativeSelectionTextCategorized;
- (void)deleteAppLanguageModelLoadContext;
- (void)deleteAppleNeuralEngineCompilationContext;
- (void)deleteAppleNeuralEngineModelInitializationContext;
- (void)deleteAssetLoadContext;
- (void)deleteAudioPacketArrivalContext;
- (void)deleteAudioPacketContainingEndOfFirstWordReadyUpstream;
- (void)deleteAudioSpeechPacketArrivalContext;
- (void)deleteAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
- (void)deleteContextualEntityCollectionTriggered;
- (void)deleteContextualEntityRetrievalContext;
- (void)deleteDictationVoiceCommandInfoTier1;
- (void)deleteDictationVoiceCommandMetricsReported;
- (void)deleteEmbeddedSpeechProcessContext;
- (void)deleteFinalAudioPacketContainingSpeechReadyUpstream;
- (void)deleteFinalAudioPacketContainingSpeechReceived;
- (void)deleteFinalResultGenerated;
- (void)deleteFirstAudioPacketProcessed;
- (void)deleteFirstAudioPacketReadyUpstream;
- (void)deleteFirstAudioPacketRecorded;
- (void)deleteFirstSecondAfterLeadingSilenceProcessed;
- (void)deleteFrameProcessingReady;
- (void)deleteInitializationContext;
- (void)deleteIntermediateUtteranceInfoTier1;
- (void)deleteJitLanguageModelEnrollmentEndedTier1;
- (void)deleteLanguageModelEnrollmentContext;
- (void)deleteLeadingSilenceProcessed;
- (void)deleteManualEditClassificationContext;
- (void)deleteManualEditMetricClassified;
- (void)deleteManualEditTextClassified;
- (void)deletePackageGenerated;
- (void)deletePartialResultGenerated;
- (void)deletePersonalizationUserEditNamedEntityMetrics;
- (void)deletePreheatContext;
- (void)deleteRecognitionResultTier1;
- (void)deleteRequestContext;
- (void)deleteRescoringDeliberationResultTier1;
- (void)deleteSampledAudioFileDeleted;
- (void)deleteSampledAudioFileDeletionFailed;
- (void)deleteSampledAudioFileEnqueueFailed;
- (void)deleteSampledAudioFileEnqueued;
- (void)deleteSampledAudioFileStorageFailed;
- (void)deleteSampledAudioFileStored;
- (void)setActiveConfigUpdateContext:(id)a3;
- (void)setAlternativeSelectionTextCategorized:(id)a3;
- (void)setAppLanguageModelLoadContext:(id)a3;
- (void)setAppleNeuralEngineCompilationContext:(id)a3;
- (void)setAppleNeuralEngineModelInitializationContext:(id)a3;
- (void)setAssetLoadContext:(id)a3;
- (void)setAudioPacketArrivalContext:(id)a3;
- (void)setAudioPacketContainingEndOfFirstWordReadyUpstream:(id)a3;
- (void)setAudioSpeechPacketArrivalContext:(id)a3;
- (void)setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:(id)a3;
- (void)setContextualEntityCollectionTriggered:(id)a3;
- (void)setContextualEntityRetrievalContext:(id)a3;
- (void)setDictationVoiceCommandInfoTier1:(id)a3;
- (void)setDictationVoiceCommandMetricsReported:(id)a3;
- (void)setEmbeddedSpeechProcessContext:(id)a3;
- (void)setFinalAudioPacketContainingSpeechReadyUpstream:(id)a3;
- (void)setFinalAudioPacketContainingSpeechReceived:(id)a3;
- (void)setFinalResultGenerated:(id)a3;
- (void)setFirstAudioPacketProcessed:(id)a3;
- (void)setFirstAudioPacketReadyUpstream:(id)a3;
- (void)setFirstAudioPacketRecorded:(id)a3;
- (void)setFirstSecondAfterLeadingSilenceProcessed:(id)a3;
- (void)setFrameProcessingReady:(id)a3;
- (void)setInitializationContext:(id)a3;
- (void)setIntermediateUtteranceInfoTier1:(id)a3;
- (void)setJitLanguageModelEnrollmentEndedTier1:(id)a3;
- (void)setLanguageModelEnrollmentContext:(id)a3;
- (void)setLeadingSilenceProcessed:(id)a3;
- (void)setManualEditClassificationContext:(id)a3;
- (void)setManualEditMetricClassified:(id)a3;
- (void)setManualEditTextClassified:(id)a3;
- (void)setPackageGenerated:(id)a3;
- (void)setPartialResultGenerated:(id)a3;
- (void)setPersonalizationUserEditNamedEntityMetrics:(id)a3;
- (void)setPreheatContext:(id)a3;
- (void)setRecognitionResultTier1:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setRescoringDeliberationResultTier1:(id)a3;
- (void)setSampledAudioFileDeleted:(id)a3;
- (void)setSampledAudioFileDeletionFailed:(id)a3;
- (void)setSampledAudioFileEnqueueFailed:(id)a3;
- (void)setSampledAudioFileEnqueued:(id)a3;
- (void)setSampledAudioFileStorageFailed:(id)a3;
- (void)setSampledAudioFileStored:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRClientEvent

- (ASRSchemaASRClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v136.receiver = self;
  v136.super_class = ASRSchemaASRClientEvent;
  v5 = [(ASRSchemaASRClientEvent *)&v136 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRClientEventMetadata alloc] initWithDictionary:v6];
      [(ASRSchemaASRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"preheatContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRPreheatContext alloc] initWithDictionary:v8];
      [(ASRSchemaASRClientEvent *)v5 setPreheatContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ASRSchemaASRRequestContext alloc] initWithDictionary:v10];
      [(ASRSchemaASRClientEvent *)v5 setRequestContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"partialResultGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ASRSchemaASRPartialResultGenerated alloc] initWithDictionary:v12];
      [(ASRSchemaASRClientEvent *)v5 setPartialResultGenerated:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"packageGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ASRSchemaASRPackageGenerated alloc] initWithDictionary:v14];
      [(ASRSchemaASRClientEvent *)v5 setPackageGenerated:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"recognitionResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ASRSchemaASRRecognitionResultTier1 alloc] initWithDictionary:v16];
      [(ASRSchemaASRClientEvent *)v5 setRecognitionResultTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"finalResultGenerated"];
    objc_opt_class();
    v135 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ASRSchemaASRFinalResultGenerated alloc] initWithDictionary:v18];
      [(ASRSchemaASRClientEvent *)v5 setFinalResultGenerated:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    objc_opt_class();
    v134 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ASRSchemaASRIntermediateUtteranceInfoTier1 alloc] initWithDictionary:v20];
      [(ASRSchemaASRClientEvent *)v5 setIntermediateUtteranceInfoTier1:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"initializationContext"];
    objc_opt_class();
    v133 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ASRSchemaASRInitializationContext alloc] initWithDictionary:v22];
      [(ASRSchemaASRClientEvent *)v5 setInitializationContext:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"assetLoadContext"];
    objc_opt_class();
    v132 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ASRSchemaASRAssetLoadContext alloc] initWithDictionary:v24];
      [(ASRSchemaASRClientEvent *)v5 setAssetLoadContext:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"languageModelEnrollmentContext"];
    objc_opt_class();
    v131 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ASRSchemaASRJitLanguageModelEnrollmentContext alloc] initWithDictionary:v26];
      [(ASRSchemaASRClientEvent *)v5 setLanguageModelEnrollmentContext:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    objc_opt_class();
    v130 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 alloc] initWithDictionary:v28];
      [(ASRSchemaASRClientEvent *)v5 setJitLanguageModelEnrollmentEndedTier1:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"audioPacketArrivalContext"];
    objc_opt_class();
    v129 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ASRSchemaASRAudioPacketArrivalContext alloc] initWithDictionary:v30];
      [(ASRSchemaASRClientEvent *)v5 setAudioPacketArrivalContext:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"firstAudioPacketProcessed"];
    objc_opt_class();
    v128 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ASRSchemaASRFirstAudioPacketProcessed alloc] initWithDictionary:v32];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketProcessed:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    objc_opt_class();
    v127 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ASRSchemaASRFinalAudioPacketContainingSpeechReceived alloc] initWithDictionary:v34];
      [(ASRSchemaASRClientEvent *)v5 setFinalAudioPacketContainingSpeechReceived:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"sampledAudioFileStored"];
    objc_opt_class();
    v126 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ASRSchemaASRSampledAudioFileStored alloc] initWithDictionary:v36];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileStored:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"sampledAudioFileStorageFailed"];
    objc_opt_class();
    v125 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ASRSchemaASRSampledAudioFileStorageFailed alloc] initWithDictionary:v38];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileStorageFailed:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"sampledAudioFileEnqueued"];
    objc_opt_class();
    v124 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ASRSchemaASRSampledAudioFileEnqueued alloc] initWithDictionary:v40];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileEnqueued:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    objc_opt_class();
    v123 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ASRSchemaASRSampledAudioFileEnqueueFailed alloc] initWithDictionary:v42];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileEnqueueFailed:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"sampledAudioFileDeleted"];
    objc_opt_class();
    v122 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ASRSchemaASRSampledAudioFileDeleted alloc] initWithDictionary:v44];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileDeleted:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    objc_opt_class();
    v121 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ASRSchemaASRSampledAudioFileDeletionFailed alloc] initWithDictionary:v46];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileDeletionFailed:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    objc_opt_class();
    v120 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ASRSchemaASRAppleNeuralEngineCompilationContext alloc] initWithDictionary:v48];
      [(ASRSchemaASRClientEvent *)v5 setAppleNeuralEngineCompilationContext:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    objc_opt_class();
    v119 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[ASRSchemaASRDictationVoiceCommandMetricsReported alloc] initWithDictionary:v50];
      [(ASRSchemaASRClientEvent *)v5 setDictationVoiceCommandMetricsReported:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"appLanguageModelLoadContext"];
    objc_opt_class();
    v118 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[ASRSchemaASRAppLanguageModelLoadContext alloc] initWithDictionary:v52];
      [(ASRSchemaASRClientEvent *)v5 setAppLanguageModelLoadContext:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"embeddedSpeechProcessContext"];
    objc_opt_class();
    v117 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ASRSchemaASREmbeddedSpeechProcessContext alloc] initWithDictionary:v54];
      [(ASRSchemaASRClientEvent *)v5 setEmbeddedSpeechProcessContext:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"manualEditTextClassified"];
    objc_opt_class();
    v116 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[ASRSchemaASRManualEditTextClassified alloc] initWithDictionary:v56];
      [(ASRSchemaASRClientEvent *)v5 setManualEditTextClassified:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"manualEditMetricClassified"];
    objc_opt_class();
    v115 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[ASRSchemaASRManualEditMetricClassified alloc] initWithDictionary:v58];
      [(ASRSchemaASRClientEvent *)v5 setManualEditMetricClassified:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"manualEditClassificationContext"];
    objc_opt_class();
    v114 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[ASRSchemaASRManualEditClassificationContext alloc] initWithDictionary:v60];
      [(ASRSchemaASRClientEvent *)v5 setManualEditClassificationContext:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"activeConfigUpdateContext"];
    objc_opt_class();
    v113 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[ASRSchemaASRActiveConfigUpdateContext alloc] initWithDictionary:v62];
      [(ASRSchemaASRClientEvent *)v5 setActiveConfigUpdateContext:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    objc_opt_class();
    v112 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[ASRSchemaASRAppleNeuralEngineModelInitializationContext alloc] initWithDictionary:v64];
      [(ASRSchemaASRClientEvent *)v5 setAppleNeuralEngineModelInitializationContext:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"frameProcessingReady"];
    objc_opt_class();
    v111 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[ASRSchemaASRFrameProcessingReady alloc] initWithDictionary:v66];
      [(ASRSchemaASRClientEvent *)v5 setFrameProcessingReady:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"leadingSilenceProcessed"];
    objc_opt_class();
    v110 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[ASRSchemaASRLeadingSilenceProcessed alloc] initWithDictionary:v68];
      [(ASRSchemaASRClientEvent *)v5 setLeadingSilenceProcessed:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    objc_opt_class();
    v109 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed alloc] initWithDictionary:v70];
      [(ASRSchemaASRClientEvent *)v5 setFirstSecondAfterLeadingSilenceProcessed:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    objc_opt_class();
    v108 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[ASRSchemaASRAudioSpeechPacketArrivalContext alloc] initWithDictionary:v72];
      [(ASRSchemaASRClientEvent *)v5 setAudioSpeechPacketArrivalContext:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    objc_opt_class();
    v107 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived alloc] initWithDictionary:v74];
      [(ASRSchemaASRClientEvent *)v5 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"firstAudioPacketRecorded"];
    objc_opt_class();
    v106 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[ASRSchemaASRFirstAudioPacketRecorded alloc] initWithDictionary:v76];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketRecorded:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    objc_opt_class();
    v105 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream alloc] initWithDictionary:v78];
      [(ASRSchemaASRClientEvent *)v5 setAudioPacketContainingEndOfFirstWordReadyUpstream:v79];
    }

    v100 = v14;
    v80 = [v4 objectForKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[ASRSchemaASRFirstAudioPacketReadyUpstream alloc] initWithDictionary:v80];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketReadyUpstream:v81];
    }

    v98 = v80;
    v99 = v16;
    v82 = [v4 objectForKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream alloc] initWithDictionary:v82];
      [(ASRSchemaASRClientEvent *)v5 setFinalAudioPacketContainingSpeechReadyUpstream:v83];
    }

    v104 = v6;
    v84 = [v4 objectForKeyedSubscript:@"alternativeSelectionTextCategorized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[ASRSchemaASRAlternativeSelectionTextCategorized alloc] initWithDictionary:v84];
      [(ASRSchemaASRClientEvent *)v5 setAlternativeSelectionTextCategorized:v85];
    }

    v103 = v8;
    v86 = [v4 objectForKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[ASRSchemaASRDictationVoiceCommandInfoTier1 alloc] initWithDictionary:v86];
      [(ASRSchemaASRClientEvent *)v5 setDictationVoiceCommandInfoTier1:v87];
    }

    v102 = v10;
    v88 = [v4 objectForKeyedSubscript:@"rescoringDeliberationResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[ASRSchemaASRRescoringDeliberationResultTier1 alloc] initWithDictionary:v88];
      [(ASRSchemaASRClientEvent *)v5 setRescoringDeliberationResultTier1:v89];
    }

    v101 = v12;
    v90 = [v4 objectForKeyedSubscript:@"contextualEntityCollectionTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[ASRSchemaASRContextualEntityCollectionTriggered alloc] initWithDictionary:v90];
      [(ASRSchemaASRClientEvent *)v5 setContextualEntityCollectionTriggered:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"contextualEntityRetrievalContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = [[ASRSchemaASRContextualEntityRetrievalContext alloc] initWithDictionary:v92];
      [(ASRSchemaASRClientEvent *)v5 setContextualEntityRetrievalContext:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = [[ASRSchemaASRPersonalizationUserEditNamedEntityMetrics alloc] initWithDictionary:v94];
      [(ASRSchemaASRClientEvent *)v5 setPersonalizationUserEditNamedEntityMetrics:v95];
    }

    v96 = v5;
  }

  return v5;
}

- (ASRSchemaASRClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeConfigUpdateContext)
  {
    v4 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"activeConfigUpdateContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"activeConfigUpdateContext"];
    }
  }

  if (self->_alternativeSelectionTextCategorized)
  {
    v7 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"alternativeSelectionTextCategorized"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"alternativeSelectionTextCategorized"];
    }
  }

  if (self->_appLanguageModelLoadContext)
  {
    v10 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"appLanguageModelLoadContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"appLanguageModelLoadContext"];
    }
  }

  if (self->_appleNeuralEngineCompilationContext)
  {
    v13 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    }
  }

  if (self->_appleNeuralEngineModelInitializationContext)
  {
    v16 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    }
  }

  if (self->_assetLoadContext)
  {
    v19 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"assetLoadContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"assetLoadContext"];
    }
  }

  if (self->_audioPacketArrivalContext)
  {
    v22 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"audioPacketArrivalContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"audioPacketArrivalContext"];
    }
  }

  if (self->_audioPacketContainingEndOfFirstWordReadyUpstream)
  {
    v25 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    }
  }

  if (self->_audioSpeechPacketArrivalContext)
  {
    v28 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    }
  }

  if (self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)
  {
    v31 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    }
  }

  if (self->_contextualEntityCollectionTriggered)
  {
    v34 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"contextualEntityCollectionTriggered"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"contextualEntityCollectionTriggered"];
    }
  }

  if (self->_contextualEntityRetrievalContext)
  {
    v37 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"contextualEntityRetrievalContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"contextualEntityRetrievalContext"];
    }
  }

  if (self->_dictationVoiceCommandInfoTier1)
  {
    v40 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    }
  }

  if (self->_dictationVoiceCommandMetricsReported)
  {
    v43 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    }
  }

  if (self->_embeddedSpeechProcessContext)
  {
    v46 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"embeddedSpeechProcessContext"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"embeddedSpeechProcessContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v49 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_finalAudioPacketContainingSpeechReadyUpstream)
  {
    v52 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    }
  }

  if (self->_finalAudioPacketContainingSpeechReceived)
  {
    v55 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    }
  }

  if (self->_finalResultGenerated)
  {
    v58 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"finalResultGenerated"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"finalResultGenerated"];
    }
  }

  if (self->_firstAudioPacketProcessed)
  {
    v61 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"firstAudioPacketProcessed"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"firstAudioPacketProcessed"];
    }
  }

  if (self->_firstAudioPacketReadyUpstream)
  {
    v64 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    }
  }

  if (self->_firstAudioPacketRecorded)
  {
    v67 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"firstAudioPacketRecorded"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"firstAudioPacketRecorded"];
    }
  }

  if (self->_firstSecondAfterLeadingSilenceProcessed)
  {
    v70 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    }
  }

  if (self->_frameProcessingReady)
  {
    v73 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"frameProcessingReady"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"frameProcessingReady"];
    }
  }

  if (self->_initializationContext)
  {
    v76 = [(ASRSchemaASRClientEvent *)self initializationContext];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"initializationContext"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"initializationContext"];
    }
  }

  if (self->_intermediateUtteranceInfoTier1)
  {
    v79 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    }
  }

  if (self->_jitLanguageModelEnrollmentEndedTier1)
  {
    v82 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    }
  }

  if (self->_languageModelEnrollmentContext)
  {
    v85 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"languageModelEnrollmentContext"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"languageModelEnrollmentContext"];
    }
  }

  if (self->_leadingSilenceProcessed)
  {
    v88 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"leadingSilenceProcessed"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"leadingSilenceProcessed"];
    }
  }

  if (self->_manualEditClassificationContext)
  {
    v91 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"manualEditClassificationContext"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"manualEditClassificationContext"];
    }
  }

  if (self->_manualEditMetricClassified)
  {
    v94 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"manualEditMetricClassified"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"manualEditMetricClassified"];
    }
  }

  if (self->_manualEditTextClassified)
  {
    v97 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"manualEditTextClassified"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"manualEditTextClassified"];
    }
  }

  if (self->_packageGenerated)
  {
    v100 = [(ASRSchemaASRClientEvent *)self packageGenerated];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"packageGenerated"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"packageGenerated"];
    }
  }

  if (self->_partialResultGenerated)
  {
    v103 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"partialResultGenerated"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"partialResultGenerated"];
    }
  }

  if (self->_personalizationUserEditNamedEntityMetrics)
  {
    v106 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
    }
  }

  if (self->_preheatContext)
  {
    v109 = [(ASRSchemaASRClientEvent *)self preheatContext];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"preheatContext"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"preheatContext"];
    }
  }

  if (self->_recognitionResultTier1)
  {
    v112 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"recognitionResultTier1"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"recognitionResultTier1"];
    }
  }

  if (self->_requestContext)
  {
    v115 = [(ASRSchemaASRClientEvent *)self requestContext];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_rescoringDeliberationResultTier1)
  {
    v118 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"rescoringDeliberationResultTier1"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"rescoringDeliberationResultTier1"];
    }
  }

  if (self->_sampledAudioFileDeleted)
  {
    v121 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"sampledAudioFileDeleted"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"sampledAudioFileDeleted"];
    }
  }

  if (self->_sampledAudioFileDeletionFailed)
  {
    v124 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    }
  }

  if (self->_sampledAudioFileEnqueueFailed)
  {
    v127 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    }
  }

  if (self->_sampledAudioFileEnqueued)
  {
    v130 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    v131 = [v130 dictionaryRepresentation];
    if (v131)
    {
      [v3 setObject:v131 forKeyedSubscript:@"sampledAudioFileEnqueued"];
    }

    else
    {
      v132 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v132 forKeyedSubscript:@"sampledAudioFileEnqueued"];
    }
  }

  if (self->_sampledAudioFileStorageFailed)
  {
    v133 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    v134 = [v133 dictionaryRepresentation];
    if (v134)
    {
      [v3 setObject:v134 forKeyedSubscript:@"sampledAudioFileStorageFailed"];
    }

    else
    {
      v135 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v135 forKeyedSubscript:@"sampledAudioFileStorageFailed"];
    }
  }

  if (self->_sampledAudioFileStored)
  {
    v136 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    v137 = [v136 dictionaryRepresentation];
    if (v137)
    {
      [v3 setObject:v137 forKeyedSubscript:@"sampledAudioFileStored"];
    }

    else
    {
      v138 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v138 forKeyedSubscript:@"sampledAudioFileStored"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v139 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ASRSchemaASRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ASRSchemaASRPreheatContext *)self->_preheatContext hash]^ v3;
  v5 = [(ASRSchemaASRRequestContext *)self->_requestContext hash];
  v6 = v4 ^ v5 ^ [(ASRSchemaASRPartialResultGenerated *)self->_partialResultGenerated hash];
  v7 = [(ASRSchemaASRPackageGenerated *)self->_packageGenerated hash];
  v8 = v7 ^ [(ASRSchemaASRRecognitionResultTier1 *)self->_recognitionResultTier1 hash];
  v9 = v6 ^ v8 ^ [(ASRSchemaASRFinalResultGenerated *)self->_finalResultGenerated hash];
  v10 = [(ASRSchemaASRIntermediateUtteranceInfoTier1 *)self->_intermediateUtteranceInfoTier1 hash];
  v11 = v10 ^ [(ASRSchemaASRInitializationContext *)self->_initializationContext hash];
  v12 = v11 ^ [(ASRSchemaASRAssetLoadContext *)self->_assetLoadContext hash];
  v13 = v9 ^ v12 ^ [(ASRSchemaASRJitLanguageModelEnrollmentContext *)self->_languageModelEnrollmentContext hash];
  v14 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self->_jitLanguageModelEnrollmentEndedTier1 hash];
  v15 = v14 ^ [(ASRSchemaASRAudioPacketArrivalContext *)self->_audioPacketArrivalContext hash];
  v16 = v15 ^ [(ASRSchemaASRFirstAudioPacketProcessed *)self->_firstAudioPacketProcessed hash];
  v17 = v16 ^ [(ASRSchemaASRFinalAudioPacketContainingSpeechReceived *)self->_finalAudioPacketContainingSpeechReceived hash];
  v18 = v13 ^ v17 ^ [(ASRSchemaASRSampledAudioFileStored *)self->_sampledAudioFileStored hash];
  v19 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self->_sampledAudioFileStorageFailed hash];
  v20 = v19 ^ [(ASRSchemaASRSampledAudioFileEnqueued *)self->_sampledAudioFileEnqueued hash];
  v21 = v20 ^ [(ASRSchemaASRSampledAudioFileEnqueueFailed *)self->_sampledAudioFileEnqueueFailed hash];
  v22 = v21 ^ [(ASRSchemaASRSampledAudioFileDeleted *)self->_sampledAudioFileDeleted hash];
  v23 = v22 ^ [(ASRSchemaASRSampledAudioFileDeletionFailed *)self->_sampledAudioFileDeletionFailed hash];
  v24 = v18 ^ v23 ^ [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self->_appleNeuralEngineCompilationContext hash];
  v25 = [(ASRSchemaASRDictationVoiceCommandMetricsReported *)self->_dictationVoiceCommandMetricsReported hash];
  v26 = v25 ^ [(ASRSchemaASRAppLanguageModelLoadContext *)self->_appLanguageModelLoadContext hash];
  v27 = v26 ^ [(ASRSchemaASREmbeddedSpeechProcessContext *)self->_embeddedSpeechProcessContext hash];
  v28 = v27 ^ [(ASRSchemaASRManualEditTextClassified *)self->_manualEditTextClassified hash];
  v29 = v28 ^ [(ASRSchemaASRManualEditMetricClassified *)self->_manualEditMetricClassified hash];
  v30 = v29 ^ [(ASRSchemaASRManualEditClassificationContext *)self->_manualEditClassificationContext hash];
  v31 = v24 ^ v30 ^ [(ASRSchemaASRActiveConfigUpdateContext *)self->_activeConfigUpdateContext hash];
  v32 = [(ASRSchemaASRAppleNeuralEngineModelInitializationContext *)self->_appleNeuralEngineModelInitializationContext hash];
  v33 = v32 ^ [(ASRSchemaASRFrameProcessingReady *)self->_frameProcessingReady hash];
  v34 = v33 ^ [(ASRSchemaASRLeadingSilenceProcessed *)self->_leadingSilenceProcessed hash];
  v35 = v34 ^ [(ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed *)self->_firstSecondAfterLeadingSilenceProcessed hash];
  v36 = v35 ^ [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self->_audioSpeechPacketArrivalContext hash];
  v37 = v36 ^ [(ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived *)self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived hash];
  v38 = v37 ^ [(ASRSchemaASRFirstAudioPacketRecorded *)self->_firstAudioPacketRecorded hash];
  v39 = v31 ^ v38 ^ [(ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream *)self->_audioPacketContainingEndOfFirstWordReadyUpstream hash];
  v40 = [(ASRSchemaASRFirstAudioPacketReadyUpstream *)self->_firstAudioPacketReadyUpstream hash];
  v41 = v40 ^ [(ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream *)self->_finalAudioPacketContainingSpeechReadyUpstream hash];
  v42 = v41 ^ [(ASRSchemaASRAlternativeSelectionTextCategorized *)self->_alternativeSelectionTextCategorized hash];
  v43 = v42 ^ [(ASRSchemaASRDictationVoiceCommandInfoTier1 *)self->_dictationVoiceCommandInfoTier1 hash];
  v44 = v43 ^ [(ASRSchemaASRRescoringDeliberationResultTier1 *)self->_rescoringDeliberationResultTier1 hash];
  v45 = v44 ^ [(ASRSchemaASRContextualEntityCollectionTriggered *)self->_contextualEntityCollectionTriggered hash];
  v46 = v45 ^ [(ASRSchemaASRContextualEntityRetrievalContext *)self->_contextualEntityRetrievalContext hash];
  return v39 ^ v46 ^ [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self->_personalizationUserEditNamedEntityMetrics hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_228;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_228;
  }

  v6 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v8 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self preheatContext];
  v7 = [v4 preheatContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v13 = [(ASRSchemaASRClientEvent *)self preheatContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASRSchemaASRClientEvent *)self preheatContext];
    v16 = [v4 preheatContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v18 = [(ASRSchemaASRClientEvent *)self requestContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(ASRSchemaASRClientEvent *)self requestContext];
    v21 = [v4 requestContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  v7 = [v4 partialResultGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v23 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  if (v23)
  {
    v24 = v23;
    v25 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    v26 = [v4 partialResultGenerated];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self packageGenerated];
  v7 = [v4 packageGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v28 = [(ASRSchemaASRClientEvent *)self packageGenerated];
  if (v28)
  {
    v29 = v28;
    v30 = [(ASRSchemaASRClientEvent *)self packageGenerated];
    v31 = [v4 packageGenerated];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  v7 = [v4 recognitionResultTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v33 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    v36 = [v4 recognitionResultTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  v7 = [v4 finalResultGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v38 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  if (v38)
  {
    v39 = v38;
    v40 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    v41 = [v4 finalResultGenerated];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  v7 = [v4 intermediateUtteranceInfoTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v43 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  if (v43)
  {
    v44 = v43;
    v45 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    v46 = [v4 intermediateUtteranceInfoTier1];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self initializationContext];
  v7 = [v4 initializationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v48 = [(ASRSchemaASRClientEvent *)self initializationContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(ASRSchemaASRClientEvent *)self initializationContext];
    v51 = [v4 initializationContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  v7 = [v4 assetLoadContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v53 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    v56 = [v4 assetLoadContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  v7 = [v4 languageModelEnrollmentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v58 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  if (v58)
  {
    v59 = v58;
    v60 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    v61 = [v4 languageModelEnrollmentContext];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  v7 = [v4 jitLanguageModelEnrollmentEndedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v63 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  if (v63)
  {
    v64 = v63;
    v65 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    v66 = [v4 jitLanguageModelEnrollmentEndedTier1];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  v7 = [v4 audioPacketArrivalContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v68 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    v71 = [v4 audioPacketArrivalContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  v7 = [v4 firstAudioPacketProcessed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v73 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  if (v73)
  {
    v74 = v73;
    v75 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    v76 = [v4 firstAudioPacketProcessed];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  v7 = [v4 finalAudioPacketContainingSpeechReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v78 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  if (v78)
  {
    v79 = v78;
    v80 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    v81 = [v4 finalAudioPacketContainingSpeechReceived];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  v7 = [v4 sampledAudioFileStored];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v83 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  if (v83)
  {
    v84 = v83;
    v85 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    v86 = [v4 sampledAudioFileStored];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  v7 = [v4 sampledAudioFileStorageFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v88 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  if (v88)
  {
    v89 = v88;
    v90 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    v91 = [v4 sampledAudioFileStorageFailed];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  v7 = [v4 sampledAudioFileEnqueued];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v93 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  if (v93)
  {
    v94 = v93;
    v95 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    v96 = [v4 sampledAudioFileEnqueued];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  v7 = [v4 sampledAudioFileEnqueueFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v98 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  if (v98)
  {
    v99 = v98;
    v100 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    v101 = [v4 sampledAudioFileEnqueueFailed];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  v7 = [v4 sampledAudioFileDeleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v103 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  if (v103)
  {
    v104 = v103;
    v105 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    v106 = [v4 sampledAudioFileDeleted];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  v7 = [v4 sampledAudioFileDeletionFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v108 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  if (v108)
  {
    v109 = v108;
    v110 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    v111 = [v4 sampledAudioFileDeletionFailed];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  v7 = [v4 appleNeuralEngineCompilationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v113 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  if (v113)
  {
    v114 = v113;
    v115 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    v116 = [v4 appleNeuralEngineCompilationContext];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  v7 = [v4 dictationVoiceCommandMetricsReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v118 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  if (v118)
  {
    v119 = v118;
    v120 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    v121 = [v4 dictationVoiceCommandMetricsReported];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  v7 = [v4 appLanguageModelLoadContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v123 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  if (v123)
  {
    v124 = v123;
    v125 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    v126 = [v4 appLanguageModelLoadContext];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  v7 = [v4 embeddedSpeechProcessContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v128 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  if (v128)
  {
    v129 = v128;
    v130 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    v131 = [v4 embeddedSpeechProcessContext];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  v7 = [v4 manualEditTextClassified];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v133 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  if (v133)
  {
    v134 = v133;
    v135 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    v136 = [v4 manualEditTextClassified];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  v7 = [v4 manualEditMetricClassified];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v138 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  if (v138)
  {
    v139 = v138;
    v140 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    v141 = [v4 manualEditMetricClassified];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  v7 = [v4 manualEditClassificationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v143 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  if (v143)
  {
    v144 = v143;
    v145 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    v146 = [v4 manualEditClassificationContext];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  v7 = [v4 activeConfigUpdateContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v148 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  if (v148)
  {
    v149 = v148;
    v150 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    v151 = [v4 activeConfigUpdateContext];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  v7 = [v4 appleNeuralEngineModelInitializationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v153 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  if (v153)
  {
    v154 = v153;
    v155 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    v156 = [v4 appleNeuralEngineModelInitializationContext];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  v7 = [v4 frameProcessingReady];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v158 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  if (v158)
  {
    v159 = v158;
    v160 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    v161 = [v4 frameProcessingReady];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  v7 = [v4 leadingSilenceProcessed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v163 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  if (v163)
  {
    v164 = v163;
    v165 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    v166 = [v4 leadingSilenceProcessed];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  v7 = [v4 firstSecondAfterLeadingSilenceProcessed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v168 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  if (v168)
  {
    v169 = v168;
    v170 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    v171 = [v4 firstSecondAfterLeadingSilenceProcessed];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  v7 = [v4 audioSpeechPacketArrivalContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v173 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  if (v173)
  {
    v174 = v173;
    v175 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    v176 = [v4 audioSpeechPacketArrivalContext];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  v7 = [v4 audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v178 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  if (v178)
  {
    v179 = v178;
    v180 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    v181 = [v4 audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  v7 = [v4 firstAudioPacketRecorded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v183 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  if (v183)
  {
    v184 = v183;
    v185 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    v186 = [v4 firstAudioPacketRecorded];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  v7 = [v4 audioPacketContainingEndOfFirstWordReadyUpstream];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v188 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  if (v188)
  {
    v189 = v188;
    v190 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    v191 = [v4 audioPacketContainingEndOfFirstWordReadyUpstream];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  v7 = [v4 firstAudioPacketReadyUpstream];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v193 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  if (v193)
  {
    v194 = v193;
    v195 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    v196 = [v4 firstAudioPacketReadyUpstream];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  v7 = [v4 finalAudioPacketContainingSpeechReadyUpstream];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v198 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  if (v198)
  {
    v199 = v198;
    v200 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    v201 = [v4 finalAudioPacketContainingSpeechReadyUpstream];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  v7 = [v4 alternativeSelectionTextCategorized];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v203 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  if (v203)
  {
    v204 = v203;
    v205 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    v206 = [v4 alternativeSelectionTextCategorized];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  v7 = [v4 dictationVoiceCommandInfoTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v208 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  if (v208)
  {
    v209 = v208;
    v210 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    v211 = [v4 dictationVoiceCommandInfoTier1];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  v7 = [v4 rescoringDeliberationResultTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v213 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  if (v213)
  {
    v214 = v213;
    v215 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    v216 = [v4 rescoringDeliberationResultTier1];
    v217 = [v215 isEqual:v216];

    if (!v217)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  v7 = [v4 contextualEntityCollectionTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v218 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  if (v218)
  {
    v219 = v218;
    v220 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    v221 = [v4 contextualEntityCollectionTriggered];
    v222 = [v220 isEqual:v221];

    if (!v222)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  v7 = [v4 contextualEntityRetrievalContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_227;
  }

  v223 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  if (v223)
  {
    v224 = v223;
    v225 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    v226 = [v4 contextualEntityRetrievalContext];
    v227 = [v225 isEqual:v226];

    if (!v227)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
  v7 = [v4 personalizationUserEditNamedEntityMetrics];
  if ((v6 != 0) != (v7 == 0))
  {
    v228 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    if (!v228)
    {

LABEL_231:
      v233 = 1;
      goto LABEL_229;
    }

    v229 = v228;
    v230 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    v231 = [v4 personalizationUserEditNamedEntityMetrics];
    v232 = [v230 isEqual:v231];

    if (v232)
    {
      goto LABEL_231;
    }
  }

  else
  {
LABEL_227:
  }

LABEL_228:
  v233 = 0;
LABEL_229:

  return v233;
}

- (void)writeTo:(id)a3
{
  v95 = a3;
  v4 = [(ASRSchemaASRClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ASRSchemaASRClientEvent *)self preheatContext];

  if (v6)
  {
    v7 = [(ASRSchemaASRClientEvent *)self preheatContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ASRSchemaASRClientEvent *)self requestContext];

  if (v8)
  {
    v9 = [(ASRSchemaASRClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];

  if (v10)
  {
    v11 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ASRSchemaASRClientEvent *)self packageGenerated];

  if (v12)
  {
    v13 = [(ASRSchemaASRClientEvent *)self packageGenerated];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];

  if (v14)
  {
    v15 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];

  if (v16)
  {
    v17 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];

  if (v18)
  {
    v19 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(ASRSchemaASRClientEvent *)self initializationContext];

  if (v20)
  {
    v21 = [(ASRSchemaASRClientEvent *)self initializationContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(ASRSchemaASRClientEvent *)self assetLoadContext];

  if (v22)
  {
    v23 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];

  if (v24)
  {
    v25 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];

  if (v26)
  {
    v27 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];

  if (v28)
  {
    v29 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];

  if (v30)
  {
    v31 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];

  if (v32)
  {
    v33 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];

  if (v34)
  {
    v35 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];

  if (v36)
  {
    v37 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];

  if (v38)
  {
    v39 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];

  if (v40)
  {
    v41 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];

  if (v42)
  {
    v43 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];

  if (v44)
  {
    v45 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];

  if (v46)
  {
    v47 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];

  if (v48)
  {
    v49 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];

  if (v50)
  {
    v51 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];

  if (v52)
  {
    v53 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];

  if (v54)
  {
    v55 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];

  if (v56)
  {
    v57 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];

  if (v58)
  {
    v59 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];

  if (v60)
  {
    v61 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];

  if (v62)
  {
    v63 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];

  if (v64)
  {
    v65 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];

  if (v66)
  {
    v67 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];

  if (v68)
  {
    v69 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];

  if (v70)
  {
    v71 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];

  if (v72)
  {
    v73 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];

  if (v74)
  {
    v75 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];

  if (v76)
  {
    v77 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];

  if (v78)
  {
    v79 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];

  if (v80)
  {
    v81 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];

  if (v82)
  {
    v83 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];

  if (v84)
  {
    v85 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];

  if (v86)
  {
    v87 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    PBDataWriterWriteSubmessage();
  }

  v88 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];

  if (v88)
  {
    v89 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    PBDataWriterWriteSubmessage();
  }

  v90 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];

  if (v90)
  {
    v91 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    PBDataWriterWriteSubmessage();
  }

  v92 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];

  v93 = v95;
  if (v92)
  {
    v94 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    PBDataWriterWriteSubmessage();

    v93 = v95;
  }
}

- (void)deletePersonalizationUserEditNamedEntityMetrics
{
  if (self->_whichEvent_Type == 144)
  {
    self->_whichEvent_Type = 0;
    self->_personalizationUserEditNamedEntityMetrics = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)personalizationUserEditNamedEntityMetrics
{
  if (self->_whichEvent_Type == 144)
  {
    v3 = self->_personalizationUserEditNamedEntityMetrics;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPersonalizationUserEditNamedEntityMetrics:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  v48 = 144;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = v4;
}

- (void)deleteContextualEntityRetrievalContext
{
  if (self->_whichEvent_Type == 143)
  {
    self->_whichEvent_Type = 0;
    self->_contextualEntityRetrievalContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRContextualEntityRetrievalContext)contextualEntityRetrievalContext
{
  if (self->_whichEvent_Type == 143)
  {
    v3 = self->_contextualEntityRetrievalContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextualEntityRetrievalContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 143;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = v4;
}

- (void)deleteContextualEntityCollectionTriggered
{
  if (self->_whichEvent_Type == 142)
  {
    self->_whichEvent_Type = 0;
    self->_contextualEntityCollectionTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRContextualEntityCollectionTriggered)contextualEntityCollectionTriggered
{
  if (self->_whichEvent_Type == 142)
  {
    v3 = self->_contextualEntityCollectionTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextualEntityCollectionTriggered:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 142;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = v4;
}

- (void)deleteRescoringDeliberationResultTier1
{
  if (self->_whichEvent_Type == 141)
  {
    self->_whichEvent_Type = 0;
    self->_rescoringDeliberationResultTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRRescoringDeliberationResultTier1)rescoringDeliberationResultTier1
{
  if (self->_whichEvent_Type == 141)
  {
    v3 = self->_rescoringDeliberationResultTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRescoringDeliberationResultTier1:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 141;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = v4;
}

- (void)deleteDictationVoiceCommandInfoTier1
{
  if (self->_whichEvent_Type == 140)
  {
    self->_whichEvent_Type = 0;
    self->_dictationVoiceCommandInfoTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRDictationVoiceCommandInfoTier1)dictationVoiceCommandInfoTier1
{
  if (self->_whichEvent_Type == 140)
  {
    v3 = self->_dictationVoiceCommandInfoTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDictationVoiceCommandInfoTier1:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 140;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = v4;
}

- (void)deleteAlternativeSelectionTextCategorized
{
  if (self->_whichEvent_Type == 139)
  {
    self->_whichEvent_Type = 0;
    self->_alternativeSelectionTextCategorized = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAlternativeSelectionTextCategorized)alternativeSelectionTextCategorized
{
  if (self->_whichEvent_Type == 139)
  {
    v3 = self->_alternativeSelectionTextCategorized;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAlternativeSelectionTextCategorized:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 139;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = v4;
}

- (void)deleteFinalAudioPacketContainingSpeechReadyUpstream
{
  if (self->_whichEvent_Type == 138)
  {
    self->_whichEvent_Type = 0;
    self->_finalAudioPacketContainingSpeechReadyUpstream = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream)finalAudioPacketContainingSpeechReadyUpstream
{
  if (self->_whichEvent_Type == 138)
  {
    v3 = self->_finalAudioPacketContainingSpeechReadyUpstream;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFinalAudioPacketContainingSpeechReadyUpstream:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 138;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = v4;
}

- (void)deleteFirstAudioPacketReadyUpstream
{
  if (self->_whichEvent_Type == 137)
  {
    self->_whichEvent_Type = 0;
    self->_firstAudioPacketReadyUpstream = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFirstAudioPacketReadyUpstream)firstAudioPacketReadyUpstream
{
  if (self->_whichEvent_Type == 137)
  {
    v3 = self->_firstAudioPacketReadyUpstream;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstAudioPacketReadyUpstream:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 137;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = v4;
}

- (void)deleteAudioPacketContainingEndOfFirstWordReadyUpstream
{
  if (self->_whichEvent_Type == 136)
  {
    self->_whichEvent_Type = 0;
    self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream)audioPacketContainingEndOfFirstWordReadyUpstream
{
  if (self->_whichEvent_Type == 136)
  {
    v3 = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioPacketContainingEndOfFirstWordReadyUpstream:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 136;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = v4;
}

- (void)deleteFirstAudioPacketRecorded
{
  if (self->_whichEvent_Type == 135)
  {
    self->_whichEvent_Type = 0;
    self->_firstAudioPacketRecorded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFirstAudioPacketRecorded)firstAudioPacketRecorded
{
  if (self->_whichEvent_Type == 135)
  {
    v3 = self->_firstAudioPacketRecorded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstAudioPacketRecorded:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 135;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = v4;
}

- (void)deleteAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived
{
  if (self->_whichEvent_Type == 134)
  {
    self->_whichEvent_Type = 0;
    self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived
{
  if (self->_whichEvent_Type == 134)
  {
    v3 = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 134;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = v4;
}

- (void)deleteAudioSpeechPacketArrivalContext
{
  if (self->_whichEvent_Type == 133)
  {
    self->_whichEvent_Type = 0;
    self->_audioSpeechPacketArrivalContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAudioSpeechPacketArrivalContext)audioSpeechPacketArrivalContext
{
  if (self->_whichEvent_Type == 133)
  {
    v3 = self->_audioSpeechPacketArrivalContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioSpeechPacketArrivalContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 133;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = v4;
}

- (void)deleteFirstSecondAfterLeadingSilenceProcessed
{
  if (self->_whichEvent_Type == 132)
  {
    self->_whichEvent_Type = 0;
    self->_firstSecondAfterLeadingSilenceProcessed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed)firstSecondAfterLeadingSilenceProcessed
{
  if (self->_whichEvent_Type == 132)
  {
    v3 = self->_firstSecondAfterLeadingSilenceProcessed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstSecondAfterLeadingSilenceProcessed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 132;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = v4;
}

- (void)deleteLeadingSilenceProcessed
{
  if (self->_whichEvent_Type == 131)
  {
    self->_whichEvent_Type = 0;
    self->_leadingSilenceProcessed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRLeadingSilenceProcessed)leadingSilenceProcessed
{
  if (self->_whichEvent_Type == 131)
  {
    v3 = self->_leadingSilenceProcessed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLeadingSilenceProcessed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 131;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = v4;
}

- (void)deleteFrameProcessingReady
{
  if (self->_whichEvent_Type == 130)
  {
    self->_whichEvent_Type = 0;
    self->_frameProcessingReady = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFrameProcessingReady)frameProcessingReady
{
  if (self->_whichEvent_Type == 130)
  {
    v3 = self->_frameProcessingReady;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFrameProcessingReady:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 130;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = v4;
}

- (void)deleteAppleNeuralEngineModelInitializationContext
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_appleNeuralEngineModelInitializationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAppleNeuralEngineModelInitializationContext)appleNeuralEngineModelInitializationContext
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_appleNeuralEngineModelInitializationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppleNeuralEngineModelInitializationContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 129;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = v4;
}

- (void)deleteActiveConfigUpdateContext
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_activeConfigUpdateContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRActiveConfigUpdateContext)activeConfigUpdateContext
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_activeConfigUpdateContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActiveConfigUpdateContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  self->_whichEvent_Type = (v4 != 0) << 7;
  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = v4;
}

- (void)deleteManualEditClassificationContext
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_manualEditClassificationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditClassificationContext)manualEditClassificationContext
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_manualEditClassificationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setManualEditClassificationContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 127;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = v4;
}

- (void)deleteManualEditMetricClassified
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_manualEditMetricClassified = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditMetricClassified)manualEditMetricClassified
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_manualEditMetricClassified;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setManualEditMetricClassified:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 126;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = v4;
}

- (void)deleteManualEditTextClassified
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_manualEditTextClassified = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditTextClassified)manualEditTextClassified
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_manualEditTextClassified;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setManualEditTextClassified:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 125;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = v4;
}

- (void)deleteEmbeddedSpeechProcessContext
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_embeddedSpeechProcessContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASREmbeddedSpeechProcessContext)embeddedSpeechProcessContext
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_embeddedSpeechProcessContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEmbeddedSpeechProcessContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 124;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = v4;
}

- (void)deleteAppLanguageModelLoadContext
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_appLanguageModelLoadContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAppLanguageModelLoadContext)appLanguageModelLoadContext
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_appLanguageModelLoadContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppLanguageModelLoadContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 123;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = v4;
}

- (void)deleteDictationVoiceCommandMetricsReported
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_dictationVoiceCommandMetricsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRDictationVoiceCommandMetricsReported)dictationVoiceCommandMetricsReported
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_dictationVoiceCommandMetricsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDictationVoiceCommandMetricsReported:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 122;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = v4;
}

- (void)deleteAppleNeuralEngineCompilationContext
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_appleNeuralEngineCompilationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAppleNeuralEngineCompilationContext)appleNeuralEngineCompilationContext
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_appleNeuralEngineCompilationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppleNeuralEngineCompilationContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 121;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = v4;
}

- (void)deleteSampledAudioFileDeletionFailed
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileDeletionFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileDeletionFailed)sampledAudioFileDeletionFailed
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_sampledAudioFileDeletionFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileDeletionFailed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 120;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = v4;
}

- (void)deleteSampledAudioFileDeleted
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileDeleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileDeleted)sampledAudioFileDeleted
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_sampledAudioFileDeleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileDeleted:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 119;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = v4;
}

- (void)deleteSampledAudioFileEnqueueFailed
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileEnqueueFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileEnqueueFailed)sampledAudioFileEnqueueFailed
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_sampledAudioFileEnqueueFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileEnqueueFailed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 118;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = v4;
}

- (void)deleteSampledAudioFileEnqueued
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileEnqueued = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileEnqueued)sampledAudioFileEnqueued
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_sampledAudioFileEnqueued;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileEnqueued:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 117;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = v4;
}

- (void)deleteSampledAudioFileStorageFailed
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileStorageFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileStorageFailed)sampledAudioFileStorageFailed
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_sampledAudioFileStorageFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileStorageFailed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 116;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = v4;
}

- (void)deleteSampledAudioFileStored
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_sampledAudioFileStored = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRSampledAudioFileStored)sampledAudioFileStored
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_sampledAudioFileStored;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSampledAudioFileStored:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 115;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = v4;
}

- (void)deleteFinalAudioPacketContainingSpeechReceived
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_finalAudioPacketContainingSpeechReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFinalAudioPacketContainingSpeechReceived)finalAudioPacketContainingSpeechReceived
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_finalAudioPacketContainingSpeechReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFinalAudioPacketContainingSpeechReceived:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 114;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = v4;
}

- (void)deleteFirstAudioPacketProcessed
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_firstAudioPacketProcessed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFirstAudioPacketProcessed)firstAudioPacketProcessed
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_firstAudioPacketProcessed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFirstAudioPacketProcessed:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 113;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = v4;
}

- (void)deleteAudioPacketArrivalContext
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_audioPacketArrivalContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAudioPacketArrivalContext)audioPacketArrivalContext
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_audioPacketArrivalContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioPacketArrivalContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 112;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = v4;
}

- (void)deleteJitLanguageModelEnrollmentEndedTier1
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_jitLanguageModelEnrollmentEndedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)jitLanguageModelEnrollmentEndedTier1
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_jitLanguageModelEnrollmentEndedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJitLanguageModelEnrollmentEndedTier1:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 111;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = v4;
}

- (void)deleteLanguageModelEnrollmentContext
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_languageModelEnrollmentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRJitLanguageModelEnrollmentContext)languageModelEnrollmentContext
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_languageModelEnrollmentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLanguageModelEnrollmentContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 110;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = v4;
}

- (void)deleteAssetLoadContext
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_assetLoadContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAssetLoadContext)assetLoadContext
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_assetLoadContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssetLoadContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 109;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = v4;
}

- (void)deleteInitializationContext
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_initializationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRInitializationContext)initializationContext
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_initializationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInitializationContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 108;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  initializationContext = self->_initializationContext;
  self->_initializationContext = v4;
}

- (void)deleteIntermediateUtteranceInfoTier1
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_intermediateUtteranceInfoTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRIntermediateUtteranceInfoTier1)intermediateUtteranceInfoTier1
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_intermediateUtteranceInfoTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIntermediateUtteranceInfoTier1:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 107;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = v4;
}

- (void)deleteFinalResultGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_finalResultGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRFinalResultGenerated)finalResultGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_finalResultGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFinalResultGenerated:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 106;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = v4;
}

- (void)deleteRecognitionResultTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_recognitionResultTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRRecognitionResultTier1)recognitionResultTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_recognitionResultTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRecognitionResultTier1:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 105;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = v4;
}

- (void)deletePackageGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_packageGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRPackageGenerated)packageGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_packageGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPackageGenerated:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 104;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = v4;
}

- (void)deletePartialResultGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_partialResultGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRPartialResultGenerated)partialResultGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_partialResultGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPartialResultGenerated:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  requestContext = self->_requestContext;
  self->_requestContext = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 103;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = v4;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRRequestContext)requestContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_requestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestContext:(id)a3
{
  v4 = a3;
  preheatContext = self->_preheatContext;
  self->_preheatContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 102;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
}

- (void)deletePreheatContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_preheatContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRPreheatContext)preheatContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_preheatContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPreheatContext:(id)a3
{
  v4 = a3;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = 0;

  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = 0;

  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = 0;

  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = 0;

  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = 0;

  initializationContext = self->_initializationContext;
  self->_initializationContext = 0;

  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = 0;

  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = 0;

  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = 0;

  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = 0;

  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = 0;

  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = 0;

  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = 0;

  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = 0;

  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = 0;

  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = 0;

  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = 0;

  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = 0;

  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = 0;

  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = 0;

  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = 0;

  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = 0;

  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = 0;

  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = 0;

  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = 0;

  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = 0;

  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = 0;

  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = 0;

  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = 0;

  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = 0;

  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = 0;

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = 0;

  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = 0;

  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = 0;

  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = 0;

  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = 0;

  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = 0;

  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = 0;

  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = 0;

  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = 0;

  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = 0;

  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = 0;

  v48 = 101;
  if (!v4)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  preheatContext = self->_preheatContext;
  self->_preheatContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x2B)
  {
    return @"com.apple.aiml.siri.asr.ASRClientEvent";
  }

  else
  {
    return off_1E78D1A90[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v143.receiver = self;
  v143.super_class = ASRSchemaASRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v143 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  v6 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ASRSchemaASRClientEvent *)self preheatContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ASRSchemaASRClientEvent *)self deletePreheatContext];
  }

  v12 = [(ASRSchemaASRClientEvent *)self requestContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ASRSchemaASRClientEvent *)self deleteRequestContext];
  }

  v15 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ASRSchemaASRClientEvent *)self deletePartialResultGenerated];
  }

  v18 = [(ASRSchemaASRClientEvent *)self packageGenerated];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ASRSchemaASRClientEvent *)self deletePackageGenerated];
  }

  v21 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
  }

  v24 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalResultGenerated];
  }

  v27 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
  }

  v30 = [(ASRSchemaASRClientEvent *)self initializationContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(ASRSchemaASRClientEvent *)self deleteInitializationContext];
  }

  v33 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(ASRSchemaASRClientEvent *)self deleteAssetLoadContext];
  }

  v36 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(ASRSchemaASRClientEvent *)self deleteLanguageModelEnrollmentContext];
  }

  v39 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
  }

  v42 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioPacketArrivalContext];
  }

  v45 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketProcessed];
  }

  v48 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalAudioPacketContainingSpeechReceived];
  }

  v51 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileStored];
  }

  v54 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileStorageFailed];
  }

  v57 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileEnqueued];
  }

  v60 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileEnqueueFailed];
  }

  v63 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileDeleted];
  }

  v66 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileDeletionFailed];
  }

  v69 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppleNeuralEngineCompilationContext];
  }

  v72 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandMetricsReported];
  }

  v75 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppLanguageModelLoadContext];
  }

  v78 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(ASRSchemaASRClientEvent *)self deleteEmbeddedSpeechProcessContext];
  }

  v81 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
  }

  v84 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditMetricClassified];
  }

  v87 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditClassificationContext];
  }

  v90 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(ASRSchemaASRClientEvent *)self deleteActiveConfigUpdateContext];
  }

  v93 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppleNeuralEngineModelInitializationContext];
  }

  v96 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(ASRSchemaASRClientEvent *)self deleteFrameProcessingReady];
  }

  v99 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(ASRSchemaASRClientEvent *)self deleteLeadingSilenceProcessed];
  }

  v102 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstSecondAfterLeadingSilenceProcessed];
  }

  v105 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioSpeechPacketArrivalContext];
  }

  v108 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  }

  v111 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketRecorded];
  }

  v114 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioPacketContainingEndOfFirstWordReadyUpstream];
  }

  v117 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketReadyUpstream];
  }

  v120 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalAudioPacketContainingSpeechReadyUpstream];
  }

  v123 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
  }

  v126 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
  }

  v129 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
  {
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  v132 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  v133 = [v132 applySensitiveConditionsPolicy:v4];
  v134 = [v133 suppressMessage];

  if (v134)
  {
    [(ASRSchemaASRClientEvent *)self deleteContextualEntityCollectionTriggered];
  }

  v135 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  v136 = [v135 applySensitiveConditionsPolicy:v4];
  v137 = [v136 suppressMessage];

  if (v137)
  {
    [(ASRSchemaASRClientEvent *)self deleteContextualEntityRetrievalContext];
  }

  v138 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
  v139 = [v138 applySensitiveConditionsPolicy:v4];
  v140 = [v139 suppressMessage];

  if (v140)
  {
    [(ASRSchemaASRClientEvent *)self deletePersonalizationUserEditNamedEntityMetrics];
  }

  v141 = v5;

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v4 = [v3 asrId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 8;
  }

  else
  {
    v10 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v9 = [v14 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v4 = [v3 asrId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x2B)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8D00[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_1E78E8E60[a3 - 101];
  }
}

- (int)clockIsolationLevel
{
  v2 = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (v2 - 125 > 0xE || ((1 << (v2 - 125)) & 0x4007) == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end