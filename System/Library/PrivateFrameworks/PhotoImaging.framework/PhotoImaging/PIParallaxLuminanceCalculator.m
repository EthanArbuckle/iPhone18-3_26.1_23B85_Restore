@interface PIParallaxLuminanceCalculator
- (id)_imageToAnalyzeForLayerStack:(id)a3 cropToClockArea:(BOOL)a4 error:(id *)a5;
- (id)calculateClockLuminanceValuesForLayerStack:(id)a3 style:(id)a4 renderer:(id)a5 error:(id *)a6;
- (id)calculateLuminanceValuesForBackdropLayerStack:(id)a3 style:(id)a4 renderer:(id)a5 error:(id *)a6;
- (id)calculateLuminanceValuesForImage:(id)a3 renderer:(id)a4 error:(id *)a5;
@end

@implementation PIParallaxLuminanceCalculator

- (id)calculateLuminanceValuesForBackdropLayerStack:(id)a3 style:(id)a4 renderer:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [(PIParallaxLuminanceCalculator *)self _imageToAnalyzeForLayerStack:a3 cropToClockArea:0 error:a6];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x80000];
    [v11 extent];
    v13 = NUPixelSizeFromCGSize();
    [v12 scaleForImageSize:{v13, v14}];
    NUScaleToDouble();
    CGAffineTransformMakeScale(&v19, v15, v15);
    v16 = [v11 imageByApplyingTransform:&v19];

    v17 = [(PIParallaxLuminanceCalculator *)self calculateLuminanceValuesForImage:v16 renderer:v9 error:a6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)calculateClockLuminanceValuesForLayerStack:(id)a3 style:(id)a4 renderer:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 layout];
  [v13 normalizedVisibleFrame];
  if (CGRectGetMaxY(v29) <= 1.0)
  {

LABEL_8:
    v19 = [(PIParallaxLuminanceCalculator *)self _imageToAnalyzeForLayerStack:v10 cropToClockArea:1 error:a6];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x80000];
      [v20 extent];
      v22 = NUPixelSizeFromCGSize();
      [v21 scaleForImageSize:{v22, v23}];
      NUScaleToDouble();
      CGAffineTransformMakeScale(&v27, v24, v24);
      v25 = [v20 imageByApplyingTransform:&v27];

      v18 = [(PIParallaxLuminanceCalculator *)self calculateLuminanceValuesForImage:v25 renderer:v12 error:a6];
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_11;
  }

  v14 = [v10 layout];
  v15 = [v14 canApplyHeadroom];

  if (!v15 || ![v11 hasTonalityMode])
  {
    goto LABEL_8;
  }

  v16 = [v11 tonality];
  v17 = 0.0;
  if (v16 == 3)
  {
    v17 = 1.0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
LABEL_11:

  return v18;
}

- (id)_imageToAnalyzeForLayerStack:(id)a3 cropToClockArea:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 layout];
  v9 = [v8 clockLayerOrder];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69C0BA0]];

  v11 = [v7 hasMainLayers];
  if (v11)
  {
    [v7 backgroundLayer];
  }

  else
  {
    [v7 backgroundBackfillLayer];
  }
  v12 = ;
  if (!v12)
  {
    [MEMORY[0x1E69B3A48] missingError:@"layer stack has no background layer" object:v7];
    *a5 = v14 = 0;
    goto LABEL_50;
  }

  v13 = [PISegmentationHelper imageFromImageLayer:v12];
  if (v11)
  {
    [v7 foregroundLayer];
  }

  else
  {
    [v7 foregroundBackfillLayer];
  }
  v15 = ;
  if (v15)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v17 = [PISegmentationHelper imageFromImageLayer:v15];
    v18 = [v17 imageByCompositingOverImage:v13];

    v13 = v18;
  }

  if (a4)
  {
    [v8 parallaxVisibleFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v8 parallaxInactiveFrame];
    v81.origin.x = v27;
    v81.origin.y = v28;
    v81.size.width = v29;
    v81.size.height = v30;
    v76.origin.x = v20;
    v76.origin.y = v22;
    v76.size.width = v24;
    v76.size.height = v26;
    CGRectUnion(v76, v81);
    [v8 adaptiveTimeFrame];
    if (!v11)
    {
      [v8 extendedImageExtent];
      NURectNormalize();
      NURectDenormalize();
      recta = v33;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      [v8 extendedImageSize];
      v41 = v40;
      [v8 imageSize];
      v43 = v41 - v42;
      [v8 extendedImageSize];
      v45 = v44;
      [v8 imageSize];
      v47 = v45 - v46;
      [v8 parallaxPadding];
      v49 = -(v47 - v48);
      v78.origin.x = recta;
      v78.origin.y = v35;
      v78.size.width = v37;
      v78.size.height = v39;
      CGRectOffset(v78, -v43, v49);
    }

    NURectNormalize();
    [v13 extent];
    NURectDenormalize();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [v13 extent];
    v61 = v53 + v57;
    v63 = v58 + v62;
    if (v51 + v55 >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = v51 + v55;
    }

    if (v58 >= v64)
    {
      v64 = v58;
    }

    v65 = v59 + v60;
    if (v61 >= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v53 + v57;
    }

    if (v59 >= v66)
    {
      v66 = v59;
    }

    v67 = v53 + v66 - v61;
    if (v51 + v64 - (v51 + v55) < v63)
    {
      v63 = v51 + v64 - (v51 + v55);
    }

    if (v58 >= v63)
    {
      v68 = v58;
    }

    else
    {
      v68 = v63;
    }

    if (v67 >= v65)
    {
      v69 = v65;
    }

    else
    {
      v69 = v67;
    }

    if (v59 >= v69)
    {
      v70 = v59;
    }

    else
    {
      v70 = v69;
    }

    v79.origin.x = v68;
    v79.origin.y = v70;
    v79.size.width = v55;
    v79.size.height = v57;
    if (CGRectIsEmpty(v79))
    {
      v31 = MEMORY[0x1E69B3A48];
      v32 = @"clockArea is empty after mapping to image extent";
      goto LABEL_43;
    }

    v72 = [v13 imageByCroppingToRect:{v68, v70, v55, v57}];

    [v72 extent];
    if (CGRectIsEmpty(v80))
    {
      [MEMORY[0x1E69B3A48] invalidError:@"image extent is empty after cropping to text area" object:v72];
      *a5 = v14 = 0;
      v13 = v72;
      goto LABEL_49;
    }

    v71 = v72;
LABEL_48:
    v13 = v71;
    v14 = v71;
    goto LABEL_49;
  }

  [v13 extent];
  if (!CGRectIsEmpty(v77))
  {
    v71 = v13;
    goto LABEL_48;
  }

  v31 = MEMORY[0x1E69B3A48];
  v32 = @"image extent is empty after rendering layers";
LABEL_43:
  [v31 invalidError:v32 object:v13];
  *a5 = v14 = 0;
LABEL_49:

LABEL_50:

  return v14;
}

- (id)calculateLuminanceValuesForImage:(id)a3 renderer:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B3BF0] BGRA8];
  v9 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  v65 = 0u;
  v64 = 0u;
  [v6 extent];
  NUPixelRectFromCGRect();
  v10 = [MEMORY[0x1E69B3A58] sharedFactory];
  v11 = [v10 surfaceStoragePool];

  v12 = [v11 newStorageWithSize:0 format:{0, v8}];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__15154;
  v62 = __Block_byref_object_dispose__15155;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__15154;
  v56 = __Block_byref_object_dispose__15155;
  v57 = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __81__PIParallaxLuminanceCalculator_calculateLuminanceValuesForImage_renderer_error___block_invoke;
  v44[3] = &unk_1E82AB338;
  v13 = v9;
  v45 = v13;
  v48 = &v52;
  v14 = v7;
  v46 = v14;
  v15 = v6;
  v50 = v64;
  v51 = v65;
  v47 = v15;
  v49 = &v58;
  [v12 useAsCIRenderDestinationWithRenderer:v14 block:v44];
  v16 = v53[5];
  v17 = (v59 + 5);
  v18 = v59[5];
  if (v16)
  {
    obj = v59[5];
    v19 = [v16 waitUntilCompletedAndReturnError:&obj];
    objc_storeStrong(v17, obj);

    if (v19)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__15154;
      v41 = __Block_byref_object_dispose__15155;
      v42 = 0;
      v20 = objc_alloc_init(MEMORY[0x1E69B3AB8]);
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0u;
      v21 = [MEMORY[0x1E69B3C10] regionWithRect:v35];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__PIParallaxLuminanceCalculator_calculateLuminanceValuesForImage_renderer_error___block_invoke_2;
      v31[3] = &unk_1E82AB360;
      v33 = &v37;
      v22 = v20;
      v32 = v22;
      v34 = &v58;
      [v12 readBufferInRegion:v21 block:v31];

      v23 = v38[5];
      if (v23)
      {
        v24 = [v23 luminance];
        [v24 median];
        v26 = v25;

        v27 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      }

      else
      {
        v27 = 0;
        *a5 = v59[5];
      }

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v27 = 0;
      *a5 = v59[5];
    }
  }

  else
  {
    v28 = v18;
    v27 = 0;
    *a5 = v18;
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v27;
}

BOOL __81__PIParallaxLuminanceCalculator_calculateLuminanceValuesForImage_renderer_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  [v4 setClamped:1];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = 0;
  v8 = *(a1 + 88);
  v13[0] = *(a1 + 72);
  v13[1] = v8;
  v9 = [v5 renderImage:v6 rect:v13 toDestination:v4 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), &obj}];

  objc_storeStrong((v7 + 40), obj);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void __81__PIParallaxLuminanceCalculator_calculateLuminanceValuesForImage_renderer_error___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v3 computeHistogramFromBuffer:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end