@interface SPUISearchFirstTimeViewController
+ (BOOL)useZKWFTE;
+ (int64_t)viewCount;
+ (void)incrementViewCount;
+ (void)updateViewCountToCount:(int64_t)a3;
- (SPUISearchFirstTimeViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6;
- (double)idealContentHeight;
- (void)updateViewCount;
@end

@implementation SPUISearchFirstTimeViewController

+ (int64_t)viewCount
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightui"];
  if ([v2 integerForKey:@"SPUISearchFirstTimeLastOSVersionUsed"] <= 15)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = v3;
    if (v3)
    {
      [v3 operatingSystemVersion];
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }

    [v2 setInteger:v5 forKey:@"SPUISearchFirstTimeLastOSVersionUsed"];

    [v2 setInteger:0 forKey:@"SPUISearchFirstTimeShowCount"];
  }

  v6 = [v2 integerForKey:@"SPUISearchFirstTimeShowCount"];
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (*MEMORY[0x277D4BF48])
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412546;
    v14 = v2;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_26B837000, v8, v9, "[FTE] count from new prefs (%@) is: %ld", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SPUISearchFirstTimeViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6
{
  v16.receiver = self;
  v16.super_class = SPUISearchFirstTimeViewController;
  v6 = [(SearchUIFirstTimeExperienceViewController *)&v16 initWithDomains:a3 explanationText:a4 learnMoreText:a5 continueButtonTitle:a6];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setAlwaysBounceVertical:1];
    [v7 setDelaysContentTouches:0];
    [v7 setKeyboardDismissMode:1];
    v8 = [(SPUISearchFirstTimeViewController *)v6 view];
    [v7 addSubview:v8];

    v9 = [(SPUISearchFirstTimeViewController *)v6 view];
    [(SPUISearchFirstTimeViewController *)v6 setContentView:v9];

    v10 = MEMORY[0x277D4C828];
    v11 = [(SPUISearchFirstTimeViewController *)v6 view];
    [v10 constrainViewHeightContainer:v11];

    v12 = MEMORY[0x277D4C828];
    v13 = [(SPUISearchFirstTimeViewController *)v6 view];
    v14 = [v12 alignView:v7 toView:v13 withAttribute:9];

    [(SPUISearchFirstTimeViewController *)v6 setView:v7];
  }

  return v6;
}

- (void)updateViewCount
{
  v2 = objc_opt_class();

  [v2 incrementViewCount];
}

+ (void)incrementViewCount
{
  _hasBeenDisplayed = 1;
  v3 = [a1 viewCount] + 1;

  [a1 updateViewCountToCount:v3];
}

- (double)idealContentHeight
{
  v3 = [(SPUISearchFirstTimeViewController *)self contentView];
  [v3 setNeedsLayout];

  v4 = [(SPUISearchFirstTimeViewController *)self contentView];
  [v4 layoutIfNeeded];

  v5 = [(SPUISearchFirstTimeViewController *)self contentView];
  [v5 frame];
  v7 = v6;

  return v7;
}

+ (void)updateViewCountToCount:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightui"];
  [v4 setInteger:a3 forKey:@"SPUISearchFirstTimeShowCount"];
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (*MEMORY[0x277D4BF48])
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_26B837000, v6, v7, "[FTE] updating view count in %@ to: %ld", &v9, 0x16u);
  }

  notify_post("com.apple.spotlightui.prefschanged");
  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)useZKWFTE
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = MEMORY[0x277D6F1D8];

    LOBYTE(v2) = [v3 isPhone];
  }

  return v2;
}

@end