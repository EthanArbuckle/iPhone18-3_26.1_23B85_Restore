@interface engageModelOutput
- (engageModelOutput)initWithEngage:(int64_t)a3 classProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation engageModelOutput

- (engageModelOutput)initWithEngage:(int64_t)a3 classProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = engageModelOutput;
  v8 = [(engageModelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_engage = a3;
    objc_storeStrong(&v8->_classProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"engage"])
  {
    v5 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{-[engageModelOutput engage](self, "engage")}];
  }

  else if ([v4 isEqualToString:@"classProbability"])
  {
    v6 = MEMORY[0x277CBFEF8];
    v7 = [(engageModelOutput *)self classProbability];
    v5 = [v6 featureValueWithDictionary:v7 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end