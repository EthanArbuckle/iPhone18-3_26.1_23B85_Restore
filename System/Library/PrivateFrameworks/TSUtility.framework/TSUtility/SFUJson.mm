@interface SFUJson
+ (id)arrayFromString:(id)a3;
+ (id)dictionaryFromString:(id)a3;
+ (id)objectFromString:(id)a3;
+ (id)stringFromObject:(id)a3;
@end

@implementation SFUJson

+ (id)stringFromObject:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  if (a3)
  {
    [a3 appendJsonStringToString:v4];
  }

  else
  {
    [v4 appendString:@"null"];
  }

  return v5;
}

+ (id)objectFromString:(id)a3
{
  v3 = [[SFUJsonScanner alloc] initWithString:a3];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseObjectWithMaxDepth:10000];

  return v4;
}

+ (id)arrayFromString:(id)a3
{
  v3 = [[SFUJsonScanner alloc] initWithString:a3];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseArrayWithMaxDepth:10000];

  return v4;
}

+ (id)dictionaryFromString:(id)a3
{
  v3 = [[SFUJsonScanner alloc] initWithString:a3];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseDictionaryWithMaxDepth:10000];

  return v4;
}

@end