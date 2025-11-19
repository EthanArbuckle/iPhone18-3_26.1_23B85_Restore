@interface PLAppleArchiveLoggerRecord
- (PLAppleArchiveLoggerRecord)initWithURL:(id)a3 logger:(id)a4;
@end

@implementation PLAppleArchiveLoggerRecord

- (PLAppleArchiveLoggerRecord)initWithURL:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PLAppleArchiveLoggerRecord;
  v8 = [(PLAppleArchiveLoggerRecord *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_logger, a4);
    v8->_refCount = 0;
  }

  return v8;
}

@end