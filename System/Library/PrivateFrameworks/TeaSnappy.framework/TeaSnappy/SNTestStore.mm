@interface SNTestStore
- (SNTestRun)extendedLaunchTestRun;
- (SNTestStore)init;
- (id)testRunForTestName:(id)name;
- (void)addTestCase:(id)case;
- (void)addTestSuite:(id)suite;
@end

@implementation SNTestStore

- (SNTestStore)init
{
  v8.receiver = self;
  v8.super_class = SNTestStore;
  v2 = [(SNTestStore *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    testSuites = v2->_testSuites;
    v2->_testSuites = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    testCases = v2->_testCases;
    v2->_testCases = v5;
  }

  return v2;
}

- (SNTestRun)extendedLaunchTestRun
{
  extendedLaunchTest = [(SNTestStore *)self extendedLaunchTest];

  if (extendedLaunchTest)
  {
    v4 = [SNTestRun alloc];
    extendedLaunchTest2 = [(SNTestStore *)self extendedLaunchTest];
    v6 = [(SNTestRun *)v4 initWithTestCase:extendedLaunchTest2 testSuite:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addTestSuite:(id)suite
{
  suiteCopy = suite;
  testSuites = [(SNTestStore *)self testSuites];
  [testSuites addObject:suiteCopy];
}

- (void)addTestCase:(id)case
{
  caseCopy = case;
  testCases = [(SNTestStore *)self testCases];
  testName = [caseCopy testName];
  [testCases setObject:caseCopy forKey:testName];
}

- (id)testRunForTestName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  testCases = [(SNTestStore *)self testCases];
  v6 = [testCases objectForKey:nameCopy];

  if (v6)
  {
    v7 = [[SNTestRun alloc] initWithTestCase:v6 testSuite:0];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    testSuites = [(SNTestStore *)self testSuites];
    v9 = [testSuites countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(testSuites);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) testRunForTestName:nameCopy];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [testSuites countByEnumeratingWithState:&v16 objects:v20 count:16];
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

@end