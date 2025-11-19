@interface SUSSoftwareUpdateTableView
+ (id)stringForState:(int)a3;
- (SUSSoftwareUpdateTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)upToDateManagedText;
- (id)upToDateText;
- (id)upToDateWithAlternate;
- (void)layoutSubviews;
- (void)preferredContentSizeChanged:(id)a3;
- (void)setState:(int)a3;
@end

@implementation SUSSoftwareUpdateTableView

- (SUSSoftwareUpdateTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v42 = a3;
  v40 = a2;
  v39 = a4;
  v41 = 0;
  v38.receiver = self;
  v38.super_class = SUSSoftwareUpdateTableView;
  v41 = [(SUSSoftwareUpdateTableView *)&v38 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v41, v41);
  if (v41)
  {
    v41->_disableScanUI = 0;
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    checkingStatusLabel = v41->_checkingStatusLabel;
    v41->_checkingStatusLabel = v4;
    *&v6 = MEMORY[0x277D82BD8](checkingStatusLabel).n128_u64[0];
    [(UILabel *)v41->_checkingStatusLabel setTextAlignment:v6];
    v23 = v41->_checkingStatusLabel;
    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v23 setFont:?];
    *&v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    v25 = v41->_checkingStatusLabel;
    v26 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v25 setBackgroundColor:?];
    *&v8 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    v27 = v41->_checkingStatusLabel;
    v28 = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UILabel *)v27 setTextColor:?];
    *&v9 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    [(UILabel *)v41->_checkingStatusLabel setNumberOfLines:0, v9];
    [(UILabel *)v41->_checkingStatusLabel setLineBreakMode:0];
    [(UILabel *)v41->_checkingStatusLabel setAdjustsFontForContentSizeCategory:1];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v41->_subtitleLabel;
    v41->_subtitleLabel = v10;
    *&v12 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
    v29 = v41->_subtitleLabel;
    v30 = [(SUSSoftwareUpdateTableView *)v41 upToDateText];
    [(UILabel *)v29 setText:?];
    *&v13 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    [(UILabel *)v41->_subtitleLabel setTextAlignment:1, v13];
    v31 = v41->_subtitleLabel;
    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [(UILabel *)v31 setFont:?];
    *&v14 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v33 = v41->_subtitleLabel;
    v34 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v33 setBackgroundColor:?];
    *&v15 = MEMORY[0x277D82BD8](v34).n128_u64[0];
    v35 = v41->_subtitleLabel;
    v36 = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UILabel *)v35 setTextColor:?];
    *&v16 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    [(UILabel *)v41->_subtitleLabel setNumberOfLines:0, v16];
    [(UILabel *)v41->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v41->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    checkingForUpdateSpinner = v41->_checkingForUpdateSpinner;
    v41->_checkingForUpdateSpinner = v17;
    *&v19 = MEMORY[0x277D82BD8](checkingForUpdateSpinner).n128_u64[0];
    [(UIActivityIndicatorView *)v41->_checkingForUpdateSpinner sizeToFit];
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v41 selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:?];
    MEMORY[0x277D82BD8](v37);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v41, _settingDidChangeFontSize, kSUSUIApplePreferredContentSizeCategoryNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v22 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v41, 0);
  return v22;
}

- (void)preferredContentSizeChanged:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  refreshPadding = 1;
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v44 = self;
  v43 = a2;
  v42.receiver = self;
  v42.super_class = SUSSoftwareUpdateTableView;
  [(SUSSoftwareUpdateTableView *)&v42 layoutSubviews];
  if (refreshPadding)
  {
    statusMessageTopAfterScanningMargin = -1.0;
    refreshPadding = 0;
  }

  if (*&layoutSubviews_statusMessageTopMargin < 0.0)
  {
    PSRoundToPixel();
    layoutSubviews_statusMessageTopMargin = v2;
  }

  if (*&statusMessageTopAfterScanningMargin < 0.0)
  {
    location = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    UIContentSizeCategoryCompareToCategory(location, *MEMORY[0x277D76808]);
    PSRoundToPixel();
    statusMessageTopAfterScanningMargin = v3;
    objc_storeStrong(&location, 0);
  }

  [(SUSSoftwareUpdateTableView *)v44 bounds];
  v39 = v4;
  v40 = v5;
  if (v44->_state < 2u || v44->_state == 3 || v44->_state == 4)
  {
    v28 = MEMORY[0x277CBF3A0];
    v38 = **&MEMORY[0x277CBF3A0];
    v27 = [(UILabel *)v44->_checkingStatusLabel text];
    v26 = [(UILabel *)v44->_checkingStatusLabel font];
    CGSizeMake();
    [(NSString *)v27 _legacy_sizeWithFont:v26 constrainedToSize:v6, v7];
    v36 = v8;
    v37 = v9;
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v10 = v36;
    v38.size.width = ceilf(v10);
    v11 = v37;
    v38.size.height = ceilf(v11);
    v12 = (v39 - v38.size.width) / 2.0;
    v38.origin.x = floorf(v12);
    v13 = v40 / 2.0 - kLabelOffset;
    v38.origin.y = floorf(v13);
    [(UILabel *)v44->_checkingStatusLabel setFrame:*&v38.origin, *&v38.size];
    v34 = *v28;
    v35 = v28[1];
    v30 = [(UILabel *)v44->_subtitleLabel text];
    v29 = [(UILabel *)v44->_subtitleLabel font];
    CGSizeMake();
    [(NSString *)v30 _legacy_sizeWithFont:v29 constrainedToSize:v14, v15];
    v32 = v16;
    v33 = v17;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    v18 = v32;
    *&v35 = ceilf(v18);
    v19 = v33;
    *(&v35 + 1) = ceilf(v19);
    v20 = (v39 - *&v35) / 2.0;
    *&v34 = floorf(v20);
    v21 = CGRectGetMaxY(v38) + kSublabelOffset;
    [(UILabel *)v44->_subtitleLabel setFrame:*&v34, floorf(v21), v35];
    [(UIActivityIndicatorView *)v44->_checkingForUpdateSpinner frame];
    v23 = (v39 - v22) / 2.0;
    v31 = floorf(v23);
    v24 = v38.origin.y - v38.size.height - 12.0;
    [(UIActivityIndicatorView *)v44->_checkingForUpdateSpinner setFrame:v31, floorf(v24), v22, v25];
  }
}

- (void)setState:(int)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = self;
  v29 = a2;
  v28 = a3;
  if (a3 != self->_state)
  {
    v27 = _SUSLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      log = v27;
      type = v26;
      v8 = [SUSSoftwareUpdateTableView stringForState:v28];
      v25 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_64(v31, "[SUSSoftwareUpdateTableView setState:]", v25);
      _os_log_impl(&dword_26AC65000, log, type, "%s: Setting state %@", v31, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    if (v30->_state == 1 && (!v28 || v28 == 3 || v28 == 2))
    {
      [(UIActivityIndicatorView *)v30->_checkingForUpdateSpinner setAlpha:0.0];
    }

    v5 = 0;
    if (v30->_state == 1)
    {
      v5 = v28 == 2;
    }

    v24 = v5;
    v4 = 0;
    if (v30->_state == 4)
    {
      v4 = v28 == 2;
    }

    v23 = v4;
    if (v24 || v23)
    {
      [(UIActivityIndicatorView *)v30->_checkingForUpdateSpinner setAlpha:?];
      [(UILabel *)v30->_checkingStatusLabel setAlpha:0.0];
      [(UILabel *)v30->_subtitleLabel setAlpha:0.0];
    }

    v30->_state = v28;
    if ([(SUSSoftwareUpdateTableView *)v30 disableScanUI])
    {
      [(SUSSoftwareUpdateTableView *)v30 setNeedsLayout];
    }

    else
    {
      v3 = MEMORY[0x277D75D18];
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __39__SUSSoftwareUpdateTableView_setState___block_invoke;
      v20 = &unk_279CB6D98;
      v22 = v28;
      v21 = MEMORY[0x277D82BE0](v30);
      v9 = MEMORY[0x277D85DD0];
      v10 = -1073741824;
      v11 = 0;
      v12 = __39__SUSSoftwareUpdateTableView_setState___block_invoke_2;
      v13 = &unk_279CB6DC0;
      v14 = MEMORY[0x277D82BE0](v30);
      v15 = v28;
      [v3 animateWithDuration:&v16 animations:&v9 completion:0.300000012];
      [(SUSSoftwareUpdateTableView *)v30 setNeedsLayout];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v21, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

void __39__SUSSoftwareUpdateTableView_setState___block_invoke(uint64_t a1)
{
  v15[2] = a1;
  v15[1] = a1;
  if (*(a1 + 40) == 1)
  {
    v9 = *(*(a1 + 32) + 3368);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"CHECKING_FOR_UPDATES" value:&stru_287B74428 table:@"Software Update"];
    [v9 setText:?];
    MEMORY[0x277D82BD8](v10);
    [*(a1 + 32) addSubview:{*(*(a1 + 32) + 3368), MEMORY[0x277D82BD8](v11).n128_f64[0]}];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 3384)];
    [*(*(a1 + 32) + 3384) startAnimating];
    [*(*(a1 + 32) + 3368) setAlpha:?];
    v12 = *(*(a1 + 32) + 3384);
    v13 = [MEMORY[0x277D75348] systemGrayColor];
    [v12 setColor:?];
    MEMORY[0x277D82BD8](v13);
    [*(*(a1 + 32) + 3384) setAlpha:1.0];
    [*(*(a1 + 32) + 3376) setAlpha:0.0];
  }

  else if (*(a1 + 40) && *(a1 + 40) != 4)
  {
    if (*(a1 + 40) == 3)
    {
      v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15[0] = [v2 localizedStringForKey:@"MANAGED_DEVICE_HIDDEN_WITHIN_DELAY" value:&stru_287B74428 table:@"Software Update"];
      [*(*(a1 + 32) + 3368) setText:{*(*(a1 + 32) + 3352), MEMORY[0x277D82BD8](v2).n128_f64[0]}];
      [*(*(a1 + 32) + 3376) setText:v15[0]];
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 3368)];
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 3376)];
      [*(*(a1 + 32) + 3368) setAlpha:?];
      [*(*(a1 + 32) + 3376) setAlpha:1.0];
      [*(*(a1 + 32) + 3384) setAlpha:0.0];
      objc_storeStrong(v15, 0);
    }

    else
    {
      [*(*(a1 + 32) + 3368) setAlpha:?];
      [*(*(a1 + 32) + 3376) setAlpha:0.0];
      [*(*(a1 + 32) + 3384) setAlpha:0.0];
    }
  }

  else
  {
    if ([*(a1 + 32) updatesDeferred] & 1) != 0 || (objc_msgSend(*(a1 + 32), "suPathsRestricted"))
    {
      v7 = *(*(a1 + 32) + 3376);
      v8 = [*(a1 + 32) upToDateManagedText];
      [v7 setText:?];
      v1 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    }

    else if (*(a1 + 40) == 4)
    {
      v5 = *(*(a1 + 32) + 3376);
      v6 = [*(a1 + 32) upToDateWithAlternate];
      [v5 setText:?];
      v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    }

    else
    {
      v3 = *(*(a1 + 32) + 3376);
      v4 = [*(a1 + 32) upToDateText];
      [v3 setText:?];
      v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    }

    [*(*(a1 + 32) + 3368) setText:{*(*(a1 + 32) + 3352), *&v1}];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 3368)];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 3376)];
    [*(*(a1 + 32) + 3368) setAlpha:?];
    [*(*(a1 + 32) + 3376) setAlpha:1.0];
    [*(*(a1 + 32) + 3384) setAlpha:0.0];
  }
}

uint64_t __39__SUSSoftwareUpdateTableView_setState___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(result + 32) + 3348) == *(result + 40))
  {
    if (*(result + 40) == 1)
    {
      return [*(*(result + 32) + 3376) removeFromSuperview];
    }

    else if (!*(result + 40) || *(result + 40) == 3 || *(result + 40) == 4)
    {
      [*(*(result + 32) + 3384) stopAnimating];
      return [*(*(v1 + 32) + 3384) removeFromSuperview];
    }

    else
    {
      [*(*(result + 32) + 3368) removeFromSuperview];
      [*(*(v1 + 32) + 3376) removeFromSuperview];
      [*(*(v1 + 32) + 3384) stopAnimating];
      return [*(*(v1 + 32) + 3384) removeFromSuperview];
    }
  }

  return result;
}

- (id)upToDateText
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UP_TO_DATE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)upToDateWithAlternate
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v12 = [MEMORY[0x277D75418] currentDevice];
  location = [v12 systemVersion];
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (location)
  {
    v11 = [location componentsSeparatedByString:{@".", v2}];
    v3 = [v11 firstObject];
    v4 = v14[0];
    v14[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UP_TO_DATE_WITH_ALTERNATE"];
  v7 = [v9 localizedStringForKey:? value:? table:?];
  v10 = [v6 stringWithFormat:v14[0]];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v10;
}

- (id)upToDateManagedText
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"MANAGED_DEVICE_DELAY_EXPIRED_UNAVAILABLE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

+ (id)stringForState:(int)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1:
        v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateScanning");
        break;
      case 2:
        v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateShowingUpdate");
        break;
      case 3:
        v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateDelayingUpdate");
        break;
      case 4:
        v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateUpToDateWithAlternate");
        break;
      case 5:
        v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateAlternateUserInitiatedDownload");
        break;
      default:
        v4 = MEMORY[0x277D82BE0](@"Unknown");
        break;
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUSSoftwareUpdateTableViewStateIdle");
  }

  return v4;
}

@end