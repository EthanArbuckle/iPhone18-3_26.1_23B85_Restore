@interface SKUIReviewInAppRatingButtonViewController
- (SKUIReviewInAppRatingButtonViewController)initWithTitle:(id)title style:(unint64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingButtonViewController

- (SKUIReviewInAppRatingButtonViewController)initWithTitle:(id)title style:(unint64_t)style
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = SKUIReviewInAppRatingButtonViewController;
  v8 = [(SKUIReviewInAppRatingButtonViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_titleString, title);
    v9->_style = style;
    v9->_enabled = 1;
  }

  return v9;
}

- (void)viewDidLoad
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SKUIReviewInAppRatingButtonViewController;
  [(SKUIReviewInAppRatingButtonViewController *)&v28 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(SKUIReviewInAppRatingButtonViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc(MEMORY[0x277D756B8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleString = [(SKUIReviewInAppRatingButtonViewController *)self titleString];
  [v6 setText:titleString];

  view2 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  tintColor = [view2 tintColor];
  [v6 setTextColor:tintColor];

  if ([(SKUIReviewInAppRatingButtonViewController *)self style]== 1)
  {
    v10 = MEMORY[0x277D74300];
    font = [v6 font];
    [font pointSize];
    v12 = [v10 boldSystemFontOfSize:?];
    [v6 setFont:v12];
  }

  [v6 setTextAlignment:1];
  view3 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  [view3 addSubview:v6];

  [(SKUIReviewInAppRatingButtonViewController *)self setTitleLabel:v6];
  v23 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v6 leadingAnchor];
  view4 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v24;
  trailingAnchor = [v6 trailingAnchor];
  view5 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v17;
  centerYAnchor = [v6 centerYAnchor];
  view6 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  centerYAnchor2 = [view6 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v29[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v23 activateConstraints:v22];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  if (enabled)
  {
    view = [(SKUIReviewInAppRatingButtonViewController *)self view];
    [view tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v7 = ;
  titleLabel = [(SKUIReviewInAppRatingButtonViewController *)self titleLabel];
  [titleLabel setTextColor:v7];

  if (enabledCopy)
  {

    v7 = view;
  }
}

@end