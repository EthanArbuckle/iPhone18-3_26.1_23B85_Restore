@interface CNVCardParsingConcurrencyStrategy
+ (BOOL)shouldTryConcurrentParsingForOptions:(id)options;
+ (id)strategyForOptions:(id)options;
@end

@implementation CNVCardParsingConcurrencyStrategy

+ (id)strategyForOptions:(id)options
{
  v3 = [self shouldTryConcurrentParsingForOptions:options];
  v4 = off_27A710740;
  if (!v3)
  {
    v4 = &off_27A710748;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

+ (BOOL)shouldTryConcurrentParsingForOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy useConcurrentParsing])
  {
    v4 = [optionsCopy contactLimit] > 0x7F;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end