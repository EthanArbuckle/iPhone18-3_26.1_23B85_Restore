@interface PFTObservableContractTerminationContext
+ (id)currentContext;
+ (unint64_t)currentThreadId;
- (PFTObservableContractTerminationContext)initWithCallStack:(id)a3 threadId:(unint64_t)a4;
@end

@implementation PFTObservableContractTerminationContext

+ (id)currentContext
{
  v3 = [MEMORY[0x277CCACC8] callStackSymbols];
  v4 = [[a1 alloc] initWithCallStack:v3 threadId:{objc_msgSend(a1, "currentThreadId")}];

  return v4;
}

+ (unint64_t)currentThreadId
{
  v4 = 0;
  if (!pthread_threadid_np(0, &v4))
  {
    return v4;
  }

  v2 = pthread_self();
  return pthread_mach_thread_np(v2);
}

- (PFTObservableContractTerminationContext)initWithCallStack:(id)a3 threadId:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PFTObservableContractTerminationContext;
  v7 = [(PFTObservableContractTerminationContext *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    callStack = v7->_callStack;
    v7->_callStack = v8;

    v7->_threadId = a4;
    v10 = v7;
  }

  return v7;
}

@end