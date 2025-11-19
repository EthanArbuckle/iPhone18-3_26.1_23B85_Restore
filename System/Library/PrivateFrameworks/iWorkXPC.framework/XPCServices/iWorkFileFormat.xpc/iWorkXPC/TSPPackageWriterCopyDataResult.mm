@interface TSPPackageWriterCopyDataResult
- (TSPPackageWriterCopyDataResult)init;
- (TSPPackageWriterCopyDataResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 encodedLength:(unint64_t)a5;
@end

@implementation TSPPackageWriterCopyDataResult

- (TSPPackageWriterCopyDataResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 encodedLength:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSPPackageWriterCopyDataResult;
  v11 = [(TSPPackageWriterCopyDataResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_filename, a3);
    objc_storeStrong(&v12->_encryptionInfo, a4);
    v12->_encodedLength = a5;
  }

  return v12;
}

- (TSPPackageWriterCopyDataResult)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5500);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageWriterCopyDataResult init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm";
    v15 = 1024;
    v16 = 857;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageWriterCopyDataResult init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:857 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageWriterCopyDataResult init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end