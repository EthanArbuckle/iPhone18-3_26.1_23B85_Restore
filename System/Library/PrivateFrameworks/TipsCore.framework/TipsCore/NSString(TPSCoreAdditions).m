@interface NSString(TPSCoreAdditions)
- (uint64_t)tps_compareBuildVersionWithString:()TPSCoreAdditions;
@end

@implementation NSString(TPSCoreAdditions)

- (uint64_t)tps_compareBuildVersionWithString:()TPSCoreAdditions
{
  v4 = a3;
  v27 = 0;
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(\\d+)([a-zA-Z]+)(\\d+)([a-zA-Z]*)$" options:0 error:&v27];
  v6 = [v5 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  v7 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v8 = [v6 numberOfRanges];
  v9 = [v7 numberOfRanges];
  if (v8 == 5)
  {
    if (v9 == 5)
    {
      v10 = 1;
      while (1)
      {
        v11 = [v6 rangeAtIndex:v10];
        v13 = [a1 substringWithRange:{v11, v12}];
        v14 = [v7 rangeAtIndex:v10];
        v16 = [v4 substringWithRange:{v14, v15}];
        v17 = [v13 compare:v16 options:64];

        if (v17)
        {
          break;
        }

        if (++v10 == 4)
        {
          v18 = [v6 rangeAtIndex:4];
          v20 = [a1 substringWithRange:{v18, v19}];
          v21 = [v7 rangeAtIndex:4];
          v23 = [v4 substringWithRange:{v21, v22}];
          v24 = [v20 length];
          v25 = [v23 length];
          if (!v24 || v25)
          {
            if (v24 || !v25)
            {
              v17 = 0;
              if (v24 && v25)
              {
                v17 = [v20 compare:v23 options:2];
              }
            }

            else
            {
              v17 = -1;
            }
          }

          else
          {
            v17 = 1;
          }

          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }
  }

  else if (v9 == 5)
  {
    v17 = 1;
  }

  else
  {
    v17 = [a1 compare:v4 options:64];
  }

  return v17;
}

@end