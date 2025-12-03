@interface VSWordTimingService
- (id)estimatedTTSWordTimingForText:(id)text withLanguage:(id)language voiceName:(id)name;
- (id)timingInfosFrom:(id)from withText:(id)text;
- (id)timingPlistForLanguage:(id)language;
@end

@implementation VSWordTimingService

- (id)estimatedTTSWordTimingForText:(id)text withLanguage:(id)language voiceName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  textCopy = text;
  nameCopy = name;
  v10 = [(VSWordTimingService *)self timingPlistForLanguage:language];
  if (v10)
  {
    v11 = nameCopy;
    if (!v11 || ([v10 objectForKeyedSubscript:v11], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      allKeys = [v10 allKeys];
      firstObject = [allKeys firstObject];

      v11 = firstObject;
    }

    v15 = [v10 objectForKeyedSubscript:v11];
    v16 = [v15 objectForKey:textCopy];
    if (v16)
    {
      v17 = [(VSWordTimingService *)self timingInfosFrom:v16 withText:textCopy];
      if (v17)
      {
        v18 = VSGetLogDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v11;
          v23 = 2112;
          v24 = textCopy;
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

- (id)timingPlistForLanguage:(id)language
{
  v3 = MEMORY[0x277CCA8D8];
  languageCopy = language;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:languageCopy ofType:@"plist" inDirectory:@"TTSWordTimings"];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];

  return v7;
}

- (id)timingInfosFrom:(id)from withText:(id)text
{
  v44 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  v32 = fromCopy;
  [fromCopy objectForKeyedSubscript:@"word_timings"];
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
        lastObject = [array lastObject];
        allKeys = [v13 allKeys];
        firstObject = [allKeys firstObject];

        v17 = [textCopy rangeOfString:firstObject options:0 range:{v11, objc_msgSend(textCopy, "length") - v11}];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = VSGetLogDefault();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v40 = firstObject;
            v41 = 2112;
            v42 = textCopy;
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
          [lastObject setTextRange:{objc_msgSend(lastObject, "textRange"), v17 - objc_msgSend(lastObject, "textRange")}];
        }

        allValues = [v13 allValues];
        firstObject2 = [allValues firstObject];
        [firstObject2 doubleValue];
        v24 = v23;

        v25 = objc_alloc_init(VSSpeechWordTimingInfo);
        [(VSSpeechWordTimingInfo *)v25 setTextRange:v19, v20];
        [(VSSpeechWordTimingInfo *)v25 setStartTime:v24];
        [array addObject:v25];
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

  lastObject2 = [array lastObject];
  v27 = lastObject2;
  if (lastObject2)
  {
    [lastObject2 setTextRange:{objc_msgSend(lastObject2, "textRange"), objc_msgSend(textCopy, "length") - objc_msgSend(lastObject2, "textRange")}];
  }

  v28 = array;
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

@end