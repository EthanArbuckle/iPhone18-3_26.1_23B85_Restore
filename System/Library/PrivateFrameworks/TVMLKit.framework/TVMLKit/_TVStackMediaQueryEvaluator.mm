@interface _TVStackMediaQueryEvaluator
- (BOOL)evaluteForMediaType:(id)a3 featureType:(id)a4 value:(id)a5 result:(BOOL *)a6;
@end

@implementation _TVStackMediaQueryEvaluator

- (BOOL)evaluteForMediaType:(id)a3 featureType:(id)a4 value:(id)a5 result:(BOOL *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (IsTemplateMediaType(a3) && [v9 isEqualToString:@"-tv-banner"])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(TVMediaQueryEvaluator *)self templateElement];
    v11 = [v10 unfilteredChildren];

    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) tv_elementType];
          if (v16 != 4)
          {
            if (v16 != 10)
            {
              *a6 = 1;
            }

            goto LABEL_15;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end