@interface _LTDSELFLoggingSessionIdProvider
- (SISchemaUUID)sessionId;
- (void)sessionId;
@end

@implementation _LTDSELFLoggingSessionIdProvider

- (SISchemaUUID)sessionId
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = v2->_dateSessionIdMostRecentlyAccessesOrCreated;
  objc_storeStrong(&v2->_dateSessionIdMostRecentlyAccessesOrCreated, v3);
  if (!v4)
  {
LABEL_6:
    v8 = objc_alloc(MEMORY[0x277D5AC78]);
    v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v10 = [v8 initWithNSUUID:v9];
    cachedSessionId = v2->_cachedSessionId;
    v2->_cachedSessionId = v10;

    v6 = v2->_cachedSessionId;
    goto LABEL_7;
  }

  [v3 timeIntervalSinceDate:v4];
  v6 = v2->_cachedSessionId;
  if (!v6 || v5 >= 480.0)
  {
    v7 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDSELFLoggingSessionIdProvider *)v7 sessionId];
    }

    goto LABEL_6;
  }

LABEL_7:
  v12 = v6;

  objc_sync_exit(v2);

  return v12;
}

- (void)sessionId
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0x407E000000000000;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "It is been more than %f@ seconds, generating new SELF logging session id", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end