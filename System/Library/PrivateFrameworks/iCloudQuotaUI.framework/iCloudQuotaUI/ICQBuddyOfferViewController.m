@interface ICQBuddyOfferViewController
- (ICQBuddyOfferViewController)initWithPageSpecification:(id)a3;
- (ICQPageDelegate)pageDelegate;
- (void)bottomButtonTapped:(id)a3;
- (void)hideSpinner;
- (void)purchase2ButtonTapped:(id)a3;
- (void)purchaseButtonTapped:(id)a3;
- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5;
@end

@implementation ICQBuddyOfferViewController

- (ICQBuddyOfferViewController)initWithPageSpecification:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_pageSpecification, a3);
  v6 = v5;
  v7 = MEMORY[0x277D7F390];
  v8 = [v6 message];
  v9 = [v6 altMessage];
  v10 = [v7 stringWithPlaceholderFormat:v8 alternateString:v9];

  v11 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"iCloudLargeTransparent"];
  v12 = [v6 title];
  v45.receiver = self;
  v45.super_class = ICQBuddyOfferViewController;
  v13 = [(ICQBuddyOfferViewController *)&v45 initWithTitle:v12 detailText:v10 icon:v11 contentLayout:2];

  if (v13)
  {
    v14 = [v6 purchaseLink];
    v15 = [v14 text];
    v16 = [v15 length];

    v17 = [v6 purchase2Link];
    v18 = [v17 text];
    v19 = [v18 length];

    v20 = [v6 bottomLink];
    v21 = [v20 text];
    v22 = [v21 length];

    if (v16)
    {
      v23 = [MEMORY[0x277D37618] boldButton];
      v24 = [v6 purchaseLink];
      v25 = [v24 text];
      [v23 setTitle:v25 forState:0];

      [v23 addTarget:v13 action:sel_purchaseButtonTapped_ forControlEvents:64];
      v26 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [v26 addButton:v23];

      purchaseButton = v13->_purchaseButton;
      v13->_purchaseButton = v23;
    }

    if (v19)
    {
      v28 = [MEMORY[0x277D37618] boldButton];
      v29 = [v6 purchase2Link];
      v30 = [v29 text];
      [v28 setTitle:v30 forState:0];

      [v28 addTarget:v13 action:sel_purchase2ButtonTapped_ forControlEvents:64];
      v31 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [v31 addButton:v28];

      purchase2Button = v13->_purchase2Button;
      v13->_purchase2Button = v28;
    }

    if (v22)
    {
      v33 = [MEMORY[0x277D37650] linkButton];
      v34 = [v6 bottomLink];
      v35 = [v34 text];
      [v33 setTitle:v35 forState:0];

      [v33 addTarget:v13 action:sel_bottomButtonTapped_ forControlEvents:64];
      v36 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [v36 addButton:v33];
    }

    v37 = [v6 fineprintFormat];
    v38 = [v37 length];

    if (v38)
    {
      v39 = [v6 fineprintLinks];
      v40 = [v39 firstObject];
      v41 = [v40 serverUIURL];

      v42 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      v43 = [v6 fineprintFormat];
      if (v41)
      {
        [v42 setCaptionText:v43 learnMoreURL:v41];
      }

      else
      {
        [v42 setCaptionText:v43];
      }
    }
  }

  return v13;
}

- (void)purchaseButtonTapped:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController main button tapped", v11, 2u);
  }

  [(OBBoldTrayButton *)self->_purchaseButton showsBusyIndicator];
  v5 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v6 = [v5 purchaseLink];
  v7 = [v6 action];
  v8 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v9 = [v8 purchaseLink];
  v10 = [v9 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:v7 parameters:v10];
}

- (void)purchase2ButtonTapped:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController second button tapped", v11, 2u);
  }

  [(OBBoldTrayButton *)self->_purchase2Button showsBusyIndicator];
  v5 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v6 = [v5 purchase2Link];
  v7 = [v6 action];
  v8 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v9 = [v8 purchase2Link];
  v10 = [v9 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:v7 parameters:v10];
}

- (void)bottomButtonTapped:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController bottom button tapped", v11, 2u);
  }

  v5 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v6 = [v5 bottomLink];
  v7 = [v6 action];
  v8 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  v9 = [v8 bottomLink];
  v10 = [v9 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:v7 parameters:v10];
}

- (void)sender:(id)a3 action:(int64_t)a4 parameters:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController sender:action:parameters:", &v18, 2u);
  }

  v9 = [(ICQBuddyOfferViewController *)self pageDelegate];
  v10 = objc_opt_respondsToSelector();

  v11 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [(ICQBuddyOfferViewController *)self pageDelegate];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = _ICQStringForAction();
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "pageDelegate %@ being sent action:%@ parameters:%@", &v18, 0x20u);
    }

    v11 = [(ICQBuddyOfferViewController *)self pageDelegate];
    [v11 sender:self action:a4 parameters:v7];
  }

  else if (v12)
  {
    v17 = [(ICQBuddyOfferViewController *)self pageDelegate];
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "ICQViewController - page delegate %@ does not respond to sender:action:parameters:", &v18, 0xCu);
  }
}

- (void)hideSpinner
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController remove spinners", v6, 2u);
  }

  purchaseButton = self->_purchaseButton;
  if (purchaseButton)
  {
    [(OBBoldTrayButton *)purchaseButton hidesBusyIndicator];
  }

  purchase2Button = self->_purchase2Button;
  if (purchase2Button)
  {
    [(OBBoldTrayButton *)purchase2Button hidesBusyIndicator];
  }
}

- (ICQPageDelegate)pageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);

  return WeakRetained;
}

@end