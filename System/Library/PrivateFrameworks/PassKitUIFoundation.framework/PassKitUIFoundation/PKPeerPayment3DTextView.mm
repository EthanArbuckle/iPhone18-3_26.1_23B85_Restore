@interface PKPeerPayment3DTextView
- (BOOL)setText:(id)text;
- (PKPeerPayment3DTextView)initWithFrame:(CGRect)frame renderStyle:(unint64_t)style usedForSnapshotting:(BOOL)snapshotting;
- (float32x2_t)_fakeAnimationRollPitchWithElapsedTime:(uint64_t)time;
- (id)generatedSnapshot;
- (void)dealloc;
- (void)didBecomeActive;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadCharactersAndLayout;
- (void)performPostRender:(id)render;
- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time;
- (void)renderer:(id)renderer updateAtTime:(double)time;
- (void)setMotionEffectEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)updateSceneUnits;
- (void)willResignActive;
@end

@implementation PKPeerPayment3DTextView

- (PKPeerPayment3DTextView)initWithFrame:(CGRect)frame renderStyle:(unint64_t)style usedForSnapshotting:(BOOL)snapshotting
{
  v29[1] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PKPeerPayment3DTextView;
  v7 = [(PKPeerPayment3DTextView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_dynamicRollPitchMix = 0.0;
    v7->_usedForSnapshotting = snapshotting;
    v28 = *MEMORY[0x277CDBBE0];
    v29[0] = &unk_286FD0F50;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v10 = objc_alloc(MEMORY[0x277CDBB20]);
    [(PKPeerPayment3DTextView *)v8 bounds];
    v11 = [v10 initWithFrame:v9 options:?];
    sceneView = v8->_sceneView;
    v8->_sceneView = v11;

    [(SCNView *)v8->_sceneView setAntialiasingMode:2];
    v13 = v8->_sceneView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SCNView *)v13 setBackgroundColor:clearColor];

    [(SCNView *)v8->_sceneView setDelegate:v8];
    v8->_renderStyle = style;
    v15 = +[PKPeerPayment3DStore sharedInstance];
    _3DStore = v8->_3DStore;
    v8->_3DStore = v15;

    [(SCNView *)v8->_sceneView setOpaque:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_willResignActive name:*MEMORY[0x277D76768] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v8 selector:sel_willResignActive name:*MEMORY[0x277CCA0D8] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v8 selector:sel_didBecomeActive name:*MEMORY[0x277CCA0C0] object:0];

    objc_initWeak(&location, v8);
    v21 = v8->_3DStore;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__PKPeerPayment3DTextView_initWithFrame_renderStyle_usedForSnapshotting___block_invoke;
    v24[3] = &unk_2799FFB48;
    objc_copyWeak(&v25, &location);
    [(PKPeerPayment3DStore *)v21 newSceneWithCompletion:v24 synchronously:v8->_usedForSnapshotting];
    [(PKPeerPayment3DTextView *)v8 addSubview:v8->_sceneView];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

void __73__PKPeerPayment3DTextView_initWithFrame_renderStyle_usedForSnapshotting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__PKPeerPayment3DTextView_initWithFrame_renderStyle_usedForSnapshotting___block_invoke_2;
    v9[3] = &unk_2799FFAF8;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v3;
    v5 = MEMORY[0x25F8AAFE0](v9);
    v6 = v5;
    if (WeakRetained[483] == 1)
    {
      v5[2](v5);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__PKPeerPayment3DTextView_initWithFrame_renderStyle_usedForSnapshotting___block_invoke_3;
      block[3] = &unk_2799FFB20;
      v8 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(&v11);
  }
}

void __73__PKPeerPayment3DTextView_initWithFrame_renderStyle_usedForSnapshotting___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 52, *(a1 + 32));
    [v3[51] setScene:v3[52]];
    [v3[51] setDelegate:v3];
    if (*(v3 + 480) == 1)
    {
      [v3[51] setPlaying:1];
    }

    [v3 updateSceneUnits];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  if (self->_scene)
  {
    [(PKPeerPayment3DStore *)self->_3DStore relinquishScene:?];
  }

  v3.receiver = self;
  v3.super_class = PKPeerPayment3DTextView;
  [(PKPeerPayment3DTextView *)&v3 dealloc];
}

- (void)updateSceneUnits
{
  sceneWidthUnits = self->_sceneWidthUnits;
  [(SCNView *)self->_sceneView bounds];
  v5 = v4;
  [(SCNView *)self->_sceneView bounds];
  v7 = 8.0;
  if (v6 <= v5)
  {
    v7 = v5 * 8.0 / v6;
  }

  self->_sceneWidthUnits = v7;
  self->_sceneHeightUnits = v6 * v7 / v5;
  if (sceneWidthUnits != self->_sceneWidthUnits)
  {

    [(PKPeerPayment3DTextView *)self layoutText];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPeerPayment3DTextView;
  [(PKPeerPayment3DTextView *)&v4 layoutSubviews];
  sceneView = self->_sceneView;
  [(PKPeerPayment3DTextView *)self bounds];
  [(SCNView *)sceneView setFrame:?];
  [(PKPeerPayment3DTextView *)self updateSceneUnits];
}

- (BOOL)setText:(id)text
{
  textCopy = text;
  supportedCharacterSet = [objc_opt_class() supportedCharacterSet];
  invertedSet = [supportedCharacterSet invertedSet];
  v7 = [textCopy rangeOfCharacterFromSet:invertedSet];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    text = self->_text;
    if (!text || ![(NSString *)text isEqualToString:textCopy])
    {
      v9 = [textCopy copy];
      v10 = self->_text;
      self->_text = v9;

      [(PKPeerPayment3DTextView *)self setIsAccessibilityElement:1];
      [(PKPeerPayment3DTextView *)self setAccessibilityLabel:self->_text];
      [(PKPeerPayment3DTextView *)self loadCharactersAndLayout];
    }
  }

  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)loadCharactersAndLayout
{
  [(NSMutableArray *)self->_charactersToDraw removeAllObjects];
  objc_initWeak(&location, self);
  _3DStore = self->_3DStore;
  text = self->_text;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PKPeerPayment3DTextView_loadCharactersAndLayout__block_invoke;
  v5[3] = &unk_2799FFB70;
  objc_copyWeak(&v6, &location);
  [(PKPeerPayment3DStore *)_3DStore charactersForText:text completion:v5 synchronously:self->_usedForSnapshotting];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__PKPeerPayment3DTextView_loadCharactersAndLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PKPeerPayment3DTextView_loadCharactersAndLayout__block_invoke_2;
    v9[3] = &unk_2799FFAF8;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v3;
    v5 = MEMORY[0x25F8AAFE0](v9);
    v6 = v5;
    if (WeakRetained[483] == 1)
    {
      v5[2](v5);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__PKPeerPayment3DTextView_loadCharactersAndLayout__block_invoke_3;
      block[3] = &unk_2799FFB20;
      v8 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(&v11);
  }
}

void __50__PKPeerPayment3DTextView_loadCharactersAndLayout__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained layoutText];
    [v5[52] resetScene];
    v3 = [*(a1 + 32) mutableCopy];
    v4 = v5[64];
    v5[64] = v3;

    WeakRetained = v5;
  }
}

- (void)renderer:(id)renderer updateAtTime:(double)time
{
  selfCopy = self;
  v94 = *MEMORY[0x277D85DE8];
  scene = self->_scene;
  if (scene)
  {
    v6 = [(PKPeerPayment3DScene *)scene textContainerNode:renderer];
    v7 = [MEMORY[0x277D74300] pk_peerPaymentChiseledCashFontOfSize:8.92];
    if ([(NSMutableArray *)selfCopy->_charactersToDraw count])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v81 = v6;
      v10 = v7;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v80 = selfCopy;
      v11 = [(NSMutableArray *)selfCopy->_charactersToDraw copy];
      v12 = [v11 countByEnumeratingWithState:&v88 objects:v93 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v89;
        v15 = 0.0;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v89 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v88 + 1) + 8 * i);
            character = [v17 character];
            v19 = [character isEqualToString:@" "];

            if ((v19 & 1) == 0)
            {
              character2 = [v17 character];
              v21 = [character2 characterAtIndex:0];

              characters = v21;
              glyphs = 0;
              CTFontGetGlyphsForCharacters(v10, &characters, &glyphs, 1);
              BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v10, kCTFontOrientationDefault, &glyphs, 0, 1);
              x = BoundingRectsForGlyphs.origin.x;
              y = BoundingRectsForGlyphs.origin.y;
              width = BoundingRectsForGlyphs.size.width;
              height = BoundingRectsForGlyphs.size.height;
              DWORD2(v83[0]) = 0;
              *&v83[0] = 0;
              v85 = 0;
              v84 = 0;
              node = [v17 node];
              [v81 addChildNode:node];
              geometry = [node geometry];
              textMaterial = [(PKPeerPayment3DScene *)v80->_scene textMaterial];
              v92 = textMaterial;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
              [geometry setMaterials:v29];

              [node getBoundingBoxMin:v83 max:&v84];
              v30 = (*&v84 + *v83) * -0.5;
              v96.origin.x = x;
              v96.origin.y = y;
              v96.size.width = width;
              v96.size.height = height;
              v31 = v15 + CGRectGetMidX(v96) + v30;
              *&v31 = v31;
              [node setPosition:{v31, 0.0, 0.0}];
              v15 = v15 + CTFontGetAdvancesForGlyphs(v10, kCTFontOrientationDefault, &glyphs, 0, 1);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v88 objects:v93 count:16];
        }

        while (v13);
      }

      CFRelease(v10);
      selfCopy = v80;
      [(NSMutableArray *)v80->_charactersToDraw removeAllObjects];
      if (v80->_framesFullyRendered)
      {
        v9 = 0;
        v6 = v81;
      }

      else
      {
        v6 = v81;
        if (v80->_snapshotRequested)
        {
          v9 = 1;
        }

        else
        {
          if (!v80->_usedForSnapshotting)
          {
            goto LABEL_33;
          }

          v9 = 1;
        }
      }
    }

    if (selfCopy->_layoutRequested)
    {
      childNodes = [v6 childNodes];
      v33 = [childNodes count];

      if (v33)
      {
        [(SCNView *)selfCopy->_sceneView bounds];
        v35 = v34;
        v37 = v36;
        DWORD2(v83[0]) = 0;
        *&v83[0] = 0;
        v85 = 0;
        v84 = 0;
        [v6 getBoundingBoxMin:v83 max:&v84];
        v38 = (*&v84 - *v83);
        v39 = *(&v84 + 1) + -6.87682009;
        sceneHeightUnits = selfCopy->_sceneHeightUnits;
        v41 = 49.0 / v37 * sceneHeightUnits;
        v42 = 0.0 / v37 * sceneHeightUnits;
        v43 = (v35 + -28.0) / v35 * selfCopy->_sceneWidthUnits / v38;
        v44 = v41 / v39;
        if (v43 >= v44)
        {
          v43 = v44;
        }

        v45 = -(*v83 + v38 * 0.5) * v43;
        *&v45 = v45;
        v46 = v42 + -(*(&v84 + 1) - v39 * 0.5) * v43;
        *&v46 = v46;
        v47 = v43;
        [v6 setPosition:{v45, v46, 0.0}];
        *&v48 = v47;
        *&v49 = v47;
        *&v50 = v47;
        [v6 setScale:{v48, v49, v50}];
        selfCopy->_layoutRequested = 0;
        if (!selfCopy->_framesFullyRendered)
        {
LABEL_33:
          if (!selfCopy->_snapshotRequested && !selfCopy->_usedForSnapshotting)
          {
            goto LABEL_52;
          }
        }
      }

      else if (v9)
      {
        goto LABEL_33;
      }
    }

    else if (v9)
    {
      goto LABEL_33;
    }

    if (selfCopy->_scene)
    {
      childNodes2 = [v6 childNodes];
      v52 = [childNodes2 count];

      if (v52)
      {
        v53 = v7;
        if (!selfCopy->_liveMotionEnabled && selfCopy->_animationDuration == 0.0 || selfCopy->_snapshotRequested || selfCopy->_usedForSnapshotting || selfCopy->_liveMotionEnabled && selfCopy->_willAnimate)
        {
          +[PKPeerPayment3DScene staticRollPitch];
          v55 = v54;
          [PKPeerPayment3DScene rotationMatrixForRollPitch:?];
          v60 = 0;
          v83[0] = v56;
          v61 = 1;
        }

        else
        {
          animationDuration = selfCopy->_animationDuration;
          +[PKPeerPayment3DScene staticRollPitch];
          v55 = v75;
          if (animationDuration > 0.0)
          {
            v76 = fmin(fmax(selfCopy->_dynamicRollPitchMix, 0.0), 1.0);
            v77 = v76 * v76 * (v76 * -2.0 + 3.0);
            [(PKPeerPayment3DScene *)selfCopy->_scene currentRollPitch];
            v78 = v77;
            v62 = COERCE_DOUBLE(vmla_n_f32(v55, vsub_f32(v79, v55), v78));
            [PKPeerPayment3DScene rotationMatrixForRollPitch:v62];
            v61 = 0;
            v83[0] = v56;
            v60 = 1;
LABEL_43:
            v83[1] = v57;
            v83[2] = v58;
            v83[3] = v59;
            v82 = vaddq_f32(v59, vmlaq_f32(vmlaq_f32(vmulq_f32(v56, 0), 0, v57), vdupq_n_s32(0x428C0000u), v58));
            lightNode = [(PKPeerPayment3DScene *)selfCopy->_scene lightNode];
            *&v64 = vneg_f32(*v82.f32);
            LODWORD(v65) = v82.i32[2];
            [lightNode setPosition:{v64, COERCE_DOUBLE(__PAIR64__(v82.u32[1], HIDWORD(v64))), v65}];

            v66 = [MEMORY[0x277CBEA90] dataWithBytes:v83 length:64];
            v67 = selfCopy;
            textMaterial2 = [(PKPeerPayment3DScene *)selfCopy->_scene textMaterial];
            [textMaterial2 setValue:v66 forKey:@"rotationMatrix"];
            if (v61)
            {
              v69 = *&v55;
            }

            else
            {
              if (!v60)
              {
                [(PKPeerPayment3DScene *)v67->_scene currentSkew];
                goto LABEL_49;
              }

              v69 = v62;
            }

            [PKPeerPayment3DScene skewForRollPitch:v69];
LABEL_49:
            v84 = v70;
            v71 = [MEMORY[0x277CBEA90] dataWithBytes:&v84 length:8];
            [textMaterial2 setValue:v71 forKey:@"skew"];
            framesFullyRendered = v67->_framesFullyRendered;
            if (framesFullyRendered <= 2)
            {
              v67->_framesFullyRendered = framesFullyRendered + 1;
            }

            v7 = v53;
            goto LABEL_52;
          }

          [(PKPeerPayment3DScene *)selfCopy->_scene currentRotationMatrix];
          v61 = 0;
          v60 = 0;
          v83[0] = v56;
        }

        v62 = 0.0;
        goto LABEL_43;
      }
    }

LABEL_52:
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (id)generatedSnapshot
{
  self->_snapshotRequested = 1;
  result = [(SCNView *)self->_sceneView snapshot];
  self->_snapshotRequested = 0;
  return result;
}

- (void)setMotionEffectEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_liveMotionEnabled != enabled)
  {
    self->_liveMotionEnabled = enabled;
    if (animated)
    {
      self->_willAnimate = 1;
      objc_initWeak(&location, self);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __59__PKPeerPayment3DTextView_setMotionEffectEnabled_animated___block_invoke;
      v5[3] = &unk_2799FFB98;
      objc_copyWeak(&v6, &location);
      [(PKPeerPayment3DTextView *)self performPostRender:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __59__PKPeerPayment3DTextView_setMotionEffectEnabled_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[57] = WeakRetained[59];
    WeakRetained[58] = 0x3FE0000000000000;
    *(WeakRetained + 481) = 0;
  }
}

- (void)willResignActive
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__PKPeerPayment3DTextView_willResignActive__block_invoke;
  v2[3] = &unk_2799FFB98;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __43__PKPeerPayment3DTextView_willResignActive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[52])
  {
    v2 = WeakRetained;
    [WeakRetained[51] setPlaying:0];
    [v2[62] sceneDidBecomeInactive:v2[52]];
    WeakRetained = v2;
  }
}

- (void)didBecomeActive
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__PKPeerPayment3DTextView_didBecomeActive__block_invoke;
  v2[3] = &unk_2799FFB98;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __42__PKPeerPayment3DTextView_didBecomeActive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[52] && *(WeakRetained + 480) == 1)
  {
    v2 = WeakRetained;
    [WeakRetained[51] setPlaying:1];
    [v2[62] sceneDidBecomeActive:v2[52]];
    WeakRetained = v2;
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKPeerPayment3DTextView;
  [(PKPeerPayment3DTextView *)&v4 didMoveToWindow];
  window = [(PKPeerPayment3DTextView *)self window];

  if (window)
  {
    if (self->_scene)
    {
      if (self->_liveMotionEnabled)
      {
        [(SCNView *)self->_sceneView setPlaying:1];
        [(PKPeerPayment3DStore *)self->_3DStore sceneDidBecomeActive:self->_scene];
      }
    }
  }

  else
  {
    [(SCNView *)self->_sceneView setPlaying:0];
    if (self->_scene)
    {
      [(PKPeerPayment3DStore *)self->_3DStore sceneDidBecomeInactive:?];
    }
  }
}

- (float32x2_t)_fakeAnimationRollPitchWithElapsedTime:(uint64_t)time
{
  v2 = a2;
  v3 = *(time + 464);
  v4.f32[0] = v2;
  v20 = v2;
  v4.f32[1] = (v2 - (v3 + -1.0)) / (v3 - (v3 + -1.0));
  v5 = vmaxnm_f32(v4, 0);
  __asm { FMOV            V1.2S, #1.0 }

  v11 = vminnm_f32(v5, _D1);
  __asm { FMOV            V3.2S, #3.0 }

  v13 = vmul_f32(vmul_f32(v11, v11), vmla_f32(_D3, 0xC0000000C0000000, v11));
  _D1.f32[0] = vsub_f32(v13, vdup_lane_s32(v13, 1)).f32[0];
  v13.f32[0] = ((v2 / v3) + (v2 / v3)) * 3.14159265;
  _D1.f32[0] = _D1.f32[0] * 0.628318531;
  v21 = _D1.f32[0];
  v14 = __sincosf_stret(v13.f32[0]);
  +[PKPeerPayment3DScene staticRollPitch];
  v15 = fminf(fmaxf((v20 - (v3 + -0.5)) / (v3 - (v3 + -0.5)), 0.0), 1.0);
  v16 = (v15 * v15) * ((v15 * -2.0) + 3.0);
  v17 = vmul_n_f32(__PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v21);
  return vmla_n_f32(v17, vsub_f32(v18, v17), v16);
}

- (void)performPostRender:(id)render
{
  renderCopy = render;
  if (renderCopy)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PKPeerPayment3DTextView_performPostRender___block_invoke;
    block[3] = &unk_2799FFBC0;
    objc_copyWeak(&v7, &location);
    v6 = renderCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __45__PKPeerPayment3DTextView_performPostRender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained[55];
    if (!v3)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v5 = v7[55];
      v7[55] = v4;

      v3 = v7[55];
    }

    v6 = MEMORY[0x25F8AAFE0](*(a1 + 32));
    [v3 addObject:v6];

    WeakRetained = v7;
  }
}

- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time
{
  rendererCopy = renderer;
  sceneCopy = scene;
  self->_lastRenderTime = time;
  animationDuration = self->_animationDuration;
  if (animationDuration > 0.0)
  {
    v11 = (time - self->_startAnimationTime) / animationDuration;
    v12 = fmax(1.0 - v11, 0.0);
    v13 = fmin(v11, 1.0);
    if (!self->_liveMotionEnabled)
    {
      v13 = v12;
    }

    self->_dynamicRollPitchMix = v13;
    if (v13 == 1.0 || v13 == 0.0)
    {
      self->_animationDuration = 0.0;
    }
  }

  if (self->_performHandlers && self->_framesFullyRendered >= 3)
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__PKPeerPayment3DTextView_renderer_didRenderScene_atTime___block_invoke;
    v14[3] = &unk_2799FFB98;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x277D85CD0], v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __58__PKPeerPayment3DTextView_renderer_didRenderScene_atTime___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(WeakRetained + 55);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v10 + 1) + 8 * v7) + 16))(*(*(&v10 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v8 = v2[55];
    v2[55] = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end