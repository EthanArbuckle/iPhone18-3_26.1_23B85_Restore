@interface SBHScrollableIconViewInteraction
- (SBHScrollableIconViewContaining)container;
- (SBHScrollableIconViewInteraction)initWithContainer:(id)a3;
- (id)_findInteractingIconView;
- (void)clippingScrollViewDidScroll:(id)a3;
- (void)updateScrolling:(BOOL)a3;
@end

@implementation SBHScrollableIconViewInteraction

- (SBHScrollableIconViewInteraction)initWithContainer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBHScrollableIconViewInteraction;
  v5 = [(SBHScrollableIconViewInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
  }

  return v6;
}

- (void)updateScrolling:(BOOL)a3
{
  if (a3)
  {
    v5 = [(SBHScrollableIconViewInteraction *)self _findInteractingIconView];
    objc_storeWeak(&self->_cachedInteractingIconView, v5);
  }

  else
  {
    p_cachedInteractingIconView = &self->_cachedInteractingIconView;

    objc_storeWeak(p_cachedInteractingIconView, 0);
  }
}

- (void)clippingScrollViewDidScroll:(id)a3
{
  v38 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cachedInteractingIconView);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained superview];
    [v5 frame];
    [v6 convertRect:v38 toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(SBHScrollableIconViewInteraction *)self _clippingFudgeInset];
    v16 = v15;
    v40.origin.x = v8;
    v40.origin.y = v10;
    v40.size.width = v12;
    v40.size.height = v14;
    v41 = CGRectInset(v40, v16, v16);
    y = v41.origin.y;
    x = v41.origin.x;
    height = v41.size.height;
    width = v41.size.width;
    [v38 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = objc_loadWeakRetained(&self->_container);
    [v25 visibleContainerInsets];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v42.origin.x = v18 + v29;
    v42.origin.y = v20 + v27;
    v42.size.width = v22 - (v29 + v33);
    v42.size.height = v24 - (v27 + v31);
    v43.origin.y = y;
    v43.origin.x = x;
    v43.size.height = height;
    v43.size.width = width;
    if (!CGRectContainsRect(v42, v43))
    {
      [(SBHScrollableIconViewInteraction *)self handleTargetIconViewClipped:v5];
      objc_storeWeak(&self->_cachedInteractingIconView, 0);
    }
  }
}

- (id)_findInteractingIconView
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SBHScrollableIconViewInteraction__findInteractingIconView__block_invoke;
  v6[3] = &unk_1E8089768;
  v6[4] = self;
  v6[5] = &v7;
  [WeakRetained enumerateScrollableIconViewsUsingBlock:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__SBHScrollableIconViewInteraction__findInteractingIconView__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) isIconViewTheInteractingTargetIconView:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SBHScrollableIconViewContaining)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end