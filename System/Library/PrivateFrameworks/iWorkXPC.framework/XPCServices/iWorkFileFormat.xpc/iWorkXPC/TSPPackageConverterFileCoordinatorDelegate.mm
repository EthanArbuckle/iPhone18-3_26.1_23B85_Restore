@interface TSPPackageConverterFileCoordinatorDelegate
- (TSPPackageConverterFileCoordinatorDelegate)init;
- (TSPPackageConverterFileCoordinatorDelegate)initWithURL:(id)l;
@end

@implementation TSPPackageConverterFileCoordinatorDelegate

- (TSPPackageConverterFileCoordinatorDelegate)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6670);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageConverterFileCoordinatorDelegate init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
    v15 = 1024;
    v16 = 634;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageConverterFileCoordinatorDelegate init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:634 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageConverterFileCoordinatorDelegate init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackageConverterFileCoordinatorDelegate)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = TSPPackageConverterFileCoordinatorDelegate;
  v5 = [(TSPPackageConverterFileCoordinatorDelegate *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

@end