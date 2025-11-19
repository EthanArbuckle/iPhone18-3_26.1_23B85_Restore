@interface AWDObserver
- (AWDObserver)init;
- (void)setConfiguration:(id)a3 callback:(id)a4;
- (void)setDelegate:(id)a3 queue:(dispatch_queue_s *)a4;
@end

@implementation AWDObserver

- (AWDObserver)init
{
  v3.receiver = self;
  v3.super_class = AWDObserver;
  return [(AWDObserver *)&v3 init];
}

- (void)setDelegate:(id)a3 queue:(dispatch_queue_s *)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }
}

- (void)setConfiguration:(id)a3 callback:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v10, 2u);
  }

  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"Wireless Diagnostics is deprecated and has been removed. Please migrate to Core Analytics.";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.awd" code:-1 userInfo:v7];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end