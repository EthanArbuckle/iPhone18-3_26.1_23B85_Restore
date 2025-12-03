@interface PISliderNetAdjustmentsJob
- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)prepare:(id *)prepare;
- (id)cacheKey;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation PISliderNetAdjustmentsJob

- (void)cleanUp
{
  v4.receiver = self;
  v4.super_class = PISliderNetAdjustmentsJob;
  [(NURenderJob *)&v4 cleanUp];
  adjustments = self->_adjustments;
  self->_adjustments = 0;
}

- (id)result
{
  v3 = objc_alloc_init(_PISliderNetAdjustmentsResult);
  [(_PISliderNetAdjustmentsResult *)v3 setAdjustments:self->_adjustments];
  *&v4 = self->_similarityScore;
  [(_PISliderNetAdjustmentsResult *)v3 setSimilarityScore:v4];

  return v3;
}

- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  request = [(NURenderJob *)self request];
  sliderNetModel = [request sliderNetModel];
  assetScenePrint = [request assetScenePrint];
  v36 = 0;
  v10 = [sliderNetModel predictStylePrintForPixelBuffer:buffer scenePrint:assetScenePrint error:&v36];
  v11 = v36;

  if (v10)
  {
    sliderNetModel2 = [request sliderNetModel];
    sourceStyleFeatureVector = self->_sourceStyleFeatureVector;
    v35 = 0;
    [sliderNetModel2 gatingScoreToTransferStyleFrom:sourceStyleFeatureVector to:v10 error:&v35];
    v15 = v14;
    request3 = v35;
    self->_similarityScore = v15;

    if (request3)
    {
      v17 = MEMORY[0x1E69B3A48];
      adjustments = [(NURenderJob *)self request];
      [v17 errorWithCode:1 reason:@"Unable to get a gating score from from network" object:adjustments underlyingError:request3];
      *error = v19 = 0;
LABEL_13:

      goto LABEL_14;
    }

    [request similarityGatingThreshold];
    if (v21 == -1.0)
    {
      sliderNetModel3 = [request sliderNetModel];
      v25 = self->_sourceStyleFeatureVector;
      v33 = 0;
      v26 = [sliderNetModel3 predictSlidersToTransferStyleFrom:v25 to:v10 error:&v33];
      v27 = v33;
    }

    else
    {
      similarityScore = self->_similarityScore;
      [request similarityGatingThreshold];
      if (v23 > similarityScore)
      {
        adjustments = self->_adjustments;
        self->_adjustments = MEMORY[0x1E695E0F8];
LABEL_11:
        v19 = 1;
        goto LABEL_13;
      }

      sliderNetModel3 = [request sliderNetModel];
      v28 = self->_sourceStyleFeatureVector;
      v34 = 0;
      v26 = [sliderNetModel3 predictSlidersToTransferStyleFrom:v28 to:v10 error:&v34];
      v27 = v34;
    }

    adjustments = v27;
    v29 = self->_adjustments;
    self->_adjustments = v26;

    if (!self->_adjustments)
    {
      v30 = MEMORY[0x1E69B3A48];
      request2 = [(NURenderJob *)self request];
      *error = [v30 errorWithCode:1 reason:@"Unable to get sliders data from network" object:request2 underlyingError:adjustments];

      v19 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = MEMORY[0x1E69B3A48];
  request3 = [(NURenderJob *)self request];
  [v20 errorWithCode:1 reason:@"Unable to get a content feature Vector from network" object:request3 underlyingError:v11];
  *error = v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)prepare:(id *)prepare
{
  v40 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PISliderNetAdjustmentsJob;
  if (![(NURenderJob *)&v32 prepare:?])
  {
    return 0;
  }

  prepareNode = [(NURenderJob *)self prepareNode];
  v6 = prepareNode == 0;

  if (v6)
  {
    v18 = NUAssertLogger_20960();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing prepare node"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_20960();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  request = [(NURenderJob *)self request];
  v8 = MEMORY[0x1E696ACD0];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v9 = getIHKFeatureVectorClass_softClass;
  v36 = getIHKFeatureVectorClass_softClass;
  if (!getIHKFeatureVectorClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIHKFeatureVectorClass_block_invoke;
    v38 = &unk_1E82AC930;
    v39 = &v33;
    __getIHKFeatureVectorClass_block_invoke(buf);
    v9 = v34[3];
  }

  v10 = v9;
  _Block_object_dispose(&v33, 8);
  styleFeatureVectorData = [request styleFeatureVectorData];
  v31 = 0;
  v12 = [v8 unarchivedObjectOfClass:v9 fromData:styleFeatureVectorData error:&v31];
  v13 = v31;
  sourceStyleFeatureVector = self->_sourceStyleFeatureVector;
  self->_sourceStyleFeatureVector = v12;

  v15 = self->_sourceStyleFeatureVector;
  v16 = v15 != 0;
  if (!v15)
  {
    *prepare = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Unable to unarchive style feature vector data" object:request underlyingError:v13];
  }

  return v16;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  renderNode = [(NURenderJob *)self renderNode];
  [renderNode nu_updateDigest:v3];

  [v3 finalize];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)scalePolicy
{
  request = [(NURenderJob *)self request];
  scalePolicy = [request scalePolicy];

  return scalePolicy;
}

@end