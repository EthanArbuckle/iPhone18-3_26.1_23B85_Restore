@interface _TPNumberPadCircleBackgroundView
- (UIControl)proxyControl;
- (_TPNumberPadCircleBackgroundView)initWithFrame:(CGRect)a3;
- (void)touchCancel:(id)a3;
- (void)touchDown:(id)a3;
- (void)touchUpInside:(id)a3;
- (void)touchUpOutside:(id)a3;
@end

@implementation _TPNumberPadCircleBackgroundView

- (_TPNumberPadCircleBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TPNumberPadCircleBackgroundView;
  v3 = [(_TPNumberPadCircleBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)touchDown:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:1];
}

- (void)touchUpInside:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:64];
}

- (void)touchUpOutside:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyControl);
  [WeakRetained sendActionsForControlEvents:128];
}

- (void)touchCancel:(id)a3
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