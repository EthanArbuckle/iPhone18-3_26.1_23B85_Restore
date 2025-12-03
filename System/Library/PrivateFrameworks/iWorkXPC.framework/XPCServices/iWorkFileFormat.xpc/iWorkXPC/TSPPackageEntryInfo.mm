@interface TSPPackageEntryInfo
- (TSPPackageEntryInfo)init;
- (TSPPackageEntryInfo)initWithEncodedLength:(unint64_t)length lastModificationDate:(id)date CRC:(unsigned int)c;
@end

@implementation TSPPackageEntryInfo

- (TSPPackageEntryInfo)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C7370);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageEntryInfo init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v15 = 1024;
    v16 = 756;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageEntryInfo init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:756 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageEntryInfo init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackageEntryInfo)initWithEncodedLength:(unint64_t)length lastModificationDate:(id)date CRC:(unsigned int)c
{
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = TSPPackageEntryInfo;
  v9 = [(TSPPackageEntryInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_encodedLength = length;
    v11 = [dateCopy copy];
    lastModificationDate = v10->_lastModificationDate;
    v10->_lastModificationDate = v11;

    v10->_CRC = c;
  }

  return v10;
}

@end