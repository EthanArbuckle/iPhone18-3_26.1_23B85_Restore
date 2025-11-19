@interface SXDataTableConditionEngine
+ (id)engine;
- (unint64_t)isEvenInteger:(int64_t)a3;
- (unint64_t)isOddInteger:(int64_t)a3;
- (void)addConditionForEqualInteger:(unint64_t)a3 withInteger:(unint64_t)a4;
- (void)addConditionForEqualString:(id)a3 withString:(id)a4;
- (void)addConditionForEvenBoolean:(unint64_t)a3 withInteger:(unint64_t)a4;
- (void)addConditionForOddBoolean:(unint64_t)a3 withInteger:(unint64_t)a4;
@end

@implementation SXDataTableConditionEngine

+ (id)engine
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)addConditionForEvenBoolean:(unint64_t)a3 withInteger:(unint64_t)a4
{
  if (a3)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([(SXDataTableConditionEngine *)self isEvenInteger:a4]== a3)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForOddBoolean:(unint64_t)a3 withInteger:(unint64_t)a4
{
  if (a3)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([(SXDataTableConditionEngine *)self isOddInteger:a4]== a3)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForEqualInteger:(unint64_t)a3 withInteger:(unint64_t)a4
{
  if (a3 != -1)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if (a3 == a4)
    {
      v7 = [(SXDataTableConditionEngine *)self validConditionCount]+ 1;

      [(SXDataTableConditionEngine *)self setValidConditionCount:v7];
    }
  }
}

- (void)addConditionForEqualString:(id)a3 withString:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(SXDataTableConditionEngine *)self setConditionCount:[(SXDataTableConditionEngine *)self conditionCount]+ 1];
    if ([v7 isEqualToString:v6])
    {
      [(SXDataTableConditionEngine *)self setValidConditionCount:[(SXDataTableConditionEngine *)self validConditionCount]+ 1];
    }
  }
}

- (unint64_t)isEvenInteger:(int64_t)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)isOddInteger:(int64_t)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end