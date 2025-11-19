@interface TSUBasicProgress
- (TSUBasicProgress)initWithMaxValue:(double)a3;
- (id)initForSubclass;
- (void)setIndeterminate:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation TSUBasicProgress

- (TSUBasicProgress)initWithMaxValue:(double)a3
{
  v8.receiver = self;
  v8.super_class = TSUBasicProgress;
  v4 = [(TSUProgress *)&v8 initForSubclass];
  if (v4)
  {
    v5 = objc_alloc_init(TSUBasicProgressStorage);
    storage = v4->_storage;
    v4->_storage = v5;

    [(TSUBasicProgressStorage *)v4->_storage setMaxValue:a3];
  }

  return v4;
}

- (id)initForSubclass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBasicProgress initForSubclass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUProgress.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:181 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUBasicProgress initForSubclass]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setValue:(double)a3
{
  [(TSUBasicProgressStorage *)self->_storage setValue:a3];

  [(TSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)a3
{
  [(TSUBasicProgressStorage *)self->_storage setIndeterminate:a3];

  [(TSUProgress *)self protected_progressDidChange];
}

@end