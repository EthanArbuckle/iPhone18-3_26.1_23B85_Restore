@interface NSAttributedString(SCRCMathExpression)
+ (id)_scrcStringWithFormat:()SCRCMathExpression args:;
+ (id)scrcString;
+ (id)scrcStringWithDollarCode:()SCRCMathExpression treePosition:;
+ (id)scrcStringWithFormat:()SCRCMathExpression;
+ (id)scrcStringWithLiteralString:()SCRCMathExpression treePosition:;
+ (id)scrcStringWithString:()SCRCMathExpression treePosition:;
- (id)scrcStringByAddingAttribute:()SCRCMathExpression value:;
- (id)scrcStringByAppendingAttributedString:()SCRCMathExpression;
- (id)scrcStringByReplacingOccurrencesOfString:()SCRCMathExpression withString:;
- (uint64_t)_scrcHasPauseCommaAtIndex:()SCRCMathExpression;
- (uint64_t)_scrcRangeOfFormatSpecifierWithIndex:()SCRCMathExpression;
- (uint64_t)_scrcRangeOfVanillaFormatSpecifier;
- (uint64_t)scrcContainsPause;
@end

@implementation NSAttributedString(SCRCMathExpression)

- (uint64_t)_scrcRangeOfVanillaFormatSpecifier
{
  v1 = [a1 string];
  v2 = [v1 rangeOfString:@"%@"];

  return v2;
}

- (uint64_t)_scrcRangeOfFormatSpecifierWithIndex:()SCRCMathExpression
{
  v4 = [a1 string];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%%lu$@", a3];
  v6 = [v4 rangeOfString:v5];

  return v6;
}

+ (id)_scrcStringWithFormat:()SCRCMathExpression args:
{
  v6 = a3;
  v25 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
  v8 = [v7 _scrcRangeOfVanillaFormatSpecifier];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v25++;
      v13 = *v12;
      if (!v13)
      {
        v13 = [MEMORY[0x277CCA898] scrcStringWithString:@"(null)"];
      }

      [v7 replaceCharactersInRange:v10 withAttributedString:{v11, v13}];
      v10 = [v7 _scrcRangeOfVanillaFormatSpecifier];
      v11 = v14;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v15 = [v7 _scrcRangeOfFormatSpecifierWithIndex:1];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v15;
    v18 = v16;
    v19 = 2;
    do
    {
      v20 = v25++;
      v21 = *v20;
      if (!v21)
      {
        v21 = [MEMORY[0x277CCA898] scrcStringWithString:@"(null)"];
      }

      [v7 replaceCharactersInRange:v17 withAttributedString:{v18, v21}];
      v17 = [v7 _scrcRangeOfFormatSpecifierWithIndex:v19];
      v18 = v22;

      ++v19;
    }

    while (v17 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v23 = [[a1 alloc] initWithAttributedString:v7];

  return v23;
}

+ (id)scrcStringWithFormat:()SCRCMathExpression
{
  v9 = [a1 _scrcStringWithFormat:a3 args:&a9];

  return v9;
}

+ (id)scrcStringWithString:()SCRCMathExpression treePosition:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    v11 = @"kSCRCMathStringAttributeTreePosition";
    v12[0] = a4;
    v7 = MEMORY[0x277CBEAC0];
    v8 = a4;
    a4 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  v9 = [[a1 alloc] initWithString:v6 attributes:a4];

  return v9;
}

+ (id)scrcStringWithLiteralString:()SCRCMathExpression treePosition:
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v20[0] = @"kSCRCMathStringAttributeSpeakLiteralCharacters";
    v20[1] = @"kSCRCMathStringAttributeTreePosition";
    v21[0] = MEMORY[0x277CBEC38];
    v21[1] = a4;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a4;
    v8 = a3;
    v9 = v21;
    v10 = v20;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v18 = @"kSCRCMathStringAttributeSpeakLiteralCharacters";
    v19 = MEMORY[0x277CBEC38];
    v13 = MEMORY[0x277CBEAC0];
    v7 = 0;
    v14 = a3;
    v9 = &v19;
    v10 = &v18;
    v11 = v13;
    v12 = 1;
  }

  v15 = [v11 dictionaryWithObjects:v9 forKeys:v10 count:v12];

  v16 = [[a1 alloc] initWithString:a3 attributes:v15];

  return v16;
}

+ (id)scrcStringWithDollarCode:()SCRCMathExpression treePosition:
{
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithDollarCode:a3];
  if ([v7 length])
  {
    v8 = [a1 scrcStringWithString:v7 treePosition:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)scrcString
{
  v1 = objc_alloc_init(a1);

  return v1;
}

- (id)scrcStringByAppendingAttributedString:()SCRCMathExpression
{
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v6 = [[v4 alloc] initWithAttributedString:a1];
  [v6 replaceCharactersInRange:objc_msgSend(a1 withAttributedString:{"length"), 0, v5}];

  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v6];

  return v7;
}

- (id)scrcStringByReplacingOccurrencesOfString:()SCRCMathExpression withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:a1];
  v9 = [v8 string];
  v10 = [v9 rangeOfString:v6];
  v12 = v11;

  while (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 replaceCharactersInRange:v10 withString:{v12, v7}];
    v13 = [v8 string];
    v10 = [v13 rangeOfString:v6];
    v12 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v8];

  return v15;
}

- (id)scrcStringByAddingAttribute:()SCRCMathExpression value:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mutableCopy];
  [v8 addAttribute:v7 value:v6 range:{0, objc_msgSend(a1, "length")}];

  return v8;
}

- (uint64_t)_scrcHasPauseCommaAtIndex:()SCRCMathExpression
{
  v5 = [a1 string];
  v6 = [v5 characterAtIndex:a3];

  if (v6 != 44)
  {
    return 0;
  }

  v7 = [a1 attribute:@"kSCRCMathStringAttributeSpeakLiteralCharacters" atIndex:a3 effectiveRange:0];
  v8 = [v7 BOOLValue] ^ 1;

  return v8;
}

- (uint64_t)scrcContainsPause
{
  result = [a1 length];
  if (result)
  {
    v3 = result;
    if ([a1 _scrcHasPauseCommaAtIndex:0])
    {
      return 1;
    }

    else
    {
      v4 = 1;
      do
      {
        v5 = v4;
        if (v3 == v4)
        {
          break;
        }

        v6 = [a1 _scrcHasPauseCommaAtIndex:v4];
        v4 = v5 + 1;
      }

      while (!v6);
      return v5 < v3;
    }
  }

  return result;
}

@end