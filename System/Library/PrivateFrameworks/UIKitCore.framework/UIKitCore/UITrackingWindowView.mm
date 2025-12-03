@interface UITrackingWindowView
- (CGPoint)offsetOrigin;
- (CGRect)_accessoryViewFrame;
- (UIScreen)hostingScreen;
- (UITrackingWindowView)initWithFrame:(CGRect)frame;
- (id)_inputWindowController;
- (void)_didRemoveSubview:(id)subview;
- (void)_setAccessoryViewFrame:(CGRect)frame;
- (void)_setRenderConfig:(id)config;
- (void)addHostedView:(id)view withViewRemovalHandler:(id)handler;
- (void)addSubview:(id)subview;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)performWithoutGeometryObserverNotifications:(id)notifications;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setOffsetOrigin:(CGPoint)origin;
@end

@implementation UITrackingWindowView

- (UITrackingWindowView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = UITrackingWindowView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v10.receiver = v3;
    v10.super_class = UITrackingWindowView;
    _inheritedRenderConfig = [(UIView *)&v10 _inheritedRenderConfig];
    v6 = _inheritedRenderConfig;
    if (_inheritedRenderConfig)
    {
      v7 = _inheritedRenderConfig;
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

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  if ([(UIKBRenderConfig *)configCopy lightKeyboard])
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
    remoteInputViewHost = [v6 remoteInputViewHost];

    inputViewWindow = [remoteInputViewHost inputViewWindow];
    rootViewController = [inputViewWindow rootViewController];
    [rootViewController setOverrideUserInterfaceStyle:v5];
  }

  else
  {
    [(UIView *)self setOverrideUserInterfaceStyle:v5];
  }

  renderConfig = self->_renderConfig;
  self->_renderConfig = configCopy;
  v11 = configCopy;

  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  [_rootInputWindowController updateGuideBackdropRenderConfig:v11 animated:0];

  v13.receiver = self;
  v13.super_class = UITrackingWindowView;
  [(UIView *)&v13 _setRenderConfig:v11];
}

- (id)_inputWindowController
{
  nextResponder = [(UIView *)self nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = nextResponder;
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
  _inputWindowController = [(UITrackingWindowView *)self _inputWindowController];
  inputAccessoryView = [_inputWindowController inputAccessoryView];
  [inputAccessoryView frame];
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

- (void)_setAccessoryViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _inputWindowController = [(UITrackingWindowView *)self _inputWindowController];
  inputAccessoryView = [_inputWindowController inputAccessoryView];
  [inputAccessoryView setFrame:{x, y, width, height}];

  _inputWindowController2 = [(UITrackingWindowView *)self _inputWindowController];
  [_inputWindowController2 setHostingNeedsLayout];
}

- (UIScreen)hostingScreen
{
  window = [(UIView *)self window];
  screen = [window screen];

  return screen;
}

- (void)addHostedView:(id)view withViewRemovalHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  if (viewCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subview must not be nil"];
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"removalHandler must not be nil"];
LABEL_3:
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:viewCopy];
  v8 = [(NSMutableDictionary *)self->_hostedViews objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  hostedViews = self->_hostedViews;
  if (!hostedViews)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_hostedViews;
    self->_hostedViews = dictionary;

    hostedViews = self->_hostedViews;
  }

  v13 = [handlerCopy copy];
  [(NSMutableDictionary *)hostedViews setObject:v13 forKey:v7];

  [(UITrackingWindowView *)self addSubview:viewCopy];
}

- (void)addSubview:(id)subview
{
  v3.receiver = self;
  v3.super_class = UITrackingWindowView;
  [(UIView *)&v3 addSubview:subview];
}

- (void)didAddSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = UITrackingWindowView;
  [(UIView *)&v6 didAddSubview:subview];
  superview = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview2 = [(UIView *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  [superview2 _sortSubviewsOfView:self];
}

- (void)_didRemoveSubview:(id)subview
{
  v8.receiver = self;
  v8.super_class = UITrackingWindowView;
  subviewCopy = subview;
  [(UIView *)&v8 _didRemoveSubview:subviewCopy];
  v5 = [MEMORY[0x1E696B098] valueWithNonretainedObject:{subviewCopy, v8.receiver, v8.super_class}];

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

- (void)performWithoutGeometryObserverNotifications:(id)notifications
{
  self->_disableGeometryObserverNotifications = 1;
  (*(notifications + 2))(notifications, a2);
  self->_disableGeometryObserverNotifications = 0;
}

- (void)setOffsetOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [(UIView *)self frame];
  v7 = v6 - self->_offsetOrigin.x;
  v9 = v8 - self->_offsetOrigin.y;
  self->_offsetOrigin.x = x;
  self->_offsetOrigin.y = y;
  [(UIView *)self frame];

  [(UITrackingWindowView *)self setFrame:v7, v9];
}

- (void)setFrame:(CGRect)frame
{
  v3 = frame.origin.x + self->_offsetOrigin.x;
  v4 = frame.origin.y + self->_offsetOrigin.y;
  v5.receiver = self;
  v5.super_class = UITrackingWindowView;
  [(UIView *)&v5 setFrame:v3, v4, frame.size.width, frame.size.height];
}

- (void)setCenter:(CGPoint)center
{
  v3 = center.x + self->_offsetOrigin.x;
  v4 = center.y + self->_offsetOrigin.y;
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