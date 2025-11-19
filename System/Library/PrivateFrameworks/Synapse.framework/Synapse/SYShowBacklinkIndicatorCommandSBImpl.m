@interface SYShowBacklinkIndicatorCommandSBImpl
- (BOOL)isActive;
- (SYShowBacklinkIndicatorCommandSBImpl)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4;
- (void)invalidate;
- (void)runWithCompletion:(id)a3;
- (void)systemNotesPresentationHandle:(id)a3 didChangePresentationMode:(int64_t)a4;
@end

@implementation SYShowBacklinkIndicatorCommandSBImpl

- (SYShowBacklinkIndicatorCommandSBImpl)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SYShowBacklinkIndicatorCommandSBImpl;
  v8 = [(SYShowBacklinkIndicatorCommandSBImpl *)&v21 init];
  if (v8 && [v7 count])
  {
    v9 = SYMakeEditNoteUserActivity(v6, v7);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v10 = getSBSSystemNotesPresentationConfigurationClass_softClass;
    v25 = getSBSSystemNotesPresentationConfigurationClass_softClass;
    if (!getSBSSystemNotesPresentationConfigurationClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSBSSystemNotesPresentationConfigurationClass_block_invoke;
      v27 = &unk_27856B3C8;
      v28 = &v22;
      __getSBSSystemNotesPresentationConfigurationClass_block_invoke(buf);
      v10 = v23[3];
    }

    v11 = v10;
    _Block_object_dispose(&v22, 8);
    v12 = [[v10 alloc] initWithSceneBundleIdentifier:@"com.apple.mobilenotes" userActivity:v9 preferredPresentationMode:1];
    v13 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 count];
      *buf = 134218240;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "BackLinkIndicatorCommand %p: Creating notes presentation handle with link identifier count: %ld.", buf, 0x16u);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v15 = getSBSSystemNotesPresentationHandleClass_softClass;
    v25 = getSBSSystemNotesPresentationHandleClass_softClass;
    if (!getSBSSystemNotesPresentationHandleClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSBSSystemNotesPresentationHandleClass_block_invoke;
      v27 = &unk_27856B3C8;
      v28 = &v22;
      __getSBSSystemNotesPresentationHandleClass_block_invoke(buf);
      v15 = v23[3];
    }

    v16 = v15;
    _Block_object_dispose(&v22, 8);
    v17 = [[v15 alloc] initWithConfiguration:v12];
    handle = v8->__handle;
    v8->__handle = v17;

    [(SBSSystemNotesPresentationHandle *)v8->__handle addObserver:v8];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isActive
{
  v2 = [(SYShowBacklinkIndicatorCommandSBImpl *)self _handle];
  v3 = v2 != 0;

  return v3;
}

- (void)runWithCompletion:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SYShowBacklinkIndicatorCommandSBImpl *)self _handle];

  v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "BackLinkIndicatorCommand %p: Sending notes presentation handle with link identifiers.", &v9, 0xCu);
    }

    v6 = [(SYShowBacklinkIndicatorCommandSBImpl *)self _handle];
    [v6 activate];
  }

  else if (v7)
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "BackLinkIndicatorCommand %p: Not sending notes presentation request, no link identifiers.", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v2 = [(SYShowBacklinkIndicatorCommandSBImpl *)self _handle];
  [v2 invalidate];
}

- (void)systemNotesPresentationHandle:(id)a3 didChangePresentationMode:(int64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "BackLinkIndicatorCommand %p: Notes presentation request changed mode to %ld.", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end