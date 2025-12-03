@interface SKUIReviewInAppRatingControlViewController
- (CGSize)preferredContentSize;
- (SKUIReviewInAppRatingControlViewController)initWithCoder:(id)coder;
- (SKUIReviewInAppRatingControlViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_repeatedTemplateImageForImage:(id)image;
- (void)commonInit;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingControlViewController

- (SKUIReviewInAppRatingControlViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SKUIReviewInAppRatingControlViewController;
  v3 = [(SKUIReviewInAppRatingControlViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SKUIReviewInAppRatingControlViewController *)v3 commonInit];
  }

  return v4;
}

- (SKUIReviewInAppRatingControlViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SKUIReviewInAppRatingControlViewController;
  v4 = [(SKUIReviewInAppRatingControlViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SKUIReviewInAppRatingControlViewController *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_alloc_init(SKUIStarRatingControl);
  ratingControl = self->_ratingControl;
  self->_ratingControl = v3;

  MEMORY[0x2821F96F8](v3, ratingControl);
}

- (void)viewDidLoad
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SKUIReviewInAppRatingControlViewController;
  [(SKUIReviewInAppRatingControlViewController *)&v20 viewDidLoad];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"star"];
  [v4 size];
  *&v5 = v5;
  [(SKUIStarRatingControl *)self->_ratingControl setStarWidth:v5];
  LODWORD(v6) = 20.0;
  [(SKUIStarRatingControl *)self->_ratingControl setStarSpacing:v6];
  ratingControl = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  v8 = [(SKUIReviewInAppRatingControlViewController *)self _repeatedTemplateImageForImage:v4];
  [ratingControl setEmptyStarsImage:v8];

  ratingControl2 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  v10 = [(SKUIReviewInAppRatingControlViewController *)self _repeatedTemplateImageForImage:v3];
  [ratingControl2 setFilledStarsImage:v10];

  ratingControl3 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [ratingControl3 setUserInteractionEnabled:1];

  view = [(SKUIReviewInAppRatingControlViewController *)self view];
  ratingControl4 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [view addSubview:ratingControl4];

  view2 = [(SKUIReviewInAppRatingControlViewController *)self view];
  heightAnchor = [view2 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:44.0];

  LODWORD(v17) = 1148829696;
  [v16 setPriority:v17];
  v18 = MEMORY[0x277CCAAD0];
  v21[0] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v18 activateConstraints:v19];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SKUIReviewInAppRatingControlViewController;
  [(SKUIReviewInAppRatingControlViewController *)&v13 viewDidLayoutSubviews];
  view = [(SKUIReviewInAppRatingControlViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ratingControl = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [ratingControl setFrame:{v5, v7, v9, v11}];
}

- (CGSize)preferredContentSize
{
  ratingControl = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [ratingControl sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v4 = v3;

  v5 = 44.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (id)_repeatedTemplateImageForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
  [imageCopy size];
  v7 = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;
  v16.width = v5 * 5.0 + 80.0;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);

  for (i = 0; i != 5; ++i)
  {
    [imageCopy drawAtPoint:{(i * 20.0) + i * v5, 0.0}];
  }

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v13 = [v12 imageWithRenderingMode:2];

  return v13;
}

@end