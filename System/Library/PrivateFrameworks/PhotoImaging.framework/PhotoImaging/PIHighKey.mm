@interface PIHighKey
+ (id)kernel;
- (id)outputImage;
@end

@implementation PIHighKey

+ (id)kernel
{
  if (kernel_onceToken != -1)
  {
    dispatch_once(&kernel_onceToken, &__block_literal_global_1299);
  }

  v3 = kernel_kernel;

  return v3;
}

void __19__PIHighKey_kernel__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 highKey(__sample im, float str)\n{\nvec3 neg = min(im.rgb, 0.0)\nvec3 pos = max(im.rgb, 1.0) - 1.0;\nim = clamp(im, 0.0, 1.0);\nvec4 im2 = 1.0-((im-1.0)*(im-1.0));\nim2 = sqrt(im2);\nfloat y = dot(im.rgb, vec3(.333333));\nfloat y2 = sqrt(1.0-(y-1.0)*(y-1.0));\ny2 = mix(y2, smoothstep(0.0, 1.0, y2), 0.5);\nvec4 im3 = (y>0) ? im*y2/y : vec4(0.0, 0.0, 0.0, 1.0);\nim3 = mix(im3, im2, .7*sqrt(y2));\nim3 = mix(im, im3, sqrt(y));\nim.rgb = mix(im.rgb, im3.rgb, str) + pos + neg;\nreturn im;\n}\n\n"}];;
  v1 = kernel_kernel;
  kernel_kernel = v0;

  if (!kernel_kernel)
  {
    v2 = NUAssertLogger_1303();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high key kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_1303();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(*v4);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        v13 = [v11 callStackSymbols];
        v14 = [v13 componentsJoinedByString:@"\n"];
        v15 = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v14;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v15, 0x16u);
      }
    }

    else if (v7)
    {
      v8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [v8 componentsJoinedByString:@"\n"];
      v15 = 138543362;
      v16 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v15, 0xCu);
    }

    _NUAssertFailHandler();
  }
}

- (id)outputImage
{
  v43 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    v16 = NUAssertLogger_1303();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v40 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_1303();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v29 = dispatch_get_specific(*v18);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v18 = [v30 callStackSymbols];
        v32 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v32;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v18;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!self->inputStrength)
  {
    v23 = NUAssertLogger_1303();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputStrength cannot be nil"];
      *buf = 138543362;
      v40 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_1303();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v40 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v26)
    {
      v33 = dispatch_get_specific(*v18);
      v34 = MEMORY[0x1E696AF00];
      v35 = v33;
      v36 = [v34 callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v40 = v33;
      v41 = 2114;
      v42 = v37;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v3 = [objc_opt_class() kernel];
  [(CIImage *)self->inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  inputStrength = self->inputStrength;
  v38[0] = self->inputImage;
  v38[1] = inputStrength;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v14 = [v3 applyWithExtent:v13 arguments:{v5, v7, v9, v11}];

  return v14;
}

@end