@interface _TPNumberPadCircleBackgroundView
- (UIControl)proxyControl;
- (_TPNumberPadCircleBackgroundView)initWithFrame:(CGRect)frame;
- (void)touchCancel:(id)cancel;
- (void)touchDown:(id)down;
- (void)touchUpInside:(id)inside;
- (void)touchUpOutside:(id)outside;
@end

@implementation _TPNumberPadCircleBackgroundView

- (_TPNumberPadCircleBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TPNumberPadCircleBackgroundView;
  v3 = [(_TPNumberPadCircleBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TPNumberPadCircleBackgroundView *)v3 addTarget:v3 action:sel_touchDown_ forControlEvents:1];
    [(_TPNumberPadCircleBackgroundView *)v4 addTarget:v4 action:sel_touchUpInside_ forControlEvents:64];
    [(_TPNumberPadCircleBackgroundView *)v4 addTarget:v4 action:sel_touchUpOutside_ forControlEvents:128];
    [(_TPNumberPadCircleBackgroundView *)v4 addTarget:v4 action:sel_touchCancel_ forControlEvents:256];
  }

  return v4;
}

- (void)touchDown:(id)down
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:1];
}

- (void)touchUpInside:(id)inside
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:64];
}

- (void)touchUpOutside:(id)outside
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:128];
}

- (void)touchCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:256];
}

- (UIControl)proxyControl
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);

  return WeakRetained;
}

@end