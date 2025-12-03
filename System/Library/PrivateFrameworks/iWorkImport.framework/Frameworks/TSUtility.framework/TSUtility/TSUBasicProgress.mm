@interface TSUBasicProgress
- (TSUBasicProgress)initWithMaxValue:(double)value;
- (id)initForSubclass;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setValue:(double)value;
@end

@implementation TSUBasicProgress

- (TSUBasicProgress)initWithMaxValue:(double)value
{
  v8.receiver = self;
  v8.super_class = TSUBasicProgress;
  initForSubclass = [(TSUProgress *)&v8 initForSubclass];
  if (initForSubclass)
  {
    v5 = objc_alloc_init(TSUBasicProgressStorage);
    storage = initForSubclass->_storage;
    initForSubclass->_storage = v5;

    [(TSUBasicProgressStorage *)initForSubclass->_storage setMaxValue:value];
  }

  return initForSubclass;
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

- (void)setValue:(double)value
{
  [(TSUBasicProgressStorage *)self->_storage setValue:value];

  [(TSUProgress *)self protected_progressDidChange];
}

- (void)setIndeterminate:(BOOL)indeterminate
{
  [(TSUBasicProgressStorage *)self->_storage setIndeterminate:indeterminate];

  [(TSUProgress *)self protected_progressDidChange];
}

@end