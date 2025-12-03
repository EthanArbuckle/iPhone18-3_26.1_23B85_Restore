@interface _UILendableViewContainer
- (UIView)view;
- (_UILendableViewContainer)initWithView:(id)view;
- (_UILendableViewContainerDelegate)delegate;
- (id)description;
- (id)lend;
- (void)_returnView:(id)view;
@end

@implementation _UILendableViewContainer

- (UIView)view
{
  if (self->_loaned)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_view;
  }

  return v3;
}

- (id)lend
{
  if (self->_loaned)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:82 description:@"View has already been loaned out."];
  }

  self->_loaned = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained lendableViewContainer:self didBorrowView:self->_view];

  v4 = [[_UIBorrowedViewHandle alloc] _initWithView:self->_view lender:self];

  return v4;
}

- (_UILendableViewContainer)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UILendableViewContainer;
  v6 = [(_UILendableViewContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (void)_returnView:(id)view
{
  viewCopy = view;
  if (self->_view != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:73 description:@"View returned that didn't belong to lendable view."];
  }

  if (!self->_loaned)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:74 description:@"View returned that was not loaned out."];
  }

  self->_loaned = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained lendableViewContainer:self didReturnView:self->_view];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UILendableViewContainer;
  v3 = [(_UILendableViewContainer *)&v7 description];
  v4 = [v3 stringByAppendingFormat:@" view=%p", self->_view];

  if (self->_loaned)
  {
    v5 = [v4 stringByAppendingString:@" LOANED"];

    v4 = v5;
  }

  return v4;
}

- (_UILendableViewContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end