@interface SKDLog
- (SKDLog)initWithCategory:(id)category;
@end

@implementation SKDLog

- (SKDLog)initWithCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = SKDLog;
  v5 = [(SKDLog *)&v11 init];
  if (v5)
  {
    v6 = [categoryCopy copy];
    category = v5->_category;
    v5->_category = v6;

    v8 = os_log_create([@"com.apple.spotlightknowledged.pipeline" UTF8String], objc_msgSend(categoryCopy, "UTF8String"));
    log = v5->_log;
    v5->_log = v8;
  }

  return v5;
}

@end