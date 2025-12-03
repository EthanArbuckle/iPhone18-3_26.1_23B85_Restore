@interface ScandiumRIrRatioModelOutput
- (ScandiumRIrRatioModelOutput)initWithIdentity:(id)identity;
- (id)featureValueForName:(id)name;
@end

@implementation ScandiumRIrRatioModelOutput

- (ScandiumRIrRatioModelOutput)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = ScandiumRIrRatioModelOutput;
  v6 = [(ScandiumRIrRatioModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Identity, identity);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"Identity"])
  {
    v4 = MEMORY[0x277CBFEF8];
    identity = [(ScandiumRIrRatioModelOutput *)self Identity];
    v6 = [v4 featureValueWithMultiArray:identity];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end