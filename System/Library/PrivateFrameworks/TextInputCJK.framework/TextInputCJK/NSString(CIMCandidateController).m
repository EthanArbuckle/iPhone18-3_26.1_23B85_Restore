@interface NSString(CIMCandidateController)
- (uint64_t)chinesePinyinCompare:()CIMCandidateController;
- (uint64_t)traditionalChineseZhuyinCompare:()CIMCandidateController;
@end

@implementation NSString(CIMCandidateController)

- (uint64_t)traditionalChineseZhuyinCompare:()CIMCandidateController
{
  v4 = a3;
  v5 = [a1 length];
  v6 = GetCurrentLocale();
  v7 = [a1 compare:v4 options:512 range:0 locale:{v5, v6}];

  v8 = [a1 length];
  if (v8)
  {
    v9 = v8;
    if (v8 == [v4 length])
    {
      v10 = v9 - 1;
      v11 = [a1 substringToIndex:v10];
      v12 = [v4 substringToIndex:v10];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = [a1 substringFromIndex:v10];
        v15 = [v4 substringFromIndex:v10];
        v16 = 0;
        while (1)
        {
          v17 = kZhuyinToneMarks[v16];
          v18 = [(__CFString *)v17 isEqualToString:v14];
          v19 = [(__CFString *)v17 isEqualToString:v15];
          if (v18)
          {
            v7 = v19 - 1;
            goto LABEL_11;
          }

          if (v19)
          {
            break;
          }

          if (++v16 == 5)
          {
            goto LABEL_11;
          }
        }

        v7 = 1;
LABEL_11:
      }
    }
  }

  return v7;
}

- (uint64_t)chinesePinyinCompare:()CIMCandidateController
{
  v4 = a3;
  v5 = [a1 length];
  v6 = GetCurrentLocale();
  v7 = [a1 compare:v4 options:512 range:0 locale:{v5, v6}];

  return v7;
}

@end