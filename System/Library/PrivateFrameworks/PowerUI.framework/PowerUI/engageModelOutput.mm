@interface engageModelOutput
- (engageModelOutput)initWithEngage:(int64_t)engage classProbability:(id)probability;
- (id)featureValueForName:(id)name;
@end

@implementation engageModelOutput

- (engageModelOutput)initWithEngage:(int64_t)engage classProbability:(id)probability
{
  probabilityCopy = probability;
  v11.receiver = self;
  v11.super_class = engageModelOutput;
  v8 = [(engageModelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_engage = engage;
    objc_storeStrong(&v8->_classProbability, probability);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"engage"])
  {
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[engageModelOutput engage](self, "engage")}];
  }

  else if ([nameCopy isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    classProbability = [(engageModelOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:classProbability error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end