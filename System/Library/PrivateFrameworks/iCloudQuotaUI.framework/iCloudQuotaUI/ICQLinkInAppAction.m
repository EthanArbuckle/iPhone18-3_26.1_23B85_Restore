@interface ICQLinkInAppAction
- (ICQLinkInAppAction)initWithCoder:(id)a3;
- (ICQLinkInAppAction)initWithLink:(id)a3 inOffer:(id)a4;
- (NSString)description;
- (id)_linkURLWithContext:(id)a3;
- (void)_launchFlowManagerWithContext:(id)a3;
- (void)_performOverrideUploadOnCellularConstraints;
- (void)addAlertFromLink:(id)a3 offer:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)performActionWithContext:(id)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQLinkInAppAction

- (ICQLinkInAppAction)initWithLink:(id)a3 inOffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 text];
  [v7 action];
  v10 = _ICQStringForAction();
  v15.receiver = self;
  v15.super_class = ICQLinkInAppAction;
  v11 = -[ICQInAppAction initWithTitle:type:icqActionType:](&v15, sel_initWithTitle_type_icqActionType_, v9, v10, [v7 action]);

  if (v11)
  {
    objc_storeStrong(&v11->_link, a3);
    objc_storeStrong(&v11->_offer, a4);
    v12 = [v7 serverUIURL];
    linkURL = v11->_linkURL;
    v11->_linkURL = v12;

    [(ICQLinkInAppAction *)v11 addAlertFromLink:v7 offer:v8];
  }

  return v11;
}

- (void)addAlertFromLink:(id)a3 offer:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 action] == 102)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ICQLinkInAppAction *)self link];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "In-app message: link %@ includes an inAppAlert", &v13, 0xCu);
    }

    v10 = [v6 parameters];
    v11 = [v10 objectForKeyedSubscript:@"alertKey"];

    v12 = [[ICQInAppAlert alloc] initWithOffer:v7 alertKey:v11];
    [(ICQInAppAction *)self setInAppAlert:v12];
  }
}

- (void)performActionWithContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICQLinkInAppAction *)self link];
    [v6 action];
    v7 = _ICQStringForAction();
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app message: perform action %{public}@", &v19, 0xCu);
  }

  v8 = [(ICQLinkInAppAction *)self link];
  v9 = [v8 action];

  if (v9 <= 101)
  {
    switch(v9)
    {
      case 1:
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "In-app message: performing dismiss action", &v19, 2u);
        }

        goto LABEL_21;
      case 3:
        goto LABEL_6;
      case 7:
        [(ICQLinkInAppAction *)self _performOverrideUploadOnCellularConstraints];
        goto LABEL_7;
    }

LABEL_15:
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(ICQLinkInAppAction *)self link];
      [v16 action];
      v17 = _ICQStringForAction();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "In-app message: performing default action %{public}@", &v19, 0xCu);
    }

LABEL_21:

    v18 = [(ICQLinkInAppAction *)self link];
    [v18 performAction];
LABEL_22:

    goto LABEL_7;
  }

  if ((v9 - 102) > 0x13)
  {
    goto LABEL_15;
  }

  if (((1 << (v9 - 102)) & 0xCF478) == 0)
  {
    if (v9 == 102)
    {
      v18 = _ICQGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ICQLinkInAppAction performActionWithContext:v18];
      }

      goto LABEL_22;
    }

    if (v9 == 118)
    {
      v14 = [(ICQLinkInAppAction *)self offer];
      [v14 updateOfferWithAction:118];

      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_6:
  [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:v4];
LABEL_7:
  v10 = [(ICQLinkInAppAction *)self offer];
  v11 = [v10 bundleIdentifier];
  v12 = [(ICQLinkInAppAction *)self link];
  [v12 action];
  v13 = _ICQStringForAction();
  [ICQAnalytics logInAppBannerInteractionWithAppIdentifier:v11 icqActionName:v13];
}

- (void)_launchFlowManagerWithContext:(id)a3
{
  v4 = a3;
  v5 = [(ICQLinkInAppAction *)self flowManager];

  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:v6];
    }
  }

  else
  {
    v6 = [(ICQLinkInAppAction *)self _linkURLWithContext:v4];
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "In-app message: present flow manager", v18, 2u);
    }

    v8 = [ICQUpgradeFlowManager alloc];
    v9 = [(ICQLinkInAppAction *)self offer];
    v10 = [(ICQUpgradeFlowManager *)v8 initWithOffer:v9];
    [(ICQLinkInAppAction *)self setFlowManager:v10];

    v11 = [(ICQLinkInAppAction *)self flowManager];
    [v11 setDelegate:self];

    v12 = [(ICQLinkInAppAction *)self flowManager];
    [v12 setFlowOptions:0];

    v13 = [(ICQLinkInAppAction *)self link];

    if (v13)
    {
      v14 = [(ICQLinkInAppAction *)self link];
      [v14 setServerUIURL:v6];

      v15 = [(ICQLinkInAppAction *)self flowManager];
      v16 = [(ICQLinkInAppAction *)self link];
      [v15 beginRemoteUpgradeFlowWithICQLink:v16];
    }

    else
    {
      v17 = _ICQGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:v17];
      }

      v15 = [(ICQLinkInAppAction *)self flowManager];
      [v15 _beginRemoteFlowWithURL:v6];
    }
  }
}

- (id)_linkURLWithContext:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQLinkInAppAction *)self linkURL];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = v4;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "In-app message: adding context %{public}@ to link %{public}@", buf, 0x16u);
  }

  v23 = v5;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  v8 = [v7 queryItems];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = MEMORY[0x277CCAD18];
        v17 = [v10 objectForKeyedSubscript:v15];
        v18 = [v16 queryItemWithName:v15 value:v17];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  [v7 setQueryItems:v9];
  v19 = _ICQGetLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v7 URL];
    *buf = 138543362;
    v30 = v20;
    _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "In-app message: returning link url %{public}@", buf, 0xCu);
  }

  v21 = [v7 URL];

  return v21;
}

- (void)_performOverrideUploadOnCellularConstraints
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = BROverrideUploadOnCellularConstraints();
  v3 = 0;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[ICQLinkInAppAction _performOverrideUploadOnCellularConstraints]";
    v7 = 1024;
    v8 = v2;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s, success: %d, error: %@", buf, 0x1Cu);
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel", &v7, 0xCu);
  }

  v6 = [(ICQLinkInAppAction *)self flowManager];
  [v6 setDelegate:0];

  [(ICQLinkInAppAction *)self setFlowManager:0];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did complete", &v7, 0xCu);
  }

  v6 = [(ICQLinkInAppAction *)self flowManager];
  [v6 setDelegate:0];

  [(ICQLinkInAppAction *)self setFlowManager:0];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICQLinkInAppAction;
  v4 = a3;
  [(ICQInAppAction *)&v7 encodeWithCoder:v4];
  v5 = [(ICQLinkInAppAction *)self link:v7.receiver];
  [v4 encodeObject:v5 forKey:@"link"];

  v6 = [(ICQLinkInAppAction *)self offer];
  [v4 encodeObject:v6 forKey:@"offer"];
}

- (ICQLinkInAppAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offer"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link"];
  v7 = [(ICQLinkInAppAction *)self initWithLink:v6 inOffer:v5];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inAppAlert"];

  [v8 updateActionsWithOffer:v5];
  [(ICQInAppAction *)v7 setInAppAlert:v8];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICQInAppAction *)self title];
  v5 = [(ICQInAppAction *)self type];
  v6 = [(ICQLinkInAppAction *)self link];
  v7 = [v3 stringWithFormat:@"actionTitle: %@, actionType: %@, link: %@", v4, v5, v6];

  return v7;
}

- (void)_launchFlowManagerWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Already presenting flow manager. Will not present a new one until the previous instance is removed", &v4, 0xCu);
}

- (void)_launchFlowManagerWithContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Unable to find an ICQLink in %@", &v2, 0xCu);
}

@end