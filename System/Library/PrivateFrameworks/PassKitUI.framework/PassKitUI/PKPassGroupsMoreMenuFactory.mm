@interface PKPassGroupsMoreMenuFactory
- (PKPassGroupsMoreMenuDelegate)delegate;
- (PKPassGroupsMoreMenuFactory)initWithAutoFillCardManager:(id)manager;
- (id)_autoFillMenuElement;
- (id)_defaultMenuItems;
- (id)_expiredPassesMenuElement;
- (id)_howToUseWalletMenuElement;
- (id)_showNotificationsAction;
- (id)_showOrdersAction;
- (id)_showSubscriptionsAndPaymentsAction;
- (id)moreMenu;
@end

@implementation PKPassGroupsMoreMenuFactory

- (id)moreMenu
{
  _defaultMenuItems = [(PKPassGroupsMoreMenuFactory *)self _defaultMenuItems];
  v3 = [MEMORY[0x1E69DCC60] menuWithChildren:_defaultMenuItems];

  return v3;
}

- (id)_defaultMenuItems
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _showOrdersAction = [(PKPassGroupsMoreMenuFactory *)self _showOrdersAction];
  [v4 safelyAddObject:_showOrdersAction];

  if ([PKMerchantTokenFeatureAvailability isMerchantTokenFeatureAvailableWithPaymentPassesProvisioned:[(PKPassGroupsMoreMenuFactory *)self arePaymentPassesProvisioned]])
  {
    _showSubscriptionsAndPaymentsAction = [(PKPassGroupsMoreMenuFactory *)self _showSubscriptionsAndPaymentsAction];
    [v4 addObject:_showSubscriptionsAndPaymentsAction];
  }

  if ([v4 count])
  {
    v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v4];
    [v3 addObject:v7];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _autoFillMenuElement = [(PKPassGroupsMoreMenuFactory *)self _autoFillMenuElement];
  [v8 addObject:_autoFillMenuElement];

  if (_UISolariumFeatureFlagEnabled())
  {
    _expiredPassesMenuElement = [(PKPassGroupsMoreMenuFactory *)self _expiredPassesMenuElement];
    [v8 addObject:_expiredPassesMenuElement];
  }

  if ([v8 count])
  {
    v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v8];
    [v3 addObject:v11];
  }

  if (PKNotificationSettingsEnabled())
  {
    v12 = MEMORY[0x1E69DCC60];
    _showNotificationsAction = [(PKPassGroupsMoreMenuFactory *)self _showNotificationsAction];
    v18[0] = _showNotificationsAction;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [v12 menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v14];

    [v3 addObject:v15];
  }

  _howToUseWalletMenuElement = [(PKPassGroupsMoreMenuFactory *)self _howToUseWalletMenuElement];
  [v3 addObject:_howToUseWalletMenuElement];

  return v3;
}

- (id)_showOrdersAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_0.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shippingbox"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__PKPassGroupsMoreMenuFactory__showOrdersAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B99B0], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_showNotificationsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedPaymentString(&cfstr_MoreButtonTool.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell"];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __55__PKPassGroupsMoreMenuFactory__showNotificationsAction__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v7];

  [v5 setAccessibilityIdentifier:{*MEMORY[0x1E69B9998], v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (PKPassGroupsMoreMenuFactory)initWithAutoFillCardManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PKPassGroupsMoreMenuFactory;
  v6 = [(PKPassGroupsMoreMenuFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_autoFillCardManager, manager);
  }

  return v7;
}

void __48__PKPassGroupsMoreMenuFactory__showOrdersAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 presentOrderManagement];

    WeakRetained = v3;
  }
}

- (id)_showSubscriptionsAndPaymentsAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E696AEC0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  currencyCode = [currentLocale currencyCode];
  v5 = PKSFSymbolPrefixForCurrencyCode();
  v6 = [v2 stringWithFormat:@"%@.arrow.trianglehead.counterclockwise.rotate.90", v5];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
  v8 = MEMORY[0x1E69DC628];
  v9 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_1.isa);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPassGroupsMoreMenuFactory__showSubscriptionsAndPaymentsAction__block_invoke;
  v12[3] = &unk_1E8010A60;
  objc_copyWeak(&v13, &location);
  v10 = [v8 actionWithTitle:v9 image:v7 identifier:0 handler:v12];

  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9950]];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);

  return v10;
}

void __66__PKPassGroupsMoreMenuFactory__showSubscriptionsAndPaymentsAction__block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x1E69B8540];
    v3 = *MEMORY[0x1E69BB718];
    v5 = *MEMORY[0x1E69BA6F0];
    v6 = *MEMORY[0x1E69BA440];
    v16[0] = *MEMORY[0x1E69BA680];
    v4 = v16[0];
    v16[1] = v6;
    v7 = *MEMORY[0x1E69BB038];
    v18[0] = v5;
    v18[1] = v7;
    v17 = *MEMORY[0x1E69BABE8];
    v8 = v17;
    v18[2] = *MEMORY[0x1E69BAB00];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v16 count:3];
    [v2 subject:v3 sendEvent:v9];

    v10 = [WeakRetained delegate];
    [v10 presentMerchantTokens];
    v11 = MEMORY[0x1E69B8540];
    v14[0] = v4;
    v14[1] = v8;
    v12 = *MEMORY[0x1E69BAAE0];
    v15[0] = v5;
    v15[1] = v12;
    v14[2] = v6;
    v15[2] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [v11 subject:v3 sendEvent:v13];
  }
}

void __55__PKPassGroupsMoreMenuFactory__showNotificationsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 presentNotificationSettings];

    WeakRetained = v3;
  }
}

- (id)_expiredPassesMenuElement
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKPassGroupsMoreMenuFactory__expiredPassesMenuElement__block_invoke;
  v5[3] = &unk_1E801EA30;
  objc_copyWeak(&v6, &location);
  v3 = [v2 elementWithUncachedProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __56__PKPassGroupsMoreMenuFactory__expiredPassesMenuElement__block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[4])
  {
    v6 = MEMORY[0x1E69DC628];
    v7 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_2.isa);
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.badge.exclamationmark"];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __56__PKPassGroupsMoreMenuFactory__expiredPassesMenuElement__block_invoke_2;
    v16 = &unk_1E8010A60;
    objc_copyWeak(&v17, (a1 + 32));
    v9 = [v6 actionWithTitle:v7 image:v8 identifier:0 handler:&v13];

    v10 = v5[4];
    if (v10 == 1)
    {
      v11 = PKLocalizedString(&cfstr_ExpiredPassesC_0.isa);
      [v9 setSubtitle:v11];
    }

    else
    {
      if (v10 < 2)
      {
LABEL_9:
        [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B97A0]];
        v18[0] = v9;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        v3[2](v3, v12);

        objc_destroyWeak(&v17);
        goto LABEL_10;
      }

      v11 = PKLocalizedString(&cfstr_ExpiredPassesC_1.isa, &cfstr_Lu.isa, v5[4], v13, v14, v15, v16);
      [v9 setSubtitle:v11];
    }

    goto LABEL_9;
  }

  v3[2](v3, MEMORY[0x1E695E0F0]);
LABEL_10:
}

void __56__PKPassGroupsMoreMenuFactory__expiredPassesMenuElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 presentExpiredPasses];

    WeakRetained = v3;
  }
}

- (id)_howToUseWalletMenuElement
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PKPassGroupsMoreMenuFactory__howToUseWalletMenuElement__block_invoke;
  v4[3] = &unk_1E801EA58;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC928] elementWithUncachedProvider:v4];

  return v2;
}

void __57__PKPassGroupsMoreMenuFactory__howToUseWalletMenuElement__block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (PKEvergreenEducationEnabled() && ([MEMORY[0x1E69B8908] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasContent"), v4, (v5 & 1) != 0))
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"text.below.rectangle.badge.sparkles"];
    v7 = MEMORY[0x1E69DC628];
    v8 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_3.isa);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PKPassGroupsMoreMenuFactory__howToUseWalletMenuElement__block_invoke_2;
    v14[3] = &unk_1E8010A60;
    objc_copyWeak(&v15, &location);
    v9 = [v7 actionWithTitle:v8 image:v6 identifier:0 handler:v14];

    [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9858]];
    v10 = MEMORY[0x1E69DCC60];
    v18[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [v10 menuWithTitle:&stru_1F3BD7330 image:0 identifier:0 options:1 children:v11];

    v17 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v3[2](v3, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __57__PKPassGroupsMoreMenuFactory__howToUseWalletMenuElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 presentHowToUseWallet];

    WeakRetained = v3;
  }
}

- (id)_autoFillMenuElement
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PKPassGroupsMoreMenuFactory__autoFillMenuElement__block_invoke;
  v4[3] = &unk_1E801EA58;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC928] elementWithUncachedProvider:v4];

  return v2;
}

void __51__PKPassGroupsMoreMenuFactory__autoFillMenuElement__block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = MEMORY[0x1E69DC628];
  v5 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_4.isa);
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.and.pencil.and.ellipsis"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PKPassGroupsMoreMenuFactory__autoFillMenuElement__block_invoke_2;
  v11[3] = &unk_1E8010A60;
  objc_copyWeak(&v12, &location);
  v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v11];

  v8 = [*(*(a1 + 32) + 8) activeAutoFillCardCount];
  if (v8)
  {
    if (v8 == 1)
    {
      PKLocalizedPaymentString(&cfstr_FpanCardsCount.isa);
    }

    else
    {
      PKLocalizedString(&cfstr_FpanCardsCount_0.isa, &cfstr_Lu.isa, v8);
    }
    v9 = ;
    [v7 setSubtitle:v9];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B94A0]];
  v14[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v3[2](v3, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __51__PKPassGroupsMoreMenuFactory__autoFillMenuElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 presentAutoFillCards];

    WeakRetained = v3;
  }
}

- (PKPassGroupsMoreMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end