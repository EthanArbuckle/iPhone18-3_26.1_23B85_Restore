@interface TSUKVOToken
- (BOOL)isEqual:(id)equal;
- (TSUKVOToken)init;
- (TSUKVOToken)initWithObserver:(id)observer target:(id)target keyPath:(id)path context:(void *)context;
- (void)dealloc;
@end

@implementation TSUKVOToken

- (TSUKVOToken)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CBD90);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v5 = v2;
    v6 = 2082;
    v7 = "[TSUKVOToken init]";
    v8 = 2082;
    v9 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSObject_TSUAdditions.m";
    v10 = 1024;
    v11 = 249;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUKVOToken init]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSObject_TSUAdditions.m"] lineNumber:249 isFatal:0 description:"Do not call method"];
  +[TSUAssertionHandler logBacktraceThrottled];
  objc_exception_throw([NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"%s: %s" userInfo:"Do not call method", "[TSUKVOToken init]"], 0]);
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