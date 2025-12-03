@interface SPUILockScreenFooterView
- (SPUILockScreenFooterView)init;
- (void)updateTitle;
@end

@implementation SPUILockScreenFooterView

- (SPUILockScreenFooterView)init
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13.receiver = self;
  v13.super_class = SPUILockScreenFooterView;
  v5 = [(NUIContainerBoxView *)&v13 initWithArrangedSubviews:v4];

  if (v5)
  {
    [v3 setProminence:2];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v3 setFont:v6];

    titleLabel = [v3 titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    titleLabel2 = [v3 titleLabel];
    [titleLabel2 setNumberOfLines:2];

    titleLabel3 = [v3 titleLabel];
    [titleLabel3 setTextAlignment:1];

    [v3 addTarget:v5 action:sel_unlockButtonPressed_];
    [v3 setMinimumLayoutSize:{44.0, 44.0}];
    [(SPUILockScreenFooterView *)v5 setUnlockScreenButton:v3];
    [(SPUILockScreenFooterView *)v5 setLayoutMarginsRelativeArrangement:1];
    [(SPUILockScreenFooterView *)v5 setLayoutMargins:16.0, 24.0, 16.0, 24.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_updateTitle name:*MEMORY[0x277D76810] object:0];

    [(SPUILockScreenFooterView *)v5 updateTitle];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateTitle
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v5 localizedStringForKey:@"LOCK_SCREEN_TEXT" value:&stru_287C49600 table:0];
  unlockScreenButton = [(SPUILockScreenFooterView *)self unlockScreenButton];
  [unlockScreenButton setTitle:v3];
}

@end