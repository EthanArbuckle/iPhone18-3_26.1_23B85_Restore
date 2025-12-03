@interface _UIButtonGroupViewController
- (UIColor)backgroundColor;
- (UIColor)tintColor;
- (_UIButtonGroupViewController)initWithBarButtonItemGroups:(id)groups overLightKeyboard:(BOOL)keyboard;
- (_UIButtonGroupViewController)initWithCoder:(id)coder;
- (_UIButtonGroupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissIfNecessary;
- (void)loadView;
- (void)setBackgroundColor:(id)color;
- (void)setTintColor:(id)color;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _UIButtonGroupViewController

- (_UIButtonGroupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should not be called", bundle, "-[_UIButtonGroupViewController initWithNibName:bundle:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  [v8 raise];

  return 0;
}

- (_UIButtonGroupViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should not be called", "-[_UIButtonGroupViewController initWithCoder:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  [v7 raise];

  return 0;
}

- (_UIButtonGroupViewController)initWithBarButtonItemGroups:(id)groups overLightKeyboard:(BOOL)keyboard
{
  groupsCopy = groups;
  if (![groupsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButtonGroupViewController.m" lineNumber:49 description:{@"You can't create a %@ with no bar button item groups...", v28}];
  }

  v32.receiver = self;
  v32.super_class = _UIButtonGroupViewController;
  v8 = [(UIViewController *)&v32 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [groupsCopy copy];
    barButtonItemGroups = v8->_barButtonItemGroups;
    v8->_barButtonItemGroups = v9;

    v11 = objc_alloc_init(_UIButtonBar);
    buttonBar = v8->_buttonBar;
    v8->_buttonBar = v11;

    objc_opt_class();
    v13 = _UIButtonBarButtonMakerForVisualProvider();
    [(_UIButtonBar *)v8->_buttonBar setViewUpdater:v13];

    [(_UIButtonBar *)v8->_buttonBar setItemsInGroupUseSameSize:1];
    v8->_overLightKeyboard = keyboard;
    objc_initWeak(&location, v8);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78___UIButtonGroupViewController_initWithBarButtonItemGroups_overLightKeyboard___block_invoke;
    v29[3] = &unk_1E70F7810;
    objc_copyWeak(&v30, &location);
    [(_UIButtonBar *)v8->_buttonBar setDefaultActionFilter:v29];
    [(UIViewController *)v8 setModalPresentationStyle:7];
    firstObject = [(NSArray *)v8->_barButtonItemGroups firstObject];
    representativeItem = [firstObject representativeItem];
    popoverPresentationController = [(UIViewController *)v8 popoverPresentationController];
    [popoverPresentationController setSourceItem:representativeItem];

    popoverPresentationController2 = [(UIViewController *)v8 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:3];

    popoverPresentationController3 = [(UIViewController *)v8 popoverPresentationController];
    [popoverPresentationController3 _setIgnoreBarButtonItemSiblings:1];

    popoverPresentationController4 = [(UIViewController *)v8 popoverPresentationController];
    [popoverPresentationController4 setDelegate:v8];

    LODWORD(representativeItem) = v8->_overLightKeyboard;
    popoverPresentationController5 = [(UIViewController *)v8 popoverPresentationController];
    v21 = popoverPresentationController5;
    if (representativeItem)
    {
      v22 = 6;
    }

    else
    {
      v22 = 7;
    }

    [popoverPresentationController5 _setPopoverBackgroundStyle:v22];

    if (!v8->_overLightKeyboard)
    {
      v23 = [UIColor colorWithRed:0.498039216 green:0.501960784 blue:0.509803922 alpha:0.8];
      popoverPresentationController6 = [(UIViewController *)v8 popoverPresentationController];
      [popoverPresentationController6 setBackgroundColor:v23];
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dismissIfNecessary
{
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  _realSourceView = [popoverPresentationController _realSourceView];
  superview = [_realSourceView superview];

  if (!superview)
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)loadView
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UIView);
  [(UIViewController *)self setView:v3];
  v4 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  [(UIView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setContentInset:0.0, 17.5, 0.0, 17.5];
  [(UIView *)v3 addSubview:self->_scrollView];
  tintColor = [(_UIButtonGroupViewController *)self tintColor];
  [(UIView *)v3 setTintColor:tintColor];

  [(_UIButtonBar *)self->_buttonBar setBarButtonGroups:self->_barButtonItemGroups];
  [(_UIButtonBar *)self->_buttonBar setMinimumInterItemSpace:15.0];
  view = [(_UIButtonBar *)self->_buttonBar view];
  [view setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];

  view2 = [(_UIButtonBar *)self->_buttonBar view];
  [(UIView *)self->_scrollView addSubview:view2];
  v23[0] = @"buttonBar";
  v23[1] = @"scrollView";
  v9 = self->_scrollView;
  v24[0] = view2;
  v24[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v11 = MEMORY[0x1E69977A0];
  v12 = MEMORY[0x1E695E0F8];
  v13 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[scrollView]|" options:0 metrics:MEMORY[0x1E695E0F8] views:v10];
  [v11 activateConstraints:v13];

  v14 = MEMORY[0x1E69977A0];
  v15 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics:v12 views:v10];
  [v14 activateConstraints:v15];

  v16 = MEMORY[0x1E69977A0];
  v17 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[buttonBar]|" options:0 metrics:v12 views:v10];
  [v16 activateConstraints:v17];

  v18 = MEMORY[0x1E69977A0];
  v19 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[buttonBar(<=56)]|" options:0 metrics:v12 views:v10];
  [v18 activateConstraints:v19];

  [view2 layoutIfNeeded];
  LODWORD(v20) = 1112014848;
  LODWORD(v21) = 1112014848;
  [view2 systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v20, v21}];
  [(UIViewController *)self setPreferredContentSize:v22 + 35.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _UIButtonGroupViewController;
  [(UIViewController *)&v4 viewWillAppear:appear];
  [(_UIButtonBar *)self->_buttonBar _validateAllItems];
}

- (UIColor)backgroundColor
{
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  backgroundColor = [popoverPresentationController backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  popoverPresentationController = [(UIViewController *)self popoverPresentationController];
  [popoverPresentationController setBackgroundColor:colorCopy];
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);
  colorCopy = color;
  view = [(UIViewController *)self view];
  [view setTintColor:colorCopy];
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    v3 = tintColor;
  }

  else
  {
    if (self->_overLightKeyboard)
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v3 = ;
  }

  return v3;
}

@end