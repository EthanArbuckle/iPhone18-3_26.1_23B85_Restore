@interface SSSnippetHighlightTool
+ (BOOL)isSegmentHighlighted:(id)highlighted;
- (SSSnippetHighlightTool)initWithTerms:(id)terms;
- (id)findAndMergeHighlightRangesInSnippet:(id)snippet;
- (id)makeHighlightedSnippet:(id)snippet;
@end

@implementation SSSnippetHighlightTool

+ (BOOL)isSegmentHighlighted:(id)highlighted
{
  highlightedCopy = highlighted;
  if ([highlightedCopy length])
  {
    v4 = [highlightedCopy attribute:@"com.apple.SSSnippetHighlightTool.TextHighlightAttribute" atIndex:0 effectiveRange:0];
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

- (SSSnippetHighlightTool)initWithTerms:(id)terms
{
  termsCopy = terms;
  if ([termsCopy count])
  {
    v10.receiver = self;
    v10.super_class = SSSnippetHighlightTool;
    v5 = [(SSSnippetHighlightTool *)&v10 init];
    if (v5)
    {
      v6 = [termsCopy copy];
      terms = v5->_terms;
      v5->_terms = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)findAndMergeHighlightRangesInSnippet:(id)snippet
{
  v41 = *MEMORY[0x1E69E9840];
  snippetCopy = snippet;
  array = [MEMORY[0x1E695DF70] array];
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
          v10 = [snippetCopy length];
          if ([snippetCopy length])
          {
            v11 = 0;
            v12 = 1001;
            do
            {
              if (!--v12)
              {
                break;
              }

              v13 = [snippetCopy rangeOfString:v9 options:129 range:{v11, v10}];
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v15 = v13;
              v16 = v14;
              v17 = [MEMORY[0x1E696B098] valueWithRange:{v13, v14}];
              [array addObject:v17];

              v11 = v15 + v16;
              v10 = [snippetCopy length] - v11;
            }

            while (v11 < [snippetCopy length]);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  if ([array count])
  {
    [array sortUsingComparator:&__block_literal_global_27];
    array2 = [MEMORY[0x1E695DF70] array];
    firstObject = [array firstObject];
    rangeValue = [firstObject rangeValue];
    v22 = v21;

    if ([array count] >= 2)
    {
      v23 = 1;
      do
      {
        v24 = [array objectAtIndexedSubscript:v23];
        rangeValue2 = [v24 rangeValue];
        v27 = v26;

        v28 = v22 + rangeValue;
        if (v22 + rangeValue >= rangeValue2)
        {
          if (v28 <= rangeValue2 + v27)
          {
            v28 = rangeValue2 + v27;
          }

          v22 = v28 - rangeValue;
        }

        else
        {
          v29 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v22}];
          [array2 addObject:v29];

          rangeValue = rangeValue2;
          v22 = v27;
        }

        ++v23;
      }

      while (v23 < [array count]);
    }

    v30 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v22}];
    [array2 addObject:v30];

    v31 = [array2 copy];
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

- (id)makeHighlightedSnippet:(id)snippet
{
  v34[1] = *MEMORY[0x1E69E9840];
  snippetCopy = snippet;
  if ([snippetCopy length])
  {
    v33 = @"com.apple.SSSnippetHighlightTool.TextHighlightAttribute";
    v34[0] = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v5 = [(SSSnippetHighlightTool *)self findAndMergeHighlightRangesInSnippet:snippetCopy];
    if ([v5 count])
    {
      array = [MEMORY[0x1E695DF70] array];
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

            rangeValue = [*(*(&v27 + 1) + 8 * i) rangeValue];
            v14 = v13;
            if (rangeValue > v9)
            {
              v15 = [snippetCopy substringWithRange:{v9, rangeValue - v9}];
              v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
              [array addObject:v16];
            }

            v17 = [snippetCopy substringWithRange:{rangeValue, v14}];
            v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v26];
            [array addObject:v18];
            v9 = rangeValue + v14;
          }

          v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < [snippetCopy length])
      {
        v20 = [snippetCopy substringWithRange:{v9, objc_msgSend(snippetCopy, "length") - v9}];
        v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20];
        [array addObject:v21];
      }

      v19 = [array copy];
      v5 = v24;
    }

    else
    {
      array = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:snippetCopy];
      v32 = array;
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