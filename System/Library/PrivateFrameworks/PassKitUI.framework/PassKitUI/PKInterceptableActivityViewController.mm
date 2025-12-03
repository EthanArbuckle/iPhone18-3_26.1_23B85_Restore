@interface PKInterceptableActivityViewController
- (PKInterceptableActivityViewController)initWithItems:(id)items peopleSuggestionBundleIds:(id)ids delegate:(id)delegate;
- (PKInterceptableActivityViewControllerDelegate)delegate;
- (id)selectedRecipientWithOutContactIdentifier:(id *)identifier;
- (void)_performActivity:(id)activity;
- (void)activityViewController:(id)controller willStartAirdropTransferToRecipient:(id)recipient contactIdentifier:(id)identifier;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer;
- (void)activityViewControllerWillStartAirdropTransfer:(id)transfer;
- (void)handleInterceptedShareActivity;
- (void)loadView;
- (void)setExcludedActivityTypes:(id)types;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PKInterceptableActivityViewController

- (PKInterceptableActivityViewController)initWithItems:(id)items peopleSuggestionBundleIds:(id)ids delegate:(id)delegate
{
  v23[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  idsCopy = ids;
  delegateCopy = delegate;
  v11 = objc_alloc_init(PKMessageExtensionActivityItem);
  v23[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v22.receiver = self;
  v22.super_class = PKInterceptableActivityViewController;
  v13 = [(PKInterceptableActivityViewController *)&v22 initWithActivityItems:itemsCopy applicationActivities:v12 peopleSuggestionBundleIds:idsCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_initWeak(&location, v14);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __90__PKInterceptableActivityViewController_initWithItems_peopleSuggestionBundleIds_delegate___block_invoke;
    v19 = &unk_1E8027078;
    objc_copyWeak(&v20, &location);
    [(PKInterceptableActivityViewController *)v14 setCompletionWithItemsHandler:&v16];
    [(PKInterceptableActivityViewController *)v14 setExcludedActivityTypes:0, v16, v17, v18, v19];
    [(PKInterceptableActivityViewController *)v14 setAirDropDelegate:v14];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __90__PKInterceptableActivityViewController_initWithItems_peopleSuggestionBundleIds_delegate___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (WeakRetained[174] & 1) == 0)
  {
    v8 = *MEMORY[0x1E69CDA78];
    v9 = v5;
    v10 = v8;
    v11 = v10;
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = 1;
      if (v9 && v10)
      {
        v12 = [v9 isEqualToString:v10] ^ 1;
      }
    }

    v13 = v12 & a3;
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"No";
      if (v13)
      {
        v15 = @"Yes";
      }

      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet did finish with completed: %@", &v17, 0xCu);
    }

    v16 = objc_loadWeakRetained(v7 + 177);
    [v16 interceptableActivityViewController:v7 didFinishWithShare:v13];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PKInterceptableActivityViewController;
  [(PKInterceptableActivityViewController *)&v7 viewDidDisappear:disappear];
  if (self->_isSendingOverAirdrop)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet did finish from 'viewWillDisappear'", v6, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained interceptableActivityViewController:self didFinishWithShare:0];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKInterceptableActivityViewController;
  [(PKInterceptableActivityViewController *)&v3 loadView];
  [(PKInterceptableActivityViewController *)self setSharingStyle:1];
}

- (void)setExcludedActivityTypes:(id)types
{
  typesCopy = types;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v5 initWithObjects:{*MEMORY[0x1E69CDA90], *MEMORY[0x1E69CDA80], *MEMORY[0x1E69CDA70], 0}];
  v7 = v6;
  if (typesCopy)
  {
    [v6 addObjectsFromArray:typesCopy];
  }

  v8.receiver = self;
  v8.super_class = PKInterceptableActivityViewController;
  [(PKInterceptableActivityViewController *)&v8 setExcludedActivityTypes:v7];
}

- (id)selectedRecipientWithOutContactIdentifier:(id *)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  airdropRecipientName = self->_airdropRecipientName;
  if (*&self->_airdropRecipientName == 0)
  {
    v10 = 0;
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = airdropRecipientName;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet: returning cached airdrop recipient %@", &v11, 0xCu);
    }

    v10 = self->_airdropRecipientName;
    *identifier = self->_airdropRecipientContactIdentifier;
    v7 = self->_airdropRecipientName;
    self->_airdropRecipientName = 0;

    airdropRecipientContactIdentifier = self->_airdropRecipientContactIdentifier;
    self->_airdropRecipientContactIdentifier = 0;
  }

  return v10;
}

- (void)handleInterceptedShareActivity
{
  airdropRecipientName = self->_airdropRecipientName;
  self->_airdropRecipientName = 0;

  defferedActivity = self->_defferedActivity;
  p_super = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (defferedActivity)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, p_super, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet handling intercepted share activity.", buf, 2u);
    }

    v7 = self->_defferedActivity;
    v8.receiver = self;
    v8.super_class = PKInterceptableActivityViewController;
    [(PKInterceptableActivityViewController *)&v8 _performActivity:v7];
    p_super = &self->_defferedActivity->super;
    self->_defferedActivity = 0;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, p_super, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet attempted to handle intercepted share activity, but no activity found.", buf, 2u);
  }
}

- (void)_performActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  self->_isSendingOverAirdrop = 0;
  activityType = [activityCopy activityType];
  excludedActivityTypes = [(PKInterceptableActivityViewController *)self excludedActivityTypes];
  v8 = [excludedActivityTypes containsObject:activityType];

  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v22 = activityType;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet blocking share over %@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69DC650];
    v12 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_8.isa);
    v13 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_9.isa);
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v17 = [v15 actionWithTitle:v16 style:0 handler:0];
    [v14 addAction:v17];

    [(PKInterceptableActivityViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v22 = activityType;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet intercepting share activity of type %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [WeakRetained interceptableActivityViewController:self shouldInterceptActivitySelectionOfType:activityType];

    if (!v19)
    {
      v20.receiver = self;
      v20.super_class = PKInterceptableActivityViewController;
      [(PKInterceptableActivityViewController *)&v20 _performActivity:activityCopy];
      goto LABEL_11;
    }

    objc_storeStrong(&self->_defferedActivity, activity);
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 interceptableActivityViewController:self didInterceptActivitySelectionOfType:activityType];
  }

LABEL_11:
}

- (void)activityViewControllerWillStartAirdropTransfer:(id)transfer
{
  self->_isSendingOverAirdrop = 1;
  airdropRecipientName = self->_airdropRecipientName;
  self->_airdropRecipientName = 0;
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer
{
  self->_isSendingOverAirdrop = 0;
  airdropRecipientName = self->_airdropRecipientName;
  self->_airdropRecipientName = 0;

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "ShareInitiation: Share Sheet did finish airdrop transfer", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained interceptableActivityViewController:self didFinishWithShare:1];
}

- (void)activityViewController:(id)controller willStartAirdropTransferToRecipient:(id)recipient contactIdentifier:(id)identifier
{
  recipientCopy = recipient;
  identifierCopy = identifier;
  airdropRecipientName = self->_airdropRecipientName;
  self->_airdropRecipientName = recipientCopy;
  v11 = recipientCopy;

  airdropRecipientContactIdentifier = self->_airdropRecipientContactIdentifier;
  self->_airdropRecipientContactIdentifier = identifierCopy;
}

- (PKInterceptableActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end