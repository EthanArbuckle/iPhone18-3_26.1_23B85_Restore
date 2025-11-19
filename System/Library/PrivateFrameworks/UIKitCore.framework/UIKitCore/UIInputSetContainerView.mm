@interface UIInputSetContainerView
- (CGPoint)offsetOrigin;
- (CGRect)_accessoryViewFrame;
- (UIInputSetContainerView)initWithFrame:(CGRect)a3;
- (UIScreen)hostingScreen;
- (id)_containerForKeyplaneViews;
- (id)_inputWindowController;
- (void)_didRemoveSubview:(id)a3;
- (void)_setAccessoryViewFrame:(CGRect)a3;
- (void)_setRenderConfig:(id)a3;
- (void)addHostedView:(id)a3 withViewRemovalHandler:(id)a4;
- (void)addSubview:(id)a3;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)performWithoutGeometryObserverNotifications:(id)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setOffsetOrigin:(CGPoint)a3;
@end

@implementation UIInputSetContainerView

- (UIInputSetContainerView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = UIInputSetContainerView;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v11.receiver = v3;
    v11.super_class = UIInputSetContainerView;
    v5 = [(UIView *)&v11 _inheritedRenderConfig];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = +[UIKBRenderConfig defaultConfig];
    }

    v8 = v7;

    [(UIInputSetContainerView *)v4 _setRenderConfig:v8];
    v9 = [(UIView *)v4 layer];
    [v9 setSecurityMode:*MEMORY[0x1E6979E68]];
  }

  return v4;
}

- (void)dealloc
{
  hostedViews = self->_hostedViews;
  self->_hostedViews = 0;

  v4.receiver = self;
  v4.super_class = UIInputSetContainerView;
  [(UIView *)&v4 dealloc];
}

- (void)_setRenderConfig:(id)a3
{
  v5 = a3;
  if ([v5 lightKeyboard])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v8 = [v7 remoteInputViewHost];

    v9 = [v8 inputViewWindow];
    v10 = [v9 rootViewController];
    [v10 setOverrideUserInterfaceStyle:v6];
  }

  else
  {
    [(UIView *)self setOverrideUserInterfaceStyle:v6];
  }

  objc_storeStrong(&self->_renderConfig, a3);
  v11 = [(UIView *)self _rootInputWindowController];
  v12 = [v11 updateGuideBackdropRenderConfig:v5 animated:0];

  if ([v5 animatedBackground] && (v12 & 1) == 0)
  {
    v13 = [(UIView *)self _rootInputWindowController];
    [v13 updateBackdropRenderConfig:v5];
  }

  v14.receiver = self;
  v14.super_class = UIInputSetContainerView;
  [(UIView *)&v14 _setRenderConfig:v5];
}

- (id)_inputWindowController
{
  v2 = [(UIView *)self nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_containerForKeyplaneViews
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (!self->_containerForKeyplaneViews)
  {
    v3 = [UIInputActiveSetContainerView alloc];
    v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    containerForKeyplaneViews = self->_containerForKeyplaneViews;
    self->_containerForKeyplaneViews = v4;

    [(UIView *)self->_containerForKeyplaneViews setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIInputSetContainerView *)self addSubview:self->_containerForKeyplaneViews];
    v19 = MEMORY[0x1E69977A0];
    v24 = [(UIView *)self topAnchor];
    v23 = [(UIView *)self->_containerForKeyplaneViews topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v25[0] = v22;
    v21 = [(UIView *)self leftAnchor];
    v20 = [(UIView *)self->_containerForKeyplaneViews leftAnchor];
    v6 = [v21 constraintEqualToAnchor:v20];
    v25[1] = v6;
    v7 = [(UIView *)self widthAnchor];
    v8 = [(UIView *)self->_containerForKeyplaneViews widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v25[2] = v9;
    v10 = [(UIView *)self heightAnchor];
    v11 = [(UIView *)self->_containerForKeyplaneViews heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v25[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v13];
  }

  v14 = [(UIView *)self subviews];
  v15 = [v14 lastObject];
  v16 = self->_containerForKeyplaneViews;

  if (v15 != v16)
  {
    [(UIView *)self bringSubviewToFront:self->_containerForKeyplaneViews];
  }

  v17 = self->_containerForKeyplaneViews;

  return v17;
}

- (CGRect)_accessoryViewFrame
{
  v2 = [(UIInputSetContainerView *)self _inputWindowController];
  v3 = [v2 inputAccessoryView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_setAccessoryViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIInputSetContainerView *)self _inputWindowController];
  v9 = [v8 inputAccessoryView];
  [v9 setFrame:{x, y, width, height}];

  v10 = [(UIInputSetContainerView *)self _inputWindowController];
  [v10 setHostingNeedsLayout];
}

- (UIScreen)hostingScreen
{
  v2 = [(UIView *)self window];
  v3 = [v2 screen];

  return v3;
}

- (void)addHostedView:(id)a3 withViewRemovalHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subview must not be nil"];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"removalHandler must not be nil"];
LABEL_3:
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v14];
  v8 = [(NSMutableDictionary *)self->_hostedViews objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  hostedViews = self->_hostedViews;
  if (!hostedViews)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_hostedViews;
    self->_hostedViews = v11;

    hostedViews = self->_hostedViews;
  }

  v13 = [v6 copy];
  [(NSMutableDictionary *)hostedViews setObject:v13 forKey:v7];

  [(UIInputSetContainerView *)self addSubview:v14];
}

- (void)addSubview:(id)a3
{
  v3.receiver = self;
  v3.super_class = UIInputSetContainerView;
  [(UIView *)&v3 addSubview:a3];
}

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIInputSetContainerView;
  [(UIView *)&v6 didAddSubview:a3];
  v4 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIView *)self superview];
  }

  else
  {
    v5 = 0;
  }

  [v5 _sortSubviewsOfView:self];
}

- (void)_didRemoveSubview:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIInputSetContainerView;
  v4 = a3;
  [(UIView *)&v8 _didRemoveSubview:v4];
  v5 = [MEMORY[0x1E696B098] valueWithNonretainedObject:{v4, v8.receiver, v8.super_class}];

  v6 = [(NSMutableDictionary *)self->_hostedViews objectForKey:v5];
  if (v6)
  {
    [(NSMutableDictionary *)self->_hostedViews removeObjectForKey:v5];
    if (![(NSMutableDictionary *)self->_hostedViews count])
    {
      hostedViews = self->_hostedViews;
      self->_hostedViews = 0;
    }

    v6[2](v6);
  }
}

- (void)performWithoutGeometryObserverNotifications:(id)a3
{
  self->_disableGeometryObserverNotifications = 1;
  (*(a3 + 2))(a3, a2);
  self->_disableGeometryObserverNotifications = 0;
}

- (void)setOffsetOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self frame];
  v7 = v6 - self->_offsetOrigin.x;
  v9 = v8 - self->_offsetOrigin.y;
  self->_offsetOrigin.x = x;
  self->_offsetOrigin.y = y;
  [(UIView *)self frame];

  [(UIInputSetContainerView *)self setFrame:v7, v9];
}

- (void)setFrame:(CGRect)a3
{
  v3 = a3.origin.x + self->_offsetOrigin.x;
  v4 = a3.origin.y + self->_offsetOrigin.y;
  v5.receiver = self;
  v5.super_class = UIInputSetContainerView;
  [(UIView *)&v5 setFrame:v3, v4, a3.size.width, a3.size.height];
}

- (void)setCenter:(CGPoint)a3
{
  v3 = a3.x + self->_offsetOrigin.x;
  v4 = a3.y + self->_offsetOrigin.y;
  v5.receiver = self;
  v5.super_class = UIInputSetContainerView;
  [(UIView *)&v5 setCenter:v3, v4];
}

- (CGPoint)offsetOrigin
{
  x = self->_offsetOrigin.x;
  y = self->_offsetOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end