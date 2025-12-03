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
  mutableString = [self mutableString];
  v9 = [mutableString replaceOccurrencesOfString:v7 withString:v6 options:0 range:{0, objc_msgSend(mutableString, "length")}];

  return v9;
}

- (id)attributedStringByTrimmingEmptySpaceEdges
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];

  string = [self string];
  v5 = [string rangeOfCharacterFromSet:invertedSet];
  v7 = v6;

  string2 = [self string];
  v9 = [string2 rangeOfCharacterFromSet:invertedSet options:4];
  v11 = v10;

  if (v11)
  {
    v12 = v9 + v11;
  }

  else
  {
    v12 = [self length];
  }

  if (v7)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = [self attributedSubstringFromRange:{v13, v12 - v13}];

  return v14;
}

- (void)appendString:()SCRCMutableAttributedStringExtras
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];

    [self appendAttributedString:v6];
  }
}

@end