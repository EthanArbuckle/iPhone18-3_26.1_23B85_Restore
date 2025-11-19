@interface PIPortraitVideoDebugDetectionsRenderNode
- (BOOL)shouldCacheNodeForPipelineState:(id)a3;
- (PIPortraitVideoDebugDetectionsRenderNode)initWithInput:(id)a3 assetURL:(id)a4 cinematographyState:(id)a5 monochrome:(BOOL)a6;
- (id)_evaluateImage:(id *)a3;
- (id)_imageByAddingDetection:(id)a3 toImage:(id)a4 isPrimary:(BOOL)a5 canvasSize:(CGSize)a6 inverseOrientation:(int64_t)a7;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (void)setRenderTime:(id *)a3;
@end

@implementation PIPortraitVideoDebugDetectionsRenderNode

- (void)setRenderTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_renderTime.value = *&a3->var0;
  self->_renderTime.epoch = var3;
}

- (id)_evaluateImage:(id *)a3
{
  v86[3] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v48 = NUAssertLogger_17826();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v82 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_17826();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v56 = dispatch_get_specific(*v50);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v82 = v56;
        v83 = 2114;
        v84 = v60;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      v54 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [v54 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v82 = v55;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v77 = 0;
  v6 = [v5 outputImage:&v77];
  v7 = v77;
  if (v6)
  {
    v8 = [(NURenderNode *)self settings];
    v9 = [v8 objectForKeyedSubscript:@"monochrome"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [MEMORY[0x1E695F688] vectorWithX:0.2125 Y:0.7154 Z:0.0721 W:0.0];
      v85[0] = @"inputRVector";
      v85[1] = @"inputGVector";
      v86[0] = v11;
      v86[1] = v11;
      v85[2] = @"inputBVector";
      v86[2] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
      v13 = [v6 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v12];

      v6 = v13;
    }

    v14 = [(PIPortraitVideoDebugDetectionsRenderNode *)self cinematographyScript];

    if (v14)
    {
      v15 = [(NURenderNode *)self outputImageGeometry:a3];
      if (v15)
      {
        v63 = v7;
        v64 = v5;
        v62 = v15;
        [v15 orientation];
        v16 = NUOrientationInverse();
        [v6 extent];
        v18 = v17;
        v20 = v19;
        v21 = [(PIPortraitVideoDebugDetectionsRenderNode *)self cinematographyScript];
        [(PIPortraitVideoDebugDetectionsRenderNode *)self renderTime];
        v22 = [v21 frameNearestTime:buf];

        v23 = [v22 focusDetection];
        v61 = v22;
        v24 = [v22 allDetections];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v73 objects:v80 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v74;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v74 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v73 + 1) + 8 * i);
              if ([v29 detectionType] == 100)
              {
                v30 = -[PIPortraitVideoDebugDetectionsRenderNode _imageByAddingDetection:toImage:isPrimary:canvasSize:inverseOrientation:](self, "_imageByAddingDetection:toImage:isPrimary:canvasSize:inverseOrientation:", v29, v6, [v29 trackIdentifier] == objc_msgSend(v23, "trackIdentifier"), v16, v18, v20);

                v6 = v30;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v73 objects:v80 count:16];
          }

          while (v26);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v31 = v24;
        v32 = [v31 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v70;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v70 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v69 + 1) + 8 * j);
              if ([v36 detectionType] != 100)
              {
                v37 = [v36 trackIdentifier];
                if (v37 != [v23 trackIdentifier])
                {
                  v38 = [(PIPortraitVideoDebugDetectionsRenderNode *)self _imageByAddingDetection:v36 toImage:v6 isPrimary:0 canvasSize:v16 inverseOrientation:v18, v20];

                  v6 = v38;
                }
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v33);
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v39 = v31;
        v40 = [v39 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v66;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v66 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v65 + 1) + 8 * k);
              if ([v44 detectionType] != 100)
              {
                v45 = [v44 trackIdentifier];
                if (v45 == [v23 trackIdentifier])
                {
                  v46 = [(PIPortraitVideoDebugDetectionsRenderNode *)self _imageByAddingDetection:v44 toImage:v6 isPrimary:1 canvasSize:v16 inverseOrientation:v18, v20];

                  v6 = v46;
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v65 objects:v78 count:16];
          }

          while (v41);
        }

        v7 = v63;
        v5 = v64;
      }

      else
      {

        v6 = 0;
      }
    }
  }

  else
  {
    *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the input image" object:self underlyingError:v7];
  }

  return v6;
}

- (id)_imageByAddingDetection:(id)a3 toImage:(id)a4 isPrimary:(BOOL)a5 canvasSize:(CGSize)a6 inverseOrientation:(int64_t)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5;
  v74 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = v13;
  v16 = v15;
  if (v10)
  {
    v17 = MEMORY[0x1E695F610];
    v18 = 0.0;
    v19 = 1.0;
    v20 = 0.0;
  }

  else if ([v15 detectionType] == 100)
  {
    v17 = MEMORY[0x1E695F610];
    v18 = 0.5;
    v19 = 0.5;
    v20 = 0.5;
  }

  else
  {
    [v16 groupIdentifier];
    v21 = PTGroupIDIsValid();
    v17 = MEMORY[0x1E695F610];
    if (v21)
    {
      v70 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:0.584313725 blue:0.0];
      *&v72.a = v70;
      v69 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:0.8 blue:0.0];
      *&v72.b = v69;
      v22 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:0.176470588 blue:0.333333333];
      *&v72.c = v22;
      v23 = [MEMORY[0x1E695F610] colorWithRed:0.68627451 green:0.321568627 blue:0.870588235];
      *&v72.d = v23;
      v24 = [MEMORY[0x1E695F610] colorWithRed:0.352941176 green:0.784313725 blue:0.980392157];
      *&v72.tx = v24;
      v25 = [MEMORY[0x1E695F610] colorWithRed:0.345098039 green:0.337254902 blue:0.839215686];
      *&v72.ty = v25;
      v26 = [MEMORY[0x1E695F610] colorWithRed:0.635294118 green:0.517647059 blue:0.368627451];
      v73 = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:7];

      v28 = [v27 objectAtIndexedSubscript:{objc_msgSend(v16, "groupIdentifier") % objc_msgSend(v27, "count")}];

      goto LABEL_9;
    }

    v18 = 1.0;
    v19 = 0.0;
    v20 = 1.0;
  }

  v28 = [v17 colorWithRed:v18 green:v19 blue:v20];
LABEL_9:

  [v16 rect];
  v32 = width * v31;
  v33 = height * (1.0 - v29 - v30);
  v35 = width * v34;
  v36 = height * v30;
  v37 = [PICoreImageUtilities framedRectImageWithCGRect:v28 color:v32 borderWidth:v33, v35, v36, 4.0];
  v38 = [v37 imageByCompositingOverImage:v14];

  v39 = [(PIPortraitVideoDebugDetectionsRenderNode *)self labelImageCache];
  v40 = v16;
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v40, "trackIdentifier")}];
  *&v72.a = v41;
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v40, "groupIdentifier")}];
  *&v72.b = v42;
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "detectionType")}];
  *&v72.c = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:3];

  v45 = [v39 objectForKey:v44];
  if (v45)
  {
    goto LABEL_37;
  }

  v46 = [v40 detectionType];
  if (v46 <= 4)
  {
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        v47 = @"Torso";
      }

      else
      {
        v47 = @"Cat Body";
      }

      goto LABEL_31;
    }

    if (v46 == 1)
    {
      v47 = @"Face";
      goto LABEL_31;
    }

    if (v46 == 2)
    {
      v47 = @"Head";
      goto LABEL_31;
    }
  }

  else if (v46 <= 9)
  {
    if (v46 == 5)
    {
      v47 = @"Dog Body";
      goto LABEL_31;
    }

    if (v46 == 9)
    {
      v47 = @"Cat Head";
      goto LABEL_31;
    }
  }

  else
  {
    switch(v46)
    {
      case 10:
        v47 = @"Dog Head";
        goto LABEL_31;
      case 11:
        v47 = @"Sports Ball";
        goto LABEL_31;
      case 100:
        v47 = @"AutoFocus";
        goto LABEL_31;
    }
  }

  v47 = @"Unknown";
LABEL_31:
  [v40 trackIdentifier];
  if (PTTrackIDIsValid() && [v40 detectionType] != 100)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v40, "trackIdentifier")}];
    v47 = [v48 stringWithFormat:@"%@ %@", v47, v49];
  }

  [v40 groupIdentifier];
  if (PTGroupIDIsValid())
  {
    v50 = MEMORY[0x1E696AEC0];
    v51 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v40, "groupIdentifier")}];
    v52 = [v50 stringWithFormat:@"%@ G:%@", v47, v51];

    v47 = v52;
  }

  v53 = [MEMORY[0x1E695F648] textImageGeneratorFilter];
  [v53 setText:v47];
  [v53 setFontName:@"Helvetica"];
  LODWORD(v54) = 1109393408;
  [v53 setFontSize:v54];
  v45 = [v53 outputImage];
  [v39 setObject:v45 forKey:v44];

LABEL_37:
  v55 = [MEMORY[0x1E695F648] roundedRectangleGeneratorFilter];
  [v45 extent];
  v57 = v56 + 4.0;
  [v45 extent];
  [v55 setExtent:{0.0, 0.0, v57, v58 + 4.0}];
  [v55 setColor:v28];
  [v55 setRadius:0.0];
  CGAffineTransformMakeTranslation(&v72, 2.0, 2.0);
  v59 = [v45 imageByApplyingTransform:&v72];

  v60 = [v55 outputImage];
  v61 = [v59 imageByCompositingOverImage:v60];

  memset(&v72, 0, sizeof(v72));
  [v61 extent];
  NUPixelSizeFromCGSize();
  NUOrientationMakeTransformWithSize();
  v71 = v72;
  v62 = [v61 imageByApplyingTransform:&v71];

  switch(a7)
  {
    case 3:
      [v62 extent];
      v32 = v32 + v35 - v64;
      goto LABEL_42;
    case 6:
LABEL_42:
      [v62 extent];
      v33 = v33 + v36 - v65;
      break;
    case 8:
      [v62 extent];
      v32 = v32 + v35 - v63;
      break;
  }

  CGAffineTransformMakeTranslation(&v71, v32, v33);
  v66 = [v62 imageByApplyingTransform:&v71];

  v67 = [v66 imageByCompositingOverImage:v38];

  return v67;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v36 = NUAssertLogger_17826();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v38 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_17826();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v44 = dispatch_get_specific(*v38);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v13 = v12;
  v54.receiver = self;
  v54.super_class = PIPortraitVideoDebugDetectionsRenderNode;
  v14 = [(NURenderNode *)&v54 resolvedNodeWithCachedInputs:v10 settings:v11 pipelineState:v12 error:a6];
  if (([v13 evaluationMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v15 = [(PIPortraitVideoDebugDetectionsRenderNode *)self cinematographyScript];
    v16 = v15 == 0;

    if (v16)
    {
      v22 = MEMORY[0x1E6988168];
      v23 = [v11 objectForKeyedSubscript:@"assetURL"];
      v24 = [v22 assetWithURL:v23];

      v25 = dispatch_group_create();
      dispatch_group_enter(v25);
      v26 = objc_alloc_init(MEMORY[0x1E69C4F80]);
      [(PIPortraitVideoDebugDetectionsRenderNode *)self setCinematographyScript:v26];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__17917;
      v57 = __Block_byref_object_dispose__17918;
      v58 = 0;
      v27 = [v11 objectForKeyedSubscript:@"cinematographyState"];
      if (![v27 count])
      {

        v27 = 0;
      }

      v28 = [(PIPortraitVideoDebugDetectionsRenderNode *)self cinematographyScript];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __102__PIPortraitVideoDebugDetectionsRenderNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke;
      v51[3] = &unk_1E82AB728;
      v53 = buf;
      v29 = v25;
      v52 = v29;
      v30 = [v28 loadWithAsset:v24 changesDictionary:v27 completion:v51];

      dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      v31 = *(*&buf[8] + 40);
      if (v31)
      {
        *a6 = v31;

        _Block_object_dispose(buf, 8);
        v32 = 0;
        goto LABEL_15;
      }

      _Block_object_dispose(buf, 8);
    }

    v17 = [(PIPortraitVideoDebugDetectionsRenderNode *)self labelImageCache];
    v18 = v17 == 0;

    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [(PIPortraitVideoDebugDetectionsRenderNode *)self setLabelImageCache:v19];

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-labelImageCache", objc_opt_class()];
      v21 = [(PIPortraitVideoDebugDetectionsRenderNode *)self labelImageCache];
      [v21 setName:v20];
    }

    if (v13)
    {
      [v13 time];
    }

    else
    {
      v49 = 0uLL;
      v50 = 0;
    }

    *buf = v49;
    *&buf[16] = v50;
    [v14 setRenderTime:buf];
    v33 = [(PIPortraitVideoDebugDetectionsRenderNode *)self cinematographyScript];
    [v14 setCinematographyScript:v33];

    v34 = [(PIPortraitVideoDebugDetectionsRenderNode *)self labelImageCache];
    [v14 setLabelImageCache:v34];
  }

  v32 = v14;
LABEL_15:

  return v32;
}

void __102__PIPortraitVideoDebugDetectionsRenderNode_resolvedNodeWithCachedInputs_settings_pipelineState_error___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)shouldCacheNodeForPipelineState:(id)a3
{
  v3 = a3;
  [v3 scale];
  NUScaleToDouble();
  if (v4 >= 0.15)
  {
    v6 = [v3 evaluationMode];
    if (v6 <= 3)
    {
      v5 = 0xBu >> (v6 & 0xF);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (PIPortraitVideoDebugDetectionsRenderNode)initWithInput:(id)a3 assetURL:(id)a4 cinematographyState:(id)a5 monochrome:(BOOL)a6
{
  v6 = a6;
  v24[3] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695E0F8];
  if (a5)
  {
    v10 = a5;
  }

  v24[0] = v10;
  v23[0] = @"cinematographyState";
  v23[1] = @"monochrome";
  v11 = MEMORY[0x1E696AD98];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v11 numberWithBool:v6];
  v23[2] = @"assetURL";
  v24[1] = v15;
  v24[2] = v13;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v21 = *MEMORY[0x1E695FAB0];
  v22 = v14;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v20.receiver = self;
  v20.super_class = PIPortraitVideoDebugDetectionsRenderNode;
  v18 = [(NURenderNode *)&v20 initWithSettings:v16 inputs:v17];

  return v18;
}

@end