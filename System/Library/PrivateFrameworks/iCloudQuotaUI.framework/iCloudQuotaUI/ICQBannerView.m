@interface ICQBannerView
+ (BOOL)shouldShowForDismissibleOffer:(id)a3;
+ (BOOL)shouldShowForOffer:(id)a3;
- (BOOL)_launchFlowManagerWithLink:(id)a3;
- (BOOL)performActionWith:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ICQBannerView)initWithFrame:(CGRect)a3;
- (ICQBannerViewDelegate)delegate;
- (ICQLegacyBannerView)legacyBanner;
- (NSDirectionalEdgeInsets)textMargins;
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)bubbleBanner;
- (_TtC13iCloudQuotaUI19ICQBubbleBannerView)dismissibleBubbleBanner;
- (id)_initWithFrame:(CGRect)a3 offer:(id)a4 dismissibility:(BOOL)a5;
- (void)_handlePushReceivedDarwinNotification;
- (void)_registerForDarwinNotifications;
- (void)handleBannerDismiss:(id)a3;
- (void)setDetailMessageColor:(id)a3;
- (void)setDetailMessageFont:(id)a3;
- (void)setFlowOptions:(id)a3;
- (void)setFont:(id)a3;
- (void)setLinkMessageColor:(id)a3;
- (void)setLinkMessageFont:(id)a3;
- (void)setLinkTextColor:(id)a3;
- (void)setLinkTextFont:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTextLineSpacing:(double)a3;
- (void)setTextMargins:(NSDirectionalEdgeInsets)a3;
- (void)setTitleColor:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)updateBannerView;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQBannerView

+ (BOOL)shouldShowForOffer:(id)a3
{
  v3 = a3;
  v4 = [v3 level];
  v5 = [v3 bannerSpecification];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

+ (BOOL)shouldShowForDismissibleOffer:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 level];
  v5 = [v3 recommendationSpecification];

  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v3 recommendationSpecification];
  v8 = [v7 reason];

  v9 = [MEMORY[0x277D7F390] sharedOfferManager];
  v10 = [v3 bundleIdentifier];
  v11 = [v9 didDismissRecommendationForBundleId:v10];

  v12 = [v3 recommendationSpecification];

  v13 = [v12 supressUntil];
  [v13 doubleValue];
  v15 = v14;

  v16 = [MEMORY[0x277D7F3E0] shouldDisplay:v6 forReason:v8 dismissedInSession:v11 supressUntil:v15];
  v17 = _ICQBannerLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67110658;
    v21[1] = v16;
    v22 = 1024;
    v23 = v4 != 0;
    v24 = 1024;
    v25 = v5 != 0;
    v26 = 2112;
    v27 = v8;
    v28 = 1024;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    v32 = 2048;
    v33 = v15;
    _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "shouldShowBanner: %d considering needsBanner: %d hasBanner: %d specReason: %@ didDismissInSession: %d currentDate: %@ supressInterval: %f", v21, 0x38u);
  }

  if (v4)
  {
    v18 = v5 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;

  return v19 & v16;
}

- (ICQBannerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277D7F390] sharedOfferManager];
  v9 = [v8 currentOffer];

  v10 = [(ICQBannerView *)self _initWithFrame:v9 offer:0 dismissibility:x, y, width, height];
  return v10;
}

- (id)_initWithFrame:(CGRect)a3 offer:(id)a4 dismissibility:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v81[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v78.receiver = self;
  v78.super_class = ICQBannerView;
  v13 = [(ICQBannerView *)&v78 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_offer, a4);
    v14->_isDismissible = a5;
    [(ICQBannerView *)v14 _registerForDarwinNotifications];
    isDismissible = v14->_isDismissible;
    if (isDismissible)
    {
      v16 = [v12 recommendationSpecification];

      if (v16)
      {
        v14->_isLegacy = 0;
        v17 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

        v18 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        [(ICQBannerView *)v14 addSubview:v18];

        v19 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v20 = [v19 topAnchor];
        v21 = [(ICQBannerView *)v14 topAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        [v22 setActive:1];

        v23 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v24 = [v23 bottomAnchor];
        v25 = [(ICQBannerView *)v14 bottomAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];
        [v26 setActive:1];

        v27 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v28 = [v27 leadingAnchor];
        v29 = [(ICQBannerView *)v14 leadingAnchor];
        v30 = [v28 constraintEqualToAnchor:v29];
        [v30 setActive:1];

        v31 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v32 = [v31 trailingAnchor];
        v33 = [(ICQBannerView *)v14 trailingAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        [v34 setActive:1];

        v35 = [(ICQBannerView *)v14 dismissibleBubbleBanner];
        v81[0] = v35;
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

    if (!isDismissible && ([v12 bannerSpecification], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "bannerSource"), v38 = objc_claimAutoreleasedReturnValue(), v39 = *MEMORY[0x277D7F288], v38, v37, v38 == v39))
    {
      v14->_isLegacy = 0;
      v60 = [(ICQBannerView *)v14 bubbleBanner];
      [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

      v61 = [(ICQBannerView *)v14 bubbleBanner];
      [(ICQBannerView *)v14 addSubview:v61];

      v62 = [(ICQBannerView *)v14 bubbleBanner];
      v63 = [v62 topAnchor];
      v64 = [(ICQBannerView *)v14 topAnchor];
      v65 = [v63 constraintEqualToAnchor:v64];
      [v65 setActive:1];

      v66 = [(ICQBannerView *)v14 bubbleBanner];
      v67 = [v66 bottomAnchor];
      v68 = [(ICQBannerView *)v14 bottomAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];
      [v69 setActive:1];

      v70 = [(ICQBannerView *)v14 bubbleBanner];
      v71 = [v70 leadingAnchor];
      v72 = [(ICQBannerView *)v14 leadingAnchor];
      v73 = [v71 constraintEqualToAnchor:v72];
      [v73 setActive:1];

      v74 = [(ICQBannerView *)v14 bubbleBanner];
      v75 = [v74 trailingAnchor];
      v76 = [(ICQBannerView *)v14 trailingAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];
      [v77 setActive:1];

      v35 = [(ICQBannerView *)v14 bubbleBanner];
      v80 = v35;
      v36 = &v80;
    }

    else
    {
      v14->_isLegacy = 1;
      v40 = [(ICQBannerView *)v14 legacyBanner];
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

      v41 = [(ICQBannerView *)v14 legacyBanner];
      [(ICQBannerView *)v14 addSubview:v41];

      v42 = [(ICQBannerView *)v14 legacyBanner];
      v43 = [v42 topAnchor];
      v44 = [(ICQBannerView *)v14 topAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];
      [v45 setActive:1];

      v46 = [(ICQBannerView *)v14 legacyBanner];
      v47 = [v46 bottomAnchor];
      v48 = [(ICQBannerView *)v14 bottomAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];
      [v49 setActive:1];

      v50 = [(ICQBannerView *)v14 legacyBanner];
      v51 = [v50 leadingAnchor];
      v52 = [(ICQBannerView *)v14 leadingAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];
      [v53 setActive:1];

      v54 = [(ICQBannerView *)v14 legacyBanner];
      v55 = [v54 trailingAnchor];
      v56 = [(ICQBannerView *)v14 trailingAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      [v57 setActive:1];

      v35 = [(ICQBannerView *)v14 legacyBanner];
      v79 = v35;
      v36 = &v79;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(ICQBannerView *)self isLegacy])
  {
    v8 = [(ICQBannerView *)self legacyBanner];
    [v8 sizeThatFits:{width, height}];
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
    v5 = [(ICQBannerView *)self offer];
    v6 = [(ICQLegacyBannerView *)v4 initWithOffer:v5];
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
    v5 = [(ICQBannerView *)self offer];
    v6 = [(ICQBannerView *)self offer];
    v7 = [v6 bannerSpecification];
    v8 = [(ICQBubbleBannerView *)v4 initWithOffer:v5 bannerSpecification:v7];
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
    v5 = [(ICQBannerView *)self offer];
    v6 = [(ICQBannerView *)self offer];
    v7 = [v6 recommendationSpecification];
    v8 = [(ICQBubbleBannerView *)v4 initWithOffer:v5 bannerSpecification:v7];
    v9 = self->_dismissibleBubbleBanner;
    self->_dismissibleBubbleBanner = v8;

    [(ICQBubbleBannerView *)self->_dismissibleBubbleBanner setDelegate:self];
    [(ICQBubbleBannerView *)self->_dismissibleBubbleBanner setTranslatesAutoresizingMaskIntoConstraints:0];
    dismissibleBubbleBanner = self->_dismissibleBubbleBanner;
  }

  return dismissibleBubbleBanner;
}

- (BOOL)performActionWith:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 action];
  switch(v5)
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
      [(ICQBannerView *)self handleBannerDismiss:v4];
      goto LABEL_8;
    default:
      if (v5 > 6)
      {
        goto LABEL_8;
      }

      if (((1 << v5) & 0x37) != 0)
      {
LABEL_5:
        v7 = _ICQGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          [v4 action];
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
        if (v5 == 3)
        {
LABEL_2:
          v6 = [(ICQBannerView *)self _launchFlowManagerWithLink:v4];
        }

        else
        {
LABEL_10:
          v10 = _ICQGetLogSystem();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            [v4 action];
            v11 = _ICQStringForAction();
            v13 = 138543362;
            v14 = v11;
            _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", &v13, 0xCu);
          }

          v6 = [v4 performAction];
        }

        v9 = v6;
      }

      return v9;
  }
}

- (BOOL)_launchFlowManagerWithLink:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQBannerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v4 action];
      v14 = _ICQStringForAction();
      v24 = 138543362;
      v25 = v14;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "ICQ Banner: not performing action %{public}@ since ICQBannerViewDelegate did not provide presentingViewController", &v24, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = [(ICQBannerView *)self delegate];
  v8 = [v7 presentingViewControllerForBannerView:self];

  if (!v8)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v4 action];
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
      [v4 action];
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
    [v4 action];
    v17 = _ICQStringForAction();
    v24 = 138543362;
    v25 = v17;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", &v24, 0xCu);
  }

  v18 = [(ICQBannerView *)self offer];
  [v18 updateOfferWithAction:{objc_msgSend(v4, "action")}];

  v19 = [ICQUpgradeFlowManager alloc];
  v20 = [(ICQBannerView *)self offer];
  v21 = [(ICQUpgradeFlowManager *)v19 initWithOffer:v20];
  v22 = self->_localFlowManager;
  self->_localFlowManager = v21;

  [(ICQUpgradeFlowManager *)self->_localFlowManager setIcqLink:v4];
  [(ICQUpgradeFlowManager *)self->_localFlowManager setDelegate:self];
  v23 = [(ICQBannerView *)self flowOptions];
  [(ICQUpgradeFlowManager *)self->_localFlowManager setFlowOptions:v23];

  [(ICQUpgradeFlowManager *)self->_localFlowManager beginFlowWithPresentingViewController:v8];
  v15 = 1;
LABEL_13:

  return v15;
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  localFlowManager = self->_localFlowManager;
  p_super = _ICQGetLogSystem();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (localFlowManager == v4)
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
    v15 = v4;
    v16 = 2112;
    v17 = v9;
    v10 = v8;
    _os_log_impl(&dword_275623000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ UpgradeFlowManager did cancel for manager %@ instead of %@", &v12, 0x20u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  localFlowManager = self->_localFlowManager;
  p_super = _ICQGetLogSystem();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (localFlowManager == v4)
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
    v15 = v4;
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
  v5 = [(ICQBannerView *)self offer];
  v6 = [v5 bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICQBannerView__handlePushReceivedDarwinNotification__block_invoke;
  v7[3] = &unk_27A65AFC8;
  v7[4] = self;
  [v4 getInfoWithBundleId:v6 completion:v7];
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
  v3 = [(ICQBannerView *)self offer];
  v4 = [v3 showsPhotoVideoCounts];

  if (v4)
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

- (void)handleBannerDismiss:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 action];
    v6 = _ICQStringForAction();
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "ICQ Banner: perform action %{public}@", buf, 0xCu);
  }

  v7 = MEMORY[0x277D7F3E0];
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [(ICQBannerView *)self offer];
  v10 = [v9 recommendationSpecification];
  v11 = [v10 reason];
  [v7 bubbleBannerTrackLastDismissed:v8 forReason:v11];

  v12 = [MEMORY[0x277D7F390] sharedOfferManager];
  v13 = [(ICQBannerView *)self offer];
  v14 = [v13 bundleIdentifier];
  [v12 dismissRecommendationForBundleId:v14];

  v15 = [v4 parameters];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D7F268]];

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

- (void)setFont:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setFont:v5];
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setTitleFont:v5];
  }
}

- (void)setDetailMessageFont:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setDetailMessageFont:v5];
  }
}

- (void)setLinkMessageFont:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setLinkMessageFont:v5];
  }
}

- (void)setTitleColor:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setTitleColor:v5];
  }
}

- (void)setDetailMessageColor:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setDetailMessageColor:v5];
  }
}

- (void)setLinkMessageColor:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setLinkMessageColor:v5];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setTextColor:v5];
  }
}

- (void)setTextMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  if ([(ICQBannerView *)self isLegacy])
  {
    v8 = [(ICQBannerView *)self legacyBanner];
    [v8 setTextMargins:{top, leading, bottom, trailing}];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if ([(ICQBannerView *)self isLegacy])
  {
    v5 = [(ICQBannerView *)self legacyBanner];
    [v5 setTextAlignment:a3];
  }
}

- (void)setTextLineSpacing:(double)a3
{
  if ([(ICQBannerView *)self isLegacy])
  {
    v5 = [(ICQBannerView *)self legacyBanner];
    [v5 setTextLineSpacing:a3];
  }
}

- (void)setLinkTextFont:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setLinkTextFont:v5];
  }
}

- (void)setLinkTextColor:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setLinkTextColor:v5];
  }
}

- (void)setFlowOptions:(id)a3
{
  v5 = a3;
  if ([(ICQBannerView *)self isLegacy])
  {
    v4 = [(ICQBannerView *)self legacyBanner];
    [v4 setFlowOptions:v5];
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