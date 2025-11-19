@interface PKApplicationMessageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)needsRemoval;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKApplicationMessageView)initWithConfiguration:(id)a3;
- (PKApplicationMessageViewDelegate)delegate;
- (double)_contentOffsetForDismiss;
- (double)_layoutWithContext:(CGFloat)a3 bounds:(CGFloat)a4;
- (double)_swipeDismissThreshold;
- (double)cachedClearViewFittingWidth;
- (id)_createClearView;
- (id)_initWithType:(void *)a3 configuration:;
- (id)_swipedMessageView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_cancelMySwipe;
- (void)_clearTapped:(id)a3;
- (void)_dismissWithAnimatedSwipe:(uint64_t)a1;
- (void)_expand;
- (void)_handleTap;
- (void)_invalidate;
- (void)_invalidateSize;
- (void)_longPressed:(id)a3;
- (void)_markPresented;
- (void)_rootView;
- (void)_setContent:(unsigned int)a3 type:(uint64_t)a4 depth:;
- (void)_treeLayoutWithContext:(void *)a3 block:;
- (void)_updateSubviewsWithType:(uint64_t)a3 depth:;
- (void)_visitPostOrder:(uint64_t)a1;
- (void)_visitPreOrder:(uint64_t)a1;
- (void)collapse;
- (void)dealloc;
- (void)dropSwipe;
- (void)impactOccured;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:;
- (void)setContent:(id)a3 animated:(BOOL)a4;
- (void)swipeToDismissFeedbackGenerator;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKApplicationMessageView

void __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (++*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 48))
    {
      v3 = WeakRetained;
      [(PKApplicationMessageView_RemovedSubviewContainer *)WeakRetained _finishFromDealloc:?];
      WeakRetained = v3;
    }
  }
}

void __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (++*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 48))
    {
      v3 = WeakRetained;
      [(PKApplicationMessageView_RemovedSubviewContainer *)WeakRetained _finishFromDealloc:?];
      WeakRetained = v3;
    }
  }
}

uint64_t __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PKApplicationMessageView)initWithConfiguration:(id)a3
{
  if (a3)
  {
    self = [(PKApplicationMessageView *)&self->super.super.super.isa _initWithType:a3 configuration:?];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_initWithType:(void *)a3 configuration:
{
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    v10 = v6 ? *(v6 + 1) : 0.0;
    v48.receiver = a1;
    v48.super_class = PKApplicationMessageView;
    v11 = objc_msgSendSuper2(&v48, sel_initWithFrame_, v8, v9, v10, 0.0);
    a1 = v11;
    if (v11)
    {
      v11[102] = a2;
      objc_storeStrong(v11 + 100, a3);
      *(a1 + 568) = 1;
      a1[70] = 0x7FEFFFFFFFFFFFFFLL;
      *(a1 + 171) = 0;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = a1[91];
      a1[91] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = a1[92];
      a1[92] = v14;

      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = a1[93];
      a1[93] = v16;

      *(a1 + 656) = 0;
      objc_initWeak(&location, a1);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PKApplicationMessageView__initWithType_configuration___block_invoke;
      aBlock[3] = &unk_1E80184C8;
      objc_copyWeak(&v46, &location);
      v18 = _Block_copy(aBlock);
      v19 = objc_alloc_init(PKApplicationMessageScrollView);
      v20 = a1[53];
      a1[53] = v19;

      [a1[53] setPagingEnabled:1];
      [a1[53] setShowsVerticalScrollIndicator:0];
      [a1[53] setShowsHorizontalScrollIndicator:0];
      [a1[53] setClipsToBounds:0];
      [a1[53] setDelegate:a1];
      [a1 addSubview:a1[53]];
      v21 = [a1[53] panGestureRecognizer];
      v22 = a1[54];
      a1[54] = v21;

      *(a1 + 488) = 0;
      if ((a2 - 1) <= 1)
      {
        v23 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
        [v23 setPreferredSymbolConfigurationForImage:0];
        v24 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v23 setBaseForegroundColor:v24];

        [v23 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
        [v23 setCornerStyle:-1];
        v25 = [v23 background];
        [v25 setCornerRadius:0.0];

        v26 = MEMORY[0x1E69DC628];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __56__PKApplicationMessageView__initWithType_configuration___block_invoke_2;
        v43[3] = &unk_1E8010A60;
        objc_copyWeak(&v44, &location);
        v27 = [v26 actionWithHandler:v43];
        v28 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v23 primaryAction:v27];
        v29 = a1[88];
        a1[88] = v28;

        v30 = a1[88];
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = __56__PKApplicationMessageView__initWithType_configuration___block_invoke_3;
        v40 = &unk_1E80184F0;
        v41 = v18;
        v42 = a2;
        [v30 setConfigurationUpdateHandler:&v37];
        [a1[88] setAlpha:{0.0, v37, v38, v39, v40}];
        [a1[88] _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
        [a1[88] sizeToFit];
        [a1[88] setNeedsUpdateConfiguration];
        [a1 insertSubview:a1[88] belowSubview:a1[53]];

        objc_destroyWeak(&v44);
      }

      v31 = [a1 layer];
      [v31 setAnchorPoint:{0.5, 0.0}];
      v32 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__tapped_];
      v33 = a1[96];
      a1[96] = v32;

      [a1[53] addGestureRecognizer:a1[96]];
      v34 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:a1 action:sel__longPressed_];
      v35 = a1[97];
      a1[97] = v34;

      [a1[97] setDelegate:a1];
      [a1[97] setMinimumPressDuration:0.15];
      [a1[53] addGestureRecognizer:a1[97]];
      [a1 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      [a1 setInsetsLayoutMarginsFromSafeArea:0];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

uint64_t __56__PKApplicationMessageView__initWithType_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained traitCollection];
  v3 = _PKFontForDesign(v2, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 0x8000, 0, 0);

  return v3;
}

void __56__PKApplicationMessageView__initWithType_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKApplicationMessageView *)WeakRetained _dismissWithAnimatedSwipe:?];
    WeakRetained = v2;
  }
}

void __56__PKApplicationMessageView__initWithType_configuration___block_invoke_3(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v3 configuration];
  v6 = *(a1 + 40);
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v6 == 2)
  {
    v8 = PKLocalizedString(&cfstr_ClearAllApplic.isa);
    v16 = *MEMORY[0x1E69DB648];
    v17[0] = v4;
    v9 = MEMORY[0x1E695DF20];
    v10 = v17;
    v11 = &v16;
  }

  else
  {
    v8 = PKLocalizedString(&cfstr_ClearSectionAp.isa);
    v14 = *MEMORY[0x1E69DB648];
    v15 = v4;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v15;
    v11 = &v14;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 initWithString:v8 attributes:v12];
  [v5 setAttributedTitle:v13];

  [v3 setConfiguration:v5];
}

- (void)_longPressed:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v4 = [v35 state];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      [v35 locationInView:self];
      v16 = v15;
      v18 = v17;
      [(PKApplicationMessageView *)self bounds];
      v42.x = v16;
      v42.y = v18;
      if (CGRectContainsPoint(v44, v42))
      {
        [(PKApplicationMessageView *)self _handleTap];
      }
    }

    goto LABEL_12;
  }

  [v35 locationInView:self];
  v6 = v5;
  v8 = v7;
  [(PKApplicationMessageView *)self bounds];
  v41.x = v6;
  v41.y = v8;
  if (!CGRectContainsPoint(v43, v41))
  {
    [v35 setEnabled:0];
    [v35 setEnabled:1];
    goto LABEL_12;
  }

  [(PKApplicationMessageScrollView *)self->_scrollView contentOffset];
  if (v9 != 0.0)
  {
    goto LABEL_12;
  }

  type = self->_type;
  if ((type - 1) < 2)
  {
    v11 = [(PKApplicationMessageView *)self content];
    v12 = [v11 context];
    v13 = v12;
    if (v12)
    {
      if (*(v12 + 8))
      {
        v14 = 0;
      }

      else
      {
        v34 = *(v12 + 32);
        v14 = ([*(v12 + 16) numberOfChildren] + v34) > 1;
      }
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_34;
  }

  if (type)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v11 = [(PKApplicationMessage *)self->_message content];
  v33 = [v11 action];
  v14 = v33 != 0;

LABEL_34:
LABEL_13:
  v19 = v35;
  if (self->_highlighted != v14)
  {
    self->_highlighted = v14;
    v20 = [(PKApplicationMessageView *)self layer];
    if (self->_highlightFilter)
    {
      v21 = CGColorRetain(self->_filterColor);
    }

    else
    {
      v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      v21 = CGColorRetain([v22 CGColor]);
    }

    highlighted = self->_highlighted;
    v24 = 0.5;
    if (!self->_highlighted)
    {
      v24 = 1.0;
    }

    v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v24];
    v26 = CGColorRetain([v25 CGColor]);

    if (!CGColorEqualToColor(v21, v26))
    {
      if (!self->_highlightFilter)
      {
        v27 = objc_alloc(MEMORY[0x1E6979378]);
        v28 = [v27 initWithType:*MEMORY[0x1E6979CB0]];
        highlightFilter = self->_highlightFilter;
        self->_highlightFilter = v28;

        [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
        [(CAFilter *)self->_highlightFilter setValue:v21 forKey:@"inputColor"];
        v39[0] = self->_highlightFilter;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
        [v20 setFilters:v30];
      }

      CGColorRelease(self->_filterColor);
      self->_filterColor = CGColorRetain(v26);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__PKApplicationMessageView__updateHighlightAnimated___block_invoke;
      aBlock[3] = &unk_1E8010A10;
      v37 = v20;
      v38 = self;
      v31 = _Block_copy(aBlock);
      if (highlighted)
      {
        v32 = 1030;
      }

      else
      {
        v32 = 2;
      }

      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:v32 animations:v31 completion:0];
    }

    CGColorRelease(v21);
    CGColorRelease(v26);

    v19 = v35;
  }
}

- (void)_handleTap
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 424) contentOffset];
    if (v2 == 0.0)
    {
      v3 = *(a1 + 816);
      if ((v3 - 1) >= 2)
      {
        if (!v3 && (*(a1 + 680) & 1) == 0)
        {
          v4 = *(a1 + 480);
          if (v4)
          {
            v5 = v4;
            v6 = [v5 content];
            v7 = [v6 action];

            if (v7)
            {
              v8 = [v7 type];
              if (v8 <= 1)
              {
                v9 = v8;
                v10 = [v7 url];
                v11 = objc_alloc_init(MEMORY[0x1E69636B8]);
                [v11 setSensitive:v9 == 1];
                v19 = *MEMORY[0x1E699F970];
                v20[0] = MEMORY[0x1E695E118];
                v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
                [v11 setFrontBoardOptions:v12];

                if ((PKRunningInViewService() & 1) != 0 || PKRunningInLockScreenPlugin())
                {
                  v13 = [a1 window];
                  v14 = v13;
                  if (v13)
                  {
                    PKPostOpenApplicationNotification(v13, v10, v11);
                  }
                }

                else
                {
                  PKOpenApplication(v10, v11);
                }
              }

              v15 = [(PKApplicationMessageView *)a1 _rootView];
              WeakRetained = objc_loadWeakRetained(v15 + 101);
              v17 = [v5 registration];
              v18 = [v17 key];
              [WeakRetained applicationMessageView:v15 tappedApplicationMessageWithKey:v18];
            }
          }
        }
      }

      else
      {

        [a1 _expand];
      }
    }

    else
    {

      [(PKApplicationMessageView *)a1 _cancelMySwipe];
    }
  }
}

- (void)dealloc
{
  CGColorRelease(self->_filterColor);
  [(PKApplicationMessageView *)self _invalidate];
  v3.receiver = self;
  v3.super_class = PKApplicationMessageView;
  [(PKApplicationMessageView *)&v3 dealloc];
}

- (void)_invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 680) & 1) == 0)
  {
    *(a1 + 680) = 1;
    *(a1 + 408) = 0;
    v2 = *(a1 + 472);
    if (v2)
    {
      v3 = [v2 context];
      v4 = v3;
      if (v3)
      {
        *(v3 + 24) = 0;
      }

      [*(a1 + 472) setContext:0];
      v5 = *(a1 + 472);
      *(a1 + 472) = 0;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(a1 + 728);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) context];
          v12 = v11;
          if (v11)
          {
            v11 = *(v11 + 24);
          }

          [(PKApplicationMessageView *)v11 _invalidate];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 808));
    [WeakRetained applicationMessageViewNeedsRemoval:a1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(PKApplicationMessageView *)self _layoutWithContext:*MEMORY[0x1E695EFF8] bounds:*(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutWithContext:(CGFloat)a3 bounds:(CGFloat)a4
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 680) == 1)
  {
    [a1 bounds];
    return v7;
  }

  else
  {
    v8 = a5;
    v17 = 0;
    if ((*(a1 + 568) & 1) == 0)
    {
      v165.origin.x = a3;
      v165.origin.y = a4;
      v165.size.width = a5;
      v165.size.height = a6;
      if (CGRectEqualToRect(*(a1 + 576), v165))
      {
        [a1 layoutMargins];
        v14.f64[1] = v13;
        v16.f64[1] = v15;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 608), v14), vceqq_f64(*(a1 + 624), v16)))))
        {
          v17 = 1;
        }
      }
    }

    v18 = HIDWORD(a2);
    v19 = [*(a1 + 472) context];
    v20 = v19;
    if (v19 && (v21 = *(v19 + 32), [*(v19 + 16) numberOfChildren] + v21))
    {
      v22 = a3;
      v24 = 0;
      v25 = 0;
      v23 = (*(a1 + 536) & 1) == 0 && *(a1 + 408) == 0;
    }

    else
    {
      v22 = a3;
      v23 = 0;
      v24 = *(a1 + 408) == 0;
      v25 = 1;
    }

    v26 = !v17;
    if (v18)
    {
      v26 = 1;
    }

    if (v26)
    {
      v119 = v24;
      v120 = v23;
      v117 = v20;
      v27 = [a1 _shouldReverseLayoutDirection];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke;
      aBlock[3] = &__block_descriptor_40_e22_v28__0__UIView_8d16B24l;
      aBlock[4] = a2;
      v28 = _Block_copy(aBlock);
      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_2;
      v162[3] = &unk_1E8018538;
      v162[5] = a2;
      v162[4] = a1;
      v29 = _Block_copy(v162);
      v161[0] = MEMORY[0x1E69E9820];
      v161[1] = 3221225472;
      v161[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_3;
      v161[3] = &__block_descriptor_40_e51____v__d_20__0__PKApplicationMessageContentView_8B16l;
      v161[4] = a2;
      v30 = _Block_copy(v161);
      v160[0] = MEMORY[0x1E69E9820];
      v160[1] = 3221225472;
      v160[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_5;
      v160[3] = &__block_descriptor_40_e51____v__d_20__0__PKApplicationMessageSummaryView_8B16l;
      v160[4] = a2;
      v123 = _Block_copy(v160);
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 3221225472;
      v159[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_7;
      v159[3] = &__block_descriptor_40_e44____v__d_20__0__PKApplicationMessageView_8B16l;
      v159[4] = a2;
      v121 = _Block_copy(v159);
      if (v18 == 1)
      {
        [*(a1 + 424) contentSize];
        if (v32 == v8 + v8 && v31 == a6)
        {
          v33 = *MEMORY[0x1E695EFF8];
          if (v27)
          {
            v34 = 0.0;
          }

          else
          {
            v34 = *(MEMORY[0x1E695EFF8] + 8);
          }
        }

        else
        {
          [*(a1 + 424) setContentSize:{v8 + v8, a6}];
          v35 = -v8;
          v33 = *MEMORY[0x1E695EFF8];
          if (v27)
          {
            v34 = 0.0;
          }

          else
          {
            v35 = *MEMORY[0x1E695EFF8];
            v34 = *(MEMORY[0x1E695EFF8] + 8);
          }

          [*(a1 + 424) setFrameForPointInside:{v35, v34, v8 + v8, a6}];
        }

        v36 = [(PKApplicationMessageView *)a1 _rootView];
        v37 = [(PKApplicationMessageView *)v36 cachedClearViewFittingWidth];

        v38 = v8 - v37 + -8.0;
        if (v27)
        {
          v39 = v8 - v37 + -8.0;
        }

        else
        {
          v39 = v33;
        }

        v40 = [(PKApplicationMessageView *)a1 _rootView];
        v41 = [(PKApplicationMessageView *)v40 cachedClearViewFittingWidth];

        v42 = v41 + 8.0;
        v166.origin.x = v39;
        v166.origin.y = v34;
        v166.size.width = v42;
        v166.size.height = a6;
        if (!CGRectEqualToRect(*(a1 + 440), v166))
        {
          *(a1 + 440) = v39;
          *(a1 + 448) = v34;
          *(a1 + 456) = v42;
          *(a1 + 464) = a6;
          [*(a1 + 424) setFrame:{v39, v34, v42, a6}];
        }

        if (v27)
        {
          v43 = v8 + v38;
          v44 = -(v8 + v38);
          v45 = 0.0;
          v46 = 0.0;
        }

        else
        {
          v46 = *MEMORY[0x1E69DDCE0];
          v43 = *(MEMORY[0x1E69DDCE0] + 8);
          v45 = *(MEMORY[0x1E69DDCE0] + 16);
          v44 = *(MEMORY[0x1E69DDCE0] + 24);
        }

        [*(a1 + 424) contentInset];
        if (v50 != v43 || v47 != v46 || v49 != v44 || v48 != v45)
        {
          [*(a1 + 424) setContentInset:{v46, v43, v45, v44}];
        }
      }

      v118 = a2;
      v151 = 0;
      v152 = &v151;
      v153 = 0x4010000000;
      v154 = &unk_1BE347799;
      v51 = v22;
      v155 = v22;
      v52 = *&a4;
      v156 = a4;
      v157 = v8;
      v158 = a6;
      v53 = *(a1 + 704);
      if (v53)
      {
        LOBYTE(v52) = *(a1 + 656);
        v28[2](v28, v53, 1, v52);
        [*(a1 + 704) sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v114 = v55;
        v115 = v54;
        v113 = v22;
        v56 = [*(a1 + 704) imageView];
        v57 = [v56 image];
        v112 = v30;

        [v57 alignmentRectInsets];
        v59 = v58;
        v150[0] = MEMORY[0x1E69E9820];
        v150[1] = 3221225472;
        v150[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_9;
        v150[3] = &unk_1E80185E8;
        v150[5] = v60;
        v150[6] = v61;
        *&v150[7] = v58;
        v150[8] = v62;
        v150[4] = &v151;
        v63 = _Block_copy(v150);
        v64 = v63;
        if ((v25 | *(a1 + 656)))
        {
          memset(&slice, 0, 32);
          if (*(a1 + 816) != 2 && *(a1 + 552) == 1)
          {
            CGRectDivide(v152[1], &slice, v152 + 1, 4.0, CGRectMinYEdge);
          }

          v64[2](v64, 8.0, 0.0);
          PKSizeAlignedInRect();
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v164 = v152[1];
          CGRectDivide(v164, &slice, v152 + 1, v164.size.height - v164.origin.y - v59 + 12.0, CGRectMinYEdge);
        }

        else
        {
          v63[2](v63, 8.0, 6.0);
          PKSizeAlignedInRect();
          v66 = v73;
          v68 = v74;
          v70 = v75;
          v72 = v76;
        }

        v51 = v113;
        v77 = *(a1 + 704);
        v78 = *MEMORY[0x1E695EFF8];
        v79 = *(MEMORY[0x1E695EFF8] + 8);
        v80 = v29[2];
        v81 = *(MEMORY[0x1E69792E8] + 80);
        *&slice.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&slice.m33 = v81;
        v82 = *(MEMORY[0x1E69792E8] + 112);
        *&slice.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&slice.m43 = v82;
        v83 = *(MEMORY[0x1E69792E8] + 16);
        *&slice.m11 = *MEMORY[0x1E69792E8];
        *&slice.m13 = v83;
        v84 = *(MEMORY[0x1E69792E8] + 48);
        *&slice.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&slice.m23 = v84;
        v80(v29, v77, &slice, 1, v66, v68, v70, v72, v78, v79, v115, v114);

        v30 = v112;
      }

      v145[0] = MEMORY[0x1E69E9820];
      v145[1] = 3221225472;
      v145[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_10;
      v145[3] = &unk_1E8018638;
      v145[4] = a1;
      v85 = v30;
      v146 = v85;
      v86 = v123;
      v147 = v86;
      v87 = v121;
      v148 = v87;
      v88 = _Block_copy(v145);
      memset(&slice, 0, sizeof(slice));
      CATransform3DMakeScale(&slice, 0.5, 0.5, 1.0);
      v116 = v87;
      v122 = v86;
      v124 = v85;
      v89 = [*(a1 + 744) count];
      v90 = v89;
      v92 = v18 == 1 && v89 != 0;
      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_12;
      v144[3] = &unk_1E8018660;
      v144[4] = a1;
      v93 = _Block_copy(v144);
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_13;
      v134[3] = &unk_1E80186B0;
      v141 = v92;
      v134[4] = a1;
      v139 = &v151;
      v94 = v93;
      v135 = v94;
      v142 = v119;
      v140 = slice;
      v95 = v29;
      v136 = v95;
      v143 = v120;
      v96 = v28;
      v137 = v96;
      v97 = v88;
      v138 = v97;
      v98 = _Block_copy(v134);
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_15;
      v125[3] = &unk_1E8018750;
      v125[4] = a1;
      v133 = v92;
      v99 = v94;
      v126 = v99;
      v100 = v95;
      v131 = slice;
      v132 = v90;
      v127 = v100;
      v130 = &v151;
      v101 = v96;
      v128 = v101;
      v102 = v97;
      v129 = v102;
      v103 = _Block_copy(v125);
      v104 = v103;
      if (*(a1 + 684))
      {
        v105 = (v103[2])(v103);
        v98[2](v98);
      }

      else
      {
        v105 = (v98[2])(v98);
        v104[2](v104);
      }

      v106 = v105 + v152[1].origin.y - a4;
      if (!(v118 >> 33))
      {
        *(a1 + 568) = 0;
        *(a1 + 576) = v51;
        *(a1 + 584) = a4;
        *(a1 + 592) = v8;
        *(a1 + 600) = a6;
        [a1 layoutMargins];
        *(a1 + 608) = v107;
        *(a1 + 616) = v108;
        *(a1 + 624) = v109;
        *(a1 + 632) = v110;
        *(a1 + 640) = v8;
        *(a1 + 648) = v106;
      }

      _Block_object_dispose(&v151, 8);
      v20 = v117;
    }

    else
    {
      v8 = *(a1 + 640);
    }
  }

  return v8;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke(uint64_t a1, void *a2, char a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 36);
  if (v8 == 1 || v8 == 2 && (a3 & 1) == 0)
  {
    v9 = v7;
    [v7 pkui_setAlpha:*(a1 + 32) animated:a4];
    v7 = v9;
  }
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_2(uint64_t a1, void *a2, _OWORD *a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v23 = a2;
  v24 = v23;
  v25 = *(a1 + 44);
  if (v25 == 1 || v25 == 2 && (a4 & 1) == 0)
  {
    [v23 pkui_setBounds:*(a1 + 40) animated:{a9, a10, a11, a12}];
    v26 = [v24 layer];
    [v26 anchorPoint];
    [v24 pkui_setPosition:*(a1 + 40) animated:{a5 + v27 * a7, a6 + v28 * a8}];
    v29 = *(a1 + 40);
    v30 = a3[5];
    v34[4] = a3[4];
    v34[5] = v30;
    v31 = a3[7];
    v34[6] = a3[6];
    v34[7] = v31;
    v32 = a3[1];
    v34[0] = *a3;
    v34[1] = v32;
    v33 = a3[3];
    v34[2] = a3[2];
    v34[3] = v33;
    [v24 pkui_setTransform:v34 animated:v29];
    if ((*(*(a1 + 32) + 752) & 1) == 0)
    {
      [v24 layoutIfNeeded];
    }
  }
}

id __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_4;
  aBlock[3] = &unk_1E8018560;
  v6 = *(a1 + 32);
  v13 = a3;
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_4(uint64_t a1, double a2)
{
  v2 = *(a1 + 44);
  if (v2 == 1 || v2 == 2 && (*(a1 + 48) & 1) == 0)
  {
    [(PKApplicationMessageContentView *)*(a1 + 32) setBlurRadius:0 animated:a2 withCompletion:?];
  }
}

id __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_5(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_6;
  aBlock[3] = &unk_1E8018560;
  v6 = *(a1 + 32);
  v13 = a3;
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_6(uint64_t a1, double a2)
{
  v2 = *(a1 + 44);
  if (v2 == 1 || v2 == 2 && (*(a1 + 48) & 1) == 0)
  {
    [(PKApplicationMessageSummaryView *)*(a1 + 32) setBlurRadius:0 animated:a2 withCompletion:?];
  }
}

id __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_7(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_8;
  aBlock[3] = &unk_1E8018560;
  v6 = *(a1 + 32);
  v13 = a3;
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_8(uint64_t a1, double a2)
{
  v2 = *(a1 + 44);
  if (v2 == 1 || v2 == 2 && (*(a1 + 48) & 1) == 0)
  {
    [(PKApplicationMessageView *)*(a1 + 32) setBlurRadius:0 animated:a2 withCompletion:?];
  }
}

- (void)setBlurRadius:(void *)a3 animated:(double)a4 withCompletion:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 520) == a4)
  {
    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }

    goto LABEL_16;
  }

  v9 = [a1 layer];
  if (!*(a1 + 512))
  {
    v10 = objc_alloc(MEMORY[0x1E6979378]);
    v11 = [v10 initWithType:*MEMORY[0x1E6979928]];
    v12 = *(a1 + 512);
    *(a1 + 512) = v11;

    [*(a1 + 512) setName:@"blur"];
    v19[0] = *(a1 + 512);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v9 setFilters:v13];

    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v14 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
    [v14 pkui_updateForAdditiveAnimationFromScalar:*(a1 + 520) toScalar:a4];
    if (v8)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__PKApplicationMessageView_setBlurRadius_animated_withCompletion___block_invoke;
      v17[3] = &unk_1E8010AD8;
      v18 = v8;
      [v14 pkui_setCompletionHandler:v17];
    }

    v15 = [v9 pkui_addAdditiveAnimation:v14];

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_9;
  }

LABEL_12:
  *(a1 + 520) = a4;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v9 setValue:v16 forKeyPath:@"filters.blur.inputRadius"];

  if (v8 && (a2 & 1) == 0)
  {
    v8[2](v8, 1);
  }

LABEL_16:
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 712);
  if (v5)
  {
    v6 = *(v4 + 664);
    v7 = fmin(*(v4 + 672), *(v4 + 560));
    v8 = *(v4 + 816);
    if (v8)
    {
      if (v8 != 2)
      {
        v10 = 0;
        goto LABEL_8;
      }

      v9 = 48;
    }

    else
    {
      v9 = 40;
    }

    v10 = (*(*(a1 + v9) + 16))();
    v5 = *(*(a1 + 32) + 712);
LABEL_8:
    v3[2](v3, v5, v6, v7);

    v4 = *(a1 + 32);
  }

  v11 = *(v4 + 728);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_11;
  v13[3] = &unk_1E8018610;
  v13[4] = v4;
  v14 = v3;
  v15 = *(a1 + 56);
  v12 = v3;
  [v11 enumerateObjectsUsingBlock:v13];
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_11(void *a1, void *a2)
{
  v3 = [a2 context];
  v18 = v3;
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  v7 = *(a1[4] + 800);
  if (v7)
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 0.0;
  }

  [v5 sizeThatFits:{v8, 1.79769313e308}];
  v10 = v9;
  v12 = v11;
  v13 = v6[536];
  v14 = a1[5];
  if (v13 == 1)
  {
    v15 = (a1[4] + 684);
  }

  else
  {
    v15 = (v6 + 540);
  }

  v16 = *v15;
  v17 = (*(a1[6] + 16))();
  (*(v14 + 16))(v14, v6, v13, v16, v17, v10, v12);
}

double __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_12()
{
  PKFloatRoundToPixel();
  v1 = v0;
  PKFloatRoundToPixel();
  return v1;
}

double __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_13(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(a1 + 208) == 1)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v2 = *(*(a1 + 32) + 744);
    v3 = [v2 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = *v69;
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v69 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v68 + 1) + 8 * v5);
        if (v6)
        {
          if (*(v6 + 28) || (*(v6 + 25) & 1) != 0)
          {
            goto LABEL_18;
          }

          v6 = *(v6 + 32);
        }

        v7 = v6;
        [v7 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        PKFloatRoundToPixel();
        v16 = (*(*(a1 + 40) + 16))();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if (*(a1 + 209) == 1)
        {
          v23 = *(a1 + 160);
          v64 = *(a1 + 144);
          v65 = v23;
          v24 = *(a1 + 192);
          v66 = *(a1 + 176);
          v67 = v24;
          v25 = *(a1 + 96);
          v60 = *(a1 + 80);
          v61 = v25;
          v26 = *(a1 + 112);
          v27 = *(a1 + 128);
        }

        else
        {
          if (v7)
          {
            [v7 transform3D];
          }

          else
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
          }

          v64 = v56;
          v65 = v57;
          v66 = v58;
          v67 = v59;
          v60 = v52;
          v61 = v53;
          v26 = v54;
          v27 = v55;
        }

        v62 = v26;
        v63 = v27;
        v28 = *(*(a1 + 48) + 16);
        v56 = v64;
        v57 = v65;
        v58 = v66;
        v59 = v67;
        v52 = v60;
        v53 = v61;
        v54 = v26;
        v55 = v27;
        v28(v16, v18, v20, v22, v9, v11, v13, v15);

LABEL_18:
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (!v3)
      {
LABEL_20:

        break;
      }
    }
  }

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  *&v60 = 0;
  *(&v60 + 1) = &v60;
  *&v61 = 0x4010000000;
  *(&v61 + 1) = &unk_1BE347799;
  v62 = 0u;
  v63 = 0u;
  v29 = *(a1 + 72);
  v62 = *(*(v29 + 8) + 32);
  v63 = *(*(v29 + 8) + 48);
  *&v52 = 0;
  *(&v52 + 1) = &v52;
  *&v53 = 0x4010000000;
  *(&v53 + 1) = &unk_1BE347799;
  v30 = *(MEMORY[0x1E69DDCE0] + 16);
  v54 = *MEMORY[0x1E69DDCE0];
  v55 = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_14;
  aBlock[3] = &unk_1E8018688;
  v44 = v50;
  v45 = v51;
  v49 = *(a1 + 210);
  v46 = v29;
  v47 = &v60;
  v48 = &v52;
  v40 = *(a1 + 32);
  v31 = *(&v40 + 1);
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  *&v34 = v32;
  *(&v34 + 1) = v33;
  v42 = v40;
  v43 = v34;
  v35 = _Block_copy(aBlock);
  (*(*(a1 + 64) + 16))();
  v36 = *(*(&v60 + 1) + 40);
  v37 = *(*(&v60 + 1) + 56);
  v38 = *(*(*(a1 + 72) + 8) + 40);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v51, 8);
  return v36 + v37 - v38;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_14(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, double a6, double a7)
{
  v13 = a2;
  v14 = a5;
  if (!a4 || a3)
  {
    v15 = 72;
    if (a3)
    {
      v15 = 64;
    }

    v16 = exp(fmin(*(*(*(a1 + v15) + 8) + 24) * 0.5, 1.0) * -0.0896074712);
    if (*(a1 + 104))
    {
      v17 = v16 * 0.5;
    }

    else
    {
      v17 = v16;
    }

    PKSizeRoundToPixel();
    if (a3 && *(*(*(a1 + 64) + 8) + 24))
    {
      v19.n128_u64[0] = 8.0;
      v20 = *(*(a1 + 96) + 8);
      v41 = v20[5];
      v42 = v20[4];
      v21 = v20[6];
      v40 = v20[7];
      v18.n128_f64[0] = 8.0 / v17;
      PKFloatCeilToPixel(v18, v19);
      v23 = v21 + v22;
    }

    else
    {
      [*(a1 + 32) layoutMargins];
      v41 = v25;
      v42 = v24;
      v23 = v26;
      v40 = v27;
    }

    PKFloatRoundToPixel();
    v28 = (*(*(a1 + 40) + 16))();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    if (!a4)
    {
      [v13 setLayoutMargins:{v42, v41, v23, v40}];
      memset(&v43, 0, sizeof(v43));
      CATransform3DMakeScale(&v43, v17, v17, 1.0);
      (*(*(a1 + 48) + 16))(v28, v30, v32, v34, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a6, a7);
      v35 = *(a1 + 56);
      v36.n128_u64[0] = 0;
      if (a3 && (*(a1 + 104) & 1) == 0)
      {
        v36.n128_f64[0] = exp(fmin(*(*(*(a1 + 64) + 8) + 24) * 0.5, 1.0) * -0.693147181);
      }

      (*(v35 + 16))(v35, v13, a3, v36);
      v37.n128_u64[0] = 0x4020AAAAAAAAAAABLL;
      if (!*(a1 + 104))
      {
        v37.n128_f64[0] = 0.0;
      }

      v14[2](v14, v37);
    }

    ++*(*(*(a1 + 72) + 8) + 24);
    if (a3)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      v38 = *(*(a1 + 88) + 8);
      v38[4] = v28;
      v38[5] = v30;
      v38[6] = v32;
      v38[7] = v34;
      v39 = *(*(a1 + 96) + 8);
      v39[4] = v42;
      v39[5] = v41;
      v39[6] = v23;
      v39[7] = v40;
    }
  }
}

double __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_15(uint64_t a1)
{
  if (*(*(a1 + 32) + 408))
  {
    v2 = 8.0;
  }

  else
  {
    v2 = 16.0;
  }

  PKFloatRoundToPixel();
  v4 = v3;
  v5 = MEMORY[0x1E695F050];
  if (*(a1 + 216) == 1)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__19;
    *&v49 = __Block_byref_object_dispose__19;
    *(&v49 + 1) = [*(*(a1 + 32) + 744) firstObject];
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x4010000000;
    v74 = &unk_1BE347799;
    v6 = v5[1];
    v75 = *v5;
    v76 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_139;
    aBlock[3] = &unk_1E8018700;
    v58 = &v71;
    v56 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 160);
    v65 = *(a1 + 144);
    v66 = v8;
    v9 = *(a1 + 192);
    v67 = *(a1 + 176);
    v68 = v9;
    v10 = *(a1 + 96);
    v61 = *(a1 + 80);
    v62 = v10;
    v11 = *(a1 + 128);
    v63 = *(a1 + 112);
    v64 = v11;
    v69 = v4;
    v59 = &v45;
    v60 = &v77;
    v70 = *(a1 + 208);
    v12 = *(a1 + 32);
    v57 = v7;
    aBlock[4] = v12;
    v13 = _Block_copy(aBlock);

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v13 = 0;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v14 = *(a1 + 72);
  v54 = *(*(v14 + 8) + 40);
  v71 = 0;
  v72 = &v71;
  v73 = 0x4010000000;
  v74 = &unk_1BE347799;
  v75 = 0u;
  v76 = 0u;
  v15 = *(v14 + 8);
  v75 = *(v15 + 32);
  v76 = *(v15 + 48);
  v45 = 0;
  v46 = &v45;
  v47 = 0x4010000000;
  v48 = &unk_1BE347799;
  v16 = v5[1];
  v49 = *v5;
  v50 = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_3_145;
  v25[3] = &unk_1E8018728;
  v30 = &v51;
  v31 = v14;
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v32 = &v77;
  v33 = &v71;
  v35 = v2;
  v34 = &v45;
  v17 = v13;
  v36 = v4;
  v18 = *(a1 + 160);
  v41 = *(a1 + 144);
  v42 = v18;
  v19 = *(a1 + 192);
  v43 = *(a1 + 176);
  v44 = v19;
  v20 = *(a1 + 96);
  v37 = *(a1 + 80);
  v38 = v20;
  v21 = *(a1 + 128);
  v39 = *(a1 + 112);
  v29 = v17;
  v40 = v21;
  v22 = _Block_copy(v25);
  (*(*(a1 + 64) + 16))();
  if (v17)
  {
    (*(v17 + 2))(v17, -1, *(*(*(a1 + 72) + 8) + 32), v52[3], *(*(*(a1 + 72) + 8) + 48), 0.0);
  }

  v23 = v72[5] + v72[7] - *(*(*(a1 + 72) + 8) + 40);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v77, 8);

  return v23;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_139(uint64_t a1, unint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_2_140;
  aBlock[3] = &unk_1E80186D8;
  v33 = *(a1 + 56);
  v31 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 144);
  v39 = *(a1 + 160);
  v7 = *(a1 + 192);
  v40 = *(a1 + 176);
  v41 = v7;
  v8 = *(a1 + 96);
  v34 = *(a1 + 80);
  v35 = v8;
  v9 = *(a1 + 128);
  v36 = *(a1 + 112);
  v32 = v5;
  v37 = v9;
  v38 = v6;
  v42 = *(a1 + 208);
  v10 = _Block_copy(aBlock);
  if (CGRectIsNull(*(*(*(a1 + 56) + 8) + 32)))
  {
    PKSizeRoundToPixel();
    v11 = *(*(a1 + 56) + 8);
    *(v11 + 48) = v12;
    *(v11 + 56) = v13;
    PKFloatRoundToPixel();
    *(*(*(a1 + 56) + 8) + 32) = v14;
    PKFloatRoundToPixel();
    *(*(*(a1 + 56) + 8) + 40) = v15;
  }

  v16 = *(a1 + 64);
  v17 = *(*(v16 + 8) + 40);
  if (!v17 || (v18 = *(v17 + 48), v18 >= a2))
  {
    v20 = 0;
    goto LABEL_33;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    if (*(v17 + 28) == 1 && (*(v17 + 25) & 1) == 0)
    {
      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = *(a1 + 64);
      }

      [v20 addObject:*(*(v16 + 8) + 40)];
      v19 = 1;
    }

    v21 = ++*(*(*(a1 + 72) + 8) + 24);
    v22 = *(a1 + 216);
    if (v21 >= v22)
    {
      v23 = 0;
    }

    else
    {
      v2 = [*(*(a1 + 32) + 744) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
      v23 = v2;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v23);
    if (v21 < v22)
    {
    }

    v24 = *(*(*(a1 + 64) + 8) + 40);
    if (v24)
    {
      v25 = *(v24 + 48);
      v26 = v18 == v25 || v20 == 0;
      v18 = v25;
      if (v26)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
      if (!v20)
      {
        goto LABEL_23;
      }
    }

    if ([v20 count])
    {
      v10[2](v10, v20);
      [v20 removeAllObjects];
    }

LABEL_23:
    v16 = *(a1 + 64);
    v17 = *(*(v16 + 8) + 40);
  }

  while (v18 < a2 && v17 != 0);
  if ((v19 & 1) == 0)
  {
LABEL_33:
    v28 = *(*(a1 + 56) + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    *(v28 + 32) = *MEMORY[0x1E695F050];
    *(v28 + 48) = v29;
  }
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_2_140(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        if (v8)
        {
          v8 = v8[4];
        }

        v9 = v8;
        [v9 bounds];
        PKFloatRoundToPixel();
        *(*(*(a1 + 48) + 8) + 56) = fmax(v10, *(*(*(a1 + 48) + 8) + 56));
      }

      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * j);
        if (v16)
        {
          if (*(v16 + 25))
          {
            continue;
          }

          v16 = *(v16 + 32);
        }

        v17 = v16;
        [v17 bounds];
        PKSizeRoundToPixel();
        v19 = v18;
        v21 = v20;
        PKFloatRoundToPixel();
        v23 = v22;
        PKFloatRoundToPixel();
        (*(*(a1 + 32) + 16))(v23, v24, v19, v21);
        v25 = *(a1 + 40);
        v26 = *(v25 + 16);
        v27 = *(a1 + 136);
        v35[4] = *(a1 + 120);
        v35[5] = v27;
        v28 = *(a1 + 168);
        v35[6] = *(a1 + 152);
        v35[7] = v28;
        v29 = *(a1 + 72);
        v35[0] = *(a1 + 56);
        v35[1] = v29;
        v30 = *(a1 + 104);
        v35[2] = *(a1 + 88);
        v35[3] = v30;
        v26(v25, v17, v35, 1, v31, v32, v33, v34);
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v13);
  }

  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 56) + *(a1 + 184);
  *(*(*(a1 + 48) + 8) + 56) = 0;
}

void __54__PKApplicationMessageView__layoutWithContext_bounds___block_invoke_3_145(uint64_t a1, void *a2, int a3, int a4, void *a5, double a6, double a7)
{
  v13 = a2;
  v14 = a5;
  if (!a3)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    CGRectIsNull(*(*(*(a1 + 96) + 8) + 32));
    PKSizeRoundToPixel();
    PKFloatRoundToPixel();
    v27 = (*(*(a1 + 32) + 16))();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    (*(*(a1 + 40) + 16))(v27, v28);
    (*(*(a1 + 48) + 16))(0.0);
    v34 = *(*(a1 + 96) + 8);
    v34[4] = v27;
    v34[5] = v29;
    *(v34 + 6) = v31;
    *(v34 + 7) = v33;
    v26 = 8.33333333;
LABEL_10:
    [v13 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v14[2](v14, v26);
    goto LABEL_11;
  }

  PKFloatRoundToPixel();
  v18 = (*(*(a1 + 32) + 16))();
  v19 = v15;
  v20 = v16.n128_f64[0];
  v21 = v17.n128_f64[0];
  if (a4 == 1)
  {
    (*(*(a1 + 40) + 16))(v18, v15, v16, v17, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a6, a7, *MEMORY[0x1E69792E8], *(MEMORY[0x1E69792E8] + 8), *(MEMORY[0x1E69792E8] + 16), *(MEMORY[0x1E69792E8] + 24), *(MEMORY[0x1E69792E8] + 32), *(MEMORY[0x1E69792E8] + 40), *(MEMORY[0x1E69792E8] + 48), *(MEMORY[0x1E69792E8] + 56), *(MEMORY[0x1E69792E8] + 64), *(MEMORY[0x1E69792E8] + 72), *(MEMORY[0x1E69792E8] + 80), *(MEMORY[0x1E69792E8] + 88), *(MEMORY[0x1E69792E8] + 96), *(MEMORY[0x1E69792E8] + 104), *(MEMORY[0x1E69792E8] + 112), *(MEMORY[0x1E69792E8] + 120));
    (*(*(a1 + 48) + 16))(1.0);
  }

  ++*(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) = v21 + *(a1 + 104) + *(*(*(a1 + 64) + 8) + 24);
  v22 = *(*(a1 + 88) + 8);
  v22[4] = v18;
  v22[5] = v19;
  v22[6] = v20;
  v22[7] = v21;
  v23 = *(*(a1 + 96) + 8);
  v24 = *(MEMORY[0x1E695F050] + 16);
  *(v23 + 32) = *MEMORY[0x1E695F050];
  *(v23 + 48) = v24;
  v25 = *(a1 + 56);
  if (v25)
  {
    (*(v25 + 16))(v25, *(*(*(a1 + 80) + 8) + 24), v18, v19, v20, v21);
  }

  v26 = 0.0;
  if (a4 == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)layoutSubviews
{
  self->_inLayout = 1;
  v8.receiver = self;
  v8.super_class = PKApplicationMessageView;
  [(PKApplicationMessageView *)&v8 layoutSubviews];
  IsAnimated = PKCATrackedLayoutIsAnimated();
  [(PKApplicationMessageView *)self bounds];
  [(PKApplicationMessageView *)self _layoutWithContext:v4 bounds:v5, v6, v7];
  self->_inLayout = 0;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(PKApplicationMessageView *)self pointInside:v7 withEvent:x, y])
  {
    if (self->_dismissable && ([(UIButton *)self->_dismissButton frame], v18.x = x, v18.y = y, CGRectContainsPoint(v19, v18)))
    {
      v8 = self->_dismissButton;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PKApplicationMessageView;
      v9 = [(PKApplicationMessageView *)&v16 hitTest:v7 withEvent:x, y];
      v10 = [(PKApplicationMessageNode *)self->_content context];
      v11 = v10;
      scrollView = v9;
      if (v10)
      {
        scrollView = v9;
        if ((*(v10 + 8) & 1) == 0)
        {
          v13 = *(v10 + 32);
          v14 = [*(v10 + 16) numberOfChildren];
          scrollView = v9;
          if ((v14 + v13) >= 2)
          {
            scrollView = v9;
            if (v9 != self->_clearView)
            {
              scrollView = self->_scrollView;
            }
          }
        }
      }

      v8 = scrollView;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.highlightFilter.inputColor"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKApplicationMessageView;
    v5 = [(PKApplicationMessageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKApplicationMessageView;
  [(PKApplicationMessageView *)&v13 traitCollectionDidChange:v4];
  if (!v4 || ([v4 preferredContentSizeCategory], v5 = objc_claimAutoreleasedReturnValue(), -[PKApplicationMessageView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v5, v7), v7, v6, v5, v8))
  {
    if (self)
    {
      v9 = self;
      p_reloadQueued = &v9->_reloadQueued;
      if (!v9->_reloadQueued)
      {
        while (1)
        {
          *p_reloadQueued = 1;
          parent = v9->_parent;
          if (!parent)
          {
            break;
          }

          v12 = parent;

          p_reloadQueued = &v12->_reloadQueued;
          v9 = v12;
          if (v12->_reloadQueued)
          {
            goto LABEL_10;
          }
        }

        v9->_reloadQueuedIsRoot = 1;
        objc_initWeak(&location, v9);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __40__PKApplicationMessageView__queueReload__block_invoke;
        block[3] = &unk_1E8010998;
        objc_copyWeak(&v15, &location);
        dispatch_async(MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }

      v12 = v9;
LABEL_10:
    }
  }
}

- (void)_rootView
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 51);
  if (!v3)
  {
    return v1;
  }

  do
  {
    v4 = v3;

    v3 = v4[51];
    v2 = v4;
  }

  while (v3);
  return v4;
}

- (void)setContent:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (self->_content != v6 && !self->_invalidated)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v7 = [(PKApplicationMessageView *)self content];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PKApplicationMessageView_setContent_animated___block_invoke;
    v16[3] = &unk_1E8018778;
    v16[4] = &v17;
    [v7 visitPostOrder:v16];

    if ((v18[3] & 1) == 0)
    {
      [(PKApplicationMessageView *)self dropSwipe];
    }

    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__PKApplicationMessageView_setContent_animated___block_invoke_2;
    v12 = &unk_1E80187A0;
    v13 = self;
    v14 = v6;
    v15 = &v17;
    [(PKApplicationMessageView *)self _treeLayoutWithContext:a4 block:&v9];
    if ([(PKApplicationMessageView *)self needsRemoval:v9])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained applicationMessageViewNeedsRemoval:self];
    }

    _Block_object_dispose(&v17, 8);
  }
}

void __48__PKApplicationMessageView_setContent_animated___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 context];
  if (v5)
  {
    v6 = v5[5];
    if (v6)
    {
      if (*(v6 + 9) == 1)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}

void __48__PKApplicationMessageView_setContent_animated___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  [(PKApplicationMessageView *)*(a1 + 32) _setContent:v1 type:0 depth:?];
}

- (void)_setContent:(unsigned int)a3 type:(uint64_t)a4 depth:
{
  v8 = a2;
  if (a1 && (*(a1 + 680) & 1) == 0)
  {
    v41 = v8;
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 472);
    if (v10 == v41)
    {
LABEL_33:
      [(PKApplicationMessageView *)a1 _updateSubviewsWithType:a3 depth:a4];
      objc_autoreleasePoolPop(v9);
      v8 = v41;
      goto LABEL_34;
    }

    v11 = v10;
    objc_storeStrong((a1 + 472), a2);
    v12 = *(a1 + 472);
    if (v12)
    {
      v13 = [v12 type];
      v14 = *(a1 + 816);
      if (v14 != v13)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKApplicationMessageView: content type %ld does not match expected type %ld.", v13, v14}];
      }
    }

    if (*(a1 + 816) || (v16 = *(a1 + 472)) == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v16 message];
    }

    objc_storeStrong((a1 + 480), v15);
    v17 = *(a1 + 816);
    if (v17 != 2)
    {
LABEL_24:
      v21 = 0x1E696A000uLL;
      v39 = v15;
      v40 = v11;
      if (v17)
      {
        v22 = v9;
        if (v17 == 1)
        {
          v27 = [a1 content];
          v30 = [v27 group];
          v28 = [v30 identifier];

          v31 = objc_alloc(MEMORY[0x1E696AEC0]);
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v26 = [v31 initWithFormat:@"%@.%@.%@", v33, @"ClearButton", v28, v15, v40];

          v29 = @"Group";
        }

        else
        {
          if (v17 != 2)
          {
            v26 = 0;
            v29 = 0;
            v28 = 0;
            goto LABEL_32;
          }

          v23 = objc_alloc(MEMORY[0x1E696AEC0]);
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = [v23 initWithFormat:@"%@.%@", v25, @"ClearAllButton"];

          v27 = [a1 content];
          v28 = [v27 identifier];
          v29 = @"MultipleGroups";
        }
      }

      else
      {
        v22 = v9;
        v27 = [*(a1 + 480) registration];
        v34 = [v27 key];
        v28 = [v34 identifier];

        v26 = 0;
        v29 = @"Message";
      }

      v21 = 0x1E696A000;
LABEL_32:
      [*(a1 + 704) setAccessibilityIdentifier:v26];
      v35 = objc_alloc(*(v21 + 3776));
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 initWithFormat:@"%@.%@.%@", v37, v29, v28];

      [a1 setAccessibilityIdentifier:v38];
      v9 = v22;
      goto LABEL_33;
    }

    if (v11)
    {
      v18 = [v11 context];
      [v11 setContext:0];
      v19 = *(a1 + 472);
      if (v19)
      {
        if (v18)
        {
          [(PKApplicationMessageViewContext *)v18 setNode:v19];
LABEL_19:
          [*(a1 + 472) setContext:v18];
LABEL_22:

          goto LABEL_23;
        }

LABEL_17:
        v20 = [[PKApplicationMessageViewContext alloc] initForNode:?];
        v18 = v20;
        if (v20)
        {
          v20[3] = a1;
        }

        goto LABEL_19;
      }

      if (v18)
      {
        v18[3] = 0;
        goto LABEL_22;
      }
    }

    else if (*(a1 + 472))
    {
      goto LABEL_17;
    }

LABEL_23:
    v17 = *(a1 + 816);
    goto LABEL_24;
  }

LABEL_34:
}

- (void)_treeLayoutWithContext:(void *)a3 block:
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1)
  {
    if (!v4)
    {
      __break(1u);
    }

    v16 = v4;
    context = objc_autoreleasePoolPush();
    v5 = [(PKApplicationMessageView *)a1 _rootView];
    v6 = v5;
    if (*(v5 + 528) == 1)
    {
      v16[2](v16, a2);
    }

    else
    {
      *(v5 + 528) = 1;
      if (v5[59])
      {
        [(PKApplicationMessageView *)v5 _visitPostOrder:?];
      }

      else
      {
        *(v5 + 135) = 0;
        *(v5 + 133) = 0;
        *(v5 + 536) = 0;
      }

      v16[2](v16, a2);
      [(PKApplicationMessageView *)v6 _visitPostOrder:?];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_2;
      v28[3] = &__block_descriptor_33_e42_v32__0__PKApplicationMessageView_8_B16_B24l;
      v29 = a2;
      [(PKApplicationMessageView *)v6 _visitPreOrder:v28];
      [(PKApplicationMessageView *)v6 _visitPreOrder:?];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_4;
      v26[3] = &unk_1E80188A0;
      v8 = v7;
      v27 = v8;
      [(PKApplicationMessageView *)v6 _visitPreOrder:v26];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = v8;
      v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            v21[0] = 0;
            v21[1] = v21;
            v21[2] = 0x2020000000;
            v21[3] = 0;
            v20[0] = 0;
            v20[1] = v20;
            v20[2] = 0x2020000000;
            v20[3] = 0;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_5;
            v19[3] = &unk_1E80188C8;
            v19[4] = v21;
            v19[5] = v20;
            [(PKApplicationMessageView *)v12 _visitPreOrder:v19];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_6;
            v18[3] = &unk_1E80188C8;
            v18[4] = v21;
            v18[5] = v20;
            [(PKApplicationMessageView *)v12 _visitPreOrder:v18];
            _Block_object_dispose(v20, 8);
            _Block_object_dispose(v21, 8);
          }

          v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v9);
      }

      if (a2)
      {
        [(PKApplicationMessageView *)v6 _visitPreOrder:?];
        [(PKApplicationMessageView *)v6 _visitPreOrder:?];
      }

      [(PKApplicationMessageView *)v6 _visitPreOrder:?];
      [v6 layoutIfNeededAnimated:a2 & 1];
      *(v6 + 528) = 0;
      WeakRetained = objc_loadWeakRetained((v6 + 808));
      [WeakRetained applicationMessageViewNeedsSizeUpdate:v6];
    }

    objc_autoreleasePoolPop(context);
    v4 = v16;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(PKApplicationMessageView *)self _swipedMessageView];
  v5 = v4;
  if (v4 != self)
  {
    [(PKApplicationMessageView *)&v4->super.super.super.isa _cancelMySwipe];
    if (self)
    {
      v6 = [(PKApplicationMessageView *)self _rootView];
      v7 = [(PKApplicationMessageView *)v6 swipeToDismissFeedbackGenerator];
      [v7 prepare];
    }
  }

  v8 = [(PKApplicationMessageView *)self content];
  v9 = [v8 context];
  v10 = v9;
  if (v9 && !*(v9 + 40))
  {
    v11 = objc_alloc_init(PKApplicationMessageViewSwipeContext);
    v12 = v10[5];
    v10[5] = v11;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKApplicationMessageView_scrollViewWillBeginDragging___block_invoke;
  v13[3] = &unk_1E80187C8;
  v13[4] = self;
  [(PKApplicationMessageView *)self _treeLayoutWithContext:v13 block:?];
}

- (id)_swipedMessageView
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__19;
    v9 = __Block_byref_object_dispose__19;
    v10 = 0;
    v1 = [(PKApplicationMessageView *)a1 _rootView];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__PKApplicationMessageView__swipedMessageView__block_invoke;
    v4[3] = &unk_1E8018818;
    v4[4] = &v5;
    [(PKApplicationMessageView *)v1 _visitPostOrder:v4];
    v2 = v6[5];

    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_cancelMySwipe
{
  if (a1)
  {
    v5 = [a1 content];
    v2 = [v5 context];
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 40);
      *(v2 + 40) = 0;
    }

    if (([a1[54] state] - 1) <= 1)
    {
      [a1[54] setEnabled:0];
      [a1[54] setEnabled:1];
    }

    [a1[53] setContentOffset:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (void)_updateSubviewsWithType:(uint64_t)a3 depth:
{
  v183 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 680) & 1) != 0)
  {
    return;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke;
  aBlock[3] = &unk_1E80188F0;
  aBlock[4] = a1;
  v144 = _Block_copy(aBlock);
  v3 = [*(a1 + 472) context];
  v4 = a1;
  v5 = *(a1 + 684);
  if (*(a1 + 816) == 2)
  {
    v6 = [*(a1 + 472) children];
    if ([v6 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 532) ^ 1;
    }

    v4 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 712);
  v9 = ((*(v4 + 480) != 0) | v7) & 1;
  if (v3)
  {
    if (*(v3 + 32) != v9)
    {
      *(v3 + 32) = v9;
      if (([*(v3 + 16) numberOfChildren] + v9) <= 1)
      {
        *(v3 + 8) = 0;
      }
    }

    if (*(v3 + 8) != 1)
    {
      v10 = *(v3 + 32);
      if (([*(v3 + 16) numberOfChildren] + v10) <= 1)
      {
        v15 = *(v3 + 8);
        *(a1 + 688) = a3;
        if ((v15 & 1) == 0)
        {
LABEL_25:
          v16 = *(v3 + 32);
          v145 = ([*(v3 + 16) numberOfChildren] + v16) > 1;
          goto LABEL_26;
        }
      }

      else
      {
        if (*(a1 + 532) != 1)
        {
          if (*(v3 + 8))
          {
            *(v3 + 8) = 0;
          }

          *(a1 + 688) = a3;
          goto LABEL_25;
        }

        v11 = *(v3 + 32);
        v12 = [*(v3 + 16) numberOfChildren] + v11;
        v13 = v12 > 1;
        v14 = *(v3 + 8);
        if (v14 == v13)
        {
          *(a1 + 688) = a3;
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          *(v3 + 8) = v13;
          *(a1 + 688) = a3;
          if (v12 <= 1)
          {
            goto LABEL_25;
          }
        }
      }

      v145 = 0;
      goto LABEL_26;
    }
  }

  v145 = 0;
  *(a1 + 688) = a3;
LABEL_26:
  v142 = v3;
  objc_opt_self();
  if (!v3)
  {
    goto LABEL_29;
  }

  v17 = v142;
  v18 = *(v142 + 8);
  if (v18)
  {
    goto LABEL_31;
  }

  v19 = v142[4];
  if (v19 + [v142[2] numberOfChildren] <= 1)
  {
    v17 = v142;
    v18 = *(v142 + 8);
  }

  else
  {
LABEL_29:
    v18 = 0;
    v17 = v142;
  }

LABEL_31:

  *(a1 + 684) = v18;
  v150 = *(a1 + 684);
  if (!v5)
  {
    if (v150 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v5 == 1 && !v150)
  {
LABEL_36:
    v150 = a2 == 0;
  }

LABEL_37:
  v20 = [*(a1 + 472) children];
  v21 = v20;
  v22 = MEMORY[0x1E695E0F0];
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  if (*(a1 + 684) || ((v24 = *(a1 + 688), v25 = v24 == 0, v26 = v24 != 0, !v25) ? (v27 = 1) : (v27 = 3), (v28 = v9 & v26, (v9 & v26) != 0) ? (v29 = 1) : (v29 = v9), [v23 count] <= (v27 - v29)))
  {
    v148 = v23;
  }

  else
  {
    if (v28)
    {
      v148 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v148 = [v23 subarrayWithRange:0];
    }
  }

  v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = *(a1 + 712);
  if (!v9)
  {
    if (!v30)
    {
      goto LABEL_75;
    }

    v44 = [PKApplicationMessageView_RemovedSubviewContainer alloc];
    if (v44)
    {
      v45 = [(PKApplicationMessageView_RemovedSubviewContainer *)&v44->super.isa initWithView:0 index:v150 layoutMode:0 commitAnimation:?];
    }

    else
    {
      v45 = 0;
    }

    [v149 addObject:v45];

    if (![*(a1 + 472) type])
    {
      v46 = a1;
      v47 = *(a1 + 712);
      if (!v47)
      {
LABEL_66:
        v48 = *(v46 + 712);
        *(v46 + 712) = 0;

        goto LABEL_75;
      }

      objc_storeWeak((v47 + 616), 0);
    }

    v46 = a1;
    goto LABEL_66;
  }

  if (v30)
  {
    goto LABEL_75;
  }

  v31 = *(a1 + 816);
  if (v31 == 2)
  {
    v36 = objc_alloc_init(PKApplicationMessageSummaryView);
    v49 = objc_opt_class();
    v43 = NSStringFromClass(v49);
    [(PKApplicationMessageSummaryView *)v36 setAccessibilityIdentifier:v43];
  }

  else
  {
    if (v31)
    {
      v51 = 0;
      goto LABEL_74;
    }

    v32 = [PKApplicationMessageContentView alloc];
    v33 = *(a1 + 800);
    if (v33)
    {
      v34 = *(v33 + 8);
    }

    else
    {
      v34 = 0.0;
    }

    v35 = [(PKApplicationMessageContentView *)v32 initWithWidth:v34];
    v36 = v35;
    if (v35)
    {
      objc_storeWeak((v35 + 616), a1);
    }

    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [*(a1 + 480) registration];
    v41 = [v40 key];
    v42 = [v41 identifier];
    v43 = [v37 initWithFormat:@"%@.%@", v39, v42];

    [(PKApplicationMessageSummaryView *)v36 setAccessibilityIdentifier:v43];
  }

  v50 = *(a1 + 712);
  *(a1 + 712) = v36;

  v51 = *(a1 + 712);
LABEL_74:
  v52 = [v51 layer];
  [v52 setAnchorPoint:{0.5, 0.0}];

  v144[2](v144, *(a1 + 712));
  *(a1 + 657) = 0;
  *(a1 + 660) = v150;
  *(a1 + 664) = *MEMORY[0x1E695F060];
LABEL_75:
  if (v3)
  {
    v53 = v142[4];
    v54 = [v142[2] numberOfChildren];
    v55 = v54 + v53 != 0;
    if (v142[5] && !*(a1 + 720))
    {
      v60 = [(PKApplicationMessageView *)a1 _createClearView];
      v61 = *(a1 + 720);
      *(a1 + 720) = v60;

      [*(a1 + 720) sizeToFit];
      v59 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__clearTapped_];
      [*(a1 + 720) addGestureRecognizer:v59];
      v62 = [*(a1 + 480) registration];
      v63 = [v62 key];
      v64 = [v63 identifier];

      v65 = objc_alloc(MEMORY[0x1E696AEC0]);
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v68 = [v65 initWithFormat:@"%@.%@", v67, v64];

      [*(a1 + 720) setAccessibilityIdentifier:v68];
      v144[2](v144, *(a1 + 720));

LABEL_86:
      goto LABEL_87;
    }

    if (v54 != -v53)
    {
      v55 = 1;
LABEL_87:
      v56 = a1;
      goto LABEL_88;
    }
  }

  v56 = a1;
  if (*(a1 + 720))
  {
    v57 = [PKApplicationMessageView_RemovedSubviewContainer alloc];
    if (v57)
    {
      v58 = [(PKApplicationMessageView_RemovedSubviewContainer *)&v57->super.isa initWithView:0 index:v150 layoutMode:0 commitAnimation:?];
    }

    else
    {
      v58 = 0;
    }

    [v149 addObject:v58];

    v55 = 0;
    v59 = *(a1 + 720);
    *(a1 + 720) = 0;
    goto LABEL_86;
  }

  v55 = 0;
LABEL_88:
  v69 = [v148 differenceFromArray:*(v56 + 728) withOptions:0 usingEquivalenceTest:&__block_literal_global_218];
  v70 = !v55 && *(a1 + 408) == 0;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v151 = v69;
  v71 = [v151 countByEnumeratingWithState:&v160 objects:v182 count:16];
  if (v71)
  {
    v72 = v8 != 0;
    v73 = *v161;
    do
    {
      v74 = 0;
      do
      {
        if (*v161 != v73)
        {
          objc_enumerationMutation(v151);
        }

        v75 = *(*(&v160 + 1) + 8 * v74);
        v76 = [v75 index];
        v77 = [v75 changeType];
        if (v77 == 1)
        {
          v78 = [v75 object];
          [*(a1 + 728) removeObjectAtIndex:v76];
          v79 = [v78 context];
          v80 = v79;
          if (v79)
          {
            v81 = *(v79 + 24);
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;
          [(PKApplicationMessageView *)v82 _invalidate];
          v83 = [PKApplicationMessageView_RemovedSubviewContainer alloc];
          v158[0] = MEMORY[0x1E69E9820];
          v158[1] = 3221225472;
          v158[2] = __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_3;
          v158[3] = &__block_descriptor_33_e67_v24__0__PKApplicationMessageView_RemovedSubviewContainer_8___v___16l;
          v159 = v70;
          v84 = [(PKApplicationMessageView_RemovedSubviewContainer *)&v83->super.isa initWithView:v82 index:(v76 + v72) layoutMode:v150 commitAnimation:v158];
          [v149 addObject:v84];
        }

        else
        {
          if (v77)
          {
            goto LABEL_103;
          }

          v78 = [v75 object];
          [*(a1 + 728) insertObject:v78 atIndex:v76];
        }

LABEL_103:
        ++v74;
      }

      while (v71 != v74);
      v85 = [v151 countByEnumeratingWithState:&v160 objects:v182 count:16];
      v71 = v85;
    }

    while (v85);
  }

  if (a2 == 3)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v86 = v149;
    v87 = [v86 countByEnumeratingWithState:&v154 objects:v181 count:16];
    if (v87)
    {
      v88 = *v155;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v155 != v88)
          {
            objc_enumerationMutation(v86);
          }

          v90 = *(*(&v154 + 1) + 8 * i);
          if (v90)
          {
            *(v90 + 25) = 1;
          }
        }

        v87 = [v86 countByEnumeratingWithState:&v154 objects:v181 count:16];
      }

      while (v87);
    }
  }

  if ([v149 count])
  {
    v91 = v149;
    v92 = v91;
    if ((*(a1 + 680) & 1) == 0 && [v91 count])
    {
      v177 = 0;
      v178 = &v177;
      v179 = 0x2020000000;
      v180 = 0x7FFFFFFFFFFFFFFFLL;
      v171 = 0;
      v172 = &v171;
      v173 = 0x3032000000;
      v174 = __Block_byref_object_copy__19;
      v175 = __Block_byref_object_dispose__19;
      v176 = [v92 objectEnumerator];
      v165 = MEMORY[0x1E69E9820];
      v166 = 3221225472;
      v167 = __59__PKApplicationMessageView__stageRemovedSubviewContainers___block_invoke;
      v168 = &unk_1E8018980;
      v169 = &v171;
      v170 = &v177;
      v93 = _Block_copy(&v165);
      [v92 sortUsingComparator:&__block_literal_global_224];
      v93[2](v93);
      v143 = [*(a1 + 736) objectEnumerator];
      v94 = 0;
      v95 = 0;
      while (1)
      {
        v96 = [v143 nextObject];

        if (!v96)
        {
          break;
        }

        v97 = *(v96 + 40);
        while (1)
        {
          v98 = v178[3];
          v99 = v98 == 0x7FFFFFFFFFFFFFFFLL || v98 >= v97;
          if (v99)
          {
            break;
          }

          ++v95;
          v93[2](v93);
        }

        v100 = *(v96 + 40);
        v94 = v96;
        if (v100)
        {
          v99 = v100 >= v95;
          v101 = v100 - v95;
          if (!v99)
          {
            v101 = 0;
          }

          *(v96 + 40) = v101;
          v94 = v96;
        }
      }

      v102 = [v92 count];
      v103 = 0;
      v104 = [*(a1 + 736) count];
      if (v104)
      {
        for (j = 0; j < v104; ++j)
        {
          v106 = [*(a1 + 736) objectAtIndexedSubscript:j];
          v107 = v106;
          if (v106)
          {
            v108 = *(v106 + 40);
          }

          else
          {
            v108 = 0;
          }

          if (v103 < v102)
          {
            while (1)
            {
              v109 = [v92 objectAtIndexedSubscript:v103];
              v110 = v109;
              if (v109)
              {
                if (v109[5] > v108)
                {
                  break;
                }
              }

              [*(a1 + 736) insertObject:v109 atIndex:j];

              ++j;
              if (v102 == ++v103)
              {
                v103 = v102;
                goto LABEL_143;
              }
            }
          }

LABEL_143:
        }
      }

      if (v103 < v102)
      {
        do
        {
          v111 = [v92 objectAtIndexedSubscript:v103];
          [*(a1 + 736) addObject:v111];

          ++v103;
        }

        while (v102 != v103);
      }

      [v92 sortUsingComparator:&__block_literal_global_226];
      v112 = [*(a1 + 744) count];
      if (v112)
      {
        v141 = v112;
        v113 = 0;
        v114 = 0;
        do
        {
          v115 = [*(a1 + 744) objectAtIndexedSubscript:v113];
          v116 = v115;
          if (v115)
          {
            v117 = *(v115 + 48);
          }

          else
          {
            v117 = 0;
          }

          if (v114 < v102)
          {
            v118 = v113 + v102 - v114;
            while (1)
            {
              v119 = [v92 objectAtIndexedSubscript:v114];
              v120 = v119;
              if (v119)
              {
                if (v119[6] > v117)
                {
                  break;
                }
              }

              [*(a1 + 744) insertObject:v119 atIndex:v113];

              ++v113;
              if (v102 == ++v114)
              {
                v114 = v102;
                v113 = v118;
                goto LABEL_159;
              }
            }
          }

LABEL_159:

          ++v113;
        }

        while (v113 < v141);
      }

      else
      {
        v114 = 0;
      }

      if (v114 < v102)
      {
        do
        {
          v121 = [v92 objectAtIndexedSubscript:v114];
          [*(a1 + 744) addObject:v121];

          ++v114;
        }

        while (v102 != v114);
      }

      v122 = *(a1 + 544);
      if (!v122)
      {
        v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v124 = *(a1 + 544);
        *(a1 + 544) = v123;

        v122 = *(a1 + 544);
      }

      [v122 addObjectsFromArray:v92];

      _Block_object_dispose(&v171, 8);
      _Block_object_dispose(&v177, 8);
    }
  }

  v125 = [*(a1 + 736) count];
  if (v125)
  {
    v171 = 0;
    v172 = &v171;
    v173 = 0x3032000000;
    v174 = __Block_byref_object_copy__19;
    v175 = __Block_byref_object_dispose__19;
    v176 = [*(a1 + 736) lastObject];
    v165 = 0;
    v166 = &v165;
    v167 = 0x2020000000;
    v168 = 0;
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_5;
    v153[3] = &unk_1E8018958;
    v153[4] = a1;
    v153[5] = &v171;
    v153[6] = &v165;
    v153[7] = v125;
    v125 = _Block_copy(v153);
    _Block_object_dispose(&v165, 8);
    _Block_object_dispose(&v171, 8);
  }

  v126 = [v148 count];
  v127 = [*(a1 + 728) count];
  if (v127 >= v126)
  {
    v128 = v126;
  }

  else
  {
    v128 = v127;
  }

  if (v125)
  {
    if (*(a1 + 712))
    {
      v129 = v127 + 1;
    }

    else
    {
      v129 = v127;
    }

    v125[2](v125, v129, 0);
  }

  v130 = a1;
  if (v128)
  {
    for (k = v128 - 1; k != -1; --k)
    {
      v132 = [*(v130 + 728) objectAtIndexedSubscript:k];
      v133 = [v148 objectAtIndexedSubscript:k];
      v134 = v133;
      if (v132 == v133)
      {
        v139 = [v133 context];
        v136 = v139;
        if (v139)
        {
          v138 = *(v139 + 24);
          if (v138)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v136 = [[PKApplicationMessageViewContext alloc] initForNode:v134];
          [v134 setContext:v136];
        }
      }

      else
      {
        v135 = [v132 context];
        v136 = v135;
        if (v135)
        {
          v137 = *(v135 + 24);
        }

        else
        {
          v137 = 0;
        }

        v138 = v137;
        [(PKApplicationMessageViewContext *)v136 setNode:v134];
        [v134 setContext:v136];
        [*(a1 + 728) replaceObjectAtIndex:k withObject:v134];
        if (v138)
        {
LABEL_188:
          [*(a1 + 424) bringSubviewToFront:v138];
LABEL_192:

          goto LABEL_193;
        }
      }

      v138 = -[PKApplicationMessageView _initWithType:configuration:]([PKApplicationMessageView alloc], [v134 type], *(a1 + 800));
      v138[51] = a1;
      *(v138 + 135) = v150;
      (v144)[2](v144, v138);
      if (v136)
      {
        v136[3] = v138;
        goto LABEL_192;
      }

LABEL_193:
      if (v125)
      {
        if (*(a1 + 712))
        {
          v140 = k + 1;
        }

        else
        {
          v140 = k;
        }

        (v125)[2](v125, v140, v138);
      }

      [(PKApplicationMessageView *)v138 _setContent:v134 type:a2 depth:v145 + a3];

      v130 = a1;
    }
  }

  if (*(v130 + 712))
  {
    [*(v130 + 424) bringSubviewToFront:?];
    v130 = a1;
    if (v125)
    {
      v125[2](v125, 0, *(a1 + 712));
      v130 = a1;
    }
  }

  [(PKApplicationMessageView *)v130 _invalidateSize];
}

- (double)_swipeDismissThreshold
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(PKApplicationMessageView *)a1 _rootView];
  v2 = [(PKApplicationMessageView *)v1 cachedClearViewFittingWidth];

  return v2 + 8.0 + 16.0;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  if ([v8 isScrollEnabled])
  {
    v9 = [v8 panGestureRecognizer];
    v10 = [v9 isEnabled];

    if (v10)
    {
      v11 = [(PKApplicationMessageView *)self content];
      v12 = [v11 context];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __87__PKApplicationMessageView_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
      v26[3] = &unk_1E80187F0;
      v26[4] = self;
      v26[5] = a5;
      v13 = _Block_copy(v26);
      v14 = [(PKApplicationMessageView *)self _shouldReverseLayoutDirection];
      [v8 contentOffset];
      v16 = v15;
      v17 = [(PKApplicationMessageView *)self _swipeDismissThreshold];
      v18 = v16 <= -v17;
      if (!v14)
      {
        v18 = v16 >= v17;
      }

      if (!v18)
      {
        goto LABEL_9;
      }

      v19 = x <= 0.0;
      if (!v14)
      {
        v19 = x >= 0.0;
      }

      if (!v19)
      {
LABEL_9:
        if (v14)
        {
          v20 = x > 0.0;
        }

        else
        {
          v20 = x < 0.0;
        }

        if (v20)
        {
          if (v12)
          {
            v21 = v12[5];
            v12[5] = 0;
          }

          *a5 = *MEMORY[0x1E695EFF8];
          goto LABEL_20;
        }

        v22 = a5->x;
        [v8 bounds];
        v24 = v22 < -v23;
        if (!v14)
        {
          v24 = v22 > v23;
        }

        if (!v24)
        {
          if (a5->x == 0.0 && v12)
          {
            v25 = v12[5];
            v12[5] = 0;
          }

          goto LABEL_20;
        }
      }

      v13[2](v13, v12);
LABEL_20:
    }
  }
}

void __87__PKApplicationMessageView_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3[5];
    if (v4)
    {
      if ((*(v4 + 8) & 1) != 0 || ([(PKApplicationMessageView *)*(a1 + 32) impactOccured], (v5 = v7[5]) != 0) && (*(v5 + 8) = 1, (v4 = v7[5]) != 0))
      {
        *(v4 + 9) = 1;
      }
    }
  }

  [(PKApplicationMessageView *)*(a1 + 32) _dismissWithAnimatedSwipe:?];
  v6 = *(a1 + 40);
  *v6 = [(PKApplicationMessageView *)*(a1 + 32) _contentOffsetForDismiss];
  *(v6 + 8) = 0;
}

- (void)impactOccured
{
  if (a1)
  {
    v2 = [(PKApplicationMessageView *)a1 _rootView];
    v1 = [(PKApplicationMessageView *)v2 swipeToDismissFeedbackGenerator];
    [v1 impactOccurredWithIntensity:0.75];
  }
}

- (void)_dismissWithAnimatedSwipe:(uint64_t)a1
{
  if (a1 && (*(a1 + 680) & 1) == 0)
  {
    if (a2)
    {
      [*(a1 + 424) setContentOffset:1 animated:{-[PKApplicationMessageView _contentOffsetForDismiss](a1), 0.0}];
    }

    v6 = [(PKApplicationMessageView *)a1 _rootView];
    v4 = *(a1 + 472);
    WeakRetained = objc_loadWeakRetained(v6 + 101);
    [WeakRetained applicationMessageView:v6 requestsContentDismissal:v4];

    if (a2 && (*(a1 + 816) - 1) <= 1)
    {
      *(a1 + 681) = 1;
    }
  }
}

- (double)_contentOffsetForDismiss
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  v14 = __Block_byref_object_dispose__19;
  v2 = a1[89];
  v15 = v2;
  if (!v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PKApplicationMessageView__contentOffsetForDismiss__block_invoke;
    v9[3] = &unk_1E8018818;
    v9[4] = &v10;
    [(PKApplicationMessageView *)a1 _visitPostOrder:v9];
    v2 = v11[5];
  }

  [v2 bounds];
  v4 = v3;
  [a1[90] frame];
  v6 = v5;
  if ([a1 _shouldReverseLayoutDirection])
  {
    v7 = -(v4 + 8.0 + v6);
  }

  else
  {
    v7 = v4 + 8.0 + v6;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (self->_invalidated)
  {
    goto LABEL_32;
  }

  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setEnabled:0];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setEnabled:1];
  v5 = [(PKApplicationMessageView *)self content];
  v6 = [v5 context];
  [v4 contentOffset];
  v8 = v7;
  if ([v4 isTracking])
  {
    v9 = [(PKApplicationMessageView *)self _shouldReverseLayoutDirection];
    v10 = [(PKApplicationMessageView *)self _swipeDismissThreshold];
    v11 = v8 <= -v10;
    if (!v9)
    {
      v11 = v8 >= v10;
    }

    if (v11)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v12 = v6[5];
      if (!v12)
      {
        goto LABEL_17;
      }

      if (*(v12 + 8))
      {
        goto LABEL_17;
      }

      [(PKApplicationMessageView *)self impactOccured];
      v13 = v6[5];
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = 1;
    }

    else
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v15 = v6[5];
      if (!v15)
      {
        goto LABEL_17;
      }

      if (*(v15 + 8) != 1)
      {
        goto LABEL_17;
      }

      [(PKApplicationMessageView *)self impactOccured];
      v13 = v6[5];
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = 0;
    }

    *(v13 + 8) = v14;
  }

LABEL_17:
  if (self->_clearView)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__19;
    v40 = __Block_byref_object_dispose__19;
    v16 = self->_messageView;
    v41 = v16;
    if (!v16)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __48__PKApplicationMessageView_scrollViewDidScroll___block_invoke;
      v35[3] = &unk_1E8018818;
      v35[4] = &v36;
      [(PKApplicationMessageView *)self _visitPostOrder:v35];
      v16 = v37[5];
    }

    [(UIView *)v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (v6)
    {
      v25 = [(PKApplicationMessageView *)self _shouldReverseLayoutDirection];
      v26 = 1.0;
      if (v25)
      {
        v26 = -1.0;
      }

      v27 = fmax(v26 * v8 + -8.0, 0.0);
    }

    else
    {
      [(PKApplicationMessageClearView *)self->_clearView frame];
      v27 = v28;
    }

    if ([(PKApplicationMessageView *)self _shouldReverseLayoutDirection])
    {
      v42.origin.x = v18;
      v42.origin.y = v20;
      v42.size.width = v22;
      v42.size.height = v24;
      v29 = CGRectGetMinX(v42) + -8.0 - v27;
    }

    else
    {
      v43.origin.x = v18;
      v43.origin.y = v20;
      v43.size.width = v22;
      v43.size.height = v24;
      v29 = CGRectGetMaxX(v43) + 8.0;
    }

    v44.origin.x = v18;
    v44.origin.y = v20;
    v44.size.width = v22;
    v44.size.height = v24;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    [(PKApplicationMessageClearView *)self->_clearView setFrame:v29, MinY, v27, CGRectGetHeight(v45)];
    v31 = [(PKApplicationMessageView *)self _shouldReverseLayoutDirection];
    v32 = [(PKApplicationMessageView *)self _rootView];
    v33 = [(PKApplicationMessageView *)v32 cachedClearViewFittingWidth];

    v34 = -v8;
    if (!v31)
    {
      v34 = v8;
    }

    [(PKApplicationMessageClearView *)self->_clearView setAlpha:fmin(fmax((v34 + -50.0) / (v33 + 8.0 + -50.0), 0.0), 1.0)];
    _Block_object_dispose(&v36, 8);
  }

LABEL_32:
}

void __48__PKApplicationMessageView_scrollViewDidScroll___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (!v6[102])
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
    *a3 = 1;
  }
}

- (void)_visitPostOrder:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_10;
  }

  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  if (![v4 count])
  {
    goto LABEL_9;
  }

  while (1)
  {
    v5 = [v4 lastObject];
    v6 = v5;
    if ((*(v5 + 416) & 1) == 0)
    {
      *(v5 + 416) = 1;
      if ([*(v5 + 728) count])
      {
        v7 = v6[91];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __44__PKApplicationMessageView__visitPostOrder___block_invoke;
        v10[3] = &unk_1E8018A38;
        v11 = v4;
        [v7 enumerateObjectsWithOptions:2 usingBlock:v10];
      }

      goto LABEL_8;
    }

    [v4 removeLastObject];
    v9 = 0;
    v3[2](v3, v6, &v9);
    if (v9)
    {
      break;
    }

LABEL_8:

    if (![v4 count])
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  [(PKApplicationMessageView *)a1 _visitPreOrder:?];

  objc_autoreleasePoolPop(context);
LABEL_10:
}

- (void)dropSwipe
{
  v2 = [(PKApplicationMessageView *)self _swipedMessageView];
  [(PKApplicationMessageView *)v2 _cancelMySwipe];
}

void __46__PKApplicationMessageView__swipedMessageView__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 content];
  v5 = [v4 context];
  v6 = v5;
  if (v5 && *(v5 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)swipeToDismissFeedbackGenerator
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[99];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DCAE8]);
      v5 = v2[99];
      v2[99] = v4;

      v3 = v2[99];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (double)cachedClearViewFittingWidth
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 784);
  if (!v2)
  {
    v3 = [(PKApplicationMessageView *)a1 _createClearView];
    [v3 sizeToFit];
    v4 = MEMORY[0x1E696AD98];
    [v3 frame];
    v6 = [v4 numberWithDouble:v5];
    v7 = *(a1 + 784);
    *(a1 + 784) = v6;

    v2 = *(a1 + 784);
  }

  [v2 doubleValue];
  return result;
}

- (id)_createClearView
{
  v1 = *(a1 + 816);
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = PKLocalizedString(&off_1E8018A58[v1]->isa);
  }

  v3 = [[PKApplicationMessageClearView alloc] initWithTitle:v2];

  return v3;
}

- (void)collapse
{
  if (!self->_invalidated)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__PKApplicationMessageView_collapse__block_invoke;
    v4[3] = &unk_1E8018818;
    v4[4] = &v5;
    [(PKApplicationMessageView *)self _visitPostOrder:v4];
    if (v6[3])
    {
      [(PKApplicationMessageView *)self dropSwipe];
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __36__PKApplicationMessageView_collapse__block_invoke_2;
      v3[3] = &unk_1E80187C8;
      v3[4] = self;
      [(PKApplicationMessageView *)self _treeLayoutWithContext:v3 block:?];
    }

    _Block_object_dispose(&v5, 8);
  }
}

void __36__PKApplicationMessageView_collapse__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 472) context];
  if (v3)
  {
    if (v3[8] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (v3[8])
      {
        v3[8] = 0;
      }
    }
  }
}

void __58__PKApplicationMessageView__treeLayoutPreludeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(v2 + 59);
  if (v3 && ([v3 context], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4[8], v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = *(v2 + 91);
    if (v7)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v6 = 0;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v14 + 1) + 8 * i) context];
            if (v13)
            {
              v6 |= *(v13[3] + 532);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v2[532] = v6 & 1;
  *(v2 + 533) = 0x1000000;
  *(v2 + 135) = 0;
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2[59];
  if (v3 && ([v3 context], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4[8];

    v6 = v2[89];
    v7 = v6 != 0;
    if (v5 == 1 && v6 != 0)
    {
      v7 = 1;
      LOBYTE(v5) = 1;
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v7 = v2[89] != 0;
  }

  v9 = v2[91];
  if (!v9)
  {
    goto LABEL_27;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  v13 = *v19;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v18 + 1) + 8 * i) context];
      v16 = v15;
      if (!v15)
      {
        goto LABEL_22;
      }

      v17 = *(v15 + 24);
      if (v5)
      {
        LOBYTE(v5) = 1;
        if ((v7 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(v5) = v17[532];
        if ((v7 & 1) == 0)
        {
LABEL_18:
          v7 = v17[533];
          goto LABEL_21;
        }
      }

      v7 = 1;
LABEL_21:

      if (v5 & v7)
      {

        v7 = 1;
        LOBYTE(v5) = 1;
        goto LABEL_26;
      }

LABEL_22:
    }

    v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  *(v2 + 532) = v5 & 1;
  *(v2 + 533) = v7 & 1;
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = v3[51];
    v6 = v5;
    if (v5 && (*(v5 + 535) & 1) == 0)
    {
      [(PKApplicationMessageView *)v4 _markPresented];
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    [(PKApplicationMessageView *)v3 _markPresented];
    v7 = 1;
  }

  v8 = *(v4 + 472);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = *(v4 + 536);
  }

  *(v4 + 535) = v10 & 1;
  v11 = *(v4 + 728);
  v75 = v4;
  if (v11)
  {
    v12 = *(v4 + 534);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v82 objects:v114 count:16];
    if (v14)
    {
      v15 = *v83;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v83 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v82 + 1) + 8 * i) context];
          if (v17)
          {
            v18 = v17[3];
            *(v18 + 534) = v12 & 1;
            v12 |= *(v18 + 533);
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v82 objects:v114 count:16];
      }

      while (v14);
    }

    v4 = v75;
  }

  if ((*(v4 + 680) & 1) == 0)
  {
    v19 = *(a1 + 32);
    v20 = *(v4 + 532);
    v21 = [*(v4 + 472) context];
    v74 = v21;
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      v23 = *(v21 + 32);
      v24 = ([*(v21 + 16) numberOfChildren] + v23) > 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = v75;
    if (*(v75 + 656) != v24)
    {
      *(v75 + 656) = v24;
      if (*(v75 + 704))
      {
        [(PKApplicationMessageView *)v75 _invalidateSize];
        v25 = v75;
      }
    }

    v81 = v19 & v10;
    v26 = *(v25 + 712);
    if (!v26)
    {
      goto LABEL_64;
    }

    v27 = *(v25 + 816);
    if (v27 == 2)
    {
      v79 = [MEMORY[0x1E695DF70] array];
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      obj = [*(v75 + 472) children];
      v30 = [obj countByEnumeratingWithState:&v94 objects:v116 count:16];
      if (v30)
      {
        v78 = *v95;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v95 != v78)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v94 + 1) + 8 * j);
            v33 = [v32 children];
            v34 = [v33 count] > 1;

            v35 = [v32 group];
            v36 = v35;
            if (v34)
            {
              [v35 pluralSummary];
            }

            else
            {
              [v35 singularSummary];
            }
            v37 = ;

            v38 = [v32 children];
            v39 = [v38 firstObject];

            v40 = [v39 message];
            v41 = [v40 content];
            v42 = [v32 children];
            LOBYTE(v38) = [v42 pk_containsObjectPassingTest:&__block_literal_global_229];

            v43 = [PKApplicationMessageSummaryItem alloc];
            v44 = [v41 icon];
            v45 = [(PKApplicationMessageSummaryItem *)&v43->super.isa initWithTitle:v37 messageIcon:v44 badged:v38];

            [v79 addObject:v45];
          }

          v30 = [obj countByEnumeratingWithState:&v94 objects:v116 count:16];
        }

        while (v30);
      }

      v46 = *(v75 + 712);
      v47 = [v79 copy];
      if (v81)
      {
        v48 = *(v75 + 657);
      }

      else
      {
        v48 = 0;
      }

      [(PKApplicationMessageSummaryView *)v46 setItems:v47 animated:v48 & 1];
    }

    else
    {
      if (v27)
      {
        goto LABEL_59;
      }

      v28 = v26;
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke;
      v116[3] = &unk_1E8010A10;
      v117 = v28;
      v118 = v25;
      if (v19 & v10)
      {
        v29 = *(v25 + 657);
      }

      else
      {
        v29 = 0;
      }

      v79 = v28;
      [(PKApplicationMessageContentView *)v79 performBatchUpdates:v116 animated:v29 & 1];
      v47 = v117;
    }

    v25 = v75;
    v26 = *(v75 + 712);
LABEL_59:
    v49 = (v25 + 664);
    v50 = *(v25 + 800);
    if (v50)
    {
      v51 = *(v50 + 8);
    }

    else
    {
      v51 = 0.0;
    }

    v53 = *v49;
    v52 = *(v25 + 672);
    [v26 sizeThatFits:{v51, 1.79769313e308, v74}];
    *v49 = v54;
    *(v25 + 672) = v55;
    v25 = v75;
    if (v53 != *(v75 + 664) || v52 != *(v75 + 672))
    {
      [(PKApplicationMessageView *)v75 _invalidateSize];
      v25 = v75;
    }

LABEL_64:
    if (*(v25 + 544))
    {
      if (v81)
      {
        v56 = dispatch_group_create();
      }

      else
      {
        v56 = 0;
      }

      objc_initWeak(&location, v25);
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      obja = *(v75 + 544);
      v57 = [obja countByEnumeratingWithState:&v89 objects:v115 count:16];
      if (v57)
      {
        v80 = *v90;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v90 != v80)
            {
              objc_enumerationMutation(obja);
            }

            v59 = *(*(&v89 + 1) + 8 * k);
            if (v56)
            {
              dispatch_group_enter(v56);
            }

            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke_3;
            v86[3] = &unk_1E80189E8;
            objc_copyWeak(&v88, &location);
            v87 = v56;
            v60 = v86;
            v61 = v60;
            if (v59)
            {
              if (*(v59 + 24))
              {
                __break(1u);
              }

              v62 = _Block_copy(v60);
              v63 = *(v59 + 16);
              *(v59 + 16) = v62;

              *(v59 + 24) = 1;
              if (v81)
              {
                v112[0] = 0;
                v112[1] = v112;
                v112[2] = 0x2020000000;
                v113 = 0;
                if (*(v59 + 8))
                {
                  v64 = 2;
                }

                else
                {
                  v64 = 1;
                }

                objc_initWeak(&from, v59);
                v65 = *(v59 + 32);
                block = MEMORY[0x1E69E9820];
                v105 = 3221225472;
                v106 = __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke;
                v107 = &unk_1E8018478;
                objc_copyWeak(&v109, &from);
                v108 = v112;
                v110 = v64;
                [v65 pkui_setAlpha:1 animated:&block withCompletion:0.0];
                if (*(v59 + 8))
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke_2;
                  aBlock[3] = &unk_1E80184A0;
                  objc_copyWeak(&v102, &from);
                  aBlock[4] = v112;
                  v103 = v64;
                  v66 = _Block_copy(aBlock);
                  v67 = [objc_alloc(MEMORY[0x1E69B8798]) initWithBlock:v66];
                  v68 = *(v59 + 8);
                  v98[0] = MEMORY[0x1E69E9820];
                  v98[1] = 3221225472;
                  v98[2] = __82__PKApplicationMessageView_RemovedSubviewContainer_commitAnimated_withCompletion___block_invoke_3;
                  v98[3] = &unk_1E8010DD0;
                  v69 = v67;
                  v99 = v69;
                  v70 = v66;
                  v100 = v70;
                  (*(v68 + 16))(v68, v59, v98);
                  v71 = *(v59 + 8);
                  *(v59 + 8) = 0;

                  objc_destroyWeak(&v102);
                }

                objc_destroyWeak(&v109);
                objc_destroyWeak(&from);
                _Block_object_dispose(v112, 8);
              }

              else
              {
                v72 = *(v59 + 8);
                *(v59 + 8) = 0;

                [(PKApplicationMessageView_RemovedSubviewContainer *)v59 _finishFromDealloc:?];
              }
            }

            objc_destroyWeak(&v88);
          }

          v57 = [obja countByEnumeratingWithState:&v89 objects:v115 count:16];
        }

        while (v57);
      }

      v73 = *(v75 + 544);
      *(v75 + 544) = 0;

      if (v56)
      {
        block = MEMORY[0x1E69E9820];
        v105 = 3221225472;
        v106 = __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke_4;
        v107 = &unk_1E8010998;
        objc_copyWeak(&v108, &location);
        dispatch_group_notify(v56, MEMORY[0x1E69E96A0], &block);
        objc_destroyWeak(&v108);
      }

      objc_destroyWeak(&location);
    }

    v4 = v75;
  }
}

- (void)_markPresented
{
  if (a1 && (*(a1 + 680) & 1) == 0)
  {
    if (*(a1 + 712) && *(a1 + 657) != 1)
    {
      *(a1 + 657) = 1;
      if ((*(a1 + 536) & 1) == 0)
      {
        *(a1 + 536) = 1;
      }

      goto LABEL_7;
    }

    if ((*(a1 + 536) & 1) == 0)
    {
      *(a1 + 536) = 1;
      a1 = *(a1 + 408);
      if (a1)
      {
LABEL_7:
        [(PKApplicationMessageView *)a1 _invalidateSize];
      }
    }
  }
}

- (void)_visitPreOrder:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    context = objc_autoreleasePoolPush();
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
    if ([v4 count])
    {
      while (1)
      {
        v5 = [v4 lastObject];
        [v4 removeLastObject];
        v11 = 1;
        v10 = 0;
        v3[2](v3, v5, &v11, &v10);
        if (v10 == 1)
        {
          break;
        }

        if (v11 == 1 && [v5[91] count])
        {
          v6 = v5[91];
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __43__PKApplicationMessageView__visitPreOrder___block_invoke;
          v8[3] = &unk_1E8018A38;
          v9 = v4;
          [v6 enumerateObjectsWithOptions:2 usingBlock:v8];
        }

        if (![v4 count])
        {
          goto LABEL_10;
        }
      }
    }

LABEL_10:

    objc_autoreleasePoolPop(context);
  }
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_3(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[534];
  if (a2[552] != v2)
  {
    a2[552] = v2;
    [(PKApplicationMessageView *)a2 _invalidateSize];
  }
}

- (void)_invalidateSize
{
  if (a1)
  {
    v1 = a1;
    do
    {
      if (v1[568])
      {
        break;
      }

      v1[568] = 1;
      v3 = v1;
      [v1 setNeedsLayout];
      v2 = v3[51];

      v1 = v2;
    }

    while (v2);
  }
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8[59] context];
  v6 = v5;
  if (v5 && (*(v5 + 8) & 1) == 0 && (v7 = *(v5 + 32), ([*(v5 + 16) numberOfChildren] + v7) > 1))
  {
    [*(a1 + 32) addObject:v8];
    *a3 = 0;
  }

  else if (*(v8 + 70) != 1.79769313e308)
  {
    v8[70] = 0x7FEFFFFFFFFFFFFFLL;
    [(PKApplicationMessageView *)v8 _invalidateSize];
  }
}

double __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a2 + 712))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    result = *(a2 + 672);
    *(*(*(a1 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == v3)
  {
    v4 = 1.79769313e308;
  }

  else
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
  }

  if (v3[70] != v4)
  {
    v3[70] = v4;
    v5 = v3;
    [(PKApplicationMessageView *)v3 _invalidateSize];
    v3 = v5;
  }
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_7(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4[535] == 1)
  {
    v6 = v4;
    PKCATrackedLayoutPerform();
  }

  else
  {
    [v4 layoutIfNeededAnimated:0];
    *a3 = 0;
  }
}

double __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  IsAnimated = PKCATrackedLayoutIsAnimated();
  [*(a1 + 32) bounds];

  return [(PKApplicationMessageView *)v2 _layoutWithContext:v4 bounds:v5, v6, v7];
}

void __59__PKApplicationMessageView__treeLayoutPostludeWithContext___block_invoke_10(uint64_t a1, void *a2)
{
  v33 = a2;
  v2 = [v33 content];
  v3 = v33[102];
  if (!v3)
  {
    v6 = [v2 parent];
    v9 = [v2 parent];
    v10 = [v6 context];
    v11 = v10;
    if (v10 && ((*(v10 + 8) & 1) != 0 || (v12 = *(v10 + 32), ([*(v10 + 16) numberOfChildren] + v12) <= 1)) && (objc_msgSend(v9, "context"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
      if (*(v13 + 8) == 1)
      {

LABEL_21:
        v24 = 1;
LABEL_24:
        [v33[53] setScrollEnabled:v24];
        [v33 setUserInteractionEnabled:v24];

LABEL_32:
        goto LABEL_38;
      }

      v22 = *(v13 + 32);
      v23 = [*(v13 + 16) numberOfChildren] + v22;

      if (v23 < 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v6 = [v2 parent];
    v7 = [v6 context];
    if (v7)
    {
      v8 = v7;
      if (*(v7 + 8) == 1)
      {

LABEL_17:
        v17 = 1;
        goto LABEL_26;
      }

      v15 = *(v7 + 32);
      v16 = [*(v7 + 16) numberOfChildren] + v15;

      if (v16 < 2)
      {
        goto LABEL_17;
      }
    }

    v17 = 0;
LABEL_26:
    [v33 setUserInteractionEnabled:v17];
    v25 = [v2 context];
    v26 = v25;
    if (v25 && ((*(v25 + 8) & 1) != 0 || (v27 = *(v25 + 32), ([*(v25 + 16) numberOfChildren] + v27) < 2)) || (objc_msgSend(v6, "context"), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v30 = v29;
      if (*(v29 + 8) == 1)
      {

LABEL_42:
        v28 = 1;
        goto LABEL_31;
      }

      v31 = *(v29 + 32);
      v32 = [*(v29 + 16) numberOfChildren] + v31;

      if (v32 < 2)
      {
        goto LABEL_42;
      }
    }

    v28 = 0;
LABEL_31:
    [v33[53] setScrollEnabled:v28];
    goto LABEL_32;
  }

  if (v3 != 2)
  {
    goto LABEL_38;
  }

  v4 = [v2 context];
  if (!v4)
  {
    goto LABEL_36;
  }

  v5 = v4;
  if (*(v4 + 8) != 1)
  {
    v18 = *(v4 + 32);
    v19 = [*(v4 + 16) numberOfChildren] + v18;

    if (v19 <= 1)
    {
      goto LABEL_19;
    }

LABEL_36:
    v20 = v33[53];
    v21 = 1;
    goto LABEL_37;
  }

LABEL_19:
  v20 = v33[53];
  v21 = 0;
LABEL_37:
  [v20 setScrollEnabled:v21];
LABEL_38:
}

uint64_t __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 key];
  v7 = [v5 key];

  if ([v6 isEqual:v7])
  {
    v8 = [v4 context];
    v9 = v8;
    if (v8)
    {
      v8 = v8[3];
    }

    v10 = [v8 needsRemoval] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = 0;
    goto LABEL_7;
  }

  v8 = *(v5 + 7);
  v9 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
  }

  if ((v9 & 1) != 0 || v8 == 1)
  {
    v10 = *(v5 + 4);
LABEL_7:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_4;
    v11[3] = &unk_1E8010AD8;
    v12 = v6;
    [(PKApplicationMessageView *)v10 setBlurRadius:v11 animated:8.33333333 withCompletion:?];
  }

LABEL_8:
}

void __58__PKApplicationMessageView__updateSubviewsWithType_depth___block_invoke_5(void *a1, unint64_t a2, void *a3)
{
  v6 = a3;
  v7 = *(*(a1[5] + 8) + 40);
  if (v7)
  {
    while (!a2 || *(v7 + 40) >= a2)
    {
      v8 = *(v7 + 32);
      v9 = *(a1[4] + 424);
      if (v6)
      {
        [v9 insertSubview:v8 aboveSubview:v6];
      }

      else
      {
        [v9 bringSubviewToFront:v8];
      }

      v14 = v8;

      ++*(*(a1[6] + 8) + 24);
      v10 = a1[7];
      v11 = *(*(a1[6] + 8) + 24);
      if (v11 >= v10)
      {
        v12 = 0;
      }

      else
      {
        v3 = [*(a1[4] + 736) objectAtIndexedSubscript:v10 + ~v11];
        v12 = v3;
      }

      objc_storeStrong((*(a1[5] + 8) + 40), v12);
      if (v11 < v10)
      {
      }

      v13 = v14;
      v7 = *(*(a1[5] + 8) + 40);
      v6 = v14;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = v6;
LABEL_15:
}

void __59__PKApplicationMessageView__stageRemovedSubviewContainers___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 nextObject];
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = v3[5];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

      v3 = 0;
    }
  }
}

uint64_t __59__PKApplicationMessageView__stageRemovedSubviewContainers___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = *(a2 + 40);
    if (v4)
    {
LABEL_3:
      v6 = v4[5];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  v7 = v5 >= v6;
  v8 = v5 == v6;
  v9 = -1;
  if (v7)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

uint64_t __59__PKApplicationMessageView__stageRemovedSubviewContainers___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = *(a2 + 48);
    if (v4)
    {
LABEL_3:
      v6 = v4[6];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  v7 = v5 >= v6;
  v8 = v5 == v6;
  v9 = -1;
  if (v7)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

void __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 480) content];
  if (v2)
  {
    [(PKApplicationMessageContentView *)v2 setContent:v3 animated:0];
  }

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 480) registration];
  v6 = [v5 badge];
  if (v4 && *(v4 + 601) != v6)
  {
    *(v4 + 601) = v6;
    [(PKApplicationMessageContentView *)v4 _updateSubviewsAnimated:?];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(*(a1 + 40) + 688) == 0;
    if (*(v7 + 600) != v8)
    {
      *(v7 + 600) = v8;

      [(PKApplicationMessageContentView *)v7 _updateSubviewsAnimated:?];
    }
  }
}

uint64_t __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 message];
  v3 = [v2 registration];
  v4 = [v3 badge];

  return v4;
}

void __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v7;
    [WeakRetained[92] removeObjectAtIndex:{objc_msgSend(WeakRetained[92], "indexOfObjectIdenticalTo:", v4)}];
    [WeakRetained[93] removeObjectAtIndex:{objc_msgSend(WeakRetained[93], "indexOfObjectIdenticalTo:", v4)}];
    if (v4)
    {
      v5 = v4[4];
    }

    else
    {
      v5 = 0;
    }

    [v5 removeFromSuperview];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_group_leave(v6);
  }
}

void __69__PKApplicationMessageView__commitStagedContentAnimated_dismissable___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained needsRemoval];
    v2 = v5;
    if (v3)
    {
      v4 = objc_loadWeakRetained(v5 + 101);
      [v4 applicationMessageViewNeedsRemoval:v5];

      v2 = v5;
    }
  }
}

void __40__PKApplicationMessageView__queueReload__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[697] = 0;
    v3 = [(PKApplicationMessageView *)WeakRetained _rootView];
    v4 = v3;
    if (v3 == v2)
    {
      v3 = v2;
    }

    else if (v3[697])
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134218240;
        v7 = v2;
        v8 = 2048;
        v9 = v4;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKApplicationMessageView (%p): deferring queued reload to new root view %p.", &v6, 0x16u);
      }

      goto LABEL_9;
    }

    __40__PKApplicationMessageView__queueReload__block_invoke_2(v3);
LABEL_9:
  }
}

void __40__PKApplicationMessageView__queueReload__block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    __break(1u);
  }

  v6 = v1;
  [(PKApplicationMessageView *)v1 _visitPreOrder:?];
  v2 = [(PKApplicationMessageView *)v6 _rootView];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKApplicationMessageView (%p): reloading full graph.", &buf, 0xCu);
  }

  v4 = v6[88];
  if (v4)
  {
    [v4 setNeedsUpdateConfiguration];
  }

  [v2 dropSwipe];
  if (v2)
  {
    v5 = v2[98];
    v2[98] = 0;
  }

  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v8 = __35__PKApplicationMessageView__reload__block_invoke;
  v9 = &unk_1E80187C8;
  v10 = v6;
  [(PKApplicationMessageView *)v2 _treeLayoutWithContext:&buf block:?];
}

- (void)_expand
{
  if (!self->_invalidated)
  {
    v3 = [(PKApplicationMessageNode *)self->_content context];
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 32);
      v7 = ([*(v3 + 16) numberOfChildren] + v6) > 1;
      v8 = v4[8];
      if (v8 != v7)
      {
        v4[8] = v7;
        v8 = v7;
      }

      if (v5 != v8)
      {
        [(PKApplicationMessageView *)self dropSwipe];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __35__PKApplicationMessageView__expand__block_invoke;
        v9[3] = &unk_1E8018A10;
        v9[4] = self;
        v10 = v8;
        [(PKApplicationMessageView *)self _treeLayoutWithContext:v9 block:?];
      }
    }
  }
}

void __35__PKApplicationMessageView__expand__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  [(PKApplicationMessageView *)*(a1 + 32) _updateSubviewsWithType:v1 depth:*(*(a1 + 32) + 688)];
}

void __52__PKApplicationMessageView__contentOffsetForDismiss__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (!v6[102])
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
    *a3 = 1;
  }
}

void __43__PKApplicationMessageView__visitPreOrder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 context];
  v5 = v3;
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  [v2 addObject:v4];
}

void __44__PKApplicationMessageView__visitPostOrder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 context];
  v5 = v3;
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  [v2 addObject:v4];
}

- (void)_clearTapped:(id)a3
{
  v4 = [(PKApplicationMessageNode *)self->_content context];
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v5 + 9) = 1;
    }
  }

  v6 = v4;
  [(PKApplicationMessageView *)self _dismissWithAnimatedSwipe:?];
}

- (BOOL)needsRemoval
{
  if (self->_invalidated || self->_needsRemoval)
  {
    return 1;
  }

  if ([(NSMutableArray *)self->_removedSubviews count])
  {
    return 0;
  }

  v5 = [(PKApplicationMessageNode *)self->_content context];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
    v3 = [*(v5 + 16) numberOfChildren] + v7 == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (PKApplicationMessageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end