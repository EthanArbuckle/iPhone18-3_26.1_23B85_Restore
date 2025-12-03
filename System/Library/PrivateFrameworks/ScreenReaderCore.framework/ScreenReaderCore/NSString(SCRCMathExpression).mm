@interface NSString(SCRCMathExpression)
+ (id)stringWithDollarCode:()SCRCMathExpression;
- (id)stringWrappedInMathMLTag:()SCRCMathExpression withAttributes:;
@end

@implementation NSString(SCRCMathExpression)

+ (id)stringWithDollarCode:()SCRCMathExpression
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [self stringWithFormat:@"%@%@%@", @"\x1C", v4, @"\x1F"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringWrappedInMathMLTag:()SCRCMathExpression withAttributes:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@", v6];
  v9 = [v7 count];
  if (v9 >= 2)
  {
    v10 = v9 >> 1;
    v11 = 1;
    do
    {
      v12 = [v7 objectAtIndex:v11 - 1];
      v13 = [v7 objectAtIndex:v11];
      [v8 appendFormat:@" %@=%@", v12, v13];

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  [v8 appendString:@">"];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"</%@>", v6];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v8, self, v14];

  return v15;
}

@end