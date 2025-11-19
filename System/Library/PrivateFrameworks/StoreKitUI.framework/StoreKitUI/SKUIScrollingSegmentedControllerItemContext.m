@interface SKUIScrollingSegmentedControllerItemContext
- (SKUIScrollingSegmentedControllerItemContext)initWithViewController:(id)a3;
- (SKUIScrollingSegmentedControllerItemContextDelegate)delegate;
- (void)_applyNewContentInset:(UIEdgeInsets)a3 withOldContentInset:(UIEdgeInsets)a4 toContentScrollView:(id)a5;
- (void)applyNewContentInset:(UIEdgeInsets)a3;
- (void)updateAppliedContentInsetsAdjustment;
@end

@implementation SKUIScrollingSegmentedControllerItemContext

- (SKUIScrollingSegmentedControllerItemContext)initWithViewController:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingSegmentedControllerItemContext initWithViewController:];
  }

  v9.receiver = self;
  v9.super_class = SKUIScrollingSegmentedControllerItemContext;
  v6 = [(SKUIScrollingSegmentedControllerItemContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_viewController, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)applyNewContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_desiredContentInsetsAdjustment.top, v3), vceqq_f64(*&self->_desiredContentInsetsAdjustment.bottom, v4)))) & 1) == 0)
  {
    self->_desiredContentInsetsAdjustment = a3;
    [(SKUIScrollingSegmentedControllerItemContext *)self updateAppliedContentInsetsAdjustment];
  }
}

- (void)updateAppliedContentInsetsAdjustment
{
  v3 = [(UIViewController *)self->_viewController contentScrollView];
  insetAdjustedContentScrollView = self->_insetAdjustedContentScrollView;
  obj = v3;
  if (insetAdjustedContentScrollView == v3)
  {
    if (insetAdjustedContentScrollView)
    {
LABEL_5:
      [(SKUIScrollingSegmentedControllerItemContext *)self _applyNewContentInset:self->_desiredContentInsetsAdjustment.top withOldContentInset:self->_desiredContentInsetsAdjustment.left toContentScrollView:self->_desiredContentInsetsAdjustment.bottom, self->_desiredContentInsetsAdjustment.right, self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
      *&self->_appliedContentInsetsAdjustment.top = *&self->_desiredContentInsetsAdjustment.top;
      *&self->_appliedContentInsetsAdjustment.bottom = *&self->_desiredContentInsetsAdjustment.bottom;
    }
  }

  else
  {
    v5 = MEMORY[0x277D768C8];
    if (insetAdjustedContentScrollView)
    {
      [(SKUIScrollingSegmentedControllerItemContext *)self _applyNewContentInset:insetAdjustedContentScrollView withOldContentInset:*MEMORY[0x277D768C8] toContentScrollView:*(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
    }

    v6 = v5[1];
    *&self->_appliedContentInsetsAdjustment.top = *v5;
    *&self->_appliedContentInsetsAdjustment.bottom = v6;
    objc_storeStrong(&self->_insetAdjustedContentScrollView, obj);
    if (self->_insetAdjustedContentScrollView)
    {
      goto LABEL_5;
    }
  }

  if (insetAdjustedContentScrollView != obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained contentScrollViewDidChangeForScrollingSegmentedControllerItemContext:self];
    }
  }
}

- (void)_applyNewContentInset:(UIEdgeInsets)a3 withOldContentInset:(UIEdgeInsets)a4 toContentScrollView:(id)a5
{
  if (a4.left != a3.left || a4.top != a3.top || a4.right != a3.right || a4.bottom != a3.bottom)
  {
    right = a4.right;
    bottom = a4.bottom;
    left = a4.left;
    top = a4.top;
    v13 = a3.right;
    v14 = a3.bottom;
    v15 = a3.left;
    v16 = a3.top;
    v37 = a5;
    [v37 contentInset];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    [v37 scrollIndicatorInsets];
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    [v37 contentOffset];
    v35 = v26;
    v36 = v25;
    [v37 setContentInset:{v16 + v27 - top, v15 + v28 - left, v14 + v29 - bottom, v13 + v30 - right}];
    [v37 setScrollIndicatorInsets:{v16 + v31 - top, v15 + v32 - left, v14 + v33 - bottom, v13 + v34 - right}];
    [v37 setContentOffset:{v36, top + v35 - v16}];
  }
}

- (SKUIScrollingSegmentedControllerItemContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingSegmentedControllerItemContext initWithViewController:]";
}

@end