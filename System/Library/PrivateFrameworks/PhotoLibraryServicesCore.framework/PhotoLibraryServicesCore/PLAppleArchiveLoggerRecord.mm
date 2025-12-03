@interface PLAppleArchiveLoggerRecord
- (PLAppleArchiveLoggerRecord)initWithURL:(id)l logger:(id)logger;
@end

@implementation PLAppleArchiveLoggerRecord

- (PLAppleArchiveLoggerRecord)initWithURL:(id)l logger:(id)logger
{
  lCopy = l;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = PLAppleArchiveLoggerRecord;
  v8 = [(PLAppleArchiveLoggerRecord *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_logger, logger);
    v8->_refCount = 0;
  }

  return v8;
}

@end