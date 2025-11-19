@interface _UIBorrowedViewHandle
- (_UILendableViewContainer)lender;
- (id)_initWithView:(id)a3 lender:(id)a4;
- (void)returnView;
@end

@implementation _UIBorrowedViewHandle

- (id)_initWithView:(id)a3 lender:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIBorrowedViewHandle;
  v9 = [(_UIBorrowedViewHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_lender, v8);
    objc_storeStrong(&v10->_view, a3);
    v10->_valid = 1;
  }

  return v10;
}

- (void)returnView
{
  if (![(_UIBorrowedViewHandle *)self isValid])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UILendableViewContainer.m" lineNumber:35 description:@"View has already been returned"];
  }

  [(UIView *)self->_view removeFromSuperview];
  WeakRetained = objc_loadWeakRetained(&self->_lender);
  [WeakRetained _returnView:self->_view];

  self->_valid = 0;
}

- (_UILendableViewContainer)lender
{
  WeakRetained = objc_loadWeakRetained(&self->_lender);

  return WeakRetained;
}

@end