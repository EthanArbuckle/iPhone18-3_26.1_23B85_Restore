@interface CRFormFieldInfoLogger
+ (id)parseLog:(id)log;
+ (void)logFieldInfo:(id)info;
@end

@implementation CRFormFieldInfoLogger

+ (id)parseLog:(id)log
{
  v50 = *MEMORY[0x1E69E9840];
  logCopy = log;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v37 = logCopy;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:logCopy];
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

+ (void)logFieldInfo:(id)info
{
  v33[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (_MergedGlobals_32 != -1)
  {
    dispatch_once(&_MergedGlobals_32, &__block_literal_global_27);
  }

  v4 = [infoCopy objectForKeyedSubscript:@"imagePath"];
  v5 = v4;
  v6 = &stru_1F2BB4348;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [infoCopy objectForKeyedSubscript:@"index"];

  if (v8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setValue:v7 forKey:@"imagePath"];
    v10 = [infoCopy objectForKeyedSubscript:@"textContentType"];
    [dictionary setValue:v10 forKey:@"reference"];

    v11 = [infoCopy objectForKeyedSubscript:@"textContentType"];
    [dictionary setValue:v11 forKey:@"predicted"];

    v12 = [infoCopy objectForKeyedSubscript:@"text"];
    [dictionary setValue:v12 forKey:@"text"];

    [dictionary setValue:&stru_1F2BB4348 forKey:@"keyword"];
    v13 = [infoCopy objectForKeyedSubscript:@"locale"];
    [dictionary setValue:v13 forKey:@"locale"];

    [dictionary setValue:&stru_1F2BB4348 forKey:@"correctLabelText"];
    v14 = [infoCopy objectForKeyedSubscript:@"index"];
    [dictionary setValue:v14 forKey:@"index"];

    v15 = [infoCopy objectForKeyedSubscript:@"matchedResult"];
    [dictionary setValue:v15 forKey:@"matchedResult"];

    v16 = [infoCopy objectForKeyedSubscript:@"x"];
    [dictionary setValue:v16 forKey:@"x"];

    v17 = [infoCopy objectForKeyedSubscript:@"y"];
    [dictionary setValue:v17 forKey:@"y"];

    v18 = [infoCopy objectForKeyedSubscript:@"width"];
    [dictionary setValue:v18 forKey:@"width"];

    v19 = [infoCopy objectForKeyedSubscript:@"height"];
    [dictionary setValue:v19 forKey:@"height"];

    v20 = [infoCopy objectForKeyedSubscript:@"widthBounded"];
    [dictionary setValue:v20 forKey:@"widthBounded"];

    v21 = [infoCopy objectForKeyedSubscript:@"heightBounded"];
    [dictionary setValue:v21 forKey:@"heightBounded"];

    uTF8String = [@"CTCDataField: " UTF8String];
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];
    v25 = [v23 initWithData:v24 encoding:4];
    printf("%s%s\n", uTF8String, [v25 UTF8String]);
  }

  if (([qword_1ED960230 containsObject:v7] & 1) == 0)
  {
    [qword_1ED960230 addObject:v7];
    v32[0] = @"imagePath";
    v32[1] = @"textRegions";
    v33[0] = v7;
    v26 = [infoCopy objectForKeyedSubscript:?];
    v33[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    uTF8String2 = [@"CTCDataLabel: " UTF8String];
    v29 = objc_alloc(MEMORY[0x1E696AEC0]);
    v30 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v27 options:0 error:0];
    v31 = [v29 initWithData:v30 encoding:4];
    printf("%s%s\n", uTF8String2, [v31 UTF8String]);
  }
}

void __38__CRFormFieldInfoLogger_logFieldInfo___block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED960230;
  qword_1ED960230 = v0;
}

@end