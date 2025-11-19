@interface NSString
@end

@implementation NSString

uint64_t __51__NSString_PhotosUIFoundation__px_firstLetterRange__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) rangeOfComposedCharacterSequencesForRange:{a3, 1}];
  v10 = *(*(a1 + 40) + 8);
  *(v10 + 32) = result;
  *(v10 + 40) = v11;
  *a7 = 1;
  return result;
}

uint64_t __78__NSString_PhotosUIFoundation__px_endsWithFullStopOrEquivalentPunctuationMark__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".!?…。"];
  v1 = px_endsWithFullStopOrEquivalentPunctuationMark_fullStopPunctuationCharacterSet;
  px_endsWithFullStopOrEquivalentPunctuationMark_fullStopPunctuationCharacterSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __48__NSString_PhotosUIFoundation__px_integerValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if ([v5 hasSuffix:@"k"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"K"))
  {
    v6 = 1000;
LABEL_4:
    v7 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

    v5 = v7;
    goto LABEL_5;
  }

  v6 = 1000000;
  if (([v5 hasSuffix:@"m"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @"M"))
  {
    goto LABEL_4;
  }

  v6 = 1;
LABEL_5:
  v8 = [v5 integerValue];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8 * v6];

  return v9;
}

uint64_t __64__NSString_PhotosUIFoundation___excessiveLineHeightCharacterSet__block_invoke()
{
  v0 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  v1 = _excessiveLineHeightCharacterSet_excessiveLineHeightCharacterSet;
  _excessiveLineHeightCharacterSet_excessiveLineHeightCharacterSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end