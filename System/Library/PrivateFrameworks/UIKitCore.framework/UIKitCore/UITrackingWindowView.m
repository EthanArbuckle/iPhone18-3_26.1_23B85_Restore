@interface UITrackingWindowView
- (CGPoint)offsetOrigin;
- (CGRect)_accessoryViewFrame;
- (UIScreen)hostingScreen;
- (UITrackingWindowView)initWithFrame:(CGRect)a3;
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

@implementation UITrackingWindowView

- (UITrackingWindowView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UITrackingWindowView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v10.receiver = v3;
    v10.super_class = UITrackingWindowView;
    v5 = [(UIView *)&v10 _inheritedRenderConfig];
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

    [(UITrackingWindowView *)v4 _setRenderConfig:v8];
  }

  return v4;
}

- (void)dealloc
{
  hostedViews = self->_hostedViews;
  self->_hostedViews = 0;

  v4.receiver = self;
  v4.super_class = UITrackingWindowView;
  [(UIView *)&v4 dealloc];
}

- (void)_setRenderConfig:(id)a3
{
  v4 = a3;
  if ([(UIKBRenderConfig *)v4 lightKeyboard])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v6 remoteInputViewHost];

    v8 = [v7 inputViewWindow];
    v9 = [v8 rootViewController];
    [v9 setOverrideUserInterfaceStyle:v5];
  }

  else
  {
    [(UIView *)self setOverrideUserInterfaceStyle:v5];
  }

  renderConfig = self->_renderConfig;
  self->_renderConfig = v4;
  v11 = v4;

  v12 = [(UIView *)self _rootInputWindowController];
  [v12 updateGuideBackdropRenderConfig:v11 animated:0];

  v13.receiver = self;
  v13.super_class = UITrackingWindowView;
  [(UIView *)&v13 _setRenderConfig:v11];
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

- (CGRect)_accessoryViewFrame
{
  v2 = [(UITrackingWindowView *)self _inputWindowController];
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
  v8 = [(UITrackingWindowView *)self _inputWindowController];
  v9 = [v8 inputAccessoryView];
  [v9 setFrame:{x, y, width, height}];

  v10 = [(UITrackingWindowView *)self _inputWindowController];
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

  [(UITrackingWindowView *)self addSubview:v14];
}

- (void)addSubview:(id)a3
{
  v3.receiver = self;
  v3.super_class = UITrackingWindowView;
  [(UIView *)&v3 addSubview:a3];
}

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITrackingWindowView;
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
  v8.super_class = UITrackingWindowView;
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

  [(UITrackingWindowView *)self setFrame:v7, v9];
}

- (void)setFrame:(CGRect)a3
{
  v3 = a3.origin.x + self->_offsetOrigin.x;
  v4 = a3.origin.y + self->_offsetOrigin.y;
  v5.receiver = self;
  v5.super_class = UITrackingWindowView;
  [(UIView *)&v5 setFrame:v3, v4, a3.size.width, a3.size.height];
}

- (void)setCenter:(CGPoint)a3
{
  v3 = a3.x + self->_offsetOrigin.x;
  v4 = a3.y + self->_offsetOrigin.y;
  v5.receiver = self;
  v5.super_class = UITrackingWindowView;
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