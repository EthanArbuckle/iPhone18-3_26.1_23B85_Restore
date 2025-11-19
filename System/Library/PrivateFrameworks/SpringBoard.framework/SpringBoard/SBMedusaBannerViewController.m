@interface SBMedusaBannerViewController
- (SBMedusaBannerViewController)initWithType:(int64_t)a3 orientation:(int64_t)a4 peekConfiguration:(int64_t)a5;
- (id)_bannerView;
- (void)viewDidLoad;
@end

@implementation SBMedusaBannerViewController

- (SBMedusaBannerViewController)initWithType:(int64_t)a3 orientation:(int64_t)a4 peekConfiguration:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = SBMedusaBannerViewController;
  v8 = [(SBMedusaBannerViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v8->_orientation = a4;
    v8->_peekConfiguration = a5;
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
  v3 = [(SBMedusaBannerViewController *)self view];
  v4 = [(SBMedusaBannerViewController *)self _bannerView];
  [v3 addSubview:v4];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
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
        v21 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v21 localizedStringForKey:@"MEDUSA_BANNER_ERROR_TITLE_SPLIT_VIEW" value:&stru_283094718 table:@"SpringBoard"];

        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [v22 localizedStringForKey:@"MEDUSA_BANNER_ERROR_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];

        v9 = @"rectangle.split.2x1.slash";
      }

      else
      {
        v8 = 0;
        v9 = 0;
        if (type == 3)
        {
          v15 = [MEMORY[0x277CCA8D8] mainBundle];
          v8 = [v15 localizedStringForKey:@"MEDUSA_BANNER_ERROR_TITLE_MULTIPLE_WINDOWS" value:&stru_283094718 table:@"SpringBoard"];

          v16 = [MEMORY[0x277CCA8D8] mainBundle];
          v5 = [v16 localizedStringForKey:@"MEDUSA_BANNER_ERROR_SUBTITLE" value:&stru_283094718 table:@"SpringBoard"];

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
        v13 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v13 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_TITLE_SLIDE_OVER" value:&stru_283094718 table:@"SpringBoard"];

        v14 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [v14 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v17 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_TITLE_SPLIT" value:&stru_283094718 table:@"SpringBoard"];

      v18 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v18 localizedStringForKey:@"MEDUSA_BANNER_EDUCATION_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];

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
    v31 = [MEMORY[0x277D75348] labelColor];
    [(PLPillView *)v30 setTintColor:v31];

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