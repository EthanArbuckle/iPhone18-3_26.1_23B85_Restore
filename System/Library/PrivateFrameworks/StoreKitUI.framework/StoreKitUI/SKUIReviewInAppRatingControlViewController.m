@interface SKUIReviewInAppRatingControlViewController
- (CGSize)preferredContentSize;
- (SKUIReviewInAppRatingControlViewController)initWithCoder:(id)a3;
- (SKUIReviewInAppRatingControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_repeatedTemplateImageForImage:(id)a3;
- (void)commonInit;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingControlViewController

- (SKUIReviewInAppRatingControlViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUIReviewInAppRatingControlViewController;
  v3 = [(SKUIReviewInAppRatingControlViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SKUIReviewInAppRatingControlViewController *)v3 commonInit];
  }

  return v4;
}

- (SKUIReviewInAppRatingControlViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUIReviewInAppRatingControlViewController;
  v4 = [(SKUIReviewInAppRatingControlViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v7 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  v8 = [(SKUIReviewInAppRatingControlViewController *)self _repeatedTemplateImageForImage:v4];
  [v7 setEmptyStarsImage:v8];

  v9 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  v10 = [(SKUIReviewInAppRatingControlViewController *)self _repeatedTemplateImageForImage:v3];
  [v9 setFilledStarsImage:v10];

  v11 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [v11 setUserInteractionEnabled:1];

  v12 = [(SKUIReviewInAppRatingControlViewController *)self view];
  v13 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [v12 addSubview:v13];

  v14 = [(SKUIReviewInAppRatingControlViewController *)self view];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:44.0];

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
  v3 = [(SKUIReviewInAppRatingControlViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)preferredContentSize
{
  v2 = [(SKUIReviewInAppRatingControlViewController *)self ratingControl];
  [v2 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v4 = v3;

  v5 = 44.0;
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (id)_repeatedTemplateImageForImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = v9;
  v16.width = v5 * 5.0 + 80.0;
  v16.height = v7;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);

  for (i = 0; i != 5; ++i)
  {
    [v3 drawAtPoint:{(i * 20.0) + i * v5, 0.0}];
  }

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v13 = [v12 imageWithRenderingMode:2];

  return v13;
}

@end