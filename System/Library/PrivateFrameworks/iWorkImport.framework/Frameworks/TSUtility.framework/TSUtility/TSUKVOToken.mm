@interface TSUKVOToken
- (BOOL)isEqual:(id)equal;
- (TSUKVOToken)init;
- (TSUKVOToken)initWithObserver:(id)observer target:(id)target keyPath:(id)path context:(void *)context;
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

- (TSUKVOToken)initWithObserver:(id)observer target:(id)target keyPath:(id)path context:(void *)context
{
  v13.receiver = self;
  v13.super_class = TSUKVOToken;
  v10 = [(TSUKVOToken *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_observer = observer;
    v10->_target = target;
    v10->_keyPath = [path copy];
    v11->_context = context;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUKVOToken;
  [(TSUKVOToken *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, equal);
    if (v6)
    {
      v7 = v6;
      context = self->_context;
      if (context == [v6 context] && (observer = self->_observer, observer == objc_msgSend(v7, "observer")))
      {
        keyPath = self->_keyPath;
        keyPath = [v7 keyPath];

        LOBYTE(v6) = [(NSString *)keyPath isEqualToString:keyPath];
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