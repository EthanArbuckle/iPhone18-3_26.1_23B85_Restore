@interface backtapInput
- (backtapInput)initWithModel_input:(id)model_input;
- (id)featureValueForName:(id)name;
@end

@implementation backtapInput

- (backtapInput)initWithModel_input:(id)model_input
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model_input);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = backtapInput;
  selfCopy = [(backtapInput *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_model_input, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"model_input"])
  {
    v5 = MEMORY[0x277CBFEF8];
    model_input = [(backtapInput *)selfCopy model_input];
    v9 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](model_input);
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