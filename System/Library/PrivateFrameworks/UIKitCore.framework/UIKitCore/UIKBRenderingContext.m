@interface UIKBRenderingContext
+ (id)renderingContextForRenderConfig:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIKBRenderingContext)initWithRenderConfig:(id)a3;
- (UIView)layoutView;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIKBRenderingContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIKBRenderingContext *)self shiftState];
    if (v6 == [v5 shiftState] && (v7 = -[UIKBRenderingContext isFloating](self, "isFloating"), v7 == objc_msgSend(v5, "isFloating")))
    {
      v9 = [(UIKBRenderingContext *)self renderConfig];
      v10 = [v5 renderConfig];
      v8 = v9 == v10;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIKBRenderingContext allocWithZone:?]];
  [(UIKBRenderingContext *)v4 setShiftState:[(UIKBRenderingContext *)self shiftState]];
  v5 = [(UIKBRenderingContext *)self renderConfig];
  [(UIKBRenderingContext *)v4 setRenderConfig:v5];

  [(UIKBRenderingContext *)v4 setIsFloating:[(UIKBRenderingContext *)self isFloating]];
  v6 = [(UIKBRenderingContext *)self layoutView];
  [(UIKBRenderingContext *)v4 setLayoutView:v6];

  return v4;
}

+ (id)renderingContextForRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRenderConfig:v4];

  return v5;
}

- (UIKBRenderingContext)initWithRenderConfig:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UIKBRenderingContext;
  v6 = [(UIKBRenderingContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_shiftState = 0;
    objc_storeStrong(&v6->_renderConfig, a3);
    v7->_isFloating = [v5 isFloating];
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 _layout];
    objc_storeWeak(&v7->_layoutView, v9);
  }

  return v7;
}

- (UIView)layoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutView);

  return WeakRetained;
}

@end