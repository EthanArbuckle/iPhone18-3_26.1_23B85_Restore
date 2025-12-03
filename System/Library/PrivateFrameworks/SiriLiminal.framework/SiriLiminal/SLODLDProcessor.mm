@interface SLODLDProcessor
- (SLODLDProcessor)initWithConfigFile:(id)file error:(id *)error;
- (id)_getPreprocessorForType:(unint64_t)type withConfig:(id)config;
- (id)_getTokenizerForType:(unint64_t)type withConfig:(id)config;
- (id)_setupPipelineComponentsUsingConfig:(id)config;
- (id)getEncodedTokensForUtt:(id)utt;
- (id)processInputContext:(id)context;
- (id)processInputUtterance:(id)utterance;
@end

@implementation SLODLDProcessor

- (id)_getTokenizerForType:(unint64_t)type withConfig:(id)config
{
  v20 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    configCopy = config;
    isSPMModelMmapable = [configCopy isSPMModelMmapable];
    v6 = [SLSentencePieceModule alloc];
    getSPMModelFile = [configCopy getSPMModelFile];
    v8 = [(SLSentencePieceModule *)v6 initWithConfigFile:getSPMModelFile isModelMmap:isSPMModelMmapable];

    getSPMEncoderOptions = [configCopy getSPMEncoderOptions];

    if (getSPMEncoderOptions)
    {
      v10 = [(SLSentencePieceModule *)v8 setSPMEncoderOptions:getSPMEncoderOptions];
      v11 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[SLODLDProcessor _getTokenizerForType:withConfig:]";
        v16 = 2112;
        v17 = getSPMEncoderOptions;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_26754E000, v11, OS_LOG_TYPE_DEFAULT, "%s Setting SPM encoder options %@ with status %ld", &v14, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_getPreprocessorForType:(unint64_t)type withConfig:(id)config
{
  if (type == 1)
  {
    configCopy = config;
    v5 = [SLRegexMatcher alloc];
    getRegexMapConfig = [configCopy getRegexMapConfig];

    v7 = [(SLRegexMatcher *)v5 initWithConfigFile:getRegexMapConfig];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)processInputContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  inputUtt = [contextCopy inputUtt];
  v6 = [(SLODLDProcessor *)self getEncodedTokensForUtt:inputUtt];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__645;
  v25 = __Block_byref_object_dispose__646;
  v26 = 0;
  model = self->_model;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__SLODLDProcessor_processInputContext___block_invoke;
  v18[3] = &unk_279C0EA10;
  v20 = &v21;
  v18[4] = self;
  v8 = v6;
  v19 = v8;
  [(SLODLDClassifierV1 *)model processEncodedTokens:v8 withContext:contextCopy withCompletion:v18];
  v9 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [v22[5] odldScore];
    v11 = v10;
    [v22[5] outputAnchor];
    v13 = v12;
    [v22[5] conversationalScore];
    *buf = 136315906;
    v28 = "[SLODLDProcessor processInputContext:]";
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    _os_log_impl(&dword_26754E000, v9, OS_LOG_TYPE_DEFAULT, "%s output %f, social score %f conversationalScore %f", buf, 0x2Au);
  }

  v15 = v22[5];
  _Block_object_dispose(&v21, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __39__SLODLDProcessor_processInputContext___block_invoke(void *a1, float a2, float a3, float a4)
{
  v8 = [SLODLDProcessorResult alloc];
  v15 = [*(a1[4] + 8) getConfigVersion];
  *&v9 = a2;
  *&v10 = a3;
  *&v11 = a4;
  v12 = [(SLODLDProcessorResult *)v8 initWithScore:v15 withVersion:a1[5] tokens:0 features:0 outputEmb:v9 outputAnchor:v10 conversationalScore:v11];
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)getEncodedTokensForUtt:(id)utt
{
  v14 = *MEMORY[0x277D85DE8];
  uttCopy = utt;
  if (uttCopy || ![0 length])
  {
    v5 = uttCopy;
    preprocessor = self->_preprocessor;
    if (preprocessor)
    {
      v7 = [(SLODLDPreProcessingComponent *)preprocessor applyPreprocessingOnUtt:v5];

      v5 = v7;
    }

    v8 = [(SLODLDTokenizerComponent *)self->_tokenizer encodeUtterance:v5];
  }

  else
  {
    v9 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SLODLDProcessor getEncodedTokensForUtt:]";
      _os_log_error_impl(&dword_26754E000, v9, OS_LOG_TYPE_ERROR, "%s Empty input", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)processInputUtterance:(id)utterance
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[SLODLDProcessor processInputUtterance:]";
    _os_log_error_impl(&dword_26754E000, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_setupPipelineComponentsUsingConfig:(id)config
{
  v32 = *MEMORY[0x277D85DE8];
  configCopy = config;
  getPreProcessorType = [configCopy getPreProcessorType];
  v6 = [(SLODLDProcessor *)self _getPreprocessorForType:getPreProcessorType withConfig:configCopy];
  preprocessor = self->_preprocessor;
  self->_preprocessor = v6;

  v8 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_preprocessor;
    v26 = 136315650;
    v27 = "[SLODLDProcessor _setupPipelineComponentsUsingConfig:]";
    v28 = 2048;
    v29 = getPreProcessorType;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_26754E000, v8, OS_LOG_TYPE_DEFAULT, "%s PreProcessorType: %lu PreProcessor %@", &v26, 0x20u);
  }

  getTokenizerType = [configCopy getTokenizerType];
  v11 = [(SLODLDProcessor *)self _getTokenizerForType:getTokenizerType withConfig:configCopy];
  tokenizer = self->_tokenizer;
  self->_tokenizer = v11;

  v13 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_tokenizer;
    v26 = 136315650;
    v27 = "[SLODLDProcessor _setupPipelineComponentsUsingConfig:]";
    v28 = 2048;
    v29 = getTokenizerType;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_26754E000, v13, OS_LOG_TYPE_DEFAULT, "%s TokenizerType: %lu Tokenizer %@", &v26, 0x20u);
  }

  if (self->_tokenizer)
  {
    getBertModelFile = [configCopy getBertModelFile];
    getOdldModelBnnsIrWeightFile = [configCopy getOdldModelBnnsIrWeightFile];
    v17 = [SLODLDClassifierV1 alloc];
    if (getOdldModelBnnsIrWeightFile)
    {
      v18 = [(SLODLDClassifierV1 *)v17 initWithConfigFile:getBertModelFile bnnsIrWeightPath:getOdldModelBnnsIrWeightFile];
    }

    else
    {
      v18 = [(SLODLDClassifierV1 *)v17 initWithConfigFile:getBertModelFile];
    }

    v20 = v18;
    if (v18)
    {
      objc_storeStrong(&self->_model, v18);
    }

    v21 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      model = self->_model;
      v26 = 136315394;
      v27 = "[SLODLDProcessor _setupPipelineComponentsUsingConfig:]";
      v28 = 2112;
      v29 = model;
      _os_log_impl(&dword_26754E000, v21, OS_LOG_TYPE_DEFAULT, "%s Classifier %@", &v26, 0x16u);
    }

    if (self->_model)
    {
      v19 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create ODLD model"];
      v19 = [SLUtils createErrorWithMsg:v23 code:113];
    }
  }

  else
  {
    getBertModelFile = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create tokenizer"];
    v19 = [SLUtils createErrorWithMsg:getBertModelFile code:112];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (SLODLDProcessor)initWithConfigFile:(id)file error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v19.receiver = self;
  v19.super_class = SLODLDProcessor;
  v7 = [(SLODLDProcessor *)&v19 init];
  if (!v7)
  {
LABEL_17:
    v15 = v7;
    goto LABEL_18;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v8 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[SLODLDProcessor initWithConfigFile:error:]";
    v22 = 2112;
    v23 = fileCopy;
    _os_log_impl(&dword_26754E000, v8, OS_LOG_TYPE_INFO, "%s Reading from configFile %@", buf, 0x16u);
  }

  v9 = [[SLODLDConfigDecoder alloc] initWithConfigFile:fileCopy];
  config = v7->_config;
  v7->_config = v9;

  if (!v7->_config)
  {
    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to decode config file %@", fileCopy];
    v14 = [SLUtils createErrorWithMsg:fileCopy code:111];
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    goto LABEL_13;
  }

  v11 = [(SLODLDProcessor *)v7 _setupPipelineComponentsUsingConfig:?];
  fileCopy = v11;
  if (!error || !v11)
  {
    v16 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[SLODLDProcessor initWithConfigFile:error:]";
      _os_log_impl(&dword_26754E000, v16, OS_LOG_TYPE_DEFAULT, "%s Created ODLD Processor Pipelines", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v13 = v11;
  *error = fileCopy;
LABEL_13:

  v15 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

@end