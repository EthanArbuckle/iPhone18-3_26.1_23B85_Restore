@interface VUIDebugMetricsEventValidator
+ (id)removeGladiatorPrefix:(id)prefix;
+ (id)validationResults:(id)results fromIndex:(unint64_t)index;
+ (void)validateEvents:(id)events forRuleset:(id)ruleset withCompletion:(id)completion;
@end

@implementation VUIDebugMetricsEventValidator

+ (void)validateEvents:(id)events forRuleset:(id)ruleset withCompletion:(id)completion
{
  v65[2] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  rulesetCopy = ruleset;
  completionCopy = completion;
  v9 = [rulesetCopy hasPrefix:@"com.apple.amp.ae.validator.manifest"];
  v10 = objc_alloc(MEMORY[0x1E695DFF8]);
  v11 = [@"https://ae-validator-service.amp.apple.com" stringByAppendingString:@"/v1/validate"];
  v12 = [v10 initWithString:v11];

  v13 = objc_alloc_init(MEMORY[0x1E696AD68]);
  [v13 setHTTPMethod:@"POST"];
  [v13 addValue:@"application/json" forHTTPHeaderField:@"accept"];
  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multipart/form-data boundary=%@", @"----------V2ymHFg03ehbqgZCaKO6jy"];;
  [v13 setValue:? forHTTPHeaderField:?];
  v52 = v13;
  [v13 setURL:v12];
  v14 = MEMORY[0x1E696ACB0];
  v64[0] = @"events";
  v64[1] = @"postTime";
  v65[0] = eventsCopy;
  v15 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v18 = [v15 numberWithLong:v17];
  v65[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v62 = 0;
  v20 = [v14 dataWithJSONObject:v19 options:1 error:&v62];
  v21 = v62;

  if (v20)
  {
    v48 = v21;
    v49 = v12;
    v50 = eventsCopy;
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:4];
    NSLog(&cfstr_JsonStringForG.isa, v22);

    data = [MEMORY[0x1E695DF88] data];
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25 = @"ruleset";
    if (v9)
    {
      v25 = @"manifest";
    }

    v47 = v25;
    [v24 setObject:rulesetCopy forKey:?];
    [v24 setObject:v20 forKey:@"figarojson"];
    [v24 setObject:@"false" forKey:@"singleResult"];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v54 = v24;
    obj = [v24 allKeys];
    v26 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v58 + 1) + 8 * i);
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@\r\n", @"----------V2ymHFg03ehbqgZCaKO6jy"];
          v32 = [v31 dataUsingEncoding:4];
          [data appendData:v32];

          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Content-Disposition: form-data name=%@\r\n\r\n", v30];;
          v34 = [v33 dataUsingEncoding:4];
          [data appendData:v34];

          if ([v30 isEqualToString:@"figarojson"])
          {
            [data appendData:v20];
          }

          else
          {
            v35 = MEMORY[0x1E696AEC0];
            v36 = [v54 objectForKey:v30];
            v37 = [v35 stringWithFormat:@"%@\r\n", v36];
            v38 = [v37 dataUsingEncoding:4];
            [data appendData:v38];
          }
        }

        v27 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v27);
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\r\n--%@--\r\n", @"----------V2ymHFg03ehbqgZCaKO6jy"];
    v40 = [v39 dataUsingEncoding:4];
    [data appendData:v40];

    v41 = v52;
    [v52 setHTTPBody:data];
    v42 = MEMORY[0x1E696AF78];
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v44 = [v42 sessionWithConfiguration:defaultSessionConfiguration];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __74__VUIDebugMetricsEventValidator_validateEvents_forRuleset_withCompletion___block_invoke;
    v56[3] = &unk_1E872E2D8;
    v45 = completionCopy;
    v57 = completionCopy;
    v46 = [v44 dataTaskWithRequest:v52 completionHandler:v56];
    [v46 resume];

    eventsCopy = v50;
    v21 = v48;
    v12 = v49;
  }

  else
  {
    NSLog(&cfstr_Nsjsonserializ.isa, v21);
    v41 = v52;
    v45 = completionCopy;
  }
}

void __74__VUIDebugMetricsEventValidator_validateEvents_forRuleset_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v9 = [a4 userInfo];
    v4 = [v9 description];
    NSLog(&cfstr_ErrorInGladiat.isa, v4);
  }

  else
  {
    v10 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:&v10];
    v7 = v10;
    v8 = v7;
    if (v7)
    {
      NSLog(&cfstr_ErrorParsingGl.isa, v7);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

+ (id)validationResults:(id)results fromIndex:(unint64_t)index
{
  v80[3] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = MEMORY[0x1E695DF90];
  v79[0] = @"failedRulesets";
  array = [MEMORY[0x1E695DF70] array];
  v80[0] = array;
  v79[1] = @"passedRulesets";
  array2 = [MEMORY[0x1E695DF70] array];
  v80[1] = array2;
  v79[2] = @"filteredRulesets";
  array3 = [MEMORY[0x1E695DF70] array];
  v80[2] = array3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v46 = [v6 dictionaryWithDictionary:v10];

  v11 = 0x1E695D000uLL;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = resultsCopy;
  v47 = [v12 countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v47)
  {
    v13 = @"ruleResults";
    v44 = *v62;
    v45 = v12;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(v12);
        }

        v49 = *(*(&v61 + 1) + 8 * i);
        v15 = [v12 valueForKey:?];
        v16 = [v15 valueForKey:v13];

        array4 = [MEMORY[0x1E695DF70] array];
        array5 = [MEMORY[0x1E695DF70] array];
        array6 = [MEMORY[0x1E695DF70] array];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v57 objects:v77 count:16];
        if (v19)
        {
          v20 = v19;
          v53 = array4;
          obj = v18;
          v48 = i;
          v52 = 0;
          v55 = *v58;
          v56 = 0;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v58 != v55)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v57 + 1) + 8 * j);
              v23 = [v22 valueForKey:@"ruleLabel"];
              v24 = [v22 valueForKey:v13];
              v25 = [v24 objectAtIndexedSubscript:index];
              if ([v25 isEqualToString:@"OK"])
              {
                v75 = @"ruleLabel";
                v76 = v23;
                v26 = [*(v11 + 3872) dictionaryWithObjects:&v76 forKeys:&v75 count:1];
                [v53 addObject:v26];

                ++v56;
              }

              else if ([v25 isEqualToString:@"FILTERED"])
              {
                v73 = @"ruleLabel";
                v74 = v23;
                v27 = [*(v11 + 3872) dictionaryWithObjects:&v74 forKeys:&v73 count:1];
                [array5 addObject:v27];
              }

              else
              {
                v71[0] = @"ruleLabel";
                v71[1] = @"ruleResult";
                v72[0] = v23;
                v72[1] = v25;
                v71[2] = @"onFailMapList";
                v28 = [v22 valueForKey:?];
                v72[2] = v28;
                [*(v11 + 3872) dictionaryWithObjects:v72 forKeys:v71 count:3];
                v29 = v13;
                v30 = v11;
                v32 = v31 = index;
                [array6 addObject:v32];

                index = v31;
                v11 = v30;
                v13 = v29;

                ++v52;
              }
            }

            v20 = [obj countByEnumeratingWithState:&v57 objects:v77 count:16];
          }

          while (v20);
          v33 = obj;

          if (v52)
          {
            v34 = [v46 valueForKey:@"failedRulesets"];
            v69[0] = @"ruleset";
            v69[1] = @"failedRules";
            v35 = array6;
            v70[0] = v49;
            v70[1] = array6;
            v69[2] = @"passedRules";
            v69[3] = @"filteredRules";
            array4 = v53;
            v36 = array5;
            v70[2] = v53;
            v70[3] = array5;
            v37 = [*(v11 + 3872) dictionaryWithObjects:v70 forKeys:v69 count:4];
            [v34 addObject:v37];
            i = v48;
            goto LABEL_25;
          }

          i = v48;
          array4 = v53;
          v35 = array6;
          v36 = array5;
          if (v56)
          {
            v34 = [v46 valueForKey:@"passedRulesets"];
            v65[0] = @"ruleset";
            v65[1] = @"failedRules";
            v66[0] = v49;
            v66[1] = array6;
            v65[2] = @"passedRules";
            v65[3] = @"filteredRules";
            v66[2] = v53;
            v66[3] = array5;
            v38 = *(v11 + 3872);
            v39 = v66;
            v40 = v65;
            v41 = 4;
            goto LABEL_24;
          }
        }

        else
        {

          v35 = array6;
          v36 = array5;
          v33 = v18;
        }

        v34 = [v46 valueForKey:@"filteredRulesets"];
        v67[0] = @"ruleset";
        v67[1] = @"failedRules";
        v68[0] = v49;
        v68[1] = v35;
        v67[2] = @"filteredRules";
        v68[2] = v36;
        v38 = *(v11 + 3872);
        v39 = v68;
        v40 = v67;
        v41 = 3;
LABEL_24:
        v37 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:v41];
        [v34 addObject:v37];
LABEL_25:

        v12 = v45;
      }

      v47 = [v45 countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v47);
  }

  v42 = [v46 copy];

  return v42;
}

+ (id)removeGladiatorPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [prefixCopy rangeOfString:@"com.apple.amp.metrics.validator."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = prefixCopy;
  }

  else
  {
    v6 = [prefixCopy stringByReplacingCharactersInRange:v4 withString:{v5, &stru_1F5DB25C0}];
  }

  v7 = v6;

  return v7;
}

@end