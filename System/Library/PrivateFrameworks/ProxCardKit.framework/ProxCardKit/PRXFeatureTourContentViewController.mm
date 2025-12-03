@interface PRXFeatureTourContentViewController
- (void)setBodyText:(id)text;
- (void)setShouldCenterAlignText:(BOOL)text;
- (void)setTitleText:(id)text;
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

  titleView = [(PRXFeatureTourContentViewController *)self titleView];
  [titleView setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(PRXFeatureTourContentViewController *)self shouldCenterAlignText])
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  titleView2 = [(PRXFeatureTourContentViewController *)self titleView];
  [titleView2 setTextAlignment:v5];

  titleText = [(PRXFeatureTourContentViewController *)self titleText];
  titleView3 = [(PRXFeatureTourContentViewController *)self titleView];
  [titleView3 setText:titleText];

  contentView = [(PRXCardContentViewController *)self contentView];
  titleView4 = [(PRXFeatureTourContentViewController *)self titleView];
  [contentView addSubview:titleView4];

  v11 = [PRXLabel labelWithStyle:5];
  [(PRXFeatureTourContentViewController *)self setBodyView:v11];

  bodyView = [(PRXFeatureTourContentViewController *)self bodyView];
  [bodyView setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(PRXFeatureTourContentViewController *)self shouldCenterAlignText])
  {
    v13 = 1;
  }

  else
  {
    v13 = 4;
  }

  bodyView2 = [(PRXFeatureTourContentViewController *)self bodyView];
  [bodyView2 setTextAlignment:v13];

  bodyText = [(PRXFeatureTourContentViewController *)self bodyText];
  bodyView3 = [(PRXFeatureTourContentViewController *)self bodyView];
  [bodyView3 setText:bodyText];

  contentView2 = [(PRXCardContentViewController *)self contentView];
  bodyView4 = [(PRXFeatureTourContentViewController *)self bodyView];
  [contentView2 addSubview:bodyView4];

  contentView3 = [(PRXCardContentViewController *)self contentView];
  internalContentGuide = [contentView3 internalContentGuide];

  v39 = MEMORY[0x277CCAAD0];
  titleView5 = [(PRXFeatureTourContentViewController *)self titleView];
  leadingAnchor = [titleView5 leadingAnchor];
  leadingAnchor2 = [internalContentGuide leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v48;
  titleView6 = [(PRXFeatureTourContentViewController *)self titleView];
  trailingAnchor = [titleView6 trailingAnchor];
  trailingAnchor2 = [internalContentGuide trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[1] = v44;
  titleView7 = [(PRXFeatureTourContentViewController *)self titleView];
  topAnchor = [titleView7 topAnchor];
  topAnchor2 = [internalContentGuide topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v53[2] = v40;
  bodyView5 = [(PRXFeatureTourContentViewController *)self bodyView];
  leadingAnchor3 = [bodyView5 leadingAnchor];
  leadingAnchor4 = [internalContentGuide leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v53[3] = v35;
  bodyView6 = [(PRXFeatureTourContentViewController *)self bodyView];
  trailingAnchor3 = [bodyView6 trailingAnchor];
  trailingAnchor4 = [internalContentGuide trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v53[4] = v31;
  bodyView7 = [(PRXFeatureTourContentViewController *)self bodyView];
  topAnchor3 = [bodyView7 topAnchor];
  titleView8 = [(PRXFeatureTourContentViewController *)self titleView];
  bottomAnchor = [titleView8 bottomAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
  v53[5] = v24;
  bodyView8 = [(PRXFeatureTourContentViewController *)self bodyView];
  bottomAnchor2 = [bodyView8 bottomAnchor];
  bottomAnchor3 = [internalContentGuide bottomAnchor];
  v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v53[6] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:7];
  [v39 activateConstraints:v29];
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  bodyText = self->_bodyText;
  if (bodyText != textCopy)
  {
    v9 = textCopy;
    bodyText = [(NSString *)bodyText isEqualToString:textCopy];
    textCopy = v9;
    if ((bodyText & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_bodyText;
      self->_bodyText = v6;

      bodyView = [(PRXFeatureTourContentViewController *)self bodyView];
      [bodyView setText:v9];

      textCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](bodyText, textCopy);
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleText = self->_titleText;
  if (titleText != textCopy)
  {
    v9 = textCopy;
    titleText = [(NSString *)titleText isEqualToString:textCopy];
    textCopy = v9;
    if ((titleText & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_titleText;
      self->_titleText = v6;

      titleView = [(PRXFeatureTourContentViewController *)self titleView];
      [titleView setText:v9];

      textCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](titleText, textCopy);
}

- (void)setShouldCenterAlignText:(BOOL)text
{
  self->_shouldCenterAlignText = text;
  if (text)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  titleView = [(PRXFeatureTourContentViewController *)self titleView];
  [titleView setTextAlignment:v4];

  bodyView = [(PRXFeatureTourContentViewController *)self bodyView];
  [bodyView setTextAlignment:v4];
}

@end