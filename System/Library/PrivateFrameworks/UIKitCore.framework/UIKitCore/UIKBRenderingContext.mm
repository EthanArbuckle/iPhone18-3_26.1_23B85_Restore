@interface UIKBRenderingContext
+ (id)renderingContextForRenderConfig:(id)config;
- (BOOL)isEqual:(id)equal;
- (UIKBRenderingContext)initWithRenderConfig:(id)config;
- (UIView)layoutView;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKBRenderingContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    shiftState = [(UIKBRenderingContext *)self shiftState];
    if (shiftState == [v5 shiftState] && (v7 = -[UIKBRenderingContext isFloating](self, "isFloating"), v7 == objc_msgSend(v5, "isFloating")))
    {
      renderConfig = [(UIKBRenderingContext *)self renderConfig];
      renderConfig2 = [v5 renderConfig];
      v8 = renderConfig == renderConfig2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBRenderingContext allocWithZone:?]];
  [(UIKBRenderingContext *)v4 setShiftState:[(UIKBRenderingContext *)self shiftState]];
  renderConfig = [(UIKBRenderingContext *)self renderConfig];
  [(UIKBRenderingContext *)v4 setRenderConfig:renderConfig];

  [(UIKBRenderingContext *)v4 setIsFloating:[(UIKBRenderingContext *)self isFloating]];
  layoutView = [(UIKBRenderingContext *)self layoutView];
  [(UIKBRenderingContext *)v4 setLayoutView:layoutView];

  return v4;
}

+ (id)renderingContextForRenderConfig:(id)config
{
  configCopy = config;
  v5 = [[self alloc] initWithRenderConfig:configCopy];

  return v5;
}

- (UIKBRenderingContext)initWithRenderConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = UIKBRenderingContext;
  v6 = [(UIKBRenderingContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_shiftState = 0;
    objc_storeStrong(&v6->_renderConfig, config);
    v7->_isFloating = [configCopy isFloating];
    v8 = +[UIKeyboardImpl activeInstance];
    _layout = [v8 _layout];
    objc_storeWeak(&v7->_layoutView, _layout);
  }

  return v7;
}

- (UIView)layoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutView);

  return WeakRetained;
}

@end