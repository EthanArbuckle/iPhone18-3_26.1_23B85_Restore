@interface TSUAssertionHandler
+ (id)currentHandler;
+ (id)performBlockIgnoringAssertions:(id)assertions;
+ (void)installAsNSHandler;
+ (void)testCaseStarted:(id)started;
+ (void)testCaseStopped:(id)stopped;
- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number description:(id)description;
- (void)handleFailureWithLocation:(id)location file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments;
@end

@implementation TSUAssertionHandler

+ (void)testCaseStarted:(id)started
{
  object = [started object];
  v4 = object;

  _senTestCaseRun = object;
  _senTestCasePool = objc_alloc_init(MEMORY[0x277CCA8B0]);
}

+ (void)testCaseStopped:(id)stopped
{
  _senTestCasePool = 0;

  _senTestCaseRun = 0;
}

+ (void)installAsNSHandler
{
  v3 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  currentHandler = [self currentHandler];

  [v3 setObject:currentHandler forKey:@"NSAssertionHandler"];
}

+ (id)performBlockIgnoringAssertions:(id)assertions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = _callbackBlock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TSUAssertionHandler_performBlockIgnoringAssertions___block_invoke;
  v6[3] = &unk_279D65D98;
  v6[4] = &v7;
  _callbackBlock = v6;
  (*(assertions + 2))(assertions, a2);
  _callbackBlock = v3;
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __54__TSUAssertionHandler_performBlockIgnoringAssertions___block_invoke(uint64_t a1, void *a2)
{
  TSULogSink(@"Error", @"*** Ignored previous assertion failure ***");
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

+ (id)currentHandler
{
  v2 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v3 = [v2 objectForKey:@"TSUAssertionHandler"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v4 = objc_alloc_init(TSUAssertionHandler);
    [v2 setObject:v4 forKey:@"TSUAssertionHandler"];
  }

  return v4;
}

- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number description:(id)description
{
  v13 = objc_opt_class();
  v14 = MEMORY[0x277CCACA8];
  v16 = NSStringFromClass(v13);
  v17 = NSStringFromSelector(method);
  v15 = 45;
  if (v13 == object)
  {
    v15 = 43;
  }

  -[TSUAssertionHandler handleFailureWithLocation:file:lineNumber:description:arguments:](self, "handleFailureWithLocation:file:lineNumber:description:arguments:", [v14 stringWithFormat:@"%c[%@ %@]", v15, v16, v17], file, number, description, &v18);
}

- (void)handleFailureWithLocation:(id)location file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments
{
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:description arguments:arguments];
  lastPathComponent = [file lastPathComponent];
  TSULogSink(@"Error", @"*** Assertion failure #%lu: %@ %@:%d %@", ++handleFailureWithLocation_file_lineNumber_description_arguments__assertionCount, location, lastPathComponent, number, v10);
}

@end