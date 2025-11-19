@interface AWDServerConnection
- (AWDServerConnection)initWithComponentId:(unsigned int)a3;
- (AWDServerConnection)initWithComponentId:(unsigned int)a3 andBlockOnConfiguration:(BOOL)a4;
- (BOOL)registerConfigChangeCallback:(id)a3;
- (BOOL)registerQueriableMetric:(unsigned int)a3 callback:(id)a4;
- (BOOL)registerQueriableMetricCallback:(id)a3 forIdentifier:(unsigned int)a4;
- (BOOL)submitMetric:(id)a3;
- (id)getComponentConfigurationParameters;
- (id)newMetricContainerWithIdentifier:(unsigned int)a3;
- (unint64_t)getAWDTimestamp;
- (void)flushToQueue:(dispatch_queue_s *)a3 block:(id)a4;
- (void)registerComponentParametersChangeCallback:(id)a3;
@end

@implementation AWDServerConnection

- (AWDServerConnection)initWithComponentId:(unsigned int)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = AWDServerConnection;
  return [(AWDServerConnection *)&v5 init];
}

- (AWDServerConnection)initWithComponentId:(unsigned int)a3 andBlockOnConfiguration:(BOOL)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = AWDServerConnection;
  return [(AWDServerConnection *)&v6 init];
}

- (id)newMetricContainerWithIdentifier:(unsigned int)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }

  return 0;
}

- (BOOL)submitMetric:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }

  return 0;
}

- (BOOL)registerQueriableMetric:(unsigned int)a3 callback:(id)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v5, 2u);
  }

  return 0;
}

- (BOOL)registerQueriableMetricCallback:(id)a3 forIdentifier:(unsigned int)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v5, 2u);
  }

  return 0;
}

- (BOOL)registerConfigChangeCallback:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }

  return 0;
}

- (id)getComponentConfigurationParameters
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v3, 2u);
  }

  return 0;
}

- (void)registerComponentParametersChangeCallback:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v3, 2u);
  }
}

- (unint64_t)getAWDTimestamp
{
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }

  return awd::getAWDTimestamp(v2);
}

- (void)flushToQueue:(dispatch_queue_s *)a3 block:(id)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "WirelessDiagnostics is deprecated and has been removed. Please migrate to Core Analytics.", v4, 2u);
  }
}

@end