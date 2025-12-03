@interface deoc_model_iphoneOutput
- (deoc_model_iphoneOutput)initWithNext_drain_is_significant:(int64_t)next_drain_is_significant classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation deoc_model_iphoneOutput

- (deoc_model_iphoneOutput)initWithNext_drain_is_significant:(int64_t)next_drain_is_significant classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = deoc_model_iphoneOutput;
  v8 = [(deoc_model_iphoneOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_next_drain_is_significant = next_drain_is_significant;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"next_drain_is_significant"])
  {
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[deoc_model_iphoneOutput next_drain_is_significant](self, "next_drain_is_significant")}];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    classProbability = [(deoc_model_iphoneOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end