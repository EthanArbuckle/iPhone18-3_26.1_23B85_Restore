@interface REFrequencyFeatureTransformer
+ (id)frequencyTransformWithCount:(unint64_t)a3 minimumValidCount:(int64_t)a4;
@end

@implementation REFrequencyFeatureTransformer

+ (id)frequencyTransformWithCount:(unint64_t)a3 minimumValidCount:(int64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = RECreateIntegerFeatureValueTaggedPointer(a3);
  v10 = RECreateIntegerFeatureValueTaggedPointer(a4);
  v5 = [RETransformerInvocation invocationWithArguments:&v9 count:2];
  REReleaseFeatureValueTaggedPointer(v9);
  REReleaseFeatureValueTaggedPointer(v10);
  v6 = objc_alloc_init(_REFrequencyFeatureTransformer);
  [(_REFrequencyFeatureTransformer *)v6 configureWithInvocation:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end