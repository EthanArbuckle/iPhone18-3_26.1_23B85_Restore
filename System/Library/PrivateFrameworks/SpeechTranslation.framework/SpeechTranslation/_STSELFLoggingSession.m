@interface _STSELFLoggingSession
- (_STSELFLoggingSession)initWithLocalePair:(id)a3;
- (void)logSessionEnd:(id)a3;
- (void)logSessionStart;
@end

@implementation _STSELFLoggingSession

- (_STSELFLoggingSession)initWithLocalePair:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _STSELFLoggingSession;
  v6 = [(_STSELFLoggingSession *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
    sessionID = v6->_sessionID;
    v6->_sessionID = v7;

    objc_storeStrong(&v6->_localePair, a3);
    v9 = v6;
  }

  return v6;
}

- (void)logSessionStart
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = [v2 UUIDString];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_DEBUG, "Send new invocation event for session ID: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logSessionEnd:(id)a3
{
  if (self->_isActive)
  {
    self->_isActive = 0;
    if (a3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = MEMORY[0x277CE1B50];
    v7 = a3;
    v8 = [[v6 alloc] initWithType:v5 invocationId:self->_sessionID];
    [v8 setInvocationEndedError:v7];

    [MEMORY[0x277CE1C40] selfLoggingEventWithData:v8];
  }
}

@end