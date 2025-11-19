@interface TSgPTPPort
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
+ (id)gPTPPortWithImplDC:(id)a3;
- (TSgPTPPort)init;
- (TSgPTPPort)initWithImplDC:(id)a3;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)a3;
- (void)dealloc;
@end

@implementation TSgPTPPort

- (TSgPTPPort)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSgPTPPort init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

+ (id)gPTPPortWithImplDC:(id)a3
{
  v3 = a3;
  v4 = [v3 portType];
  if (v4 > 8 || (v5 = [objc_alloc(*off_279DBDA20[v4]) initWithImplDC:v3]) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [TSgPTPPort gPTPPortWithImplDC:v3];
    }

    v5 = 0;
  }

  return v5;
}

- (TSgPTPPort)initWithImplDC:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPPort initWithImplDC:?];
    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPPort;
  v6 = [(TSgPTPPort *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_impl, a3);
      goto LABEL_5;
    }

    [TSgPTPPort initWithImplDC:v6];
LABEL_8:
    v7 = 0;
  }

LABEL_5:

  return v7;
}

- (void)dealloc
{
  [(_TSF_TSDgPTPPort *)self->_impl finalizeNotifications];
  v3.receiver = self;
  v3.super_class = TSgPTPPort;
  [(TSgPTPPort *)&v3 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = [v5 objectForKeyedSubscript:@"ClassName"];
  [v7 appendFormat:@"%@+%@\n", v6, v8];

  [v7 appendFormat:@"%@    Port Number: ", v6];
  v9 = [v5 objectForKeyedSubscript:@"PortNumber"];
  v10 = v9;
  if (v9)
  {
    [v7 appendFormat:@"%hu\n", objc_msgSend(v9, "unsignedShortValue")];
  }

  else
  {
    [v7 appendString:@"Could not read property\n"];
  }

  [v7 appendFormat:@"%@    Port Role: ", v6];
  v11 = [v5 objectForKeyedSubscript:@"PortRole"];

  if (!v11)
  {
    v13 = @"Could not read property\n";
    goto LABEL_16;
  }

  v12 = [v11 intValue];
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = @"Slave\n";
      goto LABEL_16;
    }

    if (v12 == 3)
    {
      v13 = @"Master\n";
      goto LABEL_16;
    }

LABEL_13:
    [v7 appendFormat:@"Unknown (%d)\n", objc_msgSend(v11, "intValue")];
    goto LABEL_17;
  }

  if (!v12)
  {
    v13 = @"Disabled\n";
    goto LABEL_16;
  }

  if (v12 != 1)
  {
    goto LABEL_13;
  }

  v13 = @"Passive\n";
LABEL_16:
  [v7 appendString:v13];
LABEL_17:
  [v7 appendFormat:@"%@    Port Type: ", v6];
  v14 = [v5 objectForKeyedSubscript:@"PortType"];

  if (!v14)
  {
    v16 = @"Could not read property\n";
    goto LABEL_24;
  }

  v15 = [v14 intValue];
  if (v15 > 4)
  {
    if (v15 <= 6)
    {
      if (v15 == 5)
      {
        v16 = @"Unicast End-to-End Link Layer\n";
      }

      else
      {
        v16 = @"Unicast End-to-End UDPv4\n";
      }

      goto LABEL_24;
    }

    if (v15 == 7)
    {
      v16 = @"Unicast End-to-End UDPv6\n";
      goto LABEL_24;
    }

    if (v15 == 8)
    {
      v16 = @"Local Clock\n";
      goto LABEL_24;
    }
  }

  else
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = @"Unicast Point-to-Point UDPv4\n";
      }

      else
      {
        v16 = @"Unicast Point-to-Point UDPv6\n";
      }

      goto LABEL_24;
    }

    if (v15 == 1)
    {
      v16 = @"AVB Ethernet\n";
      goto LABEL_24;
    }

    if (v15 == 2)
    {
      v16 = @"Unicast Point-to-Point Link Layer\n";
LABEL_24:
      [v7 appendString:v16];
      goto LABEL_25;
    }
  }

  [v7 appendFormat:@"Unknown (%d)\n", objc_msgSend(v14, "intValue")];
LABEL_25:
  [v7 appendFormat:@"%@    Ntp anchor offsetNsec: ", v6];
  v17 = [v5 objectForKeyedSubscript:@"NtpAnchorOffsetNsec"];

  if (v17)
  {
    [v7 appendFormat:@"%d \n", objc_msgSend(v17, "intValue")];
  }

  else
  {
    [v7 appendString:@"Could not read property\n"];
  }

  [v7 appendFormat:@"%@    Local clock source from NTP: ", v6];
  v18 = [v5 objectForKeyedSubscript:@"LocalClockSourceFromNTP"];

  if (v18)
  {
    [v7 appendFormat:@"%d \n", objc_msgSend(v18, "BOOLValue")];
  }

  else
  {
    [v7 appendString:@"Could not read property\n"];
  }

  return v7;
}

- (id)getMetrics
{
  v2 = [(_TSF_TSDgPTPPort *)self->_impl getMetrics];
  if (v2)
  {
    v3 = [[TSPortMetrics alloc] initWithDaemonMetrics:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getMetricsWithDelta:(id)a3
{
  impl = self->_impl;
  v4 = [a3 toDaemonMetrics];
  v5 = [(_TSF_TSDgPTPPort *)impl getMetricsWithDelta:v4];

  if (v5)
  {
    v6 = [[TSPortMetrics alloc] initWithDaemonMetrics:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)gPTPPortWithImplDC:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 136315650;
  v6 = [v3 UTF8String];
  v7 = 2048;
  v8 = objc_opt_class();
  v9 = 1024;
  v10 = [a1 portType];
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create port for %s %p %u", &v5, 0x1Cu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithImplDC:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithImplDC:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end