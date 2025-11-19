@interface ScandiumRIrRatioModelInput
- (ScandiumRIrRatioModelInput)initWithIr:(id)a3 red:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation ScandiumRIrRatioModelInput

- (ScandiumRIrRatioModelInput)initWithIr:(id)a3 red:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ScandiumRIrRatioModelInput;
  v9 = [(ScandiumRIrRatioModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ir, a3);
    objc_storeStrong(&v10->_red, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ir"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(ScandiumRIrRatioModelInput *)self ir];
LABEL_5:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"red"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(ScandiumRIrRatioModelInput *)self red];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end