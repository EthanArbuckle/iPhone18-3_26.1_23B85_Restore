@interface BackTapRNNInput
- (BackTapRNNInput)initWithModel_input:(id)a3 history:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation BackTapRNNInput

- (BackTapRNNInput)initWithModel_input:(id)a3 history:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = BackTapRNNInput;
  v11 = [(BackTapRNNInput *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_model_input, location[0]);
    objc_storeStrong(&v11->_history, v9);
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (id)featureValueForName:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"model_input"])
  {
    v7 = MEMORY[0x277CBFEF8];
    v8 = [(BackTapRNNInput *)v10 model_input];
    v11 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](v8);
  }

  else if ([location[0] isEqualToString:@"history"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(BackTapRNNInput *)v10 history];
    v11 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

@end