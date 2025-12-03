@interface NSAttributedString(SCROAttributedStringExtras)
- (id)scrAttributedStringByTrimmingTrailingNewlines;
- (uint64_t)getRange:()SCROAttributedStringExtras ofAttribute:;
- (uint64_t)getRange:()SCROAttributedStringExtras ofAttribute:withValue:;
- (void)deepCopyWithZone:()SCROAttributedStringExtras;
@end

@implementation NSAttributedString(SCROAttributedStringExtras)

- (uint64_t)getRange:()SCROAttributedStringExtras ofAttribute:
{
  v6 = a4;
  v7 = [self length];
  v14 = 0uLL;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [self attribute:v6 atIndex:v9 longestEffectiveRange:&v14 inRange:{v9, v8}];
      if (v10)
      {
        break;
      }

      v11 = v9 + v8;
      v9 = *(&v14 + 1) + v14;
      v8 = v11 - (*(&v14 + 1) + v14);
      if (v11 == *(&v14 + 1) + v14)
      {
        goto LABEL_5;
      }
    }

    *a3 = v14;

    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (uint64_t)getRange:()SCROAttributedStringExtras ofAttribute:withValue:
{
  v8 = a4;
  v9 = a5;
  v10 = [self length];
  v18 = 0uLL;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [self attribute:v8 atIndex:v12 longestEffectiveRange:&v18 inRange:{v12, v11}];
      v14 = v13;
      if (v13)
      {
        if ([v13 isEqual:v9])
        {
          break;
        }
      }

      v15 = *(&v18 + 1) + v18;
      v11 = v12 + v11 - (*(&v18 + 1) + v18);

      v12 = v15;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    *a3 = v18;

    v16 = 1;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

- (void)deepCopyWithZone:()SCROAttributedStringExtras
{
  string = [self string];
  v3 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:string];
  v4 = [string length];
  v11 = 0;
  v12 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [self attributesAtIndex:v6 longestEffectiveRange:&v11 inRange:{v6, v5 - v6}];
      if (v7 && v12)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v7 copyItems:0];

        [v3 setAttributes:v8 range:{v11, v12}];
        v9 = v12;
        v7 = v8;
      }

      else
      {
        v9 = 1;
      }

      v6 += v9;
    }

    while (v6 < v5);
  }

  return v3;
}

- (id)scrAttributedStringByTrimmingTrailingNewlines
{
  v1 = [self mutableCopy];
  [v1 scrAttributedStringTrimTrailingNewlines];
  v2 = [v1 copy];

  return v2;
}

@end