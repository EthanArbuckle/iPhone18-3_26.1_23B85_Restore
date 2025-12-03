@interface PKDashboardPassGroupItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPassGroupItemPresenter)initWithPassGroupView:(id)view sizeProvider:(id)provider;
- (PKDashboardPassGroupItemPresenterDelegate)delegate;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item;
@end

@implementation PKDashboardPassGroupItemPresenter

- (PKDashboardPassGroupItemPresenter)initWithPassGroupView:(id)view sizeProvider:(id)provider
{
  viewCopy = view;
  result = provider;
  if (viewCopy)
  {
    v9 = result;
    v12.receiver = self;
    v12.super_class = PKDashboardPassGroupItemPresenter;
    v10 = [(PKDashboardPassGroupItemPresenter *)&v12 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_groupView, view);
      objc_storeWeak(&v11->_sizeProvider, v9);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"groupItemPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"groupItemPresenter" forIndexPath:path];
  [(PKDashboardPassGroupItemPresenter *)self _configureCell:v9 forItem:itemCopy];

  return v9;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeProvider);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained referenceExternalModallyPresentedSizeForPassGroupView:self->_groupView];
    if (v29 == 1.0)
    {
      v10 = v26;
      v11 = v27;
      v12 = v28;
    }

    else
    {
      v10 = vmulq_n_f64(v26, v29);
      v11 = vmulq_n_f64(v27, v29);
      v12 = vmulq_n_f64(v28, v29);
    }

    v20 = vsubq_f64(vextq_s8(v10, v10, 8uLL), vaddq_f64(v11, v12));
  }

  else
  {
    [(PKPassGroupView *)self->_groupView sizeThatFits:width, 1.79769313e308];
    v23 = v14;
    v24 = v13;
    [(PKPassGroupView *)self->_groupView alignmentRectInsets];
    v16.f64[1] = v15;
    v18.f64[1] = v17;
    v19 = vaddq_f64(v16, v18);
    v18.f64[0] = v23;
    v18.f64[1] = v24;
    v20 = vsubq_f64(v18, v19);
  }

  v25 = v20;

  v21 = v25.f64[1];
  v22 = v25.f64[0];
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  [cellCopy setWantsCustomAppearance:1];
  [cellCopy setMaskType:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained shouldInsertPassGroupViewForPassGroupPresenter:self])
  {
    [cellCopy setGroupView:self->_groupView];
  }
}

- (PKDashboardPassGroupItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end