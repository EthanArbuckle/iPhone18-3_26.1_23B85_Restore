@interface TSPDataStorageWriteResult
- (TSPDataStorageWriteResult)init;
- (TSPDataStorageWriteResult)initWithFilename:(id)filename encryptionInfo:(id)info packageStorageType:(int64_t)type encodedLength:(unint64_t)length isMissingData:(BOOL)data changeCount:(unint64_t)count;
@end

@implementation TSPDataStorageWriteResult

- (TSPDataStorageWriteResult)initWithFilename:(id)filename encryptionInfo:(id)info packageStorageType:(int64_t)type encodedLength:(unint64_t)length isMissingData:(BOOL)data changeCount:(unint64_t)count
{
  filenameCopy = filename;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = TSPDataStorageWriteResult;
  v17 = [(TSPDataStorageWriteResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_filename, filename);
    objc_storeStrong(&v18->_encryptionInfo, info);
    v18->_packageStorageType = type;
    v18->_encodedLength = length;
    v18->_isMissingData = data;
    v18->_changeCount = count;
  }

  return v18;
}

- (TSPDataStorageWriteResult)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CBC50);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPDataStorageWriteResult init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataStorageWriteResult.m";
    v15 = 1024;
    v16 = 27;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPDataStorageWriteResult init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataStorageWriteResult.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:27 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPDataStorageWriteResult init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end