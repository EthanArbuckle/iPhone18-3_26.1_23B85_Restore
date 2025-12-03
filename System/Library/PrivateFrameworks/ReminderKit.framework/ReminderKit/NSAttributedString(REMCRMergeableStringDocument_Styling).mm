@interface NSAttributedString(REMCRMergeableStringDocument_Styling)
- (double)rem_fontHintAtIndex:()REMCRMergeableStringDocument_Styling effectiveRange:;
- (uint64_t)rem_isUnderlinedAtIndex:()REMCRMergeableStringDocument_Styling effectiveRange:;
@end

@implementation NSAttributedString(REMCRMergeableStringDocument_Styling)

- (double)rem_fontHintAtIndex:()REMCRMergeableStringDocument_Styling effectiveRange:
{
  if ((a3 & 0x8000000000000000) != 0 || ([self string], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8 <= a3))
  {
    if (a4)
    {
      result = NAN;
      *a4 = xmmword_19A2310A0;
    }
  }

  else
  {
    v10 = [self attribute:TTAttributeNameFontHints atIndex:a3 effectiveRange:a4];
    [v10 intValue];
  }

  return result;
}

- (uint64_t)rem_isUnderlinedAtIndex:()REMCRMergeableStringDocument_Styling effectiveRange:
{
  if ((a3 & 0x8000000000000000) != 0 || ([self string], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8 <= a3))
  {
    if (a4)
    {
      *a4 = xmmword_19A2310A0;
    }

    return 0;
  }

  else
  {
    v9 = [self attribute:TTAttributeNameUnderline atIndex:a3 effectiveRange:a4];
    bOOLValue = [v9 BOOLValue];

    return bOOLValue;
  }
}

@end