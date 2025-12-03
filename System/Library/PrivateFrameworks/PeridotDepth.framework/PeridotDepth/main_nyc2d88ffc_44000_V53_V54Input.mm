@interface main_nyc2d88ffc_44000_V53_V54Input
- (id)featureValueForName:(id)name;
- (main_nyc2d88ffc_44000_V53_V54Input)initWithJasper:(id)jasper;
@end

@implementation main_nyc2d88ffc_44000_V53_V54Input

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"jasper"])
  {
    v4 = MEMORY[0x277CBFEF8];
    jasper = [(main_nyc2d88ffc_44000_V53_V54Input *)self jasper];
    v6 = [v4 featureValueWithMultiArray:jasper];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (main_nyc2d88ffc_44000_V53_V54Input)initWithJasper:(id)jasper
{
  jasperCopy = jasper;
  v9.receiver = self;
  v9.super_class = main_nyc2d88ffc_44000_V53_V54Input;
  v6 = [(main_nyc2d88ffc_44000_V53_V54Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_jasper, jasper);
  }

  return v7;
}

@end