@interface BackTapRNNOutput
- (BackTapRNNOutput)initWithOutput:(id)output updated_history:(id)updated_history;
- (id)featureValueForName:(id)name;
@end

@implementation BackTapRNNOutput

- (BackTapRNNOutput)initWithOutput:(id)output updated_history:(id)updated_history
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, output);
  v9 = 0;
  objc_storeStrong(&v9, updated_history);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = BackTapRNNOutput;
  selfCopy = [(BackTapRNNOutput *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_output, location[0]);
    objc_storeStrong(&selfCopy->_updated_history, v9);
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
  if ([location[0] isEqualToString:@"output"])
  {
    v7 = MEMORY[0x277CBFEF8];
    output = [(BackTapRNNOutput *)selfCopy output];
    v11 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](output);
  }

  else if ([location[0] isEqualToString:@"updated_history"])
  {
    v5 = MEMORY[0x277CBFEF8];
    updated_history = [(BackTapRNNOutput *)selfCopy updated_history];
    v11 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x277D82BD8](updated_history);
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