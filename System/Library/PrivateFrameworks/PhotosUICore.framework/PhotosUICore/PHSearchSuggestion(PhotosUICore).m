@interface PHSearchSuggestion(PhotosUICore)
- (__CFString)px_symbolName;
- (id)px_formattedCount;
@end

@implementation PHSearchSuggestion(PhotosUICore)

- (id)px_formattedCount
{
  v2 = [a1 count];
  v3 = [a1 hasApproximateCount];
  if (v2 > 0x186A0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = v2;
  if (v4 == 1)
  {
    if (v2 < 5)
    {
      v5 = 1;
      goto LABEL_16;
    }

    if (v2 < 0xA)
    {
      v5 = 5;
      goto LABEL_16;
    }

    if (v2 <= 0x1F3)
    {
      v5 = 10 * vcvtmd_u64_f64(v2 / 10.0);
      goto LABEL_16;
    }

    if (v2 >> 3 > 0x270)
    {
      v5 = 100000;
      if (v2 >> 4 > 0xC34)
      {
        goto LABEL_16;
      }

      v6 = vcvtmd_u64_f64(v2 / 1000.0);
      v7 = 1000;
    }

    else
    {
      v6 = vcvtmd_u64_f64(v2 / 100.0);
      v7 = 100;
    }

    v5 = v6 * v7;
  }

LABEL_16:
  v8 = MEMORY[0x1E696ADA0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];

  if (v4)
  {
    PXLocalizedStringFromTable(@"SEARCH_RESULT_COUNT_FOR_SUGGESTION", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v11 = v10;

  return v11;
}

- (__CFString)px_symbolName
{
  v1 = [a1 categoriesType];
  if ((v1 - 1) > 0x2A)
  {
    return &stru_1F1741150;
  }

  else
  {
    return off_1E773C050[v1 - 1];
  }
}

@end