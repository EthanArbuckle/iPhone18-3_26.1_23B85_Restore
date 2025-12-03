@interface PFAssertionHandler
+ (BOOL)runningUnderDebugger;
+ (BOOL)runningUnitTests;
+ (id)currentHandler;
- (PFAssertionHandler)init;
- (id)defaultPolicy;
- (id)defaultTestingPolicy;
- (id)newAssertionInfoInMethod:(SEL)method object:(id)object function:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments;
- (void)_install;
- (void)continueAfterAssertInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments;
- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description;
- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments;
- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number description:(id)description;
@end

@implementation PFAssertionHandler

- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description
{
  v7 = [(PFAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number description:description arguments:&v9, &v9];
  [v7 setIsFatal:1];
  policy = [(PFAssertionHandler *)self policy];
  [policy notifyAssertion:v7];

  abort();
}

- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number description:(id)description
{
  v8 = [(PFAssertionHandler *)self newAssertionInfoInMethod:method object:object function:0 file:file lineNumber:number description:description arguments:&v10, &v10];
  [v8 setIsFatal:1];
  policy = [(PFAssertionHandler *)self policy];
  [policy notifyAssertion:v8];

  abort();
}

- (void)continueAfterAssertInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments
{
  v9 = [(PFAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number description:description arguments:arguments];
  [v9 setIsFatal:0];
  policy = [(PFAssertionHandler *)self policy];
  [policy notifyAssertion:v9];
}

- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments
{
  v8 = [(PFAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number description:description arguments:arguments];
  [v8 setIsFatal:1];
  policy = [(PFAssertionHandler *)self policy];
  [policy notifyAssertion:v8];

  abort();
}

- (id)newAssertionInfoInMethod:(SEL)method object:(id)object function:(id)function file:(id)file lineNumber:(int64_t)number description:(id)description arguments:(char *)arguments
{
  descriptionCopy = description;
  fileCopy = file;
  functionCopy = function;
  objectCopy = object;
  v18 = objc_alloc_init(PFAssertionInfo);
  [(PFAssertionInfo *)v18 setSelector:method];
  [(PFAssertionInfo *)v18 setObjectClass:objc_opt_class()];
  [(PFAssertionInfo *)v18 setFunctionName:functionCopy];

  v19 = objc_opt_class() == objectCopy;
  [(PFAssertionInfo *)v18 setIsClassMethod:v19];
  [(PFAssertionInfo *)v18 setFileName:fileCopy];

  [(PFAssertionInfo *)v18 setLineNumber:number];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:descriptionCopy arguments:arguments];

  [(PFAssertionInfo *)v18 setMessage:v20];
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v22 = [callStackSymbols subarrayWithRange:{0, objc_msgSend(callStackSymbols, "count") - 2}];
  [(PFAssertionInfo *)v18 setBacktrace:v22];

  return v18;
}

- (void)_install
{
  v2 = objc_opt_class();
  ClassMethod = class_getClassMethod(v2, sel_currentHandler);
  v4 = objc_opt_class();
  v5 = class_getClassMethod(v4, sel_currentHandler);
  Implementation = method_getImplementation(v5);

  method_setImplementation(ClassMethod, Implementation);
}

- (id)defaultTestingPolicy
{
  v2 = objc_alloc_init(PFAssertionPolicyComposite);
  v3 = objc_alloc_init(PFAssertionPolicyLog);
  [(PFAssertionPolicyComposite *)v2 addPolicy:v3];

  v4 = objc_alloc_init(PFAssertionPolicyUnitTest);
  [(PFAssertionPolicyComposite *)v2 addPolicy:v4];

  return v2;
}

- (id)defaultPolicy
{
  if (+[PFAssertionHandler runningUnitTests])
  {
    defaultTestingPolicy = [(PFAssertionHandler *)self defaultTestingPolicy];
  }

  else
  {
    defaultTestingPolicy = objc_alloc_init(PFAssertionPolicyUnique);
    v4 = objc_alloc_init(PFAssertionPolicyLog);
    [(PFAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v4];

    v5 = objc_alloc_init(PFAssertionPolicyDebuggerWarning);
    [(PFAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v5];

    v6 = objc_alloc_init(PFAssertionPolicyDebuggerFatal);
    [(PFAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v6];

    v7 = objc_alloc_init(PFAssertionPolicyCrashReport);
    [(PFAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v7];

    v8 = objc_alloc_init(PFAssertionPolicyAbort);
    [(PFAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v8];
  }

  return defaultTestingPolicy;
}

- (PFAssertionHandler)init
{
  v6.receiver = self;
  v6.super_class = PFAssertionHandler;
  v2 = [(PFAssertionHandler *)&v6 init];
  defaultPolicy = [(PFAssertionHandler *)v2 defaultPolicy];
  policy = v2->_policy;
  v2->_policy = defaultPolicy;

  return v2;
}

+ (BOOL)runningUnderDebugger
{
  if (runningUnderDebugger_onceToken != -1)
  {
    dispatch_once(&runningUnderDebugger_onceToken, &__block_literal_global_2);
  }

  return runningUnderDebugger_runningUnderDebugger;
}

uint64_t __42__PFAssertionHandler_runningUnderDebugger__block_invoke()
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  LODWORD(v4) = 0;
  *v34 = 0xE00000001;
  v35 = 1;
  v36 = getpid();
  v2 = 648;
  result = sysctl(v34, 4u, v3, &v2, 0, 0);
  runningUnderDebugger_runningUnderDebugger = (v4 & 0x800) != 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)runningUnitTests
{
  if (PFProcessIsLaunchedToExecuteTests_predicate != -1)
  {
    dispatch_once(&PFProcessIsLaunchedToExecuteTests_predicate, &__block_literal_global_89);
  }

  return PFProcessIsLaunchedToExecuteTests_isLaunchedToExecuteTests;
}

+ (id)currentHandler
{
  if (currentHandler_onceToken != -1)
  {
    dispatch_once(&currentHandler_onceToken, &__block_literal_global_141);
  }

  v3 = currentHandler_handler;

  return v3;
}

uint64_t __36__PFAssertionHandler_currentHandler__block_invoke()
{
  v0 = objc_alloc_init(PFAssertionHandler);
  v1 = currentHandler_handler;
  currentHandler_handler = v0;

  v2 = currentHandler_handler;

  return [v2 _install];
}

@end