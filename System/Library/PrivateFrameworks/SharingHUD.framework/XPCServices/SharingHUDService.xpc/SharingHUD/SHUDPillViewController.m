@interface SHUDPillViewController
- (SHUDPillViewController)initWithNeedsButton:(BOOL)a3;
- (UIEdgeInsets)bannerContentOutsets;
- (id)formattedSubtitle:(id)a3;
- (id)formattedTitle:(id)a3;
- (id)trailingPillButton;
- (void)handleButtonTapped;
- (void)handleTap:(id)a3;
- (void)loadView;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SHUDPillViewController

- (SHUDPillViewController)initWithNeedsButton:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SHUDPillViewController;
  result = [(SHUDPillViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_needsButton = a3;
  }

  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did appear", v7, 2u);
  }

  v5 = [(SHUDPillViewController *)self viewDidAppearHandler];

  if (v5)
  {
    v6 = [(SHUDPillViewController *)self viewDidAppearHandler];
    v6[2]();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did disappear", v7, 2u);
  }

  v5 = [(SHUDPillViewController *)self viewDidDisappearHandler];

  if (v5)
  {
    v6 = [(SHUDPillViewController *)self viewDidDisappearHandler];
    v6[2]();
  }
}

- (void)handleButtonTapped
{
  v3 = sharingHUDLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Banner button tapped", buf, 2u);
  }

  v4 = [(SHUDPillViewController *)self buttonTapped];

  if (v4)
  {
    v5 = sharingHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonTapped() called", v7, 2u);
    }

    v6 = [(SHUDPillViewController *)self buttonTapped];
    v6[2]();
  }
}

- (id)formattedTitle:(id)a3
{
  v4 = a3;
  if ([(SHUDPillViewController *)self needsButton])
  {
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    [v5 setAlignment:4];
    v6 = [NSAttributedString alloc];
    v11 = NSParagraphStyleAttributeName;
    v12 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithString:v4 attributes:v7];

    v9 = [objc_alloc(sub_100006378()) initWithAttributedText:v8 style:1];
    v4 = v5;
  }

  else
  {
    v9 = [objc_alloc(sub_100006378()) initWithText:v4 style:1];
  }

  return v9;
}

- (id)formattedSubtitle:(id)a3
{
  v4 = a3;
  if ([(SHUDPillViewController *)self needsButton])
  {
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    [v5 setAlignment:{-[SHUDPillViewController subtitleAlignment](self, "subtitleAlignment")}];
    v6 = [NSAttributedString alloc];
    v11 = NSParagraphStyleAttributeName;
    v12 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithString:v4 attributes:v7];

    v9 = [objc_alloc(sub_100006378()) initWithAttributedText:v8 style:2];
    v4 = v5;
  }

  else
  {
    v9 = [objc_alloc(sub_100006378()) initWithText:v4 style:2];
  }

  return v9;
}

- (id)trailingPillButton
{
  v2 = [(SHUDPillViewController *)self trailingButton];
  v3 = [v2 widthAnchor];
  [v2 intrinsicContentSize];
  v5 = [v3 constraintEqualToConstant:v4 + 25.0];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [NSLayoutConstraint activateConstraints:v6];

  [v2 setUserInteractionEnabled:0];

  return v2;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = SHUDPillViewController;
  [(SHUDPillViewController *)&v20 loadView];
  v3 = [(SHUDPillViewController *)self trailingPillButton];
  [(SHUDPillViewController *)self setBannerButton:v3];
  v19 = [(SHUDPillViewController *)self leadingImage];
  v4 = [[UIImageView alloc] initWithImage:v19];
  [v4 setContentMode:{-[SHUDPillViewController imageContentMode](self, "imageContentMode")}];
  v5 = [(SHUDPillViewController *)self needsButton];
  v6 = objc_alloc(sub_1000068F4());
  if (v5)
  {
    v7 = [v6 initWithLeadingAccessoryView:v4 trailingAccessoryView:v3];
  }

  else
  {
    v7 = [v6 initWithLeadingAccessoryView:v4];
  }

  v8 = v7;
  v9 = [(SHUDPillViewController *)self title];
  v10 = [(SHUDPillViewController *)self subtitle];
  v11 = [(SHUDPillViewController *)self formattedTitle:v9];
  v12 = [(SHUDPillViewController *)self formattedSubtitle:v10];
  v21[0] = v11;
  v21[1] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:2];
  [v8 setCenterContentItems:v13];

  [(SHUDPillViewController *)self setPillView:v8];
  v14 = [(SHUDPillViewController *)self pillView];
  [(SHUDPillViewController *)self setContentSizeProvidingView:v14];

  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  v16 = [(SHUDPillViewController *)self pillView];
  [v16 addGestureRecognizer:v15];

  v17 = [(SHUDPillViewController *)self view];
  v18 = [(SHUDPillViewController *)self pillView];
  [v17 addSubview:v18];
}

- (void)viewDidLoad
{
  v39.receiver = self;
  v39.super_class = SHUDPillViewController;
  [(SHUDPillViewController *)&v39 viewDidLoad];
  v3 = [(SHUDPillViewController *)self pillView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(SHUDPillViewController *)self pillView];
  v36 = [v38 leadingAnchor];
  v37 = [(SHUDPillViewController *)self view];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[0] = v34;
  v33 = [(SHUDPillViewController *)self pillView];
  v31 = [v33 trailingAnchor];
  v32 = [(SHUDPillViewController *)self view];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v40[1] = v29;
  v28 = [(SHUDPillViewController *)self pillView];
  v26 = [v28 bottomAnchor];
  v27 = [(SHUDPillViewController *)self view];
  v4 = [v27 bottomAnchor];
  v5 = [v26 constraintEqualToAnchor:v4];
  v40[2] = v5;
  v6 = [(SHUDPillViewController *)self pillView];
  v7 = [v6 topAnchor];
  v8 = [(SHUDPillViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v40[3] = v10;
  v11 = [NSArray arrayWithObjects:v40 count:4];
  v12 = [v11 mutableCopy];

  v13 = +[UITraitCollection currentTraitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraExtraExtraLarge, v14);

  if (v15 != NSOrderedAscending && [(SHUDPillViewController *)self needsButton])
  {
    v16 = [(SHUDPillViewController *)self bannerButton];
    v17 = [v16 topAnchor];
    v18 = [(SHUDPillViewController *)self pillView];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:8.0];
    [v12 addObject:v20];

    v21 = [(SHUDPillViewController *)self bannerButton];
    v22 = [v21 bottomAnchor];
    v23 = [(SHUDPillViewController *)self pillView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-8.0];
    [v12 addObject:v25];
  }

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = [(SHUDPillViewController *)self pillView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(SHUDPillViewController *)self bannerButton];
  v11 = [(SHUDPillViewController *)self pillView];
  [v10 convertPoint:v11 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = [(SHUDPillViewController *)self bannerButton];
  [v16 bounds];
  v18.x = v13;
  v18.y = v15;
  LODWORD(v11) = CGRectContainsPoint(v19, v18);

  if (v11)
  {

    [(SHUDPillViewController *)self handleButtonTapped];
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(SHUDPillViewController *)self loadViewIfNeeded];
  v3 = [(SHUDPillViewController *)self pillView];
  [v3 shadowOutsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)updateUI
{
  v3 = [(SHUDPillViewController *)self title];
  v4 = [(SHUDPillViewController *)self subtitle];
  v5 = [(SHUDPillViewController *)self formattedTitle:v3];
  v6 = [(SHUDPillViewController *)self formattedSubtitle:v4];
  v7 = [(SHUDPillViewController *)self pillView];
  v9[0] = v5;
  v9[1] = v6;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [v7 setCenterContentItems:v8];
}

@end