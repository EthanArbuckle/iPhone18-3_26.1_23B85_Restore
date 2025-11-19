@interface VKCActionInfoView
+ (id)buildMoreButtonMenuFromQuickActions:(id)a3 moreButton:(id)a4 isStandAloneMoreButton:(BOOL)a5;
- (BOOL)containsInteractableItemAtPoint:(CGPoint)a3;
- (BOOL)isInteractableView:(id)a3 atPoint:(CGPoint)a4;
- (CGRect)contentsRect;
- (CGRect)normalizedVisibleRect;
- (CGRect)visibleImageRect;
- (CGSize)sizeForView:(id)a3 scale:(double)a4;
- (NSArray)allViews;
- (UIEdgeInsets)edgeInsets;
- (VKCActionInfoView)initWithLiveTextButton:(id)a3 cornerView:(id)a4;
- (VKPlatformView)containerView;
- (id)configureView:(id)a3 isLeading:(BOOL)a4 container:(id)a5 layoutContext:(id)a6;
- (id)createContainerForView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_applyConfigurationUpdateHandlerToQuickActions;
- (void)adjustContextToFitWidth:(id)a3;
- (void)layoutContainerView;
- (void)layoutSubviews;
- (void)processView:(id)a3 hasContent:(BOOL)a4 isLeading:(BOOL)a5 layoutContext:(id)a6;
- (void)setContentsRect:(CGRect)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLayoutUpdatesSuspended:(BOOL)a3;
- (void)setLiveTextButtonDisabled:(BOOL)a3;
- (void)setNormalizedVisibleRect:(CGRect)a3;
- (void)setPreferredQuickActionButtonHeight:(double)a3;
- (void)setQuickActionConfigurationUpdateHandler:(id)a3;
- (void)setQuickActions:(id)a3;
- (void)setQuickActionsDisabled:(BOOL)a3;
- (void)setVisualSearchCornerView:(id)a3;
- (void)setVisualSearchCornerViewDisabled:(BOOL)a3;
- (void)set_quickActionsHidden:(BOOL)a3;
- (void)updateButtonClippingForContext:(id)a3;
- (void)updateFramesForContext:(id)a3;
- (void)updateLayoutIfNecessary;
@end

@implementation VKCActionInfoView

- (VKCActionInfoView)initWithLiveTextButton:(id)a3 cornerView:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = VKCActionInfoView;
  v9 = [(VKCActionInfoView *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_liveTextButton, a3);
    objc_storeStrong(&v10->_visualSearchCornerView, a4);
    v11 = VKBundle();
    v12 = [v11 localizedStringForKey:@"VK_QUICK_ACTION_TITLE_MORE" value:@"VK_QUICK_ACTION_TITLE_MORE" table:@"Localizable"];

    v13 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"ellipsis.circle.fill"];
    v14 = [(VKCActionInfoButton *)VKCActionInfoMoreButton buttonWithImage:v13 text:v12];
    moreButton = v10->_moreButton;
    v10->_moreButton = v14;

    [(VKCActionInfoMoreButton *)v10->_moreButton setAccessibilityIdentifier:@"QuickActionMore"];
    [(VKCActionInfoButton *)v10->_moreButton setIsMoreButton:1];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v17 = [(VKCActionInfoView *)v10 registerForTraitChanges:v16 withAction:sel_vk_setNeedsLayout];

    [(VKCActionInfoMoreButton *)v10->_moreButton addTarget:v10->_moreButton action:sel__moreButtonAction_ forControlEvents:64];
    __asm { FMOV            V0.2D, #12.0 }

    *&v10->_edgeInsets.top = _Q0;
    *&v10->_edgeInsets.bottom = _Q0;
    v23 = objc_alloc_init(VKCActionInfoViewLayoutContext);
    layoutContext = v10->_layoutContext;
    v10->_layoutContext = v23;

    v25 = [(VKCActionInfoView *)v10 containerView];
  }

  return v10;
}

- (CGRect)visibleImageRect
{
  [(VKCActionInfoView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKCActionInfoView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v4, v6, v8, v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(VKCActionInfoView *)self normalizedVisibleRect];
  VKMRectFromNormalizedSubrect(v16, v18, v20, v22, v23, v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v16;
  v36 = v18;
  v37 = v20;
  v38 = v22;

  return CGRectIntersection(*&v35, *&v28);
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  self->_edgeInsets = a3;
  [(VKCActionInfoView *)self setShouldAnimateQuickActionVisibilityChanges:1];

  [(VKCActionInfoView *)self layoutContainerView];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VKCActionInfoView;
  [(VKCActionInfoView *)&v4 setHidden:a3];
  [(UIView *)self vk_setNeedsLayout];
}

- (void)updateLayoutIfNecessary
{
  if ([(VKCActionInfoView *)self layoutUpdatesSuspended])
  {
    [(VKCActionInfoView *)self setLayoutUpdatesSuspended:0];
    [(UIView *)self vk_setNeedsLayout];
    [(UIView *)self vk_layoutIfNeeded];

    [(VKCActionInfoView *)self setLayoutUpdatesSuspended:1];
  }

  else
  {

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (VKPlatformView)containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = objc_alloc_init(VKPlatformView);
    v5 = self->_containerView;
    self->_containerView = v4;

    v6 = [(VKCActionInfoView *)self createContainerForView:self->_liveTextButton];
    [(VKCActionInfoView *)self setTextButtonContainer:v6];

    v7 = [(VKCActionInfoView *)self createContainerForView:self->_visualSearchCornerView];
    [(VKCActionInfoView *)self setVisualSearchContainer:v7];

    v8 = [(VKCActionInfoView *)self createContainerForView:self->_moreButton];
    [(VKCActionInfoView *)self setMoreButtonContainer:v8];

    v9 = self->_containerView;
    v10 = [(VKCActionInfoView *)self textButtonContainer];
    [(VKPlatformView *)v9 addSubview:v10];

    v11 = self->_containerView;
    v12 = [(VKCActionInfoView *)self visualSearchContainer];
    [(VKPlatformView *)v11 addSubview:v12];

    v13 = self->_containerView;
    v14 = [(VKCActionInfoView *)self moreButtonContainer];
    [(VKPlatformView *)v13 addSubview:v14];

    [(VKCActionInfoView *)self bounds];
    [(VKPlatformView *)self->_containerView setFrame:?];
    v15 = [(VKPlatformView *)self->_containerView setAutoresizingMask:18];
    if (vk_solariumEnabled(v15, v16))
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DD820]);
      [(VKPlatformView *)self->_containerView _setBackground:v17];
    }

    [(VKCActionInfoView *)self addSubview:self->_containerView];
    containerView = self->_containerView;
  }

  return containerView;
}

+ (id)buildMoreButtonMenuFromQuickActions:(id)a3 moreButton:(id)a4 isStandAloneMoreButton:(BOOL)a5
{
  v7 = a4;
  v8 = [a3 reverseObjectEnumerator];
  v9 = [v8 allObjects];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke;
  v17 = &unk_1E7BE5838;
  v18 = v7;
  v19 = a5;
  v10 = v7;
  v11 = [v9 vk_compactMap:&v14];

  v12 = [MEMORY[0x1E69DCC60] menuWithChildren:{v11, v14, v15, v16, v17}];

  return v12;
}

id __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 defaultAction];
  v8 = [v7 dd_action];
  [v8 setFallBackView:v6];

  if (a3 > 10)
  {
    v10 = 0;
  }

  else
  {
    objc_initWeak(&location, v5);
    objc_initWeak(&from, *(a1 + 32));
    v9 = MEMORY[0x1E69DC928];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke_2;
    v12[3] = &unk_1E7BE5810;
    v15 = *(a1 + 40);
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v10 = [v9 elementWithUncachedProvider:v12];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke_2(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4 != 1)
  {
    v7 = [WeakRetained superview];
    v8 = [v7 isHidden];

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_8:
    v3[2](v3, MEMORY[0x1E695E0F0]);
    goto LABEL_15;
  }

  if (![WeakRetained isHidden])
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 window];

    if (!v14)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 menuImage];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    v12 = [v15 image];
  }

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 isShowingSingleTapMenu];

  if (v17 && (v18 = objc_loadWeakRetained((a1 + 32)), v19 = [v18 showsMenuAsPrimaryAction], v18, !v19))
  {
    v28 = MEMORY[0x1E69DC628];
    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = [v29 text];
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke_3;
    v36 = &unk_1E7BE4168;
    objc_copyWeak(&v37, (a1 + 32));
    v31 = [v28 actionWithTitle:v30 image:v12 identifier:0 handler:&v33];

    v38 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:{1, v33, v34, v35, v36}];
    (v3)[2](v3, v32);

    objc_destroyWeak(&v37);
  }

  else
  {
    v20 = objc_loadWeakRetained((a1 + 32));
    v21 = [v20 menu];

    v22 = [v21 children];
    v23 = MEMORY[0x1E69DCC60];
    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v24 text];
    v26 = [v23 menuWithTitle:v25 image:v12 identifier:0 options:0 children:v22];

    v39[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    (v3)[2](v3, v27);
  }

LABEL_15:
}

void __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performDefaultElementAction];
}

- (void)setQuickActionConfigurationUpdateHandler:(id)a3
{
  v4 = a3;
  quickActionConfigurationUpdateHandler = self->_quickActionConfigurationUpdateHandler;
  v9 = v4;
  v6 = _Block_copy(v4);
  LOBYTE(quickActionConfigurationUpdateHandler) = [quickActionConfigurationUpdateHandler isEqual:v6];

  if ((quickActionConfigurationUpdateHandler & 1) == 0)
  {
    v7 = [v9 copy];
    v8 = self->_quickActionConfigurationUpdateHandler;
    self->_quickActionConfigurationUpdateHandler = v7;

    [(VKCActionInfoView *)self _applyConfigurationUpdateHandlerToQuickActions];
    [(VKCActionInfoView *)self updateLayoutIfNecessary];
  }
}

- (void)_applyConfigurationUpdateHandlerToQuickActions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(VKCActionInfoView *)self liveTextButton];
  v4 = [v3 tintColor];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VKCActionInfoView *)self quickActions];
  v6 = [(VKCActionInfoView *)self moreButton];
  v7 = [v5 vk_arrayByAddingNonNilObject:v6];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_initWeak(&location, self);
        [v11 setTintColor:v4];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __67__VKCActionInfoView__applyConfigurationUpdateHandlerToQuickActions__block_invoke;
        v12[3] = &unk_1E7BE5660;
        objc_copyWeak(&v13, &location);
        [v11 setConfigurationUpdateHandler:v12];
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __67__VKCActionInfoView__applyConfigurationUpdateHandlerToQuickActions__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v9;
    if ([WeakRetained wantsTranslucentActionInfoButtons] && objc_msgSend(WeakRetained, "tintAdjustmentMode") != 2)
    {
      if ([v4 isSelected])
      {
        [v4 translucentSelectedButtonConfiguration];
      }

      else
      {
        [v4 translucentButtonConfiguration];
      }
      v5 = ;
    }

    else
    {
      v5 = [v4 filledButtonConfiguration];
      if (([v4 isSelected] & 1) == 0)
      {
        v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
        [v5 setBaseBackgroundColor:v6];
      }
    }

    [v4 setConfiguration:v5];
    v7 = [WeakRetained quickActionConfigurationUpdateHandler];

    if (v7)
    {
      v8 = [WeakRetained quickActionConfigurationUpdateHandler];
      (v8)[2](v8, v4);
    }
  }
}

- (void)setQuickActionsDisabled:(BOOL)a3
{
  self->_quickActionsDisabled = a3;
  if (![(VKCActionInfoView *)self layoutUpdatesSuspended])
  {

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setLiveTextButtonDisabled:(BOOL)a3
{
  if (self->_liveTextButtonDisabled != a3)
  {
    self->_liveTextButtonDisabled = a3;
    if ([(VKCActionInfoView *)self layoutUpdatesSuspended])
    {
      liveTextButtonDisabled = self->_liveTextButtonDisabled;
      v6 = [(VKCActionInfoView *)self liveTextButton];
      v5 = [v6 superview];
      [v5 setHidden:liveTextButtonDisabled];
    }

    else
    {

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (void)setVisualSearchCornerViewDisabled:(BOOL)a3
{
  if (self->_visualSearchCornerViewDisabled != a3)
  {
    v3 = a3;
    self->_visualSearchCornerViewDisabled = a3;
    if ([(VKCActionInfoView *)self layoutUpdatesSuspended])
    {
      v6 = [(VKCActionInfoView *)self visualSearchCornerView];
      v5 = [v6 superview];
      [v5 setHidden:v3];
    }

    else
    {

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (void)set_quickActionsHidden:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->__quickActionsHidden != a3)
  {
    self->__quickActionsHidden = a3;
    if (a3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = [(VKCActionInfoView *)self quickActions];
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v11 + 1) + 8 * i);
            [v9 setSelected:0];
            v10 = [v9 contextMenuInteraction];
            [v10 dismissMenu];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setLayoutUpdatesSuspended:(BOOL)a3
{
  self->_layoutUpdatesSuspended = a3;
  if (!a3)
  {
    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setPreferredQuickActionButtonHeight:(double)a3
{
  if (self->_preferredQuickActionButtonHeight != a3)
  {
    self->_preferredQuickActionButtonHeight = a3;
    [(UIView *)self vk_setNeedsLayout];
  }
}

- (NSArray)allViews
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(VKCActionInfoView *)self quickActions];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(VKCActionInfoView *)self liveTextButton];
  v8 = [(VKCActionInfoView *)self visualSearchCornerView];
  v13[1] = v8;
  v9 = [(VKCActionInfoView *)self moreButton];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v11 = [v6 arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VKCActionInfoView;
  [(VKCActionInfoView *)&v3 layoutSubviews];
  if (![(VKCActionInfoView *)self layoutUpdatesSuspended])
  {
    [(VKCActionInfoView *)self layoutContainerView];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = VKCActionInfoView;
  v5 = [(VKCActionInfoView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self || ([(VKCActionInfoView *)self containerView], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {

    v5 = 0;
  }

  return v5;
}

- (void)layoutContainerView
{
  v3 = [(VKCActionInfoView *)self superview];
  v4 = [(VKCActionInfoView *)self automaticVisualRectLayoutDisabled];
  if (v3 && (v5 = v4, [(VKCActionInfoView *)self window], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = [(VKCActionInfoView *)self isHidden], v7, (v8 & 1) == 0))
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:0];
    if (v5)
    {
      [(VKCActionInfoView *)self visibleImageRect];
      [(VKCActionInfoView *)self bounds];
      x = v10;
      y = v12;
      width = v14;
      height = v16;
      v18 = 1.0;
      v19 = 12.0;
    }

    else
    {
      [(UIView *)self vk_viewPointRatioFromWindow];
      v18 = v20;
      v19 = v20 * 12.0;
      [(VKCActionInfoView *)self visibleImageRect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(VKCActionInfoView *)self bounds];
      v76.origin.x = v22;
      v76.origin.y = v24;
      v76.size.width = v26;
      v76.size.height = v28;
      v74 = CGRectIntersection(v73, v76);
      x = v74.origin.x;
      y = v74.origin.y;
      width = v74.size.width;
      height = v74.size.height;
    }

    if (VKMRectHasArea(x, y, width, height))
    {
      v70 = v19;
      [(VKCActionInfoView *)self edgeInsets];
      v30 = v18 * v29;
      v68 = v32;
      v69 = v18 * v29 + v18 * v31;
      [(VKCActionInfoView *)self edgeInsets];
      v34 = v33;
      [(VKCActionInfoView *)self edgeInsets];
      v36 = v34 + v35;
      [(VKCActionInfoView *)self preferredQuickActionButtonHeight];
      v38 = v37;
      if ([(VKCActionInfoView *)self automaticVisualRectLayoutDisabled])
      {
        v39 = v38 + v36;
        if (v39 <= 44.0)
        {
          v39 = 44.0;
        }
      }

      else
      {
        v40 = [(VKCActionInfoView *)self liveTextButton];
        [v40 backgroundDiameter];
        v39 = v36 + v41;
      }

      v42 = width - v69;
      v43 = x + v30;
      v44 = v18 * v39;
      if ([(VKCActionInfoView *)self alignQuickActionsWithVerticalCenter])
      {
        v45 = y + (v44 - height) * -0.5;
      }

      else
      {
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        v45 = CGRectGetMaxY(v75) - v18 * v68 - v44;
      }

      [(UIView *)self vk_convertFrameToViewScale:0 shouldRound:v43, v45, v42, v44];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [(VKCActionInfoView *)self containerView];
      [v54 setFrame:{v47, v49, v51, v53}];

      v55 = [(VKCActionInfoView *)self layoutContext];
      [v55 reset];
      v56 = [(VKCActionInfoView *)self containerView];
      [v56 bounds];
      [v55 setContainerBounds:?];

      [v55 setCurrentMaxX:v42];
      [v55 setCurrentMinX:0.0];
      [v55 setScale:v18];
      [v55 setPadding:v70];
      [v55 setAnimateItemVisibilityChanges:{-[VKCActionInfoView shouldAnimateQuickActionVisibilityChanges](self, "shouldAnimateQuickActionVisibilityChanges")}];
      [v55 setShowingMoreButton:0];
      v57 = 0;
      if (![(VKCActionInfoView *)self liveTextButtonDisabled])
      {
        v58 = [(VKCActionInfoView *)self liveTextButton];
        [v58 vk_alpha];
        v57 = v59 > 0.0;
      }

      v60 = [(VKCActionInfoView *)self liveTextButton];
      [(VKCActionInfoView *)self processView:v60 hasContent:v57 isLeading:0 layoutContext:v55];

      v61 = [(VKCActionInfoView *)self visualSearchCornerView];
      if (-[VKCActionInfoView visualSearchCornerViewDisabled](self, "visualSearchCornerViewDisabled") || ([v61 isHidden] & 1) != 0)
      {
        v62 = 0;
      }

      else
      {
        v63 = [v61 cornerButtons];
        v62 = [v63 count] != 0;
      }

      v64 = [(VKCActionInfoView *)self visualSearchCornerView];
      [(VKCActionInfoView *)self processView:v64 hasContent:v62 isLeading:0 layoutContext:v55];

      v65 = [(VKCActionInfoView *)self quickActions];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __40__VKCActionInfoView_layoutContainerView__block_invoke;
      v71[3] = &unk_1E7BE5860;
      v71[4] = self;
      v66 = v55;
      v72 = v66;
      [v65 enumerateObjectsUsingBlock:v71];

      [(VKCActionInfoView *)self adjustContextToFitWidth:v66];
      [(VKCActionInfoView *)self updateFramesForContext:v66];
      [(VKCActionInfoView *)self updateButtonClippingForContext:v66];
      if ([v66 showingMoreButton])
      {
        [(VKCActionInfoView *)self updateMoreButtonMenuForContext:v66];
      }

      else
      {
        v67 = [(VKCActionInfoView *)self moreButtonContainer];
        [v67 setHidden:1];
      }
    }

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    v9 = [(VKCActionInfoView *)self allViews];
    [v9 enumerateObjectsUsingBlock:&__block_literal_global_13];
  }
}

void __40__VKCActionInfoView_layoutContainerView__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if ([v3 _quickActionsHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) quickActionsDisabled] ^ 1;
  }

  [v3 processView:v5 hasContent:v4 isLeading:1 layoutContext:*(a1 + 40)];
}

void __40__VKCActionInfoView_layoutContainerView__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 superview];
  [v2 setHidden:1];
}

- (void)adjustContextToFitWidth:(id)a3
{
  v4 = a3;
  v5 = [v4 leadingLayout];
  v6 = [v4 trailingLayout];
  v7 = [v6 firstObject];

  if (v7)
  {
    [v7 frame];
    v9 = v8;
  }

  else
  {
    [v4 containerBounds];
    v9 = v10;
  }

  [v4 padding];
  v12 = v11;
  v13 = [v4 leadingLayout];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __45__VKCActionInfoView_adjustContextToFitWidth___block_invoke;
  v58[3] = &unk_1E7BE58A8;
  v14 = v4;
  v59 = v14;
  v60 = v9;
  v15 = [v13 indexOfObjectPassingTest:v58];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v5 objectAtIndexedSubscript:v15];
    v17 = [v5 lastObject];

    [v14 scale];
    v19 = v18 * 64.0;
    v20 = [(VKCActionInfoView *)self moreButton];
    [v14 scale];
    [(VKCActionInfoView *)self sizeForView:v20 scale:?];
    v22 = v21;
    rect = v23;

    if (v19 < v22)
    {
      v19 = v22;
    }

    [v16 frame];
    MinX = CGRectGetMinX(v61);
    if (v16 != v17 || (MinX = v9 - MinX, MinX - v12 <= v19))
    {
      [v16 setHidden:{1, MinX}];
      v25 = objc_alloc_init(VKCQuickActionLayoutInfo);
      v26 = [(VKCActionInfoView *)self moreButton];
      [(VKCQuickActionLayoutInfo *)v25 setView:v26];

      [v16 frame];
      x = v62.origin.x;
      y = v62.origin.y;
      v62.size.width = v22;
      v62.size.height = rect;
      MaxX = CGRectGetMaxX(v62);
      v29 = [v14 leadingLayout];
      [v29 insertObject:v25 atIndex:v15];

      if (v15)
      {
        v56 = v19;
        v30 = x - (v12 + MaxX - v9);
        if (v15 < 1)
        {
          v47 = 0;
          goto LABEL_33;
        }

        v52 = v9;
        v53 = v12;
        v31 = v15 + 1;
        while (1)
        {
          v32 = [v14 leadingLayout];
          v33 = [v32 vk_safeObjectAtIndex:v31 - 2];

          if (!v33)
          {
            goto LABEL_31;
          }

          v63.origin.x = v30;
          v63.origin.y = y;
          v63.size.width = v22;
          v63.size.height = rect;
          v54 = CGRectGetMaxX(v63);
          [v33 frame];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v64.origin.x = v30;
          v64.origin.y = y;
          v42 = v22;
          v64.size.width = v22;
          v64.size.height = rect;
          v43 = CGRectGetMinX(v64);
          v65.origin.x = v35;
          v65.origin.y = v37;
          v65.size.width = v39;
          v65.size.height = v41;
          v44 = CGRectGetMaxX(v65);
          if (v39 >= v56)
          {
            v45 = v43 - v44;
            if (v45 >= v53)
            {
              if (v45 > v53)
              {
                v66.origin.x = v35;
                v66.origin.y = v37;
                v66.size.width = v39;
                v66.size.height = v41;
                v47 = 0;
                v30 = v53 + CGRectGetMaxX(v66);
                goto LABEL_27;
              }

              v22 = v42;
              if (v45 != v53 && vabdd_f64(v45, v53) >= fabs(v53 * 0.000000999999997))
              {
                [v33 setFrame:{v35, v37, v39 - (v53 + v54 - v52), v41}];
              }

              goto LABEL_31;
            }

            v46 = v39 + v45 - v53;
            [v33 setFrame:{v35, v37, v46, v41}];
            v44 = v56;
            if (v46 >= v56)
            {
              v47 = 0;
LABEL_27:
              v22 = v42;
LABEL_32:

              goto LABEL_33;
            }
          }

          [v33 setHidden:{1, v44}];

          --v31;
          v30 = v35;
          v22 = v42;
          if (v31 <= 1)
          {
            v47 = 0;
            v30 = v35;
LABEL_33:
            [(VKCQuickActionLayoutInfo *)v25 setFrame:v30, y, v22, rect];
            [(VKCQuickActionLayoutInfo *)v25 setHidden:v47];
            [v14 setShowingMoreButton:v47 ^ 1];
            goto LABEL_34;
          }
        }
      }

      v48 = [v14 trailingLayout];
      v33 = [v48 firstObject];

      if (!v33)
      {
        v30 = 0.0;
        v47 = v22 > v9;
        goto LABEL_32;
      }

      [v33 frame];
      v30 = 0.0;
      if (v49 < v12 + v22)
      {
        v47 = 1;
        goto LABEL_32;
      }

LABEL_31:
      v47 = 0;
      goto LABEL_32;
    }

    [v16 frame];
    [v16 setFrame:?];
    [v14 setShowingMoreButton:0];
    while (1)
    {
      ++v15;
      v50 = [v14 leadingLayout];
      v51 = [v50 count];

      if (v15 >= v51)
      {
        break;
      }

      v25 = [v5 objectAtIndexedSubscript:v15];
      [(VKCQuickActionLayoutInfo *)v25 setHidden:1];
LABEL_34:
    }
  }
}

BOOL __45__VKCActionInfoView_adjustContextToFitWidth___block_invoke(uint64_t a1, void *a2)
{
  [a2 frame];
  MaxX = CGRectGetMaxX(v6);
  [*(a1 + 32) padding];
  return MaxX + v4 > *(a1 + 40);
}

- (void)updateButtonClippingForContext:(id)a3
{
  v3 = [a3 leadingLayout];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_316];
}

void __52__VKCActionInfoView_updateButtonClippingForContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;

  [v2 desiredFrame];
  v7 = fabs(v5 / v6 + -1.0);
  v8 = objc_opt_class();
  v9 = [v2 view];

  v12 = VKDynamicCast(v8, v9);

  if (v7 >= 0.01)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  v11 = [v12 configuration];
  if ([v11 titleLineBreakMode] != v10)
  {
    [v11 setTitleLineBreakMode:v10];
    [v12 setConfiguration:v11];
  }
}

- (void)updateFramesForContext:(id)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:0];
  v4 = [v3 leadingLayout];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke;
  v21[3] = &unk_1E7BE58F0;
  v5 = v3;
  v22 = v5;
  [v4 enumerateObjectsUsingBlock:v21];

  v6 = [v5 trailingLayout];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke_2;
  v19[3] = &unk_1E7BE58F0;
  v7 = v5;
  v20 = v7;
  [v6 enumerateObjectsUsingBlock:v19];

  [MEMORY[0x1E6979518] setDisableActions:0];
  v8 = [v7 leadingLayout];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke_3;
  v17[3] = &unk_1E7BE58F0;
  v9 = v7;
  v18 = v9;
  [v8 enumerateObjectsUsingBlock:v17];

  v10 = [v9 trailingLayout];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__VKCActionInfoView_updateFramesForContext___block_invoke_4;
  v15 = &unk_1E7BE58F0;
  v16 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:&v12];

  [MEMORY[0x1E6979518] commit];
}

void __44__VKCActionInfoView_updateFramesForContext___block_invoke(uint64_t a1, void *a2)
{
  memset(&v32, 0, sizeof(v32));
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 scale];
  v6 = v5;
  [*(a1 + 32) scale];
  CATransform3DMakeScale(&v32, v6, v7, 1.0);
  v31 = v32;
  v8 = [v4 view];
  v30 = v31;
  [v8 setTransform3D:&v30];

  [v4 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 view];
  v18 = [v17 superview];
  [v18 setFrame:{v10, v12, v14, v16}];

  v19 = [v4 view];
  v20 = [v19 superview];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v4 view];

  [v29 setFrame:{v22, v24, v26, v28}];
}

void __44__VKCActionInfoView_updateFramesForContext___block_invoke_2(uint64_t a1, void *a2)
{
  memset(&v32, 0, sizeof(v32));
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 scale];
  v6 = v5;
  [*(a1 + 32) scale];
  CATransform3DMakeScale(&v32, v6, v7, 1.0);
  v31 = v32;
  v8 = [v4 view];
  v30 = v31;
  [v8 setTransform3D:&v30];

  [v4 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 view];
  v18 = [v17 superview];
  [v18 setFrame:{v10, v12, v14, v16}];

  v19 = [v4 view];
  v20 = [v19 superview];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v4 view];

  [v29 setFrame:{v22, v24, v26, v28}];
}

void __44__VKCActionInfoView_updateFramesForContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 view];
  v4 = [v6 superview];
  v5 = [v3 hidden];

  [v4 vk_setHidden:v5 animated:{objc_msgSend(*(a1 + 32), "animateItemVisibilityChanges")}];
}

void __44__VKCActionInfoView_updateFramesForContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 view];
  v4 = [v6 superview];
  v5 = [v3 hidden];

  [v4 vk_setHidden:v5 animated:{objc_msgSend(*(a1 + 32), "animateItemVisibilityChanges")}];
}

- (void)processView:(id)a3 hasContent:(BOOL)a4 isLeading:(BOOL)a5 layoutContext:(id)a6
{
  v7 = a5;
  v8 = a4;
  v20 = a3;
  v10 = a6;
  v11 = [v20 superview];
  if (v8)
  {
    v12 = [(VKCActionInfoView *)self configureView:v20 isLeading:v7 container:v11 layoutContext:v10];
    if (v7)
    {
      if ([v10 didAddLeadingItem])
      {
        [v10 padding];
        v14 = v13;
        [v10 currentMinX];
        [v10 setCurrentMinX:v14 + v15];
      }
    }

    else if ([v10 didAddTrailingItem])
    {
      [v10 padding];
      v18 = v17;
      [v10 currentMaxX];
      [v10 setCurrentMaxX:v19 - v18];
    }
  }

  else
  {
    v16 = [v20 superview];
    [v16 setHidden:1];
  }
}

- (id)configureView:(id)a3 isLeading:(BOOL)a4 container:(id)a5 layoutContext:(id)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a6;
  [v10 scale];
  [(VKCActionInfoView *)self sizeForView:v9 scale:?];
  v12 = v11;
  v14 = v13;
  v15 = VKMRectWithSize();
  v17 = v16;
  v19 = v18;
  if (v7)
  {
    [v10 currentMinX];
    v21 = v20;
  }

  else
  {
    [v10 currentMaxX];
    v21 = v22 - v12;
  }

  v23 = [(VKCActionInfoView *)self alignQuickActionsWithVerticalCenter];
  [v10 containerBounds];
  if (v23)
  {
    v26 = v24;
    [v10 containerBounds];
    v28 = v26 + (v27 - v14) * 0.5;
  }

  else
  {
    v28 = v25 - v14;
  }

  v29 = objc_alloc_init(VKCQuickActionLayoutInfo);
  [(UIView *)self vk_convertFrameToViewScale:0 shouldRound:v21, v28, v17, v19];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(VKCQuickActionLayoutInfo *)v29 setView:v9];
  [(VKCQuickActionLayoutInfo *)v29 setFrame:v31, v33, v35, v37];
  [(VKCQuickActionLayoutInfo *)v29 setDesiredFrame:v31, v33, v35, v37];
  if (v7)
  {
    v41.origin.x = v21;
    v41.origin.y = v28;
    v41.size.width = v17;
    v41.size.height = v19;
    [v10 setCurrentMinX:CGRectGetMaxX(v41)];
    [v10 setDidAddLeadingItem:1];
    [v10 leadingLayout];
  }

  else
  {
    [v10 setCurrentMaxX:v21];
    [v10 setDidAddTrailingItem:1];
    [v10 trailingLayout];
  }
  v38 = ;
  [v38 addObject:v29];

  return v29;
}

- (CGSize)sizeForView:(id)a3 scale:(double)a4
{
  v6 = a3;
  [v6 intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  v11 = [(VKCActionInfoView *)self liveTextButton];
  v12 = v11;
  if (v11 == v6)
  {
  }

  else
  {
    v13 = [(VKCActionInfoView *)self visualSearchCornerView];

    if (v13 != v6)
    {
      if ([(VKCActionInfoView *)self automaticVisualRectLayoutDisabled])
      {
        [(VKCActionInfoView *)self preferredQuickActionButtonHeight];
        v15 = v14;
      }

      else
      {
        v16 = [(VKCActionInfoView *)self liveTextButton];
        [v16 backgroundDiameter];
        v15 = v17;
      }

      if (v15 >= v10)
      {
        v10 = v15;
      }

      if (v8 < v10)
      {
        v8 = v10;
      }
    }
  }

  v18 = VKMMultiplyPointScalar(v8, v10, a4);
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setVisualSearchCornerView:(id)a3
{
  objc_storeStrong(&self->_visualSearchCornerView, a3);
  v5 = a3;
  [(VKCActionInfoView *)self normalizedVisibleRect];
  [(VKCVisualSearchCornerView *)self->_visualSearchCornerView setNormalizedVisibleRect:?];
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, a3))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setNormalizedVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_normalizedVisibleRect = &self->_normalizedVisibleRect;
  if ([(VKCActionInfoView *)self automaticVisualRectLayoutDisabled])
  {
    p_normalizedVisibleRect->origin = VKMRectUnit;
    self->_normalizedVisibleRect.size = *&qword_1B44285A8;
    v9 = p_normalizedVisibleRect->origin.x;
    v10 = self->_normalizedVisibleRect.origin.y;
    v11 = self->_normalizedVisibleRect.size.width;
    v12 = self->_normalizedVisibleRect.size.height;
    v14 = [(VKCActionInfoView *)self visualSearchCornerView];
    [v14 setNormalizedVisibleRect:{v9, v10, v11, v12}];
  }

  else
  {
    v16.origin.x = p_normalizedVisibleRect->origin.x;
    v16.origin.y = self->_normalizedVisibleRect.origin.y;
    v16.size.width = self->_normalizedVisibleRect.size.width;
    v16.size.height = self->_normalizedVisibleRect.size.height;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectEqualToRect(v16, v17))
    {
      p_normalizedVisibleRect->origin.x = x;
      self->_normalizedVisibleRect.origin.y = y;
      self->_normalizedVisibleRect.size.width = width;
      self->_normalizedVisibleRect.size.height = height;
      v13 = [(VKCActionInfoView *)self visualSearchCornerView];
      [v13 setNormalizedVisibleRect:{x, y, width, height}];

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (id)createContainerForView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VKPlatformView);
  [(VKPlatformView *)v4 addSubview:v3];

  return v4;
}

- (void)setQuickActions:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  quickActions = self->_quickActions;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__VKCActionInfoView_setQuickActions___block_invoke;
  v25[3] = &unk_1E7BE5918;
  v25[4] = self;
  v6 = v4;
  v26 = v6;
  [(NSArray *)quickActions enumerateObjectsUsingBlock:v25];
  v7 = [v6 copy];
  v8 = self->_quickActions;
  self->_quickActions = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(VKCActionInfoView *)self createContainerForView:*(*(&v21 + 1) + 8 * v13), v21];
        v15 = [(VKCActionInfoView *)self containerView];
        [v15 addSubview:v14];

        [v14 setHidden:1];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  [(VKCActionInfoView *)self _applyConfigurationUpdateHandlerToQuickActions];
  v16 = objc_opt_class();
  v17 = self->_quickActions;
  v18 = [(VKCActionInfoView *)self moreButton];
  v19 = [v16 buildMoreButtonMenuFromQuickActions:v17 moreButton:v18 isStandAloneMoreButton:0];

  v20 = [(VKCActionInfoView *)self moreButton];
  [v20 setCustomMenu:v19];

  [(VKCActionInfoView *)self layoutContainerView];
}

void __37__VKCActionInfoView_setQuickActions___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 superview];
  v4 = [v3 superview];
  v5 = [*(a1 + 32) containerView];

  if (v4 == v5 && ([*(a1 + 40) containsObject:v7] & 1) == 0)
  {
    v6 = [v7 superview];
    [v6 removeFromSuperview];
  }
}

- (BOOL)containsInteractableItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCActionInfoView *)self liveTextButton];
  v7 = [(VKCActionInfoView *)self isInteractableView:v6 atPoint:x, y];

  if (v7)
  {
    return 1;
  }

  v8 = [(VKCActionInfoView *)self visualSearchCornerView];
  v9 = [(VKCActionInfoView *)self isInteractableView:v8 atPoint:x, y];

  if (v9)
  {
    return 1;
  }

  v11 = [(VKCActionInfoView *)self allViews];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__VKCActionInfoView_containsInteractableItemAtPoint___block_invoke;
  v13[3] = &unk_1E7BE5940;
  v13[4] = self;
  *&v13[5] = x;
  *&v13[6] = y;
  v10 = [v11 vk_containsObjectPassingTest:v13];

  return v10;
}

uint64_t __53__VKCActionInfoView_containsInteractableItemAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) isInteractableView:v3 atPoint:{*(a1 + 40), *(a1 + 48)}];
  }

  return v4;
}

- (BOOL)isInteractableView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if ([v7 isHidden])
  {
    v8 = 0;
  }

  else
  {
    [(VKCActionInfoView *)self convertPoint:v7 toView:x, y];
    v10 = v9;
    v12 = v11;
    [v7 bounds];
    v14.x = v10;
    v14.y = v12;
    v8 = CGRectContainsPoint(v15, v14);
  }

  return v8;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedVisibleRect
{
  x = self->_normalizedVisibleRect.origin.x;
  y = self->_normalizedVisibleRect.origin.y;
  width = self->_normalizedVisibleRect.size.width;
  height = self->_normalizedVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end