@interface CNVCardParsingConcurrencyStrategy
+ (BOOL)shouldTryConcurrentParsingForOptions:(id)a3;
+ (id)strategyForOptions:(id)a3;
@end

@implementation CNVCardParsingConcurrencyStrategy

+ (id)strategyForOptions:(id)a3
{
  v3 = [a1 shouldTryConcurrentParsingForOptions:a3];
  v4 = off_27A710740;
  if (!v3)
  {
    v4 = &off_27A710748;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

+ (BOOL)shouldTryConcurrentParsingForOptions:(id)a3
{
  v3 = a3;
  if ([v3 useConcurrentParsing])
  {
    v4 = [v3 contactLimit] > 0x7F;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end