@interface SCMLImageModelThresholds
+ (id)_createThresholdDictionaryWithError:(id *)a3;
+ (id)_validateScoreThresholdsJson:(id)a3 error:(id *)a4;
+ (id)instance;
- (SCMLImageModelThresholds)init;
- (double)thresholdForLabel:(id)a3 classificationMode:(unint64_t)a4 modelVersion:(id)a5 error:(id *)a6;
@end

@implementation SCMLImageModelThresholds

+ (id)_validateScoreThresholdsJson:(id)a3 error:(id *)a4
{
  v5 = v46[14] = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    goto LABEL_38;
  }

  {
    v46[0] = @"1.5.0";
    v46[1] = @"1.6.0";
    v46[2] = @"1.6.1";
    v46[3] = @"1.7.0";
    v46[4] = @"1.7.1";
    v46[5] = @"1.7.2";
    v46[6] = @"1.7.3";
    v46[7] = @"1.7.4";
    v46[8] = @"1.7.5";
    v46[9] = @"1.7.6";
    v46[10] = @"1.7.7";
    v46[11] = @"1.7.8";
    v46[12] = @"1.7.9";
    v46[13] = @"1.8.0";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:14];
  }

  {
LABEL_38:
    v19 = 0;
    goto LABEL_39;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v23 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v23)
  {
    goto LABEL_34;
  }

  v25 = *v40;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v40 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v6 = [obj objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
      v28 = objc_claimAutoreleasedReturnValue();

      if (!v28)
      {

LABEL_37:
        goto LABEL_38;
      }

      {

        goto LABEL_37;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v28;
      v22 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v22)
      {
        v24 = *v36;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(v30);
            }

            v7 = [v30 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * j)];
            v8 = objc_claimAutoreleasedReturnValue();

            {
              v13 = v8;
LABEL_36:

              goto LABEL_37;
            }

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v13 = v8;
            v14 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v14)
            {
              v15 = *v32;
              while (2)
              {
                for (k = 0; k != v14; ++k)
                {
                  if (*v32 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = [v13 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * k)];
                  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v18 = v17;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  if (!v18)
                  {

                    goto LABEL_36;
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }

          v22 = [v30 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v23 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v19 = obj;
LABEL_39:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_createThresholdDictionaryWithError:(id *)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v5 resourcePath];
  v24[0] = v7;
  v24[1] = @"Models/ImageModel/operating_thresholds_versioned.json";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v9 = [v6 fileURLWithPathComponents:v8];

  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9];
  v23 = 0;
  v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v23];
  v12 = v23;
  if (v11)
  {
    v13 = [a1 _validateScoreThresholdsJson:v11 error:a3];
  }

  else
  {
    v14 = +[SCMLLog handler];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SCMLImageModelThresholds *)v12 _createThresholdDictionaryWithError:v14, v15, v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SCMLImageModelThresholds_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[SCMLImageModelThresholds instance]::onceToken != -1)
  {
    dispatch_once(&+[SCMLImageModelThresholds instance]::onceToken, block);
  }

  v2 = +[SCMLImageModelThresholds instance]::sharedCoder;

  return v2;
}

uint64_t __36__SCMLImageModelThresholds_instance__block_invoke(uint64_t a1)
{
  +[SCMLImageModelThresholds instance]::sharedCoder = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (SCMLImageModelThresholds)init
{
  v8.receiver = self;
  v8.super_class = SCMLImageModelThresholds;
  v2 = [(SCMLImageModelThresholds *)&v8 init];
  if (v2)
  {
    v7 = 0;
    v3 = [SCMLImageModelThresholds _createThresholdDictionaryWithError:&v7];
    v4 = v7;
    [(SCMLImageModelThresholds *)v2 set_thresholdDict:v3];

    if (v4)
    {
      v5 = [v4 copy];
      [(SCMLImageModelThresholds *)v2 set_loadError:v5];
    }

    else
    {
      [(SCMLImageModelThresholds *)v2 set_loadError:0];
    }
  }

  return v2;
}

- (double)thresholdForLabel:(id)a3 classificationMode:(unint64_t)a4 modelVersion:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(SCMLImageModelThresholds *)self _loadError];

  if (!v12)
  {
    if ([v10 hasPrefix:@"otgx_"])
    {
      v15 = +[SCMLImageLabelCoder instance];
      v16 = [v15 decodeFromP1:v10];

      v10 = v16;
    }

    v17 = [(SCMLImageModelThresholds *)self _thresholdDict];
    v14 = [v17 objectForKey:v11];

    if (v14)
    {
      v18 = +[SCMLImageLabelCoder instance];
      v19 = [v18 encodeToHex:v10];

      v20 = [v14 objectForKey:v19];
      v21 = v20;
      if (v20)
        v22 = {;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v24 = [v22 objectForKeyedSubscript:v23];

        v25 = [(_anonymous_namespace_ *)v21 objectForKey:v24];
        v26 = v25;
        if (v25)
        {
          [v25 doubleValue];
          v13 = v27;
        }

        else
        {
          v40 = +[SCMLLog handler];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [SCMLImageModelThresholds thresholdForLabel:a4 classificationMode:v40 modelVersion:? error:?];
          }

          v13 = 1.1;
        }
      }

      else
      {
        v24 = +[SCMLLog handler];
        v13 = 1.1;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(SCMLImageModelThresholds *)v10 thresholdForLabel:v24 classificationMode:v34 modelVersion:v35 error:v36, v37, v38, v39];
        }
      }
    }

    else
    {
      v19 = +[SCMLLog handler];
      v13 = 1.1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(SCMLImageModelThresholds *)v11 thresholdForLabel:v19 classificationMode:v28 modelVersion:v29 error:v30, v31, v32, v33];
      }
    }

    goto LABEL_20;
  }

  v13 = 1.1;
  if (a6)
  {
    v14 = [(SCMLImageModelThresholds *)self _loadError];
    *a6 = [v14 copy];
LABEL_20:
  }

  return v13;
}

+ (void)_createThresholdDictionaryWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Failed to load json: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)thresholdForLabel:(int)a1 classificationMode:(NSObject *)a2 modelVersion:error:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "Unsupported classification mode: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)thresholdForLabel:(uint64_t)a3 classificationMode:(uint64_t)a4 modelVersion:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Unsupported classification label: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)thresholdForLabel:(uint64_t)a3 classificationMode:(uint64_t)a4 modelVersion:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Unsupported model version: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end