@interface ICQBannerView
+ (BOOL)shouldShowForDismissibleOffer:(id)offer;
+ (BOOL)shouldShowForOffer:(id)offer;
- (BOOL)_launchFlowManagerWithLink:(id)link;
- (BOOL)performActionWith:(id)with;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ICQBannerView)initWithFrame:(CGRect)frame;
- (ICQBannerViewDelegate)delegate;
- (ICQLegacyBannerView)legacyBanner;
- (NSDirectionalEdgeInsets)textMargins;
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)bubbleBanner;
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)dismissibleBubbleBanner;
- (id)_initWithFrame:(CGRect)frame offer:(id)offer dismissibility:(BOOL)dismissibility;
- (void)_handlePushReceivedDarwinNotification;
- (void)_registerForDarwinNotifications;
- (void)handleBannerDismiss:(id)dismiss;
- (void)setDetailMessageColor:(id)color;
- (void)setDetailMessageFont:(id)font;
- (void)setFlowOptions:(id)options;
- (void)setFont:(id)font;
- (void)setLinkMessageColor:(id)color;
- (void)setLinkMessageFont:(id)font;
- (void)setLinkTextColor:(id)color;
- (void)setLinkTextFont:(id)font;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)setTextLineSpacing:(double)spacing;
- (void)setTextMargins:(NSDirectionalEdgeInsets)margins;
- (void)setTitleColor:(id)color;
- (void)setTitleFont:(id)font;
- (void)updateBannerView;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICQBannerView

+ (BOOL)shouldShowForOffer:(id)offer
{
  offerCopy = offer;
  level = [offerCopy level];
  bannerSpecification = [offerCopy bannerSpecification];

  if (level)
  {
    v6 = bannerSpecification == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

+ (BOOL)shouldShowForDismissibleOffer:(id)offer
{
  v34 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  level = [offerCopy level];
  recommendationSpecification = [offerCopy recommendationSpecification];

  v6 = [MEMORY[0x277CBEAA8] now];
  recommendationSpecification2 = [offerCopy recommendationSpecification];
  reason = [recommendationSpecification2 reason];

  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  bundleIdentifier = [offerCopy bundleIdentifier];
  v11 = [mEMORY[0x277D7F390] didDismissRecommendationForBundleId:bundleIdentifier];

  recommendationSpecification3 = [offerCopy recommendationSpecification];

  supressUntil = [recommendationSpecification3 supressUntil];
  [supressUntil doubleValue];
  v15 = v14;

  v16 = [MEMORY[0x277D7F3E0] shouldDisplay:v6 forReason:reason dismissedInSession:v11 supressUntil:v15];
  v17 = _ICQBannerLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67110658;
    v21[1] = v16;
    v22 = 1024;
    v23 = level != 0;
    v24 = 1024;
    v25 = recommendationSpecification != 0;
    v26 = 2112;
    v27 = reason;
    v28 = 1024;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    v32 = 2048;
    v33 = v15;
    _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "shouldShowBanner: %d considering needsBanner: %d hasBanner: %d specReason: %@ didDismissInSession: %d currentDate: %@ supressInterval: %f", v21, 0x38u);
  }

  if (level)
  {
    v18 = recommendationSpecification == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;

  return v19 & v16;
}

- (ICQBannerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  currentOffer = [mEMORY[0x277D7F390] currentOffer];

  height = [(ICQBannerView *)self _initWithFrame:currentOffer offer:0 dismissibility:x, y, width, height];
  return height;
}

- (id)_initWithFrame:(CGRect)frame offer:(id)offer dismissibility:(BOOL)dismissibility
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v81[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v78.receiver = self;
  v78.super_class = ICQBannerView;
  height = [(ICQBannerView *)&v78 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_offer, offer);
    v14->_isDismissible = dismissibility;
    [(ICQBannerView *)v14 _registerForDarwinNotifications];
    isDismissible = v14->_isDismissible;
    if (isDismissible)
    {
      recommendationSpecification = [offerCopy recommendationSpecification];

      if (recommendationSpecification)
      {
        v14->_isLegacy = 0;
        dismissibleBubbleBanner = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        [dismissibleBubbleBanner setTranslatesAutoresizingMaskIntoConstraints:0];

        dismissibleBubbleBanner2 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        [(ICQBannerView *)v14 addSubview:dismissibleBubbleBanner2];

        dismissibleBubbleBanner3 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        topAnchor = [dismissibleBubbleBanner3 topAnchor];
        topAnchor2 = [(ICQBannerView *)v14 topAnchor];
        v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v22 setActive:1];

        dismissibleBubbleBanner4 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        bottomAnchor = [dismissibleBubbleBanner4 bottomAnchor];
        bottomAnchor2 = [(ICQBannerView *)v14 bottomAnchor];
        v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v26 setActive:1];

        dismissibleBubbleBanner5 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        leadingAnchor = [dismissibleBubbleBanner5 leadingAnchor];
        leadingAnchor2 = [(ICQBannerView *)v14 leadingAnchor];
        v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [v30 setActive:1];

        dismissibleBubbleBanner6 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        trailingAnchor = [dismissibleBubbleBanner6 trailingAnchor];
        trailingAnchor2 = [(ICQBannerView *)v14 trailingAnchor];
        v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [v34 setActive:1];

        dismissibleBubbleBanner7 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v81[0] = dismissibleBubbleBanner7;
        v36 = v81;
LABEL_9:
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        [(ICQBannerView *)v14 setAccessibilityElements:v58];

        [(ICQBannerView *)v14 setIsAccessibilityElement:0];
        [(ICQBannerView *)v14 sizeToFit];
        goto LABEL_10;
      }

      isDismissible = v14->_isDismissible;
    }

    if (!isDismissible && ([offerCopy bannerSpecification], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "bannerSource"), v38 = objc_claimAutoreleasedReturnValue(), v39 = *MEMORY[0x277D7F288], v38, v37, v38 == v39))
    {
      v14->_isLegacy = 0;
      bubbleBanner = [(ICQBannerView *)v14 bubbleBanner];
      [bubbleBanner setTranslatesAutoresizingMaskIntoConstraints:0];

      bubbleBanner2 = [(ICQBannerView *)v14 bubbleBanner];
      [(ICQBannerView *)v14 addSubview:bubbleBanner2];

      bubbleBanner3 = [(ICQBannerView *)v14 bubbleBanner];
      topAnchor3 = [bubbleBanner3 topAnchor];
      topAnchor4 = [(ICQBannerView *)v14 topAnchor];
      v65 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v65 setActive:1];

      bubbleBanner4 = [(ICQBannerView *)v14 bubbleBanner];
      bottomAnchor3 = [bubbleBanner4 bottomAnchor];
      bottomAnchor4 = [(ICQBannerView *)v14 bottomAnchor];
      v69 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v69 setActive:1];

      bubbleBanner5 = [(ICQBannerView *)v14 bubbleBanner];
      leadingAnchor3 = [bubbleBanner5 leadingAnchor];
      leadingAnchor4 = [(ICQBannerView *)v14 leadingAnchor];
      v73 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v73 setActive:1];

      bubbleBanner6 = [(ICQBannerView *)v14 bubbleBanner];
      trailingAnchor3 = [bubbleBanner6 trailingAnchor];
      trailingAnchor4 = [(ICQBannerView *)v14 trailingAnchor];
      v77 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [v77 setActive:1];

      dismissibleBubbleBanner7 = [(ICQBannerView *)v14 bubbleBanner];
      v80 = dismissibleBubbleBanner7;
      v36 = &v80;
    }

    else
    {
      v14->_isLegacy = 1;
      legacyBanner = [(ICQBannerView *)v14 legacyBanner];
      [legacyBanner setTranslatesAutoresizingMaskIntoConstraints:0];

      legacyBanner2 = [(ICQBannerView *)v14 legacyBanner];
      [(ICQBannerView *)v14 addSubview:legacyBanner2];

      legacyBanner3 = [(ICQBannerView *)v14 legacyBanner];
      topAnchor5 = [legacyBanner3 topAnchor];
      topAnchor6 = [(ICQBannerView *)v14 topAnchor];
      v45 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [v45 setActive:1];

      legacyBanner4 = [(ICQBannerView *)v14 legacyBanner];
      bottomAnchor5 = [legacyBanner4 bottomAnchor];
      bottomAnchor6 = [(ICQBannerView *)v14 bottomAnchor];
      v49 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      [v49 setActive:1];

      legacyBanner5 = [(ICQBannerView *)v14 legacyBanner];
      leadingAnchor5 = [legacyBanner5 leadingAnchor];
      leadingAnchor6 = [(ICQBannerView *)v14 leadingAnchor];
      v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v53 setActive:1];

      legacyBanner6 = [(ICQBannerView *)v14 legacyBanner];
      trailingAnchor5 = [legacyBanner6 trailingAnchor];
      trailingAnchor6 = [(ICQBannerView *)v14 trailingAnchor];
      v57 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [v57 setActive:1];

      dismissibleBubbleBanner7 = [(ICQBannerView *)v14 legacyBanner];
      v79 = dismissibleBubbleBanner7;
      v36 = &v79;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner sizeThatFits:{width, height}];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    LODWORD(v6) = 1148846080;
    LODWORD(v7) = 1112014848;
    [(ICQBannerView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v6, v7];
    v13 = width;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (ICQLegacyBannerView)legacyBanner
{
  legacyBanner = self->_legacyBanner;
  if (!legacyBanner)
  {
    v4 = [ICQLegacyBannerView alloc];
    offer = [(ICQBannerView *)self offer];
    v6 = [(ICQLegacyBannerView *)v4 initWithOffer:offer];
    v7 = self->_legacyBanner;
    self->_legacyBanner = v6;

    [(ICQLegacyBannerView *)self->_legacyBanner setDelegate:self];
    legacyBanner = self->_legacyBanner;
  }

  return legacyBanner;
}

- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)bubbleBanner
{
  bubbleBanner = self->_bubbleBanner;
  if (!bubbleBanner)
  {
    v4 = [_TtC13iCloudQuotaUI19ICQBubbleBannerView alloc];
    offer = [(ICQBannerView *)self offer];
    offer2 = [(ICQBannerView *)self offer];
    bannerSpecification = [offer2 bannerSpecification];
    v8 = [(ICQBubbleBannerView *)v4 initWithOffer:offer bannerSpecification:bannerSpecification];
    v9 = self->_bubbleBanner;
    self->_bubbleBanner = v8;

    [(ICQBubbleBannerView *)self->_bubbleBanner setDelegate:self];
    [(ICQBubbleBannerView *)self->_bubbleBanner setTranslatesAutoresizingMaskIntoConstraints:0];
    bubbleBanner = self->_bubbleBanner;
  }

  return bubbleBanner;
}

- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)dismissibleBubbleBanner
{
  dismissibleBubbleBanner = self->_dismissibleBubbleBanner;
  if (!dismissibleBubbleBanner)
  {
    v4 = [_TtC13iCloudQuotaUI19ICQBubbleBannerView alloc];
    offer = [(ICQBannerView *)self offer];
    offer2 = [(ICQBannerView *)self offer];
    recommendationSpecification = [offer2 recommendationSpecification];
    v8 = [(ICQBubbleBannerView *)v4 initWithOffer:offer bannerSpecification:recommendationSpecification];
    v9 = self->_dismissibleBubbleBanner;
    self->_dismissibleBubbleBanner = v8;

    [(ICQBubbleBannerView *)self->_dismissibleBubbleBanner setDelegate:self];
    [(ICQBubbleBannerView *)self->_dismissibleBubbleBanner setTranslatesAutoresizingMaskIntoConstraints:0];
    dismissibleBubbleBanner = self->_dismissibleBubbleBanner;
  }

  return dismissibleBubbleBanner;
}

- (BOOL)performActionWith:(id)with
{
  v15 = *MEMORY[0x277D85DE8];
  withCopy = with;
  action = [withCopy action];
  switch(action)
  {
    case 'd':
    case 'h':
    case 'm':
    case '{':
    case '|':
      goto LABEL_10;
    case 'e':
    case 'g':
    case 'o':
    case 'q':
    case 'r':
    case 'w':
    case 'z':
    case '~':
      goto LABEL_5;
    case 'f':
    case 'i':
    case 'j':
    case 'k':
    case 'l':
    case 'n':
    case 'p':
    case 's':
    case 't':
    case 'u':
    case 'v':
    case 'x':
    case 'y':
    case '\x7F':
      goto LABEL_2;
    case '}':
      [(ICQBannerView *)self handleBannerDismiss:withCopy];
      goto LABEL_8;
    default:
      if (action > 6)
      {
        goto LABEL_8;
      }

      if (((1 << action) & 0x37) != 0)
      {
LABEL_5:
        v7 = _ICQGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          [withCopy action];
          v8 = _ICQStringForAction();
          v13 = 138543362;
          v14 = v8;
          _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "ICQ Banner: unimplemented action %{public}@", &v13, 0xCu);
        }

LABEL_8:
        v9 = 0;
      }

      else
      {
        if (action == 3)
        {
LABEL_2:
          performAction = [(ICQBannerView *)self _launchFlowManagerWithLink:withCopy];
        }

        else
        {
LABEL_10:
          v10 = _ICQGetLogSystem();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            [withCopy action];
            v11 = _ICQStringForAction();
            v13 = 138543362;
            v14 = v11;
            _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", &v13, 0xCu);
          }

          performAction = [withCopy performAction];
        }

        v9 = performAction;
      }

      return v9;
  }
}

- (BOOL)_launchFlowManagerWithLink:(id)link
{
  v26 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  delegate = [(ICQBannerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [linkCopy action];
      v14 = _ICQStringForAction();
      v24 = 138543362;
      v25 = v14;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQ Banner: not performing action %{public}@ since ICQBannerViewDelegate did not provide presentingViewController", &v24, 0xCu);
    }

    goto LABEL_12;
  }

  delegate2 = [(ICQBannerView *)self delegate];
  v8 = [delegate2 presentingViewControllerForBannerView:self];

  if (!v8)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [linkCopy action];
      v12 = _ICQStringForAction();
      v24 = 138543362;
      v25 = v12;
      v13 = "ICQ Banner: not performing action %{public}@ since ICQBannerViewDelegate did not provide presentingViewController";
      goto LABEL_10;
    }

LABEL_11:

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  localFlowManager = self->_localFlowManager;
  v10 = _ICQGetLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (localFlowManager)
  {
    if (v11)
    {
      [linkCopy action];
      v12 = _ICQStringForAction();
      v24 = 138543362;
      v25 = v12;
      v13 = "ICQ Banner: existing _localFlowManager not completed or cancelled yet, skipping action %{public}@";
LABEL_10:
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, v13, &v24, 0xCu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v11)
  {
    [linkCopy action];
    v17 = _ICQStringForAction();
    v24 = 138543362;
    v25 = v17;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", &v24, 0xCu);
  }

  offer = [(ICQBannerView *)self offer];
  [offer updateOfferWithAction:{objc_msgSend(linkCopy, "action")}];

  v19 = [ICQUpgradeFlowManager alloc];
  offer2 = [(ICQBannerView *)self offer];
  v21 = [(ICQUpgradeFlowManager *)v19 initWithOffer:offer2];
  v22 = self->_localFlowManager;
  self->_localFlowManager = v21;

  [(ICQUpgradeFlowManager *)self->_localFlowManager setIcqLink:linkCopy];
  [(ICQUpgradeFlowManager *)self->_localFlowManager setDelegate:self];
  flowOptions = [(ICQBannerView *)self flowOptions];
  [(ICQUpgradeFlowManager *)self->_localFlowManager setFlowOptions:flowOptions];

  [(ICQUpgradeFlowManager *)self->_localFlowManager beginFlowWithPresentingViewController:v8];
  v15 = 1;
LABEL_13:

  return v15;
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v18 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  localFlowManager = self->_localFlowManager;
  p_super = _ICQGetLogSystem();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (localFlowManager == cancelCopy)
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_impl(&dword_275623000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel", &v12, 0xCu);
    }

    [(ICQUpgradeFlowManager *)self->_localFlowManager setDelegate:0];
    p_super = &self->_localFlowManager->super;
    self->_localFlowManager = 0;
  }

  else if (v7)
  {
    v8 = objc_opt_class();
    v9 = self->_localFlowManager;
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = cancelCopy;
    v16 = 2112;
    v17 = v9;
    v10 = v8;
    _os_log_impl(&dword_275623000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel for manager %@ instead of %@", &v12, 0x20u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v18 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  localFlowManager = self->_localFlowManager;
  p_super = _ICQGetLogSystem();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (localFlowManager == completeCopy)
  {
    if (v7)
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_impl(&dword_275623000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did complete", &v12, 0xCu);
    }

    p_super = &self->_localFlowManager->super;
    self->_localFlowManager = 0;
  }

  else if (v7)
  {
    v8 = objc_opt_class();
    v9 = self->_localFlowManager;
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = completeCopy;
    v16 = 2112;
    v17 = v9;
    v10 = v8;
    _os_log_impl(&dword_275623000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did complete for manager %@ instead of %@", &v12, 0x20u);
  }
}

- (void)_handlePushReceivedDarwinNotification
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "push received updating count", buf, 2u);
  }

  v4 = MEMORY[0x277D7F3D0];
  offer = [(ICQBannerView *)self offer];
  bundleIdentifier = [offer bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICQBannerView__handlePushReceivedDarwinNotification__block_invoke;
  v7[3] = &unk_27A65AFC8;
  v7[4] = self;
  [v4 getInfoWithBundleId:bundleIdentifier completion:v7];
}

void __54__ICQBannerView__handlePushReceivedDarwinNotification__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v4 = *(a1 + 32);
      v5 = a2;
      v6 = [v4 offer];
      [v6 setDeviceInfo:v5];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ICQBannerView__handlePushReceivedDarwinNotification__block_invoke_2;
      block[3] = &unk_27A65A820;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_registerForDarwinNotifications
{
  v9 = *MEMORY[0x277D85DE8];
  offer = [(ICQBannerView *)self offer];
  showsPhotoVideoCounts = [offer showsPhotoVideoCounts];

  if (showsPhotoVideoCounts)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"com.apple.mobileslideshow.cpl.currenttransferprogresschange";
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "registering for darwin notification %@", &v7, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handlePushReceivedDarwinNotification, @"com.apple.mobileslideshow.cpl.currenttransferprogresschange", 0, 1024);
  }
}

- (void)updateBannerView
{
  if ([(ICQBannerView *)self isLegacy])
  {
    [(ICQBannerView *)self legacyBanner];
  }

  else
  {
    [(ICQBannerView *)self bubbleBanner];
  }
  v3 = ;
  [v3 updateBannerView];
}

- (void)handleBannerDismiss:(id)dismiss
{
  v30 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [dismissCopy action];
    v6 = _ICQStringForAction();
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", buf, 0xCu);
  }

  v7 = MEMORY[0x277D7F3E0];
  v8 = [MEMORY[0x277CBEAA8] now];
  offer = [(ICQBannerView *)self offer];
  recommendationSpecification = [offer recommendationSpecification];
  reason = [recommendationSpecification reason];
  [v7 bubbleBannerTrackLastDismissed:v8 forReason:reason];

  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  offer2 = [(ICQBannerView *)self offer];
  bundleIdentifier = [offer2 bundleIdentifier];
  [mEMORY[0x277D7F390] dismissRecommendationForBundleId:bundleIdentifier];

  parameters = [dismissCopy parameters];
  v16 = [parameters objectForKeyedSubscript:*MEMORY[0x277D7F268]];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v16];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = @"com.apple.mobileslideshow-iCloudInAppRecommendations";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v18 setObject:v19 forKeyedSubscript:@"recommendations"];

    [v18 setObject:@"dismissed" forKeyedSubscript:@"action"];
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ICQBannerView_handleBannerDismiss___block_invoke;
    block[3] = &unk_27A65A708;
    v25 = v17;
    v26 = v18;
    v21 = v18;
    v22 = v17;
    dispatch_async(v20, block);
  }

  else
  {
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "ICQLink: performAction: ICQActionDismiss not handled", buf, 2u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __37__ICQBannerView_handleBannerDismiss___block_invoke_63;
  v23[3] = &unk_27A65A820;
  v23[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v23);
}

void __37__ICQBannerView_handleBannerDismiss___block_invoke_63(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D7F2A0] object:*(a1 + 32)];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setFont:fontCopy];
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTitleFont:fontCopy];
  }
}

- (void)setDetailMessageFont:(id)font
{
  fontCopy = font;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setDetailMessageFont:fontCopy];
  }
}

- (void)setLinkMessageFont:(id)font
{
  fontCopy = font;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setLinkMessageFont:fontCopy];
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTitleColor:colorCopy];
  }
}

- (void)setDetailMessageColor:(id)color
{
  colorCopy = color;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setDetailMessageColor:colorCopy];
  }
}

- (void)setLinkMessageColor:(id)color
{
  colorCopy = color;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setLinkMessageColor:colorCopy];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTextColor:colorCopy];
  }
}

- (void)setTextMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTextMargins:{top, leading, bottom, trailing}];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTextAlignment:alignment];
  }
}

- (void)setTextLineSpacing:(double)spacing
{
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setTextLineSpacing:spacing];
  }
}

- (void)setLinkTextFont:(id)font
{
  fontCopy = font;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setLinkTextFont:fontCopy];
  }
}

- (void)setLinkTextColor:(id)color
{
  colorCopy = color;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setLinkTextColor:colorCopy];
  }
}

- (void)setFlowOptions:(id)options
{
  optionsCopy = options;
  if ([(ICQBannerView *)self isLegacy])
  {
    legacyBanner = [(ICQBannerView *)self legacyBanner];
    [legacyBanner setFlowOptions:optionsCopy];
  }
}

- (ICQBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)textMargins
{
  top = self->_textMargins.top;
  leading = self->_textMargins.leading;
  bottom = self->_textMargins.bottom;
  trailing = self->_textMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end