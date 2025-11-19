@interface SLHighlightDisambiguationPillView
- (SLHighlightDisambiguationPillView)initWithAttribution:(id)a3;
- (id)_contentProviderForCurrentConfiguration;
- (id)_layoutConstraintsForIndividualContact;
- (id)_loadButtonWithImageName:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_loadBlurView;
- (void)_loadDisambiguationPillSlotView;
- (void)_loadTranscriptButton;
- (void)_macroPillTapped;
- (void)_presentTranscript;
- (void)_transcriptButtonTapped:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)serviceProxyDidConnect:(id)a3;
- (void)serviceProxyDidDisconnect:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation SLHighlightDisambiguationPillView

- (SLHighlightDisambiguationPillView)initWithAttribution:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SLHighlightDisambiguationPillView;
  v6 = [(SLHighlightDisambiguationPillView *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribution, a3);
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel__macroPillTapped];
    [(SLHighlightDisambiguationPillView *)v7 addGestureRecognizer:v8];

    [(SLHighlightDisambiguationPillView *)v7 _loadDisambiguationPillSlotView];
    [(SLHighlightDisambiguationPillView *)v7 _loadTranscriptButton];
    v9 = [(UIButton *)v7->_transcriptButton trailingAnchor];
    v10 = [(SLHighlightDisambiguationPillView *)v7 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-15.0];
    transcriptButtonConstraint = v7->_transcriptButtonConstraint;
    v7->_transcriptButtonConstraint = v11;

    v13 = MEMORY[0x277CCAAD0];
    v14 = [(SLHighlightDisambiguationPillView *)v7 _layoutConstraintsForIndividualContact];
    [v13 activateConstraints:v14];

    [(SLHighlightDisambiguationPillView *)v7 _loadBlurView];
    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 == 1)
    {
      v17 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v7];
      [(SLHighlightDisambiguationPillView *)v7 setPointerInteraction:v17];

      v18 = [(SLHighlightDisambiguationPillView *)v7 pointerInteraction];
      [(SLHighlightDisambiguationPillView *)v7 addInteraction:v18];
    }
  }

  return v7;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SLHighlightDisambiguationPillView *)self frame];
  v9 = v8;
  v21.receiver = self;
  v21.super_class = SLHighlightDisambiguationPillView;
  [(SLHighlightDisambiguationPillView *)&v21 setFrame:x, y, width, height];
  if (width != v9)
  {
    [(SLHighlightDisambiguationPillView *)self frame];
    [(SLHighlightDisambiguationPillView *)self setPillMaxWidth:v10 + -34.0];
    if (self->_pillProxy)
    {
      [(_UISlotView *)self->_pillSlotView _updateContent];
    }

    else
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);

      v13 = dispatch_queue_create("com.apple.SocialLayer.SLHighlightDisambiguationPillView.RemoteRendering", v12);
      remoteRenderingQueue = self->_remoteRenderingQueue;
      self->_remoteRenderingQueue = v13;

      v15 = [SLDServiceProxy proxyForServiceClass:objc_opt_class() targetSerialQueue:self->_remoteRenderingQueue delegate:self];
      pillProxy = self->_pillProxy;
      self->_pillProxy = v15;

      objc_initWeak(&location, self);
      v17 = self->_remoteRenderingQueue;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__SLHighlightDisambiguationPillView_setFrame___block_invoke;
      v18[3] = &unk_278925C50;
      objc_copyWeak(&v19, &location);
      dispatch_async(v17, v18);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __46__SLHighlightDisambiguationPillView_setFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pillProxy];
  [v1 connect];
}

- (id)_layoutConstraintsForIndividualContact
{
  v25[7] = *MEMORY[0x277D85DE8];
  v24 = [(_UISlotView *)self->_pillSlotView leadingAnchor];
  v23 = [(SLHighlightDisambiguationPillView *)self leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v25[0] = v22;
  v21 = [(_UISlotView *)self->_pillSlotView topAnchor];
  v20 = [(SLHighlightDisambiguationPillView *)self topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v25[1] = v19;
  v18 = [(_UISlotView *)self->_pillSlotView centerYAnchor];
  v17 = [(SLHighlightDisambiguationPillView *)self centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v25[2] = v16;
  v3 = [(UIButton *)self->_transcriptButton centerYAnchor];
  v4 = [(SLHighlightDisambiguationPillView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v25[3] = v5;
  v6 = [(UIButton *)self->_transcriptButton heightAnchor];
  v7 = [(SLHighlightDisambiguationPillView *)self heightAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 multiplier:0.53125];
  v25[4] = v8;
  v9 = [(UIButton *)self->_transcriptButton widthAnchor];
  v10 = [(UIButton *)self->_transcriptButton heightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  transcriptButtonConstraint = self->_transcriptButtonConstraint;
  v25[5] = v11;
  v25[6] = transcriptButtonConstraint;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_loadDisambiguationPillSlotView
{
  v3 = objc_alloc_init(MEMORY[0x277D76260]);
  [(SLHighlightDisambiguationPillView *)self setPillSlotView:v3];

  v4 = [(SLHighlightDisambiguationPillView *)self pillSlotView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(SLHighlightDisambiguationPillView *)self pillSlotView];
  [v5 setContentMode:1];

  v6 = [(SLHighlightDisambiguationPillView *)self pillSlotView];
  [(SLHighlightDisambiguationPillView *)self addSubview:v6];
}

- (id)_loadButtonWithImageName:(id)a3
{
  v4 = MEMORY[0x277D75220];
  v5 = a3;
  v6 = [v4 buttonWithType:0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:v5];

  [v6 addTarget:self action:sel__transcriptButtonTapped_ forControlEvents:64];
  [v6 setImage:v7 forState:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  [v6 setTintColor:v8];

  v9 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v6 setBackgroundColor:v9];

  [v6 setClipsToBounds:1];

  return v6;
}

- (void)_loadTranscriptButton
{
  v3 = [(SLHighlightDisambiguationPillView *)self _loadButtonWithImageName:@"message.fill"];
  transcriptButton = self->_transcriptButton;
  self->_transcriptButton = v3;

  v20 = [MEMORY[0x277D75210] effectWithStyle:18];
  v5 = [MEMORY[0x277D75D00] _effectForBlurEffect:v20 vibrancyStyle:112];
  v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v5];
  [(SLHighlightDisambiguationPillView *)self setButtonEffectView:v6];

  v7 = [(SLHighlightDisambiguationPillView *)self buttonEffectView];
  [v7 setClipsToBounds:1];

  v8 = [(SLHighlightDisambiguationPillView *)self buttonEffectView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIButton *)self->_transcriptButton bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SLHighlightDisambiguationPillView *)self buttonEffectView];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = self->_transcriptButton;
  v19 = [(SLHighlightDisambiguationPillView *)self buttonEffectView];
  [(UIButton *)v18 addSubview:v19];

  [(SLHighlightDisambiguationPillView *)self addSubview:self->_transcriptButton];
}

- (void)_loadBlurView
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D68]);
  v4 = [MEMORY[0x277D75210] effectWithStyle:9];
  v5 = [v3 initWithEffect:v4];
  blurView = self->_blurView;
  self->_blurView = v5;

  [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SLHighlightDisambiguationPillView *)self addSubview:self->_blurView];
  [(SLHighlightDisambiguationPillView *)self sendSubviewToBack:self->_blurView];
  v18 = MEMORY[0x277CCAAD0];
  v21 = [(UIVisualEffectView *)self->_blurView widthAnchor];
  v20 = [(SLHighlightDisambiguationPillView *)self widthAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v7 = [(UIVisualEffectView *)self->_blurView heightAnchor];
  v8 = [(SLHighlightDisambiguationPillView *)self heightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v22[1] = v9;
  v10 = [(UIVisualEffectView *)self->_blurView centerXAnchor];
  v11 = [(SLHighlightDisambiguationPillView *)self centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v22[2] = v12;
  v13 = [(UIVisualEffectView *)self->_blurView centerYAnchor];
  v14 = [(SLHighlightDisambiguationPillView *)self centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v22[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SLHighlightDisambiguationPillView;
  [(SLHighlightDisambiguationPillView *)&v8 layoutSubviews];
  [(SLHighlightDisambiguationPillView *)self frame];
  v4 = v3 * 0.5;
  [(SLHighlightDisambiguationPillView *)self _setContinuousCornerRadius:v3 * 0.5];
  [(UIVisualEffectView *)self->_blurView _setContinuousCornerRadius:v4];
  [(UIButton *)self->_transcriptButton frame];
  v6 = v5 * 0.5;
  v7 = [(UIButton *)self->_transcriptButton layer];
  [v7 setCornerRadius:v6];
}

- (void)_transcriptButtonTapped:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = self;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "[SLHighlightDisambiguationPillView %p] _transcriptButtonTapped", &v6, 0xCu);
  }

  [(SLHighlightDisambiguationPillView *)self _presentTranscript];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_macroPillTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLHighlightDisambiguationPillView %p] _macroPillTapped", &v5, 0xCu);
  }

  [(SLHighlightDisambiguationPillView *)self _presentTranscript];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_presentTranscript
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLHighlightDisambiguationPillView %p] _presentTranscript", &v9, 0xCu);
  }

  v4 = objc_alloc_init(SLTranscriptController);
  v5 = [(SLAttribution *)self->_attribution uniqueIdentifier];
  v6 = [(SLAttribution *)self->_attribution attachmentGUID];
  v7 = [(SLHighlightDisambiguationPillView *)self _viewControllerForAncestor];
  [(SLTranscriptController *)v4 presentTranscriptForMessageGUID:v5 attachmentGUID:v6 presentingViewController:v7];
  SLSendPortraitFeedbackTypeAppButtonForAttribution(self->_attribution);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)serviceProxyDidConnect:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SLHighlightDisambiguationPillView_serviceProxyDidConnect___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__SLHighlightDisambiguationPillView_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _contentProviderForCurrentConfiguration];
  v2 = [*(a1 + 32) pillSlotView];
  [v2 _setSlotAnyContentProvider:v3];
}

- (id)_contentProviderForCurrentConfiguration
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke;
  aBlock[3] = &unk_278927588;
  objc_copyWeak(&v6, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__13;
  v32[4] = __Block_byref_object_dispose__13;
  v10 = [WeakRetained attribution];
  v33 = [v10 uniqueIdentifier];

  v11 = [WeakRetained remoteContentIsLoaded];
  v12 = [WeakRetained placeholderSlotContent];
  v13 = -[SLDHighlightDisambiguationPillEmptySlotContent initWithStyle:variant:forRemote:]([SLDHighlightDisambiguationPillEmptySlotContent alloc], "initWithStyle:variant:forRemote:", v7, [WeakRetained pillVariant], 0);
  [WeakRetained setPlaceholderSlotContent:v13];

  if (!v11)
  {
    goto LABEL_4;
  }

  [v12 contentSize];
  v15 = v14;
  v17 = v16;
  v18 = [WeakRetained placeholderSlotContent];
  [v18 contentSize];
  v20 = v19;
  v22 = v21;

  if (v15 != v20 || v17 != v22)
  {
LABEL_4:
    v23 = [WeakRetained placeholderSlotContent];
    v8[2](v8, v23);
  }

  v24 = [WeakRetained pillProxy];
  v25 = [v24 connectionActive];

  if (v25)
  {
    v26 = [*(a1 + 32) remoteRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_29;
    block[3] = &unk_278927560;
    block[4] = WeakRetained;
    v30 = v32;
    v28 = v7;
    v31 = a2;
    v29 = v8;
    dispatch_async(v26, block);
  }

  _Block_object_dispose(v32, 8);
}

void __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) pillProxy];
  v3 = [v2 synchronousRemoteService];

  if ([*(*(*(a1 + 56) + 8) + 40) length] && objc_msgSend(v3, "conformsToProtocol:", &unk_2846BCB88))
  {
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v3;
    [v6 pillMaxWidth];
    v9 = v8;
    v10 = [*(a1 + 32) pillVariant];
    v11 = *(a1 + 64);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_2;
    v15[3] = &unk_278927538;
    v12 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v12;
    v14 = *(a1 + 48);
    v13 = v14;
    v17 = v14;
    [v7 highlightDisambiguationPillForAttributionIdentifier:v4 style:v5 maxWidth:v10 variant:v11 layerContextID:v15 reply:v9];
  }
}

void __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_3;
  block[3] = &unk_278927510;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v4;
  v10 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_3(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) lastRenderedSlotStyle];
  v4 = [v3 isEqual:*(v2 + 8)];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setLastRenderedSlotStyle:*(a1 + 40)];
  }

  [*(a1 + 32) setRemoteContentIsLoaded:*(a1 + 48) != 0];
  if (*(a1 + 48))
  {
    [*(a1 + 32) setNeedsLayout];
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }

  else
  {
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_3_cold_1(v2, a1, v7);
    }
  }
}

- (void)serviceProxyDidDisconnect:(id)a3
{
  [(SLHighlightDisambiguationPillView *)self setLastRenderedSlotStyle:0];

  [(SLHighlightDisambiguationPillView *)self setRemoteContentIsLoaded:0];
}

- (void)dealloc
{
  self->_remoteContentIsLoaded = 0;
  [(SLDServiceProxy *)self->_pillProxy disconnect];
  pillProxy = self->_pillProxy;
  self->_pillProxy = 0;

  v4.receiver = self;
  v4.super_class = SLHighlightDisambiguationPillView;
  [(SLHighlightDisambiguationPillView *)&v4 dealloc];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(SLHighlightDisambiguationPillView *)self pointerInteraction];

  if (v9 == v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = [(SLHighlightDisambiguationPillView *)self pointerInteraction];

  if (v6 == v5)
  {
    v8 = objc_alloc_init(MEMORY[0x277D758D8]);
    [(SLHighlightDisambiguationPillView *)self _continuousCornerRadius];
    v9 = MEMORY[0x277D75208];
    [(SLHighlightDisambiguationPillView *)self bounds];
    v10 = [v9 bezierPathWithRoundedRect:? cornerRadius:?];
    [v8 setVisiblePath:v10];

    v11 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v8];
    v12 = [MEMORY[0x277D75878] effectWithPreview:v11];
    v7 = [MEMORY[0x277D75890] styleWithEffect:v12 shape:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __76__SLHighlightDisambiguationPillView__contentProviderForCurrentConfiguration__block_invoke_3_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*(*(a2 + 64) + 8) + 40);
  [*a1 pillMaxWidth];
  v8 = 134218498;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[SLHighlightPillView: %p] sociallayerd returned nil remote content for attribution ID: [%@], maxWidth: [%f]", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

@end