@interface SXDataTableConditionEngine
+ (id)engine;
- (unint64_t)isEvenInteger:(int64_t)integer;
- (unint64_t)isOddInteger:(int64_t)integer;
- (void)addConditionForEqualInteger:(unint64_t)integer withInteger:(unint64_t)withInteger;
- (void)addConditionForEqualString:(id)string withString:(id)withString;
- (void)addConditionForEvenBoolean:(unint64_t)boolean withInteger:(unint64_t)integer;
- (void)addConditionForOddBoolean:(unint64_t)boolean withInteger:(unint64_t)integer;
@end

@implementation SXDataTableConditionEngine

+ (id)engine
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)addConditionForEvenBoolean:(unint64_t)boolean withInteger:(unint64_t)integer
{
  if (boolean)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([(SXDataTableConditionEngine *)self isEvenInteger:integer]== boolean)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForOddBoolean:(unint64_t)boolean withInteger:(unint64_t)integer
{
  if (boolean)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([(SXDataTableConditionEngine *)self isOddInteger:integer]== boolean)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForEqualInteger:(unint64_t)integer withInteger:(unint64_t)withInteger
{
  if (integer != -1)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if (integer == withInteger)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForEqualString:(id)string withString:(id)withString
{
  stringCopy = string;
  withStringCopy = withString;
  if (stringCopy)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([stringCopy isEqualToString:withStringCopy])
    {
      [(SXDataTableConditionEngine *)self setValidConditionCount:[(SXDataTableConditionEngine *)self validConditionCount]+ 1];
    }
  }
}

- (unint64_t)isEvenInteger:(int64_t)integer
{
  if (integer)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)isOddInteger:(int64_t)integer
{
  if (integer)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end