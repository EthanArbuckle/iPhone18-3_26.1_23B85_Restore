@interface AWDMetricManager
+ (void)postMetricWithId:(unint64_t)id object:(id)object;
@end

@implementation AWDMetricManager

+ (void)postMetricWithId:(unint64_t)id object:(id)object
{
  v12 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy longLongValue];
    AWDPostSimpleMetricWithInteger();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy UTF8String];
    AWDPostSimpleMetricWithString();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v8 = 134218242;
    idCopy = id;
    v10 = 2080;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric:#E In postMetricWithId:object: for mid 0x%lx: unsupported NSObject type! (Got '%s')", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end