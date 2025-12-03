@interface ATLLoggerObj
+ (void)Log:(int)log msg:(id)msg;
@end

@implementation ATLLoggerObj

+ (void)Log:(int)log msg:(id)msg
{
  logCopy = log;
  v10 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v6 = ATLLogObject();
  if (os_log_type_enabled(v6, logCopy))
  {
    v8 = 138412290;
    v9 = msgCopy;
    _os_log_impl(&dword_22EEF5000, v6, logCopy, "%@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end