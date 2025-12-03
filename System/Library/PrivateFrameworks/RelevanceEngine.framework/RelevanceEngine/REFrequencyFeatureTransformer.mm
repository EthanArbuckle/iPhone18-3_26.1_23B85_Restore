@interface REFrequencyFeatureTransformer
+ (id)frequencyTransformWithCount:(unint64_t)count minimumValidCount:(int64_t)validCount;
@end

@implementation REFrequencyFeatureTransformer

+ (id)frequencyTransformWithCount:(unint64_t)count minimumValidCount:(int64_t)validCount
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = RECreateIntegerFeatureValueTaggedPointer(count);
  v10 = RECreateIntegerFeatureValueTaggedPointer(validCount);
  v5 = [RETransformerInvocation invocationWithArguments:&v9 count:2];
  REReleaseFeatureValueTaggedPointer(v9);
  REReleaseFeatureValueTaggedPointer(v10);
  v6 = objc_alloc_init(_REFrequencyFeatureTransformer);
  [(_REFrequencyFeatureTransformer *)v6 configureWithInvocation:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end