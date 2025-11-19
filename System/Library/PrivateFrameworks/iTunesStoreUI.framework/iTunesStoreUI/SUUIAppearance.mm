@interface SUUIAppearance
+ (id)_defaultBackButtonAppearance;
+ (id)_defaultButtonAppearance;
+ (id)_defaultConfirmationButtonAppearance;
+ (id)_defaultDestructiveButtonAppearance;
+ (id)_defaultDoneButtonAppearance;
+ (id)_defaultForwardButtonAppearance;
+ (id)_defaultShadowWithColor:(id)a3 offset:(CGSize)a4;
+ (id)_defaultTabBarAppearance;
+ (id)defaultAppearance;
- (SUControlAppearance)backButtonAppearance;
- (SUControlAppearance)confirmationButtonAppearance;
- (SUControlAppearance)destructiveButtonAppearance;
- (SUControlAppearance)exitStoreButtonAppearance;
- (SUControlAppearance)forwardButtonAppearance;
- (SUToolbarAppearance)toolbarAppearance;
- (id)copyWithZone:(_NSZone *)a3;
- (id)navigationBarBackgroundImageForBarMetrics:(int64_t)a3;
- (id)navigationButtonAppearanceForStyle:(int64_t)a3;
- (id)segmentedControlAppearanceForStyle:(int64_t)a3 tintStyle:(int64_t)a4;
- (void)_styleBackBarButtonItem:(id)a3;
- (void)dealloc;
- (void)setNavigationBarBackgroundImage:(id)a3 forBarMetrics:(int64_t)a4;
- (void)setNavigationButtonAppearance:(id)a3 forStyle:(int64_t)a4;
- (void)setSegmentedControlAppearance:(id)a3 forStyle:(int64_t)a4 tintStyle:(int64_t)a5;
- (void)styleBarButtonItem:(id)a3;
- (void)styleConfirmationButtonItem:(id)a3;
- (void)styleDestructiveButton:(id)a3;
- (void)styleExitStoreButtonItem:(id)a3;
- (void)styleForwardButtonItem:(id)a3;
- (void)styleNavigationBar:(id)a3;
- (void)styleSegmentedControl:(id)a3 tintStyle:(int64_t)a4;
- (void)styleTabBar:(id)a3;
- (void)styleTabBarItem:(id)a3;
- (void)styleToolbar:(id)a3;
@end

@implementation SUUIAppearance

+ (id)defaultAppearance
{
  if (!_UIApplicationUsesLegacyUI())
  {
    return 0;
  }

  v3 = objc_alloc_init(objc_opt_class());
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultBackground" inBundle:v4];
  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  v10 = [v5 resizableImageWithCapInsets:{*MEMORY[0x1E69DDCE0], v7, v8, v9}];
  v11 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultBackground" inBundle:{v4), "resizableImageWithCapInsets:", v6, v7, v8, v9}];
  [v3 setNavigationBarBackgroundImage:v10 forBarMetrics:0];
  [v3 setNavigationBarBackgroundImage:v11 forBarMetrics:1];
  [v3 setTabBarAppearance:{objc_msgSend(a1, "_defaultTabBarAppearance")}];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  [v12 setObject:v13 forKey:*MEMORY[0x1E69DB650]];
  v14 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"blackColor"), 0.0, -1.0}];
  [v12 setObject:v14 forKey:*MEMORY[0x1E69DB6A8]];
  [v3 setNavigationBarTitleTextAttributes:v12];

  v3[48] = 1;

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUUIAppearance;
  [(SUUIAppearance *)&v3 dealloc];
}

- (SUControlAppearance)backButtonAppearance
{
  backButtonAppearance = self->_backButtonAppearance;
  if (!backButtonAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      backButtonAppearance = [objc_opt_class() _defaultBackButtonAppearance];
      self->_backButtonAppearance = backButtonAppearance;
    }

    else
    {
      backButtonAppearance = 0;
    }
  }

  v4 = [(SUControlAppearance *)backButtonAppearance copy];

  return v4;
}

- (SUControlAppearance)confirmationButtonAppearance
{
  confirmationButtonAppearance = self->_confirmationButtonAppearance;
  if (!confirmationButtonAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      confirmationButtonAppearance = [objc_opt_class() _defaultConfirmationButtonAppearance];
      self->_confirmationButtonAppearance = confirmationButtonAppearance;
    }

    else
    {
      confirmationButtonAppearance = 0;
    }
  }

  v4 = [(SUControlAppearance *)confirmationButtonAppearance copy];

  return v4;
}

- (SUControlAppearance)destructiveButtonAppearance
{
  destructiveButtonAppearance = self->_destructiveButtonAppearance;
  if (!destructiveButtonAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      destructiveButtonAppearance = [objc_opt_class() _defaultDestructiveButtonAppearance];
      self->_destructiveButtonAppearance = destructiveButtonAppearance;
    }

    else
    {
      destructiveButtonAppearance = 0;
    }
  }

  v4 = [(SUControlAppearance *)destructiveButtonAppearance copy];

  return v4;
}

- (SUControlAppearance)exitStoreButtonAppearance
{
  exitStoreButtonAppearance = self->_exitStoreButtonAppearance;
  if (!exitStoreButtonAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v5 = objc_alloc_init(SUControlAppearance);
      self->_exitStoreButtonAppearance = v5;
      -[SUControlAppearance setImage:forState:barMetrics:](v5, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarCircularButton" inBundle:v4], 0, 0);
      -[SUControlAppearance setImage:forState:barMetrics:](self->_exitStoreButtonAppearance, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarCircularButtonPressed" inBundle:v4], 1, 0);
      exitStoreButtonAppearance = self->_exitStoreButtonAppearance;
    }

    else
    {
      exitStoreButtonAppearance = 0;
    }
  }

  v6 = [(SUControlAppearance *)exitStoreButtonAppearance copy];

  return v6;
}

- (SUControlAppearance)forwardButtonAppearance
{
  forwardButtonAppearance = self->_forwardButtonAppearance;
  if (!forwardButtonAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      forwardButtonAppearance = [objc_opt_class() _defaultForwardButtonAppearance];
      self->_forwardButtonAppearance = forwardButtonAppearance;
    }

    else
    {
      forwardButtonAppearance = 0;
    }
  }

  v4 = [(SUControlAppearance *)forwardButtonAppearance copy];

  return v4;
}

- (id)navigationBarBackgroundImageForBarMetrics:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  v5 = [(NSMutableDictionary *)self->_navigationBarBackgroundImages objectForKey:v4];

  return v5;
}

- (id)navigationButtonAppearanceForStyle:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  v6 = [-[NSMutableDictionary objectForKey:](self->_navigationButtonAppearance objectForKey:{v5), "copy"}];
  if (!v6)
  {
    if (self->_isDefaultAppearance)
    {
      if (a3 == 2)
      {
        v7 = [objc_opt_class() _defaultDoneButtonAppearance];
      }

      else
      {
        if (a3)
        {
          goto LABEL_9;
        }

        v7 = [objc_opt_class() _defaultButtonAppearance];
      }

      v8 = v7;
      if (v7)
      {
        v6 = [v7 copy];
        [(SUUIAppearance *)self setNavigationButtonAppearance:v8 forStyle:a3];
        goto LABEL_10;
      }
    }

LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (id)segmentedControlAppearanceForStyle:(int64_t)a3 tintStyle:(int64_t)a4
{
  v7 = [SUUIAppearance _copySegmentedControlKeyWithStyle:"_copySegmentedControlKeyWithStyle:tintStyle:" tintStyle:?];
  v8 = [-[NSMutableDictionary objectForKey:](self->_segmentedControlAppearance objectForKey:{v7), "copy"}];
  if (!v8)
  {
    if (self->_isDefaultAppearance)
    {
      if (a3 == 7)
      {
        v9 = [SUSegmentedControlAppearance defaultOptionsAppearanceForTintStyle:a4];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_9;
        }

        v9 = +[SUSegmentedControlAppearance defaultBarAppearance];
      }

      v10 = v9;
      if (v9)
      {
        v8 = [v9 copy];
        [(SUUIAppearance *)self setSegmentedControlAppearance:v10 forStyle:a3 tintStyle:a4];
        goto LABEL_10;
      }
    }

LABEL_9:
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (void)setNavigationBarBackgroundImage:(id)a3 forBarMetrics:(int64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a4];
  navigationBarBackgroundImages = self->_navigationBarBackgroundImages;
  v8 = v6;
  if (a3)
  {
    if (!navigationBarBackgroundImages)
    {
      navigationBarBackgroundImages = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = v8;
      self->_navigationBarBackgroundImages = navigationBarBackgroundImages;
    }

    [(NSMutableDictionary *)navigationBarBackgroundImages setObject:a3 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)navigationBarBackgroundImages removeObjectForKey:v6];
  }
}

- (void)setNavigationButtonAppearance:(id)a3 forStyle:(int64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a4];
  navigationButtonAppearance = self->_navigationButtonAppearance;
  v9 = v6;
  if (a3)
  {
    if (!navigationButtonAppearance)
    {
      self->_navigationButtonAppearance = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = [a3 copy];
    [(NSMutableDictionary *)self->_navigationButtonAppearance setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)navigationButtonAppearance removeObjectForKey:?];
  }
}

- (void)setSegmentedControlAppearance:(id)a3 forStyle:(int64_t)a4 tintStyle:(int64_t)a5
{
  v7 = [(SUUIAppearance *)self _copySegmentedControlKeyWithStyle:a4 tintStyle:a5];
  segmentedControlAppearance = self->_segmentedControlAppearance;
  v10 = v7;
  if (a3)
  {
    if (!segmentedControlAppearance)
    {
      self->_segmentedControlAppearance = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [a3 copy];
    [(NSMutableDictionary *)self->_segmentedControlAppearance setObject:v9 forKey:v10];
  }

  else
  {
    [(NSMutableDictionary *)segmentedControlAppearance removeObjectForKey:?];
  }
}

- (void)styleBarButtonItem:(id)a3
{
  v4 = -[SUUIAppearance navigationButtonAppearanceForStyle:](self, "navigationButtonAppearanceForStyle:", [a3 style]);

  [v4 styleBarButtonItem:a3];
}

- (void)styleConfirmationButtonItem:(id)a3
{
  v5 = [(SUUIAppearance *)self confirmationButtonAppearance];
  if ([(SUControlAppearance *)v5 numberOfImages])
  {
    v6 = v5;
  }

  else
  {
    v6 = self;
  }

  [(SUUIAppearance *)v6 styleBarButtonItem:a3];
}

- (void)styleDestructiveButton:(id)a3
{
  v4 = [(SUUIAppearance *)self destructiveButtonAppearance];

  [(SUControlAppearance *)v4 styleBarButtonItem:a3];
}

- (void)styleExitStoreButtonItem:(id)a3
{
  if ([(SUControlAppearance *)self->_exitStoreButtonAppearance numberOfImages])
  {
    exitStoreButtonAppearance = self->_exitStoreButtonAppearance;
  }

  else
  {
    exitStoreButtonAppearance = self;
  }

  [exitStoreButtonAppearance styleBarButtonItem:a3];
}

- (void)styleForwardButtonItem:(id)a3
{
  if ([(SUControlAppearance *)self->_forwardButtonAppearance numberOfImages])
  {
    forwardButtonAppearance = self->_forwardButtonAppearance;
  }

  else
  {
    forwardButtonAppearance = self;
  }

  [forwardButtonAppearance styleBarButtonItem:a3];
}

- (void)styleNavigationBar:(id)a3
{
  navigationBarBackgroundImages = self->_navigationBarBackgroundImages;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__SUUIAppearance_styleNavigationBar___block_invoke;
  v10[3] = &unk_1E81671D8;
  v10[4] = a3;
  [(NSMutableDictionary *)navigationBarBackgroundImages enumerateKeysAndObjectsUsingBlock:v10];
  v6 = [(SUUIAppearance *)self backButtonAppearance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SUUIAppearance_styleNavigationBar___block_invoke_2;
  v9[3] = &unk_1E8167200;
  v9[4] = a3;
  [(SUControlAppearance *)v6 enumerateImagesUsingBlock:v9];
  v7 = [(SUUIAppearance *)self navigationButtonAppearanceForStyle:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SUUIAppearance_styleNavigationBar___block_invoke_3;
  v8[3] = &unk_1E8167228;
  v8[4] = a3;
  [v7 enumerateTextAttributesUsingBlock:v8];
  [a3 setTitleTextAttributes:{-[SUUIAppearance navigationBarTitleTextAttributes](self, "navigationBarTitleTextAttributes")}];
}

uint64_t __37__SUUIAppearance_styleNavigationBar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 integerValue];

  return [v4 setBackgroundImage:a3 forBarMetrics:v5];
}

uint64_t __37__SUUIAppearance_styleNavigationBar___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 objectForKey:*MEMORY[0x1E69DB6A8]];
  result = [a3 objectForKey:*MEMORY[0x1E69DB650]];
  if (a2 == 1)
  {
    result = [*(a1 + 32) _setPressedButtonItemTextColor:result shadowColor:{objc_msgSend(v6, "shadowColor")}];
    if (!v6)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!a2)
  {
    result = [*(a1 + 32) _setButtonItemTextColor:result shadowColor:{objc_msgSend(v6, "shadowColor")}];
  }

  if (v6)
  {
LABEL_5:
    v8 = *(a1 + 32);
    [v6 shadowOffset];

    return [v8 _setButtonTextShadowOffset:?];
  }

  return result;
}

- (void)styleSegmentedControl:(id)a3 tintStyle:(int64_t)a4
{
  v5 = -[SUUIAppearance segmentedControlAppearanceForStyle:tintStyle:](self, "segmentedControlAppearanceForStyle:tintStyle:", [a3 segmentControlStyle], a4);

  [v5 styleSegmentedControl:a3];
}

- (void)styleTabBar:(id)a3
{
  v4 = [(SUUIAppearance *)self tabBarAppearance];
  if (v4)
  {
    v5 = v4;
    [a3 setBackgroundImage:{-[SUTabBarAppearance backgroundImage](v4, "backgroundImage")}];
    [a3 _setSelectionIndicatorImage:{-[SUTabBarAppearance selectionIndicatorImage](v5, "selectionIndicatorImage")}];
    [(SUTabBarAppearance *)v5 tabBarButtonWidth];
    v7 = v6;
    if (v6 > 0.00000011920929)
    {
      [a3 setItemPositioning:2];
      [(SUTabBarAppearance *)v5 tabBarButtonSpacing];
      [a3 setItemSpacing:?];
      [a3 setItemWidth:v7];
    }

    v8 = [(SUTabBarAppearance *)v5 dividerImage];
    v9 = [(SUTabBarAppearance *)v5 selectedDividerImage];
    [a3 _setDividerImage:v8 forLeftButtonState:0 rightButtonState:0];

    [a3 _setDividerImage:v9 forLeftButtonState:1 rightButtonState:0];
  }
}

- (void)styleTabBarItem:(id)a3
{
  v4 = [(SUUIAppearance *)self tabBarAppearance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SUUIAppearance_styleTabBarItem___block_invoke;
  v5[3] = &unk_1E8167228;
  v5[4] = a3;
  [(SUTabBarAppearance *)v4 enumerateTitleTextAttributesUsingBlock:v5];
}

- (void)styleToolbar:(id)a3
{
  v4 = [(SUUIAppearance *)self toolbarAppearance];

  [(SUToolbarAppearance *)v4 styleToolbar:a3];
}

- (SUToolbarAppearance)toolbarAppearance
{
  toolbarAppearance = self->_toolbarAppearance;
  if (!toolbarAppearance)
  {
    if (self->_isDefaultAppearance)
    {
      toolbarAppearance = +[SUToolbarAppearance defaultToolbarAppearance];
      self->_toolbarAppearance = toolbarAppearance;
    }

    else
    {
      toolbarAppearance = 0;
    }
  }

  v4 = [(SUToolbarAppearance *)toolbarAppearance copy];

  return v4;
}

+ (id)_defaultShadowWithColor:(id)a3 offset:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  [v7 setShadowBlurRadius:0.0];
  [v7 setShadowColor:a3];
  [v7 setShadowOffset:{width, height}];

  return v7;
}

- (void)_styleBackBarButtonItem:(id)a3
{
  v4 = self;
  if ([(SUControlAppearance *)[(SUUIAppearance *)self backButtonAppearance] numberOfImages])
  {
    v4 = [(SUUIAppearance *)v4 backButtonAppearance];
  }

  [(SUUIAppearance *)v4 styleBarButtonItem:a3];
}

+ (id)_defaultBackButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [(SUControlAppearance *)v3 setTitlePositionAdjustment:0 forBarMetrics:4.0, 0.0];
  [(SUControlAppearance *)v3 setTitlePositionAdjustment:1 forBarMetrics:2.0, 0.0];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultBack" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 14.0, 0.0, 6.0}], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultBack" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 10.0, 0.0, 4.0}], 0, 1);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultBackPressed" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 14.0, 0.0, 6.0}], 1, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultBackPressed" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 10.0, 0.0, 4.0}], 1, 1);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v7 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"blackColor"), 0.0, -1.0}];
  [v5 setObject:v7 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  return v3;
}

+ (id)_defaultButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultButton" inBundle:v4], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultButton" inBundle:v4], 0, 1);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultButtonPressed" inBundle:v4], 1, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultButtonPressed" inBundle:v4], 1, 1);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  v7 = *MEMORY[0x1E69DB650];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v8 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"blackColor"), 0.0, -1.0}];
  v9 = *MEMORY[0x1E69DB6A8];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 0.490196078, 1.0), v7}];
  [v10 setObject:objc_msgSend(a1 forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(MEMORY[0x1E69DC888], "blackColor"), 0.0, -1.0), v9}];
  [(SUControlAppearance *)v3 setTextAttributes:v10 forState:2];

  return v3;
}

+ (id)_defaultConfirmationButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarGreenBuyButton" inBundle:v4], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarGreenBuyButtonPressed" inBundle:v4], 1, 0);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v7 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"colorWithWhite:alpha:", 0.0, 0.5), 0.0, -1.0}];
  [v5 setObject:v7 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  return v3;
}

+ (id)_defaultDestructiveButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDestroyButton" inBundle:v4], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDestroyButton" inBundle:v4], 0, 1);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDestroyButtonPressed" inBundle:v4], 1, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDestroyButtonPressed" inBundle:v4], 1, 1);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  v7 = *MEMORY[0x1E69DB650];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v8 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"colorWithWhite:alpha:", 0.0, 0.5), 0.0, 1.0}];
  v9 = *MEMORY[0x1E69DB6A8];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 0.784313725, 1.0), v7}];
  [v10 setObject:objc_msgSend(a1 forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.5), 0.0, 1.0), v9}];
  [(SUControlAppearance *)v3 setTextAttributes:v10 forState:2];

  return v3;
}

+ (id)_defaultDoneButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDoneButton" inBundle:v4], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDoneButton" inBundle:v4], 0, 1);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDoneButtonPressed" inBundle:v4], 1, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDoneButtonPressed" inBundle:v4], 1, 1);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.278431373 alpha:1.0];
  v7 = *MEMORY[0x1E69DB650];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v8 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"colorWithWhite:alpha:", 1.0, 0.5), 0.0, 1.0}];
  v9 = *MEMORY[0x1E69DB6A8];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"colorWithWhite:alpha:", 0.447058824, 1.0), v7}];
  [v10 setObject:objc_msgSend(a1 forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 1.0, 0.5), 0.0, 1.0), v9}];
  [(SUControlAppearance *)v3 setTextAttributes:v10 forState:2];

  return v3;
}

+ (id)_defaultForwardButtonAppearance
{
  v3 = objc_alloc_init(SUControlAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [(SUControlAppearance *)v3 setTitlePositionAdjustment:0 forBarMetrics:-4.0, 0.0];
  [(SUControlAppearance *)v3 setTitlePositionAdjustment:1 forBarMetrics:-2.0, 0.0];
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultForward" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 6.0, 0.0, 14.0}], 0, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultForward" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 4.0, 0.0, 10.0}], 0, 1);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarDefaultForwardPressed" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 6.0, 0.0, 14.0}], 1, 0);
  -[SUControlAppearance setImage:forState:barMetrics:](v3, "setImage:forState:barMetrics:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UINavigationBarMiniDefaultForwardPressed" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 4.0, 0.0, 10.0}], 1, 1);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v7 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"blackColor"), 0.0, -1.0}];
  [v5 setObject:v7 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:0];
  [(SUControlAppearance *)v3 setTextAttributes:v5 forState:1];

  return v3;
}

+ (id)_defaultTabBarAppearance
{
  v3 = objc_alloc_init(SUTabBarAppearance);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  -[SUTabBarAppearance setBackgroundImage:](v3, "setBackgroundImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"UITabBarBG" inBundle:v4]);
  -[SUTabBarAppearance setDividerImage:](v3, "setDividerImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"UITabBarSeparator" inBundle:v4]);
  -[SUTabBarAppearance setSelectedDividerImage:](v3, "setSelectedDividerImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"UITabBarSeparatorActive" inBundle:v4]);
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    [(SUTabBarAppearance *)v3 setTabBarButtonSpacing:0.0];
    [(SUTabBarAppearance *)v3 setTabBarButtonWidth:100.0];
  }

  -[SUTabBarAppearance setSelectionIndicatorImage:](v3, "setSelectionIndicatorImage:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"UITabBarActiveSegment" inBundle:{v4), "resizableImageWithCapInsets:", 0.0, 4.0, 0.0, 4.0}]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.784313725 alpha:1.0];
  v7 = *MEMORY[0x1E69DB650];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB650]];
  v8 = [a1 _defaultShadowWithColor:objc_msgSend(MEMORY[0x1E69DC888] offset:{"blackColor"), 0.0, -1.0}];
  v9 = *MEMORY[0x1E69DB6A8];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69DB6A8]];
  [(SUTabBarAppearance *)v3 setTitleTextAttributes:v5 forState:0];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E69DC888] forKey:{"whiteColor"), v7}];
  [v10 setObject:objc_msgSend(a1 forKey:{"_defaultShadowWithColor:offset:", objc_msgSend(MEMORY[0x1E69DC888], "colorWithWhite:alpha:", 0.0, 0.9), 0.0, 1.0), v9}];
  [(SUTabBarAppearance *)v3 setTitleTextAttributes:v10 forState:4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(SUControlAppearance *)self->_backButtonAppearance copyWithZone:a3];
  *(v5 + 16) = [(SUControlAppearance *)self->_confirmationButtonAppearance copyWithZone:a3];
  *(v5 + 32) = [(SUControlAppearance *)self->_exitStoreButtonAppearance copyWithZone:a3];
  *(v5 + 40) = [(SUControlAppearance *)self->_forwardButtonAppearance copyWithZone:a3];
  *(v5 + 48) = self->_isDefaultAppearance;
  *(v5 + 56) = [(NSMutableDictionary *)self->_navigationBarBackgroundImages mutableCopyWithZone:a3];
  *(v5 + 64) = [(NSDictionary *)self->_navigationBarTitleTextAttributes copyWithZone:a3];
  *(v5 + 72) = [(NSMutableDictionary *)self->_navigationButtonAppearance copyWithZone:a3];
  *(v5 + 80) = [(NSMutableDictionary *)self->_segmentedControlAppearance mutableCopyWithZone:a3];
  *(v5 + 88) = [(SUTabBarAppearance *)self->_tabBarAppearance copyWithZone:a3];
  *(v5 + 96) = [(SUToolbarAppearance *)self->_toolbarAppearance copyWithZone:a3];
  return v5;
}

@end