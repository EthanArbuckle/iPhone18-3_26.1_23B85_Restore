@interface SUSplitViewController
+ (BOOL)isValidSplitPositionValue:(id)value;
+ (BOOL)isValidSplitTypeString:(id)string;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isSkLoaded;
- (BOOL)isVertical;
- (BOOL)shouldExcludeFromNavigationHistory;
- (SUSplitViewController)init;
- (double)minimumPaneSize;
- (double)splitPosition;
- (id)_newGradientWithValue:(id)value;
- (id)_newViewControllerFromDictionary:(id)dictionary;
- (id)_splitView;
- (id)copyArchivableContext;
- (id)copyChildViewControllersForReason:(int64_t)reason;
- (id)copyScriptViewController;
- (id)newRotationController;
- (id)splitPositionString;
- (id)splitTypeString;
- (int64_t)layoutType;
- (void)_loadingDidChangeNotification:(id)notification;
- (void)_navigationItemDidChangeNotification:(id)notification;
- (void)_reloadLoadingState;
- (void)_reloadTitle;
- (void)_reloadView;
- (void)_reloadViewController:(id)controller fromDictionary:(id)dictionary;
- (void)_reloadWithStorePageDictionary:(id)dictionary;
- (void)_setPlaceholderVisible:(BOOL)visible;
- (void)_setStructuredPage:(id)page;
- (void)_setViewController:(id *)controller toValue:(id)value;
- (void)addChildViewController:(id)controller;
- (void)dealloc;
- (void)loadView;
- (void)reloadWithStorePage:(id)page forURL:(id)l;
- (void)removeChildViewController:(id)controller;
- (void)restoreArchivableContext:(id)context;
- (void)setLayoutType:(int64_t)type;
- (void)setMainTitle:(id)title;
- (void)setMinimumPaneSize:(double)size;
- (void)setSkLoading:(BOOL)loading;
- (void)setSplitPosition:(double)position;
- (void)setSplitPositionAndLayoutTypeFromValue:(id)value;
- (void)setSplitShadow:(id)shadow;
- (void)setSplitTypeString:(id)string;
- (void)setUsesSharedPlaceholder:(BOOL)placeholder;
- (void)setVertical:(BOOL)vertical;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
@end

@implementation SUSplitViewController

- (SUSplitViewController)init
{
  v5.receiver = self;
  v5.super_class = SUSplitViewController;
  v2 = [(SUViewController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUShadow);
    v2->_splitShadow = v3;
    [(SUShadow *)v3 setOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(SUShadow *)v2->_splitShadow setOpacity:0.670000017];
    [(SUShadow *)v2->_splitShadow setRadius:5.0];
    v2->_usesSharedPlaceholder = 1;
    v2->_viewIsReady = 1;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUViewControllerLoadingDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUViewControllerNavigationItemDidChangeNotification" object:0];
  if (self->_firstViewController)
  {
    [(SUSplitViewController *)self removeChildViewController:?];

    self->_firstViewController = 0;
  }

  if (self->_placeholderViewController)
  {
    [(SUSplitViewController *)self removeChildViewController:?];

    self->_placeholderViewController = 0;
  }

  if (self->_secondViewController)
  {
    [(SUSplitViewController *)self removeChildViewController:?];

    self->_secondViewController = 0;
  }

  v4.receiver = self;
  v4.super_class = SUSplitViewController;
  [(SUViewController *)&v4 dealloc];
}

- (void)addChildViewController:(id)controller
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__loadingDidChangeNotification_ name:@"SUViewControllerLoadingDidChangeNotification" object:controller];
  [defaultCenter addObserver:self selector:sel__navigationItemDidChangeNotification_ name:@"SUViewControllerNavigationItemDidChangeNotification" object:{objc_msgSend(controller, "navigationItem")}];
  v6.receiver = self;
  v6.super_class = SUSplitViewController;
  [(SUSplitViewController *)&v6 addChildViewController:controller];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v13.receiver = self;
  v13.super_class = SUSplitViewController;
  v7 = [SUViewController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  if (v7)
  {
    if (sel_isEqual(action, sel_storePage_finishedWithSuccess_) && (v8 = [(SUSplitViewController *)self nextResponder]) != 0)
    {
      v9 = v8;
      do
      {
        v10 = [v9 canPerformAction:action withSender:sender];
        nextResponder = [v9 nextResponder];
        if (!nextResponder)
        {
          break;
        }

        v9 = nextResponder;
      }

      while (!v10);
      LOBYTE(v7) = v10 ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (id)copyArchivableContext
{
  v13.receiver = self;
  v13.super_class = SUSplitViewController;
  copyArchivableContext = [(SUViewController *)&v13 copyArchivableContext];
  [copyArchivableContext setType:5];
  if (![(SUSplitViewController *)self shouldExcludeFromNavigationHistory])
  {
    copyArchivableContext2 = [(UIViewController *)self->_firstViewController copyArchivableContext];
    v5 = copyArchivableContext2;
    if (copyArchivableContext2 && [copyArchivableContext2 type])
    {
      [copyArchivableContext setValue:v5 forMetadataKey:@"first"];
    }

    copyArchivableContext3 = [(UIViewController *)self->_secondViewController copyArchivableContext];
    v7 = copyArchivableContext3;
    if (copyArchivableContext3 && [copyArchivableContext3 type])
    {
      [copyArchivableContext setValue:v7 forMetadataKey:@"second"];
    }

    [copyArchivableContext setValue:objc_msgSend(MEMORY[0x1E696AD98] forMetadataKey:{"numberWithInteger:", -[SUSplitViewController layoutType](self, "layoutType")), @"layoutType"}];
    [copyArchivableContext setValue:-[SUSplitViewController mainTitle](self forMetadataKey:{"mainTitle"), @"mainTitle"}];
    v8 = MEMORY[0x1E696AD98];
    [(SUSplitViewController *)self minimumPaneSize];
    *&v9 = v9;
    [copyArchivableContext setValue:objc_msgSend(v8 forMetadataKey:{"numberWithFloat:", v9), @"minPaneSize"}];
    v10 = MEMORY[0x1E696AD98];
    [(SUSplitViewController *)self splitPosition];
    *&v11 = v11;
    [copyArchivableContext setValue:objc_msgSend(v10 forMetadataKey:{"numberWithFloat:", v11), @"splitPosition"}];
    [copyArchivableContext setValue:-[SUSplitViewController splitShadow](self forMetadataKey:{"splitShadow"), @"shadow"}];
    [copyArchivableContext setValue:objc_msgSend(MEMORY[0x1E696AD98] forMetadataKey:{"numberWithBool:", -[SUSplitViewController usesSharedPlaceholder](self, "usesSharedPlaceholder")), @"sharedLoading"}];
    [copyArchivableContext setValue:objc_msgSend(MEMORY[0x1E696AD98] forMetadataKey:{"numberWithBool:", -[SUSplitViewController isVertical](self, "isVertical")), @"vertical"}];
  }

  return copyArchivableContext;
}

- (id)copyChildViewControllersForReason:(int64_t)reason
{
  if (reason == 1)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SUSplitViewController;
  return [(SUViewController *)&v6 copyChildViewControllersForReason:?];
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptSplitViewController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (BOOL)isSkLoaded
{
  firstViewController = self->_firstViewController;
  if (!firstViewController || (v4 = [(UIViewController *)firstViewController isSkLoaded]))
  {
    secondViewController = self->_secondViewController;
    if (secondViewController)
    {

      LOBYTE(v4) = [(UIViewController *)secondViewController isSkLoaded];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUSplitViewController;
  [(SUViewController *)&v7 loadView];
  view = [(SUSplitViewController *)self view];
  _splitView = [(SUSplitViewController *)self _splitView];
  [view bounds];
  [_splitView setFrame:?];
  [(SUSplitViewController *)self _reloadView];
  [view addSubview:_splitView];
  placeholderViewController = self->_placeholderViewController;
  if (placeholderViewController)
  {
    view2 = [(SUPlaceholderViewController *)placeholderViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view addSubview:view2];
  }
}

- (void)removeChildViewController:(id)controller
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUViewControllerLoadingDidChangeNotification" object:controller];
  [defaultCenter removeObserver:self name:@"SUViewControllerNavigationItemDidChangeNotification" object:{objc_msgSend(controller, "navigationItem")}];
  v6.receiver = self;
  v6.super_class = SUSplitViewController;
  [(SUSplitViewController *)&v6 removeChildViewController:controller];
}

- (void)restoreArchivableContext:(id)context
{
  v5 = [context valueForMetadataKey:@"first"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyViewController = [v5 copyViewController];
    [(SUSplitViewController *)self setFirstViewController:copyViewController];
  }

  v7 = [context valueForMetadataKey:@"second"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyViewController2 = [v7 copyViewController];
    [(SUSplitViewController *)self setSecondViewController:copyViewController2];
  }

  v9 = [context valueForMetadataKey:@"layoutType"];
  if (objc_opt_respondsToSelector())
  {
    -[SUSplitViewController setLayoutType:](self, "setLayoutType:", [v9 intValue]);
  }

  v10 = [context valueForMetadataKey:@"mainTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUSplitViewController *)self setMainTitle:v10];
  }

  v11 = [context valueForMetadataKey:@"splitPosition"];
  if (objc_opt_respondsToSelector())
  {
    [v11 floatValue];
    [(SUSplitViewController *)self setSplitPosition:v12];
  }

  v13 = [context valueForMetadataKey:@"shadow"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUSplitViewController *)self setSplitShadow:v13];
  }

  v14 = [context valueForMetadataKey:@"sharedLoading"];
  if (objc_opt_respondsToSelector())
  {
    -[SUSplitViewController setUsesSharedPlaceholder:](self, "setUsesSharedPlaceholder:", [v14 BOOLValue]);
  }

  v15 = [context valueForMetadataKey:@"vertical"];
  if (objc_opt_respondsToSelector())
  {
    -[SUSplitViewController setVertical:](self, "setVertical:", [v15 BOOLValue]);
  }

  v16.receiver = self;
  v16.super_class = SUSplitViewController;
  [(SUViewController *)&v16 restoreArchivableContext:context];
}

- (void)setSkLoading:(BOOL)loading
{
  loadingCopy = loading;
  if ([(SUSplitViewController *)self isSkLoaded]!= loading)
  {
    v5.receiver = self;
    v5.super_class = SUSplitViewController;
    [(SUViewController *)&v5 setSkLoading:loadingCopy];
    [(SUSplitViewController *)self _setPlaceholderVisible:loadingCopy];
    [(SUPlaceholderViewController *)self->_placeholderViewController setSkLoading:loadingCopy];
  }
}

- (BOOL)shouldExcludeFromNavigationHistory
{
  v4.receiver = self;
  v4.super_class = SUSplitViewController;
  if ([(SUViewController *)&v4 shouldExcludeFromNavigationHistory]|| (objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)self->_firstViewController shouldExcludeFromNavigationHistory]& 1) != 0)
  {
    return 1;
  }

  if (objc_opt_respondsToSelector())
  {
    return [(UIViewController *)self->_secondViewController shouldExcludeFromNavigationHistory];
  }

  return 0;
}

- (id)newRotationController
{
  v3 = [SUSplitViewRotationController alloc];

  return [(SURotationController *)v3 initWithViewController:self];
}

- (void)reloadWithStorePage:(id)page forURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(SUStructuredPage);
    if ([(SUStructuredPage *)v8 loadFromDictionary:page])
    {
      [(SUSplitViewController *)self setDisplayedURL:l];
      [(SUSplitViewController *)self setMainTitle:[(SUStructuredPage *)v8 title]];
      [(SUSplitViewController *)self _setStructuredPage:v8];
      [(SUSplitViewController *)self _reloadWithStorePageDictionary:page];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }
}

+ (BOOL)isValidSplitPositionValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  if (([value isEqualToString:@"first"] & 1) != 0 || (objc_msgSend(value, "isEqualToString:", @"second") & 1) != 0 || (objc_msgSend(value, "hasSuffix:", @"px") & 1) != 0 || (v4 = objc_msgSend(value, "hasSuffix:", @"%")) != 0)
  {
LABEL_2:
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (BOOL)isValidSplitTypeString:(id)string
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([string isEqualToString:@"horizontal"])
  {
    return 1;
  }

  return [string isEqualToString:@"vertical"];
}

- (void)setSplitPositionAndLayoutTypeFromValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueCopy = value;
  }

  else
  {
    if ([value isEqualToString:@"first"])
    {
      v7 = 2;
      goto LABEL_9;
    }

    if ([value isEqualToString:@"second"])
    {
      v7 = 3;
      goto LABEL_9;
    }

    if (![value hasSuffix:@"px"])
    {
      if (![value hasSuffix:@"%"])
      {
        return;
      }

      v6 = [objc_msgSend(value substringToIndex:{objc_msgSend(value, "length") - 1), "intValue"}] / 100.0;
      v7 = 1;
      goto LABEL_4;
    }

    valueCopy = [value substringToIndex:{objc_msgSend(value, "length") - 2}];
  }

  [valueCopy floatValue];
  v7 = 0;
LABEL_4:
  [(SUSplitViewController *)self setSplitPosition:v6];
LABEL_9:

  [(SUSplitViewController *)self setLayoutType:v7];
}

- (void)setSplitTypeString:(id)string
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [string isEqualToString:@"horizontal"];
    if ((v5 & 1) != 0 || [string isEqualToString:@"vertical"])
    {

      [(SUSplitViewController *)self setVertical:v5 ^ 1u];
    }
  }
}

- (id)splitPositionString
{
  layoutType = [(SUSplitViewController *)self layoutType];
  if (layoutType > 1)
  {
    v7 = @"first";
    if (layoutType != 2)
    {
      v7 = 0;
    }

    if (layoutType == 3)
    {
      return @"second";
    }

    else
    {
      return v7;
    }
  }

  else if (layoutType)
  {
    if (layoutType == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      [(SUSplitViewController *)self splitPosition];
      return [v4 stringWithFormat:@"%.0f%%", floor(v5 * 100.0)];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    [(SUSplitViewController *)self splitPosition];
    return [v8 stringWithFormat:@"%.0fpx", v9];
  }
}

- (id)splitTypeString
{
  if ([(SUSplitViewController *)self isVertical])
  {
    return @"vertical";
  }

  else
  {
    return @"horizontal";
  }
}

- (BOOL)isVertical
{
  _splitView = [(SUSplitViewController *)self _splitView];

  return [_splitView isVertical];
}

- (int64_t)layoutType
{
  _splitView = [(SUSplitViewController *)self _splitView];

  return [_splitView layoutType];
}

- (double)minimumPaneSize
{
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView minimumPaneSize];
  return result;
}

- (void)setLayoutType:(int64_t)type
{
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView setLayoutType:type];
}

- (void)setMainTitle:(id)title
{
  mainTitle = self->_mainTitle;
  if (mainTitle != title)
  {

    self->_mainTitle = title;

    [(SUSplitViewController *)self _reloadTitle];
  }
}

- (void)setMinimumPaneSize:(double)size
{
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView setMinimumPaneSize:size];
}

- (void)setSplitPosition:(double)position
{
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView setSplitPosition:position];
}

- (void)setSplitShadow:(id)shadow
{
  splitShadow = self->_splitShadow;
  if (splitShadow != shadow)
  {

    self->_splitShadow = [shadow copy];

    [(SUSplitViewController *)self _reloadView];
  }
}

- (void)setUsesSharedPlaceholder:(BOOL)placeholder
{
  if (self->_usesSharedPlaceholder != placeholder)
  {
    self->_usesSharedPlaceholder = placeholder;
    [(SUSplitViewController *)self _reloadLoadingState];
  }
}

- (void)setVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView setVertical:verticalCopy];
}

- (double)splitPosition
{
  _splitView = [(SUSplitViewController *)self _splitView];

  [_splitView splitPosition];
  return result;
}

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (!success)
  {
    [(UIViewController *)self dismissAnimated:1];
  }
}

- (void)_loadingDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object == self->_firstViewController || object == self->_secondViewController)
  {
    if (([(SUSplitViewController *)self layoutType]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(SUSplitViewController *)self _reloadView];
    }

    [(SUSplitViewController *)self _reloadLoadingState];
  }
}

- (void)_navigationItemDidChangeNotification:(id)notification
{
  object = [notification object];
  if (object == [(UIViewController *)self->_firstViewController navigationItem]|| object == [(UIViewController *)self->_secondViewController navigationItem])
  {

    [(SUSplitViewController *)self _reloadTitle];
  }
}

- (id)_newGradientWithValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SUGradient alloc];

    return [(SUGradient *)v4 initWithPropertyList:value];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [objc_alloc(MEMORY[0x1E69DC888]) initWithStyleString:value]) != 0)
    {
      v7 = v6;
      v8 = [SUGradient gradientWithColor:v6];

      return v8;
    }

    else
    {
      return 0;
    }
  }
}

- (id)_newViewControllerFromDictionary:(id)dictionary
{
  v5 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
  [v5 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  copyScriptProperties = [v5 copyScriptProperties];
  v7 = [dictionary objectForKey:@"loads-progressively"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [copyScriptProperties setShouldLoadProgressively:bOOLValue];
  v9 = [dictionary objectForKey:@"scrolling-enabled"];
  if (objc_opt_respondsToSelector())
  {
    [copyScriptProperties setScrollingDisabled:{objc_msgSend(v9, "BOOLValue") ^ 1}];
  }

  v10 = -[SUSplitViewController _newGradientWithValue:](self, "_newGradientWithValue:", [dictionary objectForKey:@"background-color"]);
  [copyScriptProperties setPlaceholderBackgroundGradient:v10];

  [v5 setScriptProperties:copyScriptProperties];
  return v5;
}

- (void)_reloadLoadingState
{
  if ([(SUSplitViewController *)self usesSharedPlaceholder])
  {
    if ([(UIViewController *)self->_firstViewController isSkLoaded])
    {
      v3 = [(UIViewController *)self->_secondViewController isSkLoaded]^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  [(SUSplitViewController *)self setSkLoading:v3];
  viewIsReady = [(SUSplitViewController *)self viewIsReady];
  if ((v3 & 1) == 0 && !viewIsReady)
  {
    [(SUSplitViewController *)self _reloadView];

    [(SUSplitViewController *)self setViewIsReady:1];
  }
}

- (void)_reloadTitle
{
  mainTitle = [(SUSplitViewController *)self mainTitle];
  if (!mainTitle)
  {
    firstViewController = self->_firstViewController;
    if (!firstViewController)
    {
      firstViewController = self->_secondViewController;
    }

    mainTitle = [(UINavigationItem *)[(UIViewController *)firstViewController navigationItem] title];
  }

  [(SUViewController *)self setTitle:mainTitle];
}

- (void)_reloadView
{
  _splitView = [(SUSplitViewController *)self _splitView];
  layoutType = [(SUSplitViewController *)self layoutType];
  if (layoutType == 3)
  {
    [_splitView bounds];
    v11 = v10;
    v13 = v12;
    [(UIViewController *)self->_secondViewController minimumViewSize];
    v15 = v14;
    v17 = v16;
    isVertical = [(SUSplitViewController *)self isVertical];
    v9 = v11 - v15;
    if (isVertical)
    {
      v9 = v13 - v17;
    }
  }

  else
  {
    if (layoutType != 2)
    {
      goto LABEL_9;
    }

    [(UIViewController *)self->_firstViewController minimumViewSize];
    v6 = v5;
    v8 = v7;
    if ([(SUSplitViewController *)self isVertical])
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }
  }

  [_splitView setSplitPosition:v9];
LABEL_9:
  view = [(UIViewController *)self->_firstViewController view];
  view2 = [(UIViewController *)self->_secondViewController view];
  [_splitView setFirstView:view];
  [_splitView setSecondView:view2];
  [(CALayer *)[(UIView *)view layer] setShadowOpacity:0.0];
  [(CALayer *)[(UIView *)view2 layer] setShadowOpacity:0.0];
  splitShadow = self->_splitShadow;
  if (!splitShadow)
  {
    goto LABEL_14;
  }

  [(SUShadow *)splitShadow radius];
  if (v22 <= 0.00000011920929)
  {
    [(SUShadow *)self->_splitShadow radius];
    if (v23 >= -0.00000011920929)
    {
      goto LABEL_14;
    }

    view = view2;
  }

  [_splitView bringSubviewToFront:view];
  [(SUShadow *)self->_splitShadow applyToLayer:[(UIView *)view layer]];
LABEL_14:

  [_splitView layoutIfNeeded];
}

- (void)_reloadViewController:(id)controller fromDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = [dictionary objectForKey:@"contents"];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = [dictionary objectForKey:@"type"];
  if (!v9 || (v10 = v9, [v9 isEqualToString:@"html-section"]))
  {
    displayedURL = [(SUSplitViewController *)self displayedURL];

    [controller reloadWithStorePage:v8 ofType:1 forURL:displayedURL];
    return;
  }

  if ([v10 isEqualToString:@"plist-section"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = [v8 dataUsingEncoding:4]) == 0)
      {
LABEL_29:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(SUStructuredPage);
          [(SUStructuredPage *)v24 loadFromDictionary:v8];
          [controller reloadWithStorePage:v24 ofType:0 forURL:{-[SUSplitViewController displayedURL](self, "displayedURL")}];
        }

        return;
      }
    }

    v26 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:&v26];
    if (v26)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v20 = shouldLog | 2;
      }

      else
      {
        v20 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v21 = objc_opt_class();
        v27 = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v26;
        LODWORD(v25) = 22;
        v22 = _os_log_send_and_compose_impl();
        if (v22)
        {
          v23 = v22;
          [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v27, v25}];
          free(v23);
          SSFileLog();
        }
      }
    }

    goto LABEL_29;
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v27 = 138412546;
    v28 = objc_opt_class();
    v29 = 2112;
    v30 = v10;
    LODWORD(v25) = 22;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v27, v25}];
      free(v17);
      SSFileLog();
    }
  }
}

- (void)_reloadWithStorePageDictionary:(id)dictionary
{
  -[SUSplitViewController setSplitPositionAndLayoutTypeFromValue:](self, "setSplitPositionAndLayoutTypeFromValue:", [dictionary objectForKey:@"split-position"]);
  -[SUSplitViewController setSplitTypeString:](self, "setSplitTypeString:", [dictionary objectForKey:@"split-type"]);

  self->_placeholderGradient = -[SUSplitViewController _newGradientWithValue:](self, "_newGradientWithValue:", [dictionary objectForKey:@"background-color"]);
  if ([(SUStorePageProtocol *)[(SUStructuredPage *)self->_structuredPage protocol] shouldDisplayInOverlay])
  {
    view = [(SUSplitViewController *)self view];
    [view frame];
    v7 = v6;
    v9 = v8;
    +[SUOverlayViewController defaultOverlaySize];
    [view setFrame:{v7, v9, v10, v11}];
  }

  [(SUSplitViewController *)self setViewIsReady:0];
  v12 = [dictionary objectForKey:@"first-section"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(SUSplitViewController *)self _newViewControllerFromDictionary:v12];
    [(SUSplitViewController *)self setFirstViewController:v13];
    [(SUSplitViewController *)self _reloadViewController:v13 fromDictionary:v12];
  }

  v14 = [dictionary objectForKey:@"second-section"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [(SUSplitViewController *)self _newViewControllerFromDictionary:v14];
    [(SUSplitViewController *)self setSecondViewController:v15];
    [(SUSplitViewController *)self _reloadViewController:v15 fromDictionary:v14];
  }

  [(SUSplitViewController *)self _reloadLoadingState];
}

- (void)_setPlaceholderVisible:(BOOL)visible
{
  placeholderViewController = self->_placeholderViewController;
  if (visible)
  {
    if (!placeholderViewController)
    {
      v5 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
      self->_placeholderViewController = v5;
      [(SUPlaceholderViewController *)v5 setBackgroundGradient:self->_placeholderGradient];
      [(SUViewController *)self->_placeholderViewController setClientInterface:[(SUViewController *)self clientInterface]];
      [(SUSplitViewController *)self addChildViewController:self->_placeholderViewController];
      if ([(SUSplitViewController *)self isViewLoaded])
      {
        view = [(SUSplitViewController *)self view];
        [(SUViewController *)self->_placeholderViewController viewWillAppear:0];
        view2 = [(SUPlaceholderViewController *)self->_placeholderViewController view];
        [view bounds];
        [view2 setFrame:?];
        [view addSubview:view2];
        v8 = self->_placeholderViewController;

        [(SUViewController *)v8 viewDidAppear:0];
      }
    }
  }

  else
  {
    if ([(SUPlaceholderViewController *)placeholderViewController isViewLoaded])
    {
      [(SUViewController *)self->_placeholderViewController viewWillDisappear:0];
      [-[SUPlaceholderViewController view](self->_placeholderViewController "view")];
      [(SUViewController *)self->_placeholderViewController viewDidDisappear:0];
    }

    if (self->_placeholderViewController)
    {
      [(SUSplitViewController *)self removeChildViewController:?];

      self->_placeholderViewController = 0;
    }
  }
}

- (void)_setStructuredPage:(id)page
{
  structuredPage = self->_structuredPage;
  if (structuredPage != page)
  {

    self->_structuredPage = page;

    [(SUViewController *)self storePageProtocolDidChange];
  }
}

- (void)_setViewController:(id *)controller toValue:(id)value
{
  if (*controller != value)
  {
    v8 = *controller;

    *controller = value;
    if (v8)
    {
      [(SUSplitViewController *)self removeChildViewController:v8];
    }

    if ([(SUSplitViewController *)self isViewLoaded])
    {
      [v8 viewWillDisappear:0];
      [*controller viewWillAppear:0];
      [(SUSplitViewController *)self _reloadView];
      [*controller viewDidAppear:0];
      [v8 viewDidDisappear:0];
    }

    if (*controller)
    {
      [(SUSplitViewController *)self addChildViewController:?];
    }
  }
}

- (id)_splitView
{
  result = self->_splitView;
  if (!result)
  {
    v4 = objc_alloc_init(SUSplitView);
    self->_splitView = v4;
    [(SUSplitView *)v4 setAutoresizingMask:18];
    return self->_splitView;
  }

  return result;
}

@end