@interface SSChromePlaceholderViewController
- (CGRect)screenshotContentFrame;
- (UIColor)cropsCornerColor;
- (int)_preferredStatusBarVisibility;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSChromePlaceholderViewController

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = SSChromePlaceholderViewController;
  [(SSChromePlaceholderViewController *)&v12 viewDidLayoutSubviews];
  v3 = [(SSChromePlaceholderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SSChromePlaceholderView *)self->_placeholderView setFrame:v5, v7, v9, v11];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SSChromePlaceholderViewController;
  [(SSChromePlaceholderViewController *)&v10 viewDidLoad];
  v3 = [(SSChromePlaceholderViewController *)self view];
  [v3 bounds];
  v8 = [[SSChromePlaceholderView alloc] initWithFrame:v4, v5, v6, v7];
  placeholderView = self->_placeholderView;
  self->_placeholderView = v8;

  [(SSChromePlaceholderView *)self->_placeholderView setOverrideUserInterfaceStyle:2];
  [v3 addSubview:self->_placeholderView];
}

- (int)_preferredStatusBarVisibility
{
  v3 = [(SSChromePlaceholderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(SSChromePlaceholderViewController *)self view];
  [v6 bounds];
  v8 = v5 < v7;

  v9 = [(SSChromePlaceholderViewController *)self traitCollection];
  LODWORD(v3) = [SSChromeHelper statusBarVisibilityForTraitCollection:v9 isPortrait:v8];

  return v3;
}

- (UIColor)cropsCornerColor
{
  v2 = +[SSMaterial cropHandle];
  v3 = [v2 color];

  return v3;
}

- (CGRect)screenshotContentFrame
{
  v3 = [(SSChromePlaceholderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(SSChromePlaceholderViewController *)self traitCollection];
  [v20 displayScale];

  [SSChromeHelper availableRectForFullscreenContent:0 layoutBounds:1 bleedToBottom:0 topBarHeight:v5 bottomBarHeight:v7 userInterfaceIdiom:v9 multipleScreenshots:v11, v5 + v15, v7 + v13, v9 - (v15 + v19), v11 - (v13 + v17), 0, 0];
  SSizeToFitSizeInAspectRatioOfSize(v9, v11, v21, v22);
  SSRoundSizeToScale();
  UIRectCenteredIntegralRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

@end