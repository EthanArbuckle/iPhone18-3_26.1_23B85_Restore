@interface AWDMetricManager
+ (void)postMetricWithId:(unint64_t)a3 object:(id)a4;
@end

@implementation AWDMetricManager

+ (void)postMetricWithId:(unint64_t)a3 object:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 longLongValue];
    AWDPostSimpleMetricWithInteger();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 UTF8String];
    AWDPostSimpleMetricWithString();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v8 = 134218242;
    v9 = a3;
    v10 = 2080;
    v11 = [v6 UTF8String];
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric:#E In postMetricWithId:object: for mid 0x%lx: unsupported NSObject type! (Got '%s')", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end