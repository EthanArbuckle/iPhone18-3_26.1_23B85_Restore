@interface NSArray(VMUAnalyzerSummary)
- (unint64_t)longestKeyLength;
@end

@implementation NSArray(VMUAnalyzerSummary)

- (unint64_t)longestKeyLength
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = v9;
        if (v9 == kVMUAnalysisSummaryKey[0])
        {
        }

        else
        {
          v11 = [v8 key];
          v12 = kVMUAnalysisDataKey[0];

          if (v11 != v12)
          {
            v13 = [v8 key];
            v14 = [v13 length];

            if (v14 > v5)
            {
              v5 = v14;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end