@interface SNTestSuite
- (SNTestSuite)init;
- (SNTestSuite)parentTestSuite;
- (id)testRunForTestName:(id)a3;
- (id)testSetupList;
- (void)addSubTestSuite:(id)a3;
- (void)addTestCase:(id)a3;
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

- (void)addTestCase:(id)a3
{
  v4 = a3;
  v6 = [(SNTestSuite *)self testCases];
  v5 = [v4 testName];
  [v6 setObject:v4 forKey:v5];
}

- (void)addSubTestSuite:(id)a3
{
  if (a3 != self)
  {
    v5 = a3;
    [v5 setParentTestSuite:self];
    v6 = [(SNTestSuite *)self subTestSuites];
    [v6 addObject:v5];
  }
}

- (id)testRunForTestName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SNTestSuite *)self testCases];
  v6 = [v5 objectForKey:v4];

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
    v8 = [(SNTestSuite *)self subTestSuites];
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

- (id)testSetupList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(SNTestSuite *)self conformsToProtocol:&unk_287E962B8])
  {
    [v3 addObject:self];
  }

  v4 = [(SNTestSuite *)self parentTestSuite];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v5 conformsToProtocol:&unk_287E962B8])
      {
        [v3 insertObject:v5 atIndex:0];
      }

      v6 = [v5 parentTestSuite];

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

- (SNTestSuite)parentTestSuite
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTestSuite);

  return WeakRetained;
}

@end