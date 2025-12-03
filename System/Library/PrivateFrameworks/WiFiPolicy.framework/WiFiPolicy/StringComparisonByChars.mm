@interface StringComparisonByChars
+ (id)stringComparisonByCharsWithString1:(id)string1 string2:(id)string2 reference:(id)reference;
- (StringComparisonByChars)initWithString1:(id)string1 string2:(id)string2 reference:(id)reference;
@end

@implementation StringComparisonByChars

+ (id)stringComparisonByCharsWithString1:(id)string1 string2:(id)string2 reference:(id)reference
{
  referenceCopy = reference;
  string2Copy = string2;
  string1Copy = string1;
  v11 = [[self alloc] initWithString1:string1Copy string2:string2Copy reference:referenceCopy];

  return v11;
}

- (StringComparisonByChars)initWithString1:(id)string1 string2:(id)string2 reference:(id)reference
{
  string1Copy = string1;
  string2Copy = string2;
  v19.receiver = self;
  v19.super_class = StringComparisonByChars;
  v10 = [(ObjectComparisonByTokens *)&v19 initWithObj1:string1Copy obj2:string2Copy reference:reference];
  v11 = [string1Copy length];
  v12 = [string2Copy length];
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    v14 = 0;
    do
    {
      -[ObjectComparisonByTokens incrementTokensWith:](v10, "incrementTokensWith:", [string1Copy characterAtIndex:v14] == objc_msgSend(string2Copy, "characterAtIndex:", v14));
      ++v14;
      v15 = [string1Copy length];
      v16 = [string2Copy length];
      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }
    }

    while (v14 < v17);
  }

  [(ObjectComparisonByTokens *)v10 accountForadditionalLength];

  return v10;
}

@end