@interface RVSelection
+ (_NSRange)revealRangeAtIndex:(unint64_t)a3 selectedRanges:(id)a4 shouldUpdateSelection:(BOOL *)a5;
+ (_NSRange)searchRangeForString:(id)a3 aroundLocation:(unint64_t)a4;
@end

@implementation RVSelection

+ (_NSRange)searchRangeForString:(id)a3 aroundLocation:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = v6 - 1;
  if (v6 > a4)
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = 0;
  }

  if (v7 >= 0x12D)
  {
    v8 = v7 - 300;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 + 200;
  if (v7 + 200 >= v6)
  {
    v9 = v6;
  }

  if (v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 - v8;
  if (v10 != v8)
  {
    while (([v5 characterAtIndex:v8] & 0xFC00) == 0xDC00)
    {
      ++v8;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    v12 = v10 - 1;
    while (([v5 characterAtIndex:v12] & 0xFC00) == 0xD800)
    {
      --v12;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    a4 = v8;
  }

LABEL_22:

  v13 = a4;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

+ (_NSRange)revealRangeAtIndex:(unint64_t)a3 selectedRanges:(id)a4 shouldUpdateSelection:(BOOL *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v19 + 1) + 8 * i) rangeValue];
        if (a3 >= v11 && a3 - v11 < v12)
        {
          v14 = v11;
          v15 = v12;
          LODWORD(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = 0;
  v14 = a3;
LABEL_14:

  if (a5)
  {
    *a5 = v8 ^ 1;
  }

  if (!v8 || [v7 count] > 1 || v15 >= 0x1F4)
  {
    v15 = 0;
    v14 = a3;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = v14;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

@end