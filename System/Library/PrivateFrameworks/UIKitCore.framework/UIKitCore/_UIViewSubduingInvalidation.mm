@interface _UIViewSubduingInvalidation
- (UIView)parentView;
- (UIView)subduingView;
- (void)dealloc;
- (void)endSubduing;
@end

@implementation _UIViewSubduingInvalidation

- (void)endSubduing
{
  parentView = [(_UIViewSubduingInvalidation *)self parentView];
  subduingView = [(_UIViewSubduingInvalidation *)self subduingView];
  v5 = [parentView setSubduesSiblings:0 belowView:subduingView];

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