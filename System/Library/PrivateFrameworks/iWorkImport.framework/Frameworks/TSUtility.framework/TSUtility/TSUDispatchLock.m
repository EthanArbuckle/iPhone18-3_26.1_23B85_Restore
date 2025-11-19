@interface TSUDispatchLock
- (TSUDispatchLock)init;
- (TSUDispatchLock)initWithLabel:(id)a3;
- (void)assertHasReadLock;
- (void)assertHasWriteLock;
@end

@implementation TSUDispatchLock

- (TSUDispatchLock)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDispatchLock init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDispatchLock.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:19 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUDispatchLock init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUDispatchLock)initWithLabel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSUDispatchLock;
  v5 = [(TSUDispatchLock *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = TSUCreateRecursiveQueue(v4, v6);
    underlyingQueue = v5->_underlyingQueue;
    v5->_underlyingQueue = v7;
  }

  return v5;
}

- (void)assertHasReadLock
{
  v2 = self->_underlyingQueue;
  v4 = v2;
  if (v2 != MEMORY[0x277D85CD0] || (v3 = [MEMORY[0x277CCACC8] isMainThread], v2 = v4, (v3 & 1) == 0))
  {
    dispatch_assert_queue_V2(v2);
    v2 = v4;
  }

  MEMORY[0x2821F96F8](v3, v2);
}

- (void)assertHasWriteLock
{
  v2 = self->_underlyingQueue;
  v4 = v2;
  if (v2 != MEMORY[0x277D85CD0] || (v3 = [MEMORY[0x277CCACC8] isMainThread], v2 = v4, (v3 & 1) == 0))
  {
    dispatch_assert_queue_barrier(v2);
    v2 = v4;
  }

  MEMORY[0x2821F96F8](v3, v2);
}

@end