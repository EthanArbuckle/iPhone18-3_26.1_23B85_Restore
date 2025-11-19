@interface SBHFocusProxyView
- (BOOL)canBecomeFocused;
- (SBHFocusProxyView)initWithProxyableView:(id)a3;
- (SBHFocusProxyable)proxyableView;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation SBHFocusProxyView

- (SBHFocusProxyView)initWithProxyableView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v8.receiver = self;
  v8.super_class = SBHFocusProxyView;
  v5 = [(SBHFocusProxyView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxyableView, v4);
    v6->_padding = 1.0;
    [(SBHFocusProxyView *)v6 setFocusEffect:0];
  }

  return v6;
}

- (void)setFrame:(CGRect)a3
{
  v5 = CGRectInset(a3, -self->_padding, -self->_padding);
  v4.receiver = self;
  v4.super_class = SBHFocusProxyView;
  [(SBHFocusProxyView *)&v4 setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (BOOL)canBecomeFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);
  v3 = [WeakRetained focusProxyCanBecomeFocused];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);
  [WeakRetained didUpdateFocusInContext:v7 withAnimationCoordinator:v6];
}

- (SBHFocusProxyable)proxyableView
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);

  return WeakRetained;
}

@end