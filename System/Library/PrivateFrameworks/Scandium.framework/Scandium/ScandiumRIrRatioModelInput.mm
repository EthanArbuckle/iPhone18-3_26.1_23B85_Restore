@interface ScandiumRIrRatioModelInput
- (ScandiumRIrRatioModelInput)initWithIr:(id)ir red:(id)red;
- (id)featureValueForName:(id)name;
@end

@implementation ScandiumRIrRatioModelInput

- (ScandiumRIrRatioModelInput)initWithIr:(id)ir red:(id)red
{
  irCopy = ir;
  redCopy = red;
  v12.receiver = self;
  v12.super_class = ScandiumRIrRatioModelInput;
  v9 = [(ScandiumRIrRatioModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ir, ir);
    objc_storeStrong(&v10->_red, red);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ir"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(ScandiumRIrRatioModelInput *)self ir];
LABEL_5:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"red"])
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