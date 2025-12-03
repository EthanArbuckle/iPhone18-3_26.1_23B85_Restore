@interface deoc_ultraOutput
- (deoc_ultraOutput)initWithTarget:(int64_t)target classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation deoc_ultraOutput

- (deoc_ultraOutput)initWithTarget:(int64_t)target classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = deoc_ultraOutput;
  v8 = [(deoc_ultraOutput *)&v11 init];
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
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[deoc_ultraOutput target](self, "target")}];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    classProbability = [(deoc_ultraOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end