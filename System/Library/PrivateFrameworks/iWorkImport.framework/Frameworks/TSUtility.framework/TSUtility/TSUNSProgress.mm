@interface TSUNSProgress
- (TSUNSProgress)init;
- (TSUNSProgress)initWithNSProgress:(id)progress;
- (id)initForSubclass;
@end

@implementation TSUNSProgress

- (TSUNSProgress)initWithNSProgress:(id)progress
{
  v16[2] = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v15.receiver = self;
  v15.super_class = TSUNSProgress;
  initForSubclass = [(TSUProgress *)&v15 initForSubclass];
  v7 = initForSubclass;
  if (initForSubclass)
  {
    objc_storeStrong(initForSubclass + 5, progress);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2770927F0;
    v14[3] = &unk_27A702580;
    v14[4] = v7;
    v8 = _Block_copy(v14);
    v9 = [TSUKeyValueObserver observerWithTarget:v7->_NSProgress keyPath:@"fractionCompleted" changeHandler:v8];
    v10 = [TSUKeyValueObserver observerWithTarget:v7->_NSProgress keyPath:@"indeterminate" changeHandler:v8];
    v16[0] = v9;
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    NSProgressObservers = v7->_NSProgressObservers;
    v7->_NSProgressObservers = v11;
  }

  return v7;
}

- (TSUNSProgress)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNSProgress init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:239 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUNSProgress init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)initForSubclass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNSProgress initForSubclass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:243 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUNSProgress initForSubclass]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end