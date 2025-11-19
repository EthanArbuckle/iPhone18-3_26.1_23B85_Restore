@interface CRFormFieldInfoLogger
+ (id)parseLog:(id)a3;
+ (void)logFieldInfo:(id)a3;
@end

@implementation CRFormFieldInfoLogger

+ (id)parseLog:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = v3;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
  v6 = [v4 initWithData:v5 encoding:4];

  v36 = v6;
  v7 = [v6 componentsSeparatedByString:@"\n"];
  v8 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    v39 = *v42;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        if ([v13 hasPrefix:@"CTCDataField: "])
        {
          v14 = [v13 substringFromIndex:{objc_msgSend(@"CTCDataField: ", "length")}];
          v15 = [v14 dataUsingEncoding:4];

          v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:0];
          v17 = [v16 objectForKeyedSubscript:@"imagePath"];
          v18 = [v8 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v47[0] = @"fields";
            v19 = MEMORY[0x1E695E0F0];
            v20 = [MEMORY[0x1E695E0F0] mutableCopy];
            v47[1] = @"textRegions";
            v48[0] = v20;
            v21 = [v19 mutableCopy];
            v48[1] = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
            v23 = [v22 mutableCopy];
            [v8 setObject:v23 forKeyedSubscript:v17];

            v11 = v39;
          }

          v24 = [v16 objectForKeyedSubscript:@"imagePath"];
          v25 = [v8 objectForKeyedSubscript:v24];
          v26 = [v25 objectForKeyedSubscript:@"fields"];

          [v26 addObject:v16];
        }

        else
        {
          if (![v13 hasPrefix:@"CTCDataLabel: "])
          {
            goto LABEL_15;
          }

          v27 = [v13 substringFromIndex:{objc_msgSend(@"CTCDataLabel: ", "length")}];
          v15 = [v27 dataUsingEncoding:4];

          v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:0];
          v17 = [v16 objectForKeyedSubscript:@"imagePath"];
          v28 = [v8 objectForKeyedSubscript:v17];

          if (!v28)
          {
            v45[0] = @"fields";
            v29 = MEMORY[0x1E695E0F0];
            v30 = [MEMORY[0x1E695E0F0] mutableCopy];
            v45[1] = @"textRegions";
            v46[0] = v30;
            v31 = [v29 mutableCopy];
            v46[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
            v33 = [v32 mutableCopy];
            [v8 setObject:v33 forKeyedSubscript:v17];

            v11 = v39;
          }

          v26 = [v16 objectForKeyedSubscript:@"textRegions"];
          v34 = [v8 objectForKeyedSubscript:v17];
          [v34 setObject:v26 forKeyedSubscript:@"textRegions"];

          v10 = v38;
        }

LABEL_15:
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v10);
  }

  return v8;
}

+ (void)logFieldInfo:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_MergedGlobals_32 != -1)
  {
    dispatch_once(&_MergedGlobals_32, &__block_literal_global_27);
  }

  v4 = [v3 objectForKeyedSubscript:@"imagePath"];
  v5 = v4;
  v6 = &stru_1F2BB4348;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v3 objectForKeyedSubscript:@"index"];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setValue:v7 forKey:@"imagePath"];
    v10 = [v3 objectForKeyedSubscript:@"textContentType"];
    [v9 setValue:v10 forKey:@"reference"];

    v11 = [v3 objectForKeyedSubscript:@"textContentType"];
    [v9 setValue:v11 forKey:@"predicted"];

    v12 = [v3 objectForKeyedSubscript:@"text"];
    [v9 setValue:v12 forKey:@"text"];

    [v9 setValue:&stru_1F2BB4348 forKey:@"keyword"];
    v13 = [v3 objectForKeyedSubscript:@"locale"];
    [v9 setValue:v13 forKey:@"locale"];

    [v9 setValue:&stru_1F2BB4348 forKey:@"correctLabelText"];
    v14 = [v3 objectForKeyedSubscript:@"index"];
    [v9 setValue:v14 forKey:@"index"];

    v15 = [v3 objectForKeyedSubscript:@"matchedResult"];
    [v9 setValue:v15 forKey:@"matchedResult"];

    v16 = [v3 objectForKeyedSubscript:@"x"];
    [v9 setValue:v16 forKey:@"x"];

    v17 = [v3 objectForKeyedSubscript:@"y"];
    [v9 setValue:v17 forKey:@"y"];

    v18 = [v3 objectForKeyedSubscript:@"width"];
    [v9 setValue:v18 forKey:@"width"];

    v19 = [v3 objectForKeyedSubscript:@"height"];
    [v9 setValue:v19 forKey:@"height"];

    v20 = [v3 objectForKeyedSubscript:@"widthBounded"];
    [v9 setValue:v20 forKey:@"widthBounded"];

    v21 = [v3 objectForKeyedSubscript:@"heightBounded"];
    [v9 setValue:v21 forKey:@"heightBounded"];

    v22 = [@"CTCDataField: " UTF8String];
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:0];
    v25 = [v23 initWithData:v24 encoding:4];
    printf("%s%s\n", v22, [v25 UTF8String]);
  }

  if (([qword_1ED960230 containsObject:v7] & 1) == 0)
  {
    [qword_1ED960230 addObject:v7];
    v32[0] = @"imagePath";
    v32[1] = @"textRegions";
    v33[0] = v7;
    v26 = [v3 objectForKeyedSubscript:?];
    v33[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v28 = [@"CTCDataLabel: " UTF8String];
    v29 = objc_alloc(MEMORY[0x1E696AEC0]);
    v30 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v27 options:0 error:0];
    v31 = [v29 initWithData:v30 encoding:4];
    printf("%s%s\n", v28, [v31 UTF8String]);
  }
}

void __38__CRFormFieldInfoLogger_logFieldInfo___block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED960230;
  qword_1ED960230 = v0;
}

@end