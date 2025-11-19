@interface _UILendableViewContainer
- (UIView)view;
- (_UILendableViewContainer)initWithView:(id)a3;
- (_UILendableViewContainerDelegate)delegate;
- (id)description;
- (id)lend;
- (void)_returnView:(id)a3;
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:82 description:@"View has already been loaned out."];
  }

  self->_loaned = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained lendableViewContainer:self didBorrowView:self->_view];

  v4 = [[_UIBorrowedViewHandle alloc] _initWithView:self->_view lender:self];

  return v4;
}

- (_UILendableViewContainer)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UILendableViewContainer;
  v6 = [(_UILendableViewContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (void)_returnView:(id)a3
{
  v8 = a3;
  if (self->_view != v8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:73 description:@"View returned that didn't belong to lendable view."];
  }

  if (!self->_loaned)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:74 description:@"View returned that was not loaned out."];
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