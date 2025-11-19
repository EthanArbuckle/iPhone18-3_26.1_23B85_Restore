@interface PIInpaintMaskContext
+ (id)_createSubjectMaskFromBuffer:(id)a3 digest:(id)a4 ciContext:(id)a5 fullImageSize:(id)a6;
- ($721907E0E1CDE8B6CD3FA271A8B25860)fullImageExtent;
- (PIInpaintMaskContext)initWithSegmentationResult:(id)a3 composition:(id)a4 subjectMaskBuffer:(id)a5 detectedFaces:(id)a6 fullImageExtent:(id *)a7 assetIdentifier:(id)a8 requestID:(id)a9 initialSensitivityScore:(double)a10 livePhotoKeyFrameTime:(id *)a11;
- (id)_foregroundOperationsFromComposition:(id)a3 subjectMaskBuffer:(id)a4;
- (id)debugDescription;
- (id)subjectMaskDigestForComposition:(id)a3 subjectMaskBuffer:(id)a4;
- (void)_resetForComposition:(id)a3 requestID:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)_updatePropertiesFromContext:(id)a3;
- (void)setLivePhotoKeyFrameTime:(id *)a3;
- (void)updateSubjectMaskBufferIfNeededForComposition:(id)a3 digest:(id)a4 completionQueue:(id)a5 completion:(id)a6;
@end

@implementation PIInpaintMaskContext

- (void)setLivePhotoKeyFrameTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_livePhotoKeyFrameTime.epoch = a3->var3;
  *&self->_livePhotoKeyFrameTime.value = v3;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)fullImageExtent
{
  var1 = self[3].var1;
  retstr->var0 = self[3].var0;
  retstr->var1 = var1;
  return self;
}

- (void)_updatePropertiesFromContext:(id)a3
{
  v4 = a3;
  v5 = [v4 segmentationResult];
  segmentationResult = self->_segmentationResult;
  self->_segmentationResult = v5;

  v7 = [v4 subjectMask];
  subjectMask = self->_subjectMask;
  self->_subjectMask = v7;

  v9 = [v4 subjectMaskDigest];
  subjectMaskDigest = self->_subjectMaskDigest;
  self->_subjectMaskDigest = v9;

  v11 = [v4 detectedFaces];
  detectedFaces = self->_detectedFaces;
  self->_detectedFaces = v11;

  if (v4)
  {
    [v4 fullImageExtent];
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  self->_fullImageExtent.origin = v17;
  self->_fullImageExtent.size = v19;
  v13 = [v4 assetIdentifier];
  assetIdentifier = self->_assetIdentifier;
  self->_assetIdentifier = v13;

  if (v4)
  {
    [v4 livePhotoKeyFrameTime];
  }

  else
  {
    v18 = 0uLL;
    v20 = 0;
  }

  *&self->_livePhotoKeyFrameTime.value = v18;
  self->_livePhotoKeyFrameTime.epoch = v20;
  v15 = [v4 ciContext];
  ciContext = self->_ciContext;
  self->_ciContext = v15;
}

- (void)_resetForComposition:(id)a3 requestID:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v8 = a6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PIInpaintMaskContext__resetForComposition_requestID_completionQueue_completion___block_invoke;
  v10[3] = &unk_1E82AAF68;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [PIObjectRemoval createMaskContextForComposition:a3 requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v10];
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

- (void)updateSubjectMaskBufferIfNeededForComposition:(id)a3 digest:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PIInpaintMaskContext *)self subjectMaskDigest];
  v15 = [v14 stringValue];
  v16 = [v11 stringValue];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    if (v13)
    {
      (*(v13 + 2))(v13, self, 0, 0);
    }
  }

  else
  {
    [(PIInpaintMaskContext *)self setSubjectMaskDigest:v11];
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
    v19 = [objc_alloc(MEMORY[0x1E69B3D50]) initWithComposition:v10];
    [v19 setPipelineFilters:v18];
    [v19 setResponseQueue:v12];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104__PIInpaintMaskContext_updateSubjectMaskBufferIfNeededForComposition_digest_completionQueue_completion___block_invoke;
    v40[3] = &unk_1E82AAF18;
    v40[4] = v43;
    v40[5] = v41;
    [v19 submit:v40];
    v26 = v10;
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
    [v20 setResponseQueue:v12];
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
    v29 = self;
    v30 = v13;
    v33 = v38;
    v34 = v36;
    [v24 commitAndNotifyOnQueue:v12 withBlock:v27];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);

    v10 = v26;
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
  v3 = [(PIInpaintMaskContext *)self segmentationResult];
  v4 = [v3 instances];
  v5 = [v2 stringWithFormat:@"PIInpaintMaskContext with instance segments: %@", v4];

  return v5;
}

- (PIInpaintMaskContext)initWithSegmentationResult:(id)a3 composition:(id)a4 subjectMaskBuffer:(id)a5 detectedFaces:(id)a6 fullImageExtent:(id *)a7 assetIdentifier:(id)a8 requestID:(id)a9 initialSensitivityScore:(double)a10 livePhotoKeyFrameTime:(id *)a11
{
  v45[2] = *MEMORY[0x1E69E9840];
  v42 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v43.receiver = self;
  v43.super_class = PIInpaintMaskContext;
  v23 = a4;
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

  objc_storeStrong(v24 + 1, a3);
  v30 = [v24 subjectMaskDigestForComposition:v23 subjectMaskBuffer:v19];

  v31 = *(v24 + 7);
  *(v24 + 7) = v30;

  if (v19)
  {
    v32 = [PIInpaintMaskContext _createSubjectMaskFromBuffer:v19 digest:*(v24 + 7) ciContext:*(v24 + 8) fullImageSize:a7->var1.var0, a7->var1.var1];
    v33 = *(v24 + 6);
    *(v24 + 6) = v32;
  }

  v34 = *(v24 + 2);
  *(v24 + 2) = v20;
  v35 = v20;

  var1 = a7->var1;
  *(v24 + 6) = a7->var0;
  *(v24 + 7) = var1;
  v37 = *(v24 + 3);
  *(v24 + 3) = v21;
  v38 = v21;

  v39 = *(v24 + 4);
  *(v24 + 4) = v22;

  *(v24 + 5) = a10;
  v40 = *&a11->var0;
  *(v24 + 11) = a11->var3;
  *(v24 + 72) = v40;

  return v24;
}

- (id)subjectMaskDigestForComposition:(id)a3 subjectMaskBuffer:(id)a4
{
  v6 = MEMORY[0x1E69B3A38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(PIInpaintMaskContext *)self _foregroundOperationsFromComposition:v8 subjectMaskBuffer:v7];

  if ([v10 count])
  {
    [v10 nu_updateDigest:v9];
  }

  return v9;
}

- (id)_foregroundOperationsFromComposition:(id)a3 subjectMaskBuffer:(id)a4
{
  if (a4)
  {
    v4 = [a3 objectForKeyedSubscript:@"inpaint"];
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

+ (id)_createSubjectMaskFromBuffer:(id)a3 digest:(id)a4 ciContext:(id)a5 fullImageSize:(id)a6
{
  v8 = a3;
  if (v8)
  {
    v9 = MEMORY[0x1E69B3B68];
    v10 = a4;
    v11 = [v9 propertiesForMask:v8 context:a5];
    [v8 size];
    v12 = NUScaleMake();
    v14 = v13;
    v15 = [v10 stringValue];

    v16 = [@"subject-" stringByAppendingString:v15];

    v17 = [PIInpaintMask alloc];
    if (v11)
    {
      [v11 bounds];
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v18 = [(PIInpaintMask *)v17 initWithBuffer:v8 identifier:v16 extent:v20 scale:v12, v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end