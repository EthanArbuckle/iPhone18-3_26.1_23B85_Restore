@interface PRXFeatureTourContentViewController
- (void)setBodyText:(id)a3;
- (void)setShouldCenterAlignText:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)viewDidLoad;
@end

@implementation PRXFeatureTourContentViewController

- (void)viewDidLoad
{
  v53[7] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = PRXFeatureTourContentViewController;
  [(PRXCardContentViewController *)&v52 viewDidLoad];
  v3 = [PRXLabel labelWithStyle:4];
  [(PRXFeatureTourContentViewController *)self setTitleView:v3];

  v4 = [(PRXFeatureTourContentViewController *)self titleView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(PRXFeatureTourContentViewController *)self shouldCenterAlignText])
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = [(PRXFeatureTourContentViewController *)self titleView];
  [v6 setTextAlignment:v5];

  v7 = [(PRXFeatureTourContentViewController *)self titleText];
  v8 = [(PRXFeatureTourContentViewController *)self titleView];
  [v8 setText:v7];

  v9 = [(PRXCardContentViewController *)self contentView];
  v10 = [(PRXFeatureTourContentViewController *)self titleView];
  [v9 addSubview:v10];

  v11 = [PRXLabel labelWithStyle:5];
  [(PRXFeatureTourContentViewController *)self setBodyView:v11];

  v12 = [(PRXFeatureTourContentViewController *)self bodyView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(PRXFeatureTourContentViewController *)self shouldCenterAlignText])
  {
    v13 = 1;
  }

  else
  {
    v13 = 4;
  }

  v14 = [(PRXFeatureTourContentViewController *)self bodyView];
  [v14 setTextAlignment:v13];

  v15 = [(PRXFeatureTourContentViewController *)self bodyText];
  v16 = [(PRXFeatureTourContentViewController *)self bodyView];
  [v16 setText:v15];

  v17 = [(PRXCardContentViewController *)self contentView];
  v18 = [(PRXFeatureTourContentViewController *)self bodyView];
  [v17 addSubview:v18];

  v19 = [(PRXCardContentViewController *)self contentView];
  v20 = [v19 internalContentGuide];

  v39 = MEMORY[0x277CCAAD0];
  v51 = [(PRXFeatureTourContentViewController *)self titleView];
  v50 = [v51 leadingAnchor];
  v49 = [v20 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v53[0] = v48;
  v47 = [(PRXFeatureTourContentViewController *)self titleView];
  v46 = [v47 trailingAnchor];
  v45 = [v20 trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v53[1] = v44;
  v43 = [(PRXFeatureTourContentViewController *)self titleView];
  v42 = [v43 topAnchor];
  v41 = [v20 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:20.0];
  v53[2] = v40;
  v38 = [(PRXFeatureTourContentViewController *)self bodyView];
  v37 = [v38 leadingAnchor];
  v36 = [v20 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v53[3] = v35;
  v34 = [(PRXFeatureTourContentViewController *)self bodyView];
  v33 = [v34 trailingAnchor];
  v32 = [v20 trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v53[4] = v31;
  v30 = [(PRXFeatureTourContentViewController *)self bodyView];
  v21 = [v30 topAnchor];
  v22 = [(PRXFeatureTourContentViewController *)self titleView];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:4.0];
  v53[5] = v24;
  v25 = [(PRXFeatureTourContentViewController *)self bodyView];
  v26 = [v25 bottomAnchor];
  v27 = [v20 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v53[6] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:7];
  [v39 activateConstraints:v29];
}

- (void)setBodyText:(id)a3
{
  v4 = a3;
  bodyText = self->_bodyText;
  if (bodyText != v4)
  {
    v9 = v4;
    bodyText = [(NSString *)bodyText isEqualToString:v4];
    v4 = v9;
    if ((bodyText & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_bodyText;
      self->_bodyText = v6;

      v8 = [(PRXFeatureTourContentViewController *)self bodyView];
      [v8 setText:v9];

      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](bodyText, v4);
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  titleText = self->_titleText;
  if (titleText != v4)
  {
    v9 = v4;
    titleText = [(NSString *)titleText isEqualToString:v4];
    v4 = v9;
    if ((titleText & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_titleText;
      self->_titleText = v6;

      v8 = [(PRXFeatureTourContentViewController *)self titleView];
      [v8 setText:v9];

      v4 = v9;
    }
  }

  MEMORY[0x2821F96F8](titleText, v4);
}

- (void)setShouldCenterAlignText:(BOOL)a3
{
  self->_shouldCenterAlignText = a3;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  v5 = [(PRXFeatureTourContentViewController *)self titleView];
  [v5 setTextAlignment:v4];

  v6 = [(PRXFeatureTourContentViewController *)self bodyView];
  [v6 setTextAlignment:v4];
}

@end