@interface TRTermsAndConditionsManager
- (TRTermsAndConditionsManager)initWithAuthResultsBlock:(id)a3 presentingViewController:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)handleAccept;
- (void)handleDecline;
- (void)loadProxiedTerms:(id)a3 anisetteDataProvider:(id)a4 appProvidedContext:(id)a5 acceptAction:(id)a6 declineAction:(id)a7;
- (void)presentProxiedTermsRemoteUI;
- (void)setAcceptedTermsInfo:(id)a3;
@end

@implementation TRTermsAndConditionsManager

- (TRTermsAndConditionsManager)initWithAuthResultsBlock:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRTermsAndConditionsManager;
  v9 = [(TRTermsAndConditionsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authResult, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v10;
}

- (void)loadProxiedTerms:(id)a3 anisetteDataProvider:(id)a4 appProvidedContext:(id)a5 acceptAction:(id)a6 declineAction:(id)a7
{
  v33[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = MEMORY[0x277CBEB98];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
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

  v23 = [objc_alloc(getAAUIProxiedTermsRemoteUIClass()) initWithAuthResults:self->_authResult proxiedDevice:v12 anisetteDataProvider:v17 appProvidedContext:v16 termsEntries:v21];

  proxiedTermsRemoteUI = self->_proxiedTermsRemoteUI;
  self->_proxiedTermsRemoteUI = v23;

  [(AAUIProxiedTermsRemoteUI *)self->_proxiedTermsRemoteUI setDelegate:self];
  proxiedDevice = self->_proxiedDevice;
  self->_proxiedDevice = v12;
  v26 = v12;

  v27 = MEMORY[0x27438C490](v15);
  acceptAction = self->_acceptAction;
  self->_acceptAction = v27;

  v29 = MEMORY[0x27438C490](v14);
  declineAction = self->_declineAction;
  self->_declineAction = v29;

  [(TRTermsAndConditionsManager *)self presentProxiedTermsRemoteUI];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)setAcceptedTermsInfo:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSDictionary *)v4 count]&& _TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager Terms Info not empty %@", &v8, 0xCu);
    }
  }

  acceptedTermsInfo = self->_acceptedTermsInfo;
  self->_acceptedTermsInfo = v4;

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

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "no";
      if (v4)
      {
        v8 = "yes";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager didFinishWithSuccess %s", &v10, 0xCu);
    }
  }

  if (v4)
  {
    [(TRTermsAndConditionsManager *)self handleAccept];
  }

  else
  {
    [(TRTermsAndConditionsManager *)self handleDecline];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "TRTermsAndConditionsManager acceptedTermsInfo %@", &v8, 0xCu);
    }
  }

  [(TRTermsAndConditionsManager *)self setAcceptedTermsInfo:v5];

  v7 = *MEMORY[0x277D85DE8];
}

@end