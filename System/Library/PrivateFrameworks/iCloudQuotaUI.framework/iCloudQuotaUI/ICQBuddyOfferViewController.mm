@interface ICQBuddyOfferViewController
- (ICQBuddyOfferViewController)initWithPageSpecification:(id)specification;
- (ICQPageDelegate)pageDelegate;
- (void)bottomButtonTapped:(id)tapped;
- (void)hideSpinner;
- (void)purchase2ButtonTapped:(id)tapped;
- (void)purchaseButtonTapped:(id)tapped;
- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters;
@end

@implementation ICQBuddyOfferViewController

- (ICQBuddyOfferViewController)initWithPageSpecification:(id)specification
{
  specificationCopy = specification;
  objc_storeStrong(&self->_pageSpecification, specification);
  v6 = specificationCopy;
  v7 = MEMORY[0x277D7F390];
  message = [v6 message];
  altMessage = [v6 altMessage];
  v10 = [v7 stringWithPlaceholderFormat:message alternateString:altMessage];

  v11 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"iCloudLargeTransparent"];
  title = [v6 title];
  v45.receiver = self;
  v45.super_class = ICQBuddyOfferViewController;
  v13 = [(ICQBuddyOfferViewController *)&v45 initWithTitle:title detailText:v10 icon:v11 contentLayout:2];

  if (v13)
  {
    purchaseLink = [v6 purchaseLink];
    text = [purchaseLink text];
    v16 = [text length];

    purchase2Link = [v6 purchase2Link];
    text2 = [purchase2Link text];
    v19 = [text2 length];

    bottomLink = [v6 bottomLink];
    text3 = [bottomLink text];
    v22 = [text3 length];

    if (v16)
    {
      boldButton = [MEMORY[0x277D37618] boldButton];
      purchaseLink2 = [v6 purchaseLink];
      text4 = [purchaseLink2 text];
      [boldButton setTitle:text4 forState:0];

      [boldButton addTarget:v13 action:sel_purchaseButtonTapped_ forControlEvents:64];
      buttonTray = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [buttonTray addButton:boldButton];

      purchaseButton = v13->_purchaseButton;
      v13->_purchaseButton = boldButton;
    }

    if (v19)
    {
      boldButton2 = [MEMORY[0x277D37618] boldButton];
      purchase2Link2 = [v6 purchase2Link];
      text5 = [purchase2Link2 text];
      [boldButton2 setTitle:text5 forState:0];

      [boldButton2 addTarget:v13 action:sel_purchase2ButtonTapped_ forControlEvents:64];
      buttonTray2 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [buttonTray2 addButton:boldButton2];

      purchase2Button = v13->_purchase2Button;
      v13->_purchase2Button = boldButton2;
    }

    if (v22)
    {
      linkButton = [MEMORY[0x277D37650] linkButton];
      bottomLink2 = [v6 bottomLink];
      text6 = [bottomLink2 text];
      [linkButton setTitle:text6 forState:0];

      [linkButton addTarget:v13 action:sel_bottomButtonTapped_ forControlEvents:64];
      buttonTray3 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      [buttonTray3 addButton:linkButton];
    }

    fineprintFormat = [v6 fineprintFormat];
    v38 = [fineprintFormat length];

    if (v38)
    {
      fineprintLinks = [v6 fineprintLinks];
      firstObject = [fineprintLinks firstObject];
      serverUIURL = [firstObject serverUIURL];

      buttonTray4 = [(ICQBuddyOfferViewController *)v13 buttonTray];
      fineprintFormat2 = [v6 fineprintFormat];
      if (serverUIURL)
      {
        [buttonTray4 setCaptionText:fineprintFormat2 learnMoreURL:serverUIURL];
      }

      else
      {
        [buttonTray4 setCaptionText:fineprintFormat2];
      }
    }
  }

  return v13;
}

- (void)purchaseButtonTapped:(id)tapped
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController main button tapped", v11, 2u);
  }

  [(OBBoldTrayButton *)self->_purchaseButton showsBusyIndicator];
  upgradeOfferPageSpecification = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  purchaseLink = [upgradeOfferPageSpecification purchaseLink];
  action = [purchaseLink action];
  upgradeOfferPageSpecification2 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  purchaseLink2 = [upgradeOfferPageSpecification2 purchaseLink];
  parameters = [purchaseLink2 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:action parameters:parameters];
}

- (void)purchase2ButtonTapped:(id)tapped
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController second button tapped", v11, 2u);
  }

  [(OBBoldTrayButton *)self->_purchase2Button showsBusyIndicator];
  upgradeOfferPageSpecification = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  purchase2Link = [upgradeOfferPageSpecification purchase2Link];
  action = [purchase2Link action];
  upgradeOfferPageSpecification2 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  purchase2Link2 = [upgradeOfferPageSpecification2 purchase2Link];
  parameters = [purchase2Link2 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:action parameters:parameters];
}

- (void)bottomButtonTapped:(id)tapped
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController bottom button tapped", v11, 2u);
  }

  upgradeOfferPageSpecification = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  bottomLink = [upgradeOfferPageSpecification bottomLink];
  action = [bottomLink action];
  upgradeOfferPageSpecification2 = [(ICQBuddyOfferViewController *)self upgradeOfferPageSpecification];
  bottomLink2 = [upgradeOfferPageSpecification2 bottomLink];
  parameters = [bottomLink2 parameters];
  [(ICQBuddyOfferViewController *)self sender:self action:action parameters:parameters];
}

- (void)sender:(id)sender action:(int64_t)action parameters:(id)parameters
{
  v24 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQBuddyOfferViewController sender:action:parameters:", &v18, 2u);
  }

  pageDelegate = [(ICQBuddyOfferViewController *)self pageDelegate];
  v10 = objc_opt_respondsToSelector();

  pageDelegate3 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(pageDelegate3, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      pageDelegate2 = [(ICQBuddyOfferViewController *)self pageDelegate];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = _ICQStringForAction();
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = parametersCopy;
      _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "pageDelegate %@ being sent action:%@ parameters:%@", &v18, 0x20u);
    }

    pageDelegate3 = [(ICQBuddyOfferViewController *)self pageDelegate];
    [pageDelegate3 sender:self action:action parameters:parametersCopy];
  }

  else if (v12)
  {
    pageDelegate4 = [(ICQBuddyOfferViewController *)self pageDelegate];
    v18 = 138412290;
    v19 = pageDelegate4;
    _os_log_impl(&dword_275623000, pageDelegate3, OS_LOG_TYPE_DEFAULT, "ICQViewController - page delegate %@ does not respond to sender:action:parameters:", &v18, 0xCu);
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