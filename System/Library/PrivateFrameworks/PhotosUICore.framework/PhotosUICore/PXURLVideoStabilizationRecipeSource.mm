@interface PXURLVideoStabilizationRecipeSource
- (PXURLVideoStabilizationRecipeSource)initWithVideoURL:(id)l;
- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type;
@end

@implementation PXURLVideoStabilizationRecipeSource

- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type
{
  v73 = *MEMORY[0x1E69E9840];
  v52 = self->_inputVideoURL;
  v5 = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:v52];
  PIPhotoEditHelperClass = getPIPhotoEditHelperClass();
  newComposition = [getPIPhotoEditHelperClass() newComposition];
  v8 = [PIPhotoEditHelperClass newCompositionControllerWithComposition:newComposition];

  v48 = v5;
  source = [v5 source];
  [v8 setSource:source mediaType:2];

  v10 = [v8 copy];
  v11 = getPIPhotoEditHelperClass();
  v49 = v10;
  composition = [v10 composition];
  v13 = [v11 imagePropertiesRequestWithComposition:composition];

  [v13 setName:@"PXStabilizedPlayerItemWithVideoURL-imageProperties"];
  v63 = 0;
  v14 = [v13 submitSynchronous:&v63];
  v15 = v63;
  v47 = v15;
  if (v14)
  {
    properties = [v14 properties];
    orientation = [properties orientation];

    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v18 = getNUOrientationIsValidSymbolLoc_ptr;
    v60 = getNUOrientationIsValidSymbolLoc_ptr;
    if (!getNUOrientationIsValidSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v69 = __getNUOrientationIsValidSymbolLoc_block_invoke;
      v70 = &unk_1E774BD00;
      v71 = &v57;
      __getNUOrientationIsValidSymbolLoc_block_invoke(&buf);
      v18 = v58[3];
    }

    _Block_object_dispose(&v57, 8);
    if (!v18)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NUOrientation SOFT_LINKED_NUOrientationIsValid(NUOrientation)"];
      [currentHandler handleFailureInFunction:v46 file:@"PXVideoStabilizationRecipeSource.m" lineNumber:40 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if (v18(orientation))
    {
      [MEMORY[0x1E69BE360] compositionController:v8 setInputOrientation:orientation];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = orientation;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "image orientation from the image properties is invalid: %d", &buf, 8u);
    }

    v20 = 0;
  }

  else
  {
    v19 = v15;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered determining image properties for stabilized video composition: %@", &buf, 0xCu);
    }

    v20 = v19;
  }

  PIVideoStabilizeRequestClass = getPIVideoStabilizeRequestClass();
  v22 = [MEMORY[0x1E6987E28] assetWithURL:v52];
  v23 = [PIVideoStabilizeRequestClass canPerformGyroBasedStabilizationForAsset:v22];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__168811;
  v71 = __Block_byref_object_dispose__168812;
  v72 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__168811;
  v61 = __Block_byref_object_dispose__168812;
  v62 = 0;
  v24 = dispatch_group_create();
  if (([(PXVideoStabilizationRecipeSource *)self allowedAnalysisTypes]& 1) != 0)
  {
    allowsOnDemandPixelAnalysis = [(PXVideoStabilizationRecipeSource *)self allowsOnDemandPixelAnalysis];
  }

  else
  {
    allowsOnDemandPixelAnalysis = 0;
  }

  allowedAnalysisTypes = [(PXVideoStabilizationRecipeSource *)self allowedAnalysisTypes];
  v27 = allowsOnDemandPixelAnalysis | 2;
  if (!v23)
  {
    v27 = allowsOnDemandPixelAnalysis;
  }

  if ((allowedAnalysisTypes & 2) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = allowsOnDemandPixelAnalysis;
  }

  v29 = objc_alloc(getPIVideoStabilizeRequestClass());
  composition2 = [v8 composition];
  v31 = [v29 initWithComposition:composition2];
  stabilizeRequest = self->_stabilizeRequest;
  self->_stabilizeRequest = v31;

  v33 = +[PXInlineVideoStabilizationSettings sharedInstance];
  [v33 allowedCropFraction];
  [(PIVideoStabilizeRequest *)self->_stabilizeRequest setAllowedCropFraction:?];

  [(PIVideoStabilizeRequest *)self->_stabilizeRequest setAllowedAnalysisTypes:v28];
  [(PIVideoStabilizeRequest *)self->_stabilizeRequest setName:@"PXStabilizedPlayerItemWithVideoURL-stabilize"];
  dispatch_group_enter(v24);
  v34 = self->_stabilizeRequest;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __77__PXURLVideoStabilizationRecipeSource__loadStabilizationRecipe_analysisType___block_invoke;
  v53[3] = &unk_1E773F528;
  p_buf = &buf;
  v56 = &v57;
  v35 = v24;
  v54 = v35;
  [(PIVideoStabilizeRequest *)v34 submit:v53];
  dispatch_group_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
  v36 = *(*(&buf + 1) + 40);
  if (v36)
  {
    rawHomographies = [v36 rawHomographies];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = v58[5];
      *v66 = 138412290;
      v67 = v44;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered generating stabilization data: %@", v66, 0xCu);
    }

    v38 = v58[5];

    rawHomographies = 0;
    v20 = v38;
  }

  if (recipe)
  {
    v39 = v20;
    *recipe = v20;
  }

  if (type)
  {
    analysisType = [*(*(&buf + 1) + 40) analysisType];
    if (analysisType <= 2)
    {
      *type = analysisType;
    }
  }

  v64 = @"InputVideoHasGyro";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  v65 = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [(PXVideoStabilizationRecipeSource *)self setDebugInfo:v42];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&buf, 8);

  return rawHomographies;
}

void __77__PXURLVideoStabilizationRecipeSource__loadStabilizationRecipe_analysisType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 32));
}

- (PXURLVideoStabilizationRecipeSource)initWithVideoURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PXURLVideoStabilizationRecipeSource;
  v5 = [(PXVideoStabilizationRecipeSource *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    inputVideoURL = v5->_inputVideoURL;
    v5->_inputVideoURL = v6;
  }

  return v5;
}

@end