@interface NSMutableAttributedString(SCRCMutableAttributedStringExtras)
- (id)attributedStringByTrimmingEmptySpaceEdges;
- (uint64_t)replaceOccurrencesOfString:()SCRCMutableAttributedStringExtras withString:;
- (void)appendString:()SCRCMutableAttributedStringExtras;
@end

@implementation NSMutableAttributedString(SCRCMutableAttributedStringExtras)

- (uint64_t)replaceOccurrencesOfString:()SCRCMutableAttributedStringExtras withString:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mutableString];
  v9 = [v8 replaceOccurrencesOfString:v7 withString:v6 options:0 range:{0, objc_msgSend(v8, "length")}];

  return v9;
}

- (id)attributedStringByTrimmingEmptySpaceEdges
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [v2 invertedSet];

  v4 = [a1 string];
  v5 = [v4 rangeOfCharacterFromSet:v3];
  v7 = v6;

  v8 = [a1 string];
  v9 = [v8 rangeOfCharacterFromSet:v3 options:4];
  v11 = v10;

  if (v11)
  {
    v12 = v9 + v11;
  }

  else
  {
    v12 = [a1 length];
  }

  if (v7)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 attributedSubstringFromRange:{v13, v12 - v13}];

  return v14;
}

- (void)appendString:()SCRCMutableAttributedStringExtras
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];

    [a1 appendAttributedString:v6];
  }
}

@end