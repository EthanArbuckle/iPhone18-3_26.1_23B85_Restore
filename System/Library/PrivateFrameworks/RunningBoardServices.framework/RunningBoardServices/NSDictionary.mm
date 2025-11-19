@interface NSDictionary
@end

@implementation NSDictionary

void __62__NSDictionary_RunningBoard__entriesToStringWithIndent_debug___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = a3;
  v5 = [a2 description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = *(a1 + 40);
    if (v7 >= 8)
    {
      v7 = 8;
    }

    v8 = &_indentPrefix_tabs[8 - v7];
    v9 = v25;
    [v6 appendFormat:@"%s%@={\n", v8, v5];
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [v9 entriesToStringWithIndent:(*(a1 + 40) + 1) debug:*(a1 + 44)];

    [v10 appendFormat:@"%@", v11];
    v12 = *(a1 + 40);
    if (v12 >= 8)
    {
      v12 = 8;
    }

    [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%s}\n", &_indentPrefix_tabs[8 - v12], v22, v24];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = *(*(*(a1 + 32) + 8) + 40);
    v15 = *(a1 + 40);
    if (v15 >= 8)
    {
      v15 = 8;
    }

    v16 = &_indentPrefix_tabs[8 - v15];
    if (isKindOfClass)
    {
      v17 = v25;
      [v14 appendFormat:@"%s%@=[\n", v16, v5];
      v18 = *(*(*(a1 + 32) + 8) + 40);
      v19 = [(NSArray *)v17 elementsToString:*(a1 + 44) debug:?];

      [v18 appendFormat:@"%@", v19];
      v20 = *(a1 + 40);
      if (v20 >= 8)
      {
        v20 = 8;
      }

      [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%s]\n", &_indentPrefix_tabs[8 - v20], v23, v24];
    }

    else if (*(a1 + 44) == 1)
    {
      [v14 appendFormat:@"%s%@=%@\n", v16, v5, v25];
    }

    else
    {
      v21 = [v25 debugDescription];
      [v14 appendFormat:@"%s%@=%@\n", v16, v5, v21];
    }
  }
}

@end