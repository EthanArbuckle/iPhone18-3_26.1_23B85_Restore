@interface PXGadgetUICollectionViewCell
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setGadgetContentView:(id)a3;
@end

@implementation PXGadgetUICollectionViewCell

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PXGadgetUICollectionViewCell;
  [(PXGadgetUICollectionViewCell *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  if (v7 == self)
  {
    v9 = [(PXGadgetUICollectionViewCell *)self gadgetContentView];
    if (v9)
    {

LABEL_6:
      [(PXGadgetUICollectionViewCell *)self _updateFocusRing];
      goto LABEL_7;
    }
  }

  v8 = [v6 previouslyFocusedItem];

  if (v8 == self)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXGadgetUICollectionViewCell;
  [(PXGadgetUICollectionViewCell *)&v3 prepareForReuse];
  [(PXGadgetUICollectionViewCell *)self setGadgetContentView:0];
}

- (void)setGadgetContentView:(id)a3
{
  v5 = a3;
  gadgetContentView = self->_gadgetContentView;
  if (gadgetContentView != v5)
  {
    v7 = [(UIView *)gadgetContentView superview];
    v8 = [(PXGadgetUICollectionViewCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_gadgetContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_gadgetContentView, a3);
    v9 = self->_gadgetContentView;
    if (v9)
    {
      [(UIView *)v9 setAutoresizingMask:0];
      v10 = [(PXGadgetUICollectionViewCell *)self contentView];
      [v10 addSubview:self->_gadgetContentView];

      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(&location, self);
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __53__PXGadgetUICollectionViewCell_setGadgetContentView___block_invoke;
        v15 = &unk_1E774C318;
        objc_copyWeak(&v16, &location);
        [(UIView *)self->_gadgetContentView setFocusInfoChangeHandler:&v12];
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }

      v11 = [(PXGadgetUICollectionViewCell *)self contentView:v12];
      [v11 setNeedsLayout];
    }
  }
}

void __53__PXGadgetUICollectionViewCell_setGadgetContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isFocused];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _updateFocusRing];
  }
}

id __48__PXGadgetUICollectionViewCell__updateFocusRing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) gadgetContentView];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 focusInfo];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end