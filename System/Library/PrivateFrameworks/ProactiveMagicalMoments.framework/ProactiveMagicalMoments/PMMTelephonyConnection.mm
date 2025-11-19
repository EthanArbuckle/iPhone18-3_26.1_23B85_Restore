@interface PMMTelephonyConnection
- (BOOL)phoneCallActiveOrHeld;
- (PMMTelephonyConnection)init;
- (void)dealloc;
@end

@implementation PMMTelephonyConnection

- (PMMTelephonyConnection)init
{
  v5.receiver = self;
  v5.super_class = PMMTelephonyConnection;
  v2 = [(PMMTelephonyConnection *)&v5 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v2->_ctServerConnnectionRef = _CTServerConnectionCreate();
  }

  return v2;
}

- (void)dealloc
{
  ctServerConnnectionRef = self->_ctServerConnnectionRef;
  if (ctServerConnnectionRef)
  {
    CFRelease(ctServerConnnectionRef);
    self->_ctServerConnnectionRef = 0;
  }

  v4.receiver = self;
  v4.super_class = PMMTelephonyConnection;
  [(PMMTelephonyConnection *)&v4 dealloc];
}

- (BOOL)phoneCallActiveOrHeld
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_ctServerConnnectionRef)
  {
    v2 = _CTServerConnectionIsAnyCallActiveOrHeld();
    if (v2)
    {
      v3 = __atxlog_handle_pmm();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v8 = v2;
        v9 = 1024;
        v10 = HIDWORD(v2);
        _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionIsAnyCallActiveOrHeld failed %d, %d", buf, 0xEu);
      }
    }

    v4 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_DEFAULT, "PhoneCallState is %{BOOL}d", buf, 8u);
    }
  }

  else
  {
    v4 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_DEFAULT, "Telephony Connection is NULL", buf, 2u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end