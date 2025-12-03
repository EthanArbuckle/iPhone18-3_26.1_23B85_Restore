@interface PIInpaintMaskContext
+ (id)_createSubjectMaskFromBuffer:(id)buffer digest:(id)digest ciContext:(id)context fullImageSize:(id)size;
- ($721907E0E1CDE8B6CD3FA271A8B25860)fullImageExtent;
- (PIInpaintMaskContext)initWithSegmentationResult:(id)result composition:(id)composition subjectMaskBuffer:(id)buffer detectedFaces:(id)faces fullImageExtent:(id *)extent assetIdentifier:(id)identifier requestID:(id)d initialSensitivityScore:(double)self0 livePhotoKeyFrameTime:(id *)self1;
- (id)_foregroundOperationsFromComposition:(id)composition subjectMaskBuffer:(id)buffer;
- (id)debugDescription;
- (id)subjectMaskDigestForComposition:(id)composition subjectMaskBuffer:(id)buffer;
- (void)_resetForComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion;
- (void)_updatePropertiesFromContext:(id)context;
- (void)setLivePhotoKeyFrameTime:(id *)time;
- (void)updateSubjectMaskBufferIfNeededForComposition:(id)composition digest:(id)digest completionQueue:(id)queue completion:(id)completion;
@end

@implementation PIInpaintMaskContext

- (void)setLivePhotoKeyFrameTime:(id *)time
{
  v3 = *&time->var0;
  self->_livePhotoKeyFrameTime.epoch = time->var3;
  *&self->_livePhotoKeyFrameTime.value = v3;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)fullImageExtent
{
  var1 = self[3].var1;
  retstr->var0 = self[3].var0;
  retstr->var1 = var1;
  return self;
}

- (void)_updatePropertiesFromContext:(id)context
{
  contextCopy = context;
  segmentationResult = [contextCopy segmentationResult];
  segmentationResult = self->_segmentationResult;
  self->_segmentationResult = segmentationResult;

  subjectMask = [contextCopy subjectMask];
  subjectMask = self->_subjectMask;
  self->_subjectMask = subjectMask;

  subjectMaskDigest = [contextCopy subjectMaskDigest];
  subjectMaskDigest = self->_subjectMaskDigest;
  self->_subjectMaskDigest = subjectMaskDigest;

  detectedFaces = [contextCopy detectedFaces];
  detectedFaces = self->_detectedFaces;
  self->_detectedFaces = detectedFaces;

  if (contextCopy)
  {
    [contextCopy fullImageExtent];
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  self->_fullImageExtent.origin = v17;
  self->_fullImageExtent.size = v19;
  assetIdentifier = [contextCopy assetIdentifier];
  assetIdentifier = self->_assetIdentifier;
  self->_assetIdentifier = assetIdentifier;

  if (contextCopy)
  {
    [contextCopy livePhotoKeyFrameTime];
  }

  else
  {
    v18 = 0uLL;
    v20 = 0;
  }

  *&self->_livePhotoKeyFrameTime.value = v18;
  self->_livePhotoKeyFrameTime.epoch = v20;
  ciContext = [contextCopy ciContext];
  ciContext = self->_ciContext;
  self->_ciContext = ciContext;
}

- (void)_resetForComposition:(id)composition requestID:(id)d completionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PIInpaintMaskContext__resetForComposition_requestID_completionQueue_completion___block_invoke;
  v10[3] = &unk_1E82AAF68;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [PIObjectRemoval createMaskContextForComposition:composition requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v10];
}

void __82__PIInpaintMaskContext__resetForComposition_requestID_completionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    [*(a1 + 32) _updatePropertiesFromContext:?];
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 32);
  }

  else
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 0;
  }

  (*(v6 + 16))(v6, v7, 1, v5);
LABEL_7:
}

- (void)updateSubjectMaskBufferIfNeededForComposition:(id)composition digest:(id)digest completionQueue:(id)queue completion:(id)completion
{
  compositionCopy = composition;
  digestCopy = digest;
  queueCopy = queue;
  completionCopy = completion;
  subjectMaskDigest = [(PIInpaintMaskContext *)self subjectMaskDigest];
  stringValue = [subjectMaskDigest stringValue];
  stringValue2 = [digestCopy stringValue];
  v17 = [stringValue isEqualToString:stringValue2];

  if (v17)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, self, 0, 0);
    }
  }

  else
  {
    [(PIInpaintMaskContext *)self setSubjectMaskDigest:digestCopy];
    v18 = +[PIPhotoEditHelper pipelineFiltersForPostInpaintSegmentation];
    [MEMORY[0x1E69B3C60] begin];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__13039;
    v43[4] = __Block_byref_object_dispose__13040;
    v44 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = __Block_byref_object_copy__13039;
    v41[4] = __Block_byref_object_dispose__13040;
    v42 = 0;
    v19 = [objc_alloc(MEMORY[0x1E69B3D50]) initWithComposition:compositionCopy];
    [v19 setPipelineFilters:v18];
    [v19 setResponseQueue:queueCopy];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke;
    v40[3] = &unk_1E82AAF18;
    v40[4] = v43;
    v40[5] = v41;
    [v19 submit:v40];
    v26 = compositionCopy;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__13039;
    v38[4] = __Block_byref_object_dispose__13040;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__13039;
    v36[4] = __Block_byref_object_dispose__13040;
    v37 = 0;
    v20 = [PIFaceObservationCache faceRequestWithRequest:v19];
    [v20 setPipelineFilters:v18];
    [v20 setResponseQueue:queueCopy];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke_75;
    v35[3] = &unk_1E82AAF18;
    v35[4] = v38;
    v35[5] = v36;
    [v20 submit:v35];
    v21 = [PIPerfPowerService alloc];
    v22 = +[PIPerfPowerServiceIdentifier genEditIdentifier];
    v23 = [(PIPerfPowerService *)v21 initWithIdentifier:v22 operation:4];

    [(PIPerfPowerService *)v23 beginMeasuring];
    v24 = MEMORY[0x1E69B3C60];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke_2;
    v27[3] = &unk_1E82AAF40;
    v25 = v23;
    v31 = v43;
    v32 = v41;
    v28 = v25;
    selfCopy = self;
    v30 = completionCopy;
    v33 = v38;
    v34 = v36;
    [v24 commitAndNotifyOnQueue:queueCopy withBlock:v27];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);

    compositionCopy = v26;
  }
}

void __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_FORCE_SEGMENTATION_FAIL"];

  if (v5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_309_13016);
    }

    v6 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_DEFAULT, "PIObjectRemoval: user default set, overriding segmentationResult to nil", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Forced Segmentation Failure" object:0];
    v10 = 40;
  }

  else
  {
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    v9 = [v3 result:&obj];
    objc_storeStrong((v11 + 40), obj);
    v10 = 32;
  }

  v12 = *(*(a1 + v10) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
}

void __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endMeasuring];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    v3 = [v2 foregroundInstances];
    v4 = [v3 count];

    if (v4)
    {
      v5 = *(*(*(a1 + 56) + 8) + 40);
      v6 = [v5 foregroundInstances];
      v7 = *(*(a1 + 64) + 8);
      obj = 0;
      v8 = [v5 newMaskForInstances:v6 error:&obj];
      objc_storeStrong((v7 + 40), obj);
    }

    else
    {
      v8 = 0;
    }

    v11 = [*(a1 + 40) subjectMaskDigest];
    v12 = [*(a1 + 40) ciContext];
    v13 = *(a1 + 40);
    if (v13)
    {
      [v13 fullImageExtent];
      v15 = *(&v23 + 1);
      v14 = v23;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    v16 = [PIInpaintMaskContext _createSubjectMaskFromBuffer:v8 digest:v11 ciContext:v12 fullImageSize:v14, v15, v22, v23];
    [*(a1 + 40) setSubjectMask:v16];

    v17 = *(*(*(a1 + 72) + 8) + 40);
    if (v17)
    {
      v18 = [v17 faces];
      v19 = *(a1 + 40);
      v20 = *(v19 + 16);
      *(v19 + 16) = v18;

      result = *(a1 + 48);
      if (!result)
      {
        return result;
      }

      v21 = *(result + 16);
    }

    else
    {
      result = *(a1 + 48);
      if (!result)
      {
        return result;
      }

      v21 = *(result + 16);
    }

    return v21();
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v10 = *(result + 16);

      return v10();
    }
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  segmentationResult = [(PIInpaintMaskContext *)self segmentationResult];
  instances = [segmentationResult instances];
  v5 = [v2 stringWithFormat:@"PIInpaintMaskContext with instance segments: %@", instances];

  return v5;
}

- (PIInpaintMaskContext)initWithSegmentationResult:(id)result composition:(id)composition subjectMaskBuffer:(id)buffer detectedFaces:(id)faces fullImageExtent:(id *)extent assetIdentifier:(id)identifier requestID:(id)d initialSensitivityScore:(double)self0 livePhotoKeyFrameTime:(id *)self1
{
  v45[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  bufferCopy = buffer;
  facesCopy = faces;
  identifierCopy = identifier;
  dCopy = d;
  v43.receiver = self;
  v43.super_class = PIInpaintMaskContext;
  compositionCopy = composition;
  v24 = [(PIInpaintMaskContext *)&v43 init];
  v25 = MEMORY[0x1E695F620];
  v26 = *MEMORY[0x1E695F830];
  v44[0] = *MEMORY[0x1E695F7F0];
  v44[1] = v26;
  v45[0] = MEMORY[0x1E695E110];
  v45[1] = @"PIInpaintMaskContext";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v28 = [v25 contextWithOptions:v27];
  v29 = *(v24 + 8);
  *(v24 + 8) = v28;

  objc_storeStrong(v24 + 1, result);
  v30 = [v24 subjectMaskDigestForComposition:compositionCopy subjectMaskBuffer:bufferCopy];

  v31 = *(v24 + 7);
  *(v24 + 7) = v30;

  if (bufferCopy)
  {
    v32 = [PIInpaintMaskContext _createSubjectMaskFromBuffer:bufferCopy digest:*(v24 + 7) ciContext:*(v24 + 8) fullImageSize:extent->var1.var0, extent->var1.var1];
    v33 = *(v24 + 6);
    *(v24 + 6) = v32;
  }

  v34 = *(v24 + 2);
  *(v24 + 2) = facesCopy;
  v35 = facesCopy;

  var1 = extent->var1;
  *(v24 + 6) = extent->var0;
  *(v24 + 7) = var1;
  v37 = *(v24 + 3);
  *(v24 + 3) = identifierCopy;
  v38 = identifierCopy;

  v39 = *(v24 + 4);
  *(v24 + 4) = dCopy;

  *(v24 + 5) = score;
  v40 = *&time->var0;
  *(v24 + 11) = time->var3;
  *(v24 + 72) = v40;

  return v24;
}

- (id)subjectMaskDigestForComposition:(id)composition subjectMaskBuffer:(id)buffer
{
  v6 = MEMORY[0x1E69B3A38];
  bufferCopy = buffer;
  compositionCopy = composition;
  v9 = objc_alloc_init(v6);
  v10 = [(PIInpaintMaskContext *)self _foregroundOperationsFromComposition:compositionCopy subjectMaskBuffer:bufferCopy];

  if ([v10 count])
  {
    [v10 nu_updateDigest:v9];
  }

  return v9;
}

- (id)_foregroundOperationsFromComposition:(id)composition subjectMaskBuffer:(id)buffer
{
  if (buffer)
  {
    v4 = [composition objectForKeyedSubscript:@"inpaint"];
    v5 = [v4 objectForKeyedSubscript:@"operations"];
    v6 = PFFilter();
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

uint64_t __79__PIInpaintMaskContext__foregroundOperationsFromComposition_subjectMaskBuffer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PIObjectRemoval _instancesForOperation:v3];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) segmentationResult];
    v6 = [v5 foregroundInstances];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__PIInpaintMaskContext__foregroundOperationsFromComposition_subjectMaskBuffer___block_invoke_2;
    v10[3] = &unk_1E82AAEC8;
    v11 = v4;
    v7 = [(PIInpaintOperation *)v6 indexesPassingTest:v10];
    v8 = [v7 count] != 0;
  }

  else
  {
    v6 = [[PIInpaintOperation alloc] initWithDictionary:v3];
    v8 = [(PIInpaintOperation *)v6 hasExclusionMask]^ 1;
  }

  return v8;
}

+ (id)_createSubjectMaskFromBuffer:(id)buffer digest:(id)digest ciContext:(id)context fullImageSize:(id)size
{
  bufferCopy = buffer;
  if (bufferCopy)
  {
    v9 = MEMORY[0x1E69B3B68];
    digestCopy = digest;
    v11 = [v9 propertiesForMask:bufferCopy context:context];
    [bufferCopy size];
    v12 = NUScaleMake();
    v14 = v13;
    stringValue = [digestCopy stringValue];

    v16 = [@"subject-" stringByAppendingString:stringValue];

    v17 = [PIInpaintMask alloc];
    if (v11)
    {
      [v11 bounds];
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v18 = [(PIInpaintMask *)v17 initWithBuffer:bufferCopy identifier:v16 extent:v20 scale:v12, v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end