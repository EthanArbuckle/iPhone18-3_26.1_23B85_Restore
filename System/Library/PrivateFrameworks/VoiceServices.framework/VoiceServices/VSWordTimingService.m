@interface VSWordTimingService
- (id)estimatedTTSWordTimingForText:(id)a3 withLanguage:(id)a4 voiceName:(id)a5;
- (id)timingInfosFrom:(id)a3 withText:(id)a4;
- (id)timingPlistForLanguage:(id)a3;
@end

@implementation VSWordTimingService

- (id)estimatedTTSWordTimingForText:(id)a3 withLanguage:(id)a4 voiceName:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(VSWordTimingService *)self timingPlistForLanguage:a4];
  if (v10)
  {
    v11 = v9;
    if (!v11 || ([v10 objectForKeyedSubscript:v11], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v13 = [v10 allKeys];
      v14 = [v13 firstObject];

      v11 = v14;
    }

    v15 = [v10 objectForKeyedSubscript:v11];
    v16 = [v15 objectForKey:v8];
    if (v16)
    {
      v17 = [(VSWordTimingService *)self timingInfosFrom:v16 withText:v8];
      if (v17)
      {
        v18 = VSGetLogDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v11;
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "Found prepared word timing info for voice '%@', text: '%@'", &v21, 0x16u);
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)timingPlistForLanguage:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:v4 ofType:@"plist" inDirectory:@"TTSWordTimings"];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];

  return v7;
}

- (id)timingInfosFrom:(id)a3 withText:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v32 = v5;
  [v5 objectForKeyedSubscript:@"word_timings"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v38 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    obj = v8;
    v34 = *v36;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [v7 lastObject];
        v15 = [v13 allKeys];
        v16 = [v15 firstObject];

        v17 = [v6 rangeOfString:v16 options:0 range:{v11, objc_msgSend(v6, "length") - v11}];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = VSGetLogDefault();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v40 = v16;
            v41 = 2112;
            v42 = v6;
            _os_log_error_impl(&dword_272850000, v29, OS_LOG_TYPE_ERROR, "Unable to locate word '%@' in '%@'", buf, 0x16u);
          }

          v28 = 0;
          v8 = obj;
          v27 = obj;
          goto LABEL_17;
        }

        v19 = v17;
        v20 = v18;
        if (v11 < v17)
        {
          [v14 setTextRange:{objc_msgSend(v14, "textRange"), v17 - objc_msgSend(v14, "textRange")}];
        }

        v21 = [v13 allValues];
        v22 = [v21 firstObject];
        [v22 doubleValue];
        v24 = v23;

        v25 = objc_alloc_init(VSSpeechWordTimingInfo);
        [(VSSpeechWordTimingInfo *)v25 setTextRange:v19, v20];
        [(VSSpeechWordTimingInfo *)v25 setStartTime:v24];
        [v7 addObject:v25];
        v11 = v19 + v20;
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v26 = [v7 lastObject];
  v27 = v26;
  if (v26)
  {
    [v26 setTextRange:{objc_msgSend(v26, "textRange"), objc_msgSend(v6, "length") - objc_msgSend(v26, "textRange")}];
  }

  v28 = v7;
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

@end