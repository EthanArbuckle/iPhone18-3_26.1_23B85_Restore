@interface deoc_seriesOutput
- (deoc_seriesOutput)initWithTarget:(int64_t)target classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation deoc_seriesOutput

- (deoc_seriesOutput)initWithTarget:(int64_t)target classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = deoc_seriesOutput;
  v8 = [(deoc_seriesOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_target = target;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"target"])
  {
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[deoc_seriesOutput target](self, "target")}];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    classProbability = [(deoc_seriesOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end