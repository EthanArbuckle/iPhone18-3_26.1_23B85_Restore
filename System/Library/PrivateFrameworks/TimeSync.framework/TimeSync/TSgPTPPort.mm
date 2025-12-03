@interface TSgPTPPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
+ (id)gPTPPortWithImplDC:(id)c;
- (TSgPTPPort)init;
- (TSgPTPPort)initWithImplDC:(id)c;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
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

+ (id)gPTPPortWithImplDC:(id)c
{
  cCopy = c;
  portType = [cCopy portType];
  if (portType > 8 || (v5 = [objc_alloc(*off_279DBDA20[portType]) initWithImplDC:cCopy]) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [TSgPTPPort gPTPPortWithImplDC:cCopy];
    }

    v5 = 0;
  }

  return v5;
}

- (TSgPTPPort)initWithImplDC:(id)c
{
  cCopy = c;
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
    if (cCopy)
    {
      objc_storeStrong(&v6->_impl, c);
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

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:@"ClassName"];
  [string appendFormat:@"%@+%@\n", indentCopy, v8];

  [string appendFormat:@"%@    Port Number: ", indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:@"PortNumber"];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:@"%hu\n", objc_msgSend(v9, "unsignedShortValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    Port Role: ", indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:@"PortRole"];

  if (!v11)
  {
    v13 = @"Could not read property\n";
    goto LABEL_16;
  }

  intValue = [v11 intValue];
  if (intValue > 1)
  {
    if (intValue == 2)
    {
      v13 = @"Slave\n";
      goto LABEL_16;
    }

    if (intValue == 3)
    {
      v13 = @"Master\n";
      goto LABEL_16;
    }

LABEL_13:
    [string appendFormat:@"Unknown (%d)\n", objc_msgSend(v11, "intValue")];
    goto LABEL_17;
  }

  if (!intValue)
  {
    v13 = @"Disabled\n";
    goto LABEL_16;
  }

  if (intValue != 1)
  {
    goto LABEL_13;
  }

  v13 = @"Passive\n";
LABEL_16:
  [string appendString:v13];
LABEL_17:
  [string appendFormat:@"%@    Port Type: ", indentCopy];
  v14 = [infoCopy objectForKeyedSubscript:@"PortType"];

  if (!v14)
  {
    v16 = @"Could not read property\n";
    goto LABEL_24;
  }

  intValue2 = [v14 intValue];
  if (intValue2 > 4)
  {
    if (intValue2 <= 6)
    {
      if (intValue2 == 5)
      {
        v16 = @"Unicast End-to-End Link Layer\n";
      }

      else
      {
        v16 = @"Unicast End-to-End UDPv4\n";
      }

      goto LABEL_24;
    }

    if (intValue2 == 7)
    {
      v16 = @"Unicast End-to-End UDPv6\n";
      goto LABEL_24;
    }

    if (intValue2 == 8)
    {
      v16 = @"Local Clock\n";
      goto LABEL_24;
    }
  }

  else
  {
    if (intValue2 > 2)
    {
      if (intValue2 == 3)
      {
        v16 = @"Unicast Point-to-Point UDPv4\n";
      }

      else
      {
        v16 = @"Unicast Point-to-Point UDPv6\n";
      }

      goto LABEL_24;
    }

    if (intValue2 == 1)
    {
      v16 = @"AVB Ethernet\n";
      goto LABEL_24;
    }

    if (intValue2 == 2)
    {
      v16 = @"Unicast Point-to-Point Link Layer\n";
LABEL_24:
      [string appendString:v16];
      goto LABEL_25;
    }
  }

  [string appendFormat:@"Unknown (%d)\n", objc_msgSend(v14, "intValue")];
LABEL_25:
  [string appendFormat:@"%@    Ntp anchor offsetNsec: ", indentCopy];
  v17 = [infoCopy objectForKeyedSubscript:@"NtpAnchorOffsetNsec"];

  if (v17)
  {
    [string appendFormat:@"%d \n", objc_msgSend(v17, "intValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  [string appendFormat:@"%@    Local clock source from NTP: ", indentCopy];
  v18 = [infoCopy objectForKeyedSubscript:@"LocalClockSourceFromNTP"];

  if (v18)
  {
    [string appendFormat:@"%d \n", objc_msgSend(v18, "BOOLValue")];
  }

  else
  {
    [string appendString:@"Could not read property\n"];
  }

  return string;
}

- (id)getMetrics
{
  getMetrics = [(_TSF_TSDgPTPPort *)self->_impl getMetrics];
  if (getMetrics)
  {
    v3 = [[TSPortMetrics alloc] initWithDaemonMetrics:getMetrics];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getMetricsWithDelta:(id)delta
{
  impl = self->_impl;
  toDaemonMetrics = [delta toDaemonMetrics];
  v5 = [(_TSF_TSDgPTPPort *)impl getMetricsWithDelta:toDaemonMetrics];

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