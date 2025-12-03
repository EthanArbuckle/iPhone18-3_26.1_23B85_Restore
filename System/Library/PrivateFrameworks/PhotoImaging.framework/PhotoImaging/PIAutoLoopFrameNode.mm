@interface PIAutoLoopFrameNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)videoScale;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateImageProperties:(id *)properties;
- (id)_processImage:(id)image cleanRect:(CGRect)rect cropRect:(CGRect)cropRect transform:(id)transform geometry:(id)geometry;
@end

@implementation PIAutoLoopFrameNode

- (id)_processImage:(id)image cleanRect:(CGRect)rect cropRect:(CGRect)cropRect transform:(id)transform geometry:(id)geometry
{
  v88[4] = *MEMORY[0x1E69E9840];
  geometryCopy = geometry;
  transformCopy = transform;
  imageCopy = image;
  [(PIAutoLoopFrameNode *)self videoScale];
  [geometryCopy renderScale];
  NUScaleDivide();
  NUScaleToDouble();
  v78 = v12;
  NUScaleRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [imageCopy imageByCroppingToRect:?];

  CGAffineTransformMakeTranslation(&v86, -v14, -v16);
  v76 = [v21 imageByApplyingTransform:&v86];

  v22 = [transformCopy objectForKeyedSubscript:@"frameTransform_homography"];

  v23 = [v22 objectAtIndexedSubscript:0];
  [v23 floatValue];
  v83 = v24;
  v25 = [v22 objectAtIndexedSubscript:1];
  [v25 floatValue];
  v81 = v26;
  v27 = [v22 objectAtIndexedSubscript:2];
  [v27 floatValue];
  v79 = v28;
  v29 = [v22 objectAtIndexedSubscript:3];
  [v29 floatValue];
  v74 = v30;
  v31 = [v22 objectAtIndexedSubscript:4];
  [v31 floatValue];
  v72 = v32;
  v33 = [v22 objectAtIndexedSubscript:5];
  [v33 floatValue];
  v71 = v34;
  v35 = [v22 objectAtIndexedSubscript:6];
  [v35 floatValue];
  v70 = v36;
  v37 = [v22 objectAtIndexedSubscript:7];
  [v37 floatValue];
  v69 = v38;
  v39 = [v22 objectAtIndexedSubscript:8];
  [v39 floatValue];
  v40 = v83;
  v40.i32[1] = v74;
  v40.i32[2] = v70;
  v84 = v40;
  v41 = v81;
  v41.i32[1] = v72;
  v41.i32[2] = v69;
  v82 = v41;
  v42 = v79;
  v42.i32[1] = v71;
  v42.i32[2] = v43;
  v80 = v42;

  v44 = 0.0 / v78;
  v45 = v20 / v78;
  v46 = vmulq_n_f32(v84, v44);
  v47 = vaddq_f32(vmlaq_n_f32(v46, v82, v45), v80);
  v48 = v18 / v78;
  v49 = vmulq_n_f32(v84, v48);
  v50 = vaddq_f32(vmlaq_n_f32(v49, v82, v45), v80);
  v51 = vaddq_f32(vmlaq_n_f32(v46, v82, v44), v80);
  v73 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v50.i8, vdup_laneq_s32(v50, 2))), v78);
  v75 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v51.i8, vdup_laneq_s32(v51, 2))), v78);
  v52 = vaddq_f32(vmlaq_n_f32(v49, v82, v44), v80);
  v85 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v52.i8, vdup_laneq_s32(v52, 2))), v78);
  v87[0] = @"inputTopLeft";
  v53 = [MEMORY[0x1E695F688] vectorWithCGPoint:{vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v47.i8, vdup_laneq_s32(v47, 2))), v78)}];
  v88[0] = v53;
  v87[1] = @"inputTopRight";
  v54 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v73];
  v88[1] = v54;
  v87[2] = @"inputBottomLeft";
  v55 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v75];
  v88[2] = v55;
  v87[3] = @"inputBottomRight";
  v56 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v85];
  v88[3] = v56;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:4];
  v58 = [v76 imageByApplyingFilter:@"CIPerspectiveTransform" withInputParameters:v57];

  NUScaleRect();
  v60 = v59;
  v62 = v61;
  scaledSize = [geometryCopy scaledSize];
  v65 = v64;

  v66 = [v58 imageByCroppingToRect:{v60, v62, scaledSize, v65}];
  CGAffineTransformMakeTranslation(&v86, -v60, -v62);
  v67 = [v66 imageByApplyingTransform:&v86];

  return v67;
}

- (id)_evaluateImage:(id *)image
{
  v96 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v72 = NUAssertLogger_12588();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v93 = v73;
      _os_log_error_impl(&dword_1C7694000, v72, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v74 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v76 = NUAssertLogger_12588();
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v77)
      {
        v80 = dispatch_get_specific(*v74);
        v81 = MEMORY[0x1E696AF00];
        v82 = v80;
        callStackSymbols = [v81 callStackSymbols];
        v84 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v93 = v80;
        v94 = 2114;
        v95 = v84;
        _os_log_error_impl(&dword_1C7694000, v76, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v77)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v79 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v93 = v79;
      _os_log_error_impl(&dword_1C7694000, v76, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  settings = [(NURenderNode *)self settings];
  v6 = [settings objectForKeyedSubscript:@"cleanAperture"];
  v7 = [v6 objectForKeyedSubscript:@"x"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v6 objectForKeyedSubscript:@"y"];
  [v10 floatValue];
  v12 = v11;

  v13 = [v6 objectForKeyedSubscript:@"w"];
  [v13 floatValue];
  v15 = v14;

  v16 = [v6 objectForKeyedSubscript:@"h"];
  [v16 floatValue];
  v18 = v17;

  v19 = [settings objectForKeyedSubscript:@"loopRecipe_stabCropRect"];
  v20 = [v19 objectForKeyedSubscript:@"origin_x"];
  [v20 floatValue];
  v22 = v21;

  v23 = [v19 objectForKeyedSubscript:@"origin_y"];
  [v23 floatValue];
  v25 = v24;

  v26 = [v19 objectForKeyedSubscript:@"width"];
  [v26 floatValue];
  v28 = v27;

  v29 = [v19 objectForKeyedSubscript:@"height"];
  [v29 floatValue];
  v31 = v30;

  v32 = [(NURenderNode *)self outputImageGeometry:image];
  if (!v32)
  {
    v46 = 0;
    goto LABEL_28;
  }

  v33 = v9;
  v34 = v12;
  v35 = v15;
  v36 = v18;
  v37 = v22;
  v38 = v25;
  v39 = v28;
  v40 = v31;
  v41 = [settings objectForKeyedSubscript:@"loopFrameData_frameTransforms"];
  if ([v41 count] == 1)
  {
    inputs = [(NURenderNode *)self inputs];
    v43 = [inputs objectForKeyedSubscript:@"primary"];

    v44 = [v43 outputImage:image];
    if (v44)
    {
      v45 = [v41 objectAtIndexedSubscript:0];
      v46 = [(PIAutoLoopFrameNode *)self _processImage:v44 cleanRect:v45 cropRect:v32 transform:v33 geometry:v34, v35, v36, v37, v38, v39, v40];

      if (!v46)
      {
        *image = [MEMORY[0x1E69B3A48] errorWithCode:7 reason:@"Could not produce the output image from input" object:v44];
      }
    }

    else
    {
      v46 = 0;
    }

LABEL_26:
    goto LABEL_27;
  }

  if ([v41 count] == 2)
  {
    inputs2 = [(NURenderNode *)self inputs];
    v43 = [inputs2 objectForKeyedSubscript:@"primary"];

    if (v43)
    {
      v90 = [v43 outputImage:image];
      if (v90)
      {
        inputs3 = [(NURenderNode *)self inputs];
        v49 = [inputs3 objectForKeyedSubscript:@"secondary"];

        v50 = v49;
        if (v49)
        {
          v51 = [v49 outputImage:image];
          if (v51)
          {
            v87 = v50;
            v52 = [v41 objectAtIndexedSubscript:0];
            v89 = [(PIAutoLoopFrameNode *)self _processImage:v90 cleanRect:v52 cropRect:v32 transform:v33 geometry:v34, v35, v36, v37, v38, v39, v40];

            v53 = [v41 objectAtIndexedSubscript:1];
            v86 = v51;
            v54 = [(PIAutoLoopFrameNode *)self _processImage:v51 cleanRect:v53 cropRect:v32 transform:v33 geometry:v34, v35, v36, v37, v38, v39, v40];

            v88 = +[PIAutoLoopKernels alphaCompositingKernel];
            v55 = [v41 objectAtIndexedSubscript:0];
            v56 = [v55 objectForKeyedSubscript:@"frameTransform_blend_alpha"];
            [v56 floatValue];
            v58 = v57;

            [v89 extent];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v91[0] = v89;
            v91[1] = v54;
            v85 = v54;
            LODWORD(v59) = v58;
            v67 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
            v91[2] = v67;
            v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
            v46 = [v88 applyWithExtent:v68 arguments:{v60, v62, v64, v66}];

            if (!v46)
            {
              *image = [MEMORY[0x1E69B3A48] errorWithCode:7 reason:@"Could not produce the output image from input" object:v90];
            }

            v51 = v86;
            v50 = v87;
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"missing secondary input" object:settings];
          *image = v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v69 = MEMORY[0x1E69B3A48];
      v70 = [(NURenderNode *)self description];
      *image = [v69 errorWithCode:3 reason:@"missing primary input" object:v70];

      v46 = 0;
    }

    goto LABEL_26;
  }

  [MEMORY[0x1E69B3A48] invalidError:@"Invalid frame instruction" object:settings];
  *image = v46 = 0;
LABEL_27:

LABEL_28:

  return v46;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v33 = *MEMORY[0x1E69E9840];
  if (!geometry)
  {
    v18 = NUAssertLogger_12588();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_12588();
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
  }

  inputs = [(NURenderNode *)self inputs];
  v6 = [inputs objectForKeyedSubscript:@"primary"];

  v31 = 0;
  v7 = [v6 outputImageGeometry:&v31];
  v8 = v31;
  if (v7)
  {
    orientation = [v7 orientation];
    renderScale = [v7 renderScale];
    v12 = v11;
    [(PIAutoLoopFrameNode *)self videoScale];
    settings = [(NURenderNode *)self settings];
    v14 = PIAutoLoopRecipeComputeOutputGeometry(settings);

    v15 = objc_alloc(MEMORY[0x1E69B3B18]);
    if (v14)
    {
      [v14 extent];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = [v15 initWithExtent:buf renderScale:renderScale orientation:{v12, orientation}];
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get input geometry" object:self underlyingError:v8];
    *geometry = v16 = 0;
  }

  return v16;
}

- (id)_evaluateImageProperties:(id *)properties
{
  inputs = [(NURenderNode *)self inputs];
  v5 = [inputs objectForKeyedSubscript:@"primary"];

  v6 = [v5 imageProperties:properties];

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)videoScale
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"videoScale"];
  v4 = NUScaleFromValue();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

@end