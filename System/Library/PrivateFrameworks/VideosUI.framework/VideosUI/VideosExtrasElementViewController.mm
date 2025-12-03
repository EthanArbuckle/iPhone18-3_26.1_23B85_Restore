@interface VideosExtrasElementViewController
+ (id)_borderView;
- (VideosExtrasElementViewController)init;
- (id)_installBackdrop:(id)backdrop;
- (unint64_t)extrasSize;
- (void)_configureBannerWithElement:(id)element;
- (void)_didActivateButtonWithItem:(id)item;
- (void)configureBackgroundWithElements:(id)elements;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasElementViewController

- (VideosExtrasElementViewController)init
{
  v5.receiver = self;
  v5.super_class = VideosExtrasElementViewController;
  v2 = [(VideosExtrasElementViewController *)&v5 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2->_wide = [currentDevice userInterfaceIdiom] == 1;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VideosExtrasElementViewController;
  [(VideosExtrasElementViewController *)&v2 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasElementViewController;
  [(VideosExtrasElementViewController *)&v4 viewWillAppear:appear];
  [(VideosExtrasElementViewController *)self _prepareLayout];
}

- (unint64_t)extrasSize
{
  view = [(VideosExtrasElementViewController *)self view];
  [view bounds];
  v4 = v3;

  if (v4 <= 480.0)
  {
    return 0;
  }

  if (v4 <= 568.0)
  {
    return 1;
  }

  if (v4 <= 687.0)
  {
    return 2;
  }

  result = 3;
  if (v4 > 736.0 && v4 > 812.0)
  {
    if (v4 <= 896.0)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

+ (id)_borderView
{
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
  [initForAutolayout setBackgroundColor:v3];

  v4 = MEMORY[0x1E696ACD8];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v7 = [v4 constraintWithItem:initForAutolayout attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0 / v6];

  [initForAutolayout addConstraint:v7];

  return initForAutolayout;
}

- (void)configureBackgroundWithElements:(id)elements
{
  elementsCopy = elements;
  backgroundViewController = self->_backgroundViewController;
  if (backgroundViewController)
  {
    [(VideosExtrasBackgroundViewController *)backgroundViewController willMoveToParentViewController:0];
    view = [(VideosExtrasBackgroundViewController *)self->_backgroundViewController view];
    [view removeFromSuperview];

    [(VideosExtrasBackgroundViewController *)self->_backgroundViewController removeFromParentViewController];
  }

  v6 = [[VideosExtrasBackgroundViewController alloc] initWithBackgroundElements:elementsCopy];
  v7 = self->_backgroundViewController;
  self->_backgroundViewController = v6;

  view2 = [(VideosExtrasElementViewController *)self view];
  view3 = [(VideosExtrasBackgroundViewController *)self->_backgroundViewController view];
  [view2 bounds];
  [view3 setFrame:?];
  [(VideosExtrasElementViewController *)self addChildViewController:self->_backgroundViewController];
  [view2 addSubview:view3];
  [(VideosExtrasBackgroundViewController *)self->_backgroundViewController didMoveToParentViewController:self];
}

- (void)_configureBannerWithElement:(id)element
{
  v32 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  bannerButtonMap = self->_bannerButtonMap;
  self->_bannerButtonMap = weakToWeakObjectsMapTable;

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = elementCopy;
  [elementCopy buttons];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          text = [v12 text];
          v13Text = [text text];
          string = [v13Text string];

          navigationController = [(VideosExtrasElementViewController *)self navigationController];
          navigationBar = [navigationController navigationBar];
          v18 = +[VideosExtrasNavigationBarButton extrasNavigationButton:](VideosExtrasNavigationBarButton, "extrasNavigationButton:", [navigationBar _activeBarMetrics]);

          [v18 setTitle:string forState:0];
          [v18 addTarget:self action:sel__didActivateButtonWithItem_ forControlEvents:64];
          [v18 sizeToFit];
          v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v18];
          [(NSMapTable *)self->_bannerButtonMap setObject:v12 forKey:v18];

          [v25 addObject:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  navigationItem = [(VideosExtrasElementViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:v25];

  title = [v24 title];
  text2 = [title text];
  string2 = [text2 string];

  [(VideosExtrasElementViewController *)self setTitle:string2];
}

- (id)_installBackdrop:(id)backdrop
{
  v23[5] = *MEMORY[0x1E69E9840];
  backdropCopy = backdrop;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [backdropCopy contentInset];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v6, 0.0, 0.0}];
  [backdropCopy addSubview:v22];
  v7 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setGroupName:@"VideosExtrasBlurGroupName"];
  view = [(VideosExtrasElementViewController *)self view];
  [view addSubview:v7];

  view2 = [(VideosExtrasElementViewController *)self view];
  [view2 addSubview:backdropCopy];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:7 relatedBy:0 toItem:backdropCopy attribute:7 multiplier:1.0 constant:0.0];
  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:8 relatedBy:0 toItem:backdropCopy attribute:8 multiplier:1.0 constant:0.0];
  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:9 relatedBy:0 toItem:backdropCopy attribute:9 multiplier:1.0 constant:0.0];
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v7 attribute:3 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:0.0];
  LODWORD(v14) = 1148682240;
  [v13 setPriority:v14];
  v15 = MEMORY[0x1E696ACD8];
  view3 = [(VideosExtrasElementViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  v18 = [v15 constraintWithItem:v7 attribute:3 relatedBy:1 toItem:safeAreaLayoutGuide attribute:3 multiplier:1.0 constant:0.0];

  view4 = [(VideosExtrasElementViewController *)self view];
  v23[0] = v10;
  v23[1] = v11;
  v23[2] = v12;
  v23[3] = v13;
  v23[4] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  [view4 addConstraints:v20];

  return v7;
}

- (void)_didActivateButtonWithItem:(id)item
{
  v3 = [(NSMapTable *)self->_bannerButtonMap objectForKey:item];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

@end