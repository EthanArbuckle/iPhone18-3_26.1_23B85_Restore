@interface ASRSchemaASRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
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
- (ASRSchemaASRClientEvent)initWithDictionary:(id)dictionary;
- (ASRSchemaASRClientEvent)initWithJSON:(id)n;
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
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setActiveConfigUpdateContext:(id)context;
- (void)setAlternativeSelectionTextCategorized:(id)categorized;
- (void)setAppLanguageModelLoadContext:(id)context;
- (void)setAppleNeuralEngineCompilationContext:(id)context;
- (void)setAppleNeuralEngineModelInitializationContext:(id)context;
- (void)setAssetLoadContext:(id)context;
- (void)setAudioPacketArrivalContext:(id)context;
- (void)setAudioPacketContainingEndOfFirstWordReadyUpstream:(id)upstream;
- (void)setAudioSpeechPacketArrivalContext:(id)context;
- (void)setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:(id)arrived;
- (void)setContextualEntityCollectionTriggered:(id)triggered;
- (void)setContextualEntityRetrievalContext:(id)context;
- (void)setDictationVoiceCommandInfoTier1:(id)tier1;
- (void)setDictationVoiceCommandMetricsReported:(id)reported;
- (void)setEmbeddedSpeechProcessContext:(id)context;
- (void)setFinalAudioPacketContainingSpeechReadyUpstream:(id)upstream;
- (void)setFinalAudioPacketContainingSpeechReceived:(id)received;
- (void)setFinalResultGenerated:(id)generated;
- (void)setFirstAudioPacketProcessed:(id)processed;
- (void)setFirstAudioPacketReadyUpstream:(id)upstream;
- (void)setFirstAudioPacketRecorded:(id)recorded;
- (void)setFirstSecondAfterLeadingSilenceProcessed:(id)processed;
- (void)setFrameProcessingReady:(id)ready;
- (void)setInitializationContext:(id)context;
- (void)setIntermediateUtteranceInfoTier1:(id)tier1;
- (void)setJitLanguageModelEnrollmentEndedTier1:(id)tier1;
- (void)setLanguageModelEnrollmentContext:(id)context;
- (void)setLeadingSilenceProcessed:(id)processed;
- (void)setManualEditClassificationContext:(id)context;
- (void)setManualEditMetricClassified:(id)classified;
- (void)setManualEditTextClassified:(id)classified;
- (void)setPackageGenerated:(id)generated;
- (void)setPartialResultGenerated:(id)generated;
- (void)setPersonalizationUserEditNamedEntityMetrics:(id)metrics;
- (void)setPreheatContext:(id)context;
- (void)setRecognitionResultTier1:(id)tier1;
- (void)setRequestContext:(id)context;
- (void)setRescoringDeliberationResultTier1:(id)tier1;
- (void)setSampledAudioFileDeleted:(id)deleted;
- (void)setSampledAudioFileDeletionFailed:(id)failed;
- (void)setSampledAudioFileEnqueueFailed:(id)failed;
- (void)setSampledAudioFileEnqueued:(id)enqueued;
- (void)setSampledAudioFileStorageFailed:(id)failed;
- (void)setSampledAudioFileStored:(id)stored;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRClientEvent

- (ASRSchemaASRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v136.receiver = self;
  v136.super_class = ASRSchemaASRClientEvent;
  v5 = [(ASRSchemaASRClientEvent *)&v136 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRClientEventMetadata alloc] initWithDictionary:v6];
      [(ASRSchemaASRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"preheatContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRPreheatContext alloc] initWithDictionary:v8];
      [(ASRSchemaASRClientEvent *)v5 setPreheatContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ASRSchemaASRRequestContext alloc] initWithDictionary:v10];
      [(ASRSchemaASRClientEvent *)v5 setRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"partialResultGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ASRSchemaASRPartialResultGenerated alloc] initWithDictionary:v12];
      [(ASRSchemaASRClientEvent *)v5 setPartialResultGenerated:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"packageGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ASRSchemaASRPackageGenerated alloc] initWithDictionary:v14];
      [(ASRSchemaASRClientEvent *)v5 setPackageGenerated:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"recognitionResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ASRSchemaASRRecognitionResultTier1 alloc] initWithDictionary:v16];
      [(ASRSchemaASRClientEvent *)v5 setRecognitionResultTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"finalResultGenerated"];
    objc_opt_class();
    v135 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ASRSchemaASRFinalResultGenerated alloc] initWithDictionary:v18];
      [(ASRSchemaASRClientEvent *)v5 setFinalResultGenerated:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    objc_opt_class();
    v134 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[ASRSchemaASRIntermediateUtteranceInfoTier1 alloc] initWithDictionary:v20];
      [(ASRSchemaASRClientEvent *)v5 setIntermediateUtteranceInfoTier1:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"initializationContext"];
    objc_opt_class();
    v133 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ASRSchemaASRInitializationContext alloc] initWithDictionary:v22];
      [(ASRSchemaASRClientEvent *)v5 setInitializationContext:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"assetLoadContext"];
    objc_opt_class();
    v132 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[ASRSchemaASRAssetLoadContext alloc] initWithDictionary:v24];
      [(ASRSchemaASRClientEvent *)v5 setAssetLoadContext:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"languageModelEnrollmentContext"];
    objc_opt_class();
    v131 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[ASRSchemaASRJitLanguageModelEnrollmentContext alloc] initWithDictionary:v26];
      [(ASRSchemaASRClientEvent *)v5 setLanguageModelEnrollmentContext:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    objc_opt_class();
    v130 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 alloc] initWithDictionary:v28];
      [(ASRSchemaASRClientEvent *)v5 setJitLanguageModelEnrollmentEndedTier1:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"audioPacketArrivalContext"];
    objc_opt_class();
    v129 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[ASRSchemaASRAudioPacketArrivalContext alloc] initWithDictionary:v30];
      [(ASRSchemaASRClientEvent *)v5 setAudioPacketArrivalContext:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"firstAudioPacketProcessed"];
    objc_opt_class();
    v128 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ASRSchemaASRFirstAudioPacketProcessed alloc] initWithDictionary:v32];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketProcessed:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    objc_opt_class();
    v127 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[ASRSchemaASRFinalAudioPacketContainingSpeechReceived alloc] initWithDictionary:v34];
      [(ASRSchemaASRClientEvent *)v5 setFinalAudioPacketContainingSpeechReceived:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileStored"];
    objc_opt_class();
    v126 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[ASRSchemaASRSampledAudioFileStored alloc] initWithDictionary:v36];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileStored:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileStorageFailed"];
    objc_opt_class();
    v125 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[ASRSchemaASRSampledAudioFileStorageFailed alloc] initWithDictionary:v38];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileStorageFailed:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileEnqueued"];
    objc_opt_class();
    v124 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[ASRSchemaASRSampledAudioFileEnqueued alloc] initWithDictionary:v40];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileEnqueued:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    objc_opt_class();
    v123 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[ASRSchemaASRSampledAudioFileEnqueueFailed alloc] initWithDictionary:v42];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileEnqueueFailed:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileDeleted"];
    objc_opt_class();
    v122 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[ASRSchemaASRSampledAudioFileDeleted alloc] initWithDictionary:v44];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileDeleted:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    objc_opt_class();
    v121 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[ASRSchemaASRSampledAudioFileDeletionFailed alloc] initWithDictionary:v46];
      [(ASRSchemaASRClientEvent *)v5 setSampledAudioFileDeletionFailed:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    objc_opt_class();
    v120 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[ASRSchemaASRAppleNeuralEngineCompilationContext alloc] initWithDictionary:v48];
      [(ASRSchemaASRClientEvent *)v5 setAppleNeuralEngineCompilationContext:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    objc_opt_class();
    v119 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[ASRSchemaASRDictationVoiceCommandMetricsReported alloc] initWithDictionary:v50];
      [(ASRSchemaASRClientEvent *)v5 setDictationVoiceCommandMetricsReported:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"appLanguageModelLoadContext"];
    objc_opt_class();
    v118 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[ASRSchemaASRAppLanguageModelLoadContext alloc] initWithDictionary:v52];
      [(ASRSchemaASRClientEvent *)v5 setAppLanguageModelLoadContext:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"embeddedSpeechProcessContext"];
    objc_opt_class();
    v117 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ASRSchemaASREmbeddedSpeechProcessContext alloc] initWithDictionary:v54];
      [(ASRSchemaASRClientEvent *)v5 setEmbeddedSpeechProcessContext:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"manualEditTextClassified"];
    objc_opt_class();
    v116 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[ASRSchemaASRManualEditTextClassified alloc] initWithDictionary:v56];
      [(ASRSchemaASRClientEvent *)v5 setManualEditTextClassified:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"manualEditMetricClassified"];
    objc_opt_class();
    v115 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[ASRSchemaASRManualEditMetricClassified alloc] initWithDictionary:v58];
      [(ASRSchemaASRClientEvent *)v5 setManualEditMetricClassified:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"manualEditClassificationContext"];
    objc_opt_class();
    v114 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[ASRSchemaASRManualEditClassificationContext alloc] initWithDictionary:v60];
      [(ASRSchemaASRClientEvent *)v5 setManualEditClassificationContext:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"activeConfigUpdateContext"];
    objc_opt_class();
    v113 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[ASRSchemaASRActiveConfigUpdateContext alloc] initWithDictionary:v62];
      [(ASRSchemaASRClientEvent *)v5 setActiveConfigUpdateContext:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    objc_opt_class();
    v112 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[ASRSchemaASRAppleNeuralEngineModelInitializationContext alloc] initWithDictionary:v64];
      [(ASRSchemaASRClientEvent *)v5 setAppleNeuralEngineModelInitializationContext:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"frameProcessingReady"];
    objc_opt_class();
    v111 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[ASRSchemaASRFrameProcessingReady alloc] initWithDictionary:v66];
      [(ASRSchemaASRClientEvent *)v5 setFrameProcessingReady:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"leadingSilenceProcessed"];
    objc_opt_class();
    v110 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[ASRSchemaASRLeadingSilenceProcessed alloc] initWithDictionary:v68];
      [(ASRSchemaASRClientEvent *)v5 setLeadingSilenceProcessed:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    objc_opt_class();
    v109 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[ASRSchemaASRFirstSecondAfterLeadingSilenceProcessed alloc] initWithDictionary:v70];
      [(ASRSchemaASRClientEvent *)v5 setFirstSecondAfterLeadingSilenceProcessed:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    objc_opt_class();
    v108 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[ASRSchemaASRAudioSpeechPacketArrivalContext alloc] initWithDictionary:v72];
      [(ASRSchemaASRClientEvent *)v5 setAudioSpeechPacketArrivalContext:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    objc_opt_class();
    v107 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[ASRSchemaASRAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived alloc] initWithDictionary:v74];
      [(ASRSchemaASRClientEvent *)v5 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"firstAudioPacketRecorded"];
    objc_opt_class();
    v106 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[ASRSchemaASRFirstAudioPacketRecorded alloc] initWithDictionary:v76];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketRecorded:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    objc_opt_class();
    v105 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[ASRSchemaASRAudioPacketContainingEndOfFirstWordReadyUpstream alloc] initWithDictionary:v78];
      [(ASRSchemaASRClientEvent *)v5 setAudioPacketContainingEndOfFirstWordReadyUpstream:v79];
    }

    v100 = v14;
    v80 = [dictionaryCopy objectForKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [[ASRSchemaASRFirstAudioPacketReadyUpstream alloc] initWithDictionary:v80];
      [(ASRSchemaASRClientEvent *)v5 setFirstAudioPacketReadyUpstream:v81];
    }

    v98 = v80;
    v99 = v16;
    v82 = [dictionaryCopy objectForKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v83 = [[ASRSchemaASRFinalAudioPacketContainingSpeechReadyUpstream alloc] initWithDictionary:v82];
      [(ASRSchemaASRClientEvent *)v5 setFinalAudioPacketContainingSpeechReadyUpstream:v83];
    }

    v104 = v6;
    v84 = [dictionaryCopy objectForKeyedSubscript:@"alternativeSelectionTextCategorized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = [[ASRSchemaASRAlternativeSelectionTextCategorized alloc] initWithDictionary:v84];
      [(ASRSchemaASRClientEvent *)v5 setAlternativeSelectionTextCategorized:v85];
    }

    v103 = v8;
    v86 = [dictionaryCopy objectForKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = [[ASRSchemaASRDictationVoiceCommandInfoTier1 alloc] initWithDictionary:v86];
      [(ASRSchemaASRClientEvent *)v5 setDictationVoiceCommandInfoTier1:v87];
    }

    v102 = v10;
    v88 = [dictionaryCopy objectForKeyedSubscript:@"rescoringDeliberationResultTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [[ASRSchemaASRRescoringDeliberationResultTier1 alloc] initWithDictionary:v88];
      [(ASRSchemaASRClientEvent *)v5 setRescoringDeliberationResultTier1:v89];
    }

    v101 = v12;
    v90 = [dictionaryCopy objectForKeyedSubscript:@"contextualEntityCollectionTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [[ASRSchemaASRContextualEntityCollectionTriggered alloc] initWithDictionary:v90];
      [(ASRSchemaASRClientEvent *)v5 setContextualEntityCollectionTriggered:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"contextualEntityRetrievalContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = [[ASRSchemaASRContextualEntityRetrievalContext alloc] initWithDictionary:v92];
      [(ASRSchemaASRClientEvent *)v5 setContextualEntityRetrievalContext:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
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

- (ASRSchemaASRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_activeConfigUpdateContext)
  {
    activeConfigUpdateContext = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    dictionaryRepresentation = [activeConfigUpdateContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"activeConfigUpdateContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"activeConfigUpdateContext"];
    }
  }

  if (self->_alternativeSelectionTextCategorized)
  {
    alternativeSelectionTextCategorized = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    dictionaryRepresentation2 = [alternativeSelectionTextCategorized dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"alternativeSelectionTextCategorized"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"alternativeSelectionTextCategorized"];
    }
  }

  if (self->_appLanguageModelLoadContext)
  {
    appLanguageModelLoadContext = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    dictionaryRepresentation3 = [appLanguageModelLoadContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"appLanguageModelLoadContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"appLanguageModelLoadContext"];
    }
  }

  if (self->_appleNeuralEngineCompilationContext)
  {
    appleNeuralEngineCompilationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    dictionaryRepresentation4 = [appleNeuralEngineCompilationContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"appleNeuralEngineCompilationContext"];
    }
  }

  if (self->_appleNeuralEngineModelInitializationContext)
  {
    appleNeuralEngineModelInitializationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    dictionaryRepresentation5 = [appleNeuralEngineModelInitializationContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"appleNeuralEngineModelInitializationContext"];
    }
  }

  if (self->_assetLoadContext)
  {
    assetLoadContext = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    dictionaryRepresentation6 = [assetLoadContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"assetLoadContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"assetLoadContext"];
    }
  }

  if (self->_audioPacketArrivalContext)
  {
    audioPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    dictionaryRepresentation7 = [audioPacketArrivalContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"audioPacketArrivalContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"audioPacketArrivalContext"];
    }
  }

  if (self->_audioPacketContainingEndOfFirstWordReadyUpstream)
  {
    audioPacketContainingEndOfFirstWordReadyUpstream = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    dictionaryRepresentation8 = [audioPacketContainingEndOfFirstWordReadyUpstream dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"audioPacketContainingEndOfFirstWordReadyUpstream"];
    }
  }

  if (self->_audioSpeechPacketArrivalContext)
  {
    audioSpeechPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    dictionaryRepresentation9 = [audioSpeechPacketArrivalContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"audioSpeechPacketArrivalContext"];
    }
  }

  if (self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)
  {
    audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    dictionaryRepresentation10 = [audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived"];
    }
  }

  if (self->_contextualEntityCollectionTriggered)
  {
    contextualEntityCollectionTriggered = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    dictionaryRepresentation11 = [contextualEntityCollectionTriggered dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"contextualEntityCollectionTriggered"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"contextualEntityCollectionTriggered"];
    }
  }

  if (self->_contextualEntityRetrievalContext)
  {
    contextualEntityRetrievalContext = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    dictionaryRepresentation12 = [contextualEntityRetrievalContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"contextualEntityRetrievalContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"contextualEntityRetrievalContext"];
    }
  }

  if (self->_dictationVoiceCommandInfoTier1)
  {
    dictationVoiceCommandInfoTier1 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    dictionaryRepresentation13 = [dictationVoiceCommandInfoTier1 dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"dictationVoiceCommandInfoTier1"];
    }
  }

  if (self->_dictationVoiceCommandMetricsReported)
  {
    dictationVoiceCommandMetricsReported = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    dictionaryRepresentation14 = [dictationVoiceCommandMetricsReported dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"dictationVoiceCommandMetricsReported"];
    }
  }

  if (self->_embeddedSpeechProcessContext)
  {
    embeddedSpeechProcessContext = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    dictionaryRepresentation15 = [embeddedSpeechProcessContext dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"embeddedSpeechProcessContext"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"embeddedSpeechProcessContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];
    dictionaryRepresentation16 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_finalAudioPacketContainingSpeechReadyUpstream)
  {
    finalAudioPacketContainingSpeechReadyUpstream = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    dictionaryRepresentation17 = [finalAudioPacketContainingSpeechReadyUpstream dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"finalAudioPacketContainingSpeechReadyUpstream"];
    }
  }

  if (self->_finalAudioPacketContainingSpeechReceived)
  {
    finalAudioPacketContainingSpeechReceived = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    dictionaryRepresentation18 = [finalAudioPacketContainingSpeechReceived dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"finalAudioPacketContainingSpeechReceived"];
    }
  }

  if (self->_finalResultGenerated)
  {
    finalResultGenerated = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    dictionaryRepresentation19 = [finalResultGenerated dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"finalResultGenerated"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"finalResultGenerated"];
    }
  }

  if (self->_firstAudioPacketProcessed)
  {
    firstAudioPacketProcessed = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    dictionaryRepresentation20 = [firstAudioPacketProcessed dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"firstAudioPacketProcessed"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"firstAudioPacketProcessed"];
    }
  }

  if (self->_firstAudioPacketReadyUpstream)
  {
    firstAudioPacketReadyUpstream = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    dictionaryRepresentation21 = [firstAudioPacketReadyUpstream dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"firstAudioPacketReadyUpstream"];
    }
  }

  if (self->_firstAudioPacketRecorded)
  {
    firstAudioPacketRecorded = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    dictionaryRepresentation22 = [firstAudioPacketRecorded dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"firstAudioPacketRecorded"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"firstAudioPacketRecorded"];
    }
  }

  if (self->_firstSecondAfterLeadingSilenceProcessed)
  {
    firstSecondAfterLeadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    dictionaryRepresentation23 = [firstSecondAfterLeadingSilenceProcessed dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"firstSecondAfterLeadingSilenceProcessed"];
    }
  }

  if (self->_frameProcessingReady)
  {
    frameProcessingReady = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    dictionaryRepresentation24 = [frameProcessingReady dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"frameProcessingReady"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"frameProcessingReady"];
    }
  }

  if (self->_initializationContext)
  {
    initializationContext = [(ASRSchemaASRClientEvent *)self initializationContext];
    dictionaryRepresentation25 = [initializationContext dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"initializationContext"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"initializationContext"];
    }
  }

  if (self->_intermediateUtteranceInfoTier1)
  {
    intermediateUtteranceInfoTier1 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    dictionaryRepresentation26 = [intermediateUtteranceInfoTier1 dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"intermediateUtteranceInfoTier1"];
    }
  }

  if (self->_jitLanguageModelEnrollmentEndedTier1)
  {
    jitLanguageModelEnrollmentEndedTier1 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    dictionaryRepresentation27 = [jitLanguageModelEnrollmentEndedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"jitLanguageModelEnrollmentEndedTier1"];
    }
  }

  if (self->_languageModelEnrollmentContext)
  {
    languageModelEnrollmentContext = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    dictionaryRepresentation28 = [languageModelEnrollmentContext dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"languageModelEnrollmentContext"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"languageModelEnrollmentContext"];
    }
  }

  if (self->_leadingSilenceProcessed)
  {
    leadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    dictionaryRepresentation29 = [leadingSilenceProcessed dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"leadingSilenceProcessed"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"leadingSilenceProcessed"];
    }
  }

  if (self->_manualEditClassificationContext)
  {
    manualEditClassificationContext = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    dictionaryRepresentation30 = [manualEditClassificationContext dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"manualEditClassificationContext"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"manualEditClassificationContext"];
    }
  }

  if (self->_manualEditMetricClassified)
  {
    manualEditMetricClassified = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    dictionaryRepresentation31 = [manualEditMetricClassified dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"manualEditMetricClassified"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"manualEditMetricClassified"];
    }
  }

  if (self->_manualEditTextClassified)
  {
    manualEditTextClassified = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    dictionaryRepresentation32 = [manualEditTextClassified dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"manualEditTextClassified"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"manualEditTextClassified"];
    }
  }

  if (self->_packageGenerated)
  {
    packageGenerated = [(ASRSchemaASRClientEvent *)self packageGenerated];
    dictionaryRepresentation33 = [packageGenerated dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"packageGenerated"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"packageGenerated"];
    }
  }

  if (self->_partialResultGenerated)
  {
    partialResultGenerated = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    dictionaryRepresentation34 = [partialResultGenerated dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"partialResultGenerated"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"partialResultGenerated"];
    }
  }

  if (self->_personalizationUserEditNamedEntityMetrics)
  {
    personalizationUserEditNamedEntityMetrics = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    dictionaryRepresentation35 = [personalizationUserEditNamedEntityMetrics dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"personalizationUserEditNamedEntityMetrics"];
    }
  }

  if (self->_preheatContext)
  {
    preheatContext = [(ASRSchemaASRClientEvent *)self preheatContext];
    dictionaryRepresentation36 = [preheatContext dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"preheatContext"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"preheatContext"];
    }
  }

  if (self->_recognitionResultTier1)
  {
    recognitionResultTier1 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    dictionaryRepresentation37 = [recognitionResultTier1 dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"recognitionResultTier1"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"recognitionResultTier1"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(ASRSchemaASRClientEvent *)self requestContext];
    dictionaryRepresentation38 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_rescoringDeliberationResultTier1)
  {
    rescoringDeliberationResultTier1 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    dictionaryRepresentation39 = [rescoringDeliberationResultTier1 dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"rescoringDeliberationResultTier1"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"rescoringDeliberationResultTier1"];
    }
  }

  if (self->_sampledAudioFileDeleted)
  {
    sampledAudioFileDeleted = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    dictionaryRepresentation40 = [sampledAudioFileDeleted dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"sampledAudioFileDeleted"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"sampledAudioFileDeleted"];
    }
  }

  if (self->_sampledAudioFileDeletionFailed)
  {
    sampledAudioFileDeletionFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    dictionaryRepresentation41 = [sampledAudioFileDeletionFailed dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"sampledAudioFileDeletionFailed"];
    }
  }

  if (self->_sampledAudioFileEnqueueFailed)
  {
    sampledAudioFileEnqueueFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    dictionaryRepresentation42 = [sampledAudioFileEnqueueFailed dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"sampledAudioFileEnqueueFailed"];
    }
  }

  if (self->_sampledAudioFileEnqueued)
  {
    sampledAudioFileEnqueued = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    dictionaryRepresentation43 = [sampledAudioFileEnqueued dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"sampledAudioFileEnqueued"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"sampledAudioFileEnqueued"];
    }
  }

  if (self->_sampledAudioFileStorageFailed)
  {
    sampledAudioFileStorageFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    dictionaryRepresentation44 = [sampledAudioFileStorageFailed dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"sampledAudioFileStorageFailed"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"sampledAudioFileStorageFailed"];
    }
  }

  if (self->_sampledAudioFileStored)
  {
    sampledAudioFileStored = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    dictionaryRepresentation45 = [sampledAudioFileStored dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"sampledAudioFileStored"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"sampledAudioFileStored"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v139 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_228;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_228;
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  eventMetadata3 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self preheatContext];
  eventMetadata2 = [equalCopy preheatContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  preheatContext = [(ASRSchemaASRClientEvent *)self preheatContext];
  if (preheatContext)
  {
    v14 = preheatContext;
    preheatContext2 = [(ASRSchemaASRClientEvent *)self preheatContext];
    preheatContext3 = [equalCopy preheatContext];
    v17 = [preheatContext2 isEqual:preheatContext3];

    if (!v17)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  requestContext = [(ASRSchemaASRClientEvent *)self requestContext];
  if (requestContext)
  {
    v19 = requestContext;
    requestContext2 = [(ASRSchemaASRClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v22 = [requestContext2 isEqual:requestContext3];

    if (!v22)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  eventMetadata2 = [equalCopy partialResultGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  partialResultGenerated = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  if (partialResultGenerated)
  {
    v24 = partialResultGenerated;
    partialResultGenerated2 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    partialResultGenerated3 = [equalCopy partialResultGenerated];
    v27 = [partialResultGenerated2 isEqual:partialResultGenerated3];

    if (!v27)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self packageGenerated];
  eventMetadata2 = [equalCopy packageGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  packageGenerated = [(ASRSchemaASRClientEvent *)self packageGenerated];
  if (packageGenerated)
  {
    v29 = packageGenerated;
    packageGenerated2 = [(ASRSchemaASRClientEvent *)self packageGenerated];
    packageGenerated3 = [equalCopy packageGenerated];
    v32 = [packageGenerated2 isEqual:packageGenerated3];

    if (!v32)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  eventMetadata2 = [equalCopy recognitionResultTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  recognitionResultTier1 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  if (recognitionResultTier1)
  {
    v34 = recognitionResultTier1;
    recognitionResultTier12 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    recognitionResultTier13 = [equalCopy recognitionResultTier1];
    v37 = [recognitionResultTier12 isEqual:recognitionResultTier13];

    if (!v37)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  eventMetadata2 = [equalCopy finalResultGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  finalResultGenerated = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  if (finalResultGenerated)
  {
    v39 = finalResultGenerated;
    finalResultGenerated2 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    finalResultGenerated3 = [equalCopy finalResultGenerated];
    v42 = [finalResultGenerated2 isEqual:finalResultGenerated3];

    if (!v42)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  eventMetadata2 = [equalCopy intermediateUtteranceInfoTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  intermediateUtteranceInfoTier1 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  if (intermediateUtteranceInfoTier1)
  {
    v44 = intermediateUtteranceInfoTier1;
    intermediateUtteranceInfoTier12 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    intermediateUtteranceInfoTier13 = [equalCopy intermediateUtteranceInfoTier1];
    v47 = [intermediateUtteranceInfoTier12 isEqual:intermediateUtteranceInfoTier13];

    if (!v47)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self initializationContext];
  eventMetadata2 = [equalCopy initializationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  initializationContext = [(ASRSchemaASRClientEvent *)self initializationContext];
  if (initializationContext)
  {
    v49 = initializationContext;
    initializationContext2 = [(ASRSchemaASRClientEvent *)self initializationContext];
    initializationContext3 = [equalCopy initializationContext];
    v52 = [initializationContext2 isEqual:initializationContext3];

    if (!v52)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  eventMetadata2 = [equalCopy assetLoadContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  assetLoadContext = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  if (assetLoadContext)
  {
    v54 = assetLoadContext;
    assetLoadContext2 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    assetLoadContext3 = [equalCopy assetLoadContext];
    v57 = [assetLoadContext2 isEqual:assetLoadContext3];

    if (!v57)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  eventMetadata2 = [equalCopy languageModelEnrollmentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  languageModelEnrollmentContext = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  if (languageModelEnrollmentContext)
  {
    v59 = languageModelEnrollmentContext;
    languageModelEnrollmentContext2 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    languageModelEnrollmentContext3 = [equalCopy languageModelEnrollmentContext];
    v62 = [languageModelEnrollmentContext2 isEqual:languageModelEnrollmentContext3];

    if (!v62)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  eventMetadata2 = [equalCopy jitLanguageModelEnrollmentEndedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  jitLanguageModelEnrollmentEndedTier1 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  if (jitLanguageModelEnrollmentEndedTier1)
  {
    v64 = jitLanguageModelEnrollmentEndedTier1;
    jitLanguageModelEnrollmentEndedTier12 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    jitLanguageModelEnrollmentEndedTier13 = [equalCopy jitLanguageModelEnrollmentEndedTier1];
    v67 = [jitLanguageModelEnrollmentEndedTier12 isEqual:jitLanguageModelEnrollmentEndedTier13];

    if (!v67)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  eventMetadata2 = [equalCopy audioPacketArrivalContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  audioPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  if (audioPacketArrivalContext)
  {
    v69 = audioPacketArrivalContext;
    audioPacketArrivalContext2 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    audioPacketArrivalContext3 = [equalCopy audioPacketArrivalContext];
    v72 = [audioPacketArrivalContext2 isEqual:audioPacketArrivalContext3];

    if (!v72)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  eventMetadata2 = [equalCopy firstAudioPacketProcessed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  firstAudioPacketProcessed = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  if (firstAudioPacketProcessed)
  {
    v74 = firstAudioPacketProcessed;
    firstAudioPacketProcessed2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    firstAudioPacketProcessed3 = [equalCopy firstAudioPacketProcessed];
    v77 = [firstAudioPacketProcessed2 isEqual:firstAudioPacketProcessed3];

    if (!v77)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  eventMetadata2 = [equalCopy finalAudioPacketContainingSpeechReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  finalAudioPacketContainingSpeechReceived = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  if (finalAudioPacketContainingSpeechReceived)
  {
    v79 = finalAudioPacketContainingSpeechReceived;
    finalAudioPacketContainingSpeechReceived2 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    finalAudioPacketContainingSpeechReceived3 = [equalCopy finalAudioPacketContainingSpeechReceived];
    v82 = [finalAudioPacketContainingSpeechReceived2 isEqual:finalAudioPacketContainingSpeechReceived3];

    if (!v82)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  eventMetadata2 = [equalCopy sampledAudioFileStored];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileStored = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  if (sampledAudioFileStored)
  {
    v84 = sampledAudioFileStored;
    sampledAudioFileStored2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    sampledAudioFileStored3 = [equalCopy sampledAudioFileStored];
    v87 = [sampledAudioFileStored2 isEqual:sampledAudioFileStored3];

    if (!v87)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  eventMetadata2 = [equalCopy sampledAudioFileStorageFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileStorageFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  if (sampledAudioFileStorageFailed)
  {
    v89 = sampledAudioFileStorageFailed;
    sampledAudioFileStorageFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    sampledAudioFileStorageFailed3 = [equalCopy sampledAudioFileStorageFailed];
    v92 = [sampledAudioFileStorageFailed2 isEqual:sampledAudioFileStorageFailed3];

    if (!v92)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  eventMetadata2 = [equalCopy sampledAudioFileEnqueued];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileEnqueued = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  if (sampledAudioFileEnqueued)
  {
    v94 = sampledAudioFileEnqueued;
    sampledAudioFileEnqueued2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    sampledAudioFileEnqueued3 = [equalCopy sampledAudioFileEnqueued];
    v97 = [sampledAudioFileEnqueued2 isEqual:sampledAudioFileEnqueued3];

    if (!v97)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  eventMetadata2 = [equalCopy sampledAudioFileEnqueueFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileEnqueueFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  if (sampledAudioFileEnqueueFailed)
  {
    v99 = sampledAudioFileEnqueueFailed;
    sampledAudioFileEnqueueFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    sampledAudioFileEnqueueFailed3 = [equalCopy sampledAudioFileEnqueueFailed];
    v102 = [sampledAudioFileEnqueueFailed2 isEqual:sampledAudioFileEnqueueFailed3];

    if (!v102)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  eventMetadata2 = [equalCopy sampledAudioFileDeleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileDeleted = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  if (sampledAudioFileDeleted)
  {
    v104 = sampledAudioFileDeleted;
    sampledAudioFileDeleted2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    sampledAudioFileDeleted3 = [equalCopy sampledAudioFileDeleted];
    v107 = [sampledAudioFileDeleted2 isEqual:sampledAudioFileDeleted3];

    if (!v107)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  eventMetadata2 = [equalCopy sampledAudioFileDeletionFailed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  sampledAudioFileDeletionFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  if (sampledAudioFileDeletionFailed)
  {
    v109 = sampledAudioFileDeletionFailed;
    sampledAudioFileDeletionFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    sampledAudioFileDeletionFailed3 = [equalCopy sampledAudioFileDeletionFailed];
    v112 = [sampledAudioFileDeletionFailed2 isEqual:sampledAudioFileDeletionFailed3];

    if (!v112)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  eventMetadata2 = [equalCopy appleNeuralEngineCompilationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  appleNeuralEngineCompilationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  if (appleNeuralEngineCompilationContext)
  {
    v114 = appleNeuralEngineCompilationContext;
    appleNeuralEngineCompilationContext2 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    appleNeuralEngineCompilationContext3 = [equalCopy appleNeuralEngineCompilationContext];
    v117 = [appleNeuralEngineCompilationContext2 isEqual:appleNeuralEngineCompilationContext3];

    if (!v117)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  eventMetadata2 = [equalCopy dictationVoiceCommandMetricsReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  dictationVoiceCommandMetricsReported = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  if (dictationVoiceCommandMetricsReported)
  {
    v119 = dictationVoiceCommandMetricsReported;
    dictationVoiceCommandMetricsReported2 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    dictationVoiceCommandMetricsReported3 = [equalCopy dictationVoiceCommandMetricsReported];
    v122 = [dictationVoiceCommandMetricsReported2 isEqual:dictationVoiceCommandMetricsReported3];

    if (!v122)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  eventMetadata2 = [equalCopy appLanguageModelLoadContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  appLanguageModelLoadContext = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  if (appLanguageModelLoadContext)
  {
    v124 = appLanguageModelLoadContext;
    appLanguageModelLoadContext2 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    appLanguageModelLoadContext3 = [equalCopy appLanguageModelLoadContext];
    v127 = [appLanguageModelLoadContext2 isEqual:appLanguageModelLoadContext3];

    if (!v127)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  eventMetadata2 = [equalCopy embeddedSpeechProcessContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  embeddedSpeechProcessContext = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  if (embeddedSpeechProcessContext)
  {
    v129 = embeddedSpeechProcessContext;
    embeddedSpeechProcessContext2 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    embeddedSpeechProcessContext3 = [equalCopy embeddedSpeechProcessContext];
    v132 = [embeddedSpeechProcessContext2 isEqual:embeddedSpeechProcessContext3];

    if (!v132)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  eventMetadata2 = [equalCopy manualEditTextClassified];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  manualEditTextClassified = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  if (manualEditTextClassified)
  {
    v134 = manualEditTextClassified;
    manualEditTextClassified2 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    manualEditTextClassified3 = [equalCopy manualEditTextClassified];
    v137 = [manualEditTextClassified2 isEqual:manualEditTextClassified3];

    if (!v137)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  eventMetadata2 = [equalCopy manualEditMetricClassified];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  manualEditMetricClassified = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  if (manualEditMetricClassified)
  {
    v139 = manualEditMetricClassified;
    manualEditMetricClassified2 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    manualEditMetricClassified3 = [equalCopy manualEditMetricClassified];
    v142 = [manualEditMetricClassified2 isEqual:manualEditMetricClassified3];

    if (!v142)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  eventMetadata2 = [equalCopy manualEditClassificationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  manualEditClassificationContext = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  if (manualEditClassificationContext)
  {
    v144 = manualEditClassificationContext;
    manualEditClassificationContext2 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    manualEditClassificationContext3 = [equalCopy manualEditClassificationContext];
    v147 = [manualEditClassificationContext2 isEqual:manualEditClassificationContext3];

    if (!v147)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  eventMetadata2 = [equalCopy activeConfigUpdateContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  activeConfigUpdateContext = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  if (activeConfigUpdateContext)
  {
    v149 = activeConfigUpdateContext;
    activeConfigUpdateContext2 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    activeConfigUpdateContext3 = [equalCopy activeConfigUpdateContext];
    v152 = [activeConfigUpdateContext2 isEqual:activeConfigUpdateContext3];

    if (!v152)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  eventMetadata2 = [equalCopy appleNeuralEngineModelInitializationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  appleNeuralEngineModelInitializationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  if (appleNeuralEngineModelInitializationContext)
  {
    v154 = appleNeuralEngineModelInitializationContext;
    appleNeuralEngineModelInitializationContext2 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    appleNeuralEngineModelInitializationContext3 = [equalCopy appleNeuralEngineModelInitializationContext];
    v157 = [appleNeuralEngineModelInitializationContext2 isEqual:appleNeuralEngineModelInitializationContext3];

    if (!v157)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  eventMetadata2 = [equalCopy frameProcessingReady];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  frameProcessingReady = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  if (frameProcessingReady)
  {
    v159 = frameProcessingReady;
    frameProcessingReady2 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    frameProcessingReady3 = [equalCopy frameProcessingReady];
    v162 = [frameProcessingReady2 isEqual:frameProcessingReady3];

    if (!v162)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  eventMetadata2 = [equalCopy leadingSilenceProcessed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  leadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  if (leadingSilenceProcessed)
  {
    v164 = leadingSilenceProcessed;
    leadingSilenceProcessed2 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    leadingSilenceProcessed3 = [equalCopy leadingSilenceProcessed];
    v167 = [leadingSilenceProcessed2 isEqual:leadingSilenceProcessed3];

    if (!v167)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  eventMetadata2 = [equalCopy firstSecondAfterLeadingSilenceProcessed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  firstSecondAfterLeadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  if (firstSecondAfterLeadingSilenceProcessed)
  {
    v169 = firstSecondAfterLeadingSilenceProcessed;
    firstSecondAfterLeadingSilenceProcessed2 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    firstSecondAfterLeadingSilenceProcessed3 = [equalCopy firstSecondAfterLeadingSilenceProcessed];
    v172 = [firstSecondAfterLeadingSilenceProcessed2 isEqual:firstSecondAfterLeadingSilenceProcessed3];

    if (!v172)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  eventMetadata2 = [equalCopy audioSpeechPacketArrivalContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  audioSpeechPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  if (audioSpeechPacketArrivalContext)
  {
    v174 = audioSpeechPacketArrivalContext;
    audioSpeechPacketArrivalContext2 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    audioSpeechPacketArrivalContext3 = [equalCopy audioSpeechPacketArrivalContext];
    v177 = [audioSpeechPacketArrivalContext2 isEqual:audioSpeechPacketArrivalContext3];

    if (!v177)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  eventMetadata2 = [equalCopy audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  if (audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)
  {
    v179 = audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
    audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived2 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived3 = [equalCopy audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    v182 = [audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived2 isEqual:audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived3];

    if (!v182)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  eventMetadata2 = [equalCopy firstAudioPacketRecorded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  firstAudioPacketRecorded = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  if (firstAudioPacketRecorded)
  {
    v184 = firstAudioPacketRecorded;
    firstAudioPacketRecorded2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    firstAudioPacketRecorded3 = [equalCopy firstAudioPacketRecorded];
    v187 = [firstAudioPacketRecorded2 isEqual:firstAudioPacketRecorded3];

    if (!v187)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  eventMetadata2 = [equalCopy audioPacketContainingEndOfFirstWordReadyUpstream];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  audioPacketContainingEndOfFirstWordReadyUpstream = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  if (audioPacketContainingEndOfFirstWordReadyUpstream)
  {
    v189 = audioPacketContainingEndOfFirstWordReadyUpstream;
    audioPacketContainingEndOfFirstWordReadyUpstream2 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    audioPacketContainingEndOfFirstWordReadyUpstream3 = [equalCopy audioPacketContainingEndOfFirstWordReadyUpstream];
    v192 = [audioPacketContainingEndOfFirstWordReadyUpstream2 isEqual:audioPacketContainingEndOfFirstWordReadyUpstream3];

    if (!v192)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  eventMetadata2 = [equalCopy firstAudioPacketReadyUpstream];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  firstAudioPacketReadyUpstream = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  if (firstAudioPacketReadyUpstream)
  {
    v194 = firstAudioPacketReadyUpstream;
    firstAudioPacketReadyUpstream2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    firstAudioPacketReadyUpstream3 = [equalCopy firstAudioPacketReadyUpstream];
    v197 = [firstAudioPacketReadyUpstream2 isEqual:firstAudioPacketReadyUpstream3];

    if (!v197)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  eventMetadata2 = [equalCopy finalAudioPacketContainingSpeechReadyUpstream];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  finalAudioPacketContainingSpeechReadyUpstream = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  if (finalAudioPacketContainingSpeechReadyUpstream)
  {
    v199 = finalAudioPacketContainingSpeechReadyUpstream;
    finalAudioPacketContainingSpeechReadyUpstream2 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    finalAudioPacketContainingSpeechReadyUpstream3 = [equalCopy finalAudioPacketContainingSpeechReadyUpstream];
    v202 = [finalAudioPacketContainingSpeechReadyUpstream2 isEqual:finalAudioPacketContainingSpeechReadyUpstream3];

    if (!v202)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  eventMetadata2 = [equalCopy alternativeSelectionTextCategorized];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  alternativeSelectionTextCategorized = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  if (alternativeSelectionTextCategorized)
  {
    v204 = alternativeSelectionTextCategorized;
    alternativeSelectionTextCategorized2 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    alternativeSelectionTextCategorized3 = [equalCopy alternativeSelectionTextCategorized];
    v207 = [alternativeSelectionTextCategorized2 isEqual:alternativeSelectionTextCategorized3];

    if (!v207)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  eventMetadata2 = [equalCopy dictationVoiceCommandInfoTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  dictationVoiceCommandInfoTier1 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  if (dictationVoiceCommandInfoTier1)
  {
    v209 = dictationVoiceCommandInfoTier1;
    dictationVoiceCommandInfoTier12 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    dictationVoiceCommandInfoTier13 = [equalCopy dictationVoiceCommandInfoTier1];
    v212 = [dictationVoiceCommandInfoTier12 isEqual:dictationVoiceCommandInfoTier13];

    if (!v212)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  eventMetadata2 = [equalCopy rescoringDeliberationResultTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  rescoringDeliberationResultTier1 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  if (rescoringDeliberationResultTier1)
  {
    v214 = rescoringDeliberationResultTier1;
    rescoringDeliberationResultTier12 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    rescoringDeliberationResultTier13 = [equalCopy rescoringDeliberationResultTier1];
    v217 = [rescoringDeliberationResultTier12 isEqual:rescoringDeliberationResultTier13];

    if (!v217)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  eventMetadata2 = [equalCopy contextualEntityCollectionTriggered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  contextualEntityCollectionTriggered = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  if (contextualEntityCollectionTriggered)
  {
    v219 = contextualEntityCollectionTriggered;
    contextualEntityCollectionTriggered2 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    contextualEntityCollectionTriggered3 = [equalCopy contextualEntityCollectionTriggered];
    v222 = [contextualEntityCollectionTriggered2 isEqual:contextualEntityCollectionTriggered3];

    if (!v222)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  eventMetadata2 = [equalCopy contextualEntityRetrievalContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_227;
  }

  contextualEntityRetrievalContext = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  if (contextualEntityRetrievalContext)
  {
    v224 = contextualEntityRetrievalContext;
    contextualEntityRetrievalContext2 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    contextualEntityRetrievalContext3 = [equalCopy contextualEntityRetrievalContext];
    v227 = [contextualEntityRetrievalContext2 isEqual:contextualEntityRetrievalContext3];

    if (!v227)
    {
      goto LABEL_228;
    }
  }

  else
  {
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
  eventMetadata2 = [equalCopy personalizationUserEditNamedEntityMetrics];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    personalizationUserEditNamedEntityMetrics = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    if (!personalizationUserEditNamedEntityMetrics)
    {

LABEL_231:
      v233 = 1;
      goto LABEL_229;
    }

    v229 = personalizationUserEditNamedEntityMetrics;
    personalizationUserEditNamedEntityMetrics2 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    personalizationUserEditNamedEntityMetrics3 = [equalCopy personalizationUserEditNamedEntityMetrics];
    v232 = [personalizationUserEditNamedEntityMetrics2 isEqual:personalizationUserEditNamedEntityMetrics3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  preheatContext = [(ASRSchemaASRClientEvent *)self preheatContext];

  if (preheatContext)
  {
    preheatContext2 = [(ASRSchemaASRClientEvent *)self preheatContext];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(ASRSchemaASRClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(ASRSchemaASRClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  partialResultGenerated = [(ASRSchemaASRClientEvent *)self partialResultGenerated];

  if (partialResultGenerated)
  {
    partialResultGenerated2 = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
    PBDataWriterWriteSubmessage();
  }

  packageGenerated = [(ASRSchemaASRClientEvent *)self packageGenerated];

  if (packageGenerated)
  {
    packageGenerated2 = [(ASRSchemaASRClientEvent *)self packageGenerated];
    PBDataWriterWriteSubmessage();
  }

  recognitionResultTier1 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];

  if (recognitionResultTier1)
  {
    recognitionResultTier12 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
    PBDataWriterWriteSubmessage();
  }

  finalResultGenerated = [(ASRSchemaASRClientEvent *)self finalResultGenerated];

  if (finalResultGenerated)
  {
    finalResultGenerated2 = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
    PBDataWriterWriteSubmessage();
  }

  intermediateUtteranceInfoTier1 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];

  if (intermediateUtteranceInfoTier1)
  {
    intermediateUtteranceInfoTier12 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  initializationContext = [(ASRSchemaASRClientEvent *)self initializationContext];

  if (initializationContext)
  {
    initializationContext2 = [(ASRSchemaASRClientEvent *)self initializationContext];
    PBDataWriterWriteSubmessage();
  }

  assetLoadContext = [(ASRSchemaASRClientEvent *)self assetLoadContext];

  if (assetLoadContext)
  {
    assetLoadContext2 = [(ASRSchemaASRClientEvent *)self assetLoadContext];
    PBDataWriterWriteSubmessage();
  }

  languageModelEnrollmentContext = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];

  if (languageModelEnrollmentContext)
  {
    languageModelEnrollmentContext2 = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
    PBDataWriterWriteSubmessage();
  }

  jitLanguageModelEnrollmentEndedTier1 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];

  if (jitLanguageModelEnrollmentEndedTier1)
  {
    jitLanguageModelEnrollmentEndedTier12 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
    PBDataWriterWriteSubmessage();
  }

  audioPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];

  if (audioPacketArrivalContext)
  {
    audioPacketArrivalContext2 = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
    PBDataWriterWriteSubmessage();
  }

  firstAudioPacketProcessed = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];

  if (firstAudioPacketProcessed)
  {
    firstAudioPacketProcessed2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
    PBDataWriterWriteSubmessage();
  }

  finalAudioPacketContainingSpeechReceived = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];

  if (finalAudioPacketContainingSpeechReceived)
  {
    finalAudioPacketContainingSpeechReceived2 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileStored = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];

  if (sampledAudioFileStored)
  {
    sampledAudioFileStored2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileStorageFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];

  if (sampledAudioFileStorageFailed)
  {
    sampledAudioFileStorageFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileEnqueued = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];

  if (sampledAudioFileEnqueued)
  {
    sampledAudioFileEnqueued2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileEnqueueFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];

  if (sampledAudioFileEnqueueFailed)
  {
    sampledAudioFileEnqueueFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileDeleted = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];

  if (sampledAudioFileDeleted)
  {
    sampledAudioFileDeleted2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
    PBDataWriterWriteSubmessage();
  }

  sampledAudioFileDeletionFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];

  if (sampledAudioFileDeletionFailed)
  {
    sampledAudioFileDeletionFailed2 = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
    PBDataWriterWriteSubmessage();
  }

  appleNeuralEngineCompilationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];

  if (appleNeuralEngineCompilationContext)
  {
    appleNeuralEngineCompilationContext2 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
    PBDataWriterWriteSubmessage();
  }

  dictationVoiceCommandMetricsReported = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];

  if (dictationVoiceCommandMetricsReported)
  {
    dictationVoiceCommandMetricsReported2 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
    PBDataWriterWriteSubmessage();
  }

  appLanguageModelLoadContext = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];

  if (appLanguageModelLoadContext)
  {
    appLanguageModelLoadContext2 = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
    PBDataWriterWriteSubmessage();
  }

  embeddedSpeechProcessContext = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];

  if (embeddedSpeechProcessContext)
  {
    embeddedSpeechProcessContext2 = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
    PBDataWriterWriteSubmessage();
  }

  manualEditTextClassified = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];

  if (manualEditTextClassified)
  {
    manualEditTextClassified2 = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
    PBDataWriterWriteSubmessage();
  }

  manualEditMetricClassified = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];

  if (manualEditMetricClassified)
  {
    manualEditMetricClassified2 = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
    PBDataWriterWriteSubmessage();
  }

  manualEditClassificationContext = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];

  if (manualEditClassificationContext)
  {
    manualEditClassificationContext2 = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
    PBDataWriterWriteSubmessage();
  }

  activeConfigUpdateContext = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];

  if (activeConfigUpdateContext)
  {
    activeConfigUpdateContext2 = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
    PBDataWriterWriteSubmessage();
  }

  appleNeuralEngineModelInitializationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];

  if (appleNeuralEngineModelInitializationContext)
  {
    appleNeuralEngineModelInitializationContext2 = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
    PBDataWriterWriteSubmessage();
  }

  frameProcessingReady = [(ASRSchemaASRClientEvent *)self frameProcessingReady];

  if (frameProcessingReady)
  {
    frameProcessingReady2 = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
    PBDataWriterWriteSubmessage();
  }

  leadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];

  if (leadingSilenceProcessed)
  {
    leadingSilenceProcessed2 = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
    PBDataWriterWriteSubmessage();
  }

  firstSecondAfterLeadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];

  if (firstSecondAfterLeadingSilenceProcessed)
  {
    firstSecondAfterLeadingSilenceProcessed2 = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
    PBDataWriterWriteSubmessage();
  }

  audioSpeechPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];

  if (audioSpeechPacketArrivalContext)
  {
    audioSpeechPacketArrivalContext2 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
    PBDataWriterWriteSubmessage();
  }

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];

  if (audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived)
  {
    audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived2 = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
    PBDataWriterWriteSubmessage();
  }

  firstAudioPacketRecorded = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];

  if (firstAudioPacketRecorded)
  {
    firstAudioPacketRecorded2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
    PBDataWriterWriteSubmessage();
  }

  audioPacketContainingEndOfFirstWordReadyUpstream = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];

  if (audioPacketContainingEndOfFirstWordReadyUpstream)
  {
    audioPacketContainingEndOfFirstWordReadyUpstream2 = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  firstAudioPacketReadyUpstream = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];

  if (firstAudioPacketReadyUpstream)
  {
    firstAudioPacketReadyUpstream2 = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  finalAudioPacketContainingSpeechReadyUpstream = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];

  if (finalAudioPacketContainingSpeechReadyUpstream)
  {
    finalAudioPacketContainingSpeechReadyUpstream2 = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
    PBDataWriterWriteSubmessage();
  }

  alternativeSelectionTextCategorized = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];

  if (alternativeSelectionTextCategorized)
  {
    alternativeSelectionTextCategorized2 = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
    PBDataWriterWriteSubmessage();
  }

  dictationVoiceCommandInfoTier1 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];

  if (dictationVoiceCommandInfoTier1)
  {
    dictationVoiceCommandInfoTier12 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  rescoringDeliberationResultTier1 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];

  if (rescoringDeliberationResultTier1)
  {
    rescoringDeliberationResultTier12 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
    PBDataWriterWriteSubmessage();
  }

  contextualEntityCollectionTriggered = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];

  if (contextualEntityCollectionTriggered)
  {
    contextualEntityCollectionTriggered2 = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
    PBDataWriterWriteSubmessage();
  }

  contextualEntityRetrievalContext = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];

  if (contextualEntityRetrievalContext)
  {
    contextualEntityRetrievalContext2 = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
    PBDataWriterWriteSubmessage();
  }

  personalizationUserEditNamedEntityMetrics = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];

  v93 = toCopy;
  if (personalizationUserEditNamedEntityMetrics)
  {
    personalizationUserEditNamedEntityMetrics2 = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
    PBDataWriterWriteSubmessage();

    v93 = toCopy;
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

- (void)setPersonalizationUserEditNamedEntityMetrics:(id)metrics
{
  metricsCopy = metrics;
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
  if (!metricsCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  personalizationUserEditNamedEntityMetrics = self->_personalizationUserEditNamedEntityMetrics;
  self->_personalizationUserEditNamedEntityMetrics = metricsCopy;
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

- (void)setContextualEntityRetrievalContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  contextualEntityRetrievalContext = self->_contextualEntityRetrievalContext;
  self->_contextualEntityRetrievalContext = contextCopy;
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

- (void)setContextualEntityCollectionTriggered:(id)triggered
{
  triggeredCopy = triggered;
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
  if (!triggeredCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  contextualEntityCollectionTriggered = self->_contextualEntityCollectionTriggered;
  self->_contextualEntityCollectionTriggered = triggeredCopy;
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

- (void)setRescoringDeliberationResultTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  rescoringDeliberationResultTier1 = self->_rescoringDeliberationResultTier1;
  self->_rescoringDeliberationResultTier1 = tier1Copy;
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

- (void)setDictationVoiceCommandInfoTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  dictationVoiceCommandInfoTier1 = self->_dictationVoiceCommandInfoTier1;
  self->_dictationVoiceCommandInfoTier1 = tier1Copy;
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

- (void)setAlternativeSelectionTextCategorized:(id)categorized
{
  categorizedCopy = categorized;
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
  if (!categorizedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  alternativeSelectionTextCategorized = self->_alternativeSelectionTextCategorized;
  self->_alternativeSelectionTextCategorized = categorizedCopy;
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

- (void)setFinalAudioPacketContainingSpeechReadyUpstream:(id)upstream
{
  upstreamCopy = upstream;
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
  if (!upstreamCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalAudioPacketContainingSpeechReadyUpstream = self->_finalAudioPacketContainingSpeechReadyUpstream;
  self->_finalAudioPacketContainingSpeechReadyUpstream = upstreamCopy;
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

- (void)setFirstAudioPacketReadyUpstream:(id)upstream
{
  upstreamCopy = upstream;
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
  if (!upstreamCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketReadyUpstream = self->_firstAudioPacketReadyUpstream;
  self->_firstAudioPacketReadyUpstream = upstreamCopy;
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

- (void)setAudioPacketContainingEndOfFirstWordReadyUpstream:(id)upstream
{
  upstreamCopy = upstream;
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
  if (!upstreamCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioPacketContainingEndOfFirstWordReadyUpstream = self->_audioPacketContainingEndOfFirstWordReadyUpstream;
  self->_audioPacketContainingEndOfFirstWordReadyUpstream = upstreamCopy;
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

- (void)setFirstAudioPacketRecorded:(id)recorded
{
  recordedCopy = recorded;
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
  if (!recordedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketRecorded = self->_firstAudioPacketRecorded;
  self->_firstAudioPacketRecorded = recordedCopy;
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

- (void)setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:(id)arrived
{
  arrivedCopy = arrived;
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
  if (!arrivedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived;
  self->_audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = arrivedCopy;
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

- (void)setAudioSpeechPacketArrivalContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioSpeechPacketArrivalContext = self->_audioSpeechPacketArrivalContext;
  self->_audioSpeechPacketArrivalContext = contextCopy;
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

- (void)setFirstSecondAfterLeadingSilenceProcessed:(id)processed
{
  processedCopy = processed;
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
  if (!processedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstSecondAfterLeadingSilenceProcessed = self->_firstSecondAfterLeadingSilenceProcessed;
  self->_firstSecondAfterLeadingSilenceProcessed = processedCopy;
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

- (void)setLeadingSilenceProcessed:(id)processed
{
  processedCopy = processed;
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
  if (!processedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  leadingSilenceProcessed = self->_leadingSilenceProcessed;
  self->_leadingSilenceProcessed = processedCopy;
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

- (void)setFrameProcessingReady:(id)ready
{
  readyCopy = ready;
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
  if (!readyCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  frameProcessingReady = self->_frameProcessingReady;
  self->_frameProcessingReady = readyCopy;
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

- (void)setAppleNeuralEngineModelInitializationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appleNeuralEngineModelInitializationContext = self->_appleNeuralEngineModelInitializationContext;
  self->_appleNeuralEngineModelInitializationContext = contextCopy;
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

- (void)setActiveConfigUpdateContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = (contextCopy != 0) << 7;
  activeConfigUpdateContext = self->_activeConfigUpdateContext;
  self->_activeConfigUpdateContext = contextCopy;
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

- (void)setManualEditClassificationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditClassificationContext = self->_manualEditClassificationContext;
  self->_manualEditClassificationContext = contextCopy;
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

- (void)setManualEditMetricClassified:(id)classified
{
  classifiedCopy = classified;
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
  if (!classifiedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditMetricClassified = self->_manualEditMetricClassified;
  self->_manualEditMetricClassified = classifiedCopy;
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

- (void)setManualEditTextClassified:(id)classified
{
  classifiedCopy = classified;
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
  if (!classifiedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  manualEditTextClassified = self->_manualEditTextClassified;
  self->_manualEditTextClassified = classifiedCopy;
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

- (void)setEmbeddedSpeechProcessContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  embeddedSpeechProcessContext = self->_embeddedSpeechProcessContext;
  self->_embeddedSpeechProcessContext = contextCopy;
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

- (void)setAppLanguageModelLoadContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appLanguageModelLoadContext = self->_appLanguageModelLoadContext;
  self->_appLanguageModelLoadContext = contextCopy;
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

- (void)setDictationVoiceCommandMetricsReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  dictationVoiceCommandMetricsReported = self->_dictationVoiceCommandMetricsReported;
  self->_dictationVoiceCommandMetricsReported = reportedCopy;
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

- (void)setAppleNeuralEngineCompilationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  appleNeuralEngineCompilationContext = self->_appleNeuralEngineCompilationContext;
  self->_appleNeuralEngineCompilationContext = contextCopy;
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

- (void)setSampledAudioFileDeletionFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileDeletionFailed = self->_sampledAudioFileDeletionFailed;
  self->_sampledAudioFileDeletionFailed = failedCopy;
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

- (void)setSampledAudioFileDeleted:(id)deleted
{
  deletedCopy = deleted;
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
  if (!deletedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileDeleted = self->_sampledAudioFileDeleted;
  self->_sampledAudioFileDeleted = deletedCopy;
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

- (void)setSampledAudioFileEnqueueFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileEnqueueFailed = self->_sampledAudioFileEnqueueFailed;
  self->_sampledAudioFileEnqueueFailed = failedCopy;
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

- (void)setSampledAudioFileEnqueued:(id)enqueued
{
  enqueuedCopy = enqueued;
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
  if (!enqueuedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileEnqueued = self->_sampledAudioFileEnqueued;
  self->_sampledAudioFileEnqueued = enqueuedCopy;
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

- (void)setSampledAudioFileStorageFailed:(id)failed
{
  failedCopy = failed;
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
  if (!failedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileStorageFailed = self->_sampledAudioFileStorageFailed;
  self->_sampledAudioFileStorageFailed = failedCopy;
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

- (void)setSampledAudioFileStored:(id)stored
{
  storedCopy = stored;
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
  if (!storedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  sampledAudioFileStored = self->_sampledAudioFileStored;
  self->_sampledAudioFileStored = storedCopy;
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

- (void)setFinalAudioPacketContainingSpeechReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalAudioPacketContainingSpeechReceived = self->_finalAudioPacketContainingSpeechReceived;
  self->_finalAudioPacketContainingSpeechReceived = receivedCopy;
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

- (void)setFirstAudioPacketProcessed:(id)processed
{
  processedCopy = processed;
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
  if (!processedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  firstAudioPacketProcessed = self->_firstAudioPacketProcessed;
  self->_firstAudioPacketProcessed = processedCopy;
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

- (void)setAudioPacketArrivalContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  audioPacketArrivalContext = self->_audioPacketArrivalContext;
  self->_audioPacketArrivalContext = contextCopy;
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

- (void)setJitLanguageModelEnrollmentEndedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  jitLanguageModelEnrollmentEndedTier1 = self->_jitLanguageModelEnrollmentEndedTier1;
  self->_jitLanguageModelEnrollmentEndedTier1 = tier1Copy;
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

- (void)setLanguageModelEnrollmentContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  languageModelEnrollmentContext = self->_languageModelEnrollmentContext;
  self->_languageModelEnrollmentContext = contextCopy;
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

- (void)setAssetLoadContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  assetLoadContext = self->_assetLoadContext;
  self->_assetLoadContext = contextCopy;
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

- (void)setInitializationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  initializationContext = self->_initializationContext;
  self->_initializationContext = contextCopy;
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

- (void)setIntermediateUtteranceInfoTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  intermediateUtteranceInfoTier1 = self->_intermediateUtteranceInfoTier1;
  self->_intermediateUtteranceInfoTier1 = tier1Copy;
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

- (void)setFinalResultGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  finalResultGenerated = self->_finalResultGenerated;
  self->_finalResultGenerated = generatedCopy;
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

- (void)setRecognitionResultTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  recognitionResultTier1 = self->_recognitionResultTier1;
  self->_recognitionResultTier1 = tier1Copy;
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

- (void)setPackageGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  packageGenerated = self->_packageGenerated;
  self->_packageGenerated = generatedCopy;
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

- (void)setPartialResultGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  partialResultGenerated = self->_partialResultGenerated;
  self->_partialResultGenerated = generatedCopy;
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

- (void)setRequestContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
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

- (void)setPreheatContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v48 = 0;
  }

  self->_whichEvent_Type = v48;
  preheatContext = self->_preheatContext;
  self->_preheatContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x2B)
  {
    return @"com.apple.aiml.siri.asr.ASRClientEvent";
  }

  else
  {
    return off_1E78D1A90[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v143.receiver = self;
  v143.super_class = ASRSchemaASRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v143 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRClientEvent *)self deleteEventMetadata];
  }

  preheatContext = [(ASRSchemaASRClientEvent *)self preheatContext];
  v10 = [preheatContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRClientEvent *)self deletePreheatContext];
  }

  requestContext = [(ASRSchemaASRClientEvent *)self requestContext];
  v13 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ASRSchemaASRClientEvent *)self deleteRequestContext];
  }

  partialResultGenerated = [(ASRSchemaASRClientEvent *)self partialResultGenerated];
  v16 = [partialResultGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ASRSchemaASRClientEvent *)self deletePartialResultGenerated];
  }

  packageGenerated = [(ASRSchemaASRClientEvent *)self packageGenerated];
  v19 = [packageGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ASRSchemaASRClientEvent *)self deletePackageGenerated];
  }

  recognitionResultTier1 = [(ASRSchemaASRClientEvent *)self recognitionResultTier1];
  v22 = [recognitionResultTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ASRSchemaASRClientEvent *)self deleteRecognitionResultTier1];
  }

  finalResultGenerated = [(ASRSchemaASRClientEvent *)self finalResultGenerated];
  v25 = [finalResultGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalResultGenerated];
  }

  intermediateUtteranceInfoTier1 = [(ASRSchemaASRClientEvent *)self intermediateUtteranceInfoTier1];
  v28 = [intermediateUtteranceInfoTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(ASRSchemaASRClientEvent *)self deleteIntermediateUtteranceInfoTier1];
  }

  initializationContext = [(ASRSchemaASRClientEvent *)self initializationContext];
  v31 = [initializationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(ASRSchemaASRClientEvent *)self deleteInitializationContext];
  }

  assetLoadContext = [(ASRSchemaASRClientEvent *)self assetLoadContext];
  v34 = [assetLoadContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(ASRSchemaASRClientEvent *)self deleteAssetLoadContext];
  }

  languageModelEnrollmentContext = [(ASRSchemaASRClientEvent *)self languageModelEnrollmentContext];
  v37 = [languageModelEnrollmentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(ASRSchemaASRClientEvent *)self deleteLanguageModelEnrollmentContext];
  }

  jitLanguageModelEnrollmentEndedTier1 = [(ASRSchemaASRClientEvent *)self jitLanguageModelEnrollmentEndedTier1];
  v40 = [jitLanguageModelEnrollmentEndedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(ASRSchemaASRClientEvent *)self deleteJitLanguageModelEnrollmentEndedTier1];
  }

  audioPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioPacketArrivalContext];
  v43 = [audioPacketArrivalContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioPacketArrivalContext];
  }

  firstAudioPacketProcessed = [(ASRSchemaASRClientEvent *)self firstAudioPacketProcessed];
  v46 = [firstAudioPacketProcessed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketProcessed];
  }

  finalAudioPacketContainingSpeechReceived = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReceived];
  v49 = [finalAudioPacketContainingSpeechReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalAudioPacketContainingSpeechReceived];
  }

  sampledAudioFileStored = [(ASRSchemaASRClientEvent *)self sampledAudioFileStored];
  v52 = [sampledAudioFileStored applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileStored];
  }

  sampledAudioFileStorageFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileStorageFailed];
  v55 = [sampledAudioFileStorageFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileStorageFailed];
  }

  sampledAudioFileEnqueued = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueued];
  v58 = [sampledAudioFileEnqueued applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileEnqueued];
  }

  sampledAudioFileEnqueueFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileEnqueueFailed];
  v61 = [sampledAudioFileEnqueueFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileEnqueueFailed];
  }

  sampledAudioFileDeleted = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeleted];
  v64 = [sampledAudioFileDeleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileDeleted];
  }

  sampledAudioFileDeletionFailed = [(ASRSchemaASRClientEvent *)self sampledAudioFileDeletionFailed];
  v67 = [sampledAudioFileDeletionFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(ASRSchemaASRClientEvent *)self deleteSampledAudioFileDeletionFailed];
  }

  appleNeuralEngineCompilationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineCompilationContext];
  v70 = [appleNeuralEngineCompilationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppleNeuralEngineCompilationContext];
  }

  dictationVoiceCommandMetricsReported = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandMetricsReported];
  v73 = [dictationVoiceCommandMetricsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandMetricsReported];
  }

  appLanguageModelLoadContext = [(ASRSchemaASRClientEvent *)self appLanguageModelLoadContext];
  v76 = [appLanguageModelLoadContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppLanguageModelLoadContext];
  }

  embeddedSpeechProcessContext = [(ASRSchemaASRClientEvent *)self embeddedSpeechProcessContext];
  v79 = [embeddedSpeechProcessContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(ASRSchemaASRClientEvent *)self deleteEmbeddedSpeechProcessContext];
  }

  manualEditTextClassified = [(ASRSchemaASRClientEvent *)self manualEditTextClassified];
  v82 = [manualEditTextClassified applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditTextClassified];
  }

  manualEditMetricClassified = [(ASRSchemaASRClientEvent *)self manualEditMetricClassified];
  v85 = [manualEditMetricClassified applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditMetricClassified];
  }

  manualEditClassificationContext = [(ASRSchemaASRClientEvent *)self manualEditClassificationContext];
  v88 = [manualEditClassificationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(ASRSchemaASRClientEvent *)self deleteManualEditClassificationContext];
  }

  activeConfigUpdateContext = [(ASRSchemaASRClientEvent *)self activeConfigUpdateContext];
  v91 = [activeConfigUpdateContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(ASRSchemaASRClientEvent *)self deleteActiveConfigUpdateContext];
  }

  appleNeuralEngineModelInitializationContext = [(ASRSchemaASRClientEvent *)self appleNeuralEngineModelInitializationContext];
  v94 = [appleNeuralEngineModelInitializationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(ASRSchemaASRClientEvent *)self deleteAppleNeuralEngineModelInitializationContext];
  }

  frameProcessingReady = [(ASRSchemaASRClientEvent *)self frameProcessingReady];
  v97 = [frameProcessingReady applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(ASRSchemaASRClientEvent *)self deleteFrameProcessingReady];
  }

  leadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self leadingSilenceProcessed];
  v100 = [leadingSilenceProcessed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(ASRSchemaASRClientEvent *)self deleteLeadingSilenceProcessed];
  }

  firstSecondAfterLeadingSilenceProcessed = [(ASRSchemaASRClientEvent *)self firstSecondAfterLeadingSilenceProcessed];
  v103 = [firstSecondAfterLeadingSilenceProcessed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstSecondAfterLeadingSilenceProcessed];
  }

  audioSpeechPacketArrivalContext = [(ASRSchemaASRClientEvent *)self audioSpeechPacketArrivalContext];
  v106 = [audioSpeechPacketArrivalContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioSpeechPacketArrivalContext];
  }

  audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived = [(ASRSchemaASRClientEvent *)self audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  v109 = [audioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived];
  }

  firstAudioPacketRecorded = [(ASRSchemaASRClientEvent *)self firstAudioPacketRecorded];
  v112 = [firstAudioPacketRecorded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketRecorded];
  }

  audioPacketContainingEndOfFirstWordReadyUpstream = [(ASRSchemaASRClientEvent *)self audioPacketContainingEndOfFirstWordReadyUpstream];
  v115 = [audioPacketContainingEndOfFirstWordReadyUpstream applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(ASRSchemaASRClientEvent *)self deleteAudioPacketContainingEndOfFirstWordReadyUpstream];
  }

  firstAudioPacketReadyUpstream = [(ASRSchemaASRClientEvent *)self firstAudioPacketReadyUpstream];
  v118 = [firstAudioPacketReadyUpstream applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(ASRSchemaASRClientEvent *)self deleteFirstAudioPacketReadyUpstream];
  }

  finalAudioPacketContainingSpeechReadyUpstream = [(ASRSchemaASRClientEvent *)self finalAudioPacketContainingSpeechReadyUpstream];
  v121 = [finalAudioPacketContainingSpeechReadyUpstream applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(ASRSchemaASRClientEvent *)self deleteFinalAudioPacketContainingSpeechReadyUpstream];
  }

  alternativeSelectionTextCategorized = [(ASRSchemaASRClientEvent *)self alternativeSelectionTextCategorized];
  v124 = [alternativeSelectionTextCategorized applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(ASRSchemaASRClientEvent *)self deleteAlternativeSelectionTextCategorized];
  }

  dictationVoiceCommandInfoTier1 = [(ASRSchemaASRClientEvent *)self dictationVoiceCommandInfoTier1];
  v127 = [dictationVoiceCommandInfoTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(ASRSchemaASRClientEvent *)self deleteDictationVoiceCommandInfoTier1];
  }

  rescoringDeliberationResultTier1 = [(ASRSchemaASRClientEvent *)self rescoringDeliberationResultTier1];
  v130 = [rescoringDeliberationResultTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
  {
    [(ASRSchemaASRClientEvent *)self deleteRescoringDeliberationResultTier1];
  }

  contextualEntityCollectionTriggered = [(ASRSchemaASRClientEvent *)self contextualEntityCollectionTriggered];
  v133 = [contextualEntityCollectionTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage43 = [v133 suppressMessage];

  if (suppressMessage43)
  {
    [(ASRSchemaASRClientEvent *)self deleteContextualEntityCollectionTriggered];
  }

  contextualEntityRetrievalContext = [(ASRSchemaASRClientEvent *)self contextualEntityRetrievalContext];
  v136 = [contextualEntityRetrievalContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage44 = [v136 suppressMessage];

  if (suppressMessage44)
  {
    [(ASRSchemaASRClientEvent *)self deleteContextualEntityRetrievalContext];
  }

  personalizationUserEditNamedEntityMetrics = [(ASRSchemaASRClientEvent *)self personalizationUserEditNamedEntityMetrics];
  v139 = [personalizationUserEditNamedEntityMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage45 = [v139 suppressMessage];

  if (suppressMessage45)
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
  eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];
  asrId = [eventMetadata asrId];

  if (asrId && ([asrId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(asrId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 8;
  }

  else
  {
    eventMetadata2 = [(ASRSchemaASRClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId)
    {
      value = [requestId value];
      if (value)
      {
        v13 = value;
        value2 = [requestId value];
        v9 = [value2 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      asrId = requestId;
    }

    else
    {
      v9 = 0;
      asrId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(ASRSchemaASRClientEvent *)self eventMetadata];
  asrId = [eventMetadata asrId];

  if (asrId)
  {
    value = [asrId value];
    if (value)
    {
      v6 = value;
      value2 = [asrId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(ASRSchemaASRClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [requestId value];
    v13 = [value4 length];

    if (v13)
    {
      asrId = requestId;
LABEL_8:
      value3 = asrId;
      requestId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x2B)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8D00[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_1E78E8E60[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  whichEvent_Type = [(ASRSchemaASRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 125 > 0xE || ((1 << (whichEvent_Type - 125)) & 0x4007) == 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end