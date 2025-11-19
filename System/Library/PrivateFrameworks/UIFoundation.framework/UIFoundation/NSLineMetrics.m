@interface NSLineMetrics
@end

@implementation NSLineMetrics

uint64_t __103___NSLineMetrics__calculatePositions_hasAdvanceAdjustment_withCapacity_forAttributedString_range_line___block_invoke(int a1, CTRunRef run, const __CTRun *a3)
{
  StringRange = CTRunGetStringRange(run);
  v5 = CTRunGetStringRange(a3);
  v6 = v5.location < StringRange.location;
  if (StringRange.location < v5.location)
  {
    v6 = -1;
  }

  v7 = v5.length < StringRange.length;
  if (StringRange.length < v5.length)
  {
    v7 = -1;
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

void __29___NSLineMetrics__hasShaping__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = [@"ja zh yue wuu" componentsSeparatedByString:@" "];
  v1 = [v0 initWithArray:v3];
  v2 = _hasShaping_cjShapingLanguages;
  _hasShaping_cjShapingLanguages = v1;
}

uint64_t __29___NSLineMetrics__hasShaping__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 compositionLanguage];
  if ((result - 2) <= 2)
  {
    *(*(a1 + 32) + 128) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __59___NSLineMetrics__initialAdvanceForCharacterAtIndex_range___block_invoke()
{
  _initialAdvanceForCharacterAtIndex_range__openingMarkCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"「『（〔【〖〈《｛‘“"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57___NSLineMetrics__finalAdvanceForCharacterAtIndex_range___block_invoke()
{
  _finalAdvanceForCharacterAtIndex_range__closingMarkCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"」』）〕】〗〉》｝’”。、\ff0c：；？！．"];

  return MEMORY[0x1EEE66BB8]();
}

@end