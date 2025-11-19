@interface _RWIAutomaticInspectionSession
- (BOOL)matchesPageId:(id)a3 applicationIdentifier:(id)a4;
- (BOOL)receivedRejectResponse;
- (_RWIAutomaticInspectionSession)initWithPageId:(id)a3 applicationIdentifier:(id)a4 applicationPID:(int)a5 debuggers:(id)a6 shouldAllowSameProcess:(BOOL)a7;
- (void)_sendQuery;
- (void)start;
@end

@implementation _RWIAutomaticInspectionSession

- (_RWIAutomaticInspectionSession)initWithPageId:(id)a3 applicationIdentifier:(id)a4 applicationPID:(int)a5 debuggers:(id)a6 shouldAllowSameProcess:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = _RWIAutomaticInspectionSession;
  v15 = [(_RWIAutomaticInspectionSession *)&v28 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    v18 = [v17 copy];
    identifier = v15->_identifier;
    v15->_identifier = v18;

    v20 = [v14 copy];
    debuggers = v15->_debuggers;
    v15->_debuggers = v20;

    v22 = [v12 copy];
    pageId = v15->_pageId;
    v15->_pageId = v22;

    v24 = [v13 copy];
    applicationIdentifier = v15->_applicationIdentifier;
    v15->_applicationIdentifier = v24;

    v15->_applicationPID = a5;
    v15->_currentDebuggerIndex = 0;
    v15->_shouldAllowSameProcess = a7;
    v26 = v15;
  }

  return v15;
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = RWIDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pageId = self->_pageId;
    applicationIdentifier = self->_applicationIdentifier;
    identifier = self->_identifier;
    v7 = [(NSArray *)self->_debuggers count];
    v9 = 138544130;
    v10 = identifier;
    v11 = 2114;
    v12 = pageId;
    v13 = 2114;
    v14 = applicationIdentifier;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_273C9C000, v3, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate START : Session (%{public}@) PageId (%{public}@) Application (%{public}@) Debuggers (%u)", &v9, 0x26u);
  }

  [(_RWIAutomaticInspectionSession *)self _sendQuery];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)receivedRejectResponse
{
  v13 = *MEMORY[0x277D85DE8];
  currentDebuggerIndex = self->_currentDebuggerIndex;
  v4 = [(NSArray *)self->_debuggers count]- 1;
  v5 = RWIDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (currentDebuggerIndex == v4)
  {
    if (v6)
    {
      identifier = self->_identifier;
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate REJECT : Final Rejection Session (%{public}@)", &v11, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = self->_identifier;
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate REJECT : Continuing Session (%{public}@)", &v11, 0xCu);
    }

    ++self->_currentDebuggerIndex;
    [(_RWIAutomaticInspectionSession *)self _sendQuery];
  }

  result = currentDebuggerIndex == v4;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_sendQuery
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_debuggers objectAtIndex:self->_currentDebuggerIndex];
  v7 = *&self->_pageId;
  v6[0] = @"WIRPageIdentifierKey";
  v6[1] = @"WIRApplicationIdentifierKey";
  v6[2] = @"WIRAutomaticInspectionSessionIdentifierKey";
  identifier = self->_identifier;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:v6 count:3];
  [v3 _rpc_reportAutomaticInspectionCandidate:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchesPageId:(id)a3 applicationIdentifier:(id)a4
{
  v6 = a4;
  if ([(NSNumber *)self->_pageId isEqualToNumber:a3])
  {
    v7 = [(NSString *)self->_applicationIdentifier isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end