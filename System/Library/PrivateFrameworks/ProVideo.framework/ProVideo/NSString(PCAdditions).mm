@interface NSString(PCAdditions)
- (CFIndex)glyphCount;
- (__CFString)stringByTrimmingLeadingCharactersInSet:()PCAdditions;
- (uint64_t)composedCharacterCount;
- (uint64_t)stringByRemovingCharactersInSet:()PCAdditions;
- (uint64_t)stringByTrimmingLeadingWhitespace;
@end

@implementation NSString(PCAdditions)

- (uint64_t)composedCharacterCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __47__NSString_PCAdditions__composedCharacterCount__block_invoke;
  v5[3] = &unk_279AA83C0;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CFIndex)glyphCount
{
  v1 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a1];
  v2 = CTLineCreateWithAttributedString(v1);

  GlyphCount = CTLineGetGlyphCount(v2);
  CFRelease(v2);
  return GlyphCount;
}

- (uint64_t)stringByRemovingCharactersInSet:()PCAdditions
{
  v1 = [a1 componentsSeparatedByCharactersInSet:?];

  return [v1 componentsJoinedByString:&stru_2872E16E0];
}

- (__CFString)stringByTrimmingLeadingCharactersInSet:()PCAdditions
{
  v4 = [a1 rangeOfCharacterFromSet:{objc_msgSend(a3, "invertedSet")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_2872E16E0;
  }

  return [a1 substringFromIndex:v4];
}

- (uint64_t)stringByTrimmingLeadingWhitespace
{
  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];

  return [a1 stringByTrimmingLeadingCharactersInSet:v2];
}

@end