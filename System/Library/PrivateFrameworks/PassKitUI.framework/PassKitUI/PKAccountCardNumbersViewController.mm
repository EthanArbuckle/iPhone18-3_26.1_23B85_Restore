@interface PKAccountCardNumbersViewController
+ (id)_virtualCardSections;
- (BOOL)_supportsManualEntry;
- (BOOL)_virtualCardCredentialDetailsRowIsEnabled:(unint64_t)enabled;
- (BOOL)canReplaceCard;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKAccountCardNumbersViewController)initWithPass:(id)pass accountService:(id)service account:(id)account cardCredentials:(id)credentials virtualCard:(id)card physicalCard:(id)physicalCard context:(int64_t)context;
- (PKAccountCardNumbersViewController)initWithPass:(id)pass localAuthenticationContext:(id)context virtualCard:(id)card context:(int64_t)a6;
- (id)_buttonCellForRowIndex:(int64_t)index text:(id)text cellStyle:(int64_t)style forTableView:(id)view;
- (id)_cardCredentialsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_credentialsCellWithPrimaryText:(id)text detailText:(id)detailText detailImage:(id)image forSection:(unint64_t)section forTableView:(id)view;
- (id)_dynamicSecurityCodeCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_genericDisplayableError:(id)error;
- (id)_hyperlinkViewWithLinkText:(id)text footerText:(id)footerText urlString:(id)string;
- (id)_loadingCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_localizedStringForKey:(id)key;
- (id)_otherNumbersCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_replaceCardAlertFromIndexPath:(id)path;
- (id)_tableHeaderView;
- (id)_virtualCardStateFooter;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_numberOfVirtualCardCredentialDetailsRowsEnabled;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_virtualCardCredentialDetailsRowForRowIndex:(int64_t)index;
- (void)_beginReportingIfNecessary;
- (void)_copyCardDetails;
- (void)_endReportingIfNecessary;
- (void)_handleReplacementError:(id)error;
- (void)_replaceVirtualCard;
- (void)_retrieveCardCredentials;
- (void)_retryCardCredentials;
- (void)_sendAnalyticsButtonTapped:(id)tapped;
- (void)_sendAnalyticsEvent:(id)event;
- (void)_setupNotifications;
- (void)_toggleDynamicSecurityCodeSetting;
- (void)_willHideUIMenuController:(id)controller;
- (void)paymentAuthorizationViewController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)setRedactSensitiveDetails:(BOOL)details;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PKAccountCardNumbersViewController

- (PKAccountCardNumbersViewController)initWithPass:(id)pass accountService:(id)service account:(id)account cardCredentials:(id)credentials virtualCard:(id)card physicalCard:(id)physicalCard context:(int64_t)context
{
  passCopy = pass;
  serviceCopy = service;
  accountCopy = account;
  credentialsCopy = credentials;
  cardCopy = card;
  physicalCardCopy = physicalCard;
  v29.receiver = self;
  v29.super_class = PKAccountCardNumbersViewController;
  v19 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v29, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 4);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_cardCredentials, credentials);
    objc_storeStrong(&v20->_virtualCard, card);
    objc_storeStrong(&v20->_accountService, service);
    objc_storeStrong(&v20->_account, account);
    objc_storeStrong(&v20->_pass, pass);
    v20->_accountFeatureIdentifier = [(PKAccount *)v20->_account feature];
    v20->_context = context;
    objc_storeStrong(&v20->_physicalCard, physicalCard);
    v20->_redactSensitiveDetails = 0;
    if (v20->_virtualCard && [cardCopy state] == 1 && v20->_cardCredentials)
    {
      v21 = [cardCopy copy];
      v22 = PKLocalizedFeatureString();
      [v21 setDisplayName:v22];

      [v21 setKeychainCardCredentials:credentialsCopy];
      [(PKAccountService *)v20->_accountService writeVirtualCardToKeychain:v21 completion:0];
    }

    v23 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v20];
    editMenuInteraction = v20->_editMenuInteraction;
    v20->_editMenuInteraction = v23;

    [(PKAccountCardNumbersViewController *)v20 _setupNotifications];
  }

  return v20;
}

- (PKAccountCardNumbersViewController)initWithPass:(id)pass localAuthenticationContext:(id)context virtualCard:(id)card context:(int64_t)a6
{
  passCopy = pass;
  contextCopy = context;
  cardCopy = card;
  v21.receiver = self;
  v21.super_class = PKAccountCardNumbersViewController;
  v14 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v21, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 4);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    objc_storeStrong(&v15->_virtualCard, card);
    v15->_context = a6;
    v15->_accountFeatureIdentifier = [passCopy associatedAccountFeatureIdentifier];
    v15->_redactSensitiveDetails = 0;
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v15->_paymentService;
    v15->_paymentService = paymentService;

    objc_storeStrong(&v15->_localAuthenticationContext, context);
    v18 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v15];
    editMenuInteraction = v15->_editMenuInteraction;
    v15->_editMenuInteraction = v18;

    [(PKAccountCardNumbersViewController *)v15 _setupNotifications];
    [(PKAccountCardNumbersViewController *)v15 _retrieveCardCredentials];
  }

  return v15;
}

- (void)_setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel_applicationWillDeactivate_ name:*MEMORY[0x1E69DE878] object:0];
  [defaultCenter addObserver:self selector:sel__willHideUIMenuController_ name:*MEMORY[0x1E69DE0E8] object:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKAccountCardNumbersViewController;
  [(PKSectionTableViewController *)&v8 viewDidLoad];
  tableView = [(PKAccountCardNumbersViewController *)self tableView];
  [tableView setAllowsSelection:1];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  _tableHeaderView = [(PKAccountCardNumbersViewController *)self _tableHeaderView];
  [tableView setTableHeaderView:_tableHeaderView];

  [tableView addInteraction:self->_editMenuInteraction];
  navigationItem = [(PKAccountCardNumbersViewController *)self navigationItem];
  v6 = PKLocalizedCardNumbersString(&cfstr_CardNumbersTit.isa);
  [navigationItem setTitle:v6];

  view = [(PKAccountCardNumbersViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B95C8]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountCardNumbersViewController;
  [(PKAccountCardNumbersViewController *)&v5 viewWillAppear:appear];
  if ([(PKVirtualCard *)self->_virtualCard type]== 2)
  {
    [(PKAccountCardNumbersViewController *)self _beginReportingIfNecessary];
  }

  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountCardNumbersViewController *)self _sendAnalyticsEvent:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountCardNumbersViewController;
  [(PKAccountCardNumbersViewController *)&v5 viewWillDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountCardNumbersViewController *)self _sendAnalyticsEvent:v4];

  if ([(PKVirtualCard *)self->_virtualCard type]== 2)
  {
    [(PKAccountCardNumbersViewController *)self _endReportingIfNecessary];
  }
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB6F8];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6F8]];

  if (!v4)
  {
    self->_didBeginPassManagementSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginPassManagementSubject)
  {
    self->_didBeginPassManagementSubject = 0;
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6F8]];
  }
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKAccountCardNumbersViewController;
  [(PKAccountCardNumbersViewController *)&v10 viewWillLayoutSubviews];
  tableView = [(PKAccountCardNumbersViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  if (tableHeaderView)
  {
    [tableView bounds];
    v6 = v5;
    [tableHeaderView frame];
    v8 = v7;
    [tableHeaderView sizeThatFits:{v6, 1.79769313e308}];
    if (v8 != v9)
    {
      [tableView _rectForTableHeaderView];
      [tableHeaderView setFrame:?];
      [tableView setTableHeaderView:0];
      [tableView setTableHeaderView:tableHeaderView];
    }
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PKAccountCardNumbersViewController;
  [(PKAccountCardNumbersViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(PKAccountCardNumbersViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BA3A8]];
  }
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  v4 = 0;
  if (section > 1)
  {
    if (section == 2)
    {
      account = self->_account;

      return [(PKAccount *)account supportsDynamicSecurityCodes];
    }

    if (section != 3)
    {
      return v4;
    }

    devicePaymentApplications = [(PKPaymentPass *)self->_pass devicePaymentApplications];
    if ([devicePaymentApplications count])
    {
      v4 = 1;
    }

    else
    {
      v4 = self->_physicalCard != 0;
    }

LABEL_26:

    return v4;
  }

  if (!section)
  {
    if (self->_loadingCredentials)
    {
      return 1;
    }

    devicePaymentApplications = [MEMORY[0x1E69B8EF8] sharedService];
    v4 = PKVirtualCardEnabledWithWebService() && [(PKVirtualCard *)self->_virtualCard type]== 2 && self->_cardCredentials == 0;
    goto LABEL_26;
  }

  if (section != 1)
  {
    return v4;
  }

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  if (PKVirtualCardEnabledWithWebService())
  {
    type = [(PKVirtualCard *)self->_virtualCard type];

    if (type == 2)
    {
      if (!self->_cardCredentials)
      {
        return self->_loadingCredentials;
      }

      return 1;
    }
  }

  else
  {
  }

  v10 = self->_account;

  return [(PKAccount *)v10 supportsShowVirtualCard];
}

- (void)setRedactSensitiveDetails:(BOOL)details
{
  if (self->_redactSensitiveDetails != details)
  {
    self->_redactSensitiveDetails = details;
    tableView = [(PKAccountCardNumbersViewController *)self tableView];
    [tableView reloadData];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 > 1)
  {
    return v5 == 2 || v5 == 3;
  }

  else if (v5)
  {
    if (v5 == 1 && self->_virtualCard)
    {

      return [(PKAccountCardNumbersViewController *)self _numberOfVirtualCardCredentialDetailsRowsEnabled];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

- (int64_t)_numberOfVirtualCardCredentialDetailsRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKAccountCardNumbersViewController *)self _virtualCardCredentialDetailsRowIsEnabled:v3++];
  }

  while (v3 != 6);
  return v4;
}

- (BOOL)_virtualCardCredentialDetailsRowIsEnabled:(unint64_t)enabled
{
  v4 = 0;
  if (enabled <= 2)
  {
    if (enabled)
    {
      if (enabled != 1)
      {
        if (enabled != 2)
        {
          return v4;
        }

        goto LABEL_26;
      }

      goto LABEL_13;
    }

    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    if (PKVirtualCardEnabledWithWebService())
    {
      type = [(PKVirtualCard *)self->_virtualCard type];

      if (type == 2)
      {
        virtualCard = self->_virtualCard;
        if (!virtualCard)
        {
          return 0;
        }

        cardholderName = [(PKVirtualCard *)virtualCard cardholderName];
        if (cardholderName)
        {
          v4 = !self->_loadingCredentials;
        }

        else
        {
          v4 = 0;
        }

        return v4;
      }
    }

    else
    {
    }

LABEL_26:
    v10 = self->_virtualCard;
    if (!v10 || self->_loadingCredentials)
    {
      return 0;
    }

    expiration = [(PKVirtualCard *)v10 expiration];
    if (expiration)
    {
      v4 = 1;
    }

    else
    {
      expiration2 = [(PKVirtualCardCredentials *)self->_cardCredentials expiration];
      v4 = expiration2 != 0;
    }

LABEL_36:

    return v4;
  }

  switch(enabled)
  {
    case 3uLL:
LABEL_13:
      if (!self->_cardCredentials && !self->_loadingReplacementCard)
      {
        return 0;
      }

      return !self->_loadingCredentials;
    case 4uLL:
      if (!self->_cardCredentials && !self->_loadingReplacementCard && !self->_loadingCredentials)
      {
        expiration = [MEMORY[0x1E69B8EF8] sharedService];
        v4 = PKVirtualCardEnabledWithWebService() && [(PKPaymentPass *)self->_pass hasActiveVirtualCard]&& self->_cardCredentials == 0;
        goto LABEL_36;
      }

      v4 = 1;
      break;
    case 5uLL:
      v5 = self->_virtualCard;
      if (!v5 || [(PKVirtualCard *)v5 state]== 3 || self->_loadingCredentials)
      {
        return 0;
      }

      v4 = self->_cardCredentials != 0;
      break;
  }

  return v4;
}

- (unint64_t)_virtualCardCredentialDetailsRowForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKAccountCardNumbersViewController *)self _virtualCardCredentialDetailsRowIsEnabled:v5])
    {
      if (v6 == index)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 6);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = -[PKAccountCardNumbersViewController _dynamicSecurityCodeCellForRowIndex:tableView:](self, "_dynamicSecurityCodeCellForRowIndex:tableView:", [pathCopy row], viewCopy);
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_11;
      }

      v10 = -[PKAccountCardNumbersViewController _otherNumbersCellForRowIndex:tableView:](self, "_otherNumbersCellForRowIndex:tableView:", [pathCopy row], viewCopy);
    }
  }

  else if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_11;
    }

    v10 = -[PKAccountCardNumbersViewController _cardCredentialsCellForRowIndex:tableView:](self, "_cardCredentialsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
  }

  else
  {
    v10 = -[PKAccountCardNumbersViewController _loadingCellForRowIndex:tableView:](self, "_loadingCellForRowIndex:tableView:", [pathCopy row], viewCopy);
  }

  v9 = v10;
LABEL_11:

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 != 3)
  {
    if (v5 == 1)
    {
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      if (PKVirtualCardEnabledWithWebService())
      {
        hasActiveVirtualCard = [(PKPaymentPass *)self->_pass hasActiveVirtualCard];

        if (hasActiveVirtualCard)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (self->_virtualCard)
      {
        [(PKAccountCardNumbersViewController *)self _virtualCardStateFooter];
      }

      else
      {
        PKLocalizedFeatureString();
      }
      v8 = ;
      goto LABEL_12;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [(PKAccountCardNumbersViewController *)self _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_FOOTER"];
LABEL_12:

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 == 1)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    if (!PKVirtualCardEnabledWithWebService())
    {
      v8 = 0;
      goto LABEL_16;
    }

    hasActiveVirtualCard = [(PKPaymentPass *)self->_pass hasActiveVirtualCard];

    if (hasActiveVirtualCard)
    {
      mEMORY[0x1E69B8EF8] = PKLocalizedVirtualCardString(&cfstr_CardNumbersDyn.isa);
      if (PKFPANAutoFillEnabled())
      {
        v10 = @"CARD_NUMBERS_DYNAMIC_CVC_FOOTER_FPAN";
      }

      else
      {
        v10 = @"CARD_NUMBERS_DYNAMIC_CVC_FOOTER";
      }

      v7 = PKLocalizedVirtualCardString(&v10->isa, &stru_1F3BD5BF0.isa, mEMORY[0x1E69B8EF8]);
      if (self->_accountFeatureIdentifier == 1)
      {
        v11 = MEMORY[0x1E69BB790];
      }

      else
      {
        v11 = MEMORY[0x1E69BC6D0];
      }

      v12 = *v11;
      v8 = [(PKAccountCardNumbersViewController *)self _hyperlinkViewWithLinkText:mEMORY[0x1E69B8EF8] footerText:v7 urlString:v12];

      goto LABEL_4;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_17;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  mEMORY[0x1E69B8EF8] = PKLocalizedFeatureString();
  v7 = PKLocalizedFeatureString();
  v8 = [(PKAccountCardNumbersViewController *)self _hyperlinkViewWithLinkText:mEMORY[0x1E69B8EF8] footerText:v7 urlString:@"https://support.apple.com/ht212328?cid=mc-ols-applecard-article_h212328-wallet_ui-04242021", mEMORY[0x1E69B8EF8]];
LABEL_4:

LABEL_16:
LABEL_17:

  return v8;
}

- (id)_hyperlinkViewWithLinkText:(id)text footerText:(id)footerText urlString:(id)string
{
  textCopy = text;
  footerTextCopy = footerText;
  stringCopy = string;
  v11 = objc_alloc_init(PKFooterHyperlinkView);
  v12 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  v13 = PKAttributedStringByAddingLinkToSubstring(footerTextCopy, textCopy, v12);
  [(PKFooterHyperlinkView *)v11 setAttributedText:v13];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PKAccountCardNumbersViewController__hyperlinkViewWithLinkText_footerText_urlString___block_invoke;
  v15[3] = &unk_1E80122D8;
  objc_copyWeak(&v16, &location);
  [(PKFooterHyperlinkView *)v11 setAction:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __86__PKAccountCardNumbersViewController__hyperlinkViewWithLinkText_footerText_urlString___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1225] = 1;
    v5 = [WeakRetained tableView];
    [v5 reloadData];

    PKOpenURL();
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  currentMenuAction = self->_currentMenuAction;
  self->_currentMenuAction = 0;

  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v10 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v10 == 3)
  {
    if ([(PKAccountCardNumbersViewController *)self shouldMapSection:3])
    {
      LOBYTE(v26) = 0;
      v17 = [[PKAccountOtherCardNumbersViewController alloc] initWithPhysicalCard:self->_physicalCard paymentPass:self->_pass account:self->_account context:self->_context localAuthContext:self->_localAuthenticationContext supportsManualFPANEntry:[(PKAccountCardNumbersViewController *)self _supportsManualEntry] preferDefaultTitle:v26];
      navigationController = [(PKAccountCardNumbersViewController *)self navigationController];
      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_pushViewController:v17];
      }

      else
      {
        [navigationController pushViewController:v17 animated:1];
      }

      [(PKAccountCardNumbersViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BA2D0]];
    }
  }

  else if (v10 == 1)
  {
    v11 = -[PKAccountCardNumbersViewController _virtualCardCredentialDetailsRowForRowIndex:](self, "_virtualCardCredentialDetailsRowForRowIndex:", [pathCopy row]);
    if (!v9)
    {
      goto LABEL_16;
    }

    if (v11 >= 5)
    {
      if (v11 == 5)
      {
        [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
        if ([(PKAccountCardNumbersViewController *)self canReplaceCard])
        {
          v25 = [(PKAccountCardNumbersViewController *)self _replaceCardAlertFromIndexPath:pathCopy];
          [(PKAccountCardNumbersViewController *)self presentViewController:v25 animated:1 completion:0];
          [(PKAccountCardNumbersViewController *)self _sendAnalyticsButtonTapped:*MEMORY[0x1E69BB148]];
        }
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DC628];
      v13 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __72__PKAccountCardNumbersViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v27[3] = &unk_1E8010A60;
      objc_copyWeak(&v28, &location);
      v15 = [v12 actionWithTitle:v13 image:v14 identifier:0 handler:v27];
      v16 = self->_currentMenuAction;
      self->_currentMenuAction = v15;

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  else if (!v10 && !self->_loadingCredentials)
  {
    [(PKAccountCardNumbersViewController *)self _retryCardCredentials];
  }

  if (self->_currentMenuAction)
  {
    [v9 frame];
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    MidX = CGRectGetMidX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v24 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:0 sourcePoint:{MidX, CGRectGetMidY(v31)}];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v24];
  }

LABEL_16:
}

void __72__PKAccountCardNumbersViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _copyCardDetails];
    WeakRetained = v2;
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v6 == 3)
  {
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    if (-[PKAccountCardNumbersViewController _virtualCardCredentialDetailsRowForRowIndex:](self, "_virtualCardCredentialDetailsRowForRowIndex:", [pathCopy row]) == 5)
    {
      canReplaceCard = [(PKAccountCardNumbersViewController *)self canReplaceCard];
      goto LABEL_9;
    }

LABEL_7:
    canReplaceCard = 1;
    goto LABEL_9;
  }

  if (v6)
  {
    canReplaceCard = 0;
  }

  else
  {
    canReplaceCard = !self->_loadingCredentials;
  }

LABEL_9:

  return canReplaceCard;
}

- (void)_willHideUIMenuController:(id)controller
{
  tableView = [(PKAccountCardNumbersViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)_copyCardDetails
{
  tableView = [(PKAccountCardNumbersViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v4 = [tableView cellForRowAtIndexPath:indexPathForSelectedRow];
  v5 = -[PKAccountCardNumbersViewController _virtualCardCredentialDetailsRowForRowIndex:](self, "_virtualCardCredentialDetailsRowForRowIndex:", [indexPathForSelectedRow row]);
  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      goto LABEL_9;
    }

LABEL_7:
    detailText = [v4 detailText];
    if (!detailText)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  switch(v5)
  {
    case 0:
      goto LABEL_7;
    case 1:
      detailText2 = [v4 detailText];
      v7 = [detailText2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3BD7330];
      break;
    case 2:
      detailText2 = [v4 detailText];
      v7 = PKShortExpiration();
      break;
    default:
      goto LABEL_9;
  }

  detailText = v7;

  if (detailText)
  {
LABEL_8:
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setString:detailText];
  }

LABEL_9:
}

- (id)_loadingCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (self->_loadingCredentials)
  {
    v6 = @"CARD_NUMBERS_VIRTUAL_LOADING";
  }

  else
  {
    v6 = @"CARD_NUMBERS_VIRTUAL_UNAVAILABLE";
  }

  v7 = PKLocalizedCardNumbersString(&v6->isa);
  if (self->_loadingCredentials)
  {
    v8 = 0;
  }

  else
  {
    v8 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_7.isa);
  }

  v9 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v7 detailText:v8 detailImage:0 forSection:0 forTableView:viewCopy];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [v9 setTitleTextColor:tertiaryLabelColor];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v9 setDetailTextColor:systemBlueColor];

  [v9 setShowsActionSpinner:self->_loadingCredentials];

  return v9;
}

- (id)_cardCredentialsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v7 = [(PKAccountCardNumbersViewController *)self _virtualCardCredentialDetailsRowForRowIndex:index];
  v8 = 0;
  if (v7 <= 2)
  {
    if (!v7)
    {
      v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_8.isa);
      cardholderName = [(PKVirtualCard *)self->_virtualCard cardholderName];
      v13 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v10 detailText:cardholderName forTableView:viewCopy];
      v8 = v13;
      v14 = MEMORY[0x1E69B95D0];
      goto LABEL_37;
    }

    if (v7 != 1)
    {
      cardholderName = 0;
      v10 = 0;
      if (v7 != 2)
      {
        goto LABEL_38;
      }

      v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_10.isa);
      cardholderName = [(PKVirtualCard *)self->_virtualCard expiration];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      if (PKVirtualCardEnabledWithWebService())
      {
        hasActiveVirtualCard = [(PKPaymentPass *)self->_pass hasActiveVirtualCard];

        if (!hasActiveVirtualCard)
        {
LABEL_9:
          v13 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v10 detailText:cardholderName forTableView:viewCopy];
          v8 = v13;
          v14 = MEMORY[0x1E69B9790];
LABEL_37:
          [v13 setAccessibilityIdentifier:*v14];
          goto LABEL_38;
        }

        [(PKVirtualCardCredentials *)self->_cardCredentials formattedExpiration];
        cardholderName = mEMORY[0x1E69B8EF8] = cardholderName;
      }

      goto LABEL_9;
    }

    v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_9.isa);
    if (self->_redactSensitiveDetails)
    {
      fPANSuffix = [(PKVirtualCard *)self->_virtualCard FPANSuffix];
      if (!fPANSuffix || (v19 = fPANSuffix, v20 = [(PKVirtualCard *)self->_virtualCard type], v19, v20 == 2))
      {
        cardholderName = [(PKVirtualCardCredentials *)self->_cardCredentials primaryAccountNumber];

        if (!cardholderName)
        {
LABEL_36:
          v13 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v10 detailText:cardholderName forTableView:viewCopy];
          v8 = v13;
          v14 = MEMORY[0x1E69B95C0];
          goto LABEL_37;
        }

        primaryAccountNumber = [(PKVirtualCardCredentials *)self->_cardCredentials primaryAccountNumber];
        v22 = PKFPANSuffixFromFPAN();
        cardholderName = PKMaskedPaymentPAN();

LABEL_35:
        goto LABEL_36;
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = PKPANMask();
      v29 = PKPANMask();
      v30 = PKPANMask();
      fPANSuffix2 = [(PKVirtualCard *)self->_virtualCard FPANSuffix];
      primaryAccountNumber = [v27 stringWithFormat:@"%@%@%@%@", v28, v29, v30, fPANSuffix2];
    }

    else
    {
      primaryAccountNumber = [(PKVirtualCardCredentials *)self->_cardCredentials primaryAccountNumber];
    }

    cardholderName = PKFormattedStringForPAN();
    goto LABEL_35;
  }

  if (v7 == 3)
  {
    v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_11.isa);
    if (self->_redactSensitiveDetails)
    {
      v17 = 0;
      cardholderName = @"•••";
    }

    else
    {
      cardholderName = [(PKVirtualCardCredentials *)self->_cardCredentials cardSecurityCode];
      if ([(PKVirtualCard *)self->_virtualCard hasDynamicSecurityCode])
      {
        v23 = MEMORY[0x1E69DCAD8];
        v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        v25 = [v23 configurationWithFont:v24];

        v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.arrow.2.circlepath"];
        v17 = [v26 imageWithSymbolConfiguration:v25];
      }

      else
      {
        v17 = 0;
      }
    }

    v8 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v10 detailText:cardholderName detailImage:v17 forTableView:viewCopy];
    [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9588]];

    goto LABEL_38;
  }

  if (v7 == 4)
  {
    v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_5.isa);
    if (![(PKVirtualCardCredentials *)self->_cardCredentials cardType])
    {
      [(PKVirtualCard *)self->_virtualCard credentialType];
    }

    cardholderName = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    v13 = [(PKAccountCardNumbersViewController *)self _credentialsCellWithPrimaryText:v10 detailText:cardholderName forTableView:viewCopy];
    v8 = v13;
    v14 = MEMORY[0x1E69B9980];
    goto LABEL_37;
  }

  cardholderName = 0;
  v10 = 0;
  if (v7 == 5)
  {
    if (self->_loadingReplacementCard)
    {
      v15 = @"CARD_NUMBERS_VIRTUAL_REPLACING_TITLE";
    }

    else
    {
      v15 = @"CARD_NUMBERS_VIRTUAL_REPLACE_TITLE";
    }

    v16 = PKLocalizedCardNumbersString(&v15->isa);
    v8 = [(PKAccountCardNumbersViewController *)self _buttonCellForRowIndex:index text:v16 cellStyle:0 forTableView:viewCopy];
    [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9B70]];

    cardholderName = 0;
    v10 = 0;
  }

LABEL_38:

  return v8;
}

- (id)_dynamicSecurityCodeCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = [(PKAccountCardNumbersViewController *)self _reuseIdentifierForSection:2];
  v7 = [viewCopy dequeueReusableCellWithIdentifier:v6];

  dynamicSecurityCodeCell = self->_dynamicSecurityCodeCell;
  self->_dynamicSecurityCodeCell = v7;

  v9 = self->_dynamicSecurityCodeCell;
  if (!v9)
  {
    v10 = PKLocalizedFeatureString();
    v11 = [[PKSettingTableCell alloc] initWithTitle:v10 target:self action:sel__toggleDynamicSecurityCodeSetting];
    v12 = self->_dynamicSecurityCodeCell;
    self->_dynamicSecurityCodeCell = v11;

    v9 = self->_dynamicSecurityCodeCell;
  }

  [(PKSettingTableCell *)v9 setOn:[(PKVirtualCard *)self->_virtualCard hasDynamicSecurityCode]];
  [(PKSettingTableCell *)self->_dynamicSecurityCodeCell setAccessibilityIdentifier:*MEMORY[0x1E69B9738]];
  v13 = self->_dynamicSecurityCodeCell;
  v14 = v13;

  return v13;
}

- (id)_otherNumbersCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = PKLocalizedCardNumbersString(&cfstr_CardNumbersOth.isa);
  v7 = [(PKAccountCardNumbersViewController *)self _reuseIdentifierForSection:3];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7];

  if (!v8)
  {
    v8 = [[PKStackedLabelCell alloc] initWithReuseIdentifier:v7];
  }

  [(PKStackedLabelCell *)v8 setTitleText:v6];
  [(PKStackedLabelCell *)v8 setAccessoryType:1];
  [(PKStackedLabelCell *)v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9408]];

  return v8;
}

- (id)_credentialsCellWithPrimaryText:(id)text detailText:(id)detailText detailImage:(id)image forSection:(unint64_t)section forTableView:(id)view
{
  textCopy = text;
  viewCopy = view;
  imageCopy = image;
  detailTextCopy = detailText;
  v16 = [(PKAccountCardNumbersViewController *)self _reuseIdentifierForSection:section];
  v17 = [viewCopy dequeueReusableCellWithIdentifier:v16];

  if (!v17)
  {
    v17 = [[PKStackedLabelCell alloc] initWithReuseIdentifier:v16];
  }

  [(PKStackedLabelCell *)v17 setTitleText:textCopy];
  [(PKStackedLabelCell *)v17 setDetailText:detailTextCopy];

  [(PKStackedLabelCell *)v17 setDetailImage:imageCopy];
  [(UIView *)v17 pkui_setExcludedFromScreenCapture:self->_redactSensitiveDetails andBroadcasting:1];
  [(PKStackedLabelCell *)v17 setAccessibilityIdentifier:*MEMORY[0x1E69B9640]];

  return v17;
}

- (id)_buttonCellForRowIndex:(int64_t)index text:(id)text cellStyle:(int64_t)style forTableView:(id)view
{
  v9 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  textCopy = text;
  v12 = [(PKAccountCardNumbersViewController *)self _reuseIdentifierForSection:1];
  v13 = [v9 stringWithFormat:@"%@-%@", v12, @"Button"];

  v14 = [viewCopy dequeueReusableCellWithIdentifier:v13];

  if (!v14)
  {
    v14 = [[PKTableViewCell alloc] initWithStyle:style reuseIdentifier:v13];
    [(PKTableViewCell *)v14 setUserInteractionEnabled:1];
  }

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  if (![(PKAccountCardNumbersViewController *)self canReplaceCard])
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    systemBlueColor = tertiaryLabelColor;
  }

  [(PKTableViewCell *)v14 setShowsActionSpinner:self->_loadingReplacementCard];
  textLabel = [(PKTableViewCell *)v14 textLabel];
  [textLabel setTextColor:systemBlueColor];
  [textLabel setText:textCopy];

  [textLabel setNumberOfLines:0];

  return v14;
}

- (BOOL)canReplaceCard
{
  if (self->_loadingCredentials)
  {
    return 0;
  }

  v10 = v2;
  if (self->_hasReplacedCredentials)
  {
    return 0;
  }

  type = [(PKVirtualCard *)self->_virtualCard type];
  virtualCard = self->_virtualCard;
  if (type != 2)
  {
    if ([(PKVirtualCard *)virtualCard type]!= 1)
    {
      return 0;
    }

    virtualCard = self->_account;
  }

  return [(PKVirtualCard *)virtualCard state:v3]== 1;
}

- (id)_tableHeaderView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD050]);
  groupedHeaderConfiguration = [MEMORY[0x1E69DCC28] groupedHeaderConfiguration];
  v4 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_14.isa);
  [groupedHeaderConfiguration setText:v4];

  textProperties = [groupedHeaderConfiguration textProperties];
  [textProperties setLineBreakMode:0];

  [groupedHeaderConfiguration setDirectionalLayoutMargins:{20.0, 16.0, 8.0, 0.0}];
  [v2 setContentConfiguration:groupedHeaderConfiguration];

  return v2;
}

- (BOOL)_supportsManualEntry
{
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  paymentType = [devicePrimaryPaymentApplication paymentType];

  v5 = PKFPANAutoFillEnabled();
  if (v5)
  {
    LOBYTE(v5) = !self->_account && self->_accountFeatureIdentifier != 1 && (paymentType - 1) < 2;
  }

  return v5;
}

- (id)_virtualCardStateFooter
{
  if ([(PKAccount *)self->_account state]!= 1)
  {
    goto LABEL_5;
  }

  state = [(PKVirtualCard *)self->_virtualCard state];
  v4 = 0;
  if (state > 2)
  {
    if (state != 3 && state != 4)
    {
      goto LABEL_6;
    }

LABEL_5:
    v4 = PKLocalizedFeatureString();
    goto LABEL_6;
  }

  if (state != 1)
  {
    if (state != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_15.isa);
LABEL_6:

  return v4;
}

- (id)_replaceCardAlertFromIndexPath:(id)path
{
  v4 = MEMORY[0x1E69DC650];
  v5 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_16.isa);
  v6 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_17.isa);
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_18.isa);
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_19.isa);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke;
  v15[3] = &unk_1E80112E8;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:0 handler:v15];

  [v7 addAction:v10];
  [v7 addAction:v13];

  return v7;
}

void __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1168) = 1;
  v2 = [MEMORY[0x1E69B8EF8] sharedService];
  if (!PKVirtualCardEnabledWithWebService())
  {

    goto LABEL_7;
  }

  v3 = [*(*(a1 + 32) + 1112) type];

  if (v3 != 2)
  {
LABEL_7:
    v5 = *(a1 + 32);
    v6 = *(v5 + 1120);
    *(v5 + 1120) = 0;

    [*(a1 + 32) reloadData];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1128);
    v9 = [*(v7 + 1112) identifier];
    v10 = [*(*(a1 + 32) + 1144) accountIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_2;
    v11[3] = &unk_1E80201B8;
    v11[4] = *(a1 + 32);
    [v8 performVirtualCardAction:3 forVirtualCardIdentifier:v9 forAccountIdentifier:v10 completion:v11];

    return;
  }

  v4 = *(a1 + 32);

  [v4 _replaceVirtualCard];
}

void __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_3;
  block[3] = &unk_1E8010A88;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 32);
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_3(id *a1)
{
  if (a1[4] && ([a1[5] domain], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E696A768]), v2, (v3 & 1) == 0))
  {
    objc_storeStrong(a1[6] + 139, a1[4]);
    [a1[6] reloadData];
    v6 = a1[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_4;
    v7[3] = &unk_1E8020190;
    v7[4] = a1[6];
    v8 = v6;
    [PKAccountCardNumbersPresenter authAndDecryptWithVirtualCard:v8 completion:v7];
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];

    [v4 _handleReplacementError:v5];
  }
}

void __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_5;
  block[3] = &unk_1E8011E38;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v8;
  v16 = v10;
  v17 = v7;
  v18 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 1168) = 0;
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) navigationController];
    if ([v2 pk_settings_useStateDrivenNavigation])
    {
      [v2 pk_settings_popViewController];
    }

    else
    {
      v5 = [v2 popViewControllerAnimated:1];
    }

    v6 = [*(a1 + 32) transitionCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_6;
    v10[3] = &unk_1E8020168;
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v13 = v2;
    v3 = v2;
    [v6 animateAlongsideTransition:0 completion:v10];
  }

  else
  {
    v3 = [*(a1 + 48) copy];
    [v3 setKeychainCardCredentials:*(a1 + 56)];
    v4 = PKLocalizedFeatureString();
    [v3 setDisplayName:v4];

    [*(*(a1 + 32) + 1128) writeVirtualCardToKeychain:v3 completion:0];
    objc_storeStrong((*(a1 + 32) + 1120), *(a1 + 56));
    *(*(a1 + 32) + 1185) = 1;
  }

  return [*(a1 + 32) reloadData];
}

void __69__PKAccountCardNumbersViewController__replaceCardAlertFromIndexPath___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = PKAccountDisplayableError();
    v2 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [*(a1 + 48) presentViewController:v2 animated:1 completion:0];
  }
}

- (void)_replaceVirtualCard
{
  if (PKVirtualCardSecureRefreshEnabled() && [(PKVirtualCard *)self->_virtualCard refreshType]== 1)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presenting virtual card refresh Oslo sheet", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E69B9348]) initRefreshRequestWithPaymentPass:self->_pass];
    v5 = [[PKPaymentAuthorizationViewController alloc] initWithPaymentRequest:v4];
    [(PKPaymentAuthorizationViewController *)v5 setDelegate:self];
    [(PKAccountCardNumbersViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    accountFeatureIdentifier = self->_accountFeatureIdentifier;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke;
    v7[3] = &unk_1E8020208;
    v7[4] = self;
    [PKCardNumbersAuthentication authenticationContextLocationBased:1 featureIdentifier:accountFeatureIdentifier completion:v7];
  }
}

void __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_4;
    v13[3] = &unk_1E8010A10;
    v13[4] = *(a1 + 32);
    v14 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    v12 = v14;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__49;
    v21 = __Block_byref_object_dispose__49;
    v22 = v5;
    *(*(a1 + 32) + 1184) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_199;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v8 = *(a1 + 32);
    v9 = *(v8 + 1136);
    v10 = *(v8 + 1112);
    v11 = [v18[5] externalizedContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_2;
    v15[3] = &unk_1E80201E0;
    v15[4] = *(a1 + 32);
    v15[5] = &v17;
    [v9 regenerateVPANCardCredentialsForVirtualCard:v10 authorization:v11 completion:v15];

    _Block_object_dispose(&v17, 8);
    v12 = v22;
  }
}

void __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_199(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _virtualCardSections];
  [v1 recomputeMappedSectionsAndReloadSections:v2];
}

void __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_3;
  block[3] = &unk_1E8010A88;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_3(void *a1)
{
  *(a1[4] + 1168) = 0;
  *(a1[4] + 1184) = 0;
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    objc_storeStrong((v3 + 1120), v2);
    *(a1[4] + 1185) = 1;
    v4 = a1[4];
    v8 = [objc_opt_class() _virtualCardSections];
    [v4 recomputeMappedSectionsAndReloadSections:v8];
  }

  else
  {
    v5 = *(v3 + 1120);
    *(v3 + 1120) = 0;

    v6 = a1[4];
    v7 = a1[6];

    [v6 _handleReplacementError:v7];
  }
}

void __57__PKAccountCardNumbersViewController__replaceVirtualCard__block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 1168) = 0;
  if (([*(a1 + 40) pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:1] & 1) == 0)
  {
    v3 = +[PKCardNumbersAuthentication genericDisplayableVirtualCardError];
    v2 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
  }
}

- (void)_handleReplacementError:(id)error
{
  errorCopy = error;
  self->_loadingReplacementCard = 0;
  v16 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_14;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (!v6)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    if (PKVirtualCardEnabledWithWebService())
    {
      type = [(PKVirtualCard *)self->_virtualCard type];

      if (type == 2)
      {
        v12 = [(PKAccountCardNumbersViewController *)self _genericDisplayableError:v16];
LABEL_12:
        v13 = v12;
        v8 = PKAlertForDisplayableErrorWithHandlers(v12, 0, 0, 0);

        [(PKAccountCardNumbersViewController *)self presentViewController:v8 animated:1 completion:0];
        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = [PKAccountFlowController displayableErrorForError:v16 featureIdentifier:self->_accountFeatureIdentifier genericErrorTitle:0 genericErrorMessage:0];
    goto LABEL_12;
  }

  code = [v16 code];
  if (code > 5)
  {
    goto LABEL_14;
  }

  if (code != 3)
  {
    v8 = [(PKAccountCardNumbersViewController *)self _genericDisplayableError:v16];
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v14 = [(PKAccountCardNumbersViewController *)self _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_VIRTUAL_RATE_LIMIT_ERROR_TITLE"];
  v15 = [(PKAccountCardNumbersViewController *)self _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_VIRTUAL_RATE_LIMIT_ERROR_MESSAGE"];
  v8 = PKDisplayableErrorCustom();

  if (v8)
  {
LABEL_6:
    v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    [(PKAccountCardNumbersViewController *)self presentViewController:v9 animated:1 completion:0];

LABEL_13:
  }

LABEL_14:
  [(PKSectionTableViewController *)self reloadData];
}

- (id)_genericDisplayableError:(id)error
{
  errorCopy = error;
  v4 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_20.isa);
  v5 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_21.isa);
  v6 = PKDisplayableErrorCustom();

  return v6;
}

- (void)_toggleDynamicSecurityCodeSetting
{
  if ([(PKVirtualCard *)self->_virtualCard hasDynamicSecurityCode])
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  [(PKSettingTableCell *)self->_dynamicSecurityCodeCell showSpinner:1];
  accountService = self->_accountService;
  identifier = [(PKVirtualCard *)self->_virtualCard identifier];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKAccountCardNumbersViewController__toggleDynamicSecurityCodeSetting__block_invoke;
  v7[3] = &unk_1E80201B8;
  v7[4] = self;
  [(PKAccountService *)accountService performVirtualCardAction:v3 forVirtualCardIdentifier:identifier forAccountIdentifier:accountIdentifier completion:v7];
}

void __71__PKAccountCardNumbersViewController__toggleDynamicSecurityCodeSetting__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKAccountCardNumbersViewController__toggleDynamicSecurityCodeSetting__block_invoke_2;
  block[3] = &unk_1E8010A88;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__PKAccountCardNumbersViewController__toggleDynamicSecurityCodeSetting__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) showSpinner:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    objc_storeStrong((*(a1 + 32) + 1112), v2);
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() _virtualCardSections];
    [v6 recomputeMappedSectionsAndReloadSections:v7];

    v8 = *(a1 + 32);
    v9 = *(v8 + 1128);
    v5 = [*(v8 + 1112) securityCodeIdentifier];
    v10 = [*(*(a1 + 32) + 1112) identifier];
    v11 = [*(*(a1 + 32) + 1144) accountIdentifier];
    [v9 noteSecurityCodeActivityWithAction:1 forSecurityCodeIdentifier:v5 forVirtualCardIdentifier:v10 forAccountIdentifier:v11 completion:&__block_literal_global_197];
  }

  else
  {
    v4 = [PKAccountFlowController displayableErrorForError:"displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:" featureIdentifier:? genericErrorTitle:? genericErrorMessage:?];
    v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);

    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 1192);
  v14 = [*(v12 + 1112) hasDynamicSecurityCode];

  return [v13 setOn:v14];
}

void __71__PKAccountCardNumbersViewController__toggleDynamicSecurityCodeSetting__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Called noteSecurityCodeActivityWithAction after enabling dynamic security code with error: %@", &v5, 0xCu);
  }
}

- (id)_localizedStringForKey:(id)key
{
  keyCopy = key;
  accountFeatureIdentifier = self->_accountFeatureIdentifier;
  if (accountFeatureIdentifier == 1)
  {
    v6 = [keyCopy substringFromIndex:{objc_msgSend(@"ACCOUNT_SERVICE_", "length")}];
    v7 = PKLocalizedCashVPANString(v6);
    goto LABEL_5;
  }

  if (!accountFeatureIdentifier)
  {
    v6 = [keyCopy substringFromIndex:{objc_msgSend(@"ACCOUNT_SERVICE_", "length")}];
    v7 = PKLocalizedVirtualCardString(v6);
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v8 = PKLocalizedFeatureString();
LABEL_7:

  return v8;
}

- (void)_retryCardCredentials
{
  if ([(LAContext *)self->_localAuthenticationContext checkContextValidWithError:0])
  {

    [(PKAccountCardNumbersViewController *)self _retrieveCardCredentials];
  }

  else
  {
    self->_loadingCredentials = 1;
    _virtualCardSections = [objc_opt_class() _virtualCardSections];
    [(PKSectionTableViewController *)self recomputeMappedSectionsAndReloadSections:_virtualCardSections];

    accountFeatureIdentifier = self->_accountFeatureIdentifier;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PKAccountCardNumbersViewController__retryCardCredentials__block_invoke;
    v5[3] = &unk_1E8020208;
    v5[4] = self;
    [PKCardNumbersAuthentication authenticationContextLocationBased:1 featureIdentifier:accountFeatureIdentifier completion:v5];
  }
}

void __59__PKAccountCardNumbersViewController__retryCardCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKAccountCardNumbersViewController__retryCardCredentials__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PKAccountCardNumbersViewController__retryCardCredentials__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    objc_storeStrong((*(a1 + 48) + 1200), v3);
    v7 = *(a1 + 48);

    [v7 _retrieveCardCredentials];
  }

  else
  {
    if (([v2 pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:1] & 1) == 0)
    {
      v5 = +[PKCardNumbersAuthentication genericDisplayableVirtualCardError];
      v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      [*(a1 + 48) presentViewController:v6 animated:1 completion:0];
    }

    *(*(a1 + 48) + 1184) = 0;
  }
}

- (void)_retrieveCardCredentials
{
  externalizedContext = [(LAContext *)self->_localAuthenticationContext externalizedContext];
  if (externalizedContext && (PKUIOnlyDemoModeEnabled() & 1) == 0)
  {
    self->_loadingCredentials = 1;
    _virtualCardSections = [objc_opt_class() _virtualCardSections];
    [(PKSectionTableViewController *)self recomputeMappedSectionsAndReloadSections:_virtualCardSections];

    v5 = objc_alloc_init(MEMORY[0x1E69B9350]);
    virtualCard = self->_virtualCard;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__PKAccountCardNumbersViewController__retrieveCardCredentials__block_invoke;
    v7[3] = &unk_1E8020250;
    v7[4] = self;
    [v5 credentialsForVirtualCard:virtualCard authorization:externalizedContext options:3 merchantHost:0 completion:v7];
  }
}

void __62__PKAccountCardNumbersViewController__retrieveCardCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 1184) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1200);
  *(v7 + 1200) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKAccountCardNumbersViewController__retrieveCardCredentials__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v9 = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKAccountCardNumbersViewController__retrieveCardCredentials__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = *(v3 + 1120);
    *(v3 + 1120) = v4;
  }

  else
  {
    v6 = [*(a1 + 48) domain];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69BC6F0]];

    if (v7 && [*(a1 + 48) code] == 3)
    {
      v8 = +[PKCardNumbersAuthentication rateLimitDisplayableVirtualCardError];
    }

    else
    {
      v8 = +[PKCardNumbersAuthentication genericDisplayableVirtualCardError];
    }

    v5 = v8;
    v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    [*(a1 + 40) presentViewController:v9 animated:1 completion:0];
  }

  v10 = *(a1 + 40);
  v11 = [objc_opt_class() _virtualCardSections];
  [v10 recomputeMappedSectionsAndReloadSections:v11];
}

+ (id)_virtualCardSections
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:0];
  [v2 addIndex:1];
  [v2 addIndex:2];

  return v2;
}

- (void)paymentAuthorizationViewController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  handlerCopy = handler;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Finished virtual card refresh", v9, 2u);
  }

  v7 = objc_alloc(MEMORY[0x1E69B8B80]);
  v8 = [v7 initWithStatus:0 errors:MEMORY[0x1E695E0F0]];
  handlerCopy[2](handlerCopy, v8);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC60];
  v9[0] = self->_currentMenuAction;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:{1, actions}];
  v7 = [v5 menuWithTitle:&stru_1F3BD7330 children:v6];

  return v7;
}

- (void)_sendAnalyticsButtonTapped:(id)tapped
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v4;
  v9[0] = *MEMORY[0x1E69BA6F0];
  v9[1] = tapped;
  v5 = MEMORY[0x1E695DF20];
  tappedCopy = tapped;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:v8 count:2];

  [(PKAccountCardNumbersViewController *)self _sendAnalyticsEvent:v7];
}

- (void)_sendAnalyticsEvent:(id)event
{
  v4 = [event mutableCopy];
  [v4 setObject:*MEMORY[0x1E69BA4A0] forKey:*MEMORY[0x1E69BABE8]];
  if (self->_accountFeatureIdentifier == 1)
  {
    [v4 setObject:*MEMORY[0x1E69BAEE8] forKey:*MEMORY[0x1E69BA850]];
    [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6A8] sendEvent:v4];
  }

  if ([(PKVirtualCard *)self->_virtualCard type]== 2)
  {
    [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v4];
  }
}

@end