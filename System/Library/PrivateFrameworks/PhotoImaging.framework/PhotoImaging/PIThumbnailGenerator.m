@interface PIThumbnailGenerator
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)referenceTimeForTimes:(SEL)a3;
+ (id)_sourceFromResult:(id)a3;
+ (id)pipelineFiltersForAdjustedThumbnailRenderWithSource:(id)a3;
+ (id)pipelineFiltersForUnadjustedThumbnail;
+ (id)referenceSourceForTime:(id *)a3 thumbnailTimes:(id)a4 unadjustedSources:(id)a5;
+ (void)_generateAdjustedThumbnailsWithSnapshot:(id)a3;
+ (void)_generateUnadjustedThumbnailsWithSnapshot:(id)a3 completion:(id)a4;
- (PIThumbnailGenerator)init;
- (void)_generateThumbnailsWithPendingSnapshot:(id)a3;
- (void)_generateThumbnailsWithSnapshot:(id)a3;
- (void)cancelThumbnailGeneration;
- (void)generateThumbnailsWithCompletion:(id)a3;
- (void)generateThumbnailsWithPendingSnapshot:(id)a3;
- (void)setReferenceTime:(id *)a3;
- (void)setThumbnailScalePolicy:(id)a3;
- (void)setThumbnailTimes:(id)a3;
@end

@implementation PIThumbnailGenerator

- (void)setReferenceTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_referenceTime.epoch = a3->var3;
  *&self->_referenceTime.value = v3;
}

- (void)_generateThumbnailsWithSnapshot:(id)a3
{
  v5 = a3;
  if (self->_currentSnapshot)
  {
    [(_PIThumbnailGeneratorSnapshot *)self->_currentSnapshot setPendingSnapshot:v5];
  }

  else
  {
    objc_storeStrong(&self->_currentSnapshot, a3);
    unadjustedThumbnails = self->_unadjustedThumbnails;
    if (unadjustedThumbnails && (v7 = [(NSArray *)unadjustedThumbnails count], v7 == [(NSArray *)self->_thumbnailTimes count]))
    {
      [v5 setUnadjustedThumbnails:self->_unadjustedThumbnails];
      [objc_opt_class() _generateAdjustedThumbnailsWithSnapshot:v5];
    }

    else
    {
      v8 = objc_opt_class();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__PIThumbnailGenerator__generateThumbnailsWithSnapshot___block_invoke;
      v9[3] = &unk_1E82AB860;
      v10 = v5;
      v11 = self;
      [v8 _generateUnadjustedThumbnailsWithSnapshot:v10 completion:v9];
    }
  }
}

void __56__PIThumbnailGenerator__generateThumbnailsWithSnapshot___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) unadjustedThumbnails];
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    [objc_opt_class() _generateAdjustedThumbnailsWithSnapshot:*(a1 + 32)];
  }

  else
  {
    v9 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Unable to generate unadjusted thumbnail" object:*(a1 + 32) underlyingError:v5];

    v10 = *(*(a1 + 40) + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PIThumbnailGenerator__generateThumbnailsWithSnapshot___block_invoke_2;
    v11[3] = &unk_1E82AC4E8;
    v12 = *(a1 + 32);
    v5 = v9;
    v13 = v5;
    dispatch_async(v10, v11);
  }
}

void __56__PIThumbnailGenerator__generateThumbnailsWithSnapshot___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, 0, *(a1 + 40));
}

- (void)_generateThumbnailsWithPendingSnapshot:(id)a3
{
  v6 = a3;
  currentSnapshot = self->_currentSnapshot;
  self->_currentSnapshot = 0;

  v5 = v6;
  if (v6)
  {
    [(PIThumbnailGenerator *)self _generateThumbnailsWithSnapshot:v6];
    v5 = v6;
  }
}

- (void)generateThumbnailsWithPendingSnapshot:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PIThumbnailGenerator_generateThumbnailsWithPendingSnapshot___block_invoke;
  v7[3] = &unk_1E82AC4E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)generateThumbnailsWithCompletion:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_composition)
  {
    v21 = NUAssertLogger_19600();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing composition"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_19600();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(*v23);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v23 = [v35 callStackSymbols];
        v37 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_27;
  }

  v5 = v4;
  thumbnailTimes = self->_thumbnailTimes;
  if (!thumbnailTimes)
  {
    v28 = NUAssertLogger_19600();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail times"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_19600();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_29;
    }

LABEL_27:
    if (v31)
    {
      v38 = dispatch_get_specific(*v23);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v41 = [v39 callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_29:

    _NUAssertFailHandler();
  }

  if ([(NSArray *)thumbnailTimes count])
  {
    v7 = [[_PIThumbnailGeneratorSnapshot alloc] initWithGenerator:self];
    [(_PIThumbnailGeneratorSnapshot *)v7 setCompletionHandler:v5];
    memset(buf, 0, sizeof(buf));
    v8 = objc_opt_class();
    v9 = [(_PIThumbnailGeneratorSnapshot *)v7 thumbnailTimes];
    if (v8)
    {
      [v8 referenceTimeForTimes:v9];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v45 = *buf;
    v46 = *&buf[16];
    [(_PIThumbnailGeneratorSnapshot *)v7 setReferenceTime:&v45];
    renderRequest = self->_renderRequest;
    if (!renderRequest)
    {
      v11 = objc_alloc(MEMORY[0x1E69B3AD8]);
      v12 = [(_PIThumbnailGeneratorSnapshot *)v7 composition];
      v13 = [v11 initWithComposition:v12];
      v14 = self->_renderRequest;
      self->_renderRequest = v13;

      v15 = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
      [(NUImageBufferRenderRequest *)self->_renderRequest setColorSpace:v15];

      [(NUImageBufferRenderRequest *)self->_renderRequest setResponseQueue:self->_queue];
      renderRequest = self->_renderRequest;
    }

    if (self->_thumbnailScalePolicy)
    {
      [(NUImageBufferRenderRequest *)renderRequest setScalePolicy:?];
      renderRequest = self->_renderRequest;
    }

    v16 = [(NUImageBufferRenderRequest *)renderRequest copy];
    [(_PIThumbnailGeneratorSnapshot *)v7 setRequest:v16];

    v17 = [(_PIThumbnailGeneratorSnapshot *)v7 composition];
    v18 = [(_PIThumbnailGeneratorSnapshot *)v7 request];
    [v18 setComposition:v17];

    queue = self->_queue;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __57__PIThumbnailGenerator_generateThumbnailsWithCompletion___block_invoke;
    v43[3] = &unk_1E82AC4E8;
    v43[4] = self;
    v44 = v7;
    v20 = v7;
    dispatch_async(queue, v43);
  }

  else
  {
    v5[2](v5, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)cancelThumbnailGeneration
{
  v3 = [(NUImageBufferRenderRequest *)self->_renderRequest renderContext];
  [v3 cancelAllRequests];

  currentSnapshot = self->_currentSnapshot;
  self->_currentSnapshot = 0;
}

- (void)setThumbnailScalePolicy:(id)a3
{
  v6 = a3;
  if (([(NUScalePolicy *)self->_thumbnailScalePolicy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_thumbnailScalePolicy, a3);
    unadjustedThumbnails = self->_unadjustedThumbnails;
    self->_unadjustedThumbnails = 0;
  }
}

- (void)setThumbnailTimes:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_19600();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "times != nil"];
      *buf = 138543362;
      v23 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_19600();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v20;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v15;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v21 = v4;
  if (![(NSArray *)self->_thumbnailTimes isEqualToArray:v4])
  {
    v5 = [v21 copy];
    thumbnailTimes = self->_thumbnailTimes;
    self->_thumbnailTimes = v5;

    unadjustedThumbnails = self->_unadjustedThumbnails;
    self->_unadjustedThumbnails = 0;
  }
}

- (PIThumbnailGenerator)init
{
  v8.receiver = self;
  v8.super_class = PIThumbnailGenerator;
  v2 = [(PIThumbnailGenerator *)&v8 init];
  thumbnailTimes = v2->_thumbnailTimes;
  v2->_thumbnailTimes = MEMORY[0x1E695E0F0];

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("PIThumbnailGenerator", v4);
  queue = v2->_queue;
  v2->_queue = v5;

  objc_storeStrong(&v2->_resultQueue, MEMORY[0x1E69E96A0]);
  return v2;
}

+ (id)pipelineFiltersForAdjustedThumbnailRenderWithSource:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69B3C30]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PIThumbnailGenerator_pipelineFiltersForAdjustedThumbnailRenderWithSource___block_invoke;
  v9[3] = &unk_1E82ACA50;
  v10 = v3;
  v5 = v3;
  v6 = [v4 initWithBlock:v9];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v7;
}

id __76__PIThumbnailGenerator_pipelineFiltersForAdjustedThumbnailRenderWithSource___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v9 renderNodeFromSource:*(a1 + 32) settings:MEMORY[0x1E695E0F8] error:a5];
  if (!v12)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v10 objectForKeyedSubscript:@"semanticStyle"];

  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = [v9 inputForPath:@"semanticStyleLearn" error:a5];
  if (v15)
  {
    v16 = v15;
    v17 = [MEMORY[0x1E69B3C40] styleTransferApplyNodeWithInput:v13 thumbnail:0 target:v15 settings:MEMORY[0x1E695E0F8]];

    v13 = v17;
LABEL_5:
    [v9 resetTag:@"pre-WB" input:v13];
    v18 = [v9 getTagWithPath:@"pre-Mute" error:a5];
    if (v18)
    {
      [v9 resetTag:@"pre-Trim" input:v18];
      v19 = [v9 getTagWithPath:@"pre-Trim" error:a5];
      [v9 resetTag:@"pre-SmartTone" input:v19];
      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_11;
  }

  v20 = 0;
LABEL_11:

LABEL_12:

  return v20;
}

+ (id)pipelineFiltersForUnadjustedThumbnail
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_19664];
  v3 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/ShowOriginalSource"];
  v8[0] = v3;
  v8[1] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v5 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_141_19666];
  v6 = [v4 arrayByAddingObject:v5];

  return v6;
}

id __61__PIThumbnailGenerator_pipelineFiltersForUnadjustedThumbnail__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [a3 objectForKeyedSubscript:@"semanticStyle"];

  if (v10)
  {
    v11 = [v8 getTagWithPath:@"pre-Adjustments" error:a5];
    if (v11)
    {
      [v8 resetTag:@"/ShowOriginalSource" input:v11];
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

id __61__PIThumbnailGenerator_pipelineFiltersForUnadjustedThumbnail__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  [v8 resetTag:@"/pre-Trim" input:v7];
  v9 = [v8 getTagWithPath:@"/Trim" error:a5];

  return v9;
}

+ (id)referenceSourceForTime:(id *)a3 thumbnailTimes:(id)a4 unadjustedSources:(id)a5
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PIThumbnailGenerator_referenceSourceForTime_thumbnailTimes_unadjustedSources___block_invoke;
  v9[3] = &__block_descriptor_56_e24_B32__0__NSValue_8Q16_B24l;
  v10 = *a3;
  v6 = a5;
  v7 = [v6 objectAtIndex:{objc_msgSend(a4, "indexOfObjectPassingTest:", v9)}];

  return v7;
}

BOOL __80__PIThumbnailGenerator_referenceSourceForTime_thumbnailTimes_unadjustedSources___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 CMTimeValue];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v4 = *(a1 + 32);
  return CMTimeCompare(&v4, &time2) == 0;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)referenceTimeForTimes:(SEL)a3
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  v5 = [a4 firstObject];
  if (v5)
  {
    v7 = v5;
    [v5 CMTimeValue];
    v5 = v7;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

+ (void)_generateAdjustedThumbnailsWithSnapshot:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v4 thumbnailTimes];
  v7 = [v4 unadjustedThumbnails];
  v47 = 0uLL;
  v48 = 0;
  if (v4)
  {
    [v4 referenceTime];
  }

  v8 = [v4 partialResultHandler];
  v9 = [v5 composition];
  v10 = [v9 objectForKeyedSubscript:@"semanticStyle"];

  v11 = MEMORY[0x1E6960C70];
  if (v10)
  {
    v40 = v47;
    v12 = v48;
  }

  else
  {
    v40 = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
  }

  v41 = v12;
  [v5 setTime:&v40];
  v13 = [v5 composition];
  v14 = [v13 objectForKeyedSubscript:@"livePhotoKeyFrame"];

  if (v14)
  {
    v40 = *v11;
    v41 = *(v11 + 2);
    [v5 setTime:&v40];
  }

  [v5 setName:@"PIThumbnailGenerator-AdjustedThumbnail"];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  *&v40 = 0;
  *(&v40 + 1) = &v40;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__19684;
  v43 = __Block_byref_object_dispose__19685;
  v44 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__19684;
  v38[4] = __Block_byref_object_dispose__19685;
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  [MEMORY[0x1E69B3C60] begin];
  v15 = [v7 count];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke;
  v28[3] = &unk_1E82AB950;
  v16 = v6;
  v29 = v16;
  v17 = v5;
  v36 = a1;
  v30 = v17;
  v33 = v38;
  v18 = v8;
  v32 = v18;
  v19 = v4;
  v31 = v19;
  v34 = &v40;
  v35 = v45;
  v37 = v15;
  [v7 enumerateObjectsUsingBlock:v28];
  v20 = MEMORY[0x1E69B3C60];
  v21 = [v19 resultQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_4;
  v23[3] = &unk_1E82AB978;
  v22 = v19;
  v24 = v22;
  v25 = v45;
  v26 = v38;
  v27 = &v40;
  [v20 commitAndNotifyOnQueue:v21 withBlock:v23];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(v45, 8);
}

void __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = 0uLL;
  v33 = 0;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = v7;
  if (v7)
  {
    [v7 CMTimeValue];
  }

  else
  {
    v32 = 0uLL;
    v33 = 0;
  }

  v9 = objc_alloc(MEMORY[0x1E69B3A88]);
  v10 = [v6 definition];
  v11 = [v10 scale];
  v13 = [v9 initWithScale:{v11, v12}];
  [*(a1 + 40) setScalePolicy:v13];

  v14 = [objc_opt_class() pipelineFiltersForAdjustedThumbnailRenderWithSource:v6];

  [*(a1 + 40) setPipelineFilters:v14];
  v15 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_2;
  v22[3] = &unk_1E82AB928;
  v21 = *(a1 + 56);
  v16 = v21;
  v25 = v21;
  v17 = *(a1 + 48);
  v28 = a3;
  v30 = v32;
  v31 = v33;
  v18 = *(a1 + 72);
  v23 = v17;
  v26 = v18;
  v19 = *(a1 + 40);
  v20 = *(a1 + 80);
  v24 = v19;
  v27 = v20;
  v29 = *(a1 + 96);
  [v15 submit:v22];
}

void __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = v2;
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 56) + 8) + 40));
}

void __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = 0;
  v3 = [a2 result:&v20];
  v4 = v20;
  if (v3)
  {
    v5 = [v3 buffer];
    v6 = [v5 CVPixelBuffer];

    CVPixelBufferGetIOSurface(v6);
    v7 = CGImageCreateFromIOSurface();
    [*(*(*(a1 + 56) + 8) + 40) addObject:v7];

    if (*(a1 + 48))
    {
      v8 = [*(a1 + 32) resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_3;
      block[3] = &unk_1E82AB900;
      v15 = *(a1 + 48);
      v16 = v7;
      v17 = *(a1 + 80);
      v18 = *(a1 + 96);
      v19 = *(a1 + 112);
      dispatch_async(v8, block);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to render adjusted thumbnail" object:*(a1 + 40) underlyingError:v4];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  if (*(a1 + 88) == 1 || *(a1 + 80) == *(a1 + 88) - 1)
  {
    v12 = [*(a1 + 32) generator];
    v13 = [*(a1 + 32) pendingSnapshot];
    [v12 generateThumbnailsWithPendingSnapshot:v13];
  }
}

uint64_t __64__PIThumbnailGenerator__generateAdjustedThumbnailsWithSnapshot___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v2 + 16);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  return v4(v2, v1, v3, &v6);
}

+ (id)_sourceFromResult:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x1E695F658];
  if (v3)
  {
    v6 = [v3 buffer];
    v7 = [v5 imageWithCVPixelBuffer:{objc_msgSend(v6, "CVPixelBuffer")}];

    v8 = [v4 geometry];
    v9 = [v8 size];
    v11 = v10;
  }

  else
  {
    v8 = [MEMORY[0x1E695F610] blackColor];
    v12 = [v5 imageWithColor:v8];
    v7 = [v12 imageByCroppingToRect:{0.0, 0.0, 100.0, 100.0}];

    v9 = 100;
    v11 = 100;
  }

  [v7 extent];
  v13 = NUPixelSizeFromCGSize();
  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x1E69B39B0]) initWithCIImage:v7 orientation:1];
  v17 = [objc_alloc(MEMORY[0x1E69B3C98]) initWithSourceDefinition:v16 sourceSize:v13 fullSize:{v15, v9, v11}];
  v18 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  [v18 setAssetIdentifier:v20];

  [v18 setDefinition:v17];

  return v18;
}

+ (void)_generateUnadjustedThumbnailsWithSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = [v6 thumbnailTimes];
  v10 = [objc_opt_class() pipelineFiltersForUnadjustedThumbnail];
  [v8 setPipelineFilters:v10];

  [v8 setName:@"PIThumbnailGenerator-UnadjustedThumbnail"];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__19684;
  v30[4] = __Block_byref_object_dispose__19685;
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__19684;
  v28[4] = __Block_byref_object_dispose__19685;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [MEMORY[0x1E69B3C60] begin];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke;
  v23[3] = &unk_1E82AB8B0;
  v11 = v8;
  v24 = v11;
  v25 = v28;
  v26 = v30;
  v27 = a1;
  [v9 enumerateObjectsUsingBlock:v23];
  v12 = MEMORY[0x1E69B3C60];
  v13 = [v11 responseQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke_3;
  v17[3] = &unk_1E82AB8D8;
  v21 = v28;
  v14 = v9;
  v18 = v14;
  v15 = v7;
  v20 = v15;
  v16 = v6;
  v19 = v16;
  v22 = v30;
  [v12 commitAndNotifyOnQueue:v13 withBlock:v17];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

void __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v13 = 0uLL;
  v14 = 0;
  if (v3)
  {
    [v3 CMTimeValue];
  }

  v11 = v13;
  v12 = v14;
  [*(a1 + 32) setTime:&v11];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke_2;
  v7[3] = &unk_1E82AB888;
  v8 = v4;
  v10 = *(a1 + 56);
  v9 = *(a1 + 40);
  v6 = v4;
  [v5 submit:v7];
}

void __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 56) + 8) + 40) count];
  if (v2 == [*(a1 + 32) count])
  {
    v3 = *(a1 + 48);
    v10 = [*(*(*(a1 + 56) + 8) + 40) firstObject];
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    if ([*(*(*(a1 + 56) + 8) + 40) count])
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_194);
      }

      v4 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 56) + 8) + 40);
        v7 = v4;
        v8 = [v6 count];
        v9 = [*(*(*(a1 + 56) + 8) + 40) componentsJoinedByString:@"\n\t"];
        *buf = 134218242;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Failed to generate %ld thumbnails, errors: \n\t%{public}@", buf, 0x16u);
      }
    }

    v5 = [*(*(*(a1 + 64) + 8) + 40) copy];
    [*(a1 + 40) setUnadjustedThumbnails:v5];

    (*(*(a1 + 48) + 16))();
  }
}

void __77__PIThumbnailGenerator__generateUnadjustedThumbnailsWithSnapshot_completion___block_invoke_2(void *a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to render unadjusted image at time" object:a1[4] underlyingError:v4];
    [*(*(a1[5] + 8) + 40) addObject:v5];
  }

  v6 = [objc_opt_class() _sourceFromResult:v3];
  [*(*(a1[6] + 8) + 40) addObject:v6];
}

@end