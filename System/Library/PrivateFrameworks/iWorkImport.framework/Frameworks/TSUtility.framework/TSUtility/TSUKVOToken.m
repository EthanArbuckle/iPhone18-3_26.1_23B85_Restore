@interface TSUKVOToken
- (BOOL)isEqual:(id)a3;
- (TSUKVOToken)init;
- (TSUKVOToken)initWithObserver:(id)a3 target:(id)a4 keyPath:(id)a5 context:(void *)a6;
- (void)dealloc;
@end

@implementation TSUKVOToken

- (TSUKVOToken)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUKVOToken init]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSObject_TSUAdditions.m"], 249, 0, "Do not call method");
  +[TSUAssertionHandler logBacktraceThrottled];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%s: %s", "Do not call method", "-[TSUKVOToken init]"), 0}]);
}

- (TSUKVOToken)initWithObserver:(id)a3 target:(id)a4 keyPath:(id)a5 context:(void *)a6
{
  v13.receiver = self;
  v13.super_class = TSUKVOToken;
  v10 = [(TSUKVOToken *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_observer = a3;
    v10->_target = a4;
    v10->_keyPath = [a5 copy];
    v11->_context = a6;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUKVOToken;
  [(TSUKVOToken *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, a3);
    if (v6)
    {
      v7 = v6;
      context = self->_context;
      if (context == [v6 context] && (observer = self->_observer, observer == objc_msgSend(v7, "observer")))
      {
        keyPath = self->_keyPath;
        v11 = [v7 keyPath];

        LOBYTE(v6) = [(NSString *)keyPath isEqualToString:v11];
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  return v6;
}

@end