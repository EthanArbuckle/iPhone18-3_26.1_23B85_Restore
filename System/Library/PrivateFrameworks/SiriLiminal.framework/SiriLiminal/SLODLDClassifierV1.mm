@interface SLODLDClassifierV1
- (SLODLDClassifierV1)initWithConfigFile:(id)file bnnsIrWeightPath:(id)path;
- (float)processEncodedTokens:(id)tokens;
- (id)_constructFeatureDictionary:(id)dictionary withCtx:(id)ctx;
- (id)_createDataBufferForTensor:(id)tensor withData:(id)data properties:(id)properties;
- (id)_extractModelSpecs;
- (void)processEncodedTokens:(id)tokens withContext:(id)context withCompletion:(id)completion;
@end

@implementation SLODLDClassifierV1

- (id)_constructFeatureDictionary:(id)dictionary withCtx:(id)ctx
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  ctxCopy = ctx;
  v8 = [(NSDictionary *)self->_inputSpecs objectForKeyedSubscript:@"minibatch_input_ids"];
  shape = [v8 shape];

  v10 = [[SLODLDInputTokenParams alloc] initWithShape:shape];
  v11 = v10;
  if (v10)
  {
    v44 = 0;
    [(SLODLDInputTokenParams *)v10 populateWithTokens:dictionaryCopy error:&v44];
    v12 = v44;
    if (v12)
    {
      v13 = v12;
      v14 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_error_impl(&dword_26754E000, v14, OS_LOG_TYPE_ERROR, "%s Unable to populate current token parameters with error: %@", buf, 0x16u);
      }

      v15 = 0;
      goto LABEL_22;
    }

    v17 = [[SLODLDInputTokenParams alloc] initWithShape:shape];
    prevTokens = [ctxCopy prevTokens];
    v19 = [prevTokens count] == 0;

    if (!v19)
    {
      if (!v17)
      {
        v26 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]";
          _os_log_error_impl(&dword_26754E000, v26, OS_LOG_TYPE_ERROR, "%s Unable to create previous token params", buf, 0xCu);
        }

        v13 = 0;
        goto LABEL_20;
      }

      prevTokens2 = [ctxCopy prevTokens];
      v43 = 0;
      [(SLODLDInputTokenParams *)v17 populateWithTokens:prevTokens2 error:&v43];
      v13 = v43;

      v21 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        v29 = v21;
        prevTokens3 = [ctxCopy prevTokens];
        mlAttnMask = [(SLODLDInputTokenParams *)v17 mlAttnMask];
        mlInputIds = [(SLODLDInputTokenParams *)v17 mlInputIds];
        *buf = 136316162;
        *&buf[4] = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]";
        *&buf[12] = 2112;
        *&buf[14] = prevTokens3;
        *&buf[22] = 2112;
        v46 = mlAttnMask;
        *v47 = 2112;
        *&v47[2] = mlInputIds;
        *&v47[10] = 2112;
        *&v47[12] = v13;
        _os_log_impl(&dword_26754E000, v29, OS_LOG_TYPE_INFO, "%s Setting prevtoks %@, paramAttnMask %@,  paraIpids %@ with error: %@", buf, 0x34u);
      }

      if (v13)
      {
        v24 = SLLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_26754E000, v24, OS_LOG_TYPE_ERROR, "%s Unable to populate previous token parameters with error: %@", buf, 0x16u);
        }

LABEL_20:
        v15 = 0;
        goto LABEL_21;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    *v47 = __Block_byref_object_dispose_;
    *&v47[8] = [MEMORY[0x277CBEB38] dictionary];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy_;
    v41[4] = __Block_byref_object_dispose_;
    v42 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy_;
    v39[4] = __Block_byref_object_dispose_;
    v40 = 0;
    inputSpecs = self->_inputSpecs;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__SLODLDClassifierV1__constructFeatureDictionary_withCtx___block_invoke;
    v31[3] = &unk_279C0E8B0;
    v36 = v39;
    v32 = v11;
    v33 = v17;
    v34 = ctxCopy;
    selfCopy = self;
    v37 = v41;
    v38 = buf;
    [(NSDictionary *)inputSpecs enumerateKeysAndObjectsUsingBlock:v31];
    v15 = *(*&buf[8] + 40);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);

    _Block_object_dispose(buf, 8);
    v13 = 0;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v16 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]";
    _os_log_error_impl(&dword_26754E000, v16, OS_LOG_TYPE_ERROR, "%s Unable to create current token params", buf, 0xCu);
  }

  v15 = 0;
LABEL_23:

  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

void __58__SLODLDClassifierV1__constructFeatureDictionary_withCtx___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v7 isEqualToString:@"minibatch_attention_mask"])
  {
    v9 = [*(a1 + 32) mlAttnMask];
    v36[0] = v9;
    v10 = v36;
  }

  else if ([v7 isEqualToString:@"minibatch_input_ids"])
  {
    v9 = [*(a1 + 32) mlInputIds];
    v35 = v9;
    v10 = &v35;
  }

  else if ([v7 isEqualToString:@"minibatch_token_type_ids"])
  {
    v9 = [*(a1 + 32) mlTypeIds];
    v34 = v9;
    v10 = &v34;
  }

  else if ([v7 isEqualToString:@"minibatch_padding_mask"])
  {
    v9 = [*(a1 + 32) mlPadMask];
    v33 = v9;
    v10 = &v33;
  }

  else if ([v7 isEqualToString:@"minibatch_prev_attention_mask"])
  {
    v9 = [*(a1 + 40) mlAttnMask];
    v32 = v9;
    v10 = &v32;
  }

  else if ([v7 isEqualToString:@"minibatch_prev_input_ids"])
  {
    v9 = [*(a1 + 40) mlInputIds];
    v31 = v9;
    v10 = &v31;
  }

  else if ([v7 isEqualToString:@"minibatch_prev_token_type_ids"])
  {
    v9 = [*(a1 + 40) mlTypeIds];
    v30 = v9;
    v10 = &v30;
  }

  else if ([v7 isEqualToString:@"minibatch_prev_padding_mask"])
  {
    v9 = [*(a1 + 40) mlPadMask];
    v29 = v9;
    v10 = &v29;
  }

  else if ([v7 isEqualToString:@"minibatch_input_origin"])
  {
    v9 = [*(a1 + 48) inputOrigin];
    v28 = v9;
    v10 = &v28;
  }

  else
  {
    if (![v7 isEqualToString:@"minibatch_anchor_social_score"])
    {
      goto LABEL_22;
    }

    v9 = [*(a1 + 48) inputAnchor];
    v27 = v9;
    v10 = &v27;
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_22:
  v14 = [*(a1 + 56) _createDataBufferForTensor:v7 withData:*(*(*(a1 + 64) + 8) + 40) properties:v8];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(*(*(a1 + 72) + 8) + 40);
  if (v17)
  {
    [*(*(*(a1 + 80) + 8) + 40) setObject:v17 forKey:v7];
  }

  else
  {
    v18 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 64) + 8) + 40);
      v21 = 136315650;
      v22 = "[SLODLDClassifierV1 _constructFeatureDictionary:withCtx:]_block_invoke";
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v20;
      _os_log_error_impl(&dword_26754E000, v18, OS_LOG_TYPE_ERROR, "%s Unbale to create input buffer for tensor: %@ with value: %@", &v21, 0x20u);
    }

    *a4 = 1;
    [*(*(*(a1 + 80) + 8) + 40) removeAllObjects];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_createDataBufferForTensor:(id)tensor withData:(id)data properties:(id)properties
{
  v26 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  dataCopy = data;
  propertiesCopy = properties;
  v10 = [MEMORY[0x277D01770] getRankOfTensor:dataCopy];
  if (v10 < 0 || (v11 = v10, [propertiesCopy shape], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11 != v13))
  {
    v17 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SLODLDClassifierV1 _createDataBufferForTensor:withData:properties:]";
      v24 = 2112;
      v25 = tensorCopy;
      _os_log_error_impl(&dword_26754E000, v17, OS_LOG_TYPE_ERROR, "%s Invalid or mismatched shape for tensor: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v21 = 0;
    v14 = [objc_alloc(MEMORY[0x277D01750]) initWithInputArray:dataCopy name:tensorCopy properties:propertiesCopy errOut:&v21];
    v15 = v21;
    if (v15 || !v14)
    {
      v18 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[SLODLDClassifierV1 _createDataBufferForTensor:withData:properties:]";
        v24 = 2112;
        v25 = tensorCopy;
        _os_log_error_impl(&dword_26754E000, v18, OS_LOG_TYPE_ERROR, "%s Unable to create data buffer for tensor: %@", buf, 0x16u);
      }

      v16 = 0;
    }

    else
    {
      v16 = v14;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_extractModelSpecs
{
  v20[1] = *MEMORY[0x277D85DE8];
  getExpectedInputTensors = [(CSFModelComputeBackend *)self->_odldClassifier getExpectedInputTensors];
  inputSpecs = self->_inputSpecs;
  self->_inputSpecs = getExpectedInputTensors;

  v5 = self->_inputSpecs;
  if (v5 && [(NSDictionary *)v5 count])
  {
    getExpectedOutputTensors = [(CSFModelComputeBackend *)self->_odldClassifier getExpectedOutputTensors];
    allKeys = [getExpectedOutputTensors allKeys];
    outputNodes = self->_outputNodes;
    self->_outputNodes = allKeys;

    v9 = self->_outputNodes;
    if (v9 && [(NSArray *)v9 count])
    {
      v10 = 0;
      goto LABEL_9;
    }

    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18 = @"cannot get outputNodes";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [v14 initWithDomain:@"com.apple.sl" code:117 userInfo:v12];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot get shape for input"];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v11 initWithDomain:@"com.apple.sl" code:117 userInfo:v13];
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)processEncodedTokens:(id)tokens withContext:(id)context withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  contextCopy = context;
  completionCopy = completion;
  v11 = [(SLODLDClassifierV1 *)self _constructFeatureDictionary:tokensCopy withCtx:contextCopy];
  if (v11)
  {
    odldClassifier = self->_odldClassifier;
    v36 = 0;
    v13 = [(CSFModelComputeBackend *)odldClassifier predictOutputWithInputs:v11 errOut:&v36];
    v14 = v36;
    if (v14)
    {
      v15 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[SLODLDClassifierV1 processEncodedTokens:withContext:withCompletion:]";
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_26754E000, v15, OS_LOG_TYPE_DEFAULT, "%s error when executing :%@", buf, 0x16u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, -1.0, -1.0, -1.0);
      }
    }

    v16 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[SLODLDClassifierV1 processEncodedTokens:withContext:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_26754E000, v16, OS_LOG_TYPE_DEFAULT, "%s outputs from Odld classifier: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v38) = -1082130432;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = -1082130432;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = -1082130432;
    outputNodes = self->_outputNodes;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__SLODLDClassifierV1_processEncodedTokens_withContext_withCompletion___block_invoke;
    v23[3] = &unk_279C0E888;
    v18 = v13;
    v24 = v18;
    v25 = buf;
    v26 = &v32;
    v27 = &v28;
    [(NSArray *)outputNodes enumerateObjectsUsingBlock:v23];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, *(*&buf[8] + 24), v33[6], v29[6]);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      localizedDescription = [0 localizedDescription];
      *buf = 136315650;
      *&buf[4] = "[SLODLDClassifierV1 processEncodedTokens:withContext:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = localizedDescription;
      *&buf[22] = 2112;
      v38 = 0;
      _os_log_error_impl(&dword_26754E000, v21, OS_LOG_TYPE_ERROR, "%s Unable to create feature dict with error %@ from %@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, -1.0, -1.0, -1.0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __70__SLODLDClassifierV1_processEncodedTokens_withContext_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v4 = [v3 convertDataToArray];
  if ([v8 isEqualToString:@"output_prob"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"minibatch_score_odld"))
  {
    v5 = 40;
LABEL_4:
    v6 = [v4 firstObject];
    [v6 floatValue];
    *(*(*(a1 + v5) + 8) + 24) = v7;

    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"minibatch_score_social"])
  {
    v5 = 48;
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"minibatch_score_conversational"])
  {
    v5 = 56;
    goto LABEL_4;
  }

LABEL_5:
}

- (float)processEncodedTokens:(id)tokens
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[SLODLDClassifierV1 processEncodedTokens:]";
    _os_log_error_impl(&dword_26754E000, v3, OS_LOG_TYPE_ERROR, "%s Unable to process tokens without context", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return -1.0;
}

- (SLODLDClassifierV1)initWithConfigFile:(id)file bnnsIrWeightPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = SLODLDClassifierV1;
  v8 = [(SLODLDClassifierV1 *)&v20 init];
  if (!v8)
  {
    goto LABEL_13;
  }

  v19 = 0;
  v9 = [MEMORY[0x277D01768] provideComputeBackendWithModelFile:fileCopy separateWeight:pathCopy error:&v19];
  v10 = v19;
  odldClassifier = v8->_odldClassifier;
  v8->_odldClassifier = v9;

  if (v8->_odldClassifier)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[SLODLDClassifierV1 initWithConfigFile:bnnsIrWeightPath:]";
      v23 = 2112;
      v24 = v10;
      v14 = "%s model init error: %@";
LABEL_11:
      _os_log_impl(&dword_26754E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  _extractModelSpecs = [(SLODLDClassifierV1 *)v8 _extractModelSpecs];
  if (!_extractModelSpecs)
  {
LABEL_13:
    v16 = v8;
    goto LABEL_14;
  }

  v10 = _extractModelSpecs;
  v13 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SLODLDClassifierV1 initWithConfigFile:bnnsIrWeightPath:]";
    v23 = 2112;
    v24 = v10;
    v14 = "%s model init error with model specs extraction: %@";
    goto LABEL_11;
  }

LABEL_12:

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end