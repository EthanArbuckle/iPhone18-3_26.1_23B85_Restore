@interface SSSnippetHighlightTool
+ (BOOL)isSegmentHighlighted:(id)a3;
- (SSSnippetHighlightTool)initWithTerms:(id)a3;
- (id)findAndMergeHighlightRangesInSnippet:(id)a3;
- (id)makeHighlightedSnippet:(id)a3;
@end

@implementation SSSnippetHighlightTool

+ (BOOL)isSegmentHighlighted:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 attribute:@"com.apple.SSSnippetHighlightTool.TextHighlightAttribute" atIndex:0 effectiveRange:0];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isEqual:MEMORY[0x1E695E118]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSSnippetHighlightTool)initWithTerms:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v10.receiver = self;
    v10.super_class = SSSnippetHighlightTool;
    v5 = [(SSSnippetHighlightTool *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      terms = v5->_terms;
      v5->_terms = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)findAndMergeHighlightRangesInSnippet:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(SSSnippetHighlightTool *)self terms];
  v6 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v35 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        if ([v9 length])
        {
          v10 = [v4 length];
          if ([v4 length])
          {
            v11 = 0;
            v12 = 1001;
            do
            {
              if (!--v12)
              {
                break;
              }

              v13 = [v4 rangeOfString:v9 options:129 range:{v11, v10}];
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v15 = v13;
              v16 = v14;
              v17 = [MEMORY[0x1E696B098] valueWithRange:{v13, v14}];
              [v5 addObject:v17];

              v11 = v15 + v16;
              v10 = [v4 length] - v11;
            }

            while (v11 < [v4 length]);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [v5 sortUsingComparator:&__block_literal_global_27];
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = [v5 firstObject];
    v20 = [v19 rangeValue];
    v22 = v21;

    if ([v5 count] >= 2)
    {
      v23 = 1;
      do
      {
        v24 = [v5 objectAtIndexedSubscript:v23];
        v25 = [v24 rangeValue];
        v27 = v26;

        v28 = v22 + v20;
        if (v22 + v20 >= v25)
        {
          if (v28 <= v25 + v27)
          {
            v28 = v25 + v27;
          }

          v22 = v28 - v20;
        }

        else
        {
          v29 = [MEMORY[0x1E696B098] valueWithRange:{v20, v22}];
          [v18 addObject:v29];

          v20 = v25;
          v22 = v27;
        }

        ++v23;
      }

      while (v23 < [v5 count]);
    }

    v30 = [MEMORY[0x1E696B098] valueWithRange:{v20, v22}];
    [v18 addObject:v30];

    v31 = [v18 copy];
  }

  else
  {
    v31 = MEMORY[0x1E695E0F0];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

uint64_t __63__SSSnippetHighlightTool_findAndMergeHighlightRangesInSnippet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "rangeValue")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 rangeValue];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)makeHighlightedSnippet:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v33 = @"com.apple.SSSnippetHighlightTool.TextHighlightAttribute";
    v34[0] = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v5 = [(SSSnippetHighlightTool *)self findAndMergeHighlightRangesInSnippet:v4];
    if ([v5 count])
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v24 = v5;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v28;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v27 + 1) + 8 * i) rangeValue];
            v14 = v13;
            if (v12 > v9)
            {
              v15 = [v4 substringWithRange:{v9, v12 - v9}];
              v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
              [v6 addObject:v16];
            }

            v17 = [v4 substringWithRange:{v12, v14}];
            v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v26];
            [v6 addObject:v18];
            v9 = v12 + v14;
          }

          v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < [v4 length])
      {
        v20 = [v4 substringWithRange:{v9, objc_msgSend(v4, "length") - v9}];
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20];
        [v6 addObject:v21];
      }

      v19 = [v6 copy];
      v5 = v24;
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
      v32 = v6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

@end