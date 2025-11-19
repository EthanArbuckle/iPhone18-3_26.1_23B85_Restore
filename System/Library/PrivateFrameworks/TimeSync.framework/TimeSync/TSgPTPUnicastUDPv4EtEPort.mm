@interface TSgPTPUnicastUDPv4EtEPort
- (TSgPTPUnicastUDPv4EtEPort)initWithImplDC:(id)a3;
@end

@implementation TSgPTPUnicastUDPv4EtEPort

- (TSgPTPUnicastUDPv4EtEPort)initWithImplDC:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPUnicastUDPv4EtEPort initWithImplDC:];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPUnicastUDPv4EtEPort;
  v5 = [(TSgPTPFDEtEPort *)&v9 initWithImplDC:v4];
  if (v5)
  {
    v6 = v4;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

@end