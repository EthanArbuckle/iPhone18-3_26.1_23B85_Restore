@interface TRTermsAndConditionsManager
- (TRTermsAndConditionsManager)initWithAuthResultsBlock:(id)block presentingViewController:(id)controller;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)handleAccept;
- (void)handleDecline;
- (void)loadProxiedTerms:(id)terms anisetteDataProvider:(id)provider appProvidedContext:(id)context acceptAction:(id)action declineAction:(id)declineAction;
- (void)presentProxiedTermsRemoteUI;
- (void)setAcceptedTermsInfo:(id)info;
@end

@implementation TRTermsAndConditionsManager

- (TRTermsAndConditionsManager)initWithAuthResultsBlock:(id)block presentingViewController:(id)controller
{
  blockCopy = block;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = TRTermsAndConditionsManager;
  v9 = [(TRTermsAndConditionsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authResult, block);
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v10;
}

- (void)loadProxiedTerms:(id)terms anisetteDataProvider:(id)provider appProvidedContext:(id)context acceptAction:(id)action declineAction:(id)declineAction
{
  v33[4] = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  v13 = MEMORY[0x277CBEB98];
  declineActionCopy = declineAction;
  actionCopy = action;
  contextCopy = context;
  providerCopy = provider;
  v18 = [v13 alloc];
  v33[0] = *MEMORY[0x277CEC738];
  v33[1] = @"HomePodSLA";
  v19 = *MEMORY[0x277CEC728];
  v33[2] = *MEMORY[0x277CEC730];
  v33[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v21 = [v18 initWithArray:v20];

  if (_TRLogEnabled == 1)
  {
    v22 = TRLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_26F2A2000, v22, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager loadProxiedTerms", v32, 2u);
    }
  }

  v23 = [objc_alloc(getAAUIProxiedTermsRemoteUIClass()) initWithAuthResults:self->_authResult proxiedDevice:termsCopy anisetteDataProvider:providerCopy appProvidedContext:contextCopy termsEntries:v21];

  proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI;
  self->_proxiedTermsRemoteUI = v23;

  [(AAUIProxiedTermsRemoteUI *)self->_proxiedTermsRemoteUI setDelegate:self];
  proxiedDevice = self->_proxiedDevice;
  self->_proxiedDevice = termsCopy;
  v26 = termsCopy;

  v27 = MEMORY[0x27438C490](actionCopy);
  acceptAction = self->_acceptAction;
  self->_acceptAction = v27;

  v29 = MEMORY[0x27438C490](declineActionCopy);
  declineAction = self->_declineAction;
  self->_declineAction = v29;

  [(TRTermsAndConditionsManager *)self presentProxiedTermsRemoteUI];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)setAcceptedTermsInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(NSDictionary *)infoCopy count]&& _TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = infoCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager Terms Info not empty %@", &v8, 0xCu);
    }
  }

  acceptedTermsInfo = self->_acceptedTermsInfo;
  self->_acceptedTermsInfo = infoCopy;

  if (self->_didAccept)
  {
    [(TRTermsAndConditionsManager *)self handleAccept];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAccept
{
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager handleAccept", buf, 2u);
    }

    if (self->_didAccept && _TRLogEnabled == 1)
    {
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager handleAccept entered multiple times", v8, 2u);
      }
    }
  }

  self->_didAccept = 1;
  acceptAction = self->_acceptAction;
  if (acceptAction)
  {
    acceptAction[2](acceptAction, self->_acceptedTermsInfo);
  }

  else if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager acceptedTerms undefined", v7, 2u);
    }
  }
}

- (void)presentProxiedTermsRemoteUI
{
  presentingViewController = self->_presentingViewController;
  if (presentingViewController && (proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI) != 0)
  {
    if (_TRLogEnabled == 1)
    {
      v5 = TRLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager Presenting Terms", buf, 2u);
      }

      presentingViewController = self->_presentingViewController;
      proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI;
    }

    [(AAUIProxiedTermsRemoteUI *)proxiedTermsRemoteUI presentFromViewController:presentingViewController modal:1];
  }

  else if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager Could not present", v12, 2u);
    }

    v7 = _TRLogEnabled;
    if (!self->_presentingViewController && _TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "Reason: Presenting VC Nil", v11, 2u);
      }

      v7 = _TRLogEnabled;
    }

    if (!self->_proxiedTermsRemoteUI && v7 == 1)
    {
      v9 = TRLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "Reason: Proxy Terms Nil", v10, 2u);
      }
    }
  }
}

- (void)handleDecline
{
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager handleDecline", buf, 2u);
    }
  }

  declineAction = self->_declineAction;
  if (declineAction)
  {
    declineAction[2]();
  }

  else if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager decline action undefined", v6, 2u);
    }
  }
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  v12 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "no";
      if (successCopy)
      {
        v8 = "yes";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager didFinishWithSuccess %s", &v10, 0xCu);
    }
  }

  if (successCopy)
  {
    [(TRTermsAndConditionsManager *)self handleAccept];
  }

  else
  {
    [(TRTermsAndConditionsManager *)self handleDecline];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = infoCopy;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager acceptedTermsInfo %@", &v8, 0xCu);
    }
  }

  [(TRTermsAndConditionsManager *)self setAcceptedTermsInfo:infoCopy];

  v7 = *MEMORY[0x277D85DE8];
}

@end