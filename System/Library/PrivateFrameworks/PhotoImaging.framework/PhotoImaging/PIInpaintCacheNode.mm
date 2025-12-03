@interface PIInpaintCacheNode
+ (NSCache)intermediateCache;
+ (id)inpaintNodeWithInput:(id)input operations:(id)operations masks:(id)masks error:(id *)error;
+ (void)purge;
- ($721907E0E1CDE8B6CD3FA271A8B25860)_exclusionMaskExtentForOperation:(SEL)operation error:(id)error;
- ($721907E0E1CDE8B6CD3FA271A8B25860)_extentForInputIdentifiers:(SEL)identifiers error:(id)error;
- ($721907E0E1CDE8B6CD3FA271A8B25860)_maskExtentForOperation:(SEL)operation error:(id)error;
- (BOOL)_applyInpaintOperation:(id)operation toImage:(id)image operationIndex:(unint64_t)index renderer:(id)renderer error:(id *)error;
- (BOOL)_renderBackgroundImage:(id)image intoMutableBuffer:(id)buffer renderer:(id)renderer error:(id *)error;
- (BOOL)_renderWithBackgroundImage:(id)image error:(id *)error;
- (BOOL)_tryLoad:(id *)load;
- (BOOL)_updateInputRegion:(id)region outputRegion:(id)outputRegion forOperation:(id)operation geometry:(id)geometry error:(id *)error;
- (BOOL)applyInpaintOperations:(id)operations toImage:(id)image renderer:(id)renderer error:(id *)error;
- (BOOL)shouldDumpSourceMasks;
- (BOOL)tryLoad:(id *)load;
- (PIInpaintCacheNode)initWithInputs:(id)inputs settings:(id)settings subsampleFactor:(int64_t)factor;
- (id)_computeBaseIdentifier;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_modifyEvaluatedGeometry:(id)geometry;
- (id)_newMaskImageFromIdentifiers:(id)identifiers useSourceImage:(BOOL)image error:(id *)error;
- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error;
- (id)inputGeometryForPipelineState:(id)state error:(id *)error;
- (id)newExclusionMaskImageForOperation:(id)operation inputImage:(id)image error:(id *)error;
- (id)newImageOfSize:(id)size colorSpace:(id)space;
- (id)newMaskImageForOperation:(id)operation useSourceImage:(BOOL)image error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)outputRegion;
- (void)_debugDumpMaskImage:(id)image name:(id)name;
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation PIInpaintCacheNode

- (BOOL)applyInpaintOperations:(id)operations toImage:(id)image renderer:(id)renderer error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  imageCopy = image;
  rendererCopy = renderer;
  if ([operationsCopy count])
  {
    v12 = 0;
    while (1)
    {
      kdebug_trace();
      v13 = objc_autoreleasePoolPush();
      v14 = [operationsCopy objectAtIndexedSubscript:v12];
      v24 = 0;
      v15 = [(PIInpaintCacheNode *)self _applyInpaintOperation:v14 toImage:imageCopy operationIndex:v12 renderer:rendererCopy error:&v24];
      v16 = v24;

      objc_autoreleasePoolPop(v13);
      kdebug_trace();
      if (!v15)
      {
        break;
      }

      if (++v12 >= [operationsCopy count])
      {
        goto LABEL_5;
      }
    }

    v21 = v16;
    *error = v16;

    v20 = 0;
  }

  else
  {
LABEL_5:
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
    }

    v17 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [operationsCopy count];
      *buf = 134217984;
      v26 = v19;
      _os_log_impl(&dword_1C7694000, v18, OS_LOG_TYPE_DEFAULT, "Recomputed inpaint for %ld operations", buf, 0xCu);
    }

    v20 = 1;
  }

  return v20;
}

- (BOOL)_applyInpaintOperation:(id)operation toImage:(id)image operationIndex:(unint64_t)index renderer:(id)renderer error:(id *)error
{
  v120[4] = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  imageCopy = image;
  rendererCopy = renderer;
  mode = [operationCopy mode];
  options = [operationCopy options];
  if (mode == 1)
  {
    brushStroke = [operationCopy brushStroke];
    [operationCopy sourceOffset];
    +[PIRepairUtilities applyRepairStrokeToMutableBuffer:brushStroke:sourceOffset:repairEdges:](PIRepairUtilities, "applyRepairStrokeToMutableBuffer:brushStroke:sourceOffset:repairEdges:", imageCopy, brushStroke, [operationCopy repairEdges], v17, v18);

    v19 = 1;
LABEL_56:

    return v19;
  }

  v20 = options;
  if (OperationUsesLegacyFilter(operationCopy))
  {
    brushStroke2 = [operationCopy brushStroke];
    v22 = brushStroke2;
    if ((v20 & 0x100) != 0)
    {
      memset(buf, 0, sizeof(buf));
      if (brushStroke2)
      {
        [brushStroke2 extent];
        v32 = *buf;
      }

      else
      {
        v32 = 0;
      }

      v119[0] = @"x";
      v75 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
      v120[0] = v75;
      v119[1] = @"y";
      v76 = [MEMORY[0x1E696AD98] numberWithInteger:*&buf[8]];
      v120[1] = v76;
      v119[2] = @"w";
      v77 = [MEMORY[0x1E696AD98] numberWithInteger:*&buf[16]];
      v120[2] = v77;
      v119[3] = @"h";
      v78 = [MEMORY[0x1E696AD98] numberWithInteger:*&buf[24]];
      v120[3] = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:4];

      v118 = v79;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    context = [rendererCopy context];
    v19 = [PIRepairUtilities applyRepairMLStrokeToMutableBuffer:imageCopy brushStroke:v22 detectedFaces:v23 context:context error:error];

    goto LABEL_56;
  }

  v24 = [MEMORY[0x1E69B3B10] newCIImageFromBufferImage:imageCopy];
  v108 = imageCopy;
  if (mode == 2)
  {
    indexCopy2 = index;
    v25 = ([operationCopy options] >> 4) & 1;
    brushStroke3 = [operationCopy brushStroke];
    v27 = [brushStroke3 ciImageTiled:0 closed:1 pressureMode:1 filled:v25];
    if ([(PIInpaintCacheNode *)self shouldDumpSourceMasks])
    {
      indexCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld_brushStroke", indexCopy2];
      blackImage = [MEMORY[0x1E695F658] blackImage];
      [v24 extent];
      [blackImage imageByCroppingToRect:?];
      v30 = v29 = error;

      v31 = [PIInpaintRendering imageByOverlayingMaskImage:v27 onImage:v30 withOpacity:1.0];

      error = v29;
      [(PIInpaintCacheNode *)self _debugDumpMaskImage:v31 name:indexCopy2];
    }

    goto LABEL_20;
  }

  if ((mode - 3) <= 1)
  {
    if ([(PIInpaintCacheNode *)self shouldDumpSourceMasks])
    {
      v115 = 0;
      errorCopy = error;
      v34 = [(PIInpaintCacheNode *)self newMaskImageForOperation:operationCopy useSourceImage:1 error:&v115];
      index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld_inpaintMask", index];
      [(PIInpaintCacheNode *)self _debugDumpMaskImage:v34 name:index];

      error = errorCopy;
    }

    v36 = [(PIInpaintCacheNode *)self newMaskImageForOperation:operationCopy useSourceImage:0 error:error];
    if (!v36)
    {
      v19 = 0;
LABEL_55:

      goto LABEL_56;
    }

    indexCopy2 = index;
    v27 = v36;
    if ([PIInpaintRendering shouldDilateMaskForOperation:operationCopy])
    {
      errorCopy2 = error;
      v37 = +[PIGlobalSettings globalSettings];
      inpaintFillsMaskHoles = [v37 inpaintFillsMaskHoles];

      v103 = v27;
      if (inpaintFillsMaskHoles)
      {
        v27 = [PIInpaintRendering maskByFillingHolesInMask:v27];
      }

      [v24 extent];
      v39 = [PIInpaintRendering maskByDilatingMask:v27 fullExtent:?];

      error = errorCopy2;
      v27 = v103;
LABEL_21:
      v113 = 0u;
      v114 = 0u;
      [v39 extent];
      NUPixelRectFromCGRect();
      if (v20)
      {
        v48 = [PIInpaintRendering redactedImageWithInputImage:v24 maskImage:v39];
        if (!v48)
        {
LABEL_53:
          [MEMORY[0x1E69B3A48] invalidError:@"couldn't get inpainted image" object:0];
          *error = v19 = 0;
LABEL_54:

          goto LABEL_55;
        }

LABEL_27:
        *buf = v113;
        *&buf[16] = v114;
        if ([PIInpaintRendering renderImage:v48 intoMutableBuffer:imageCopy destinationBounds:buf renderer:rendererCopy error:error])
        {
          v19 = 1;
        }

        else
        {
          v49 = v27;
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
          }

          v50 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            v86 = *error;
            *buf = 138412546;
            *&buf[4] = operationCopy;
            *&buf[12] = 2112;
            *&buf[14] = v86;
            _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Unable to apply object removal operation for operation: %@ error: %@", buf, 0x16u);
          }

          v19 = 0;
          v27 = v49;
          imageCopy = v108;
        }

        goto LABEL_54;
      }

      v40 = v27;
      errorCopy3 = error;
      v104 = [(PIInpaintCacheNode *)self newExclusionMaskImageForOperation:operationCopy inputImage:v24 error:error];
      sourceOrientation = self->_sourceOrientation;
      v42 = +[PIGlobalSettings globalSettings];
      if ([v42 inpaintOrientInputImages])
      {
        IsValid = NUOrientationIsValid();

        v44 = 0;
        if (IsValid)
        {
          v27 = v40;
          if (sourceOrientation != 1)
          {
            v117 = 0u;
            memset(buf, 0, sizeof(buf));
            [v24 extent];
            NUPixelSizeFromCGSize();
            NUOrientationMakeTransformWithSize();
            v110 = *buf;
            v111 = *&buf[16];
            v112 = v117;
            v101 = [v24 imageByApplyingTransform:&v110];

            v110 = *buf;
            v111 = *&buf[16];
            v112 = v117;
            v45 = [v39 imageByApplyingTransform:&v110];

            v110 = *buf;
            v111 = *&buf[16];
            v112 = v117;
            v46 = [v40 imageByApplyingTransform:&v110];

            v110 = *buf;
            v111 = *&buf[16];
            v112 = v117;
            v47 = [v104 imageByApplyingTransform:&v110];

            v44 = 1;
            v104 = v47;
            v27 = v46;
            v39 = v45;
            v24 = v101;
          }

LABEL_36:
          imageCopy = v108;
          v51 = +[PIGlobalSettings globalSettings];
          inpaintDumpsProcessedMasks = [v51 inpaintDumpsProcessedMasks];

          if (inpaintDumpsProcessedMasks)
          {
            blackImage2 = [MEMORY[0x1E695F658] blackImage];
            v54 = [v39 imageByCompositingOverImage:blackImage2];
            [v24 extent];
            [v54 imageByCroppingToRect:?];
            v56 = v55 = v27;

            indexCopy22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld_processedInputMask", indexCopy2];
            [(PIInpaintCacheNode *)self _debugDumpMaskImage:v56 name:indexCopy22];

            v27 = v55;
            imageCopy = v108;
          }

          v58 = +[PIGlobalSettings globalSettings];
          inpaintOverlaysMasks = [v58 inpaintOverlaysMasks];

          if (inpaintOverlaysMasks)
          {
            v61 = [PIInpaintRendering imageByOverlayingMaskImage:v39 onImage:v24 withOpacity:0.25];
            v48 = [PIInpaintRendering imageByOverlayingMaskImage:v27 onImage:v61 withOpacity:0.8];
          }

          else
          {
            if (self->_sourceIsHDR)
            {
              [v39 extent];
              v63 = v62;
              v65 = v64;
              v67 = v66;
              v69 = v68;
              context2 = [rendererCopy context];
              [PIInpaintRendering computeLocalHeadroomForHDRImage:v24 inRect:context2 context:v63, v65, v67, v69];
              LODWORD(v63) = v71;

              v72 = v24;
              v73 = v39;
              v74 = v104;
              LODWORD(v60) = LODWORD(v63);
            }

            else
            {
              LODWORD(v60) = 1.0;
              v72 = v24;
              v73 = v39;
              v74 = v104;
            }

            v48 = [PIInpaintRendering inpaintedImageWithInputImage:v72 maskImage:v73 exclusionMaskImage:v74 headroom:operationCopy operation:v60];
            imageCopy = v108;
          }

          v81 = +[PIGlobalSettings globalSettings];
          inpaintOverlaysMaskBounds = [v81 inpaintOverlaysMaskBounds];

          if (inpaintOverlaysMaskBounds)
          {
            [v39 extent];
            v83 = [PIInpaintRendering imageByOverlayingBoundsRect:v48 onImage:?];

            v48 = v83;
          }

          if (v44)
          {
            v117 = 0u;
            memset(buf, 0, sizeof(buf));
            NUOrientationInverse();
            [v24 extent];
            NUPixelSizeFromCGSize();
            NUOrientationMakeTransformWithSize();
            v110 = *buf;
            v111 = *&buf[16];
            v112 = v117;
            v84 = [v48 imageByApplyingTransform:&v110];

            v48 = v84;
          }

          error = errorCopy3;

          if (!v48)
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }
      }

      else
      {

        v44 = 0;
      }

      v27 = v40;
      goto LABEL_36;
    }

LABEL_20:
    v39 = v27;
    goto LABEL_21;
  }

  v87 = NUAssertLogger_16994();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    operationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid inpaint operation: %@", operationCopy];
    *buf = 138543362;
    *&buf[4] = operationCopy;
    _os_log_error_impl(&dword_1C7694000, v87, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v89 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v91 = NUAssertLogger_16994();
  v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v92)
    {
      v95 = dispatch_get_specific(*v89);
      v96 = MEMORY[0x1E696AF00];
      v97 = v95;
      callStackSymbols = [v96 callStackSymbols];
      v99 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v95;
      *&buf[12] = 2114;
      *&buf[14] = v99;
      _os_log_error_impl(&dword_1C7694000, v91, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v92)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v94 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    *&buf[4] = v94;
    _os_log_error_impl(&dword_1C7694000, v91, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v100 = _NUAssertFailHandler();
  return OperationUsesLegacyFilter(v100);
}

- (BOOL)shouldDumpSourceMasks
{
  v2 = +[PIGlobalSettings globalSettings];
  if ([v2 inpaintDumpsOriginalMasks])
  {
    inpaintDumpsInputImages = 1;
  }

  else
  {
    inpaintDumpsInputImages = [MEMORY[0x1E69B3AB0] inpaintDumpsInputImages];
  }

  return inpaintDumpsInputImages;
}

- (id)newExclusionMaskImageForOperation:(id)operation inputImage:(id)image error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  imageCopy = image;
  exclusionMaskIdentifiers = [operationCopy exclusionMaskIdentifiers];
  if (![exclusionMaskIdentifiers count])
  {
    v40 = 0;
    goto LABEL_20;
  }

  if ([(PIInpaintCacheNode *)self shouldDumpSourceMasks])
  {
    v74 = 0;
    v10 = [(PIInpaintCacheNode *)self _newMaskImageFromIdentifiers:exclusionMaskIdentifiers useSourceImage:1 error:&v74];
    [(PIInpaintCacheNode *)self _debugDumpMaskImage:v10 name:@"exclusionMask"];
  }

  v65 = exclusionMaskIdentifiers;
  v66 = operationCopy;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = exclusionMaskIdentifiers;
  v11 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v71;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      if (*v71 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v70 + 1) + 8 * v15);
      v18 = [(NURenderNode *)self inputForKey:v17];
      if (!v18)
      {
        v42 = NUAssertLogger_16994();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing mask for identifier %@", v17];
          *buf = 138543362;
          v76 = v43;
          _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v44 = MEMORY[0x1E69B38E8];
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v46 = NUAssertLogger_16994();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v47)
          {
            v56 = dispatch_get_specific(*v44);
            v57 = MEMORY[0x1E696AF00];
            v5 = v56;
            callStackSymbols = [v57 callStackSymbols];
            v59 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v76 = v56;
            v77 = 2114;
            v78 = v59;
            _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v47)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v49 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v76 = v49;
          _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        v53 = _NUAssertFailHandler();
LABEL_34:
        if (v53)
        {
          v60 = dispatch_get_specific(*v5);
          v61 = MEMORY[0x1E696AF00];
          v62 = v60;
          callStackSymbols3 = [v61 callStackSymbols];
          v64 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v76 = v60;
          v77 = 2114;
          v78 = v64;
          _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

LABEL_36:

        _NUAssertFailHandler();
      }

      v19 = v18;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = NUAssertLogger_16994();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maskNode is not of expected class: %@", v19];
          *buf = 138543362;
          v76 = v51;
          _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v5 = MEMORY[0x1E69B38E8];
        v52 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v46 = NUAssertLogger_16994();
        v53 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v52)
        {
          goto LABEL_34;
        }

        if (v53)
        {
          callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v55 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v76 = v55;
          _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_36;
      }

      v20 = [v19 sourceImage:error];
      if (!v20)
      {

        v40 = 0;
        goto LABEL_19;
      }

      v21 = v20;
      [v19 croppedExtent];
      NUPixelRectToCGRect();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [v19 croppedExtent];
      [v19 scale];
      NUPixelRectScaleRational();
      NUPixelRectToCGRect();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [v21 imageByCroppingToRect:{v23, v25, v27, v29}];

      v5 = [imageCopy imageByCroppingToRect:{v31, v33, v35, v37}];
      v39 = [PIInpaintRendering maskByUpscalingMask:v38 withGuideImage:v5];

      v13 = [PIInpaintRendering maskByAddingMask:v39 toMask:v16];

      ++v15;
      v16 = v13;
    }

    while (v12 != v15);
    v12 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
  }

  while (v12);
LABEL_18:

  v16 = v13;
  v40 = v16;
LABEL_19:

  exclusionMaskIdentifiers = v65;
  operationCopy = v66;
LABEL_20:

  return v40;
}

- (id)newMaskImageForOperation:(id)operation useSourceImage:(BOOL)image error:(id *)error
{
  imageCopy = image;
  maskIdentifiers = [operation maskIdentifiers];
  v9 = [(PIInpaintCacheNode *)self _newMaskImageFromIdentifiers:maskIdentifiers useSourceImage:imageCopy error:error];

  return v9;
}

- (id)_newMaskImageFromIdentifiers:(id)identifiers useSourceImage:(BOOL)image error:(id *)error
{
  imageCopy = image;
  v59 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (!error)
  {
    goto LABEL_28;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v10)
  {
    v12 = 0;
LABEL_18:

    v15 = v12;
    v21 = v15;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v51;
  obj = v9;
LABEL_4:
  v14 = 0;
  v15 = v12;
  while (1)
  {
    if (*v51 != v13)
    {
      objc_enumerationMutation(obj);
    }

    v16 = *(*(&v50 + 1) + 8 * v14);
    v17 = [(NURenderNode *)self inputForKey:v16];
    if (!v17)
    {
      v23 = NUAssertLogger_16994();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing mask for identifier %@", v16];
        *buf = 138543362;
        v56 = v24;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v25 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v27 = NUAssertLogger_16994();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v28)
        {
          v31 = dispatch_get_specific(*v25);
          v32 = MEMORY[0x1E696AF00];
          v33 = v31;
          callStackSymbols = [v32 callStackSymbols];
          v35 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v56 = v31;
          v57 = 2114;
          v58 = v35;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v28)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v56 = v30;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
LABEL_28:
      v36 = NUAssertLogger_16994();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
        *buf = 138543362;
        v56 = v37;
        _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v38 = MEMORY[0x1E69B38E8];
      v39 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v40 = NUAssertLogger_16994();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
      if (v39)
      {
        if (v41)
        {
          v44 = dispatch_get_specific(*v38);
          v45 = MEMORY[0x1E696AF00];
          v46 = v44;
          callStackSymbols3 = [v45 callStackSymbols];
          v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v56 = v44;
          v57 = 2114;
          v58 = v48;
          _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v41)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v56 = v43;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v18 = v17;
    if (imageCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 sourceImage:error];
    }

    else
    {
      v19 = [v18 outputImage:error];
    }

    v20 = v19;
    if (!v19)
    {
      break;
    }

    v12 = [PIInpaintRendering maskByAddingMask:v19 toMask:v15];

    ++v14;
    v15 = v12;
    if (v11 == v14)
    {
      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (!v11)
      {
        goto LABEL_18;
      }

      goto LABEL_4;
    }
  }

  v9 = obj;
  v21 = 0;
LABEL_19:

  return v21;
}

- (void)_debugDumpMaskImage:(id)image name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  imageCopy = image;
  v7 = +[PIGlobalSettings globalSettings];
  inpaintDumpPath = [v7 inpaintDumpPath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0;
  v10 = [defaultManager createDirectoryAtPath:inpaintDumpPath withIntermediateDirectories:1 attributes:0 error:&v29];
  v11 = v29;

  v12 = MEMORY[0x1E69B3D78];
  v13 = MEMORY[0x1E69B3D80];
  if ((v10 & 1) == 0)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
    }

    v14 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_DEFAULT, "Error creating mask directory: %@", buf, 0xCu);
    }

    tempDir = [MEMORY[0x1E69B3AB0] tempDir];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 createDirectoryAtPath:tempDir withIntermediateDirectories:1 attributes:0 error:0];

    inpaintDumpPath = tempDir;
  }

  v17 = [nameCopy stringByAppendingPathExtension:@"png"];
  v18 = [inpaintDumpPath stringByAppendingPathComponent:v17];

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager3 removeItemAtPath:v18 error:0];

  context = [MEMORY[0x1E695F620] context];
  if (*v12 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
  }

  v21 = *v13;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v18;
    v23 = v21;
    uTF8String = [v18 UTF8String];
    *buf = 136315138;
    v31 = uTF8String;
    _os_log_impl(&dword_1C7694000, v23, OS_LOG_TYPE_DEFAULT, "saving: %s\n", buf, 0xCu);
  }

  v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
  v26 = *MEMORY[0x1E695F8B8];
  linearGrayColorSpace = [MEMORY[0x1E69B3A10] linearGrayColorSpace];
  cGColorSpace = [linearGrayColorSpace CGColorSpace];
  [context writePNGRepresentationOfImage:imageCopy toURL:v25 format:v26 colorSpace:cGColorSpace options:MEMORY[0x1E695E0F8] error:0];
}

- (BOOL)_renderBackgroundImage:(id)image intoMutableBuffer:(id)buffer renderer:(id)renderer error:(id *)error
{
  imageCopy = image;
  bufferCopy = buffer;
  rendererCopy = renderer;
  inputRegion = self->_inputRegion;
  validRegion = [(NUMutableBufferImage *)self->_inputImage validRegion];
  v15 = [(NURegion *)inputRegion regionByRemovingRegion:validRegion];

  if ([v15 isEmpty])
  {
    v16 = 1;
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__17069;
    v28 = __Block_byref_object_dispose__17070;
    v29 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PIInpaintCacheNode__renderBackgroundImage_intoMutableBuffer_renderer_error___block_invoke;
    v18[3] = &unk_1E82AB5F8;
    v19 = bufferCopy;
    v22 = &v30;
    v20 = imageCopy;
    v21 = rendererCopy;
    v23 = &v24;
    [v15 enumerateRects:v18];
    *error = v25[5];
    v16 = *(v31 + 24);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  return v16 & 1;
}

void __78__PIInpaintCacheNode__renderBackgroundImage_intoMutableBuffer_renderer_error___block_invoke(uint64_t a1, __int128 *a2)
{
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 32) size];
  v16 = 0uLL;
  *&v17 = v4;
  *(&v17 + 1) = v5;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  NUPixelRectFlipYOrigin();
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = 0;
  v16 = 0u;
  v17 = 0u;
  v10 = [PIInpaintRendering renderImage:v7 intoMutableBuffer:v8 destinationBounds:&v16 renderer:v9 error:&v13];
  v11 = v13;
  v12 = v13;
  *(*(*(a1 + 56) + 8) + 24) = v10;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
  }
}

- (BOOL)_renderWithBackgroundImage:(id)image error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!self->_inputImage)
  {
    v25 = NUAssertLogger_16994();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No input image!"];
      *buf = 138543362;
      v43 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_16994();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(*v27);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v32;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = imageCopy;
  rendererContextDefaultMemoryTarget = [MEMORY[0x1E69B3AB0] rendererContextDefaultMemoryTarget];
  v9 = MEMORY[0x1E695F620];
  v10 = *MEMORY[0x1E695F818];
  v40[0] = *MEMORY[0x1E695F7F0];
  v40[1] = v10;
  v41[0] = MEMORY[0x1E695E110];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:rendererContextDefaultMemoryTarget];
  v41[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v13 = [v9 contextWithOptions:v12];

  v14 = [objc_alloc(MEMORY[0x1E69B3C68]) initWithCIContext:v13 priority:1];
  inputImage = self->_inputImage;
  v39 = 0;
  LOBYTE(v12) = [(PIInpaintCacheNode *)self _renderBackgroundImage:v7 intoMutableBuffer:inputImage renderer:v14 error:&v39];
  v16 = v39;
  if (v12)
  {
    operations = self->_operations;
    v18 = self->_inputImage;
    v38 = 0;
    v19 = [(PIInpaintCacheNode *)self applyInpaintOperations:operations toImage:v18 renderer:v14 error:&v38];
    v20 = v38;

    if (v19)
    {
      if ([(PIInpaintCacheNode *)self shouldCacheIntermediates])
      {
        intermediateCache = [objc_opt_class() intermediateCache];
        purgeableImageCopy = [(NUMutableBufferImage *)self->_inputImage purgeableImageCopy];
        [intermediateCache setObject:purgeableImageCopy forKey:self->_cacheKey];
      }

      v23 = 1;
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to render inpaint operations:@" object:self->_operations underlyingError:v20];
      *error = v23 = 0;
    }

    v16 = v20;
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to render inpaint background" object:v7 underlyingError:v16];
    *error = v23 = 0;
  }

  return v23;
}

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  v51 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
  }

  v16 = MEMORY[0x1E69B3D80];
  v17 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    dataCopy = data;
    v36 = MEMORY[0x1E696AF00];
    v37 = v17;
    currentThread = [v36 currentThread];
    LODWORD(buf) = 67110144;
    DWORD1(buf) = origin;
    WORD4(buf) = 1024;
    *(&buf + 10) = a6;
    HIWORD(buf) = 1024;
    *v50 = size;
    *&v50[4] = 1024;
    *&v50[6] = a8;
    *&v50[10] = 2048;
    *&v50[12] = currentThread;
    _os_log_debug_impl(&dword_1C7694000, v37, OS_LOG_TYPE_DEBUG, "provideImageData (%d,%d,%d,%d) tid=%p", &buf, 0x24u);

    data = dataCopy;
  }

  outputImage = self->_outputImage;
  originCopy = origin;
  if (!outputImage)
  {
    rowCopy = row;
    dataCopy2 = data;
    v48 = 0;
    v21 = [(PIInpaintCacheNode *)self _renderWithBackgroundImage:infoCopy error:&v48];
    v22 = v48;
    if (!v21)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
      }

      v23 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v22;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Failed to render: %{public}@", &buf, 0xCu);
      }
    }

    immutableImageCopy = [(NUMutableBufferImage *)self->_inputImage immutableImageCopy];
    v25 = self->_outputImage;
    self->_outputImage = immutableImageCopy;

    inputImage = self->_inputImage;
    self->_inputImage = 0;

    outputImage = self->_outputImage;
    data = dataCopy2;
    row = rowCopy;
    origin = originCopy;
  }

  *&buf = origin;
  *(&buf + 1) = a6;
  *v50 = size;
  *&v50[8] = a8;
  [MEMORY[0x1E69B3B38] copyPixelsFromImage:outputImage rect:&buf destPtr:data destPtrRowBytes:row];
  *&buf = origin;
  *(&buf + 1) = a6;
  *v50 = size;
  *&v50[8] = a8;
  [MEMORY[0x1E69B3C10] regionWithRect:&buf];
  v28 = v27 = data;
  validRegion = [(NUBufferImage *)self->_outputImage validRegion];
  v30 = [v28 regionByRemovingRegion:validRegion];

  v31 = objc_alloc(MEMORY[0x1E69B3B98]);
  format = [(NUBufferImage *)self->_outputImage format];
  v33 = [v31 initWithSize:size format:a8 rowBytes:format mutableBytes:{row, v27}];

  *&buf = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __74__PIInpaintCacheNode_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke;
  v41[3] = &unk_1E82AB5D0;
  v44 = a6;
  sizeCopy = size;
  v42 = v33;
  v43 = originCopy;
  v46 = a8;
  p_buf = &buf;
  v34 = v33;
  [v30 enumerateRects:v41];
}

uint64_t __74__PIInpaintCacheNode_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke(uint64_t a1, __int128 *a2)
{
  v9 = 0u;
  v10 = 0u;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  NUPixelRectOffset();
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = 0u;
  v8 = 0u;
  return [MEMORY[0x1E69B3B38] fillPixelsInBuffer:v4 rect:&v7 srcPixel:v5];
}

- (id)_evaluateImage:(id *)image
{
  v27[1] = *MEMORY[0x1E69E9840];
  inputNode = [(NUCacheNode *)self inputNode];
  v6 = [inputNode outputImage:image];

  if (v6)
  {
    inputNode2 = [(NUCacheNode *)self inputNode];
    v8 = [inputNode2 outputImageGeometry:image];

    if (v8)
    {
      scaledSize = [v8 scaledSize];
      v11 = v10;
      v26 = *MEMORY[0x1E695F9F8];
      null = [MEMORY[0x1E695DFB0] null];
      v27[0] = null;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __37__PIInpaintCacheNode__evaluateImage___block_invoke;
      v22 = &unk_1E82AB5A8;
      objc_copyWeak(&v24, &location);
      v23 = v6;
      v14 = MEMORY[0x1CCA61740](&v19);
      v15 = [(NUMutableBufferImage *)self->_inputImage format:v19];
      colorSpace = [(NUMutableBufferImage *)self->_inputImage colorSpace];
      v17 = [objc_alloc(MEMORY[0x1E695F658]) initWithImageProvider:v14 width:scaledSize height:v11 format:objc_msgSend(v15 colorSpace:"CIFormat") options:{objc_msgSend(colorSpace, "CGColorSpace"), v13}];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __37__PIInpaintCacheNode__evaluateImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained provideImageData:a2 bytesPerRow:a3 origin:a4 :a5 size:a6 :a7 userInfo:*(a1 + 32)];
}

- (id)outputRegion
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17069;
  v22 = __Block_byref_object_dispose__17070;
  v23 = 0;
  inpaintQueue = self->_inpaintQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__PIInpaintCacheNode_outputRegion__block_invoke;
  v17[3] = &unk_1E82AB580;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_sync(inpaintQueue, v17);
  v3 = v19[5];
  if (!v3)
  {
    v6 = NUAssertLogger_16994();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output region"];
      *buf = 138543362;
      v25 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_16994();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);

  return v4;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v13.receiver = self;
  v13.super_class = PIInpaintCacheNode;
  v14 = 0;
  v5 = [(NUCacheNode *)&v13 _evaluateImageGeometry:&v14];
  if (v5)
  {
    v6 = v14;
    v7 = [(PIInpaintCacheNode *)self _modifyEvaluatedGeometry:v5];
  }

  else
  {
    v8 = MEMORY[0x1E69B3A48];
    v9 = v14;
    v10 = [v8 errorWithCode:1 reason:@"Could not get the input geometry" object:self underlyingError:v9];
    v11 = v10;

    v7 = 0;
    *geometry = v10;
  }

  return v7;
}

- (id)_modifyEvaluatedGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = objc_alloc(MEMORY[0x1E69B3B18]);
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  orientation = [geometryCopy orientation];
  v6 = [v4 initWithExtent:&v8 renderScale:*MEMORY[0x1E69B3918] orientation:{*(MEMORY[0x1E69B3918] + 8), orientation}];

  return v6;
}

- (id)inputGeometryForPipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PIInpaintCacheNode;
  v5 = [(NUCacheNode *)&v8 inputGeometryForPipelineState:state error:error];
  if (v5)
  {
    v6 = [(PIInpaintCacheNode *)self _modifyEvaluatedGeometry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_updateInputRegion:(id)region outputRegion:(id)outputRegion forOperation:(id)operation geometry:(id)geometry error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  outputRegionCopy = outputRegion;
  operationCopy = operation;
  geometryCopy = geometry;
  v16 = geometryCopy;
  v73 = 0u;
  v74 = 0u;
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  v17 = *(MEMORY[0x1E69B3900] + 16);
  v71 = *MEMORY[0x1E69B3900];
  v72 = v17;
  v69 = v71;
  v70 = v17;
  v61 = v17;
  v67 = v71;
  v68 = v17;
  if ([operationCopy mode] == 1)
  {
    brushStroke = [operationCopy brushStroke];
    v19 = brushStroke;
    memset(buf, 0, 32);
    if (brushStroke)
    {
      [brushStroke extent];
    }

    else
    {
      memset(v75, 0, sizeof(v75));
    }

    NUPixelRectIntersection();
    [operationCopy sourceOffset];
    [v19 radius];
    v23 = v22;
    v24 = NUPixelPointFromCGPoint();
    *v75 = v73;
    *&v75[16] = v74;
    v65 = *buf;
    v66 = *&buf[16];
    [PIRepairUtilities calcExtentsForStrokeRadius:v24 offset:v25 inputImageExtent:v75 maskExtent:&v65 repairExtent:&v69 textureExtent:&v67 sourceExtent:v23, &v71];

    goto LABEL_13;
  }

  if (OperationUsesLegacyFilter(operationCopy))
  {
    v69 = v73;
    v70 = v74;
    v67 = v73;
    v68 = v74;
    v71 = v73;
    v72 = v74;
LABEL_13:
    *v75 = v69;
    *&v75[16] = v70;
    v65 = v73;
    v66 = v74;
    NUPixelRectFlipYOrigin();
    v69 = *buf;
    v70 = *&buf[16];
    *v75 = v71;
    *&v75[16] = v72;
    v65 = v73;
    v66 = v74;
    NUPixelRectFlipYOrigin();
    v71 = *buf;
    v72 = *&buf[16];
    [(PIInpaintCacheNode *)self padding];
    *v75 = v69;
    *&v75[16] = v70;
    NUPixelRectDilate();
    v69 = *buf;
    v70 = *&buf[16];
    memset(buf, 0, 32);
    *v75 = v71;
    *&v75[16] = v72;
    NUAlignPixelRectToPixelGrid();
    v65 = *buf;
    v66 = *&buf[16];
    v63 = v73;
    v64 = v74;
    NUPixelRectIntersection();
    [regionCopy addRect:v75];
    memset(v75, 0, sizeof(v75));
    v65 = v69;
    v66 = v70;
    NUAlignPixelRectToPixelGrid();
    v63 = *v75;
    v64 = *&v75[16];
    NUPixelRectIntersection();
    [regionCopy addRect:&v65];
    v65 = v67;
    v66 = v68;
    if ((NUPixelRectIsNull() & 1) == 0)
    {
      v63 = v67;
      v64 = v68;
      NUPixelRectFlipYOrigin();
      v67 = v65;
      v68 = v66;
      v65 = 0u;
      v66 = 0u;
      v63 = v67;
      v64 = v68;
      NUAlignPixelRectToPixelGrid();
      NUPixelRectIntersection();
      [regionCopy addRect:&v63];
    }

    v65 = 0u;
    v66 = 0u;
    v63 = v69;
    v64 = v70;
    NUAlignPixelRectToPixelGrid();
    NUPixelRectIntersection();
    [outputRegionCopy addRect:&v63];
    v26 = 1;
    goto LABEL_16;
  }

  if ([operationCopy mode] == 2)
  {
    brushStroke2 = [operationCopy brushStroke];
    v21 = brushStroke2;
    if (brushStroke2)
    {
      [brushStroke2 extent];
    }

    else
    {
      memset(v75, 0, sizeof(v75));
    }

    v65 = v73;
    v66 = v74;
    NUPixelRectIntersection();
    v62 = *buf;

    v28 = *&buf[16];
LABEL_22:
    *buf = v62;
    *&buf[16] = v28;
    v60 = v28;
    if (NUPixelRectIsNull())
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
      }

      v29 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        *&buf[4] = operationCopy;
        _os_log_fault_impl(&dword_1C7694000, v29, OS_LOG_TYPE_FAULT, "Invalid mask extent for operation %{public}@", buf, 0xCu);
      }

      v30 = [MEMORY[0x1E69B3A48] errorWithCode:2 reason:@"Invalid mask extent for operation" object:operationCopy underlyingError:*error];
    }

    else
    {
      *buf = v71;
      *&buf[16] = v61;
      if ([operationCopy hasExclusionMask])
      {
        [(PIInpaintCacheNode *)self _exclusionMaskExtentForOperation:operationCopy error:error];
        *v75 = *buf;
        *&v75[16] = *&buf[16];
        if (NUPixelRectIsNull())
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
          }

          v31 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            v41 = *error;
            *v75 = 138543618;
            *&v75[4] = operationCopy;
            *&v75[12] = 2114;
            *&v75[14] = v41;
            _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Invalid exclusion mask extent for operation %{public}@, error %{public}@", v75, 0x16u);
          }
        }
      }

      v33 = *(&v60 + 1);
      v32 = v60;
      if ([PIInpaintRendering shouldDilateMaskForOperation:operationCopy])
      {
        NUPixelSizeToCGSize();
        v35 = v34;
        v37 = v36;
        NUPixelSizeToCGSize();
        [PIInpaintRendering dilationAmountForMaskSize:v35 fullSize:v37, v38, v39];
        NUPixelRectDilate();
        v65 = *v75;
        v66 = *&v75[16];
        v63 = v73;
        v64 = v74;
        NUPixelRectIntersection();
        v62 = *v75;
        v33 = *&v75[24];
        v32 = *&v75[16];
      }

      *v75 = v62;
      *&v75[16] = v32;
      *&v75[24] = v33;
      v65 = *buf;
      v66 = *&buf[16];
      v63 = v73;
      v64 = v74;
      [PIInpaintRendering sourceExtentForMaskExtent:v75 exclusionMaskExtent:&v65 imageExtent:&v63 operation:operationCopy];
      *v75 = v71;
      *&v75[16] = v72;
      if (!NUPixelRectIsNull())
      {
        v69 = v71;
        v70 = v72;
        goto LABEL_13;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
      }

      v40 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_FAULT))
      {
        *v75 = 138543362;
        *&v75[4] = operationCopy;
        _os_log_fault_impl(&dword_1C7694000, v40, OS_LOG_TYPE_FAULT, "Invalid source extent for operation %{public}@", v75, 0xCu);
      }

      v30 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid source extent for operation" object:operationCopy];
    }

    v26 = 0;
    *error = v30;
LABEL_16:

    return v26;
  }

  if ([operationCopy mode] == 3 || objc_msgSend(operationCopy, "mode") == 4)
  {
    [(PIInpaintCacheNode *)self _maskExtentForOperation:operationCopy error:error];
    v28 = *&buf[16];
    v62 = *buf;
    goto LABEL_22;
  }

  v42 = NUAssertLogger_16994();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    operationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation: %@", operationCopy];
    *buf = 138543362;
    *&buf[4] = operationCopy;
    _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v44 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v46 = NUAssertLogger_16994();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v47)
    {
      v50 = dispatch_get_specific(*v44);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols = [v51 callStackSymbols];
      v54 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v47)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v49 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    *&buf[4] = v49;
    _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v55 = _NUAssertFailHandler();
  return [(PIInpaintCacheNode *)v59 _exclusionMaskExtentForOperation:v55 error:v56, v57, v58];
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)_exclusionMaskExtentForOperation:(SEL)operation error:(id)error
{
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  exclusionMaskIdentifiers = [error exclusionMaskIdentifiers];
  [(PIInpaintCacheNode *)self _extentForInputIdentifiers:exclusionMaskIdentifiers error:a5];

  return result;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)_maskExtentForOperation:(SEL)operation error:(id)error
{
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  maskIdentifiers = [error maskIdentifiers];
  [(PIInpaintCacheNode *)self _extentForInputIdentifiers:maskIdentifiers error:a5];

  return result;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)_extentForInputIdentifiers:(SEL)identifiers error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v21 = *(MEMORY[0x1E69B3900] + 16);
  v22 = *MEMORY[0x1E69B3900];
  v29 = *MEMORY[0x1E69B3900];
  v30 = v21;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = errorCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [(NURenderNode *)self inputs:v21];
        v16 = [v15 objectForKeyedSubscript:v14];

        v17 = [v16 outputImageGeometry:a5];
        if (!v17)
        {
          retstr->var0 = v22;
          retstr->var1 = v21;

          goto LABEL_11;
        }

        v18 = v17;
        [v17 extent];
        v23 = v29;
        v24 = v30;
        NUPixelRectUnion();

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = v30;
  retstr->var0 = v29;
  retstr->var1 = v19;
LABEL_11:

  return result;
}

- (id)newImageOfSize:(id)size colorSpace:(id)space
{
  var1 = size.var1;
  var0 = size.var0;
  spaceCopy = space;
  v7 = [MEMORY[0x1E69B3B20] tiledLayoutForImageSize:var0 tileSize:{var1, 256, 256}];
  if (([spaceCopy hasCICP] & 1) == 0)
  {
    displayP3ColorSpace = [MEMORY[0x1E69B3A10] displayP3ColorSpace];

    spaceCopy = displayP3ColorSpace;
  }

  if ([spaceCopy isExtended])
  {
    [MEMORY[0x1E69B3BF0] RGBAh];
  }

  else
  {
    [MEMORY[0x1E69B3BF0] A2RGB10];
  }
  v9 = ;
  v10 = [MEMORY[0x1E69B3B10] bufferImageWithLayout:v7 format:v9 colorSpace:spaceCopy];

  return v10;
}

- (BOOL)_tryLoad:(id *)load
{
  v93 = *MEMORY[0x1E69E9840];
  if (self->_outputRegion)
  {
    return 1;
  }

  settings = [(NURenderNode *)self settings];
  v6 = [settings objectForKeyedSubscript:@"operations"];

  v55 = [v6 count];
  _computeBaseIdentifier = [(PIInpaintCacheNode *)self _computeBaseIdentifier];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v55 + 1];
  [v8 addObject:_computeBaseIdentifier];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v10)
  {
    v11 = *v82;
    do
    {
      v12 = 0;
      v13 = _computeBaseIdentifier;
      do
      {
        if (*v82 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v81 + 1) + 8 * v12);
        v15 = objc_alloc_init(MEMORY[0x1E69B3A38]);
        [v13 nu_updateDigest:v15];
        [v14 nu_updateDigest:v15];
        _computeBaseIdentifier = [v15 stringValue];

        [v8 addObject:_computeBaseIdentifier];
        ++v12;
        v13 = _computeBaseIdentifier;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v10);
  }

  inputNode = [(NUCacheNode *)self inputNode];
  v17 = [inputNode outputImageGeometry:load];

  if (v17)
  {
    v54 = [(NURenderNode *)self imageProperties:load];
    if (v54)
    {
      v57 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v18 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v55 + 1];
      region = [MEMORY[0x1E69B3C10] region];
      [v58 addObject:region];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v9;
      v20 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
      if (v20)
      {
        v21 = *v78;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v78 != v21)
            {
              objc_enumerationMutation(obj);
            }

            if (![(PIInpaintCacheNode *)self _updateInputRegion:v57 outputRegion:v18 forOperation:*(*(&v77 + 1) + 8 * i) geometry:v17 error:load])
            {

              v3 = 0;
              goto LABEL_37;
            }

            v23 = [v18 copy];
            [v58 addObject:v23];
          }

          v20 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = [v18 copy];
      outputRegion = self->_outputRegion;
      self->_outputRegion = v24;

      v26 = [v57 copy];
      inputRegion = self->_inputRegion;
      self->_inputRegion = v26;

      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0x7FFFFFFFFFFFFFFFLL;
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__17069;
      v71 = __Block_byref_object_dispose__17070;
      v72 = 0;
      selfCopy3 = self;
      if ([(PIInpaintCacheNode *)self shouldCacheIntermediates])
      {
        intermediateCache = [objc_opt_class() intermediateCache];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __31__PIInpaintCacheNode__tryLoad___block_invoke;
        v60[3] = &unk_1E82AB558;
        v64 = &v67;
        v30 = intermediateCache;
        v61 = v30;
        v62 = v58;
        selfCopy2 = self;
        v65 = &v73;
        v66 = v55;
        [v8 enumerateObjectsWithOptions:2 usingBlock:v60];

        selfCopy3 = self;
      }

      v31 = MEMORY[0x1E69B3D80];
      if (v68[5])
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
        }

        v32 = *v31;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          subsampleFactor = [(NUCacheNode *)selfCopy3 subsampleFactor];
          v34 = v74[3];
          *buf = 67109632;
          v86 = subsampleFactor;
          v87 = 1024;
          v88 = v34;
          v89 = 1024;
          LODWORD(v90) = v55;
          _os_log_impl(&dword_1C7694000, v32, OS_LOG_TYPE_DEFAULT, "Inpaint intermediate #%d cache hit (operation #%d out of %d)", buf, 0x14u);
        }

        mutableImageCopy = [v68[5] mutableImageCopy];
        inputImage = self->_inputImage;
        self->_inputImage = mutableImageCopy;

        v37 = [obj subarrayWithRange:{v74[3], v55 - v74[3]}];
        operations = self->_operations;
        self->_operations = v37;

        [v68[5] endAccess];
        selfCopy5 = self;
      }

      else
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
        }

        v40 = *v31;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          subsampleFactor2 = [(NUCacheNode *)selfCopy3 subsampleFactor];
          *buf = 67109632;
          v86 = subsampleFactor2;
          v87 = 1024;
          v88 = v55;
          v89 = 2048;
          v90 = selfCopy3;
          _os_log_impl(&dword_1C7694000, v40, OS_LOG_TYPE_DEFAULT, "Inpaint intermediate #%d cache miss [%d operations] (%p)", buf, 0x18u);
        }

        scaledSize = [v17 scaledSize];
        v44 = v43;
        colorSpace = [v54 colorSpace];
        v46 = [(PIInpaintCacheNode *)self newImageOfSize:scaledSize colorSpace:v44, colorSpace];
        v47 = self->_inputImage;
        self->_inputImage = v46;

        v48 = [obj copy];
        v49 = self->_operations;
        self->_operations = v48;

        selfCopy5 = self;
      }

      v50 = [_computeBaseIdentifier copy];
      cacheKey = selfCopy5->_cacheKey;
      selfCopy5->_cacheKey = v50;

      outputImage = self->_outputImage;
      self->_outputImage = 0;

      self->_sourceIsHDR = [v54 isHDR];
      self->_sourceOrientation = [v54 orientation];
      _Block_object_dispose(&v67, 8);

      _Block_object_dispose(&v73, 8);
      v3 = 1;
LABEL_37:
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __31__PIInpaintCacheNode__tryLoad___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) objectForKey:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    [v11 beginAccess];
    v12 = [*(*(*(a1 + 56) + 8) + 40) validRegion];
    v13 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v14 = [v12 includesRegion:v13];

    if (v14)
    {
      *(*(*(a1 + 64) + 8) + 24) = a3;
      *a4 = 1;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_292);
      }

      v15 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        v17 = v15;
        v18 = [v16 subsampleFactor];
        v19 = *(a1 + 72);
        v20[0] = 67109632;
        v20[1] = v18;
        v21 = 1024;
        v22 = a3;
        v23 = 1024;
        v24 = v19;
        _os_log_impl(&dword_1C7694000, v17, OS_LOG_TYPE_DEFAULT, "Inpaint intermediate #%d cache miss [purged] (operation #%d out of %d)", v20, 0x14u);
      }

      [*(a1 + 32) removeObjectForKey:v7];
      [*(*(*(a1 + 56) + 8) + 40) endAccess];
    }
  }
}

- (id)_computeBaseIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  inputNode = [(NUCacheNode *)self inputNode];
  [inputNode nu_updateDigest:v3];

  [v3 addString:@"subsample["];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUCacheNode subsampleFactor](self, "subsampleFactor")}];
  [v5 nu_updateDigest:v3];

  [v3 addString:@"]"];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (BOOL)tryLoad:(id *)load
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  inpaintQueue = self->_inpaintQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PIInpaintCacheNode_tryLoad___block_invoke;
  block[3] = &unk_1E82AB530;
  block[4] = self;
  block[5] = &v7;
  block[6] = load;
  dispatch_sync(inpaintQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __30__PIInpaintCacheNode_tryLoad___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _tryLoad:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error
{
  v9.receiver = self;
  v9.super_class = PIInpaintCacheNode;
  v6 = [(NUCacheNode *)&v9 evaluateRenderDependenciesWithRequest:request error:?];
  if (v6 && [(PIInpaintCacheNode *)self tryLoad:error])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v29 = NUAssertLogger_16994();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_16994();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v37 = dispatch_get_specific(*v31);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 1 || !objc_msgSend(v10, "evaluationMode"))
  {
    v12 = [v10 copy];
    [v12 setDisableIntermediateCaching:0];
    v45.receiver = self;
    v45.super_class = PIInpaintCacheNode;
    v13 = [(NUCacheNode *)&v45 nodeByReplayingAgainstCache:cacheCopy pipelineState:v12 error:error];
    if (v13)
    {
      if ([(NURenderNode *)self isCached])
      {
        v11 = v13;
      }

      else
      {
        [v13 subsampleFactor];
        v14 = NUScaleMake();
        v16 = v15;
        [v10 scale];
        v17 = NUScaleDivide();
        v19 = v18;
        v42 = *(MEMORY[0x1E69B3918] + 8);
        v44 = *MEMORY[0x1E69B3918];
        NUScaleMake();
        if (NUScaleCompare() < 1)
        {
          v20 = v42;
        }

        else
        {
          [v12 setScale:{v14, v16}];
          v20 = v19;
          v44 = v17;
          v17 = *MEMORY[0x1E69B3918];
          v19 = *(MEMORY[0x1E69B3918] + 8);
        }

        inpaintInputNode = [(PIInpaintCacheNode *)self inpaintInputNode];
        v22 = [inpaintInputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v12 error:error];

        if (v22)
        {
          v23 = -[PIInpaintCompositeNode initWithScale:sampleMode:input:retouch:]([PIInpaintCompositeNode alloc], "initWithScale:sampleMode:input:retouch:", v17, v19, [v10 sampleMode], v22, v13);
          v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v23 cache:cacheCopy];

          [v11 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
          if ((NUScaleEqual() & 1) == 0)
          {
            v43 = objc_alloc(MEMORY[0x1E69B3C90]);
            v24 = v20;
            scale = [v10 scale];
            v27 = [v43 initWithTargetScale:scale effectiveScale:v26 sampleMode:v44 input:{v24, objc_msgSend(v10, "sampleMode"), v11}];

            v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v27 cache:cacheCopy];

            [v11 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Cannot evaluate cache node" object:self];
    *error = v11 = 0;
  }

  return v11;
}

- (PIInpaintCacheNode)initWithInputs:(id)inputs settings:(id)settings subsampleFactor:(int64_t)factor
{
  inputsCopy = inputs;
  v9 = [settings mutableCopy];
  [v9 setObject:*MEMORY[0x1E69B38E0] forKeyedSubscript:@"__dominantInputSettingsKey"];
  v14.receiver = self;
  v14.super_class = PIInpaintCacheNode;
  v10 = [(NUCacheNode *)&v14 initWithInputs:inputsCopy settings:v9 subsampleFactor:factor];

  v11 = dispatch_queue_create("PIInpaintCacheNode", 0);
  inpaintQueue = v10->_inpaintQueue;
  v10->_inpaintQueue = v11;

  return v10;
}

+ (NSCache)intermediateCache
{
  if (intermediateCache_onceToken != -1)
  {
    dispatch_once(&intermediateCache_onceToken, &__block_literal_global_107);
  }

  v3 = intermediateCache_s_inpaintIntermediateCache;

  return v3;
}

uint64_t __39__PIInpaintCacheNode_intermediateCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = intermediateCache_s_inpaintIntermediateCache;
  intermediateCache_s_inpaintIntermediateCache = v0;

  v2 = intermediateCache_s_inpaintIntermediateCache;

  return [v2 setCountLimit:5];
}

+ (void)purge
{
  intermediateCache = [self intermediateCache];
  [intermediateCache removeAllObjects];
}

+ (id)inpaintNodeWithInput:(id)input operations:(id)operations masks:(id)masks error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  operationsCopy = operations;
  masksCopy = masks;
  if (!error)
  {
    v29 = NUAssertLogger_16994();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v69 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_16994();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v47 = dispatch_get_specific(*callStackSymbols);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v47;
        v70 = 2114;
        v71 = v50;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_35;
  }

  if (!inputCopy)
  {
    v36 = NUAssertLogger_16994();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v69 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_16994();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v69 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_37:

      v44 = _NUAssertFailHandler();
      goto LABEL_38;
    }

LABEL_35:
    if (v39)
    {
      v51 = dispatch_get_specific(*callStackSymbols);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      callStackSymbols = [v52 callStackSymbols];
      v54 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v69 = v51;
      v70 = 2114;
      v71 = v54;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!operationsCopy)
  {
    v41 = NUAssertLogger_16994();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "operations != nil"];
      *buf = 138543362;
      v69 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_16994();
    v44 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v69 = v46;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_40;
    }

LABEL_38:
    if (v44)
    {
      v55 = dispatch_get_specific(*callStackSymbols);
      v56 = MEMORY[0x1E696AF00];
      v57 = v55;
      callStackSymbols5 = [v56 callStackSymbols];
      v59 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v69 = v55;
      v70 = 2114;
      v71 = v59;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_40:

    _NUAssertFailHandler();
  }

  v12 = masksCopy;
  errorCopy = error;
  v61 = operationsCopy;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(masksCopy, "count") + 1}];
  v14 = *MEMORY[0x1E69B38E0];
  [v13 setObject:inputCopy forKeyedSubscript:*MEMORY[0x1E69B38E0]];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v64;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v63 + 1) + 8 * i);
        v62 = 0;
        v21 = [v20 newSourceNode:&v62];
        v22 = v62;
        if (!v21)
        {
          *errorCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to create inpaint mask source node" object:v20 underlyingError:v22];

          v27 = 0;
          dictionary = v15;
          v25 = v61;
          goto LABEL_14;
        }

        assetIdentifier = [v20 assetIdentifier];
        [v13 setObject:v21 forKeyedSubscript:assetIdentifier];
      }

      v17 = [v15 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v14 forKeyedSubscript:@"__dominantInputSettingsKey"];
  v25 = v61;
  v26 = PFMap();
  [dictionary setObject:v26 forKeyedSubscript:@"operations"];

  v27 = [(NURenderNode *)[PIInpaintPlaceholderNode alloc] initWithSettings:dictionary inputs:v13];
LABEL_14:

  return v27;
}

PIInpaintOperation *__66__PIInpaintCacheNode_inpaintNodeWithInput_operations_masks_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PIInpaintOperation alloc] initWithDictionary:v2];

  return v3;
}

@end