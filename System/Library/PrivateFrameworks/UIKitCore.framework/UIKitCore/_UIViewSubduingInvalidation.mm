@interface _UIViewSubduingInvalidation
- (UIView)parentView;
- (UIView)subduingView;
- (void)dealloc;
- (void)endSubduing;
@end

@implementation _UIViewSubduingInvalidation

- (void)endSubduing
{
  v3 = [(_UIViewSubduingInvalidation *)self parentView];
  v4 = [(_UIViewSubduingInvalidation *)self subduingView];
  v5 = [v3 setSubduesSiblings:0 belowView:v4];

  self->_didInvalidate = 1;
}

- (void)dealloc
{
  if (!self->_didInvalidate)
  {
    [(_UIViewSubduingInvalidation *)self endSubduing];
  }

  v3.receiver = self;
  v3.super_class = _UIViewSubduingInvalidation;
  [(_UIViewSubduingInvalidation *)&v3 dealloc];
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (UIView)subduingView
{
  WeakRetained = objc_loadWeakRetained(&self->_subduingView);

  return WeakRetained;
}

@end