@interface ATLLoggerObj
+ (void)Log:(int)a3 msg:(id)a4;
@end

@implementation ATLLoggerObj

+ (void)Log:(int)a3 msg:(id)a4
{
  v4 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = ATLLogObject();
  if (os_log_type_enabled(v6, v4))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22EEF5000, v6, v4, "%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end