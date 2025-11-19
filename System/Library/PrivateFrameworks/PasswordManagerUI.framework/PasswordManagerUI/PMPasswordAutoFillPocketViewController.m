@interface PMPasswordAutoFillPocketViewController
- (PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 bypassLockoutPolicy:(BOOL)a10 savedAccountStore:(id)a11 autoFillQuirksManager:(id)a12 shouldShowAutoFillPasskeys:(BOOL)a13 currentWebFrameIdentifierForAutoFillPasskeys:(id)a14 connectedAppAuditToken:(id *)a15 isConnectedAppAWebBrowser:(BOOL)a16 initialSearchQuery:(id)a17 savedAccountToInitiallyShowDetailsFor:(id)a18 shouldAllowAddingNewPasswords:(BOOL)a19 suggestedDomainForNewAccount:(id)a20 localizedHostAppNameForNewAccount:(id)a21 bundleIDForFallbackIconForNewAccount:(id)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 savedAccountForHistorySection:(id)a25 didSelectHistoryItem:(id)a26 didSelectAccountHandler:(id)a27 didSelectTextToInsertHandler:(id)a28;
- (void)appDidEnterBackground;
- (void)dealloc;
- (void)loadView;
@end

@implementation PMPasswordAutoFillPocketViewController

- (PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)a3 appID:(id)a4 credentialTypes:(int64_t)a5 promptString:(id)a6 promptStringWhenPasskeysAreAvailable:(id)a7 serviceNameHintStrings:(id)a8 domainNameHintStrings:(id)a9 bypassLockoutPolicy:(BOOL)a10 savedAccountStore:(id)a11 autoFillQuirksManager:(id)a12 shouldShowAutoFillPasskeys:(BOOL)a13 currentWebFrameIdentifierForAutoFillPasskeys:(id)a14 connectedAppAuditToken:(id *)a15 isConnectedAppAWebBrowser:(BOOL)a16 initialSearchQuery:(id)a17 savedAccountToInitiallyShowDetailsFor:(id)a18 shouldAllowAddingNewPasswords:(BOOL)a19 suggestedDomainForNewAccount:(id)a20 localizedHostAppNameForNewAccount:(id)a21 bundleIDForFallbackIconForNewAccount:(id)a22 authenticatedContext:(id)a23 savedAccountContext:(id)a24 savedAccountForHistorySection:(id)a25 didSelectHistoryItem:(id)a26 didSelectAccountHandler:(id)a27 didSelectTextToInsertHandler:(id)a28
{
  v65 = a4;
  v63 = a6;
  v31 = a7;
  v32 = a8;
  v64 = a9;
  v33 = a11;
  v34 = a12;
  v35 = a14;
  v36 = a17;
  v37 = a18;
  v38 = a20;
  v39 = a21;
  v62 = a22;
  v61 = a24;
  v60 = a25;
  v59 = a26;
  v58 = a27;
  v57 = a28;
  v67.receiver = self;
  v67.super_class = PMPasswordAutoFillPocketViewController;
  v40 = [(PMPasswordAutoFillPocketViewController *)&v67 initWithNibName:0 bundle:0];
  if (v40)
  {
    v56 = v33;
    v41 = [_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController alloc];
    v42 = *&a15->var0[4];
    v66[0] = *a15->var0;
    v66[1] = v42;
    BYTE1(v52) = a10;
    LOBYTE(v52) = a19;
    LOBYTE(v51) = a16;
    LOBYTE(v50) = a13;
    v43 = [(_PMPasswordAutoFillPocketViewController *)v41 initWithPersona:a3 appID:v65 credentialTypes:a5 promptString:v63 promptStringWhenPasskeysAreAvailable:v31 serviceNameHintStrings:v32 domainNameHintStrings:v64 savedAccountStore:v33 suggestedDomainForNewAccount:v38 localizedHostAppNameForNewAccount:v39 bundleIDForFallbackIconForNewAccount:v62 autoFillQuirksManager:v34 shouldShowAutoFillPasskeys:v50 currentWebFrameIdentifierForAutoFillPasskeys:v35 connectedAppAuditToken:v66 isConnectedAppAWebBrowser:v51 initialSearchQuery:v36 savedAccountToInitiallyShowDetailsFor:v37 shouldAllowAddingNewPasswords:v52 bypassLockoutPolicy:0 authenticatedContext:v61 savedAccountContext:v60 savedAccountForHistorySection:v59 didSelectHistoryItem:v58 didSelectAccountHandler:v57 didSelectTextToInsertHandler:?];
    controller = v40->_controller;
    v40->_controller = v43;

    v45 = [(_PMPasswordAutoFillPocketViewController *)v40->_controller hostingViewController];
    hostingViewController = v40->_hostingViewController;
    v40->_hostingViewController = v45;

    v47 = [MEMORY[0x277CCAB98] defaultCenter];
    [v47 addObserver:v40 selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v33 = v56;
    v48 = v40;
  }

  return v40;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];

  v4.receiver = self;
  v4.super_class = PMPasswordAutoFillPocketViewController;
  [(PMPasswordAutoFillPocketViewController *)&v4 dealloc];
}

- (void)loadView
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(PMPasswordAutoFillPocketViewController *)self setView:v3];

  v4 = self->_hostingViewController;
  v5 = [(PMPasswordAutoFillPocketViewController *)self view];
  v6 = [(UIViewController *)v4 view];
  [v5 addSubview:v6];

  v7 = [(UIViewController *)v4 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = MEMORY[0x277CCAAD0];
  v30 = [(UIViewController *)v4 view];
  v28 = [v30 leadingAnchor];
  v29 = [(PMPasswordAutoFillPocketViewController *)self view];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v31[0] = v26;
  v25 = [(UIViewController *)v4 view];
  v23 = [v25 trailingAnchor];
  v24 = [(PMPasswordAutoFillPocketViewController *)self view];
  v22 = [v24 trailingAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v31[1] = v20;
  v19 = [(UIViewController *)v4 view];
  v17 = [v19 topAnchor];
  v18 = [(PMPasswordAutoFillPocketViewController *)self view];
  v8 = [v18 topAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v31[2] = v9;
  v10 = [(UIViewController *)v4 view];
  v11 = [v10 bottomAnchor];
  v12 = [(PMPasswordAutoFillPocketViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v21 activateConstraints:v15];

  [(PMPasswordAutoFillPocketViewController *)self addChildViewController:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)appDidEnterBackground
{
  v2 = [(_PMPasswordAutoFillPocketViewController *)self->_controller iconController];
  [v2 prepareForApplicationTermination];
}

@end