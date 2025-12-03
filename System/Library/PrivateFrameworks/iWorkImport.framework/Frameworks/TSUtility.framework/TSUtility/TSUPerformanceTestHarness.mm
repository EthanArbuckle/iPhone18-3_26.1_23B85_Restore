@interface TSUPerformanceTestHarness
+ (id)harness;
- (BOOL)runTests;
- (TSUPerformanceTestHarness)init;
- (id)p_createResultDirectory;
- (id)testWithName:(id)name selector:(SEL)selector goalTime:(double)time;
- (void)cleanup;
- (void)dealloc;
- (void)p_writeCsvResultsToDirectory:(id)directory;
- (void)p_writeSystemConfigurationToDirectory:(id)directory;
- (void)report;
- (void)runTestWithName:(id)name selector:(SEL)selector goalTime:(double)time;
- (void)runTestWithName:(id)name selector:(SEL)selector goalTime:(double)time precision:(double)precision;
- (void)setup;
- (void)testSuite;
@end

@implementation TSUPerformanceTestHarness

- (TSUPerformanceTestHarness)init
{
  v4.receiver = self;
  v4.super_class = TSUPerformanceTestHarness;
  v2 = [(TSUPerformanceTestHarness *)&v4 init];
  if (v2)
  {
    v2->mTestCases = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->mQuiet = 0;
    v2->mPassingTests = 0;
    v2->mTotalTests = 0;
    v2->mPassed = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUPerformanceTestHarness;
  [(TSUPerformanceTestHarness *)&v3 dealloc];
}

+ (id)harness
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)testWithName:(id)name selector:(SEL)selector goalTime:(double)time
{
  v6 = [[TSUPerformanceTest alloc] initWithName:name selector:selector target:self goalTime:time];
  [(NSMutableArray *)self->mTestCases addObject:v6];
  [(TSUPerformanceTest *)v6 setQuiet:self->mQuiet];

  return v6;
}

- (void)runTestWithName:(id)name selector:(SEL)selector goalTime:(double)time
{
  v6 = [(TSUPerformanceTestHarness *)self testWithName:name selector:selector goalTime:time];
  [v6 setQuiet:self->mQuiet];

  MEMORY[0x2821F9670](v6, &sel_run);
}

- (void)runTestWithName:(id)name selector:(SEL)selector goalTime:(double)time precision:(double)precision
{
  v8 = [(TSUPerformanceTestHarness *)self testWithName:name selector:selector goalTime:time];
  [v8 setPrecision:precision];
  [v8 setQuiet:self->mQuiet];

  MEMORY[0x2821F9670](v8, &sel_run);
}

- (void)setup
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness setup]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 85, 0, "Subclasses must override %s!", "-[TSUPerformanceTestHarness setup]");

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (void)testSuite
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness testSuite]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 89, 0, "Subclasses must override %s!", "-[TSUPerformanceTestHarness testSuite]");

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (void)cleanup
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness cleanup]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 93, 0, "Subclasses must override %s!", "-[TSUPerformanceTestHarness cleanup]");

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (BOOL)runTests
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->mQuiet)
  {
    NSLog(@"Performance tests starting...", a2);
  }

  gettimeofday(&self->mSetupTime, 0);
  [(TSUPerformanceTestHarness *)self setup];
  [(TSUPerformanceTestHarness *)self testSuite];
  [(TSUPerformanceTestHarness *)self cleanup];
  v3 = [(NSMutableArray *)self->mTestCases count];
  self->mPassingTests = 0;
  self->mTotalTests = v3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mTestCases = self->mTestCases;
  v5 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mTestCases);
        }

        if ([*(*(&v10 + 1) + 8 * i) passed])
        {
          ++self->mPassingTests;
        }
      }

      v6 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->mPassed = self->mPassingTests == self->mTotalTests;
  if (!self->mQuiet)
  {
    NSLog(@"Performance tests finished");
  }

  [(TSUPerformanceTestHarness *)self report];
  return self->mPassed;
}

- (void)report
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->mQuiet)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mTestCases = self->mTestCases;
    v4 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(mTestCases);
          }

          [*(*(&v13 + 1) + 8 * i) report];
        }

        v5 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  mQuiet = self->mQuiet;
  mPassed = self->mPassed;
  if (!mQuiet || !mPassed)
  {
    if (!mQuiet && mPassed)
    {
      v10 = "PASSED";
    }

    else
    {
      v10 = "FAILED";
    }

    NSLog(@"Performance tests %s [%ld passed out of %ld]", v10, self->mPassingTests, self->mTotalTests);
  }

  p_createResultDirectory = [(TSUPerformanceTestHarness *)self p_createResultDirectory];
  if (p_createResultDirectory)
  {
    v12 = p_createResultDirectory;
    [(TSUPerformanceTestHarness *)self p_writeSystemConfigurationToDirectory:p_createResultDirectory];
    [(TSUPerformanceTestHarness *)self p_writeCsvResultsToDirectory:v12];
  }

  else
  {
    NSLog(@"Unable to create a directory to hold performance test result files");
  }
}

- (id)p_createResultDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory objectAtIndex:1), "objectAtIndex:", 0];
  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness(Private) p_createResultDirectory]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 164, 0, "invalid nil value for '%{public}s'", "supportDirectory");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd HH.mm.ss"];
  v6 = [v5 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];

  v7 = [MEMORY[0x277CCACA8] pathWithComponents:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v3, @"PerformanceTestResults", v6, 0)}];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness(Private) p_createResultDirectory]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 172, 0, "invalid nil value for '%{public}s'", "path");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if ([defaultManager fileExistsAtPath:v7])
  {
    NSLog(@"Not expecting the path %@ to already exist", v7, v10);
    return 0;
  }

  v11 = 0;
  if (([defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v11] & 1) == 0)
  {
    NSLog(@"Unable to create a directory at %@ due to error: %@", v7, v11);
    return 0;
  }

  return v7;
}

- (void)p_writeSystemConfigurationToDirectory:(id)directory
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [directory stringByAppendingPathComponent:@"system_config.txt"];
  v4 = fopen([v3 UTF8String], "w");
  if (!v4)
  {
    NSLog(@"Could not create the file %@", v3);
    return;
  }

  v5 = v4;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  fwrite("*** UIDEVICE ***\n", 0x11uLL, 1uLL, v5);
  fprintf(v5, "name:%s\n", [objc_msgSend(currentDevice "name")]);
  fprintf(v5, "systemName:%s\n", [objc_msgSend(currentDevice "systemName")]);
  fprintf(v5, "systemVersion:%s\n", [objc_msgSend(currentDevice "systemVersion")]);
  fprintf(v5, "model:%s\n", [objc_msgSend(currentDevice "model")]);
  fwrite("*** UNAME ***\n", 0xEuLL, 1uLL, v5);
  memset(&v16, 0, 512);
  v7 = uname(&v16);
  if (v7)
  {
    NSLog(@"Error calling uname: %d", v7);
  }

  else
  {
    fprintf(v5, "sysname:%s\n", v16.sysname);
    fprintf(v5, "nodename:%s\n", v16.nodename);
    fprintf(v5, "release:%s\n", v16.release);
    fprintf(v5, "version:%s\n", v16.version);
    fprintf(v5, "machine:%s\n", v16.machine);
  }

  fwrite("*** SYSCTL ***\n", 0xFuLL, 1uLL, v5);
  size = 0;
  v8 = sysctlbyname("hw.model", 0, &size, 0, 0);
  if (!v8)
  {
    v9 = malloc_type_malloc(size, 0x7F1BD634uLL);
    v10 = sysctlbyname("hw.model", v9, &size, 0, 0);
    if (!v10)
    {
      fprintf(v5, "hw.model:%s\n", v9);
      free(v9);
      goto LABEL_10;
    }

    v8 = v10;
    free(v9);
  }

  NSLog(@"Error getting hw.model from sysctl: %d", v8);
LABEL_10:
  v14 = 0;
  size = 8;
  v11 = sysctlbyname("hw.memsize", &v14, &size, 0, 0);
  if (v11)
  {
    NSLog(@"Error getting hw.memsize: %d", v11);
  }

  else
  {
    fprintf(v5, "hw.memsize:%qi\n", v14);
  }

  v13 = 0;
  size = 4;
  v12 = sysctlbyname("hw.usermem", &v13, &size, 0, 0);
  if (v12)
  {
    NSLog(@"Error getting hw.usermem: %d", v12);
  }

  else
  {
    fprintf(v5, "hw.usermem:%d\n", v13);
  }

  fclose(v5);
}

- (void)p_writeCsvResultsToDirectory:(id)directory
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [directory stringByAppendingPathComponent:@"results.csv"];
  v5 = fopen([v4 UTF8String], "w");
  if (v5)
  {
    v6 = v5;
    v13 = v4;
    fprintf(v5, "%s\n", [+[TSUPerformanceTest csvHeader](TSUPerformanceTest "csvHeader")]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    mTestCases = self->mTestCases;
    v8 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(mTestCases);
          }

          if (fprintf(v6, "%s\n", [objc_msgSend(*(*(&v14 + 1) + 8 * v11) "csvString")]) <= 0)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPerformanceTestHarness(Private) p_writeCsvResultsToDirectory:]"];
            +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPerformanceTestHarness.m"], 269, 0, "Problem printing to %@", v13);
            +[TSUAssertionHandler logBacktraceThrottled];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)mTestCases countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    fclose(v6);
  }

  else
  {
    NSLog(@"Could not create the file %@", v4);
  }
}

@end