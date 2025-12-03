@interface SBSwitcherGenieEffectView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SBSwitcherGenieEffectView)initWithCoder:(id)coder;
- (SBSwitcherGenieEffectView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (SBSwitcherGenieEffectViewDelegate)delegate;
- (id)_addAndReturnPortaledContentView:(id)view;
- (id)_iconBadgeViewIfAnyInView:(id)view;
- (id)_iconViewIfAnyInView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addPortaledNotificationBadgeForContentViewIfNeeded:(id)needed;
- (void)_invalidateContentViewPortalsIfNeeded;
- (void)_invalidateGenie;
- (void)_layoutContentAndContainerViewWithAttributes:(id)attributes;
- (void)_performGenieWithAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion;
- (void)_setGlassHighlight:(SBSwitcherGenieGlassHighlight *)highlight;
- (void)_updateGenieMeshTransformForPresentationLayer:(BOOL)layer properties:(id)properties boundsProperty:(id)property attributes:(id)attributes;
- (void)layoutSubviews;
- (void)setAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion;
- (void)setChildContentView:(id)view;
- (void)setPortaledContentViews:(id)views;
@end

@implementation SBSwitcherGenieEffectView

- (SBSwitcherGenieEffectView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = SBSwitcherGenieEffectView;
  height = [(SBSwitcherGenieEffectView *)&v40 initWithFrame:x, y, width, height];
  if (height)
  {
    if (!delegateCopy)
    {
      [SBSwitcherGenieEffectView initWithFrame:a2 delegate:height];
    }

    objc_storeWeak(height + 72, delegateCopy);
    *(height + 135) = 0;
    v12 = [_SBSwitcherGenieEffectContainerView alloc];
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [(_SBSwitcherGenieEffectContainerView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], v14, v15, v16];
    v18 = *(height + 51);
    *(height + 51) = v17;

    traitCollection = [height traitCollection];
    [traitCollection displayScale];
    *(height + 70) = v20;

    layer = [*(height + 51) layer];
    [layer setRasterizationScale:*(height + 70)];

    [height addSubview:*(height + 51)];
    v22 = [[_SBSwitcherGenieEffectContentView alloc] initWithFrame:v13, v14, v15, v16];
    v23 = *(height + 52);
    *(height + 52) = v22;

    [*(height + 51) addSubview:*(height + 52)];
    v24 = [[_SBSDFElementView alloc] initWithFrame:v13, v14, v15, v16];
    v25 = *(height + 62);
    *(height + 62) = v24;

    layer2 = [*(height + 62) layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [*(height + 52) addSubview:*(height + 62)];
    v27 = objc_alloc_init(_SBSDFView);
    v28 = *(height + 60);
    *(height + 60) = v27;

    [*(height + 52) addSubview:*(height + 60)];
    v29 = objc_alloc_init(_SBSDFView);
    v30 = *(height + 61);
    *(height + 61) = v29;

    layer3 = [*(height + 61) layer];
    [layer3 setCompositingFilter:*MEMORY[0x277CDA5E8]];

    [*(height + 52) addSubview:*(height + 61)];
    v32 = SBSwitcherGenieGlassHighlightDirectionNone();
    SBSwitcherGenieGlassHighlightMake(0, v38, v32, v33, v34, 0.0);
    v35 = v38[0];
    v36 = v38[1];
    *(height + 59) = v39;
    *(height + 440) = v35;
    *(height + 456) = v36;
    [height _setGlassHighlight:{v38, SBSwitcherGenieGlassHighlightNone(v38)}];
  }

  return height;
}

- (SBSwitcherGenieEffectView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSwitcherGenieEffectView.m" lineNumber:149 description:{@"%@ %@ unsupported", v8, v9}];

  __break(1u);
  return result;
}

- (id)_addAndReturnPortaledContentView:(id)view
{
  v19[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (!self->_contentPortalViews)
  {
    v5 = objc_opt_new();
    contentPortalViews = self->_contentPortalViews;
    self->_contentPortalViews = v5;
  }

  isIconBadgeView = [viewCopy isIconBadgeView];
  v8 = objc_alloc(MEMORY[0x277D76180]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setSourceView:viewCopy];
  [v9 setHidesSourceView:1];
  [v9 setMatchesPosition:(self->_portaledContentShouldMatchSource | isIconBadgeView) & 1];
  [v9 setMatchesTransform:(self->_portaledContentShouldMatchSource | isIconBadgeView) & 1];
  [v9 setMatchesAlpha:(self->_portaledContentShouldMatchSource | isIconBadgeView) & 1];
  [v9 setAllowsHitTesting:1];
  [v9 setForwardsClientHitTestingToSourceView:1];
  [v9 setName:@"com.apple.SpringBoard.genie.contentPortalView"];
  [(NSMutableArray *)self->_contentPortalViews addObject:v9];
  [(_SBSwitcherGenieEffectContentView *)self->_contentView addSubview:v9];
  if (!self->_portaledContentShouldMatchSource && (isIconBadgeView & 1) == 0)
  {
    [(UIView *)self->_childContentView frame];
    [v9 sb_setBoundsAndPositionFromFrame:?];
    animation = [MEMORY[0x277CD9EE8] animation];
    layer = [(UIView *)self->_childContentView layer];
    [animation setSourceLayer:layer];

    [animation setDuration:INFINITY];
    [animation setFillMode:*MEMORY[0x277CDA230]];
    [animation setRemovedOnCompletion:0];
    [animation setAppliesX:1];
    [animation setAppliesY:1];
    [animation setAppliesScale:1];
    [animation setUsesNormalizedCoordinates:1];
    v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
    v19[0] = v12;
    v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
    v19[1] = v13;
    v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
    v19[2] = v14;
    v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
    v19[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [animation setSourcePoints:v16];

    layer2 = [v9 layer];
    [layer2 addAnimation:animation forKey:@"SBGenieEffectViewMatchMoveAnimation"];
  }

  [(SBSwitcherGenieEffectView *)self _addPortaledNotificationBadgeForContentViewIfNeeded:viewCopy];
  [(SBSwitcherGenieEffectView *)self setNeedsLayout];

  return v9;
}

- (void)setPortaledContentViews:(id)views
{
  v15 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  [(SBSwitcherGenieEffectView *)self _invalidateContentViewPortalsIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = viewsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBSwitcherGenieEffectView *)self addPortaledContentView:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setChildContentView:(id)view
{
  viewCopy = view;
  childContentView = self->_childContentView;
  v7 = viewCopy;
  if (childContentView != viewCopy)
  {
    [(UIView *)childContentView removeFromSuperview];
    objc_storeStrong(&self->_childContentView, view);
    if (self->_childContentView)
    {
      [(_SBSwitcherGenieEffectContentView *)self->_contentView addSubview:?];
      [(SBSwitcherGenieEffectView *)self setNeedsLayout];
    }
  }
}

- (void)setAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  attributes = self->_attributes;
  if (attributesCopy)
  {
    if (mode == 1)
    {
      mode = 2;
    }

    v11 = attributes == 0;
    if (attributes)
    {
      active = [(SBSwitcherGenieAttributes *)attributes active];
    }

    else
    {
      active = 0;
    }

    LODWORD(attributes) = [attributesCopy active];
  }

  else
  {
    if (attributes)
    {
      generationCount = self->_generationCount;
      if (self->_lastCompletedGenerationCount != generationCount)
      {
        if (mode != 2)
        {
          self->_pendingCompletion = 1;
          if (!completionCopy)
          {
            goto LABEL_43;
          }

          goto LABEL_39;
        }

        self->_pendingCompletion = 0;
        self->_lastCompletedGenerationCount = generationCount;
      }

      [(SBSwitcherGenieEffectView *)self _invalidateGenie];
      if (!completionCopy)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    active = 0;
    if (mode == 1)
    {
      mode = 2;
    }

    v11 = 1;
  }

  if (attributesCopy)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v14 || active != attributes)
  {
    self->_pendingCompletion = 0;
    v16 = attributes ^ 1;
    v17 = (v11 | attributes | ~active) & (attributes | active | !v11) ^ 1;
    if (!attributesCopy)
    {
      v17 = 0;
    }

    if ((!v11 | v16) != 1)
    {
      v17 = 1;
    }

    if (mode != 2 && v17)
    {
      [attributesCopy iconPosition];
      v57 = v19;
      v58 = v18;
      [attributesCopy windowPosition];
      v55 = v21;
      v56 = v20;
      [attributesCopy initialVelocity];
      v53 = v23;
      v54 = v22;
      [attributesCopy windowSize];
      v51 = v25;
      v52 = v24;
      [attributesCopy minimizedSize];
      v49 = v27;
      v50 = v26;
      [attributesCopy minimizedScale];
      v29 = v28;
      [attributesCopy containerSize];
      v31 = v30;
      v33 = v32;
      [attributesCopy minimumOutsetSize];
      v35 = v34;
      v37 = v36;
      [attributesCopy genieScale];
      v39 = v38;
      [attributesCopy multiplier];
      v41 = v40;
      v43 = v42;
      if (attributesCopy)
      {
        [attributesCopy glassHighlight];
      }

      else
      {
        v66 = 0;
        *location = 0u;
        v65 = 0u;
      }

      layoutSettings = [attributesCopy layoutSettings];
      v46 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:v16 windowPosition:location initialVelocity:layoutSettings windowSize:v58 minimizedSize:v57 minimizedScale:v56 containerSize:v55 minimumOutsetSize:v54 genieScale:v53 multiplier:v52 active:v51 glassHighlight:v50 layoutSettings:v49, v29, v31, v33, v35, v37, v39, v41, v43];

      v47 = MEMORY[0x277D75D18];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __59__SBSwitcherGenieEffectView_setAttributes_mode_completion___block_invoke;
      v62[3] = &unk_2783A92D8;
      v62[4] = self;
      v63 = v46;
      v48 = v46;
      [v47 _performWithoutRetargetingAnimations:v62];
      [(SBSwitcherGenieEffectView *)self _performGenieWithAttributes:v48 mode:2 completion:0];
    }

    objc_initWeak(location, self);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __59__SBSwitcherGenieEffectView_setAttributes_mode_completion___block_invoke_2;
    v59[3] = &unk_2783AEC78;
    objc_copyWeak(&v61, location);
    v60 = completionCopy;
    [(SBSwitcherGenieEffectView *)self _performGenieWithAttributes:attributesCopy mode:mode completion:v59];

    objc_destroyWeak(&v61);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = self->_attributes;
    if (v15)
    {
      if (attributesCopy)
      {
        [attributesCopy glassHighlight];
      }

      else
      {
        v66 = 0;
        *location = 0u;
        v65 = 0u;
      }

      [(SBSwitcherGenieAttributes *)v15 setGlassHighlight:location];
      v44 = self->_attributes;
      if (v44)
      {
        [(SBSwitcherGenieAttributes *)v44 glassHighlight];
      }

      else
      {
        v66 = 0;
        *location = 0u;
        v65 = 0u;
      }

      [(SBSwitcherGenieEffectView *)self _setGlassHighlight:location];
    }

    if (completionCopy)
    {
LABEL_39:
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

LABEL_43:
}

void __59__SBSwitcherGenieEffectView_setAttributes_mode_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = WeakRetained;
    (*(v7 + 16))(v7, a2, a3);
    WeakRetained = v8;
  }

  if (WeakRetained && *(WeakRetained + 66) == *(WeakRetained + 65) && *(WeakRetained + 536) == 1)
  {
    v9 = WeakRetained;
    [WeakRetained _invalidateGenie];
    WeakRetained = v9;
  }
}

- (void)layoutSubviews
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBSwitcherGenieEffectView;
  [(SBSwitcherGenieEffectView *)&v15 layoutSubviews];
  [(SBSwitcherGenieEffectView *)self bounds];
  [(SBSwitcherGenieEffectView *)self _layoutContentAndContainerViewWithAttributes:self->_attributes];
  childContentView = self->_childContentView;
  UIRectGetCenter();
  [(UIView *)childContentView setCenter:?];
  v4 = self->_childContentView;
  SBRectWithSize();
  [(UIView *)v4 setBounds:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_contentPortalViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_contentNotificationBadgePortalViews containsObject:v10, v11]& 1) == 0)
        {
          UIRectGetCenter();
          [v10 setCenter:?];
          SBRectWithSize();
          [v10 setBounds:?];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_layoutContentAndContainerViewWithAttributes:(id)attributes
{
  v46 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  [(SBSwitcherGenieEffectView *)self bounds];
  v7 = v5;
  v8 = v6;
  if (attributesCopy)
  {
    [attributesCopy meshContainerOutset];
    v10 = v9;
    v12 = v11;
    [attributesCopy windowSize];
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
    v14 = v6;
    v13 = v5;
  }

  v15 = v10 + v13;
  v16 = v12 + v14;
  [(_SBSwitcherGenieEffectContainerView *)self->_containerView setCenter:v13 * 0.5, v14 * 0.5];
  if (attributesCopy)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__SBSwitcherGenieEffectView__layoutContentAndContainerViewWithAttributes___block_invoke;
    v44[3] = &unk_2783A8C40;
    v44[4] = self;
    *&v44[5] = v15;
    *&v44[6] = v16;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v44];
  }

  else
  {
    containerView = self->_containerView;
    SBRectWithSize();
    [(_SBSwitcherGenieEffectContainerView *)containerView setBounds:?];
  }

  contentView = self->_contentView;
  UIRectGetCenter();
  [(_SBSwitcherGenieEffectContentView *)contentView setCenter:v10 * 0.5 + v19, v12 * 0.5 + v20];
  v21 = self->_contentView;
  SBRectWithSize();
  [(_SBSwitcherGenieEffectContentView *)v21 setBounds:?];
  keyFillHighlightSDFView = self->_keyFillHighlightSDFView;
  UIRectGetCenter();
  [(_SBSDFView *)keyFillHighlightSDFView setCenter:?];
  rimHighlightSDFView = self->_rimHighlightSDFView;
  UIRectGetCenter();
  [(_SBSDFView *)rimHighlightSDFView setCenter:?];
  sdfElementView = self->_sdfElementView;
  UIRectGetCenter();
  [(_SBSDFElementView *)sdfElementView setCenter:?];
  v25 = self->_sdfElementView;
  SBRectWithSize();
  [(_SBSDFElementView *)v25 setBounds:?];
  if (attributesCopy)
  {
    [attributesCopy minimizedScale];
    [attributesCopy genieScale];
    v26 = self->_keyFillHighlightSDFView;
    SBRectWithSize();
    [(_SBSDFView *)v26 setBounds:?];
    v27 = self->_rimHighlightSDFView;
    SBRectWithSize();
    [(_SBSDFView *)v27 setBounds:?];
  }

  [(_SBSDFView *)self->_keyFillHighlightSDFView bounds];
  if (v28 > 0.0 && v29 > 0.0)
  {
    v30 = v7 / v28;
    v31 = self->_keyFillHighlightSDFView;
    v32 = v8 / v29;
    CGAffineTransformMakeScale(&v43, v30, v32);
    [(_SBSDFView *)v31 setTransform:&v43];
    v33 = self->_rimHighlightSDFView;
    CGAffineTransformMakeScale(&v43, v30, v32);
    [(_SBSDFView *)v33 setTransform:&v43];
  }

  if (([(_SBSDFView *)self->_keyFillHighlightSDFView isHidden]& 1) == 0)
  {
    [(_SBSwitcherGenieEffectContentView *)self->_contentView bringSubviewToFront:self->_keyFillHighlightSDFView];
  }

  if (([(_SBSDFView *)self->_rimHighlightSDFView isHidden]& 1) == 0)
  {
    [(_SBSwitcherGenieEffectContentView *)self->_contentView bringSubviewToFront:self->_rimHighlightSDFView];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = self->_contentNotificationBadgePortalViews;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v40;
    do
    {
      v38 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(_SBSwitcherGenieEffectContentView *)self->_contentView bringSubviewToFront:*(*(&v39 + 1) + 8 * v38++), v39];
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v36);
  }
}

uint64_t __74__SBSwitcherGenieEffectView__layoutContentAndContainerViewWithAttributes___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  SBRectWithSize();

  return [v1 setBounds:?];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(SBSwitcherGenieEffectView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [(SBSwitcherGenieEffectView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:eventCopy withEvent:?])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBSwitcherGenieEffectView;
  v5 = [(SBSwitcherGenieEffectView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)_performGenieWithAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  modelUpdatesPaused = self->_modelUpdatesPaused;
  self->_modelUpdatesPaused = 1;
  os_unfair_lock_lock(&self->_c2_lock);
  c2_presentationUpdatePaused = self->_c2_presentationUpdatePaused;
  self->_c2_presentationUpdatePaused = 1;
  os_unfair_lock_unlock(&self->_c2_lock);
  if (!attributesCopy)
  {
    [SBSwitcherGenieEffectView _performGenieWithAttributes:a2 mode:self completion:?];
  }

  objc_storeStrong(&self->_attributes, attributes);
  attributes = self->_attributes;
  if (attributes)
  {
    [(SBSwitcherGenieAttributes *)attributes glassHighlight];
  }

  else
  {
    v107 = 0;
    *location = 0u;
    v106 = 0u;
  }

  [(SBSwitcherGenieEffectView *)self _setGlassHighlight:location];
  ++self->_generationCount;
  rows = [attributesCopy rows];
  columns = [attributesCopy columns];
  v12 = sqrt([attributesCopy vertexCount]);
  if (!self->_animatableProperties)
  {
    v62 = c2_presentationUpdatePaused;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained genieEffectViewDidBegin:self];

    v14 = objc_opt_new();
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = v12;
        do
        {
          v17 = objc_alloc_init(MEMORY[0x277D75D38]);
          [v14 addObject:v17];
          v18 = objc_alloc_init(MEMORY[0x277D75D38]);
          [v14 addObject:v18];

          --v16;
        }

        while (v16);
      }
    }

    v19 = [v14 copy];
    animatableProperties = self->_animatableProperties;
    self->_animatableProperties = v19;

    v21 = objc_alloc_init(MEMORY[0x277D75D38]);
    [v14 addObject:v21];
    objc_storeStrong(&self->_boundsProperty, v21);
    objc_initWeak(location, self);
    v22 = [(NSArray *)self->_animatableProperties copy];
    v60 = MEMORY[0x277D75D18];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke;
    v100[3] = &unk_2783B4560;
    objc_copyWeak(&v104, location);
    v23 = v22;
    v101 = v23;
    v24 = v21;
    v102 = v24;
    v25 = attributesCopy;
    v103 = v25;
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_2;
    v95[3] = &unk_2783B4560;
    objc_copyWeak(&v99, location);
    v26 = v23;
    v96 = v26;
    v27 = v24;
    v97 = v27;
    v98 = v25;
    [v60 _createTransformerWithInputAnimatableProperties:v14 modelValueSetter:v100 presentationValueSetter:v95];

    objc_destroyWeak(&v99);
    objc_destroyWeak(&v104);

    objc_destroyWeak(location);
    c2_presentationUpdatePaused = v62;
  }

  if ([attributesCopy active])
  {
    [attributesCopy minimizedSize];
  }

  else
  {
    [attributesCopy windowSize];
  }

  v30 = v28;
  v31 = v29;
  [attributesCopy genieAmount];
  v63 = v33;
  v64 = v32;
  [attributesCopy meshContainerOutset];
  v65 = v35;
  v66 = v34;
  [attributesCopy meshContainerSizeForSize:{v30, v31}];
  v59 = v37;
  v61 = v36;
  [attributesCopy scaleProgress];
  v58 = v38;
  [attributesCopy minimizedPositionForSize:{v30, v31}];
  v57 = v39;
  v41 = v40;
  layoutSettings = [attributesCopy layoutSettings];
  [layoutSettings dampingRatio];
  v44 = v43;

  layoutSettings2 = [attributesCopy layoutSettings];
  [layoutSettings2 response];
  v47 = v46;

  [attributesCopy multiplier];
  v49 = v48;
  v51 = v50;
  generationCount = self->_generationCount;
  objc_initWeak(location, self);
  v53 = MEMORY[0x277D65DA0];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_3;
  v74[3] = &unk_2783C4358;
  v76 = v12;
  v74[4] = self;
  v77 = v44;
  v78 = v47;
  v79 = v61;
  v80 = v59;
  v81 = columns;
  v82 = rows;
  v83 = v58;
  v84 = v57;
  v85 = v41;
  v86 = v64;
  v87 = v63;
  v54 = attributesCopy;
  v75 = v54;
  v88 = v66;
  v89 = v65;
  v90 = v30;
  v91 = v31;
  v92 = v49;
  v93 = v51;
  modeCopy = mode;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_10;
  v71[3] = &unk_2783B3518;
  objc_copyWeak(v73, location);
  v73[1] = generationCount;
  v55 = completionCopy;
  v72 = v55;
  [v53 perform:v74 finalCompletion:v71];
  self->_modelUpdatesPaused = modelUpdatesPaused;
  [(SBSwitcherGenieEffectView *)self _updateGenieMeshTransformForPresentationLayer:0 properties:self->_animatableProperties boundsProperty:self->_boundsProperty attributes:v54];
  if (!c2_presentationUpdatePaused)
  {
    os_unfair_lock_lock(&self->_c2_lock);
    self->_c2_presentationUpdatePaused = 0;
    os_unfair_lock_unlock(&self->_c2_lock);
  }

  objc_destroyWeak(v73);
  objc_destroyWeak(location);
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateGenieMeshTransformForPresentationLayer:0 properties:*(a1 + 32) boundsProperty:*(a1 + 40) attributes:*(a1 + 48)];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateGenieMeshTransformForPresentationLayer:1 properties:*(a1 + 32) boundsProperty:*(a1 + 40) attributes:*(a1 + 48)];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v76 = a2;
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = 0;
    v68 = *(MEMORY[0x277CBF348] + 8);
    v69 = *MEMORY[0x277CBF348];
    v5 = 1.0;
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V0.2D, #1.0
    }

    v70 = _Q0;
    v71 = _Q1;
    do
    {
      if (v3 >= 1)
      {
        v12 = 0;
        v77 = v4;
        v78 = v4;
        do
        {
          v13 = 2 * (v12 + v4 * v3);
          v14 = v13 | 1;
          v15 = [*(*(a1 + 32) + 504) objectAtIndex:{v13, *&v68, *&v69}];
          v86 = [*(*(a1 + 32) + 504) objectAtIndex:v14];
          v16 = *(a1 + 56);
          v17 = v12;
          v19 = *(a1 + 72);
          v18 = *(a1 + 80);
          v81 = *(a1 + 96);
          v82 = *(a1 + 104);
          v79 = *(a1 + 88);
          v80 = *(a1 + 112);
          v20 = *(a1 + 128);
          v83 = *(a1 + 120);
          v84 = *(a1 + 64);
          v21 = *(a1 + 136);
          v22 = [MEMORY[0x277D75418] currentDevice];
          v23 = [v22 userInterfaceIdiom];

          v24 = *(a1 + 96);
          if ((v23 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v75 = pow((v4 / v24), 0.75);
            v73 = (v12 / *(a1 + 88));
            v25 = hypot(v20, v21);
            _Q4.f64[0] = v73;
            _Q4.f64[1] = v75;
            if (v25 <= 0.0)
            {
              v21 = v68;
              v20 = v69;
            }

            else
            {
              v20 = v20 / v25;
              v21 = v21 / v25;
            }

            v45 = v78;
          }

          else
          {
            v74 = v19;
            v27 = v78 / v24;
            v28 = v17 / *(a1 + 88);
            v29 = [*(a1 + 40) active];
            v30 = -v21;
            if (v29)
            {
              v30 = v21;
            }

            v31 = 1.0 - fabs(sqrt(1.0 - v27));
            if (1.0 - v27 == -INFINITY)
            {
              v32 = -INFINITY;
            }

            else
            {
              v32 = v31;
            }

            v33 = fabs(sqrt(v27));
            if (v27 == -INFINITY)
            {
              v33 = INFINITY;
            }

            if (v30 >= 0.0)
            {
              v34 = v33;
            }

            else
            {
              v34 = v32;
            }

            v72 = v34;
            v35 = [*(a1 + 40) active];
            v36 = -v20;
            if (v35)
            {
              v36 = v20;
            }

            v37 = 1.0 - fabs(sqrt(1.0 - v28));
            if (1.0 - v28 == -INFINITY)
            {
              v38 = -INFINITY;
            }

            else
            {
              v38 = v37;
            }

            v39 = fabs(sqrt(v28));
            _ZF = v28 == -INFINITY;
            v5 = 1.0;
            if (_ZF)
            {
              v39 = INFINITY;
            }

            v19 = v74;
            if (v36 >= 0.0)
            {
              v40.f64[0] = v39;
            }

            else
            {
              v40.f64[0] = v38;
            }

            v41 = *(a1 + 160);
            v42 = vmulq_f64(*(a1 + 144), v71);
            v43 = vaddq_f64(vdivq_f64(v42, v41), v70);
            v44 = vdivq_f64(vnegq_f64(v42), v41);
            v40.f64[1] = v72;
            v45 = v78;
            _Q4 = vaddq_f64(v44, vmulq_f64(v40, vsubq_f64(v43, v44)));
          }

          v46 = (v18 * v45 / v81 + v82 * (v83 - v18 * v45 / v81)) / v18;
          v47 = *(a1 + 176);
          v48 = v5 + v47 * v20 + _Q4.f64[0] * (v5 - v47 * v20 - (v5 + v47 * v20));
          _D0 = v5 - v47 * v21 - (v5 + v47 * v21);
          __asm { FMLA            D2, D0, V4.D[1] }

          v51 = _D2 * (v84 * v48) + _Q4.f64[0] * (_D2 * (v84 * v48) - _D2 * (v84 * v48));
          v52 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
          [v52 setDampingRatio:v16];
          [v52 setResponse:v51];
          [v52 setRetargetImpulse:0.0];
          v53 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
          [v53 setDampingRatio:v16];
          [v53 setResponse:v51];
          [v53 setRetargetImpulse:0.0];
          v54 = MEMORY[0x277D75D18];
          v55 = *(a1 + 192);
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_4;
          v92[3] = &unk_2783A8BC8;
          v93 = v15;
          v94 = (v19 * v17 / v79 + v82 * (v80 - v19 * v17 / v79)) / v19;
          v56 = v76[2];
          v85 = v15;
          v57 = v56(v76, @"genieAmount.x");
          [v54 sb_animateWithSettings:v52 mode:v55 animations:v92 completion:v57];

          v58 = MEMORY[0x277D75D18];
          v59 = *(a1 + 192);
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_6;
          v89[3] = &unk_2783A8BC8;
          v90 = v86;
          v91 = v46;
          v60 = v76[2];
          v61 = v86;
          v62 = v60(v76, @"genieAmount.y");
          [v58 sb_animateWithSettings:v53 mode:v59 animations:v89 completion:v62];

          ++v12;
          v3 = *(a1 + 48);
          v4 = v77;
        }

        while (v12 < v3);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  v63 = MEMORY[0x277D75D18];
  v64 = [*(a1 + 40) layoutSettings];
  v65 = *(a1 + 192);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_8;
  v87[3] = &unk_2783A92D8;
  v66 = *(a1 + 40);
  v87[4] = *(a1 + 32);
  v88 = v66;
  v67 = (v76[2])(v76, @"genieLayout");
  [v63 sb_animateWithSettings:v64 mode:v65 animations:v87 completion:v67];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_5;
  v6[3] = &unk_2783A8BC8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  HIDWORD(v3) = HIDWORD(v8);
  LODWORD(v3) = *MEMORY[0x277CD9DD0];
  LODWORD(v4) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:2 updateReason:v6 animations:{v3, v4, v5}];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_7;
  v6[3] = &unk_2783A8BC8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  HIDWORD(v3) = HIDWORD(v8);
  LODWORD(v3) = *MEMORY[0x277CD9DD0];
  LODWORD(v4) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:2 updateReason:v6 animations:{v3, v4, v5}];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_9;
  v6[3] = &unk_2783A92D8;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  LODWORD(v3) = *MEMORY[0x277CD9DD0];
  LODWORD(v4) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 8);
  [v1 sb_modifyAnimationsWithPreferredFrameRateRange:2 updateReason:v6 animations:{v3, v4, v5}];
}

uint64_t __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_9(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 512);
  if ([*(a1 + 40) active])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setValue:v3];
  v4 = *(*(a1 + 32) + 480);
  if ([*(a1 + 40) active])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [v4 setAlpha:v5];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 488);
  if ([v6 active])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  return [v7 setAlpha:v8];
}

void __73__SBSwitcherGenieEffectView__performGenieWithAttributes_mode_completion___block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 65);
    if (v8 == *(a1 + 48))
    {
      *(WeakRetained + 66) = v8;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v7;
    (*(v9 + 16))(v9, a2, a3);
    v7 = v10;
  }
}

- (void)_updateGenieMeshTransformForPresentationLayer:(BOOL)layer properties:(id)properties boundsProperty:(id)property attributes:(id)attributes
{
  layerCopy = layer;
  propertiesCopy = properties;
  propertyCopy = property;
  attributesCopy = attributes;
  if (layerCopy)
  {
    os_unfair_lock_lock(&self->_c2_lock);
    c2_presentationUpdatePaused = self->_c2_presentationUpdatePaused;
    os_unfair_lock_unlock(&self->_c2_lock);
    if (c2_presentationUpdatePaused)
    {
      goto LABEL_61;
    }
  }

  else if (self->_modelUpdatesPaused)
  {
    goto LABEL_61;
  }

  if ([propertiesCopy count])
  {
    isInvalidated = [propertyCopy isInvalidated];
    if (propertyCopy)
    {
      if ((isInvalidated & 1) == 0)
      {
        v15 = attributesCopy;
        v16 = v15;
        if (([v15 active] & 1) == 0)
        {
          [v15 iconPosition];
          v133 = v17;
          v135 = v18;
          [v15 windowPosition];
          v129 = v20;
          v131 = v19;
          [v15 initialVelocity];
          v125 = v22;
          v127 = v21;
          [v15 windowSize];
          v120 = v24;
          v123 = v23;
          [v15 minimizedSize];
          v117 = v26;
          v119 = v25;
          [v15 minimizedScale];
          v28 = v27;
          [v15 containerSize];
          v30 = v29;
          v32 = v31;
          [v15 minimumOutsetSize];
          v34 = v33;
          v36 = v35;
          [v15 genieScale];
          v38 = v37;
          [v15 multiplier];
          v40 = v39;
          v42 = v41;
          if (v15)
          {
            [v15 glassHighlight];
          }

          else
          {
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
          }

          layoutSettings = [v15 layoutSettings];
          v16 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:1 windowPosition:&v137 initialVelocity:layoutSettings windowSize:v133 minimizedSize:v135 minimizedScale:v131 containerSize:v129 minimumOutsetSize:v127 genieScale:v125 multiplier:v123 active:v120 glassHighlight:v119 layoutSettings:v117, v28, v30, v32, v34, v36, v38, v40, v42];
        }

        [v16 meshContainerOutset];
        v45 = v44;
        v47 = v46;
        [v16 minimizedSize];
        v49 = v45 + v48;
        [v16 minimizedSize];
        [v16 windowSize];
        v51 = v45 + v50;
        [v16 windowSize];
        v136 = v47 + v52;
        if (layerCopy)
        {
          [propertyCopy presentationValue];
        }

        else
        {
          [propertyCopy value];
        }

        v54 = v53;
        SBRectWithSize();
        v130 = v55;
        v132 = v56;
        [v16 minimizedScale];
        v58 = v57;
        [v16 genieScale];
        v60 = v59;
        [v16 minimizedScale];
        v62 = v61;
        [v16 minimizedScale];
        v64 = v63;
        [v16 genieScale];
        v66 = v65;
        [v16 minimizedSize];
        [v16 counterOffsetForSize:?];
        v126 = v67;
        rows = [v15 rows];
        columns = [v15 columns];
        v70 = sqrt([v15 vertexCount]);
        meshTransform = [MEMORY[0x277CD9F18] meshTransform];
        [meshTransform setDepthNormalization:@"none"];
        v116 = rows;
        v134 = columns;
        v72 = 2 * (vcvtd_n_f64_s64(columns, 1uLL) + v70 * vcvtd_n_f64_s64(rows, 1uLL));
        v73 = v72 | 1;
        v74 = [propertiesCopy objectAtIndex:v72];
        v75 = [propertiesCopy objectAtIndex:v73];
        if (([v74 isInvalidated] & 1) == 0 && (objc_msgSend(v75, "isInvalidated") & 1) == 0)
        {
          v121 = v66;
          v114 = v74;
          if (layerCopy)
          {
            [v74 presentationValue];
            v124 = v76;
            [v75 presentationValue];
          }

          else
          {
            [v74 value];
            v124 = v78;
            [v75 value];
          }

          v79 = v77;
          v80 = v134;
          if (v116 < 0)
          {
LABEL_53:
            if (objc_opt_respondsToSelector())
            {
              [meshTransform setPreallocatesBounds:1];
            }

            containerView = self->_containerView;
            if (layerCopy)
            {
              [(_SBSwitcherGenieEffectContainerView *)containerView _setPresentationValue:meshTransform forKey:@"meshTransform"];
            }

            else
            {
              layer = [(_SBSwitcherGenieEffectContainerView *)containerView layer];
              [layer setValue:meshTransform forKey:@"meshTransform"];
            }

            v74 = v114;
          }

          else
          {
            v113 = v75;
            v128 = meshTransform;
            v111 = attributesCopy;
            v118 = 0;
            v81 = (v64 + (1.0 - v62) * ((v58 * v60 + (1.0 - v54) * (1.0 - v58 * v60) - v58 * v60) / (1.0 - v58 * v60) + 0.0)) / (v58 * v60 + (1.0 - v54) * (1.0 - v58 * v60));
            v122 = (v126 * ((v81 + -1.0) / (1.0 / v121 + -1.0) + 0.0) + 0.0) / v49;
            v82 = !layerCopy;
            v112 = 2 * v70;
            v83 = 1;
            while (1)
            {
              v115 = v83;
              if ((v80 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_43:
              v83 = v115 + v112;
              v100 = v116;
              v101 = v118++ == v116;
              v80 = v134;
              if (v101)
              {
                attributesCopy = v111;
                meshTransform = v128;
                v75 = v113;
                if (v116)
                {
                  v102 = 0;
                  v103 = v134 + 1.0;
                  do
                  {
                    if (v80 <= 0)
                    {
                      ++v102;
                    }

                    else
                    {
                      v104 = 0;
                      v105 = v102++;
                      v106 = v102;
                      do
                      {
                        v138 = 0uLL;
                        v107 = v104;
                        v108 = (v104++ + v105 * v103);
                        LODWORD(v137) = v108;
                        DWORD1(v137) = (v104 + v105 * v103);
                        DWORD2(v137) = (v104 + v106 * v103);
                        HIDWORD(v137) = (v107 + v106 * v103);
                        [v128 addFace:&v137];
                        v80 = v134;
                      }

                      while (v134 != v104);
                      v75 = v113;
                      v100 = v116;
                    }
                  }

                  while (v102 != v100);
                }

                goto LABEL_53;
              }
            }

            v84 = 0;
            v85 = 1.0 / v116 * v118;
            if (!v118)
            {
              v85 = 0.0;
            }

            v86 = v132 * v85 / v136;
            while (1)
            {
              v87 = v84 ? 1.0 / v134 * v84 : 0.0;
              v88 = [propertiesCopy objectAtIndex:v83 - 1];
              v89 = [propertiesCopy objectAtIndex:v83];
              if ([v88 isInvalidated] & 1) != 0 || (objc_msgSend(v89, "isInvalidated"))
              {
                break;
              }

              if (layerCopy)
              {
                [v88 presentationValue];
                v91 = v90;
                [v89 presentationValue];
              }

              else
              {
                [v88 value];
                v91 = v93;
                [v89 value];
              }

              v94 = v130 * (v122 + v124 + (v91 - v124) * v81) / v51;
              v95 = v132 * (v79 + (v92 - v79) * v81) / v136;
              v96 = v130 * v87 / v51;
              if (v82)
              {
                v82 = 1;
              }

              else
              {
                traitCollection = [(SBSwitcherGenieEffectView *)self traitCollection];
                [traitCollection displayScale];
                v99 = 1.0 / v98;

                v82 = (v84 | 2) == 2 && vabdd_f64(v94, v96) >= v99 / v51;
                if ((v118 | 2) == 2)
                {
                  v82 = vabdd_f64(v95, v86) >= v99 / v136;
                }
              }

              *&v137 = v96;
              *(&v137 + 1) = v86;
              *&v138 = v94;
              *(&v138 + 1) = v95;
              v139 = 0x3FF0000000000000;
              [v128 addVertex:&v137];

              ++v84;
              v83 += 2;
              if (v134 + 1 == v84)
              {
                goto LABEL_43;
              }
            }

            attributesCopy = v111;
            meshTransform = v128;
            v75 = v113;
            v74 = v114;
          }
        }
      }
    }
  }

LABEL_61:
}

- (void)_setGlassHighlight:(SBSwitcherGenieGlassHighlight *)highlight
{
  v88 = *MEMORY[0x277D85DE8];
  p_glassHighlight = &self->_glassHighlight;
  v6 = *&highlight->direction.y;
  v73 = *&highlight->style;
  v74 = v6;
  *&v75 = highlight->intensity;
  v7 = *&self->_glassHighlight.direction.y;
  v82[0] = *&self->_glassHighlight.style;
  v82[1] = v7;
  intensity = self->_glassHighlight.intensity;
  if ((SBEqualSwitcherGenieGlassHighlights(&v73, v82) & 1) == 0)
  {
    style = p_glassHighlight->style;
    v9 = highlight->style;
    v10 = highlight->style == 1;
    v11 = *&highlight->style;
    v12 = *&highlight->direction.y;
    p_glassHighlight->intensity = highlight->intensity;
    *&p_glassHighlight->style = v11;
    *&p_glassHighlight->direction.y = v12;
    [(SBSwitcherGenieEffectView *)self setNeedsLayout];
    [(_SBSDFElementView *)self->_sdfElementView setHidden:v10];
    v13 = 480;
    [(_SBSDFView *)self->_keyFillHighlightSDFView setHidden:v10];
    v14 = 488;
    [(_SBSDFView *)self->_rimHighlightSDFView setHidden:v9 != 2];
    if (v9 != 1 && style == 1)
    {
      if ([(NSMutableArray *)self->_contentNotificationBadgePortalViews count])
      {
        goto LABEL_31;
      }

      v63 = 488;
      v64 = 480;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v15 = self->_contentPortalViews;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v79;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v79 != v18)
            {
              objc_enumerationMutation(v15);
            }

            sourceView = [*(*(&v78 + 1) + 8 * i) sourceView];
            if (sourceView)
            {
              [(SBSwitcherGenieEffectView *)self _addPortaledNotificationBadgeForContentViewIfNeeded:sourceView];
            }
          }

          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v78 objects:v87 count:16];
        }

        while (v17);
      }

      v14 = v63;
      v13 = v64;
    }

    if (v9 == 1)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      subviews = [*(&self->super.super.super.isa + v13) subviews];
      v22 = [subviews countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v70;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v70 != v24)
            {
              objc_enumerationMutation(subviews);
            }

            [*(*(&v69 + 1) + 8 * j) removeFromSuperview];
          }

          v23 = [subviews countByEnumeratingWithState:&v69 objects:v85 count:16];
        }

        while (v23);
      }

      layer = [*(&self->super.super.super.isa + v13) layer];
      [layer setFilters:0];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      subviews2 = [*(&self->super.super.super.isa + v14) subviews];
      v28 = [subviews2 countByEnumeratingWithState:&v65 objects:v84 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v66;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v66 != v30)
            {
              objc_enumerationMutation(subviews2);
            }

            [*(*(&v65 + 1) + 8 * k) removeFromSuperview];
          }

          v29 = [subviews2 countByEnumeratingWithState:&v65 objects:v84 count:16];
        }

        while (v29);
      }

      layer2 = [(_SBSwitcherGenieEffectContainerView *)self->_containerView layer];
      [layer2 setMinificationFilter:*MEMORY[0x277CDA560]];

      layer3 = [(_SBSwitcherGenieEffectContainerView *)self->_containerView layer];
      [layer3 setMinificationFilterBias:0.0];
      goto LABEL_42;
    }

LABEL_31:
    v34 = [(_SBSwitcherGenieEffectContainerView *)self->_containerView layer:v63];
    [v34 setMinificationFilter:*MEMORY[0x277CDA630]];

    layer4 = [(_SBSwitcherGenieEffectContainerView *)self->_containerView layer];
    LODWORD(v36) = -1.0;
    [layer4 setMinificationFilterBias:v36];

    if (style == 1)
    {
      v37 = objc_alloc_init(MEMORY[0x277D76180]);
      layer5 = [v37 layer];
      layer6 = [(_SBSDFElementView *)self->_sdfElementView layer];
      [layer5 setSourceLayer:layer6];

      [v37 setHidesSourceView:1];
      [v37 setMatchesPosition:1];
      [v37 setMatchesTransform:1];
      [*(&self->super.super.super.isa + v13) addSubview:v37];
    }

    layer3 = objc_alloc_init(MEMORY[0x277CD9F60]);
    [layer3 setKeySpreadScale:1.0];
    [layer3 setFillSpreadScale:1.0];
    [layer3 setKeySpreadOffset:0.0];
    [layer3 setFillSpreadOffset:0.0];
    [layer3 setKeyHeightScale:1.0];
    [layer3 setFillHeightScale:1.0];
    [layer3 setKeyHeightOffset:0.0];
    [layer3 setFillHeightOffset:0.0];
    if (v9 == 2)
    {
      x = p_glassHighlight->direction.x;
      y = p_glassHighlight->direction.y;
      v50 = fmax(hypot(x, y) / -0.309016994 + 1.0, 0.0);
      v51 = atan2(x, y);
      v52 = p_glassHighlight->intensity;
      v53 = v52 * ((1.0 - v50 * v50) * 0.5 + 0.5);
      v54 = (v50 * v50 + 1.0) * 22.0 * 0.06640625;
      v44 = [MEMORY[0x277D75348] colorWithRed:1.1 green:1.1 blue:1.1 alpha:v53 * 0.6];
      layer10 = [MEMORY[0x277D75348] colorWithRed:1.1 green:1.1 blue:1.1 alpha:v53 * 0.4];
      v47 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:v52 * 0.08];
      [layer3 setKeyAmount:0.5];
      [layer3 setKeyAngle:v51];
      [layer3 setKeyHeight:v54];
      [layer3 setKeySpread:v50 * v50 * 1.78023584 + 1.36135682];
      [layer3 setKeyColor:{objc_msgSend(v44, "CGColor")}];
      [layer3 setFillAmount:0.5];
      [layer3 setFillAngle:v51 + 3.14159265];
      [layer3 setFillHeight:v54];
      [layer3 setFillSpread:v50 * v50 * 2.00712864 + 1.13446401];
      [layer3 setFillColor:{objc_msgSend(layer10, "CGColor")}];
      [layer3 setCurvature:1.0];
      [layer3 setGlobal:0];
      subviews3 = [*(&self->super.super.super.isa + v14) subviews];
      v56 = [subviews3 count];

      if (!v56)
      {
        v57 = objc_alloc_init(MEMORY[0x277D76180]);
        layer7 = [v57 layer];
        layer8 = [(_SBSDFElementView *)self->_sdfElementView layer];
        [layer7 setSourceLayer:layer8];

        [v57 setHidesSourceView:1];
        [v57 setMatchesPosition:1];
        [v57 setMatchesTransform:1];
        [*(&self->super.super.super.isa + v14) addSubview:v57];
      }

      v60 = objc_alloc_init(MEMORY[0x277CD9F58]);
      [v60 setAmount:1.0];
      [v60 setAngle:1.57079633];
      [v60 setHeight:0.73046875];
      [v60 setSpread:3.14159265];
      [v60 setColor:{objc_msgSend(v47, "CGColor")}];
      [v60 setCurvature:1.0];
      [v60 setGlobal:0];
      layer9 = [*(&self->super.super.super.isa + v14) layer];
      [layer9 setEffect:v60];
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_41;
      }

      [layer3 setFillAmount:0.5];
      [layer3 setKeyAngle:0.0];
      [layer3 setKeyHeight:1.0];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v41 = [whiteColor colorWithAlphaComponent:1.0];
      [layer3 setKeyColor:{objc_msgSend(v41, "CGColor")}];

      [layer3 setGlobal:1];
      [layer3 setKeySpread:1.57079633];
      [layer3 setFillAngle:3.14159265];
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v43 = [whiteColor2 colorWithAlphaComponent:1.0];
      [layer3 setFillColor:{objc_msgSend(v43, "CGColor")}];

      [layer3 setKeyAmount:0.5];
      [layer3 setFillHeight:1.0];
      [layer3 setFillSpread:1.57079633];
      [layer3 setCurvature:0.7];
      if (style != 1)
      {
        goto LABEL_41;
      }

      v44 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
      v75 = xmmword_21F8A8B48;
      v76 = unk_21F8A8B58;
      v77 = xmmword_21F8A8B68;
      v73 = xmmword_21F8A8B28;
      v74 = unk_21F8A8B38;
      v45 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v73];
      [v44 setValue:v45 forKey:@"inputColorMatrix"];

      [v44 setValue:&unk_28336F870 forKey:@"inputClamp"];
      layer10 = [*(&self->super.super.super.isa + v13) layer];
      v86 = v44;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      [layer10 setFilters:v47];
    }

LABEL_41:
    layer11 = [*(&self->super.super.super.isa + v13) layer];
    [layer11 setEffect:layer3];

LABEL_42:
  }
}

- (void)_invalidateGenie
{
  ++self->_generationCount;
  [(SBSwitcherGenieEffectView *)self _invalidateContentViewPortalsIfNeeded];
  if (self->_attributes)
  {
    os_unfair_lock_lock(&self->_c2_lock);
    c2_presentationUpdatePaused = self->_c2_presentationUpdatePaused;
    self->_c2_presentationUpdatePaused = 1;
    os_unfair_lock_unlock(&self->_c2_lock);
    self->_modelUpdatesPaused = 1;
    [(UIViewFloatAnimatableProperty *)self->_boundsProperty invalidate];
    boundsProperty = self->_boundsProperty;
    self->_boundsProperty = 0;

    v4 = sqrt([(SBSwitcherGenieAttributes *)self->_attributes vertexCount]);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = v4;
        do
        {
          v9 = [(NSArray *)self->_animatableProperties objectAtIndex:v7 - 1];
          [v9 invalidate];
          v10 = [(NSArray *)self->_animatableProperties objectAtIndex:v7];
          [v10 invalidate];

          v7 += 2;
          --v8;
        }

        while (v8);
        ++v5;
        v6 += 2 * v4;
      }

      while (v5 != v4);
    }

    animatableProperties = self->_animatableProperties;
    self->_animatableProperties = 0;

    attributes = self->_attributes;
    self->_attributes = 0;

    self->_modelUpdatesPaused = 0;
    [(SBSwitcherGenieEffectView *)self _setGlassHighlight:v16, SBSwitcherGenieGlassHighlightNone(v16)];
    if (!c2_presentationUpdatePaused)
    {
      os_unfair_lock_lock(&self->_c2_lock);
      self->_c2_presentationUpdatePaused = 0;
      os_unfair_lock_unlock(&self->_c2_lock);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__SBSwitcherGenieEffectView__invalidateGenie__block_invoke;
    v15[3] = &unk_2783A8C18;
    v15[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v15];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained genieEffectViewDidInvalidate:self];
  }
}

void __45__SBSwitcherGenieEffectView__invalidateGenie__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 408) layer];
  [v1 setValue:0 forKey:@"meshTransform"];
}

- (void)_invalidateContentViewPortalsIfNeeded
{
  v33 = *MEMORY[0x277D85DE8];
  contentPortalViews = self->_contentPortalViews;
  if (contentPortalViews)
  {
    v4 = contentPortalViews;
    v5 = self->_contentPortalViews;
    self->_contentPortalViews = 0;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          [v11 removeFromSuperview];
          layer = [v11 layer];
          [layer removeAnimationForKey:@"SBGenieEffectViewMatchMoveAnimation"];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }
  }

  contentNotificationBadgePortalViews = self->_contentNotificationBadgePortalViews;
  if (contentNotificationBadgePortalViews)
  {
    v14 = contentNotificationBadgePortalViews;
    v15 = self->_contentNotificationBadgePortalViews;
    self->_contentNotificationBadgePortalViews = 0;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v14;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * j);
          [v21 removeFromSuperview];
          layer2 = [v21 layer];
          [layer2 removeAnimationForKey:@"SBGenieEffectViewMatchMoveAnimation"];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }
}

- (void)_addPortaledNotificationBadgeForContentViewIfNeeded:(id)needed
{
  neededCopy = needed;
  isIconBadgeView = [neededCopy isIconBadgeView];
  if ((isIconBadgeView & 1) == 0)
  {
    v5 = [(SBSwitcherGenieEffectView *)self _iconBadgeViewIfAnyInView:neededCopy];
    if (v5)
    {
      v6 = [(SBSwitcherGenieEffectView *)self _addAndReturnPortaledContentView:v5];
      if (!self->_contentNotificationBadgePortalViews)
      {
        v7 = objc_opt_new();
        contentNotificationBadgePortalViews = self->_contentNotificationBadgePortalViews;
        self->_contentNotificationBadgePortalViews = v7;
      }

      v9 = [(SBSwitcherGenieEffectView *)self _iconViewIfAnyInView:neededCopy];
      if (v9)
      {
        v10 = objc_opt_new();
        layer = [v9 layer];
        [v10 setSourceLayer:layer];

        [v10 setKeyPath:@"opacity"];
        [v10 setDuration:INFINITY];
        [v10 setRemovedOnCompletion:0];
        layer2 = [v6 layer];
        [layer2 addAnimation:v10 forKey:@"com.apple.SpringBoard.genie.badgePortalView.matchOpacity"];
      }

      [(NSMutableArray *)self->_contentNotificationBadgePortalViews addObject:v6];
    }
  }

  MEMORY[0x2821F9730](isIconBadgeView);
}

- (id)_iconViewIfAnyInView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [view subviews];
  v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isIconView])
        {
          v10 = v9;
LABEL_13:
          v11 = v10;
          goto LABEL_14;
        }

        v10 = [(SBSwitcherGenieEffectView *)self _iconViewIfAnyInView:v9];
        if (v10)
        {
          goto LABEL_13;
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)_iconBadgeViewIfAnyInView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [view subviews];
  v5 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isIconBadgeView])
        {
          v10 = v9;
LABEL_13:
          v11 = v10;
          goto LABEL_14;
        }

        v10 = [(SBSwitcherGenieEffectView *)self _iconBadgeViewIfAnyInView:v9];
        if (v10)
        {
          goto LABEL_13;
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (SBSwitcherGenieEffectViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:(uint64_t)a1 delegate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherGenieEffectView.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)_performGenieWithAttributes:(uint64_t)a1 mode:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherGenieEffectView.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];
}

@end