@interface SHUDPillViewController
- (SHUDPillViewController)initWithNeedsButton:(BOOL)button;
- (UIEdgeInsets)bannerContentOutsets;
- (id)formattedSubtitle:(id)subtitle;
- (id)formattedTitle:(id)title;
- (id)trailingPillButton;
- (void)handleButtonTapped;
- (void)handleTap:(id)tap;
- (void)loadView;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation SHUDPillViewController

- (SHUDPillViewController)initWithNeedsButton:(BOOL)button
{
  v5.receiver = self;
  v5.super_class = SHUDPillViewController;
  result = [(SHUDPillViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_needsButton = button;
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did appear", v7, 2u);
  }

  viewDidAppearHandler = [(SHUDPillViewController *)self viewDidAppearHandler];

  if (viewDidAppearHandler)
  {
    viewDidAppearHandler2 = [(SHUDPillViewController *)self viewDidAppearHandler];
    viewDidAppearHandler2[2]();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did disappear", v7, 2u);
  }

  viewDidDisappearHandler = [(SHUDPillViewController *)self viewDidDisappearHandler];

  if (viewDidDisappearHandler)
  {
    viewDidDisappearHandler2 = [(SHUDPillViewController *)self viewDidDisappearHandler];
    viewDidDisappearHandler2[2]();
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

  buttonTapped = [(SHUDPillViewController *)self buttonTapped];

  if (buttonTapped)
  {
    v5 = sharingHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonTapped() called", v7, 2u);
    }

    buttonTapped2 = [(SHUDPillViewController *)self buttonTapped];
    buttonTapped2[2]();
  }
}

- (id)formattedTitle:(id)title
{
  titleCopy = title;
  if ([(SHUDPillViewController *)self needsButton])
  {
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    [v5 setAlignment:4];
    v6 = [NSAttributedString alloc];
    v11 = NSParagraphStyleAttributeName;
    v12 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithString:titleCopy attributes:v7];

    v9 = [objc_alloc(sub_100006378()) initWithAttributedText:v8 style:1];
    titleCopy = v5;
  }

  else
  {
    v9 = [objc_alloc(sub_100006378()) initWithText:titleCopy style:1];
  }

  return v9;
}

- (id)formattedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if ([(SHUDPillViewController *)self needsButton])
  {
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    [v5 setAlignment:{-[SHUDPillViewController subtitleAlignment](self, "subtitleAlignment")}];
    v6 = [NSAttributedString alloc];
    v11 = NSParagraphStyleAttributeName;
    v12 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithString:subtitleCopy attributes:v7];

    v9 = [objc_alloc(sub_100006378()) initWithAttributedText:v8 style:2];
    subtitleCopy = v5;
  }

  else
  {
    v9 = [objc_alloc(sub_100006378()) initWithText:subtitleCopy style:2];
  }

  return v9;
}

- (id)trailingPillButton
{
  trailingButton = [(SHUDPillViewController *)self trailingButton];
  widthAnchor = [trailingButton widthAnchor];
  [trailingButton intrinsicContentSize];
  v5 = [widthAnchor constraintEqualToConstant:v4 + 25.0];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [NSLayoutConstraint activateConstraints:v6];

  [trailingButton setUserInteractionEnabled:0];

  return trailingButton;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = SHUDPillViewController;
  [(SHUDPillViewController *)&v20 loadView];
  trailingPillButton = [(SHUDPillViewController *)self trailingPillButton];
  [(SHUDPillViewController *)self setBannerButton:trailingPillButton];
  leadingImage = [(SHUDPillViewController *)self leadingImage];
  v4 = [[UIImageView alloc] initWithImage:leadingImage];
  [v4 setContentMode:{-[SHUDPillViewController imageContentMode](self, "imageContentMode")}];
  needsButton = [(SHUDPillViewController *)self needsButton];
  v6 = objc_alloc(sub_1000068F4());
  if (needsButton)
  {
    v7 = [v6 initWithLeadingAccessoryView:v4 trailingAccessoryView:trailingPillButton];
  }

  else
  {
    v7 = [v6 initWithLeadingAccessoryView:v4];
  }

  v8 = v7;
  title = [(SHUDPillViewController *)self title];
  subtitle = [(SHUDPillViewController *)self subtitle];
  v11 = [(SHUDPillViewController *)self formattedTitle:title];
  v12 = [(SHUDPillViewController *)self formattedSubtitle:subtitle];
  v21[0] = v11;
  v21[1] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:2];
  [v8 setCenterContentItems:v13];

  [(SHUDPillViewController *)self setPillView:v8];
  pillView = [(SHUDPillViewController *)self pillView];
  [(SHUDPillViewController *)self setContentSizeProvidingView:pillView];

  v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  pillView2 = [(SHUDPillViewController *)self pillView];
  [pillView2 addGestureRecognizer:v15];

  view = [(SHUDPillViewController *)self view];
  pillView3 = [(SHUDPillViewController *)self pillView];
  [view addSubview:pillView3];
}

- (void)viewDidLoad
{
  v39.receiver = self;
  v39.super_class = SHUDPillViewController;
  [(SHUDPillViewController *)&v39 viewDidLoad];
  pillView = [(SHUDPillViewController *)self pillView];
  [pillView setTranslatesAutoresizingMaskIntoConstraints:0];

  pillView2 = [(SHUDPillViewController *)self pillView];
  leadingAnchor = [pillView2 leadingAnchor];
  view = [(SHUDPillViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v34;
  pillView3 = [(SHUDPillViewController *)self pillView];
  trailingAnchor = [pillView3 trailingAnchor];
  view2 = [(SHUDPillViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v29;
  pillView4 = [(SHUDPillViewController *)self pillView];
  bottomAnchor = [pillView4 bottomAnchor];
  view3 = [(SHUDPillViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[2] = v5;
  pillView5 = [(SHUDPillViewController *)self pillView];
  topAnchor = [pillView5 topAnchor];
  view4 = [(SHUDPillViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[3] = v10;
  v11 = [NSArray arrayWithObjects:v40 count:4];
  v12 = [v11 mutableCopy];

  v13 = +[UITraitCollection currentTraitCollection];
  preferredContentSizeCategory = [v13 preferredContentSizeCategory];
  v15 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraExtraExtraLarge, preferredContentSizeCategory);

  if (v15 != NSOrderedAscending && [(SHUDPillViewController *)self needsButton])
  {
    bannerButton = [(SHUDPillViewController *)self bannerButton];
    topAnchor3 = [bannerButton topAnchor];
    pillView6 = [(SHUDPillViewController *)self pillView];
    topAnchor4 = [pillView6 topAnchor];
    v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
    [v12 addObject:v20];

    bannerButton2 = [(SHUDPillViewController *)self bannerButton];
    bottomAnchor3 = [bannerButton2 bottomAnchor];
    pillView7 = [(SHUDPillViewController *)self pillView];
    bottomAnchor4 = [pillView7 bottomAnchor];
    v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
    [v12 addObject:v25];
  }

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  pillView = [(SHUDPillViewController *)self pillView];
  [tapCopy locationInView:pillView];
  v7 = v6;
  v9 = v8;

  bannerButton = [(SHUDPillViewController *)self bannerButton];
  pillView2 = [(SHUDPillViewController *)self pillView];
  [bannerButton convertPoint:pillView2 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  bannerButton2 = [(SHUDPillViewController *)self bannerButton];
  [bannerButton2 bounds];
  v18.x = v13;
  v18.y = v15;
  LODWORD(pillView2) = CGRectContainsPoint(v19, v18);

  if (pillView2)
  {

    [(SHUDPillViewController *)self handleButtonTapped];
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(SHUDPillViewController *)self loadViewIfNeeded];
  pillView = [(SHUDPillViewController *)self pillView];
  [pillView shadowOutsets];
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
  title = [(SHUDPillViewController *)self title];
  subtitle = [(SHUDPillViewController *)self subtitle];
  v5 = [(SHUDPillViewController *)self formattedTitle:title];
  v6 = [(SHUDPillViewController *)self formattedSubtitle:subtitle];
  pillView = [(SHUDPillViewController *)self pillView];
  v9[0] = v5;
  v9[1] = v6;
  v8 = [NSArray arrayWithObjects:v9 count:2];
  [pillView setCenterContentItems:v8];
}

@end