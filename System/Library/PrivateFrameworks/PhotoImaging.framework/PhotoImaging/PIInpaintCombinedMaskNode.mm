@interface PIInpaintCombinedMaskNode
- (PIInpaintCombinedMaskNode)initWithSettings:(id)a3 inputs:(id)a4;
- (PIInpaintCombinedMaskNode)initWithSettings:(id)a3 inputs:(id)a4 mode:(unint64_t)a5;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateImageProperties:(id *)a3;
- (id)_scaleImage:(id)a3 toSize:(CGSize)a4;
- (id)maskImageForIdentifier:(id)a3 error:(id *)a4;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (unint64_t)mode;
@end

@implementation PIInpaintCombinedMaskNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIInpaintCombinedMaskNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)_scaleImage:(id)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 extent];
  if (v8 == width && v7 == height)
  {
    v13 = v6;
  }

  else
  {
    [v6 extent];
    v11 = width / v10;
    [v6 extent];
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, v11, height / v12);
    v16 = v17;
    v13 = [v6 imageByApplyingTransform:&v16];
  }

  v14 = v13;

  return v14;
}

- (id)_evaluateImage:(id *)a3
{
  v120 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v61 = NUAssertLogger_6299();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v119.a) = 138543362;
      *(&v119.a + 4) = v62;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v119, 0xCu);
    }

    v63 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v65 = NUAssertLogger_6299();
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v66)
      {
        v69 = dispatch_get_specific(*v63);
        v70 = MEMORY[0x1E696AF00];
        v71 = v69;
        v72 = [v70 callStackSymbols];
        v73 = [v72 componentsJoinedByString:@"\n"];
        LODWORD(v119.a) = 138543618;
        *(&v119.a + 4) = v69;
        WORD2(v119.b) = 2114;
        *(&v119.b + 6) = v73;
        _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v119, 0x16u);
      }
    }

    else if (v66)
    {
      v67 = [MEMORY[0x1E696AF00] callStackSymbols];
      v68 = [v67 componentsJoinedByString:@"\n"];
      LODWORD(v119.a) = 138543362;
      *(&v119.a + 4) = v68;
      _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v119, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self settings];
  v6 = [v5 objectForKeyedSubscript:@"operations"];

  v7 = [(NURenderNode *)self outputImageGeometry:a3];
  v8 = v7;
  if (v7)
  {
    [v7 extent];
    NUPixelRectToCGRect();
    v10 = v9;
    v12 = v11;
    [v8 scaledExtent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    memset(&v119, 0, sizeof(v119));
    CGAffineTransformMakeScale(&v119, v17 / v10, v19 / v12);
    v21 = [MEMORY[0x1E695F658] blackImage];
    v22 = [v21 imageByCroppingToRect:{v14, v16, v18, v20}];

    v23 = [(PIInpaintCombinedMaskNode *)self mode];
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __44__PIInpaintCombinedMaskNode__evaluateImage___block_invoke;
    v112[3] = &unk_1E82AA2F8;
    v25 = v24;
    v113 = v25;
    v114 = self;
    v115 = v119;
    v26 = MEMORY[0x1CCA61740](v112);
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __44__PIInpaintCombinedMaskNode__evaluateImage___block_invoke_2;
    v109[3] = &unk_1E82AA320;
    v111 = v23;
    v27 = v26;
    v110 = v27;
    v28 = MEMORY[0x1CCA61740](v109);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v29 = v6;
    v30 = [v29 countByEnumeratingWithState:&v105 objects:v118 count:16];
    if (v30)
    {
      v31 = v30;
      v91 = a3;
      v92 = v25;
      v32 = *v106;
      v93 = v6;
      v94 = v29;
      v97 = v28;
LABEL_5:
      v33 = 0;
      while (1)
      {
        if (*v106 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v105 + 1) + 8 * v33);
        v35 = [v34 mode];
        if ((v35 - 1) < 2)
        {
          break;
        }

        if ((v35 - 3) >= 2)
        {
          if (!v35)
          {
            v74 = NUAssertLogger_6299();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation: %@", v34];
              LODWORD(buf.a) = 138543362;
              *(&buf.a + 4) = v76;
              _os_log_error_impl(&dword_1C7694000, v74, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
            }

            v77 = MEMORY[0x1E69B38E8];
            v78 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
            v79 = NUAssertLogger_6299();
            v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
            if (v78)
            {
              if (v80)
              {
                v83 = dispatch_get_specific(*v77);
                v84 = MEMORY[0x1E696AF00];
                v85 = v83;
                v86 = [v84 callStackSymbols];
                v87 = [v86 componentsJoinedByString:@"\n"];
                LODWORD(buf.a) = 138543618;
                *(&buf.a + 4) = v83;
                WORD2(buf.b) = 2114;
                *(&buf.b + 6) = v87;
                _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
              }
            }

            else if (v80)
            {
              v81 = [MEMORY[0x1E696AF00] callStackSymbols];
              v82 = [v81 componentsJoinedByString:@"\n"];
              LODWORD(buf.a) = 138543362;
              *(&buf.a + 4) = v82;
              _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
            }

            _NUAssertFailHandler();
            return NUAssertLogger_6299();
          }

          goto LABEL_33;
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        obj = [v34 maskIdentifiers];
        v36 = [obj countByEnumeratingWithState:&v100 objects:v116 count:16];
        if (v36)
        {
          v37 = v36;
          v95 = v33;
          v88 = v31;
          v89 = v32;
          v90 = v8;
          v38 = 0;
          v39 = 0;
          v40 = *v101;
          v41 = v22;
          while (2)
          {
            v42 = 0;
            v22 = v41;
            do
            {
              if (*v101 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v100 + 1) + 8 * v42);
              v99 = v38;
              v44 = (*(v27 + 2))(v27, v43, &v99);
              v45 = v99;

              if (!v44)
              {
                v58 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to generate mask" object:v34 underlyingError:v45];
LABEL_39:
                v59 = v94;
                *v91 = v58;

                v39 = v45;
                v25 = v92;
                v6 = v93;
                v8 = v90;
                v28 = v97;
                goto LABEL_40;
              }

              if ([PIInpaintRendering shouldDilateMaskForOperation:v34])
              {
                v46 = +[PIGlobalSettings globalSettings];
                v47 = [v46 inpaintFillsMaskHoles];

                if (v47)
                {
                  v48 = [PIInpaintRendering maskByFillingHolesInMask:v44];

                  v44 = v48;
                }

                v49 = [PIInpaintRendering maskByDilatingMask:v44 fullExtent:v14, v16, v18, v20];

                v44 = v49;
              }

              v98 = v45;
              v39 = v97[2](v97, v44, v34, &v98);
              v38 = v98;

              if (!v39)
              {
                v58 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to apply exclusion mask" object:v34 underlyingError:v38];
                v45 = v38;
                goto LABEL_39;
              }

              v41 = [PIInpaintRendering maskByAddingMask:v39 toMask:v22];

              ++v42;
              v22 = v41;
            }

            while (v37 != v42);
            v37 = [obj countByEnumeratingWithState:&v100 objects:v116 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }

          v22 = v38;
          v32 = v89;
          v8 = v90;
          v29 = v94;
          v31 = v88;
LABEL_31:

          v22 = v41;
          v33 = v95;
        }

LABEL_33:
        if (++v33 == v31)
        {
          v31 = [v29 countByEnumeratingWithState:&v105 objects:v118 count:16];
          v25 = v92;
          v6 = v93;
          v28 = v97;
          if (v31)
          {
            goto LABEL_5;
          }

          goto LABEL_35;
        }
      }

      v95 = v33;
      v50 = v32;
      v51 = ([v34 options] >> 4) & 1;
      v52 = [v34 brushStroke];
      v53 = [v52 ciImageTiled:0 closed:1 pressureMode:1 filled:v51];
      buf = v119;
      v54 = [v53 imageByApplyingTransform:&buf];

      if ([v34 options])
      {
        v56 = [MEMORY[0x1E695F658] whiteImage];
        [v54 extent];
        v55 = [v56 imageByCroppingToRect:?];

        v39 = 0;
        v54 = v56;
      }

      else
      {
        v104 = 0;
        v55 = v97[2](v97, v54, v34, &v104);
        v39 = v104;
      }

      if (!v55)
      {
        [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to apply exclusion mask" object:v34 underlyingError:v39];
        *v91 = v25 = v92;
        v28 = v97;
        v6 = v93;
        v59 = v94;
LABEL_40:

        v57 = 0;
        goto LABEL_41;
      }

      obj = v55;
      v41 = [PIInpaintRendering maskByAddingMask:v55 toMask:v22];
      v29 = v94;
      v32 = v50;
      goto LABEL_31;
    }

LABEL_35:

    v22 = v22;
    v57 = v22;
LABEL_41:
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

id __44__PIInpaintCombinedMaskNode__evaluateImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [*(a1 + 40) maskImageForIdentifier:v5 error:a3];
    v8 = *(a1 + 64);
    v10[0] = *(a1 + 48);
    v10[1] = v8;
    v10[2] = *(a1 + 80);
    v6 = [v7 imageByApplyingTransform:v10];

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

id __44__PIInpaintCombinedMaskNode__evaluateImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 exclusionMaskIdentifiers];
  v8 = [v7 count];

  v9 = *(a1 + 40);
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
LABEL_3:
      v10 = [MEMORY[0x1E695F658] emptyImage];
      goto LABEL_21;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v6;
  v11 = [v6 exclusionMaskIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = (*(*(a1 + 32) + 16))();
      if (!v16)
      {

        v10 = 0;
        goto LABEL_20;
      }

      v17 = v16;
      v18 = *(a1 + 40);
      if ((v18 & 4) != 0)
      {
        break;
      }

      if ((v18 & 8) != 0)
      {
        v19 = [PIInpaintRendering maskByRemovingMask:v16 fromMask:v5];
LABEL_15:
        v20 = v19;

        v5 = v20;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    v19 = [PIInpaintRendering maskByAddingMask:v16 toMask:v5];
    goto LABEL_15;
  }

LABEL_18:

  v5 = v5;
  v10 = v5;
LABEL_20:
  v6 = v22;
LABEL_21:

  return v10;
}

- (id)_evaluateImageProperties:(id *)a3
{
  v4 = [(PIInpaintCombinedMaskNode *)self inputNode];
  v5 = [v4 imageProperties:a3];

  return v5;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v4 = [(PIInpaintCombinedMaskNode *)self inputNode];
  v5 = [v4 outputImageGeometry:a3];

  return v5;
}

- (id)maskImageForIdentifier:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v18 = NUAssertLogger_6299();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "maskIdentifier != nil"];
      *buf = 138543362;
      v42 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_6299();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v31 = dispatch_get_specific(*v20);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v20 = [v32 callStackSymbols];
        v34 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v34;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v20;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!a4)
  {
    v25 = NUAssertLogger_6299();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_6299();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        v29 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v42 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v28)
    {
      v35 = dispatch_get_specific(*v20);
      v36 = MEMORY[0x1E696AF00];
      v37 = v35;
      v38 = [v36 callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v42 = v35;
      v43 = 2114;
      v44 = v39;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_27:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(NURenderNode *)self inputs];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v40 = 0;
    v10 = [v9 outputImage:&v40];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = MEMORY[0x1E69B3A48];
      v14 = v40;
      v15 = [v13 errorWithCode:1 reason:@"Failed to get mask image" object:v9 underlyingError:v14];
      v16 = v15;

      *a4 = v15;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Missing mask input" object:v7];
    *a4 = v11 = 0;
  }

  return v11;
}

- (unint64_t)mode
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"mode"];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (PIInpaintCombinedMaskNode)initWithSettings:(id)a3 inputs:(id)a4 mode:(unint64_t)a5
{
  v8 = a4;
  v9 = [a3 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v11;

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v12 setObject:v13 forKeyedSubscript:@"mode"];

  v16.receiver = self;
  v16.super_class = PIInpaintCombinedMaskNode;
  v14 = [(NURenderNode *)&v16 initWithSettings:v12 inputs:v8];

  return v14;
}

- (PIInpaintCombinedMaskNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
  }
}

@end