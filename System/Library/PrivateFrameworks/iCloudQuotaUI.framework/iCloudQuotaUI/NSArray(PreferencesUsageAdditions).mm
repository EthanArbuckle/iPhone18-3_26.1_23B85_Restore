@interface NSArray(PreferencesUsageAdditions)
- (uint64_t)sortedInsertionIndexWithRange:()PreferencesUsageAdditions block:;
@end

@implementation NSArray(PreferencesUsageAdditions)

- (uint64_t)sortedInsertionIndexWithRange:()PreferencesUsageAdditions block:
{
  v8 = a5;
  if (a4)
  {
    v9 = a3 + (a4 >> 1);
    v10 = [self objectAtIndex:v9];
    v11 = v8[2](v8, v10, v9);
    if (v11)
    {
      if (v11 != 2)
      {
LABEL_8:

        goto LABEL_9;
      }

      a3 = v9 + 1;
      v12 = (ceil(vcvtd_n_f64_u64(a4, 1uLL)) + -1.0);
    }

    else
    {
      v12 = a4 >> 1;
    }

    v9 = [self sortedInsertionIndexWithRange:a3 block:{v12, v8}];
    goto LABEL_8;
  }

  v9 = a3;
LABEL_9:

  return v9;
}

@end