@interface UIEditMenuConfiguration
+ (UIEditMenuConfiguration)configurationWithIdentifier:(id)identifier sourcePoint:(CGPoint)sourcePoint;
- (CGPoint)sourcePoint;
- (UIResponder)_firstResponderTarget;
- (UIWindow)_overrideSourceWindow;
- (id)description;
@end

@implementation UIEditMenuConfiguration

+ (UIEditMenuConfiguration)configurationWithIdentifier:(id)identifier sourcePoint:(CGPoint)sourcePoint
{
  y = sourcePoint.y;
  x = sourcePoint.x;
  v7 = identifier;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v7)
  {
    [v8 setIdentifier:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    [v9 setIdentifier:v10];
  }

  [v9 setSourcePoint:{x, y}];
  [v9 set_ignoresPassthroughInView:0];
  [v9 set_preferredElementDisplayMode:0];

  return v9;
}

- (id)description
{
  v3 = [self _ui_descriptionBuilder];
  v4 = [(UIEditMenuConfiguration *)self identifier];
  v5 = [v3 appendName:@"identifier" object:v4];

  [(UIEditMenuConfiguration *)self sourcePoint];
  v6 = NSStringFromCGPoint(v14);
  v7 = [v3 appendName:@"sourcePoint" object:v6];

  v8 = [(UIEditMenuConfiguration *)self preferredArrowDirection]- 1;
  if (v8 > 3)
  {
    v9 = @".automatic";
  }

  else
  {
    v9 = off_1E712ABE8[v8];
  }

  v10 = [v3 appendName:@"arrowDirection" object:v9];
  v11 = [v3 string];

  return v11;
}

- (CGPoint)sourcePoint
{
  x = self->_sourcePoint.x;
  y = self->_sourcePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIResponder)_firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->__firstResponderTarget);

  return WeakRetained;
}

- (UIWindow)_overrideSourceWindow
{
  WeakRetained = objc_loadWeakRetained(&self->__overrideSourceWindow);

  return WeakRetained;
}

@end