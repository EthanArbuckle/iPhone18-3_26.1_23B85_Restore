@interface SBMedusaBannerViewController
- (SBMedusaBannerViewController)initWithType:(int64_t)type orientation:(int64_t)orientation peekConfiguration:(int64_t)configuration;
- (id)_bannerView;
- (void)viewDidLoad;
@end

@implementation SBMedusaBannerViewController

- (SBMedusaBannerViewController)initWithType:(int64_t)type orientation:(int64_t)orientation peekConfiguration:(int64_t)configuration
{
  v11.receiver = self;
  v11.super_class = SBMedusaBannerViewController;
  v8 = [(SBMedusaBannerViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v8->_orientation = orientation;
    v8->_peekConfiguration = configuration;
    [(SBMedusaBannerViewController *)v8 loadViewIfNeeded];
    [(PLPillView *)v9->_pillView intrinsicContentSize];
    [(SBMedusaBannerViewController *)v9 setPreferredContentSize:?];
  }

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBMedusaBannerViewController;
  [(SBMedusaBannerViewController *)&v5 viewDidLoad];
  view = [(SBMedusaBannerViewController *)self view];
  _bannerView = [(SBMedusaBannerViewController *)self _bannerView];
  [view addSubview:_bannerView];
  [view bounds];
  [_bannerView setFrame:?];
  [_bannerView setAutoresizingMask:18];
}

- (id)_bannerView
{
  v41[2] = *MEMORY[0x277D85DE8];
  pillView = self->_pillView;
  if (!pillView)
  {
    peekConfiguration = self->_peekConfiguration;
    v5 = 0;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    type = self->_type;
    if (type > 1)
    {
      if (type == 2)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [mainBundle localizedStringForKey:@"MEDUSA_BANNER_ERROR_TITLE_SPLIT_VIEW" value:&stru_283094718 table:@"SpringBoard"];

        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [mainBundle2 localizedStringForKey:@"MEDUSA_BANNER_ERROR_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];

        v9 = @"rectangle.split.2x1.slash";
      }

      else
      {
        v8 = 0;
        v9 = 0;
        if (type == 3)
        {
          mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
          v8 = [mainBundle3 localizedStringForKey:@"MEDUSA_BANNER_ERROR_TITLE_MULTIPLE_WINDOWS" value:&stru_283094718 table:@"SpringBoard"];

          mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [mainBundle4 localizedStringForKey:@"MEDUSA_BANNER_ERROR_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];

          v9 = @"rectangle.on.rectangle.slash";
        }
      }
    }

    else if (type)
    {
      v8 = 0;
      v9 = 0;
      if (type == 1)
      {
        v10 = @"rectangle.rightthird.inset.fill";
        if (peekConfiguration == v6)
        {
          v10 = @"rectangle.leftthird.inset.fill";
        }

        v11 = @"rectangle.portrait.leftthird.inset.filled";
        if (peekConfiguration != v6)
        {
          v11 = @"rectangle.portrait.rightthird.inset.filled";
        }

        if ((self->_orientation - 1) >= 2)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        v9 = v12;
        mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [mainBundle5 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_TITLE_SLIDE_OVER" value:&stru_283094718 table:@"SpringBoard"];

        mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [mainBundle6 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];
      }
    }

    else
    {
      mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [mainBundle7 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_TITLE_SPLIT" value:&stru_283094718 table:@"SpringBoard"];

      mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [mainBundle8 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];

      if ((self->_orientation - 1) > 1)
      {
        v19 = @"rectangle.righthalf.inset.fill";
        v20 = @"rectangle.lefthalf.inset.fill";
      }

      else
      {
        v19 = @"rectangle.portrait.righthalf.inset.filled";
        v20 = @"rectangle.portrait.lefthalf.inset.filled";
      }

      if (peekConfiguration == v6)
      {
        v19 = v20;
      }

      v9 = v19;
    }

    v40 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:{15.0, v9}];
    v23 = [MEMORY[0x277D755B8] systemImageNamed:v9 withConfiguration:v40];
    v39 = [v23 imageWithRenderingMode:2];

    v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v39];
    v25 = objc_alloc(MEMORY[0x277D75D18]);
    [v24 bounds];
    v26 = [v25 initWithFrame:?];
    v27 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:v24 trailingAccessoryView:v26];
    v28 = self->_pillView;
    self->_pillView = v27;

    v29 = v8;
    v30 = self->_pillView;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(PLPillView *)v30 setTintColor:labelColor];

    v32 = self->_pillView;
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v29 style:1];
    v41[0] = v33;
    v34 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v5 style:2];
    v41[1] = v34;
    [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v36 = v35 = v5;
    [(PLPillView *)v32 setCenterContentItems:v36];

    pillView = self->_pillView;
  }

  return pillView;
}

@end