@interface SNTestSuite
- (SNTestSuite)init;
- (SNTestSuite)parentTestSuite;
- (id)testRunForTestName:(id)name;
- (id)testSetupList;
- (void)addSubTestSuite:(id)suite;
- (void)addTestCase:(id)case;
@end

@implementation SNTestSuite

- (SNTestSuite)init
{
  v8.receiver = self;
  v8.super_class = SNTestSuite;
  v2 = [(SNTestSuite *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    testCases = v2->_testCases;
    v2->_testCases = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subTestSuites = v2->_subTestSuites;
    v2->_subTestSuites = v5;
  }

  return v2;
}

- (void)addTestCase:(id)case
{
  caseCopy = case;
  testCases = [(SNTestSuite *)self testCases];
  testName = [caseCopy testName];
  [testCases setObject:caseCopy forKey:testName];
}

- (void)addSubTestSuite:(id)suite
{
  if (suite != self)
  {
    suiteCopy = suite;
    [suiteCopy setParentTestSuite:self];
    subTestSuites = [(SNTestSuite *)self subTestSuites];
    [subTestSuites addObject:suiteCopy];
  }
}

- (id)testRunForTestName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  testCases = [(SNTestSuite *)self testCases];
  v6 = [testCases objectForKey:nameCopy];

  if (v6)
  {
    v7 = [[SNTestRun alloc] initWithTestCase:v6 testSuite:self];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subTestSuites = [(SNTestSuite *)self subTestSuites];
    v9 = [subTestSuites countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(subTestSuites);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) testRunForTestName:nameCopy];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [subTestSuites countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)testSetupList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(SNTestSuite *)self conformsToProtocol:&unk_287E962B8])
  {
    [v3 addObject:self];
  }

  parentTestSuite = [(SNTestSuite *)self parentTestSuite];
  if (parentTestSuite)
  {
    v5 = parentTestSuite;
    do
    {
      if ([v5 conformsToProtocol:&unk_287E962B8])
      {
        [v3 insertObject:v5 atIndex:0];
      }

      parentTestSuite2 = [v5 parentTestSuite];

      v5 = parentTestSuite2;
    }

    while (parentTestSuite2);
  }

  return v3;
}

- (SNTestSuite)parentTestSuite
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTestSuite);

  return WeakRetained;
}

@end