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
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (v7)
  {
    [v8 setIdentifier:v7];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [v9 setIdentifier:uUID];
  }

  [v9 setSourcePoint:{x, y}];
  [v9 set_ignoresPassthroughInView:0];
  [v9 set_preferredElementDisplayMode:0];

  return v9;
}

- (id)description
{
  _ui_descriptionBuilder = [self _ui_descriptionBuilder];
  identifier = [(UIEditMenuConfiguration *)self identifier];
  v5 = [_ui_descriptionBuilder appendName:@"identifier" object:identifier];

  [(UIEditMenuConfiguration *)self sourcePoint];
  v6 = NSStringFromCGPoint(v14);
  v7 = [_ui_descriptionBuilder appendName:@"sourcePoint" object:v6];

  v8 = [(UIEditMenuConfiguration *)self preferredArrowDirection]- 1;
  if (v8 > 3)
  {
    v9 = @".automatic";
  }

  else
  {
    v9 = off_1E712ABE8[v8];
  }

  v10 = [_ui_descriptionBuilder appendName:@"arrowDirection" object:v9];
  string = [_ui_descriptionBuilder string];

  return string;
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