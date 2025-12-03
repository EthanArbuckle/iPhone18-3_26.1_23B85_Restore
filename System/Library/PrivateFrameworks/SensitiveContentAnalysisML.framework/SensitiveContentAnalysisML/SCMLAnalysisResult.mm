@interface SCMLAnalysisResult
+ (id)obfuscateLabelName:(id)name;
+ (id)obfuscateLabels:(id)labels;
- (SCMLAnalysisResult)initWithSensitive:(BOOL)sensitive sensitivityScore:(id)score scoresForObfuscatedLabels:(id)labels;
@end

@implementation SCMLAnalysisResult

- (SCMLAnalysisResult)initWithSensitive:(BOOL)sensitive sensitivityScore:(id)score scoresForObfuscatedLabels:(id)labels
{
  scoreCopy = score;
  labelsCopy = labels;
  v14.receiver = self;
  v14.super_class = SCMLAnalysisResult;
  v11 = [(SCMLAnalysisResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_sensitiveExplicit = sensitive;
    objc_storeStrong(&v11->_sensitivityScoreExplicit, score);
    objc_storeStrong(&v12->_scoresForLabels, labels);
  }

  return v12;
}

+ (id)obfuscateLabels:(id)labels
{
  v22 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v4 = [labelsCopy objectForKey:@"otgx_fyqmjdju"];

  if (v4)
  {
    v5 = labelsCopy;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(labelsCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = labelsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [SCMLAnalysisResult obfuscateLabelName:v12, v17];
          v14 = [v7 objectForKeyedSubscript:v12];
          [v6 setObject:v14 forKey:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v5 = [v6 copy];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)obfuscateLabelName:(id)name
{
  nameCopy = name;
  string = [MEMORY[0x1E696AD60] string];
  lowercaseString = [nameCopy lowercaseString];
  if ([lowercaseString length])
  {
    v6 = 0;
    do
    {
      v7 = [lowercaseString characterAtIndex:v6];
      if (v7 - 97 >= 0x19)
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 + 1;
      }

      [string appendFormat:@"%c", v8];
      ++v6;
    }

    while (v6 < [lowercaseString length]);
  }

  return string;
}

@end