@interface SFUJson
+ (id)arrayFromString:(id)string;
+ (id)dictionaryFromString:(id)string;
+ (id)objectFromString:(id)string;
+ (id)stringFromObject:(id)object;
@end

@implementation SFUJson

+ (id)stringFromObject:(id)object
{
  string = [MEMORY[0x277CCAB68] string];
  v5 = string;
  if (object)
  {
    [object appendJsonStringToString:string];
  }

  else
  {
    [string appendString:@"null"];
  }

  return v5;
}

+ (id)objectFromString:(id)string
{
  v3 = [[SFUJsonScanner alloc] initWithString:string];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseObjectWithMaxDepth:10000];

  return v4;
}

+ (id)arrayFromString:(id)string
{
  v3 = [[SFUJsonScanner alloc] initWithString:string];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseArrayWithMaxDepth:10000];

  return v4;
}

+ (id)dictionaryFromString:(id)string
{
  v3 = [[SFUJsonScanner alloc] initWithString:string];
  [(SFUJsonScanner *)v3 skipWhitespace];
  v4 = [(SFUJsonScanner *)v3 parseDictionaryWithMaxDepth:10000];

  return v4;
}

@end