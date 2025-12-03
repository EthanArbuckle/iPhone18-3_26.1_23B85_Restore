@interface PIParallaxColorAnalysis
+ (id)colorsFromDictionary:(id)dictionary key:(id)key error:(id *)error;
+ (id)loadFromContentsDictionary:(id)dictionary error:(id *)error;
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

  colors = [(PIParallaxColorAnalysis *)self colors];
  v12 = PFMap();
  [v3 setObject:v12 forKeyedSubscript:@"colors"];

  foregroundColors = [(PIParallaxColorAnalysis *)self foregroundColors];
  v14 = PFMap();
  [v3 setObject:v14 forKeyedSubscript:@"foregroundColors"];

  backgroundColors = [(PIParallaxColorAnalysis *)self backgroundColors];
  v16 = PFMap();
  [v3 setObject:v16 forKeyedSubscript:@"backgroundColors"];

  clockAreaColors = [(PIParallaxColorAnalysis *)self clockAreaColors];
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

+ (id)colorsFromDictionary:(id)dictionary key:(id)key error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:key];
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
          *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize color values" object:v13 underlyingError:v15];

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

      *error = [MEMORY[0x1E69B3A48] invalidError:@"Invalid color values" object:v13];
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
    *error = v16 = 0;
  }

  return v16;
}

+ (id)loadFromContentsDictionary:(id)dictionary error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v24 = NUAssertLogger_5651();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v47 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5651();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v37 = dispatch_get_specific(*callStackSymbols);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = _NUAssertFailHandler();
    goto LABEL_45;
  }

  if (!error)
  {
    v31 = NUAssertLogger_5651();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5651();
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v47 = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_47;
    }

LABEL_45:
    if (v34)
    {
      v41 = dispatch_get_specific(*callStackSymbols);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      callStackSymbols4 = [v42 callStackSymbols];
      v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v47 = v41;
      v48 = 2114;
      v49 = v45;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_47:

    _NUAssertFailHandler();
  }

  v7 = dictionaryCopy;
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
    *error = v10;
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
      v16 = [self colorsFromDictionary:v7 key:@"foregroundColors" error:error];
      if (v16)
      {
        v17 = v16;
        [(PIParallaxColorAnalysis *)v8 setForegroundColors:v16];
        v18 = [self colorsFromDictionary:v7 key:@"backgroundColors" error:error];

        if (v18)
        {
          [(PIParallaxColorAnalysis *)v8 setBackgroundColors:v18];
          if ([(PIParallaxColorAnalysis *)v8 version]< 2)
          {
            [(PIParallaxColorAnalysis *)v8 backgroundLuminance];
            [(PIParallaxColorAnalysis *)v8 setLuminance:?];
            backgroundColors = [(PIParallaxColorAnalysis *)v8 backgroundColors];
            [(PIParallaxColorAnalysis *)v8 setColors:backgroundColors];

            v12 = v14;
          }

          else
          {
            v12 = [v7 objectForKeyedSubscript:@"luminance"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [MEMORY[0x1E69B3A48] invalidError:@"Invalid luminance value" object:v12];
              *error = v11 = 0;
              goto LABEL_31;
            }

            [v12 floatValue];
            [(PIParallaxColorAnalysis *)v8 setLuminance:v19];
            v20 = [self colorsFromDictionary:v7 key:@"colors" error:error];

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
            v23 = [self colorsFromDictionary:v7 key:@"clockAreaColors" error:error];

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
      *error = v11 = 0;
    }

    v12 = v14;
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Invalid luminance value" object:v12];
    *error = v11 = 0;
  }

LABEL_20:

LABEL_21:

  return v11;
}

@end