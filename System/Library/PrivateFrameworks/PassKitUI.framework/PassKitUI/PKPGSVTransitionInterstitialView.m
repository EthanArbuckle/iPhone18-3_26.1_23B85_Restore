@interface PKPGSVTransitionInterstitialView
- (CGFloat)resolveIndeterminatePositionWithPriorItemFrame:(CGFloat)a3 animated:(CGFloat)a4;
- (double)_setCurrentItem:(int)a3 withDefaultSize:(char)a4 force:(double)a5 animated:(double)a6;
- (double)pushItem:(double)a3 withDefaultSize:(double)a4 containerAlpha:(double)a5;
- (double)updateCurrentItem:(double)a3 withDefaultSize:(double)a4 containerAlpha:(double)a5;
- (id)_initForItem:(void *)a3 inView:(void *)a4 withSpringFactory:(void *)a5 dismissalSpringFactory:(void *)a6 defaultSize:(double)a7 containerAlpha:(double)a8 activationObserver:(double)a9;
- (void)_incrementAnimationCount;
- (void)_pruneObsoleteSnapshots;
- (void)_setContainerAlpha:(double)a3 animated:;
- (void)_setPosition:(uint64_t)a1 animated:(int)a2;
- (void)_setPreviousItem:(int)a3 withDefaultSize:(char)a4 force:(double)a5 animated:(double)a6;
- (void)_swapItemsAnimated:(uint64_t)a1;
- (void)_updateActive;
- (void)_updatePositionAnimated:(uint64_t)a1;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAnchorPoint:(CGPoint)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PKPGSVTransitionInterstitialView

- (id)_initForItem:(void *)a3 inView:(void *)a4 withSpringFactory:(void *)a5 dismissalSpringFactory:(void *)a6 defaultSize:(double)a7 containerAlpha:(double)a8 activationObserver:(double)a9
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  result = a6;
  if (v19)
  {
    v22 = result;
    v35.receiver = a1;
    v35.super_class = PKPGSVTransitionInterstitialView;
    v23 = objc_msgSendSuper2(&v35, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    v24 = v23;
    if (v23)
    {
      objc_storeStrong(v23 + 53, a4);
      objc_storeStrong((v24 + 432), a5);
      v25 = !UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityIsReduceMotionEnabled();
      *(v24 + 408) = v25;
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = *(v24 + 512);
      *(v24 + 512) = v26;

      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = *(v24 + 520);
      *(v24 + 520) = v28;

      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = *(v24 + 528);
      *(v24 + 528) = v30;

      [v18 addSubview:v24];
      [(PKPGSVTransitionInterstitialView *)v24 _setContainerAlpha:a9 animated:?];
      [(PKPGSVTransitionInterstitialView *)v24 _setCurrentItem:v17 withDefaultSize:1 force:0 animated:a7, a8];
      [(PKPGSVTransitionInterstitialView *)v24 _setPreviousItem:1 withDefaultSize:0 force:*MEMORY[0x1E695F060] animated:*(MEMORY[0x1E695F060] + 8)];
      if (v17)
      {
        [(PKPGSVTransitionInterstitialView *)v24 _updatePositionAnimated:?];
      }

      [(PKPGSVTransitionInterstitialView *)v24 _updateActive];
      v32 = _Block_copy(v22);
      v33 = *(v24 + 440);
      *(v24 + 440) = v32;

      v34 = *(v24 + 440);
      if (v34)
      {
        if (*(v24 + 412) == 1)
        {
          (*(v34 + 16))(v34, 1);
        }
      }
    }

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_setContainerAlpha:(double)a3 animated:
{
  v6 = [a1 layer];
  v7 = 0;
  v17 = 0;
  if (a2)
  {
    v7 = a1[53];
  }

  [a1 pkui_setAlpha:v7 withAnimationFactory:&v17 animation:0 removePriorAnimation:a3];
  if (v17)
  {
    v9 = [(PKPGSVTransitionInterstitialView *)a1 _incrementAnimationCount];
    v10 = v17;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __64__PKPGSVTransitionInterstitialView__setContainerAlpha_animated___block_invoke;
    v15 = &unk_1E8010AD8;
    v16 = v9;
    v11 = v9;
    [v10 pkui_setCompletionHandler:&v12];
    [v6 removeAnimationForKey:{@"opacity", v12, v13, v14, v15}];
    [v6 addAnimation:v17 forKey:@"opacity"];
  }

  else if (v8 != a3)
  {
    [v6 removeAnimationForKey:@"opacity"];
  }
}

- (double)_setCurrentItem:(int)a3 withDefaultSize:(char)a4 force:(double)a5 animated:(double)a6
{
  v12 = a2;
  v13 = v12;
  if ((*(a1 + 413) & 1) == 0)
  {
    if (*(a1 + 448) == v12 && (a3 & 1) == 0)
    {
      goto LABEL_18;
    }

    [a1 layoutIfNeeded];
    if (*(a1 + 456))
    {
      v14 = a3 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      [*(a1 + 512) addObject:?];
      v15 = *(a1 + 456);
      *(a1 + 456) = 0;
    }

    if (*(a1 + 464))
    {
      [*(a1 + 520) addObject:?];
      v16 = *(a1 + 464);
      *(a1 + 464) = 0;
    }

    v17 = *(a1 + 472);
    if (v17)
    {
      v18 = *(a1 + 528);
      v19 = _Block_copy(v17);
      [v18 addObject:v19];

      v20 = *(a1 + 472);
      *(a1 + 472) = 0;
    }

    objc_storeStrong((a1 + 448), a2);
    if (v13)
    {
      v21 = *(a1 + 408);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __83__PKPGSVTransitionInterstitialView__setCurrentItem_withDefaultSize_force_animated___block_invoke;
      v27[3] = &unk_1E8023AC0;
      v27[4] = a1;
      [(PKPGSVTransitionInterstitialItem *)v13 beginTrackingWithConfiguration:v21 handler:v27];
    }

    else if (!*(a1 + 456))
    {
      v22 = [[PKPGSVTransitionInterstitialSnapshotContainerView alloc] initWithSnapshotSize:a5, a6];
      v23 = *(a1 + 456);
      *(a1 + 456) = v22;

      v24 = *(a1 + 456);
      [a1 anchorPoint];
      [v24 setAnchorPoint:?];
      [*(a1 + 456) setHidden:1];
      [a1 addSubview:*(a1 + 456)];
    }

    [a1 setNeedsLayout];
    *(a1 + 409) = a4;
    [a1 layoutIfNeeded];
    *(a1 + 409) = 0;
    [(PKPGSVTransitionInterstitialView *)a1 _pruneObsoleteSnapshots];
    if (*(a1 + 448))
    {
LABEL_18:
      v25 = *(a1 + 456);
      if (v25)
      {
        a5 = *(v25 + 408);
      }

      else
      {
        a5 = 0.0;
      }
    }
  }

  return a5;
}

- (void)_setPreviousItem:(int)a3 withDefaultSize:(char)a4 force:(double)a5 animated:(double)a6
{
  v12 = a2;
  v13 = v12;
  if ((*(a1 + 413) & 1) == 0 && (*(a1 + 480) != v12 || a3 != 0))
  {
    [a1 layoutIfNeeded];
    if (*(a1 + 488))
    {
      v15 = a3 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [*(a1 + 512) addObject:?];
      v16 = *(a1 + 488);
      *(a1 + 488) = 0;
    }

    if (*(a1 + 496))
    {
      [*(a1 + 520) addObject:?];
      v17 = *(a1 + 496);
      *(a1 + 496) = 0;
    }

    v18 = *(a1 + 504);
    if (v18)
    {
      v19 = *(a1 + 528);
      v20 = _Block_copy(v18);
      [v19 addObject:v20];

      v21 = *(a1 + 504);
      *(a1 + 504) = 0;
    }

    objc_storeStrong((a1 + 480), a2);
    if (v13)
    {
      v22 = *(a1 + 408);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __84__PKPGSVTransitionInterstitialView__setPreviousItem_withDefaultSize_force_animated___block_invoke;
      v27[3] = &unk_1E8023AC0;
      v27[4] = a1;
      [(PKPGSVTransitionInterstitialItem *)v13 beginTrackingWithConfiguration:v22 handler:v27];
    }

    else if (!*(a1 + 488))
    {
      v23 = [[PKPGSVTransitionInterstitialSnapshotContainerView alloc] initWithSnapshotSize:a5, a6];
      v24 = *(a1 + 488);
      *(a1 + 488) = v23;

      v25 = *(a1 + 488);
      [a1 anchorPoint];
      [v25 setAnchorPoint:?];
      [*(a1 + 488) setHidden:1];
      v26 = *(a1 + 488);
      if (*(a1 + 456))
      {
        [a1 insertSubview:v26 belowSubview:?];
      }

      else
      {
        [a1 addSubview:v26];
      }
    }

    [a1 setNeedsLayout];
    *(a1 + 409) = a4;
    [a1 layoutIfNeeded];
    *(a1 + 409) = 0;
    [(PKPGSVTransitionInterstitialView *)a1 _pruneObsoleteSnapshots];
  }
}

- (void)_updatePositionAnimated:(uint64_t)a1
{
  if (*(a1 + 448))
  {
    v20 = [a1 superview];
    v4 = *(a1 + 448);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 superview];
    if (v20 && v6)
    {
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v5 alignmentRectInsets];
      [v20 convertPoint:v5 fromView:{v8 + v15 + (v12 - (v15 + v17)) * 0.5, v10 + v16 + (v14 - (v16 + v18)) * 0.5}];
      if (a2)
      {
        v19 = *(a1 + 411);
      }

      else
      {
        v19 = 0;
      }

      [PKPGSVTransitionInterstitialView _setPosition:a1 animated:v19 & 1];
    }
  }
}

- (void)_updateActive
{
  v2 = (*(a1 + 413) & 1) == 0 && *(a1 + 416) != 0;
  if (*(a1 + 412) != v2)
  {
    *(a1 + 412) = v2;
    [(PKPGSVTransitionInterstitialView *)a1 _pruneObsoleteSnapshots];
    v3 = *(a1 + 440);
    if (v3)
    {
      v4 = *(a1 + 412);
      v5 = *(v3 + 16);
      v6 = a1;
      v5(v3, v4);
    }
  }
}

- (void)dealloc
{
  if (self->_active)
  {
    v3 = _Block_copy(self->_activation);
  }

  else
  {
    v3 = 0;
  }

  v4 = self->_obsoleteCompletions;
  currentSnapshotCompletion = self->_currentSnapshotCompletion;
  if (currentSnapshotCompletion)
  {
    v6 = _Block_copy(currentSnapshotCompletion);
    [(NSMutableArray *)v4 addObject:v6];
  }

  previousSnapshotCompletion = self->_previousSnapshotCompletion;
  if (previousSnapshotCompletion)
  {
    v8 = _Block_copy(previousSnapshotCompletion);
    [(NSMutableArray *)v4 addObject:v8];
  }

  if (v3 || [(NSMutableArray *)v4 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKPGSVTransitionInterstitialView_dealloc__block_invoke;
    block[3] = &unk_1E8010E20;
    v12 = v3;
    v11 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v9.receiver = self;
  v9.super_class = PKPGSVTransitionInterstitialView;
  [(PKPGSVTransitionInterstitialView *)&v9 dealloc];
}

void __43__PKPGSVTransitionInterstitialView_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setAnchorPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = PKPGSVTransitionInterstitialView;
  [(PKPGSVTransitionInterstitialView *)&v6 setAnchorPoint:?];
  [(PKPGSVTransitionInterstitialSnapshotContainerView *)self->_currentContainer setAnchorPoint:x, y];
  [(PKPGSVTransitionInterstitialSnapshotContainerView *)self->_previousContainer setAnchorPoint:x, y];
  [(PKPGSVTransitionInterstitialView *)self setNeedsLayout];
}

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPGSVTransitionInterstitialView;
  [(PKPGSVTransitionInterstitialView *)&v4 willMoveToSuperview:a3];
  if (!self->_transferring)
  {
    self->_hasPosition = 0;
  }
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PKPGSVTransitionInterstitialView;
  [(PKPGSVTransitionInterstitialView *)&v49 layoutSubviews];
  [(PKPGSVTransitionInterstitialView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPGSVTransitionInterstitialView *)self anchorPoint];
  if (!self->_currentItem || (v13 = &OBJC_IVAR___PKPGSVTransitionInterstitialView__springFactory, !self->_previousItem))
  {
    v13 = &OBJC_IVAR___PKPGSVTransitionInterstitialView__dismissalSpringFactory;
  }

  previousContainer = self->_previousContainer;
  if (previousContainer)
  {
    p_snapshotSize = &previousContainer->_snapshotSize;
  }

  else
  {
    p_snapshotSize = MEMORY[0x1E695F060];
  }

  v16 = v4 + v11 * v8;
  v17 = v6 + v12 * v10;
  v18 = *(&self->super.super.super.isa + *v13);
  v20 = *&p_snapshotSize->width;
  height = p_snapshotSize->height;
  currentContainer = self->_currentContainer;
  if (currentContainer)
  {
    v22 = &currentContainer->_snapshotSize;
  }

  else
  {
    v22 = MEMORY[0x1E695F060];
  }

  v24 = *&v22->width;
  v23 = v22->height;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke;
  aBlock[3] = &unk_1E8023A70;
  aBlock[4] = self;
  *&aBlock[5] = v4;
  *&aBlock[6] = v6;
  *&aBlock[7] = v8;
  *&aBlock[8] = v10;
  *&aBlock[9] = v16;
  *&aBlock[10] = v17;
  aBlock[11] = v24;
  *&aBlock[12] = v23;
  aBlock[13] = v20;
  *&aBlock[14] = height;
  aBlock[15] = v18;
  v25 = _Block_copy(aBlock);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke_3;
  v47[3] = &unk_1E8023A98;
  *&v47[5] = v4;
  *&v47[6] = v6;
  *&v47[7] = v8;
  *&v47[8] = v10;
  v47[4] = self;
  v47[9] = v18;
  v26 = _Block_copy(v47);
  if (self->_currentContainer)
  {
    v25[2](v25);
  }

  if (self->_previousContainer)
  {
    v25[2](v25);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = self->_obsoleteContainers;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        (v25[2])(v25, *(*(&v43 + 1) + 8 * i));
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v29);
  }

  currentSnapshot = self->_currentSnapshot;
  if (currentSnapshot)
  {
    v26[2](v26, currentSnapshot, 1);
  }

  previousSnapshot = self->_previousSnapshot;
  if (previousSnapshot)
  {
    v26[2](v26, previousSnapshot, 0);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = self->_obsoleteSnapshots;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v40;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v26[2](v26, *(*(&v39 + 1) + 8 * j), 0);
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v36);
  }
}

void __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 409);
  [v3 pkui_setBounds:0 animated:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v3 pkui_setPosition:0 animated:{*(a1 + 72), *(a1 + 80)}];
  v5 = *(*(a1 + 32) + 456);
  if (v3)
  {
    v7 = v3[51];
    v6 = v3[52];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  if (v5 == v3)
  {
    v11 = 1.0;
  }

  else
  {
    v8 = fmax(*(a1 + 88), 0.0);
    v9 = fmax(*(a1 + 96), 0.0);
    v10 = 0.236067977;
    v11 = 0.236067977;
    if (v8 > 0.0)
    {
      v12 = fmax(v7, 0.0);
      v11 = 0.0;
      if (v12 > 0.0)
      {
        v11 = fmax(v8 / v12, 0.236067977);
      }
    }

    if (v9 > 0.0)
    {
      v10 = 0.0;
      v13 = fmax(v6, 0.0);
      if (v13 > 0.0)
      {
        v10 = fmax(v9 / v13, 0.236067977);
      }
    }

    if (v11 <= 0.0 || v10 <= 0.0)
    {
      if (v11 <= 0.0)
      {
        if (v10 > 0.0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0.236067977;
        }
      }
    }

    else
    {
      v11 = fmin(v11, v10);
    }
  }

  if ([v3 isHidden])
  {
    [v3 setHidden:0];
    if (!v4)
    {
      v36 = 0;
      CATransform3DMakeScale(&v37, v11, v11, 1.0);
      v22 = 0;
      goto LABEL_41;
    }

    v14 = 88;
    if (v5 == v3)
    {
      v14 = 104;
    }

    v15 = 96;
    if (v5 == v3)
    {
      v15 = 112;
    }

    v16 = fmax(*(a1 + v14), 0.0);
    v17 = fmax(*(a1 + v15), 0.0);
    v18 = 0.236067977;
    v19 = 0.236067977;
    if (v16 > 0.0)
    {
      v20 = fmax(v7, 0.0);
      v19 = 0.0;
      if (v20 > 0.0)
      {
        v19 = fmax(v16 / v20, 0.236067977);
      }
    }

    if (v17 > 0.0)
    {
      v18 = 0.0;
      v21 = fmax(v6, 0.0);
      if (v21 > 0.0)
      {
        v18 = fmax(v17 / v21, 0.236067977);
      }
    }

    if (v19 <= 0.0 || v18 <= 0.0)
    {
      if (v19 <= 0.0)
      {
        v19 = 0.236067977;
        if (v18 > 0.0)
        {
          v19 = v18;
        }
      }
    }

    else
    {
      v19 = fmin(v19, v18);
    }

    CATransform3DMakeScale(&v37, v19, v19, 1.0);
    [v3 pkui_setTransform:&v37 animated:0];
    v36 = 0;
    CATransform3DMakeScale(&v37, v11, v11, 1.0);
    goto LABEL_40;
  }

  v36 = 0;
  CATransform3DMakeScale(&v37, v11, v11, 1.0);
  v22 = 0;
  if (v4)
  {
LABEL_40:
    v22 = *(a1 + 120);
  }

LABEL_41:
  [v3 pkui_setTransform:&v37 withAdditiveAnimationFactory:v22 animation:&v36];
  if (v36)
  {
    [v36 setHighFrameRateReason:2162689];
    LODWORD(v23) = 1117782016;
    LODWORD(v24) = 1123024896;
    LODWORD(v25) = 1123024896;
    [v36 setPreferredFrameRateRange:{v23, v24, v25}];
    v26 = [(PKPGSVTransitionInterstitialView *)*(a1 + 32) _incrementAnimationCount];
    v27 = v36;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke_2;
    v34 = &unk_1E8010AD8;
    v35 = v26;
    v28 = v26;
    [v27 pkui_setCompletionHandler:&v31];
    v29 = [v3 layer];
    v30 = [v29 pkui_addAdditiveAnimation:v36];
  }
}

- (void)_incrementAnimationCount
{
  v1 = a1;
  if (a1)
  {
    ++*(a1 + 416);
    [(PKPGSVTransitionInterstitialView *)a1 _updateActive];
    objc_initWeak(&location, v1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKPGSVTransitionInterstitialView__incrementAnimationCount__block_invoke;
    aBlock[3] = &unk_1E8010998;
    objc_copyWeak(&v15, &location);
    v2 = _Block_copy(aBlock);
    v3 = objc_alloc(MEMORY[0x1E69B8798]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKPGSVTransitionInterstitialView__incrementAnimationCount__block_invoke_2;
    v12[3] = &unk_1E8010B50;
    v4 = v2;
    v13 = v4;
    v5 = [v3 initWithBlock:v12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PKPGSVTransitionInterstitialView__incrementAnimationCount__block_invoke_3;
    v9[3] = &unk_1E8010DD0;
    v10 = v5;
    v11 = v4;
    v6 = v4;
    v7 = v5;
    v1 = _Block_copy(v9);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v1;
}

void __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if ([v5 isHidden])
  {
    [v5 setHidden:0];
  }

  [v5 anchorPoint];
  v7 = v6;
  v9 = v8;
  [v5 bounds];
  v11 = v10;
  v13 = v12;
  [v5 alignmentRectInsets];
  [v5 pkui_setPosition:0 animated:{*(a1 + 40) + (*(a1 + 56) - (v11 - (v14 + v15))) * 0.5 - v14 + v7 * v11, *(a1 + 48) + (*(a1 + 64) - (v13 - (v16 + v17))) * 0.5 - v16 + v9 * v13}];
  v18 = *(*(a1 + 32) + 409);
  v19 = [v5 layer];
  v20 = 0;
  v42 = 0;
  if (v18 == 1)
  {
    v20 = *(a1 + 72);
  }

  [v5 pkui_setAlpha:v20 withAnimationFactory:&v42 animation:0 removePriorAnimation:a3];
  if (v42 || v21 != a3)
  {
    if (v42)
    {
      v22 = [(PKPGSVTransitionInterstitialView *)*(a1 + 32) _incrementAnimationCount];
    }

    else
    {
      v22 = 0;
    }

    [v19 removeAnimationForKey:@"opacity"];
    v23 = v42;
    if (v42)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke_4;
      v40[3] = &unk_1E8010AD8;
      v41 = v22;
      [v23 pkui_setCompletionHandler:v40];
      [v19 addAnimation:v42 forKey:@"opacity"];
    }
  }

  if (*(*(a1 + 32) + 408) != 1)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 8.33333333;
  }

  if (v18)
  {
    v25 = *(a1 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = v19;
  v27 = v25;
  if (v26)
  {
    v28 = v27;
    v29 = [v26 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    v30 = v29;
    if (v29)
    {
      [v29 doubleValue];
      v32 = v31;
    }

    else
    {
      v32 = 0.0;
    }

    if (v32 == v24 || ([MEMORY[0x1E696AD98] numberWithDouble:v24], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "setValue:forKeyPath:", v34, @"filters.gaussianBlur.inputRadius"), v34, !v28))
    {
      v33 = 0;
    }

    else
    {
      v33 = [v28 springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v33 pkui_updateForAdditiveAnimationFromScalar:v32 toScalar:v24];
    }

    if (v33)
    {
      v35 = [(PKPGSVTransitionInterstitialView *)*(a1 + 32) _incrementAnimationCount];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __50__PKPGSVTransitionInterstitialView_layoutSubviews__block_invoke_5;
      v38[3] = &unk_1E8010AD8;
      v39 = v35;
      v36 = v35;
      [v33 pkui_setCompletionHandler:v38];
      v37 = [v26 pkui_addAdditiveAnimation:v33];
    }

LABEL_31:
    return;
  }

  __break(1u);
}

- (void)_pruneObsoleteSnapshots
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 412) & 1) == 0)
  {
    if ([*(a1 + 512) count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v2 = *(a1 + 512);
      v3 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v27;
        do
        {
          v6 = 0;
          do
          {
            if (*v27 != v5)
            {
              objc_enumerationMutation(v2);
            }

            [*(*(&v26 + 1) + 8 * v6++) removeFromSuperview];
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v4);
      }

      [*(a1 + 512) removeAllObjects];
    }

    if ([*(a1 + 520) count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = *(a1 + 520);
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v22 + 1) + 8 * v11++) removeFromSuperview];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v9);
      }

      [*(a1 + 520) removeAllObjects];
    }

    if ([*(a1 + 528) count])
    {
      v12 = [*(a1 + 528) copy];
      [*(a1 + 528) removeAllObjects];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_swapItemsAnimated:(uint64_t)a1
{
  if ((*(a1 + 413) & 1) == 0)
  {
    [a1 layoutIfNeeded];
    v3 = *(a1 + 480);
    objc_storeStrong((a1 + 480), *(a1 + 448));
    v4 = *(a1 + 448);
    *(a1 + 448) = v3;
    v16 = v3;

    v5 = *(a1 + 488);
    objc_storeStrong((a1 + 488), *(a1 + 456));
    v6 = *(a1 + 456);
    *(a1 + 456) = v5;
    v7 = v5;

    v8 = *(a1 + 496);
    objc_storeStrong((a1 + 496), *(a1 + 464));
    v9 = *(a1 + 464);
    *(a1 + 464) = v8;
    v10 = v8;

    v11 = _Block_copy(*(a1 + 504));
    v12 = _Block_copy(*(a1 + 472));
    v13 = *(a1 + 504);
    *(a1 + 504) = v12;

    v14 = _Block_copy(v11);
    v15 = *(a1 + 472);
    *(a1 + 472) = v14;

    [a1 setNeedsLayout];
    *(a1 + 409) = 1;
    [a1 layoutIfNeeded];
    *(a1 + 409) = 0;
  }
}

void __83__PKPGSVTransitionInterstitialView__setCurrentItem_withDefaultSize_force_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  [v5 alignmentRectInsets];
  v13 = v8 - (v11 + v12);
  v16 = v10 - (v14 + v15);
  v17 = *(*(a1 + 32) + 456);
  if (v17)
  {
    v18 = (v17 + 408);
    *v18 = v13;
    v18[1] = v16;
  }

  else
  {
    v19 = [[PKPGSVTransitionInterstitialSnapshotContainerView alloc] initWithSnapshotSize:v13, v16];
    v20 = *(a1 + 32);
    v21 = *(v20 + 456);
    *(v20 + 456) = v19;

    v22 = *(a1 + 32);
    v23 = v22[57];
    [v22 anchorPoint];
    [v23 setAnchorPoint:?];
    [*(*(a1 + 32) + 456) setHidden:1];
    [*(a1 + 32) addSubview:*(*(a1 + 32) + 456)];
  }

  [*(*(a1 + 32) + 456) addSubview:v5];
  v24 = *(a1 + 32);
  v25 = *(v24 + 464);
  *(v24 + 464) = v5;
  v29 = v5;

  v26 = _Block_copy(v6);
  v27 = *(a1 + 32);
  v28 = *(v27 + 472);
  *(v27 + 472) = v26;
}

void __84__PKPGSVTransitionInterstitialView__setPreviousItem_withDefaultSize_force_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  [v5 alignmentRectInsets];
  v13 = v8 - (v11 + v12);
  v16 = v10 - (v14 + v15);
  v17 = *(*(a1 + 32) + 488);
  if (v17)
  {
    v18 = (v17 + 408);
    *v18 = v13;
    v18[1] = v16;
  }

  else
  {
    v19 = [[PKPGSVTransitionInterstitialSnapshotContainerView alloc] initWithSnapshotSize:v13, v16];
    v20 = *(a1 + 32);
    v21 = *(v20 + 488);
    *(v20 + 488) = v19;

    v22 = *(a1 + 32);
    v23 = v22[61];
    [v22 anchorPoint];
    [v23 setAnchorPoint:?];
    [*(*(a1 + 32) + 488) setHidden:1];
    v24 = *(a1 + 32);
    v25 = v24[61];
    if (v24[57])
    {
      [v24 insertSubview:v25 belowSubview:?];
    }

    else
    {
      [v24 addSubview:v25];
    }
  }

  [*(*(a1 + 32) + 488) addSubview:v5];
  v26 = *(a1 + 32);
  v27 = *(v26 + 496);
  *(v26 + 496) = v5;
  v31 = v5;

  v28 = _Block_copy(v6);
  v29 = *(a1 + 32);
  v30 = *(v29 + 504);
  *(v29 + 504) = v28;
}

- (void)_setPosition:(uint64_t)a1 animated:(int)a2
{
  v3 = 0;
  v17 = 0;
  *(a1 + 411) = 1;
  if (a2)
  {
    v3 = *(a1 + 424);
  }

  [a1 pkui_setPosition:v3 withAdditiveAnimationFactory:&v17 animation:?];
  if (v17)
  {
    [v17 setHighFrameRateReason:2162689];
    LODWORD(v4) = 1117782016;
    LODWORD(v5) = 1123024896;
    LODWORD(v6) = 1123024896;
    [v17 setPreferredFrameRateRange:{v4, v5, v6}];
    v7 = [(PKPGSVTransitionInterstitialView *)a1 _incrementAnimationCount];
    v8 = v17;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __58__PKPGSVTransitionInterstitialView__setPosition_animated___block_invoke;
    v15 = &unk_1E8010AD8;
    v16 = v7;
    v9 = v7;
    [v8 pkui_setCompletionHandler:&v12];
    v10 = [a1 layer];
    v11 = [v10 pkui_addAdditiveAnimation:v17];
  }
}

- (CGFloat)resolveIndeterminatePositionWithPriorItemFrame:(CGFloat)a3 animated:(CGFloat)a4
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 bounds];
  v13 = v12;
  [a1 anchorPoint];
  v15 = v14;
  if (*(a1 + 448))
  {
    [a1 center];
    v17 = *(a1 + 456);
    if (v17)
    {
      v18 = *(v17 + 408);
    }

    else
    {
      v18 = 0.0;
    }

    return v16 - v15 * v13 + (v13 - v18) * 0.5;
  }

  else
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    if (!CGRectIsNull(v21))
    {
      if (a2)
      {
        v19 = *(a1 + 411);
      }

      else
      {
        v19 = 0;
      }

      [PKPGSVTransitionInterstitialView _setPosition:a1 animated:v19 & 1];
    }
  }

  return a3;
}

- (double)pushItem:(double)a3 withDefaultSize:(double)a4 containerAlpha:(double)a5
{
  v9 = a2;
  if (!a1)
  {
    a3 = 0.0;
    goto LABEL_14;
  }

  [(PKPGSVTransitionInterstitialView *)a1 _setContainerAlpha:a5 animated:?];
  v10 = v9;
  v11 = v10;
  if ((*(a1 + 413) & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_6;
    }

    if (*(a1 + 448) != v10)
    {
      if (*(a1 + 480) != v10)
      {
LABEL_6:
        [(PKPGSVTransitionInterstitialView *)a1 _setPreviousItem:v10 withDefaultSize:1 force:1 animated:a3, a4];
        [PKPGSVTransitionInterstitialView _swapItemsAnimated:a1];
        [(PKPGSVTransitionInterstitialView *)a1 _pruneObsoleteSnapshots];
        if (!*(a1 + 448))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 456);
        if (!v12)
        {
          a3 = 0.0;
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      [PKPGSVTransitionInterstitialView _swapItemsAnimated:a1];
    }

    v12 = *(a1 + 456);
    if (!v12)
    {

      a3 = 0.0;
      goto LABEL_13;
    }

LABEL_11:
    a3 = *(v12 + 408);
  }

LABEL_12:

  if (v11)
  {
LABEL_13:
    [(PKPGSVTransitionInterstitialView *)a1 _updatePositionAnimated:?];
  }

LABEL_14:

  return a3;
}

- (double)updateCurrentItem:(double)a3 withDefaultSize:(double)a4 containerAlpha:(double)a5
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = [(PKPGSVTransitionInterstitialView *)a1 _setCurrentItem:a2 withDefaultSize:0 force:1 animated:a3, a4];
  if (a2)
  {
    [(PKPGSVTransitionInterstitialView *)a1 _updatePositionAnimated:?];
  }

  [(PKPGSVTransitionInterstitialView *)a1 _setContainerAlpha:a5 animated:?];
  return v8;
}

void __60__PKPGSVTransitionInterstitialView__incrementAnimationCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[52];
    v2 = WeakRetained;
    [(PKPGSVTransitionInterstitialView *)WeakRetained _updateActive];
    WeakRetained = v2;
  }
}

uint64_t __60__PKPGSVTransitionInterstitialView__incrementAnimationCount__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end