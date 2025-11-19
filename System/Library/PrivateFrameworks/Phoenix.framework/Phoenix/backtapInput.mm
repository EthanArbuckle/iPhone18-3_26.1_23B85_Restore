@interface backtapInput
- (backtapInput)initWithModel_input:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation backtapInput

- (backtapInput)initWithModel_input:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = backtapInput;
  v8 = [(backtapInput *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_model_input, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)featureValueForName:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"model_input"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(backtapInput *)v8 model_input];
    v9 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

@end