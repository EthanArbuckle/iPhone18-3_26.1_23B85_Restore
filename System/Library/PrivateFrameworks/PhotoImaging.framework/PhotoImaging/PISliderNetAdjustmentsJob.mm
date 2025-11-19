@interface PISliderNetAdjustmentsJob
- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)prepare:(id *)a3;
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

- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v7 = [(NURenderJob *)self request];
  v8 = [v7 sliderNetModel];
  v9 = [v7 assetScenePrint];
  v36 = 0;
  v10 = [v8 predictStylePrintForPixelBuffer:a3 scenePrint:v9 error:&v36];
  v11 = v36;

  if (v10)
  {
    v12 = [v7 sliderNetModel];
    sourceStyleFeatureVector = self->_sourceStyleFeatureVector;
    v35 = 0;
    [v12 gatingScoreToTransferStyleFrom:sourceStyleFeatureVector to:v10 error:&v35];
    v15 = v14;
    v16 = v35;
    self->_similarityScore = v15;

    if (v16)
    {
      v17 = MEMORY[0x1E69B3A48];
      adjustments = [(NURenderJob *)self request];
      [v17 errorWithCode:1 reason:@"Unable to get a gating score from from network" object:adjustments underlyingError:v16];
      *a4 = v19 = 0;
LABEL_13:

      goto LABEL_14;
    }

    [v7 similarityGatingThreshold];
    if (v21 == -1.0)
    {
      v24 = [v7 sliderNetModel];
      v25 = self->_sourceStyleFeatureVector;
      v33 = 0;
      v26 = [v24 predictSlidersToTransferStyleFrom:v25 to:v10 error:&v33];
      v27 = v33;
    }

    else
    {
      similarityScore = self->_similarityScore;
      [v7 similarityGatingThreshold];
      if (v23 > similarityScore)
      {
        adjustments = self->_adjustments;
        self->_adjustments = MEMORY[0x1E695E0F8];
LABEL_11:
        v19 = 1;
        goto LABEL_13;
      }

      v24 = [v7 sliderNetModel];
      v28 = self->_sourceStyleFeatureVector;
      v34 = 0;
      v26 = [v24 predictSlidersToTransferStyleFrom:v28 to:v10 error:&v34];
      v27 = v34;
    }

    adjustments = v27;
    v29 = self->_adjustments;
    self->_adjustments = v26;

    if (!self->_adjustments)
    {
      v30 = MEMORY[0x1E69B3A48];
      v31 = [(NURenderJob *)self request];
      *a4 = [v30 errorWithCode:1 reason:@"Unable to get sliders data from network" object:v31 underlyingError:adjustments];

      v19 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = MEMORY[0x1E69B3A48];
  v16 = [(NURenderJob *)self request];
  [v20 errorWithCode:1 reason:@"Unable to get a content feature Vector from network" object:v16 underlyingError:v11];
  *a4 = v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)prepare:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PISliderNetAdjustmentsJob;
  if (![(NURenderJob *)&v32 prepare:?])
  {
    return 0;
  }

  v5 = [(NURenderJob *)self prepareNode];
  v6 = v5 == 0;

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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v7 = [(NURenderJob *)self request];
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
  v11 = [v7 styleFeatureVectorData];
  v31 = 0;
  v12 = [v8 unarchivedObjectOfClass:v9 fromData:v11 error:&v31];
  v13 = v31;
  sourceStyleFeatureVector = self->_sourceStyleFeatureVector;
  self->_sourceStyleFeatureVector = v12;

  v15 = self->_sourceStyleFeatureVector;
  v16 = v15 != 0;
  if (!v15)
  {
    *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Unable to unarchive style feature vector data" object:v7 underlyingError:v13];
  }

  return v16;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  v4 = [(NURenderJob *)self renderNode];
  [v4 nu_updateDigest:v3];

  [v3 finalize];
  v5 = [v3 stringValue];

  return v5;
}

- (id)scalePolicy
{
  v2 = [(NURenderJob *)self request];
  v3 = [v2 scalePolicy];

  return v3;
}

@end