@interface BackTapRNNInput
- (BackTapRNNInput)initWithModel_input:(id)model_input history:(id)history;
- (id)featureValueForName:(id)name;
@end

@implementation BackTapRNNInput

- (BackTapRNNInput)initWithModel_input:(id)model_input history:(id)history
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model_input);
  v9 = 0;
  objc_storeStrong(&v9, history);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = BackTapRNNInput;
  selfCopy = [(BackTapRNNInput *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_model_input, location[0]);
    objc_storeStrong(&selfCopy->_history, v9);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"model_input"])
  {
    v7 = MEMORY[0x277CBFEF8];
    model_input = [(BackTapRNNInput *)selfCopy model_input];
    v11 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](model_input);
  }

  else if ([location[0] isEqualToString:@"history"])
  {
    v5 = MEMORY[0x277CBFEF8];
    history = [(BackTapRNNInput *)selfCopy history];
    v11 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](history);
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