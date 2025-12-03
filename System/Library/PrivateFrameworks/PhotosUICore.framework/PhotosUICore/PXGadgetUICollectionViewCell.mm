@interface PXGadgetUICollectionViewCell
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setGadgetContentView:(id)view;
@end

@implementation PXGadgetUICollectionViewCell

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = PXGadgetUICollectionViewCell;
  [(PXGadgetUICollectionViewCell *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  if (nextFocusedItem == self)
  {
    gadgetContentView = [(PXGadgetUICollectionViewCell *)self gadgetContentView];
    if (gadgetContentView)
    {

LABEL_6:
      [(PXGadgetUICollectionViewCell *)self _updateFocusRing];
      goto LABEL_7;
    }
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
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

- (void)setGadgetContentView:(id)view
{
  viewCopy = view;
  gadgetContentView = self->_gadgetContentView;
  if (gadgetContentView != viewCopy)
  {
    superview = [(UIView *)gadgetContentView superview];
    contentView = [(PXGadgetUICollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_gadgetContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_gadgetContentView, view);
    v9 = self->_gadgetContentView;
    if (v9)
    {
      [(UIView *)v9 setAutoresizingMask:0];
      contentView2 = [(PXGadgetUICollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_gadgetContentView];

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