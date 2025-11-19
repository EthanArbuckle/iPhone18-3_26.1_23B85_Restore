@interface PIInverseFakeBoost
+ (id)kernelFB0;
+ (id)kernelFB3;
@end

@implementation PIInverseFakeBoost

+ (id)kernelFB3
{
  if (kernelFB3_onceToken_93 != -1)
  {
    dispatch_once(&kernelFB3_onceToken_93, &__block_literal_global_95);
  }

  v3 = kernelFB3_kernel_92;

  return v3;
}

void __31__PIInverseFakeBoost_kernelFB3__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 inverseBoost3(__sample im, float boost, vec4 abcd, vec3 p0, vec3 p1) {\nfloat a = abcd.x\nfloat b = abcd.y;\nfloat c = abcd.z;\nfloat d = abcd.w;\nvec3 y = im.rgb;\nvec3 g = (d * y - b) / (a - c * y);\nfloat x0 = p0.x;\nfloat y0 = p0.y;\nfloat s0 = p0.z;\nfloat a0 = x0*x0;\nfloat c0 = x0 - y0/s0;\nfloat d0 = y0*y0/s0;\nvec3 g0 = (a0 * y) / (c0 * y + d0);\nvec3 l0 = (a0 / d0) * y;\ng0 = compare(y, l0, g0);\nfloat x1 = p1.x;\nfloat y1 = p1.y;\nfloat s1 = p1.z;\nfloat a1 = (1.f-x1)*(1.f-x1);\nfloat c1 = (1.f-x1) - (1.f-y1)/s1;\nfloat d1 = (1.f-y1)*(1.f-y1)/s1;\nvec3 g1 = 1.f - (a1 * (1.f - y)) / (c1 * (1.f - y) + d1);\nvec3 l1 = 1.f - (a1 / d1) * (1.f - y);\ng1 = compare(1.f - y, l1, g1);\ng = compare(y - p0.y, g0, compare(y - p1.y, g, g1));\nim.rgb = mix(im.rgb, g, boost);\nreturn im;\n}\n\n"}];;
  v1 = kernelFB3_kernel_92;
  kernelFB3_kernel_92 = v0;

  if (!kernelFB3_kernel_92)
  {
    v2 = NUAssertLogger_13971();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inverse boost kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_13971();
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

+ (id)kernelFB0
{
  if (kernelFB0_onceToken_86 != -1)
  {
    dispatch_once(&kernelFB0_onceToken_86, &__block_literal_global_88_14089);
  }

  v3 = kernelFB0_kernel_85;

  return v3;
}

void __31__PIInverseFakeBoost_kernelFB0__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 inverseBoostWithBoost(sampler image, float boost){\nvec4 im = sample(image, samplerCoord(image))\nvec4 orig = im;\nfloat n = 1.8;\nfloat kinv = 0.91803;\nvec3 pos = max(im.rgb, kinv);\nvec3 neg = min(im.rgb, 0.0);\nim.rgb = clamp(im.rgb, 0.0, kinv);\nneg *= .35714286;\nim.rgb = im.rgb/(n+1.0-(im.rgb*n)) + neg;\nim.r = pos.r > kinv ? 0.8 + 2.126286*(pos.r-kinv) : im.r;\nim.g = pos.g > kinv ? 0.8 + 2.126286*(pos.g-kinv) : im.g;\nim.b = pos.b > kinv ? 0.8 + 2.126286*(pos.b-kinv) : im.b;\nim.rgb = mix(orig.rgb, im.rgb, boost);\nreturn im;\n}\n\n"}];;
  v1 = kernelFB0_kernel_85;
  kernelFB0_kernel_85 = v0;

  if (!kernelFB0_kernel_85)
  {
    v2 = NUAssertLogger_13971();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inverse boost kernel is nil"];
      v15 = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_1C7694000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v15, 0xCu);
    }

    v4 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v6 = NUAssertLogger_13971();
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

@end