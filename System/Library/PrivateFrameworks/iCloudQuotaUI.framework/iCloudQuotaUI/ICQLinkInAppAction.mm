@interface ICQLinkInAppAction
- (ICQLinkInAppAction)initWithCoder:(id)coder;
- (ICQLinkInAppAction)initWithLink:(id)link inOffer:(id)offer;
- (NSString)description;
- (id)_linkURLWithContext:(id)context;
- (void)_launchFlowManagerWithContext:(id)context;
- (void)_performOverrideUploadOnCellularConstraints;
- (void)addAlertFromLink:(id)link offer:(id)offer;
- (void)encodeWithCoder:(id)coder;
- (void)performActionWithContext:(id)context;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICQLinkInAppAction

- (ICQLinkInAppAction)initWithLink:(id)link inOffer:(id)offer
{
  linkCopy = link;
  offerCopy = offer;
  text = [linkCopy text];
  [linkCopy action];
  v10 = _ICQStringForAction();
  v15.receiver = self;
  v15.super_class = ICQLinkInAppAction;
  v11 = -[ICQInAppAction initWithTitle:type:icqActionType:](&v15, sel_initWithTitle_type_icqActionType_, text, v10, [linkCopy action]);

  if (v11)
  {
    objc_storeStrong(&v11->_link, link);
    objc_storeStrong(&v11->_offer, offer);
    serverUIURL = [linkCopy serverUIURL];
    linkURL = v11->_linkURL;
    v11->_linkURL = serverUIURL;

    [(ICQLinkInAppAction *)v11 addAlertFromLink:linkCopy offer:offerCopy];
  }

  return v11;
}

- (void)addAlertFromLink:(id)link offer:(id)offer
{
  v15 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  offerCopy = offer;
  if ([linkCopy action] == 102)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      link = [(ICQLinkInAppAction *)self link];
      v13 = 138412290;
      v14 = link;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "In-app message: link %@ includes an inAppAlert", &v13, 0xCu);
    }

    parameters = [linkCopy parameters];
    v11 = [parameters objectForKeyedSubscript:@"alertKey"];

    v12 = [[ICQInAppAlert alloc] initWithOffer:offerCopy alertKey:v11];
    [(ICQInAppAction *)self setInAppAlert:v12];
  }
}

- (void)performActionWithContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    link = [(ICQLinkInAppAction *)self link];
    [link action];
    v7 = _ICQStringForAction();
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app message: perform action %{public}@", &v19, 0xCu);
  }

  link2 = [(ICQLinkInAppAction *)self link];
  action = [link2 action];

  if (action <= 101)
  {
    switch(action)
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
      link3 = [(ICQLinkInAppAction *)self link];
      [link3 action];
      v17 = _ICQStringForAction();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "In-app message: performing default action %{public}@", &v19, 0xCu);
    }

LABEL_21:

    link4 = [(ICQLinkInAppAction *)self link];
    [link4 performAction];
LABEL_22:

    goto LABEL_7;
  }

  if ((action - 102) > 0x13)
  {
    goto LABEL_15;
  }

  if (((1 << (action - 102)) & 0xCF478) == 0)
  {
    if (action == 102)
    {
      link4 = _ICQGetLogSystem();
      if (os_log_type_enabled(link4, OS_LOG_TYPE_ERROR))
      {
        [ICQLinkInAppAction performActionWithContext:link4];
      }

      goto LABEL_22;
    }

    if (action == 118)
    {
      offer = [(ICQLinkInAppAction *)self offer];
      [offer updateOfferWithAction:118];

      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_6:
  [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:contextCopy];
LABEL_7:
  offer2 = [(ICQLinkInAppAction *)self offer];
  bundleIdentifier = [offer2 bundleIdentifier];
  link5 = [(ICQLinkInAppAction *)self link];
  [link5 action];
  v13 = _ICQStringForAction();
  [ICQAnalytics logInAppBannerInteractionWithAppIdentifier:bundleIdentifier icqActionName:v13];
}

- (void)_launchFlowManagerWithContext:(id)context
{
  contextCopy = context;
  flowManager = [(ICQLinkInAppAction *)self flowManager];

  if (flowManager)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:v6];
    }
  }

  else
  {
    v6 = [(ICQLinkInAppAction *)self _linkURLWithContext:contextCopy];
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "In-app message: present flow manager", v18, 2u);
    }

    v8 = [ICQUpgradeFlowManager alloc];
    offer = [(ICQLinkInAppAction *)self offer];
    v10 = [(ICQUpgradeFlowManager *)v8 initWithOffer:offer];
    [(ICQLinkInAppAction *)self setFlowManager:v10];

    flowManager2 = [(ICQLinkInAppAction *)self flowManager];
    [flowManager2 setDelegate:self];

    flowManager3 = [(ICQLinkInAppAction *)self flowManager];
    [flowManager3 setFlowOptions:0];

    link = [(ICQLinkInAppAction *)self link];

    if (link)
    {
      link2 = [(ICQLinkInAppAction *)self link];
      [link2 setServerUIURL:v6];

      flowManager4 = [(ICQLinkInAppAction *)self flowManager];
      link3 = [(ICQLinkInAppAction *)self link];
      [flowManager4 beginRemoteUpgradeFlowWithICQLink:link3];
    }

    else
    {
      v17 = _ICQGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(ICQLinkInAppAction *)self _launchFlowManagerWithContext:v17];
      }

      flowManager4 = [(ICQLinkInAppAction *)self flowManager];
      [flowManager4 _beginRemoteFlowWithURL:v6];
    }
  }
}

- (id)_linkURLWithContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  linkURL = [(ICQLinkInAppAction *)self linkURL];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = contextCopy;
    v31 = 2114;
    v32 = linkURL;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "In-app message: adding context %{public}@ to link %{public}@", buf, 0x16u);
  }

  v23 = linkURL;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:linkURL resolvingAgainstBaseURL:0];
  queryItems = [v7 queryItems];
  v9 = [queryItems mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = contextCopy;
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

- (void)upgradeFlowManagerDidCancel:(id)cancel
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

  flowManager = [(ICQLinkInAppAction *)self flowManager];
  [flowManager setDelegate:0];

  [(ICQLinkInAppAction *)self setFlowManager:0];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
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

  flowManager = [(ICQLinkInAppAction *)self flowManager];
  [flowManager setDelegate:0];

  [(ICQLinkInAppAction *)self setFlowManager:0];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ICQLinkInAppAction;
  coderCopy = coder;
  [(ICQInAppAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ICQLinkInAppAction *)self link:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"link"];

  offer = [(ICQLinkInAppAction *)self offer];
  [coderCopy encodeObject:offer forKey:@"offer"];
}

- (ICQLinkInAppAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offer"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link"];
  v7 = [(ICQLinkInAppAction *)self initWithLink:v6 inOffer:v5];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppAlert"];

  [v8 updateActionsWithOffer:v5];
  [(ICQInAppAction *)v7 setInAppAlert:v8];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(ICQInAppAction *)self title];
  type = [(ICQInAppAction *)self type];
  link = [(ICQLinkInAppAction *)self link];
  v7 = [v3 stringWithFormat:@"actionTitle: %@, actionType: %@, link: %@", title, type, link];

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