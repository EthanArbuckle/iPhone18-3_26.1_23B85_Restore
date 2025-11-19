@interface PIParallaxColorAnalysis
+ (id)colorsFromDictionary:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)loadFromContentsDictionary:(id)a3 error:(id *)a4;
- (PIParallaxColorAnalysis)init;
- (id)contentsDictionary;
@end

@implementation PIParallaxColorAnalysis

- (id)contentsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PIParallaxColorAnalysis version](self, "version")}];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = MEMORY[0x1E696AD98];
  [(PIParallaxColorAnalysis *)self luminance];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"luminance"];

  v7 = MEMORY[0x1E696AD98];
  [(PIParallaxColorAnalysis *)self foregroundLuminance];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"foregroundLuminance"];

  v9 = MEMORY[0x1E696AD98];
  [(PIParallaxColorAnalysis *)self backgroundLuminance];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"backgroundLuminance"];

  v11 = [(PIParallaxColorAnalysis *)self colors];
  v12 = PFMap();
  [v3 setObject:v12 forKeyedSubscript:@"colors"];

  v13 = [(PIParallaxColorAnalysis *)self foregroundColors];
  v14 = PFMap();
  [v3 setObject:v14 forKeyedSubscript:@"foregroundColors"];

  v15 = [(PIParallaxColorAnalysis *)self backgroundColors];
  v16 = PFMap();
  [v3 setObject:v16 forKeyedSubscript:@"backgroundColors"];

  v17 = [(PIParallaxColorAnalysis *)self clockAreaColors];
  v18 = PFMap();
  [v3 setObject:v18 forKeyedSubscript:@"clockAreaColors"];

  return v3;
}

- (PIParallaxColorAnalysis)init
{
  v3.receiver = self;
  v3.super_class = PIParallaxColorAnalysis;
  result = [(PIParallaxColorAnalysis *)&v3 init];
  result->_version = 3;
  return result;
}

+ (id)colorsFromDictionary:(id)a3 key:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKeyedSubscript:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v18 = v6;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v14 = [MEMORY[0x1E69C0750] colorWithRGBValues:v13 error:&v19];
        v15 = v19;
        if (!v14)
        {
          *a5 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize color values" object:v13 underlyingError:v15];

          goto LABEL_15;
        }

        [v7 addObject:v14];

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v6 = v18;
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      *a5 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid color values" object:v13];
LABEL_15:

      v16 = 0;
      v6 = v18;
      goto LABEL_16;
    }

LABEL_11:

    v16 = v7;
LABEL_16:
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Invalid color array" object:v6];
    *a5 = v16 = 0;
  }

  return v16;
}

+ (id)loadFromContentsDictionary:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v24 = NUAssertLogger_5651();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v47 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5651();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v37 = dispatch_get_specific(*v26);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v26 = [v38 callStackSymbols];
        v40 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = _NUAssertFailHandler();
    goto LABEL_45;
  }

  if (!a4)
  {
    v31 = NUAssertLogger_5651();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5651();
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        v35 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v47 = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_47;
    }

LABEL_45:
    if (v34)
    {
      v41 = dispatch_get_specific(*v26);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      v44 = [v42 callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v47 = v41;
      v48 = 2114;
      v49 = v45;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_47:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = objc_alloc_init(PIParallaxColorAnalysis);
  v9 = [v7 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid version number" object:v9];
    goto LABEL_7;
  }

  if ([v9 integerValue] >= 4)
  {
    v10 = [MEMORY[0x1E69B3A48] unsupportedError:@"Incompatible color analysis version" object:v9];
LABEL_7:
    v11 = 0;
    *a4 = v10;
    goto LABEL_21;
  }

  -[PIParallaxColorAnalysis setVersion:](v8, "setVersion:", [v9 integerValue]);
  v12 = [v7 objectForKeyedSubscript:@"foregroundLuminance"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 floatValue];
    [(PIParallaxColorAnalysis *)v8 setForegroundLuminance:v13];
    v14 = [v7 objectForKeyedSubscript:@"backgroundLuminance"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(PIParallaxColorAnalysis *)v8 setBackgroundLuminance:v15];
      v16 = [a1 colorsFromDictionary:v7 key:@"foregroundColors" error:a4];
      if (v16)
      {
        v17 = v16;
        [(PIParallaxColorAnalysis *)v8 setForegroundColors:v16];
        v18 = [a1 colorsFromDictionary:v7 key:@"backgroundColors" error:a4];

        if (v18)
        {
          [(PIParallaxColorAnalysis *)v8 setBackgroundColors:v18];
          if ([(PIParallaxColorAnalysis *)v8 version]< 2)
          {
            [(PIParallaxColorAnalysis *)v8 backgroundLuminance];
            [(PIParallaxColorAnalysis *)v8 setLuminance:?];
            v22 = [(PIParallaxColorAnalysis *)v8 backgroundColors];
            [(PIParallaxColorAnalysis *)v8 setColors:v22];

            v12 = v14;
          }

          else
          {
            v12 = [v7 objectForKeyedSubscript:@"luminance"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [MEMORY[0x1E69B3A48] invalidError:@"Invalid luminance value" object:v12];
              *a4 = v11 = 0;
              goto LABEL_31;
            }

            [v12 floatValue];
            [(PIParallaxColorAnalysis *)v8 setLuminance:v19];
            v20 = [a1 colorsFromDictionary:v7 key:@"colors" error:a4];

            if (!v20)
            {
LABEL_27:
              v11 = 0;
              goto LABEL_20;
            }

            [(PIParallaxColorAnalysis *)v8 setColors:v20];
            v18 = v20;
          }

          if ([(PIParallaxColorAnalysis *)v8 version]< 3)
          {
            v23 = MEMORY[0x1E695E0F0];
          }

          else
          {
            v23 = [a1 colorsFromDictionary:v7 key:@"clockAreaColors" error:a4];

            v18 = v23;
            if (!v23)
            {
              goto LABEL_27;
            }
          }

          [(PIParallaxColorAnalysis *)v8 setClockAreaColors:v23];
          v11 = v8;
LABEL_31:

          goto LABEL_20;
        }
      }

      v11 = 0;
    }

    else
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Invalid luminance value" object:v14];
      *a4 = v11 = 0;
    }

    v12 = v14;
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Invalid luminance value" object:v12];
    *a4 = v11 = 0;
  }

LABEL_20:

LABEL_21:

  return v11;
}

@end