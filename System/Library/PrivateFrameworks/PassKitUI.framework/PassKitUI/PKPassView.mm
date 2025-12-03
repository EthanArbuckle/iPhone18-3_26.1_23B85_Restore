@interface PKPassView
- (BOOL)_visibleFaceShouldClipForCurrentViewMode:(double *)mode;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)frameOfVisibleFace;
- (CGSize)sizeOfFront;
- (CGSize)sizeOfFrontFace;
- (PKPassView)initWithPass:(id)pass content:(int64_t)content suppressedContent:(unint64_t)suppressedContent rendererState:(id)state;
- (PKPassViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)observers;
- (id)snapshotOfFrontFace;
- (id)snapshotOfFrontFaceWithRequestedSize:(CGSize)size format:(id)format;
- (id)snapshotOfPassView;
- (id)snapshotViewOfVisibleFaceAfterScreenUpdates:(BOOL)updates;
- (unint64_t)_regionsForCurrentModes;
- (void)_applyContentMode:(BOOL)mode;
- (void)_disablePortals;
- (void)_enablePortals;
- (void)_endAssertingPortal;
- (void)_updateFrontFaceSuppressedContent;
- (void)_updateHighEndLayerShadowAnimated:(BOOL)animated withDelay:(double)delay;
- (void)_updateLayerShadowAnimated:(BOOL)animated withDelay:(double)delay;
- (void)addPassStateObserver:(id)observer;
- (void)dealloc;
- (void)drawFrontFaceAtSize:(CGSize)size;
- (void)invalidate;
- (void)layoutSubviews;
- (void)passFaceViewExpandButtonTapped:(id)tapped;
- (void)passcodeLockManager:(id)manager didReceivePasscodeSet:(BOOL)set;
- (void)removePassStateObserver:(id)observer;
- (void)setContentMode:(int64_t)mode animated:(BOOL)animated withDelay:(double)delay;
- (void)setFrontFaceExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setModalShadowVisibility:(double)visibility animated:(BOOL)animated withDelay:(double)delay;
- (void)setModallyPresented:(BOOL)presented;
- (void)setPassState:(id)state;
- (void)tapRecognized:(id)recognized;
@end

@implementation PKPassView

- (void)_updateFrontFaceSuppressedContent
{
  isExpired = [(PKPass *)self->_pass isExpired];
  isVoided = [(PKPass *)self->_pass isVoided];
  hasValidNFCPayload = [(PKPass *)self->_pass hasValidNFCPayload];
  isValid = 0;
  v7 = 1;
  if ((self->_suppressedContent & 0x40) == 0 && hasValidNFCPayload)
  {
    if (PKValueAddedServicesEnabled())
    {
      isValid = [(PKPass *)self->_pass isValid];
      v7 = 0;
    }

    else
    {
      isValid = 0;
    }
  }

  suppressedContent = self->_suppressedContent;
  if ((suppressedContent & 0x80) == 0)
  {
    barcode = [(PKPass *)self->_pass barcode];
    if ((barcode == 0) | isValid & 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(PKPass *)self->_pass supportsIssuerBinding]^ 1;
    }

    suppressedContent = self->_suppressedContent;
    if ((suppressedContent & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    enabled = 0;
    goto LABEL_16;
  }

  v10 = 0;
  if ((suppressedContent & 0x200) != 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  if ([(PKPass *)self->_pass liveRenderingRequiresEnablement])
  {
    liveRender = [(PKPassDynamicState *)self->_passState liveRender];
    enabled = [liveRender enabled];
  }

  else
  {
    enabled = 1;
  }

LABEL_16:
  if (((v7 | v10) & 1) != 0 || ((isExpired | isVoided) & 1) == 0)
  {
    v13 = ((self->_suppressedContent & 0x800) == 0) & isValid;
  }

  else
  {
    v13 = 2;
  }

  [(PKPassFrontFaceView *)self->_frontFace setBottomRightItem:v13];
  [(PKPassFrontFaceView *)self->_frontFace setShowsBarcodeView:v10];
  [(PKPassFrontFaceView *)self->_frontFace setShowsLinkedApp:(suppressedContent & 0x20) == 0];
  frontFace = self->_frontFace;
  if (enabled)
  {
    [(PKPassFaceView *)frontFace setShowsLiveRendering:1 rendererState:self->_rendererState];
    rendererState = self->_rendererState;
    self->_rendererState = 0;
  }

  else
  {
    [(PKPassFaceView *)frontFace setShowsLiveRendering:0 rendererState:0];
  }

  v16 = self->_frontFace;
  v17 = (self->_suppressedContent & 0x400) == 0;

  [(PKPassFrontFaceView *)v16 setShowsLiveBalance:v17];
}

- (unint64_t)_regionsForCurrentModes
{
  contentMode = self->_contentMode;
  v3 = 3;
  if (contentMode <= 1)
  {
    v3 = 1;
  }

  if (contentMode <= 3)
  {
    return v3;
  }

  else
  {
    return v3 | 4;
  }
}

- (CGSize)sizeOfFront
{
  [(PKPassFrontFaceView *)self->_frontFace contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)observers
{
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_observersLock);

  return v4;
}

- (CGSize)sizeOfFrontFace
{
  [(PKPass *)self->_pass style];

  PKPassFrontFaceContentSize();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = PKPassView;
  [(PKPassView *)&v58 layoutSubviews];
  [(PKPassView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKPassFrontFaceView *)self->_frontFace contentSize];
  [(PKPassFrontFaceView *)self->_frontFace frameForAlignmentRect:v4, v6, v7, v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PKPassFrontFaceView *)self->_frontFace frame];
  y = v59.origin.y;
  x = v59.origin.x;
  height = v59.size.height;
  width = v59.size.width;
  v62.origin.x = v10;
  v62.origin.y = v12;
  v62.size.width = v14;
  v62.size.height = v16;
  if (!CGRectEqualToRect(v59, v62))
  {
    [(PKPassFrontFaceView *)self->_frontFace setFrame:v10, v12, v14, v16];
  }

  if (self->_portalLayerShadow)
  {
    v52 = v12;
    v53 = v10;
    [(PKPassFrontFaceView *)self->_frontFace bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(CAPortalLayer *)self->_portalLayerShadow bounds];
    v63.origin.x = v18;
    v63.origin.y = v20;
    v63.size.width = v22;
    v63.size.height = v24;
    if (!CGRectEqualToRect(v60, v63))
    {
      [(CAPortalLayer *)self->_portalLayerShadow setBounds:v18, v20, v22, v24];
    }

    [(PKPassFaceView *)self->_frontFace alignmentRectInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    PKSizeAlignedInRect();
    v33 = v26 * -0.94;
    v34 = v28 * -0.94;
    v35 = v30 * -0.94;
    v37 = v28 * -0.94 + v36;
    v39 = v33 + v38;
    v41 = v40 - (v34 + v32 * -0.94);
    v43 = v42 - (v33 + v35);
    [(CAPortalLayer *)self->_portalLayerShadow anchorPoint];
    v45 = v37 + v44 * v41;
    v47 = v39 + v46 * v43;
    [(CAPortalLayer *)self->_portalLayerShadow position];
    v50 = v49 == v45 && v48 == v47;
    v12 = v52;
    v10 = v53;
    if (!v50)
    {
      [(CAPortalLayer *)self->_portalLayerShadow setPosition:v45, v47];
    }
  }

  v61.origin.y = y;
  v61.origin.x = x;
  v61.size.height = height;
  v61.size.width = width;
  v64.origin.x = v10;
  v64.origin.y = v12;
  v64.size.width = v14;
  v64.size.height = v16;
  if (!CGRectEqualToRect(v61, v64))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained faceFrameDidChangeForPassView:self];
    }
  }
}

- (PKPassView)initWithPass:(id)pass content:(int64_t)content suppressedContent:(unint64_t)suppressedContent rendererState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  v41.receiver = self;
  v41.super_class = PKPassView;
  v13 = [(PKPassView *)&v41 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    displayProfile = [passCopy displayProfile];
    v13->_suppressedContent = suppressedContent;
    objc_storeStrong(&v13->_rendererState, state);
    v13->_observersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_pass, pass);
    v15 = [PKPassColorProfile profileForDisplayProfile:displayProfile];
    colorProfile = v13->_colorProfile;
    v13->_colorProfile = v15;

    v17 = +[PKPassFaceView newFrontFaceViewForStyle:](PKPassFaceView, "newFrontFaceViewForStyle:", [passCopy style]);
    frontFace = v13->_frontFace;
    v13->_frontFace = v17;

    [(PKPassFaceView *)v13->_frontFace setModallyPresented:v13->_modallyPresented];
    [(PKPassFaceView *)v13->_frontFace setPass:v13->_pass colorProfile:v13->_colorProfile];
    [(PKPassFaceView *)v13->_frontFace setDelegate:v13];
    [(PKPassView *)v13 _updateFrontFaceSuppressedContent];
    [(PKPassView *)v13 addSubview:v13->_frontFace];
    if ((PKIsLowEndDevice() & 1) == 0)
    {
      [(PKPassFrontFaceView *)v13->_frontFace anchorPoint];
      v20 = v19;
      v22 = v21;
      layer = [(PKPassFrontFaceView *)v13->_frontFace layer];
      v24 = objc_alloc_init(MEMORY[0x1E69B8978]);
      actionRemover = v13->_actionRemover;
      v13->_actionRemover = v24;

      layer2 = [MEMORY[0x1E6979408] layer];
      portalLayerShadow = v13->_portalLayerShadow;
      v13->_portalLayerShadow = layer2;

      [(CAPortalLayer *)v13->_portalLayerShadow setSourceLayer:layer];
      [(CAPortalLayer *)v13->_portalLayerShadow setDelegate:v13->_actionRemover];
      [(CAPortalLayer *)v13->_portalLayerShadow setAnchorPoint:v20, v22];
      [(CAPortalLayer *)v13->_portalLayerShadow setOpacity:0.0];
      v28 = v13->_portalLayerShadow;
      CATransform3DMakeScale(&v40, 0.94, 0.94, 1.0);
      [(CAPortalLayer *)v28 setTransform:&v40];
      layer3 = [MEMORY[0x1E6979408] layer];
      portalFrontLayer = v13->_portalFrontLayer;
      v13->_portalFrontLayer = layer3;

      [(CAPortalLayer *)v13->_portalFrontLayer setSourceLayer:layer];
      [(CAPortalLayer *)v13->_portalFrontLayer setDelegate:v13->_actionRemover];
      [(CAPortalLayer *)v13->_portalFrontLayer setAnchorPoint:v20, v22];
      [(CAPortalLayer *)v13->_portalFrontLayer setMatchesPosition:1];
      [(CAPortalLayer *)v13->_portalFrontLayer setHidesSourceLayer:1];
      v13->_portalsEnabled = 0;
    }

    v31 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel_tapRecognized_];
    tapRecognizer = v13->_tapRecognizer;
    v13->_tapRecognizer = v31;

    [(UITapGestureRecognizer *)v13->_tapRecognizer setDelegate:v13];
    [(UITapGestureRecognizer *)v13->_tapRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v13->_tapRecognizer setNumberOfTouchesRequired:1];
    [(PKPassView *)v13 addGestureRecognizer:v13->_tapRecognizer];
    [PKAppIntentUIUtilities annotateView:v13 withEntityForPass:passCopy];
    v13->_contentMode = content;
    [(PKPassView *)v13 _applyContentMode:0];
    [(PKPassView *)v13 sizeToFit];
    mEMORY[0x1E69B8B28] = [MEMORY[0x1E69B8B28] sharedManager];
    passcodeLockManager = v13->_passcodeLockManager;
    v13->_passcodeLockManager = mEMORY[0x1E69B8B28];

    [(PKPasscodeLockManager *)v13->_passcodeLockManager addObserver:v13];
    v35 = MEMORY[0x1E696AEC0];
    uniqueID = [passCopy uniqueID];
    v37 = [v35 stringWithFormat:@"PKPassView.%@", uniqueID];

    [(PKPassView *)v13 setAccessibilityIdentifier:v37];
    [(PKPassView *)v13 setAccessibilityIgnoresInvertColors:1];

    objc_autoreleasePoolPop(context);
  }

  return v13;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(PKPasscodeLockManager *)self->_passcodeLockManager removeObserver:self];
  v3 = self->_suppressingIdentifier;
  v4 = v3;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __21__PKPassView_dealloc__block_invoke;
    v7[3] = &unk_1E8025830;
    v8 = v3;
    _AccessSuppressionSetForMutation(v7);
  }

  contentModeUpdateTimer = self->_contentModeUpdateTimer;
  if (contentModeUpdateTimer)
  {
    dispatch_source_cancel(contentModeUpdateTimer);
  }

  v6.receiver = self;
  v6.super_class = PKPassView;
  [(PKPassView *)&v6 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKPassFaceView *)self->_frontFace invalidate];
  }
}

- (void)addPassStateObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  observers = self->_observers;
  if (!observers)
  {
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = self->_observers;
    self->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removePassStateObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = PKPassView;
  v5 = [(PKPassView *)&v10 hitTest:event withEvent:test.x, test.y];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  frontFace = self->_frontFace;
  [touch locationInView:frontFace];

  return [(WLEasyToHitCustomView *)frontFace pointInside:0 withEvent:?];
}

- (void)tapRecognized:(id)recognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passViewTapped:self];
  }
}

- (CGRect)frameOfVisibleFace
{
  frontFace = self->_frontFace;
  [(PKPassFrontFaceView *)frontFace frame];

  [(PKPassFrontFaceView *)frontFace alignmentRectForFrame:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)snapshotOfFrontFace
{
  [(PKPassView *)self layoutIfNeeded];
  [(PKPassView *)self frameOfVisibleFace];

  return [(PKPassView *)self snapshotOfFrontFaceWithRequestedSize:v3, v4];
}

- (id)snapshotOfFrontFaceWithRequestedSize:(CGSize)size format:(id)format
{
  height = size.height;
  width = size.width;
  formatCopy = format;
  preferredFormat = formatCopy;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == width && v10 == height)
  {
    v26 = 0;
  }

  else
  {
    if (!formatCopy)
    {
      preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
    }

    suppressedContent = self->_suppressedContent;
    modallyPresented = self->_modallyPresented;
    if (suppressedContent != (suppressedContent | 0x377))
    {
      [(PKPassView *)self setSuppressedContent:?];
    }

    [(PKPassView *)self setModallyPresented:1];
    [(PKPassView *)self layoutIfNeeded];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPassView_snapshotOfFrontFaceWithRequestedSize_format___block_invoke;
    aBlock[3] = &unk_1E8025858;
    v44 = modallyPresented;
    v45 = suppressedContent != (suppressedContent | 0x377);
    aBlock[4] = self;
    aBlock[5] = suppressedContent;
    v14 = _Block_copy(aBlock);
    [(PKPassFrontFaceView *)self->_frontFace frame];
    if (v9 == v15 && v10 == v16)
    {
      v14[2](v14);
      v26 = 0;
    }

    else
    {
      v18 = v15;
      v19 = v16;
      [(PKPassFrontFaceView *)self->_frontFace alignmentRectForFrame:?];
      v22 = v20;
      v23 = v21 != height || v20 != width;
      if (v23)
      {
        v24 = height * (v20 / v21);
        if (v24 > width)
        {
          v24 = width;
        }

        v25 = v24 / v20;
        v18 = round(v18 * (v24 / v20));
        v19 = round(v19 * (v24 / v20));
        v22 = round(v20 * (v24 / v20));
        v40 = round(v21 * (v24 / v20));
      }

      else
      {
        v40 = v21;
        v25 = 1.0;
      }

      v27 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{v18, v19}];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __58__PKPassView_snapshotOfFrontFaceWithRequestedSize_format___block_invoke_2;
      v41[3] = &unk_1E8025880;
      v42 = v23;
      *&v41[5] = v25;
      v41[4] = self;
      v28 = [v27 imageWithActions:v41];
      [(PKPassFaceView *)self->_frontFace alignmentRectInsets];
      v32 = v31;
      v34 = v33;
      if (v23)
      {
        PKFloatRoundToPixel();
        v34 = v35;
        PKFloatRoundToPixel();
        v32 = v36;
        v37 = v18 - v34 - v22;
        v38 = v19 - v36 - v40;
      }

      else
      {
        v38 = v29;
        v37 = v30;
      }

      v14[2](v14);
      v26 = [v28 imageWithAlignmentRectInsets:{v32, v34, v38, v37}];
    }
  }

  return v26;
}

uint64_t __58__PKPassView_snapshotOfFrontFaceWithRequestedSize_format___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setModallyPresented:*(a1 + 48)];
  if (*(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setSuppressedContent:v4];
  }

  return result;
}

void __58__PKPassView_snapshotOfFrontFaceWithRequestedSize_format___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  if (*(a1 + 48) == 1)
  {
    CGContextScaleCTM(v3, *(a1 + 40), *(a1 + 40));
  }

  v4 = [*(*(a1 + 32) + 408) layer];
  [v4 renderInContext:v3];

  CGContextRestoreGState(v3);
}

- (id)snapshotOfPassView
{
  [(PKPassView *)self layoutIfNeeded];
  [(PKPassView *)self bounds];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == v3 && v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    suppressedContent = self->_suppressedContent;
    modallyPresented = self->_modallyPresented;
    if (suppressedContent != (suppressedContent | 0x377))
    {
      [(PKPassView *)self setSuppressedContent:*MEMORY[0x1E695F060], v5];
    }

    [(PKPassView *)self setModallyPresented:1];
    [(PKPassView *)self layoutIfNeeded];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__PKPassView_snapshotOfPassView__block_invoke;
    aBlock[3] = &unk_1E8025858;
    v19 = modallyPresented;
    v20 = suppressedContent != (suppressedContent | 0x377);
    aBlock[4] = self;
    aBlock[5] = suppressedContent;
    v11 = _Block_copy(aBlock);
    v12 = objc_alloc(MEMORY[0x1E69DCA78]);
    preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
    v14 = [v12 initWithSize:preferredFormat format:{v7, v8}];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__PKPassView_snapshotOfPassView__block_invoke_2;
    v17[3] = &unk_1E8023A48;
    v17[4] = self;
    v15 = [v14 imageWithActions:v17];
    v11[2](v11);
  }

  return v15;
}

uint64_t __32__PKPassView_snapshotOfPassView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setModallyPresented:*(a1 + 48)];
  if (*(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setSuppressedContent:v4];
  }

  return result;
}

void __32__PKPassView_snapshotOfPassView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  v4 = [*(a1 + 32) layer];
  [v4 renderInContext:v3];

  CGContextRestoreGState(v3);
}

- (id)snapshotViewOfVisibleFaceAfterScreenUpdates:(BOOL)updates
{
  v4 = [(PKPassFrontFaceView *)self->_frontFace snapshotViewAfterScreenUpdates:updates];
  layer = [(PKPassView *)self layer];
  layer2 = [(PKPassFrontFaceView *)self->_frontFace layer];
  layer3 = [v4 layer];
  [layer bounds];
  v45 = v9;
  v46 = v8;
  v11 = v10;
  v13 = v12;
  [layer3 bounds];
  v43 = v15;
  v44 = v14;
  v41 = v17;
  v42 = v16;
  [layer3 anchorPoint];
  v39 = v19;
  v40 = v18;
  [layer position];
  v21 = v20;
  v23 = v22;
  [layer anchorPoint];
  v25 = v21 - v24 * v11;
  v27 = v23 - v26 * v13;
  [layer2 position];
  v29 = v28;
  v31 = v30;
  [layer2 bounds];
  v33 = v32;
  v35 = v34;
  [layer2 anchorPoint];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __58__PKPassView_snapshotViewOfVisibleFaceAfterScreenUpdates___block_invoke;
  v47[3] = &unk_1E80258A8;
  v47[4] = layer3;
  *&v47[5] = v25;
  *&v47[6] = v27;
  *&v47[7] = v29 - v36 * v33;
  *&v47[8] = v31 - v37 * v35;
  v47[9] = v46;
  v47[10] = v45;
  *&v47[11] = v11;
  *&v47[12] = v13;
  v47[13] = v40;
  v47[14] = v39;
  v47[15] = v44;
  v47[16] = v43;
  v47[17] = v42;
  v47[18] = v41;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v47];

  return v4;
}

- (void)drawFrontFaceAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  suppressedContent = self->_suppressedContent;
  modallyPresented = self->_modallyPresented;
  if (suppressedContent != (suppressedContent | 0x377))
  {
    [(PKPassView *)self setSuppressedContent:?];
  }

  [(PKPassView *)self setModallyPresented:1];
  [(PKPassView *)self layoutIfNeeded];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PKPassView_drawFrontFaceAtSize___block_invoke;
  aBlock[3] = &unk_1E8025858;
  v17 = modallyPresented;
  v18 = suppressedContent != (suppressedContent | 0x377);
  aBlock[4] = self;
  aBlock[5] = suppressedContent;
  v8 = _Block_copy(aBlock);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(PKPassView *)self bounds];
  if (v10 != width || v11 != height)
  {
    CGContextScaleCTM(CurrentContext, width / v10, height / v11);
  }

  [(PKPassFrontFaceView *)self->_frontFace frame];
  if (v12 != *MEMORY[0x1E695EFF8] || v13 != *(MEMORY[0x1E695EFF8] + 8))
  {
    CGContextTranslateCTM(CurrentContext, v12, v13);
  }

  layer = [(PKPassFrontFaceView *)self->_frontFace layer];
  [layer renderInContext:CurrentContext];

  CGContextRestoreGState(CurrentContext);
  v8[2](v8);
}

uint64_t __34__PKPassView_drawFrontFaceAtSize___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setModallyPresented:*(a1 + 48)];
  if (*(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setSuppressedContent:v4];
  }

  return result;
}

- (void)setModallyPresented:(BOOL)presented
{
  if (self->_modallyPresented != presented)
  {
    presentedCopy = presented;
    self->_modallyPresented = presented;
    [(PKPassFaceView *)self->_frontFace setModallyPresented:?];
    if ((PKRunningInRemoteContext() & 1) == 0)
    {
      if (self->_modallyPresented)
      {
        uniqueID = [(PKPass *)self->_pass uniqueID];
        v6 = [uniqueID copy];
      }

      else
      {
        v6 = 0;
      }

      v7 = self->_suppressingIdentifier;
      objc_storeStrong(&self->_suppressingIdentifier, v6);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __34__PKPassView_setModallyPresented___block_invoke;
      v16 = &unk_1E80258D0;
      v17 = v7;
      v18 = v6;
      v8 = v6;
      v9 = v7;
      _AccessSuppressionSetForMutation(&v13);
    }

    v10 = [PKPassViewUserActivityManager sharedInstance:v13];
    v11 = v10;
    if (presentedCopy)
    {
      pass = [(PKPassView *)self pass];
      [v11 startedViewingPass:pass];
    }

    else
    {
      [v10 endedViewingPass];
    }
  }
}

void __34__PKPassView_setModallyPresented___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 removeObject:?];
    v3 = v4;
  }

  if (*(a1 + 40))
  {
    [v4 addObject:?];
    v3 = v4;
  }
}

- (void)setModalShadowVisibility:(double)visibility animated:(BOOL)animated withDelay:(double)delay
{
  v5 = fmax(fmin(visibility, 1.0), 0.0);
  if (self->_modalShadowVisibility != v5)
  {
    self->_modalShadowVisibility = v5;
    [(PKPassView *)self _updateLayerShadowAnimated:animated withDelay:delay];
  }
}

- (void)setContentMode:(int64_t)mode animated:(BOOL)animated withDelay:(double)delay
{
  contentMode = self->_contentMode;
  if (contentMode != mode)
  {
    animatedCopy = animated;
    contentModeUpdateTimer = self->_contentModeUpdateTimer;
    if (contentModeUpdateTimer)
    {
      dispatch_source_cancel(contentModeUpdateTimer);
      v11 = self->_contentModeUpdateTimer;
      self->_contentModeUpdateTimer = 0;

      contentMode = self->_contentMode;
    }

    self->_priorContentMode = contentMode;
    self->_contentMode = mode;
    if (delay <= 0.0 || self->_priorContentMode < mode)
    {

      [(PKPassView *)self _applyContentMode:animatedCopy];
    }

    else
    {
      v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v13 = self->_contentModeUpdateTimer;
      self->_contentModeUpdateTimer = v12;

      v14 = self->_contentModeUpdateTimer;
      v15 = dispatch_time(0, (delay * 1000000000.0));
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
      objc_initWeak(&location, self);
      v16 = self->_contentModeUpdateTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __48__PKPassView_setContentMode_animated_withDelay___block_invoke;
      handler[3] = &unk_1E80111A8;
      objc_copyWeak(&v18, &location);
      v19 = animatedCopy;
      dispatch_source_set_event_handler(v16, handler);
      dispatch_resume(self->_contentModeUpdateTimer);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __48__PKPassView_setContentMode_animated_withDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    dispatch_source_cancel(WeakRetained[59]);
    v3 = v4[59];
    v4[59] = 0;

    [(dispatch_source_t *)v4 _applyContentMode:*(a1 + 40)];
    WeakRetained = v4;
  }
}

- (void)setPassState:(id)state
{
  v17 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (self->_passState != stateCopy)
  {
    objc_storeStrong(&self->_passState, state);
    [(PKPassFrontFaceView *)self->_frontFace setPassState:stateCopy];
    [(PKPassView *)self _updateFrontFaceSuppressedContent];
    observers = [(PKPassView *)self observers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(observers);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 passStateProvider:self didUpdatePassState:stateCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFrontFaceExpanded:(BOOL)expanded animated:(BOOL)animated
{
  expandedCopy = expanded;
  v6 = [(PKPass *)self->_pass barcodeSettings:expanded];

  if (v6)
  {
    [(PKPassView *)self layoutIfNeeded];
    [(PKPassView *)self setNeedsLayout];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKPassView_setFrontFaceExpanded_animated___block_invoke;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    [(PKPassFaceView *)self->_frontFace setViewExpanded:expandedCopy];
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:2 animations:v7 completion:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained passViewDidResize:self animated:1];
    }
  }
}

uint64_t __44__PKPassView_setFrontFaceExpanded_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 408);

  return [v2 layoutIfNeeded];
}

- (void)_enablePortals
{
  if (!self->_portalsEnabled)
  {
    self->_portalsEnabled = 1;
    layer = [(PKPassView *)self layer];
    portalLayerShadow = self->_portalLayerShadow;
    sourceLayer = [(CAPortalLayer *)portalLayerShadow sourceLayer];
    [layer insertSublayer:portalLayerShadow above:sourceLayer];

    [layer insertSublayer:self->_portalFrontLayer above:self->_portalLayerShadow];
  }
}

- (void)_disablePortals
{
  if (self->_portalsEnabled)
  {
    self->_portalsEnabled = 0;
    [(CAPortalLayer *)self->_portalLayerShadow removeFromSuperlayer];
    portalFrontLayer = self->_portalFrontLayer;

    [(CAPortalLayer *)portalFrontLayer removeFromSuperlayer];
  }
}

- (void)_endAssertingPortal
{
  if (self->_portalAnimationCount)
  {
    v2 = self->_portalAnimationCount - 1;
    self->_portalAnimationCount = v2;
    if (!v2 && self->_modalShadowVisibility <= 0.0)
    {
      [(PKPassView *)self _disablePortals];
    }
  }
}

- (void)_updateLayerShadowAnimated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  if (PKIsLowEndDevice())
  {

    [(PKPassView *)self _updateLowEndLayerShadowAnimated:animatedCopy withDelay:delay];
  }

  else
  {

    [(PKPassView *)self _updateHighEndLayerShadowAnimated:animatedCopy withDelay:delay];
  }
}

- (void)_updateHighEndLayerShadowAnimated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  v125[3] = *MEMORY[0x1E69E9840];
  [(PKPassView *)self _beginAssertingPortal];
  [(PKRemoveableAnimationTrackerStore *)self->_delayedAnimations preempt];
  v6 = PKUIPixelLength();
  modalShadowVisibility = self->_modalShadowVisibility;
  if (modalShadowVisibility > 0.0)
  {
    [(PKPassView *)self _enablePortals];
  }

  v7 = self->_portalLayerShadow;
  v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = modalShadowVisibility;
  if (modalShadowVisibility > 0.0 && !self->_filtersCreated)
  {
    self->_filtersCreated = 1;
    v9 = [MEMORY[0x1E6979378] filterWithType:{*MEMORY[0x1E6979928], modalShadowVisibility}];
    [v9 setName:@"gaussianBlur"];
    [v9 setValue:@"medium" forKey:@"inputQuality"];
    [v9 setValue:@"medium" forKey:@"inputIntermediateBitDepth"];
    [v9 setValue:&unk_1F3CC7FA0 forKey:@"inputRadius"];
    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    [v10 setName:@"colorMatrix"];
    v11 = *(MEMORY[0x1E6979280] + 48);
    v124[2] = *(MEMORY[0x1E6979280] + 32);
    v124[3] = v11;
    v124[4] = *(MEMORY[0x1E6979280] + 64);
    v12 = *(MEMORY[0x1E6979280] + 16);
    v124[0] = *MEMORY[0x1E6979280];
    v124[1] = v12;
    v13 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v124];
    [v10 setValue:v13 forKey:@"inputColorMatrix"];

    v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v14 setName:@"colorSaturate"];
    [v14 setValue:&unk_1F3CC7FB8 forKey:@"inputAmount"];
    portalLayerShadow = self->_portalLayerShadow;
    v125[0] = v9;
    v125[1] = v14;
    v125[2] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
    [(CAPortalLayer *)portalLayerShadow setFilters:v16];

    v8 = modalShadowVisibility;
  }

  v17 = v8 > 0.0;
  filtersCreated = self->_filtersCreated;
  [(CAPortalLayer *)v7 opacity];
  v20 = v19;
  v21 = [(CAPortalLayer *)v7 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v21 doubleValue];
  v23 = v22;

  v24 = 1.0 - modalShadowVisibility;
  if (v17)
  {
    v25 = v24 + modalShadowVisibility * 0.860000014;
    v105 = v25;
    v26 = vcvt_f32_f64(vmulq_n_f64(xmmword_1BE116F70, modalShadowVisibility));
    v27 = vcvt_f32_f64(vmulq_n_f64(xmmword_1BE116F80, modalShadowVisibility));
    v28 = modalShadowVisibility * -0.165000007;
    v29 = v24 + modalShadowVisibility * 0.470999986;
    v101 = v29;
    v30 = v24 + modalShadowVisibility * 0.968999982;
    v100 = v30;
    v31 = modalShadowVisibility + v24;
    v32 = vrev64_s32(v27);
    v33 = vext_s8(v26, v27, 4uLL);
    v103 = *v27.i32;
    v104 = v26;
    v34 = vdup_lane_s32(v26, 0);
    v102 = v28;
    *v34.i32 = v28;
    v97 = v34;
    v98 = v33;
    v99 = v32;
    *v32.i32 = v31;
    v96 = *&v27.i32[1];
    v95 = *v27.i32;
    v92 = v27.i32[0];
    v93 = v32;
    v94 = v27;
  }

  else
  {
    v105 = *MEMORY[0x1E6979280];
    v104 = *(MEMORY[0x1E6979280] + 4);
    v94 = *(MEMORY[0x1E6979280] + 12);
    v102 = *(MEMORY[0x1E6979280] + 20);
    v101 = *(MEMORY[0x1E6979280] + 24);
    v98 = *(MEMORY[0x1E6979280] + 28);
    v96 = *(MEMORY[0x1E6979280] + 36);
    v97 = *(MEMORY[0x1E6979280] + 40);
    v100 = *(MEMORY[0x1E6979280] + 48);
    v103 = *(MEMORY[0x1E6979280] + 52);
    v99 = *(MEMORY[0x1E6979280] + 56);
    v95 = *(MEMORY[0x1E6979280] + 64);
    v92 = *(MEMORY[0x1E6979280] + 68);
    v93 = *(MEMORY[0x1E6979280] + 72);
  }

  v35 = [(CAPortalLayer *)v7 valueForKeyPath:@"filters.colorMatrix.inputColorMatrix"];
  v36 = v35;
  memset(v124, 0, sizeof(v124));
  if (v35)
  {
    [v35 CAColorMatrixValue];
  }

  else
  {
    v37 = *(MEMORY[0x1E6979280] + 48);
    v124[2] = *(MEMORY[0x1E6979280] + 32);
    v124[3] = v37;
    v124[4] = *(MEMORY[0x1E6979280] + 64);
    v38 = *(MEMORY[0x1E6979280] + 16);
    v124[0] = *MEMORY[0x1E6979280];
    v124[1] = v38;
  }

  v39 = [(CAPortalLayer *)v7 valueForKeyPath:@"filters.colorSaturate.inputAmount"];
  v40 = v39;
  if (v39)
  {
    [v39 doubleValue];
    v42 = v41;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = modalShadowVisibility * 0.75;
  v44 = (v6 + 13.0) * modalShadowVisibility;
  v45 = modalShadowVisibility * 1.32;
  v46 = v24 + modalShadowVisibility * 1.32;
  if (animatedCopy)
  {
    v47 = v20;
    v108 = 0;
    v48 = v43 == v20;
    v49 = 0;
    v50 = 0.0;
    if (!v48)
    {
      v51 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v51 pkui_updateForAdditiveAnimationFromScalar:v47 toScalar:v43];
      [v109 addObject:v51];
      fromValue = [v51 fromValue];
      [fromValue doubleValue];
      v49 = v53;

      [v51 duration];
      v55 = v54;

      v50 = fmax(v55, 0.0);
    }

    v56 = *(MEMORY[0x1E6979280] + 48);
    *&location[32] = *(MEMORY[0x1E6979280] + 32);
    v122 = v56;
    v123 = *(MEMORY[0x1E6979280] + 64);
    v57 = *(MEMORY[0x1E6979280] + 16);
    *location = *MEMORY[0x1E6979280];
    *&location[16] = v57;
    if (!filtersCreated)
    {
      goto LABEL_34;
    }

    if (v44 == v23)
    {
      v108 = 0;
    }

    else
    {
      v58 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v58 pkui_updateForAdditiveAnimationFromScalar:v23 toScalar:v44];
      [v109 addObject:v58];
      fromValue2 = [v58 fromValue];
      [fromValue2 doubleValue];
      v108 = v60;

      [v58 duration];
      v62 = v61;

      v50 = fmax(v62, v50);
    }

    *v64.f32 = vdup_lane_s32(v104, 0);
    *&v64.u32[2] = vext_s8(v104, v94, 4uLL);
    v65.i32[0] = vdup_lane_s32(v94, 1).u32[0];
    v65.i32[3] = vdup_lane_s32(*&v98, 0).i32[1];
    v66.i32[0] = vdup_lane_s32(v98, 1).u32[0];
    *&v66.u32[2] = v97;
    v64.f32[0] = v105;
    v65.f32[1] = v102;
    v65.f32[2] = v101;
    v66.f32[1] = v96;
    v67.i64[0] = __PAIR64__(LODWORD(v103), LODWORD(v100));
    v67.i64[1] = v99;
    if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(v64, v124[0]), vceqq_f32(v65, v124[1])), vuzp1q_s16(vceqq_f32(v66, v124[2]), vceqq_f32(v67, v124[3])))) & 1) != 0 && v95 == v124[4].f32[0] && (v68 = COERCE_DOUBLE(vceq_f32(v93, *&v124[4].u32[2])), (LOBYTE(v68)) && (BYTE4(v68))
    {
      LODWORD(v68) = v92;
    }

    else
    {
      v69 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.colorMatrix.inputColorMatrix"];
      *(v119 + 4) = vsub_f32(*&v124[0].i32[1], v104);
      *(v119 + 12) = vsub_f32(*(v124 | 0xC), v94);
      *v119 = v124[0].f32[0] - v105;
      *(&v119[1] + 1) = v124[1].f32[1] - v102;
      *(&v119[1] + 12) = vsub_f32(*(&v124[1].u64[1] + 4), v98);
      *(&v119[1] + 2) = v124[1].f32[2] - v101;
      *(&v119[2] + 1) = v124[2].f32[1] - v96;
      *(&v119[2] + 1) = vsub_f32(*&v124[2].u32[2], v97);
      v70.i64[0] = v99;
      v70.i32[3] = vextq_s8(*(v124 + 56), *(v124 + 56), 8uLL).i32[1];
      v70.f32[2] = v95;
      *v120 = v124[3].f32[0] - v100;
      *(v120 + 1) = v124[3].f32[1] - v103;
      *(v120 + 8) = vsubq_f32(*(&v124[3] + 8), v70);
      *(&v120[1] + 1) = vsub_f32(*&v124[4].u32[2], v93);
      v71 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v119];
      [v69 setFromValue:v71];

      memset(v120, 0, sizeof(v120));
      memset(v119, 0, sizeof(v119));
      v72 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v119];
      [v69 setToValue:v72];

      [v109 addObject:v69];
      fromValue3 = [v69 fromValue];
      v74 = fromValue3;
      if (fromValue3)
      {
        [fromValue3 CAColorMatrixValue];
      }

      else
      {
        memset(v120, 0, sizeof(v120));
        memset(v119, 0, sizeof(v119));
      }

      *&location[32] = v119[2];
      v122 = v120[0];
      v123 = v120[1];
      *location = v119[0];
      *&location[16] = v119[1];

      [v69 duration];
      v76 = v75;

      v50 = fmax(v76, v50);
    }

    if (v46 == v42)
    {
LABEL_34:
      v80 = 0;
    }

    else
    {
      v77 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:{@"filters.colorSaturate.inputAmount", v68}];
      [v77 pkui_updateForAdditiveAnimationFromScalar:v42 toScalar:v46];
      [v109 addObject:v77];
      fromValue4 = [v77 fromValue];
      [fromValue4 doubleValue];
      v80 = v79;

      [v77 duration];
      v82 = v81;

      v50 = fmax(v82, v50);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPassView__updateHighEndLayerShadowAnimated_withDelay___block_invoke;
    aBlock[3] = &__block_descriptor_137_e38_v24__0__CALayer_8__CAAnimationGroup_16l;
    v118 = filtersCreated;
    aBlock[4] = v49;
    aBlock[5] = v108;
    v114 = *&location[16];
    v115 = *&location[32];
    v116 = v122;
    v117 = v123;
    v113 = *location;
    aBlock[6] = v80;
    v63 = _Block_copy(aBlock);
  }

  else
  {
    v63 = 0;
    v50 = 0.0;
  }

  *&v45 = v43;
  [(CAPortalLayer *)v7 setOpacity:v45];
  if (filtersCreated)
  {
    v83 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
    [(CAPortalLayer *)v7 setValue:v83 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    *&v84 = v104;
    *(&v84 + 1) = v94;
    *&location[4] = v84;
    *location = v105;
    *&location[20] = v102;
    *&location[28] = v98;
    *&location[24] = v101;
    *&location[36] = v96;
    *&location[40] = v97;
    *&v122 = __PAIR64__(LODWORD(v103), LODWORD(v100));
    *(&v122 + 1) = v99;
    *&v123 = __PAIR64__(v92, LODWORD(v95));
    *(&v123 + 1) = v93;
    v85 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:location];
    [(CAPortalLayer *)v7 setValue:v85 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];

    v86 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
    [(CAPortalLayer *)v7 setValue:v86 forKeyPath:@"filters.colorSaturate.inputAmount"];
  }

  if ([v109 count])
  {
    animation = [MEMORY[0x1E6979308] animation];
    [animation setFillMode:*MEMORY[0x1E69797E0]];
    [animation setBeginTimeMode:*MEMORY[0x1E69795C0]];
    [animation setBeginTime:delay];
    [animation setDuration:v50 + delay];
    [animation setAnimations:v109];
    if (!self->_delayedAnimations)
    {
      v88 = objc_alloc_init(MEMORY[0x1E69B9148]);
      delayedAnimations = self->_delayedAnimations;
      self->_delayedAnimations = v88;
    }

    objc_initWeak(location, self);
    v90 = MEMORY[0x1E69B9140];
    v91 = self->_delayedAnimations;
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __58__PKPassView__updateHighEndLayerShadowAnimated_withDelay___block_invoke_2;
    v110[3] = &unk_1E8011180;
    objc_copyWeak(&v111, location);

    objc_destroyWeak(&v111);
    objc_destroyWeak(location);
  }

  else
  {
    [(PKPassView *)self _endAssertingPortal];
  }
}

void __58__PKPassView__updateHighEndLayerShadowAnimated_withDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 opacity];
  v5 = *(a1 + 32) + v4;
  *&v5 = v5;
  [v3 setOpacity:v5];
  if (*(a1 + 136) == 1)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [v3 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v7 doubleValue];
    v9 = [v6 numberWithDouble:v8 + *(a1 + 40)];
    [v3 setValue:v9 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v10 = [v3 valueForKeyPath:@"filters.colorMatrix.inputColorMatrix"];
    v11 = v10;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    if (v10)
    {
      [v10 CAColorMatrixValue];
    }

    else
    {
      v12 = *(MEMORY[0x1E6979280] + 48);
      v33 = *(MEMORY[0x1E6979280] + 32);
      v34 = v12;
      v35 = *(MEMORY[0x1E6979280] + 64);
      v13 = *(MEMORY[0x1E6979280] + 16);
      v31 = *MEMORY[0x1E6979280];
      v32 = v13;
    }

    v14 = MEMORY[0x1E696B098];
    v27 = *(a1 + 88);
    v28 = *(a1 + 104);
    v29 = *(a1 + 120);
    v25 = *(a1 + 56);
    v26 = *(a1 + 72);
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v20 = v31;
    v21 = v32;
    CAColorMatrixConcat();
    v15 = [v14 valueWithCAColorMatrix:{v30, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29}];
    [v3 setValue:v15 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];

    v16 = [v3 valueForKeyPath:@"filters.colorSaturate.inputAmount"];
    v17 = v16;
    if (v16)
    {
      [v16 doubleValue];
    }

    else
    {
      v18 = 1.0;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18 + *(a1 + 48)];
    [v3 setValue:v19 forKeyPath:@"filters.colorSaturate.inputAmount"];
  }
}

void __58__PKPassView__updateHighEndLayerShadowAnimated_withDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endAssertingPortal];
    WeakRetained = v2;
  }
}

- (void)passcodeLockManager:(id)manager didReceivePasscodeSet:(BOOL)set
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPassView_passcodeLockManager_didReceivePasscodeSet___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__PKPassView_passcodeLockManager_didReceivePasscodeSet___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateFrontFaceSuppressedContent];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (void)passFaceViewExpandButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passViewExpandButtonTapped:self];
  }
}

- (void)_applyContentMode:(BOOL)mode
{
  v4 = objc_autoreleasePoolPush();
  if ([(PKPass *)self->_pass passType]== PKPassTypeSecureElement)
  {
    pass = self->_pass;
  }

  else
  {
    pass = 0;
  }

  v6 = pass;
  [(PKPassFaceView *)self->_frontFace setBackgroundMode:[(PKPassView *)self _frontFaceBackgroundModeForContentMode]];
  [(PKPassFaceView *)self->_frontFace setVisibleRegions:[(PKPassView *)self _regionsForCurrentModes]];
  dynamicLayerConfiguration = [(PKPass *)v6 dynamicLayerConfiguration];

  contentMode = self->_contentMode;
  v9 = contentMode == 5;
  v10 = contentMode > 2;
  if (dynamicLayerConfiguration)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [(PKPassFaceView *)self->_frontFace setLiveMotionEnabled:v11];
  if (self->_contentMode < 2 || self->_contentLoaded)
  {
    goto LABEL_16;
  }

  if (([(PKPass *)self->_pass isContentLoaded]& 1) != 0)
  {
    self->_contentLoaded = 1;
LABEL_15:
    [(PKPassFaceView *)self->_frontFace createContentViewsWithFade:0];
    goto LABEL_16;
  }

  if (self->_contentMode > 3)
  {
    self->_contentLoaded = 1;
    [(PKPass *)self->_pass loadContentSync];
    goto LABEL_15;
  }

  if (!self->_contentLoading)
  {
    self->_contentLoading = 1;
    objc_initWeak(&location, self);
    v12 = self->_pass;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __32__PKPassView__applyContentMode___block_invoke;
    v18 = &unk_1E8010998;
    objc_copyWeak(&v19, &location);
    [(PKPass *)v12 loadContentAsyncWithCompletion:&v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

LABEL_16:
  location = 0;
  v13 = [(PKPassView *)self _visibleFaceShouldClipForCurrentViewMode:&location, v15, v16, v17, v18];
  frontFace = self->_frontFace;
  if (v13)
  {
    [(PKPassFaceView *)frontFace setClipsContent:1];
    [(PKPassFaceView *)self->_frontFace setClippedContentHeight:*&location];
  }

  else
  {
    [(PKPassFaceView *)frontFace setClipsContent:0];
  }

  [(PKPassView *)self setNeedsLayout];

  objc_autoreleasePoolPop(v4);
}

void __32__PKPassView__applyContentMode___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PKPassView__applyContentMode___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __32__PKPassView__applyContentMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 464) = 0;
    if ((*(WeakRetained + 465) & 1) == 0)
    {
      v4 = WeakRetained;
      v3 = [WeakRetained[68] isContentLoaded];
      v2 = v4;
      if (v3)
      {
        *(v4 + 465) = 1;
        [v4[51] createContentViewsWithFade:1];
        v2 = v4;
      }
    }
  }
}

- (BOOL)_visibleFaceShouldClipForCurrentViewMode:(double *)mode
{
  contentMode = self->_contentMode;
  if (contentMode == 2)
  {
    v7 = 80.0;
  }

  else
  {
    if (contentMode != 1)
    {
      return 0;
    }

    [(PKPass *)self->_pass style];
    PKPassFaceSliverHeight();
    v7 = v6;
  }

  [(PKPassFrontFaceView *)self->_frontFace contentSize];
  if (v8 <= v7)
  {
    return 0;
  }

  if (mode)
  {
    *mode = v7;
  }

  return 1;
}

- (PKPassViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end