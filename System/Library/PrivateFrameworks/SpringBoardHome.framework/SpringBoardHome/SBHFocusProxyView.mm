@interface SBHFocusProxyView
- (BOOL)canBecomeFocused;
- (SBHFocusProxyView)initWithProxyableView:(id)view;
- (SBHFocusProxyable)proxyableView;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setFrame:(CGRect)frame;
@end

@implementation SBHFocusProxyView

- (SBHFocusProxyView)initWithProxyableView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v8.receiver = self;
  v8.super_class = SBHFocusProxyView;
  v5 = [(SBHFocusProxyView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxyableView, viewCopy);
    v6->_padding = 1.0;
    [(SBHFocusProxyView *)v6 setFocusEffect:0];
  }

  return v6;
}

- (void)setFrame:(CGRect)frame
{
  v5 = CGRectInset(frame, -self->_padding, -self->_padding);
  v4.receiver = self;
  v4.super_class = SBHFocusProxyView;
  [(SBHFocusProxyView *)&v4 setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (BOOL)canBecomeFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);
  focusProxyCanBecomeFocused = [WeakRetained focusProxyCanBecomeFocused];

  return focusProxyCanBecomeFocused;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);
  [WeakRetained didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (SBHFocusProxyable)proxyableView
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyableView);

  return WeakRetained;
}

@end