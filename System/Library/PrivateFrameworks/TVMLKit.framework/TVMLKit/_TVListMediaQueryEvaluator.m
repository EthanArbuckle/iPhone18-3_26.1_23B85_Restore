@interface _TVListMediaQueryEvaluator
- (BOOL)evaluteForMediaType:(id)a3 featureType:(id)a4 value:(id)a5 result:(BOOL *)a6;
@end

@implementation _TVListMediaQueryEvaluator

- (BOOL)evaluteForMediaType:(id)a3 featureType:(id)a4 value:(id)a5 result:(BOOL *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (IsTemplateMediaType(a3) && [v9 isEqualToString:@"-tv-header"])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [(TVMediaQueryEvaluator *)self templateElement];
    v11 = [v10 children];

    v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          if ([v15 tv_elementType] == 22)
          {
            v12 = v15;
            goto LABEL_14;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [v12 children];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v24 + 1) + 8 * j);
          if ([v22 tv_elementType] == 58 || objc_msgSend(v22, "tv_elementType") == 15)
          {
            *a6 = 1;
            goto LABEL_25;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end