@interface PMPasswordAutoFillPocketViewController
- (PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings bypassLockoutPolicy:(BOOL)self0 savedAccountStore:(id)self1 autoFillQuirksManager:(id)self2 shouldShowAutoFillPasskeys:(BOOL)self3 currentWebFrameIdentifierForAutoFillPasskeys:(id)self4 connectedAppAuditToken:(id *)self5 isConnectedAppAWebBrowser:(BOOL)self6 initialSearchQuery:(id)self7 savedAccountToInitiallyShowDetailsFor:(id)self8 shouldAllowAddingNewPasswords:(BOOL)self9 suggestedDomainForNewAccount:(id)account localizedHostAppNameForNewAccount:(id)newAccount bundleIDForFallbackIconForNewAccount:(id)forNewAccount authenticatedContext:(id)context savedAccountContext:(id)accountContext savedAccountForHistorySection:(id)section didSelectHistoryItem:(id)item didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler;
- (void)appDidEnterBackground;
- (void)dealloc;
- (void)loadView;
@end

@implementation PMPasswordAutoFillPocketViewController

- (PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings bypassLockoutPolicy:(BOOL)self0 savedAccountStore:(id)self1 autoFillQuirksManager:(id)self2 shouldShowAutoFillPasskeys:(BOOL)self3 currentWebFrameIdentifierForAutoFillPasskeys:(id)self4 connectedAppAuditToken:(id *)self5 isConnectedAppAWebBrowser:(BOOL)self6 initialSearchQuery:(id)self7 savedAccountToInitiallyShowDetailsFor:(id)self8 shouldAllowAddingNewPasswords:(BOOL)self9 suggestedDomainForNewAccount:(id)account localizedHostAppNameForNewAccount:(id)newAccount bundleIDForFallbackIconForNewAccount:(id)forNewAccount authenticatedContext:(id)context savedAccountContext:(id)accountContext savedAccountForHistorySection:(id)section didSelectHistoryItem:(id)item didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler
{
  dCopy = d;
  stringCopy = string;
  availableCopy = available;
  stringsCopy = strings;
  hintStringsCopy = hintStrings;
  storeCopy = store;
  managerCopy = manager;
  fillPasskeysCopy = fillPasskeys;
  queryCopy = query;
  forCopy = for;
  accountCopy = account;
  newAccountCopy = newAccount;
  forNewAccountCopy = forNewAccount;
  accountContextCopy = accountContext;
  sectionCopy = section;
  itemCopy = item;
  handlerCopy = handler;
  insertHandlerCopy = insertHandler;
  v67.receiver = self;
  v67.super_class = PMPasswordAutoFillPocketViewController;
  v40 = [(PMPasswordAutoFillPocketViewController *)&v67 initWithNibName:0 bundle:0];
  if (v40)
  {
    v56 = storeCopy;
    v41 = [_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController alloc];
    v42 = *&token->var0[4];
    v66[0] = *token->var0;
    v66[1] = v42;
    BYTE1(v52) = policy;
    LOBYTE(v52) = passwords;
    LOBYTE(v51) = browser;
    LOBYTE(v50) = passkeys;
    v43 = [(_PMPasswordAutoFillPocketViewController *)v41 initWithPersona:persona appID:dCopy credentialTypes:types promptString:stringCopy promptStringWhenPasskeysAreAvailable:availableCopy serviceNameHintStrings:stringsCopy domainNameHintStrings:hintStringsCopy savedAccountStore:storeCopy suggestedDomainForNewAccount:accountCopy localizedHostAppNameForNewAccount:newAccountCopy bundleIDForFallbackIconForNewAccount:forNewAccountCopy autoFillQuirksManager:managerCopy shouldShowAutoFillPasskeys:v50 currentWebFrameIdentifierForAutoFillPasskeys:fillPasskeysCopy connectedAppAuditToken:v66 isConnectedAppAWebBrowser:v51 initialSearchQuery:queryCopy savedAccountToInitiallyShowDetailsFor:forCopy shouldAllowAddingNewPasswords:v52 bypassLockoutPolicy:0 authenticatedContext:accountContextCopy savedAccountContext:sectionCopy savedAccountForHistorySection:itemCopy didSelectHistoryItem:handlerCopy didSelectAccountHandler:insertHandlerCopy didSelectTextToInsertHandler:?];
    controller = v40->_controller;
    v40->_controller = v43;

    hostingViewController = [(_PMPasswordAutoFillPocketViewController *)v40->_controller hostingViewController];
    hostingViewController = v40->_hostingViewController;
    v40->_hostingViewController = hostingViewController;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v40 selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    storeCopy = v56;
    v48 = v40;
  }

  return v40;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];

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
  view = [(PMPasswordAutoFillPocketViewController *)self view];
  view2 = [(UIViewController *)v4 view];
  [view addSubview:view2];

  view3 = [(UIViewController *)v4 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = MEMORY[0x277CCAAD0];
  view4 = [(UIViewController *)v4 view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(PMPasswordAutoFillPocketViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v26;
  view6 = [(UIViewController *)v4 view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(PMPasswordAutoFillPocketViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v20;
  view8 = [(UIViewController *)v4 view];
  topAnchor = [view8 topAnchor];
  view9 = [(PMPasswordAutoFillPocketViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v9;
  view10 = [(UIViewController *)v4 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(PMPasswordAutoFillPocketViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v21 activateConstraints:v15];

  [(PMPasswordAutoFillPocketViewController *)self addChildViewController:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)appDidEnterBackground
{
  iconController = [(_PMPasswordAutoFillPocketViewController *)self->_controller iconController];
  [iconController prepareForApplicationTermination];
}

@end