@interface SKUIReviewInAppRatingButtonViewController
- (SKUIReviewInAppRatingButtonViewController)initWithTitle:(id)a3 style:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingButtonViewController

- (SKUIReviewInAppRatingButtonViewController)initWithTitle:(id)a3 style:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SKUIReviewInAppRatingButtonViewController;
  v8 = [(SKUIReviewInAppRatingButtonViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_titleString, a3);
    v9->_style = a4;
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
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D756B8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(SKUIReviewInAppRatingButtonViewController *)self titleString];
  [v6 setText:v7];

  v8 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  v9 = [v8 tintColor];
  [v6 setTextColor:v9];

  if ([(SKUIReviewInAppRatingButtonViewController *)self style]== 1)
  {
    v10 = MEMORY[0x277D74300];
    v11 = [v6 font];
    [v11 pointSize];
    v12 = [v10 boldSystemFontOfSize:?];
    [v6 setFont:v12];
  }

  [v6 setTextAlignment:1];
  v13 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  [v13 addSubview:v6];

  [(SKUIReviewInAppRatingButtonViewController *)self setTitleLabel:v6];
  v23 = MEMORY[0x277CCAAD0];
  v26 = [v6 leadingAnchor];
  v27 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v29[0] = v24;
  v14 = [v6 trailingAnchor];
  v15 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v29[1] = v17;
  v18 = [v6 centerYAnchor];
  v19 = [(SKUIReviewInAppRatingButtonViewController *)self view];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v29[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v23 activateConstraints:v22];
}

- (void)setEnabled:(BOOL)a3
{
  v4 = a3;
  self->_enabled = a3;
  if (a3)
  {
    v3 = [(SKUIReviewInAppRatingButtonViewController *)self view];
    [v3 tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v7 = ;
  v6 = [(SKUIReviewInAppRatingButtonViewController *)self titleLabel];
  [v6 setTextColor:v7];

  if (v4)
  {

    v7 = v3;
  }
}

@end