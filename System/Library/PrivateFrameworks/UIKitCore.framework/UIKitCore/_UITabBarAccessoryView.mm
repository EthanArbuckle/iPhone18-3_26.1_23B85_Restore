@interface _UITabBarAccessoryView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGSize)preferredSize;
- (_UITabBarAccessoryView)init;
- (_UITabBarAccessoryView)initWithFrame:(CGRect)frame;
- (void)commonInit;
@end

@implementation _UITabBarAccessoryView

- (_UITabBarAccessoryView)init
{
  v5.receiver = self;
  v5.super_class = _UITabBarAccessoryView;
  v2 = [(UIView *)&v5 initWithFrame:0.0, 0.0, 200.0, 68.0];
  v3 = v2;
  if (v2)
  {
    [(_UITabBarAccessoryView *)v2 commonInit];
  }

  return v3;
}

- (_UITabBarAccessoryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UITabBarAccessoryView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UITabBarAccessoryView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UIView);
  contentView = self->_contentView;
  self->_contentView = v3;

  [(UIView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView setAutoresizingMask:18];
  v5 = self->_contentView;

  [(UIView *)self addSubview:v5];
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = _UITabBarAccessoryView;
  if ([(UIView *)&v9 shouldUpdateFocusInContext:contextCopy])
  {
    nextFocusedView = [contextCopy nextFocusedView];
    if ([nextFocusedView isDescendantOfView:self])
    {
      if ([contextCopy focusHeading] == 4)
      {

LABEL_9:
        _isInitialMovement = [contextCopy _isInitialMovement];
        goto LABEL_10;
      }

      focusHeading = [contextCopy focusHeading];

      if (focusHeading == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    _isInitialMovement = 1;
  }

  else
  {
    _isInitialMovement = 0;
  }

LABEL_10:

  return _isInitialMovement;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end