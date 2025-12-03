@interface RDCacheDelete
+ (void)initialize;
- (void)dealloc;
@end

@implementation RDCacheDelete

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10002B268 = os_log_create("com.apple.SensorKit", "RDCacheDelete");
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RDCacheDelete;
  [(RDCacheDelete *)&v3 dealloc];
}

@end