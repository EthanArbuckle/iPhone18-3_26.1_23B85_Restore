@interface VKCActionInfoView
+ (id)buildMoreButtonMenuFromQuickActions:(id)actions moreButton:(id)button isStandAloneMoreButton:(BOOL)moreButton;
- (BOOL)containsInteractableItemAtPoint:(CGPoint)point;
- (BOOL)isInteractableView:(id)view atPoint:(CGPoint)point;
- (CGRect)contentsRect;
- (CGRect)normalizedVisibleRect;
- (CGRect)visibleImageRect;
- (CGSize)sizeForView:(id)view scale:(double)scale;
- (NSArray)allViews;
- (UIEdgeInsets)edgeInsets;
- (VKCActionInfoView)initWithLiveTextButton:(id)button cornerView:(id)view;
- (VKPlatformView)containerView;
- (id)configureView:(id)view isLeading:(BOOL)leading container:(id)container layoutContext:(id)context;
- (id)createContainerForView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_applyConfigurationUpdateHandlerToQuickActions;
- (void)adjustContextToFitWidth:(id)width;
- (void)layoutContainerView;
- (void)layoutSubviews;
- (void)processView:(id)view hasContent:(BOOL)content isLeading:(BOOL)leading layoutContext:(id)context;
- (void)setContentsRect:(CGRect)rect;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setHidden:(BOOL)hidden;
- (void)setLayoutUpdatesSuspended:(BOOL)suspended;
- (void)setLiveTextButtonDisabled:(BOOL)disabled;
- (void)setNormalizedVisibleRect:(CGRect)rect;
- (void)setPreferredQuickActionButtonHeight:(double)height;
- (void)setQuickActionConfigurationUpdateHandler:(id)handler;
- (void)setQuickActions:(id)actions;
- (void)setQuickActionsDisabled:(BOOL)disabled;
- (void)setVisualSearchCornerView:(id)view;
- (void)setVisualSearchCornerViewDisabled:(BOOL)disabled;
- (void)set_quickActionsHidden:(BOOL)hidden;
- (void)updateButtonClippingForContext:(id)context;
- (void)updateFramesForContext:(id)context;
- (void)updateLayoutIfNecessary;
@end

@implementation VKCActionInfoView

- (VKCActionInfoView)initWithLiveTextButton:(id)button cornerView:(id)view
{
  v28[3] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  viewCopy = view;
  v27.receiver = self;
  v27.super_class = VKCActionInfoView;
  v9 = [(VKCActionInfoView *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_liveTextButton, button);
    objc_storeStrong(&v10->_visualSearchCornerView, view);
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

    containerView = [(VKCActionInfoView *)v10 containerView];
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

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  self->_edgeInsets = insets;
  [(VKCActionInfoView *)self setShouldAnimateQuickActionVisibilityChanges:1];

  [(VKCActionInfoView *)self layoutContainerView];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = VKCActionInfoView;
  [(VKCActionInfoView *)&v4 setHidden:hidden];
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
    textButtonContainer = [(VKCActionInfoView *)self textButtonContainer];
    [(VKPlatformView *)v9 addSubview:textButtonContainer];

    v11 = self->_containerView;
    visualSearchContainer = [(VKCActionInfoView *)self visualSearchContainer];
    [(VKPlatformView *)v11 addSubview:visualSearchContainer];

    v13 = self->_containerView;
    moreButtonContainer = [(VKCActionInfoView *)self moreButtonContainer];
    [(VKPlatformView *)v13 addSubview:moreButtonContainer];

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

+ (id)buildMoreButtonMenuFromQuickActions:(id)actions moreButton:(id)button isStandAloneMoreButton:(BOOL)moreButton
{
  buttonCopy = button;
  reverseObjectEnumerator = [actions reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __91__VKCActionInfoView_buildMoreButtonMenuFromQuickActions_moreButton_isStandAloneMoreButton___block_invoke;
  v17 = &unk_1E7BE5838;
  v18 = buttonCopy;
  moreButtonCopy = moreButton;
  v10 = buttonCopy;
  v11 = [allObjects vk_compactMap:&v14];

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

- (void)setQuickActionConfigurationUpdateHandler:(id)handler
{
  handlerCopy = handler;
  quickActionConfigurationUpdateHandler = self->_quickActionConfigurationUpdateHandler;
  v9 = handlerCopy;
  v6 = _Block_copy(handlerCopy);
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
  liveTextButton = [(VKCActionInfoView *)self liveTextButton];
  tintColor = [liveTextButton tintColor];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  quickActions = [(VKCActionInfoView *)self quickActions];
  moreButton = [(VKCActionInfoView *)self moreButton];
  v7 = [quickActions vk_arrayByAddingNonNilObject:moreButton];

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
        [v11 setTintColor:tintColor];
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

- (void)setQuickActionsDisabled:(BOOL)disabled
{
  self->_quickActionsDisabled = disabled;
  if (![(VKCActionInfoView *)self layoutUpdatesSuspended])
  {

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setLiveTextButtonDisabled:(BOOL)disabled
{
  if (self->_liveTextButtonDisabled != disabled)
  {
    self->_liveTextButtonDisabled = disabled;
    if ([(VKCActionInfoView *)self layoutUpdatesSuspended])
    {
      liveTextButtonDisabled = self->_liveTextButtonDisabled;
      liveTextButton = [(VKCActionInfoView *)self liveTextButton];
      superview = [liveTextButton superview];
      [superview setHidden:liveTextButtonDisabled];
    }

    else
    {

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (void)setVisualSearchCornerViewDisabled:(BOOL)disabled
{
  if (self->_visualSearchCornerViewDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_visualSearchCornerViewDisabled = disabled;
    if ([(VKCActionInfoView *)self layoutUpdatesSuspended])
    {
      visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];
      superview = [visualSearchCornerView superview];
      [superview setHidden:disabledCopy];
    }

    else
    {

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (void)set_quickActionsHidden:(BOOL)hidden
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->__quickActionsHidden != hidden)
  {
    self->__quickActionsHidden = hidden;
    if (hidden)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      quickActions = [(VKCActionInfoView *)self quickActions];
      v5 = [quickActions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(quickActions);
            }

            v9 = *(*(&v11 + 1) + 8 * i);
            [v9 setSelected:0];
            contextMenuInteraction = [v9 contextMenuInteraction];
            [contextMenuInteraction dismissMenu];
          }

          v6 = [quickActions countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setLayoutUpdatesSuspended:(BOOL)suspended
{
  self->_layoutUpdatesSuspended = suspended;
  if (!suspended)
  {
    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setPreferredQuickActionButtonHeight:(double)height
{
  if (self->_preferredQuickActionButtonHeight != height)
  {
    self->_preferredQuickActionButtonHeight = height;
    [(UIView *)self vk_setNeedsLayout];
  }
}

- (NSArray)allViews
{
  v13[3] = *MEMORY[0x1E69E9840];
  quickActions = [(VKCActionInfoView *)self quickActions];
  v4 = quickActions;
  v5 = MEMORY[0x1E695E0F0];
  if (quickActions)
  {
    v5 = quickActions;
  }

  v6 = v5;

  liveTextButton = [(VKCActionInfoView *)self liveTextButton];
  visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];
  v13[1] = visualSearchCornerView;
  moreButton = [(VKCActionInfoView *)self moreButton];
  v13[2] = moreButton;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = VKCActionInfoView;
  v5 = [(VKCActionInfoView *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || ([(VKCActionInfoView *)self containerView], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {

    v5 = 0;
  }

  return v5;
}

- (void)layoutContainerView
{
  superview = [(VKCActionInfoView *)self superview];
  automaticVisualRectLayoutDisabled = [(VKCActionInfoView *)self automaticVisualRectLayoutDisabled];
  if (superview && (v5 = automaticVisualRectLayoutDisabled, [(VKCActionInfoView *)self window], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = [(VKCActionInfoView *)self isHidden], v7, (v8 & 1) == 0))
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
        liveTextButton = [(VKCActionInfoView *)self liveTextButton];
        [liveTextButton backgroundDiameter];
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
      containerView = [(VKCActionInfoView *)self containerView];
      [containerView setFrame:{v47, v49, v51, v53}];

      layoutContext = [(VKCActionInfoView *)self layoutContext];
      [layoutContext reset];
      containerView2 = [(VKCActionInfoView *)self containerView];
      [containerView2 bounds];
      [layoutContext setContainerBounds:?];

      [layoutContext setCurrentMaxX:v42];
      [layoutContext setCurrentMinX:0.0];
      [layoutContext setScale:v18];
      [layoutContext setPadding:v70];
      [layoutContext setAnimateItemVisibilityChanges:{-[VKCActionInfoView shouldAnimateQuickActionVisibilityChanges](self, "shouldAnimateQuickActionVisibilityChanges")}];
      [layoutContext setShowingMoreButton:0];
      v57 = 0;
      if (![(VKCActionInfoView *)self liveTextButtonDisabled])
      {
        liveTextButton2 = [(VKCActionInfoView *)self liveTextButton];
        [liveTextButton2 vk_alpha];
        v57 = v59 > 0.0;
      }

      liveTextButton3 = [(VKCActionInfoView *)self liveTextButton];
      [(VKCActionInfoView *)self processView:liveTextButton3 hasContent:v57 isLeading:0 layoutContext:layoutContext];

      visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];
      if (-[VKCActionInfoView visualSearchCornerViewDisabled](self, "visualSearchCornerViewDisabled") || ([visualSearchCornerView isHidden] & 1) != 0)
      {
        v62 = 0;
      }

      else
      {
        cornerButtons = [visualSearchCornerView cornerButtons];
        v62 = [cornerButtons count] != 0;
      }

      visualSearchCornerView2 = [(VKCActionInfoView *)self visualSearchCornerView];
      [(VKCActionInfoView *)self processView:visualSearchCornerView2 hasContent:v62 isLeading:0 layoutContext:layoutContext];

      quickActions = [(VKCActionInfoView *)self quickActions];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __40__VKCActionInfoView_layoutContainerView__block_invoke;
      v71[3] = &unk_1E7BE5860;
      v71[4] = self;
      v66 = layoutContext;
      v72 = v66;
      [quickActions enumerateObjectsUsingBlock:v71];

      [(VKCActionInfoView *)self adjustContextToFitWidth:v66];
      [(VKCActionInfoView *)self updateFramesForContext:v66];
      [(VKCActionInfoView *)self updateButtonClippingForContext:v66];
      if ([v66 showingMoreButton])
      {
        [(VKCActionInfoView *)self updateMoreButtonMenuForContext:v66];
      }

      else
      {
        moreButtonContainer = [(VKCActionInfoView *)self moreButtonContainer];
        [moreButtonContainer setHidden:1];
      }
    }

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    allViews = [(VKCActionInfoView *)self allViews];
    [allViews enumerateObjectsUsingBlock:&__block_literal_global_13];
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

- (void)adjustContextToFitWidth:(id)width
{
  widthCopy = width;
  leadingLayout = [widthCopy leadingLayout];
  trailingLayout = [widthCopy trailingLayout];
  firstObject = [trailingLayout firstObject];

  if (firstObject)
  {
    [firstObject frame];
    v9 = v8;
  }

  else
  {
    [widthCopy containerBounds];
    v9 = v10;
  }

  [widthCopy padding];
  v12 = v11;
  leadingLayout2 = [widthCopy leadingLayout];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __45__VKCActionInfoView_adjustContextToFitWidth___block_invoke;
  v58[3] = &unk_1E7BE58A8;
  v14 = widthCopy;
  v59 = v14;
  v60 = v9;
  v15 = [leadingLayout2 indexOfObjectPassingTest:v58];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [leadingLayout objectAtIndexedSubscript:v15];
    lastObject = [leadingLayout lastObject];

    [v14 scale];
    v19 = v18 * 64.0;
    moreButton = [(VKCActionInfoView *)self moreButton];
    [v14 scale];
    [(VKCActionInfoView *)self sizeForView:moreButton scale:?];
    v22 = v21;
    rect = v23;

    if (v19 < v22)
    {
      v19 = v22;
    }

    [v16 frame];
    MinX = CGRectGetMinX(v61);
    if (v16 != lastObject || (MinX = v9 - MinX, MinX - v12 <= v19))
    {
      [v16 setHidden:{1, MinX}];
      v25 = objc_alloc_init(VKCQuickActionLayoutInfo);
      moreButton2 = [(VKCActionInfoView *)self moreButton];
      [(VKCQuickActionLayoutInfo *)v25 setView:moreButton2];

      [v16 frame];
      x = v62.origin.x;
      y = v62.origin.y;
      v62.size.width = v22;
      v62.size.height = rect;
      MaxX = CGRectGetMaxX(v62);
      leadingLayout3 = [v14 leadingLayout];
      [leadingLayout3 insertObject:v25 atIndex:v15];

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
          leadingLayout4 = [v14 leadingLayout];
          firstObject2 = [leadingLayout4 vk_safeObjectAtIndex:v31 - 2];

          if (!firstObject2)
          {
            goto LABEL_31;
          }

          v63.origin.x = v30;
          v63.origin.y = y;
          v63.size.width = v22;
          v63.size.height = rect;
          v54 = CGRectGetMaxX(v63);
          [firstObject2 frame];
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
                [firstObject2 setFrame:{v35, v37, v39 - (v53 + v54 - v52), v41}];
              }

              goto LABEL_31;
            }

            v46 = v39 + v45 - v53;
            [firstObject2 setFrame:{v35, v37, v46, v41}];
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

          [firstObject2 setHidden:{1, v44}];

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

      trailingLayout2 = [v14 trailingLayout];
      firstObject2 = [trailingLayout2 firstObject];

      if (!firstObject2)
      {
        v30 = 0.0;
        v47 = v22 > v9;
        goto LABEL_32;
      }

      [firstObject2 frame];
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
      leadingLayout5 = [v14 leadingLayout];
      v51 = [leadingLayout5 count];

      if (v15 >= v51)
      {
        break;
      }

      v25 = [leadingLayout objectAtIndexedSubscript:v15];
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

- (void)updateButtonClippingForContext:(id)context
{
  leadingLayout = [context leadingLayout];
  [leadingLayout enumerateObjectsUsingBlock:&__block_literal_global_316];
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

- (void)updateFramesForContext:(id)context
{
  contextCopy = context;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:0];
  leadingLayout = [contextCopy leadingLayout];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke;
  v21[3] = &unk_1E7BE58F0;
  v5 = contextCopy;
  v22 = v5;
  [leadingLayout enumerateObjectsUsingBlock:v21];

  trailingLayout = [v5 trailingLayout];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke_2;
  v19[3] = &unk_1E7BE58F0;
  v7 = v5;
  v20 = v7;
  [trailingLayout enumerateObjectsUsingBlock:v19];

  [MEMORY[0x1E6979518] setDisableActions:0];
  leadingLayout2 = [v7 leadingLayout];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__VKCActionInfoView_updateFramesForContext___block_invoke_3;
  v17[3] = &unk_1E7BE58F0;
  v9 = v7;
  v18 = v9;
  [leadingLayout2 enumerateObjectsUsingBlock:v17];

  trailingLayout2 = [v9 trailingLayout];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__VKCActionInfoView_updateFramesForContext___block_invoke_4;
  v15 = &unk_1E7BE58F0;
  v16 = v9;
  v11 = v9;
  [trailingLayout2 enumerateObjectsUsingBlock:&v12];

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

- (void)processView:(id)view hasContent:(BOOL)content isLeading:(BOOL)leading layoutContext:(id)context
{
  leadingCopy = leading;
  contentCopy = content;
  viewCopy = view;
  contextCopy = context;
  superview = [viewCopy superview];
  if (contentCopy)
  {
    v12 = [(VKCActionInfoView *)self configureView:viewCopy isLeading:leadingCopy container:superview layoutContext:contextCopy];
    if (leadingCopy)
    {
      if ([contextCopy didAddLeadingItem])
      {
        [contextCopy padding];
        v14 = v13;
        [contextCopy currentMinX];
        [contextCopy setCurrentMinX:v14 + v15];
      }
    }

    else if ([contextCopy didAddTrailingItem])
    {
      [contextCopy padding];
      v18 = v17;
      [contextCopy currentMaxX];
      [contextCopy setCurrentMaxX:v19 - v18];
    }
  }

  else
  {
    superview2 = [viewCopy superview];
    [superview2 setHidden:1];
  }
}

- (id)configureView:(id)view isLeading:(BOOL)leading container:(id)container layoutContext:(id)context
{
  leadingCopy = leading;
  viewCopy = view;
  contextCopy = context;
  [contextCopy scale];
  [(VKCActionInfoView *)self sizeForView:viewCopy scale:?];
  v12 = v11;
  v14 = v13;
  v15 = VKMRectWithSize();
  v17 = v16;
  v19 = v18;
  if (leadingCopy)
  {
    [contextCopy currentMinX];
    v21 = v20;
  }

  else
  {
    [contextCopy currentMaxX];
    v21 = v22 - v12;
  }

  alignQuickActionsWithVerticalCenter = [(VKCActionInfoView *)self alignQuickActionsWithVerticalCenter];
  [contextCopy containerBounds];
  if (alignQuickActionsWithVerticalCenter)
  {
    v26 = v24;
    [contextCopy containerBounds];
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
  [(VKCQuickActionLayoutInfo *)v29 setView:viewCopy];
  [(VKCQuickActionLayoutInfo *)v29 setFrame:v31, v33, v35, v37];
  [(VKCQuickActionLayoutInfo *)v29 setDesiredFrame:v31, v33, v35, v37];
  if (leadingCopy)
  {
    v41.origin.x = v21;
    v41.origin.y = v28;
    v41.size.width = v17;
    v41.size.height = v19;
    [contextCopy setCurrentMinX:CGRectGetMaxX(v41)];
    [contextCopy setDidAddLeadingItem:1];
    [contextCopy leadingLayout];
  }

  else
  {
    [contextCopy setCurrentMaxX:v21];
    [contextCopy setDidAddTrailingItem:1];
    [contextCopy trailingLayout];
  }
  v38 = ;
  [v38 addObject:v29];

  return v29;
}

- (CGSize)sizeForView:(id)view scale:(double)scale
{
  viewCopy = view;
  [viewCopy intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  liveTextButton = [(VKCActionInfoView *)self liveTextButton];
  v12 = liveTextButton;
  if (liveTextButton == viewCopy)
  {
  }

  else
  {
    visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];

    if (visualSearchCornerView != viewCopy)
    {
      if ([(VKCActionInfoView *)self automaticVisualRectLayoutDisabled])
      {
        [(VKCActionInfoView *)self preferredQuickActionButtonHeight];
        v15 = v14;
      }

      else
      {
        liveTextButton2 = [(VKCActionInfoView *)self liveTextButton];
        [liveTextButton2 backgroundDiameter];
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

  v18 = VKMMultiplyPointScalar(v8, v10, scale);
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setVisualSearchCornerView:(id)view
{
  objc_storeStrong(&self->_visualSearchCornerView, view);
  viewCopy = view;
  [(VKCActionInfoView *)self normalizedVisibleRect];
  [(VKCVisualSearchCornerView *)self->_visualSearchCornerView setNormalizedVisibleRect:?];
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, rect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(UIView *)self vk_setNeedsLayout];
  }
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_normalizedVisibleRect = &self->_normalizedVisibleRect;
  if ([(VKCActionInfoView *)self automaticVisualRectLayoutDisabled])
  {
    p_normalizedVisibleRect->origin = VKMRectUnit;
    self->_normalizedVisibleRect.size = *&qword_1B44285A8;
    v9 = p_normalizedVisibleRect->origin.x;
    v10 = self->_normalizedVisibleRect.origin.y;
    v11 = self->_normalizedVisibleRect.size.width;
    v12 = self->_normalizedVisibleRect.size.height;
    visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];
    [visualSearchCornerView setNormalizedVisibleRect:{v9, v10, v11, v12}];
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
      visualSearchCornerView2 = [(VKCActionInfoView *)self visualSearchCornerView];
      [visualSearchCornerView2 setNormalizedVisibleRect:{x, y, width, height}];

      [(UIView *)self vk_setNeedsLayout];
    }
  }
}

- (id)createContainerForView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(VKPlatformView);
  [(VKPlatformView *)v4 addSubview:viewCopy];

  return v4;
}

- (void)setQuickActions:(id)actions
{
  v28 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  quickActions = self->_quickActions;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__VKCActionInfoView_setQuickActions___block_invoke;
  v25[3] = &unk_1E7BE5918;
  v25[4] = self;
  v6 = actionsCopy;
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
        containerView = [(VKCActionInfoView *)self containerView];
        [containerView addSubview:v14];

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
  moreButton = [(VKCActionInfoView *)self moreButton];
  v19 = [v16 buildMoreButtonMenuFromQuickActions:v17 moreButton:moreButton isStandAloneMoreButton:0];

  moreButton2 = [(VKCActionInfoView *)self moreButton];
  [moreButton2 setCustomMenu:v19];

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

- (BOOL)containsInteractableItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  liveTextButton = [(VKCActionInfoView *)self liveTextButton];
  v7 = [(VKCActionInfoView *)self isInteractableView:liveTextButton atPoint:x, y];

  if (v7)
  {
    return 1;
  }

  visualSearchCornerView = [(VKCActionInfoView *)self visualSearchCornerView];
  v9 = [(VKCActionInfoView *)self isInteractableView:visualSearchCornerView atPoint:x, y];

  if (v9)
  {
    return 1;
  }

  allViews = [(VKCActionInfoView *)self allViews];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__VKCActionInfoView_containsInteractableItemAtPoint___block_invoke;
  v13[3] = &unk_1E7BE5940;
  v13[4] = self;
  *&v13[5] = x;
  *&v13[6] = y;
  v10 = [allViews vk_containsObjectPassingTest:v13];

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

- (BOOL)isInteractableView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  if ([viewCopy isHidden])
  {
    v8 = 0;
  }

  else
  {
    [(VKCActionInfoView *)self convertPoint:viewCopy toView:x, y];
    v10 = v9;
    v12 = v11;
    [viewCopy bounds];
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