@interface SNTestStore
- (SNTestRun)extendedLaunchTestRun;
- (SNTestStore)init;
- (id)testRunForTestName:(id)a3;
- (void)addTestCase:(id)a3;
- (void)addTestSuite:(id)a3;
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
  v3 = [(SNTestStore *)self extendedLaunchTest];

  if (v3)
  {
    v4 = [SNTestRun alloc];
    v5 = [(SNTestStore *)self extendedLaunchTest];
    v6 = [(SNTestRun *)v4 initWithTestCase:v5 testSuite:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addTestSuite:(id)a3
{
  v4 = a3;
  v5 = [(SNTestStore *)self testSuites];
  [v5 addObject:v4];
}

- (void)addTestCase:(id)a3
{
  v4 = a3;
  v6 = [(SNTestStore *)self testCases];
  v5 = [v4 testName];
  [v6 setObject:v4 forKey:v5];
}

- (id)testRunForTestName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SNTestStore *)self testCases];
  v6 = [v5 objectForKey:v4];

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
    v8 = [(SNTestStore *)self testSuites];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) testRunForTestName:v4];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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