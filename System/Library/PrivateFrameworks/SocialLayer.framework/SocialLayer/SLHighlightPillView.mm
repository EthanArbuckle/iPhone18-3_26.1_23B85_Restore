@interface SLHighlightPillView
+ (void)openMessagesForMessageGUID:(id)d;
- (BOOL)_shouldDisplayDebugPillLabel;
- (BOOL)shouldInvalidatePreviousPlaceHolderSlotContent:(id)content forStyle:(id)style;
- (BOOL)shouldShowContextMenu;
- (BOOL)shouldShowReplyContextMenu;
- (SLHighlightPillViewDelegate)delegate;
- (UIAction)hideAction;
- (UIAction)replyAction;
- (UIVisualEffect)chevronEffect;
- (double)expectedHeightForMaxWidth:(double)width;
- (id)_attributionIdentifiers;
- (id)_targetedPreviewForInteraction:(id)interaction;
- (id)_uiActionItems;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)makePlaceholderSlotContentForStyle:(id)style;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_configureChevronForSlotStyle:(id)style;
- (void)_hideMenuItemSelected;
- (void)_pillTapped:(id)tapped forEvent:(id)event;
- (void)_replyMenuItemSelected;
- (void)_setupBlurView;
- (void)_setupDebugPillLabel;
- (void)_uiActionItems;
- (void)excludeContextMenuItemsWithIdentifiers:(id)identifiers;
- (void)layoutSubviews;
- (void)refreshContextMenuItems;
- (void)remoteContentIsLoadedValueChanged;
- (void)renderRemoteContentForLayerContextID:(unint64_t)d style:(id)style yield:(id)yield;
- (void)setBlurEffectGroupName:(id)name;
- (void)setPreferredBackgroundColor:(id)color;
- (void)setShouldDrawBackgroundBlur:(BOOL)blur;
- (void)shouldShowContextMenu;
- (void)shouldShowReplyContextMenu;
@end

@implementation SLHighlightPillView

- (BOOL)_shouldDisplayDebugPillLabel
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  highlight = [(SLHighlightPillView *)self highlight];
  attributions = [highlight attributions];
  v5 = [attributions count] == 0;

  return v5;
}

- (void)_setupBlurView
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D68]);
  v4 = [MEMORY[0x277D75210] effectWithStyle:8];
  v5 = [v3 initWithEffect:v4];
  blurView = self->_blurView;
  self->_blurView = v5;

  [(SLHighlightPillView *)self addSubview:self->_blurView];
  [(SLHighlightPillView *)self sendSubviewToBack:self->_blurView];
  [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIVisualEffectView *)self->_blurView leadingAnchor];
  leadingAnchor2 = [(SLHighlightPillView *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v19;
  trailingAnchor = [(UIVisualEffectView *)self->_blurView trailingAnchor];
  trailingAnchor2 = [(SLHighlightPillView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v7;
  topAnchor = [(UIVisualEffectView *)self->_blurView topAnchor];
  topAnchor2 = [(SLHighlightPillView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v10;
  bottomAnchor = [(UIVisualEffectView *)self->_blurView bottomAnchor];
  bottomAnchor2 = [(SLHighlightPillView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v14];

  [(UIVisualEffectView *)self->_blurView setHidden:1];
  [(UIVisualEffectView *)self->_blurView setUserInteractionEnabled:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (UIVisualEffect)chevronEffect
{
  chevronEffect = self->_chevronEffect;
  if (!chevronEffect)
  {
    v4 = MEMORY[0x277D75D00];
    v5 = [MEMORY[0x277D75210] effectWithStyle:4];
    v6 = [v4 effectForBlurEffect:v5 style:1];
    v7 = self->_chevronEffect;
    self->_chevronEffect = v6;

    chevronEffect = self->_chevronEffect;
  }

  return chevronEffect;
}

- (void)_setupDebugPillLabel
{
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SLHighlightPillView *)self setNoAttributionsDebugLabel:v4];

  noAttributionsDebugLabel = [(SLHighlightPillView *)self noAttributionsDebugLabel];
  [noAttributionsDebugLabel setText:@"0 SLAttributions"];

  redColor = [MEMORY[0x277D75348] redColor];
  noAttributionsDebugLabel2 = [(SLHighlightPillView *)self noAttributionsDebugLabel];
  [noAttributionsDebugLabel2 setTextColor:redColor];

  noAttributionsDebugLabel3 = [(SLHighlightPillView *)self noAttributionsDebugLabel];
  [noAttributionsDebugLabel3 setUserInteractionEnabled:0];

  noAttributionsDebugLabel4 = [(SLHighlightPillView *)self noAttributionsDebugLabel];
  [(SLHighlightPillView *)self addSubview:noAttributionsDebugLabel4];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SLHighlightPillView;
  [(SLHighlightPillView *)&v21 layoutSubviews];
  if ([(SLRemoteView *)self remoteContentIsLoaded])
  {
    lastRenderedSlotStyle = [(SLRemoteView *)self lastRenderedSlotStyle];

    if (lastRenderedSlotStyle)
    {
      [(SLHighlightPillView *)self frame];
      v5 = v4 * 0.5;
      lastRenderedSlotStyle2 = [(SLRemoteView *)self lastRenderedSlotStyle];
      v7 = SLRoundToScale(v5, [lastRenderedSlotStyle2 displayScale]);

      if (v7 != 0.0)
      {
        [(SLHighlightPillView *)self _continuousCornerRadius];
        if (!SL_CGFloatApproximatelyEqualToFloat(v8, v7))
        {
          [(SLHighlightPillView *)self _setContinuousCornerRadius:v7];
          blurView = [(SLHighlightPillView *)self blurView];
          [blurView _setContinuousCornerRadius:v7];
        }
      }
    }
  }

  if ([(SLHighlightPillView *)self _shouldDisplayDebugPillLabel])
  {
    if (![(SLRemoteView *)self remoteContentIsLoaded])
    {
      [(SLRemoteView *)self maxWidth];
      v11 = v10;
      [(SLRemoteView *)self maxWidth];
      [(SLHighlightPillView *)self expectedHeightForMaxWidth:?];
      v13 = v12;
      noAttributionsDebugLabel = [(SLHighlightPillView *)self noAttributionsDebugLabel];
      [noAttributionsDebugLabel intrinsicContentSize];
      v16 = v11 * 0.5 - v15 * 0.5;

      noAttributionsDebugLabel2 = [(SLHighlightPillView *)self noAttributionsDebugLabel];
      [noAttributionsDebugLabel2 intrinsicContentSize];
      v19 = v13 * 0.5 - v18 * 0.5;

      noAttributionsDebugLabel3 = [(SLHighlightPillView *)self noAttributionsDebugLabel];
      [noAttributionsDebugLabel3 setFrame:{v16, v19, v11, v13}];
    }
  }
}

- (double)expectedHeightForMaxWidth:(double)width
{
  [(SLRemoteView *)self maxWidth];
  if (SL_CGFloatApproximatelyEqualToFloat(width, v5) || ([(SLRemoteView *)self lastRenderedSlotStyle], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    slotView = [(SLRemoteView *)self slotView];
    [(SLDHighlightPillEmptySlotContent *)slotView intrinsicContentSize];
  }

  else
  {
    v7 = [SLDHighlightPillEmptySlotContent alloc];
    lastRenderedSlotStyle = [(SLRemoteView *)self lastRenderedSlotStyle];
    slotView = [(SLDHighlightPillEmptySlotContent *)v7 initWithStyle:lastRenderedSlotStyle variant:[(SLHighlightPillView *)self variant] maxWidth:0 forRemote:width];

    [(SLDEmptySlotContent *)slotView contentSize];
  }

  v11 = v10;

  return v11;
}

- (void)setShouldDrawBackgroundBlur:(BOOL)blur
{
  if (self->_shouldDrawBackgroundBlur != blur)
  {
    self->_shouldDrawBackgroundBlur = blur;
    if (blur)
    {
      if ([(SLRemoteView *)self remoteContentIsLoaded])
      {
        blurView = [(SLHighlightPillView *)self blurView];
        [blurView setHidden:0];
      }

      chevronImageView = [(SLHighlightPillView *)self chevronImageView];
      chevronEffect = [(SLHighlightPillView *)self chevronEffect];
      [chevronImageView setEffect:chevronEffect];
    }

    else
    {
      chevronImageView2 = [(SLHighlightPillView *)self chevronImageView];
      [chevronImageView2 setEffect:0];

      chevronImageView = [(SLHighlightPillView *)self blurView];
      [chevronImageView setHidden:1];
    }
  }
}

- (void)setBlurEffectGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_blurEffectGroupName isEqualToString:nameCopy])
  {
    blurView = [(SLHighlightPillView *)self blurView];
    [blurView _setGroupName:nameCopy];

    v6 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SLHighlightPillView *)self setBlurEffectGroupName:nameCopy, v6];
    }
  }
}

- (void)setPreferredBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_preferredBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_preferredBackgroundColor, color);
    if ([(SLHighlightPillView *)self shouldDrawBackgroundBlur]&& ([(SLHighlightPillView *)self blurView], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      blurView = [(SLHighlightPillView *)self blurView];
      contentView = [blurView contentView];
      [contentView setBackgroundColor:colorCopy];

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SLHighlightPillView *)self setBackgroundColor:clearColor];
    }

    else
    {
      blurView2 = [(SLHighlightPillView *)self blurView];
      contentView2 = [blurView2 contentView];
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [contentView2 setBackgroundColor:clearColor2];

      [(SLHighlightPillView *)self setBackgroundColor:colorCopy];
    }
  }
}

- (void)_configureChevronForSlotStyle:(id)style
{
  v51[4] = *MEMORY[0x277D85DE8];
  if (self->_chevronImageView)
  {
    styleCopy = style;
    lastChevronImageView = [(SLHighlightPillView *)self lastChevronImageView];

    if (lastChevronImageView)
    {
      lastChevronImageView2 = [(SLHighlightPillView *)self lastChevronImageView];
      [lastChevronImageView2 removeFromSuperview];

      [(SLHighlightPillView *)self setLastChevronImageView:0];
    }

    v7 = [SLHighlightPillMetrics chevronFontDescriptorWithStyle:styleCopy variant:[(SLHighlightPillView *)self variant]];

    v50 = v7;
    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v11 = @"chevron.right";
    if (userInterfaceLayoutDirection == 1)
    {
      v11 = @"chevron.left";
    }

    v12 = MEMORY[0x277D755D0];
    v13 = v11;
    v49 = v8;
    v14 = [v12 configurationWithFont:v8 scale:1];
    v15 = objc_alloc(MEMORY[0x277D755E8]);
    v16 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v48 = v14;
    v17 = [MEMORY[0x277D755B8] systemImageNamed:v13 withConfiguration:v14];

    v18 = [v17 imageWithRenderingMode:2];
    [v16 setImage:v18];

    if ([(SLHighlightPillView *)self variant]== 11 || [(SLHighlightPillView *)self variant]== 12 || [(SLHighlightPillView *)self variant]== 9)
    {
      labelColor = [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      labelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    }

    v20 = labelColor;
    [v16 setTintColor:labelColor];

    [v16 sizeToFit];
    contentView = [(UIVisualEffectView *)self->_chevronImageView contentView];
    [contentView addSubview:v16];

    lastRenderedSlotStyle = [(SLRemoteView *)self lastRenderedSlotStyle];

    if (lastRenderedSlotStyle)
    {
      lastRenderedSlotStyle2 = [(SLRemoteView *)self lastRenderedSlotStyle];
      variant = [(SLHighlightPillView *)self variant];
      [(SLRemoteView *)self maxWidth];
      [SLHighlightPillMetrics pillMarginsWithStyle:lastRenderedSlotStyle2 variant:variant maxWidth:?];
      v26 = v25;

      trailingAnchor = [(UIVisualEffectView *)self->_chevronImageView trailingAnchor];
      trailingAnchor2 = [(SLHighlightPillView *)self trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v26];
    }

    else
    {
      trailingAnchor = [(UIVisualEffectView *)self->_chevronImageView trailingAnchor];
      trailingAnchor2 = [(SLHighlightPillView *)self layoutMarginsGuide];
      v28TrailingAnchor = [trailingAnchor2 trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:v28TrailingAnchor];
    }

    chevronConstraints = [(SLHighlightPillView *)self chevronConstraints];
    v32 = [chevronConstraints count];

    if (v32)
    {
      v33 = MEMORY[0x277CCAAD0];
      chevronConstraints2 = [(SLHighlightPillView *)self chevronConstraints];
      [v33 deactivateConstraints:chevronConstraints2];
    }

    v51[0] = v29;
    centerYAnchor = [(UIVisualEffectView *)self->_chevronImageView centerYAnchor];
    centerYAnchor2 = [(SLHighlightPillView *)self centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v51[1] = v37;
    widthAnchor = [(UIVisualEffectView *)self->_chevronImageView widthAnchor];
    [v16 size];
    [widthAnchor constraintEqualToConstant:?];
    v39 = v47 = v29;
    v51[2] = v39;
    heightAnchor = [(UIVisualEffectView *)self->_chevronImageView heightAnchor];
    [v16 size];
    v42 = [heightAnchor constraintEqualToConstant:v41];
    v51[3] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [(SLHighlightPillView *)self setChevronConstraints:v43];

    v44 = MEMORY[0x277CCAAD0];
    chevronConstraints3 = [(SLHighlightPillView *)self chevronConstraints];
    [v44 activateConstraints:chevronConstraints3];

    [(SLHighlightPillView *)self setNeedsLayout];
    [(SLHighlightPillView *)self setLastChevronImageView:v16];
  }

  v46 = *MEMORY[0x277D85DE8];
}

+ (void)openMessagesForMessageGUID:(id)d
{
  if (d)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?message-guid=%@&overlay=1", d];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

- (void)_pillTapped:(id)tapped forEvent:(id)event
{
  v5 = [(SLHighlightPillView *)self _attributionIdentifiers:tapped];
  v6 = [v5 count];
  highlight = [(SLHighlightPillView *)self highlight];
  attributions = [highlight attributions];
  firstObject = [attributions firstObject];

  if (firstObject)
  {
    attachmentGUID = [firstObject attachmentGUID];
  }

  else
  {
    attachmentGUID = 0;
  }

  if ([v5 count])
  {
    _viewControllerForAncestor = [(SLHighlightPillView *)self _viewControllerForAncestor];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    _viewControllerForAncestor = 0;
    if (v6)
    {
LABEL_6:
      if (v6 == 1)
      {
        v12 = objc_alloc_init(SLTranscriptController);
        firstObject2 = [v5 firstObject];
        if (_viewControllerForAncestor)
        {
          [(SLTranscriptController *)v12 presentTranscriptForMessageGUID:firstObject2 attachmentGUID:attachmentGUID presentingViewController:_viewControllerForAncestor];
        }

        else
        {
          v25 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [SLHighlightPillView _pillTapped:v25 forEvent:?];
          }
        }

        highlight2 = [(SLHighlightPillView *)self highlight];
        attributions2 = [highlight2 attributions];
        firstObject3 = [attributions2 firstObject];
        SLSendPortraitFeedbackTypeAppButtonForAttribution(firstObject3);
      }

      else
      {
        superview = [(SLHighlightPillView *)self superview];
        [(SLHighlightPillView *)self frame];
        [superview convertRect:0 toView:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = [SLDisambiguationCollectionViewController alloc];
        highlight3 = [(SLHighlightPillView *)self highlight];
        v12 = [(SLDisambiguationCollectionViewController *)v23 initWithHighlight:highlight3];

        [(SLTranscriptController *)v12 setModalPresentationStyle:5];
        [(SLTranscriptController *)v12 setModalTransitionStyle:2];
        [(SLTranscriptController *)v12 setAttributionViewFrame:v16, v18, v20, v22];
        [_viewControllerForAncestor presentViewController:v12 animated:0 completion:0];
      }

      goto LABEL_17;
    }
  }

  v12 = SLFrameworkLogHandle();
  if (os_log_type_enabled(&v12->super.super.super, OS_LOG_TYPE_ERROR))
  {
    [SLHighlightPillView _pillTapped:&v12->super.super.super forEvent:?];
  }

LABEL_17:
}

- (id)_attributionIdentifiers
{
  v27 = *MEMORY[0x277D85DE8];
  attributionIdentifiers = self->_attributionIdentifiers;
  if (!attributionIdentifiers || ![(NSArray *)attributionIdentifiers count])
  {
    array = [MEMORY[0x277CBEB18] array];
    highlight = [(SLHighlightPillView *)self highlight];
    attributions = [highlight attributions];
    v7 = [attributions count];

    if (v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      highlight2 = [(SLHighlightPillView *)self highlight];
      attributions2 = [highlight2 attributions];

      v10 = [attributions2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(attributions2);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            uniqueIdentifier = [v14 uniqueIdentifier];

            if (uniqueIdentifier)
            {
              uniqueIdentifier2 = [v14 uniqueIdentifier];
              [array addObject:uniqueIdentifier2];
            }
          }

          v11 = [attributions2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }
    }

    else
    {
      attributions2 = SLFrameworkLogHandle();
      if (os_log_type_enabled(attributions2, OS_LOG_TYPE_ERROR))
      {
        [SLHighlightPillView initWithHighlight:maxWidth:variant:shouldDrawBlur:];
      }
    }

    v17 = [array copy];
    v18 = self->_attributionIdentifiers;
    self->_attributionIdentifiers = v17;
  }

  v19 = self->_attributionIdentifiers;
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)remoteContentIsLoadedValueChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SLHighlightPillView_remoteContentIsLoadedValueChanged__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__SLHighlightPillView_remoteContentIsLoadedValueChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteContentIsLoaded];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 shouldDrawBackgroundBlur] ^ 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v4 = 1;
  }

  v5 = [v3 blurView];
  [v5 setHidden:v4];

  v6 = [*(a1 + 32) chevronImageView];
  [v6 setHidden:0];
}

- (void)renderRemoteContentForLayerContextID:(unint64_t)d style:(id)style yield:(id)yield
{
  styleCopy = style;
  yieldCopy = yield;
  _attributionIdentifiers = [(SLHighlightPillView *)self _attributionIdentifiers];
  serviceProxy = [(SLRemoteView *)self serviceProxy];
  synchronousRemoteService = [serviceProxy synchronousRemoteService];

  if ([_attributionIdentifiers count] && objc_msgSend(synchronousRemoteService, "conformsToProtocol:", &unk_2846BCB88))
  {
    v13 = synchronousRemoteService;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v14 = SLGeneralTelemetryLogHandle();
    v15 = os_signpost_id_generate(v14);

    v31 = v15;
    v16 = SLGeneralTelemetryLogHandle();
    v17 = v16;
    v18 = v29[3];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231772000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "HighlightPillTotalRender", "", buf, 2u);
    }

    [(SLRemoteView *)self maxWidth];
    v20 = v19;
    variant = [(SLHighlightPillView *)self variant];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke;
    v22[3] = &unk_278927180;
    v22[4] = self;
    v23 = styleCopy;
    v24 = _attributionIdentifiers;
    v26 = &v28;
    v25 = yieldCopy;
    [v13 highlightPillForAttributionIdentifiers:v24 style:v23 maxWidth:variant variant:d layerContextID:v22 reply:v20];

    _Block_object_dispose(&v28, 8);
  }
}

void __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2;
  block[3] = &unk_278927158;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = v7;
  v12 = v7;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) lastRenderedSlotStyle];
  v4 = [v3 isEqual:*(v2 + 8)];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setLastRenderedSlotStyle:*(a1 + 40)];
    [*(a1 + 32) _configureChevronForSlotStyle:*(a1 + 40)];
  }

  [*(a1 + 32) setRemoteContentIsLoaded:*(a1 + 48) != 0];
  if (*(a1 + 48))
  {
    v5 = SLGeneralTelemetryLogHandle();
    v6 = v5;
    v7 = *(*(*(a1 + 72) + 8) + 24);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_231772000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HighlightPillTotalRender", "", v10, 2u);
    }

    v8 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) setNeedsLayout];
    [*(a1 + 32) layoutIfNeeded];
    v9 = [*(a1 + 32) delegate];
    [v9 highlightPillViewDidLoadNewRemoteContent:*(a1 + 32)];
  }

  else
  {
    v9 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2_cold_1(v2, a1);
    }
  }
}

- (BOOL)shouldInvalidatePreviousPlaceHolderSlotContent:(id)content forStyle:(id)style
{
  contentCopy = content;
  styleCopy = style;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = contentCopy;
    v9 = v8;
    if (v8 && (v10 = [v8 variant], v10 == -[SLHighlightPillView variant](self, "variant")) && (objc_msgSend(v9, "maxWidth"), v12 = v11, -[SLRemoteView maxWidth](self, "maxWidth"), v12 == v13))
    {
      style = [v9 style];
      v14 = [style isEqual:styleCopy] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (id)makePlaceholderSlotContentForStyle:(id)style
{
  styleCopy = style;
  v5 = [SLDHighlightPillEmptySlotContent alloc];
  variant = [(SLHighlightPillView *)self variant];
  [(SLRemoteView *)self maxWidth];
  v7 = [(SLDHighlightPillEmptySlotContent *)v5 initWithStyle:styleCopy variant:variant maxWidth:0 forRemote:?];

  return v7;
}

- (BOOL)shouldShowContextMenu
{
  highlight = [(SLHighlightPillView *)self highlight];
  attributions = [highlight attributions];

  v4 = [attributions count];
  if (!v4)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SLHighlightPillView shouldShowContextMenu];
    }
  }

  return v4 != 0;
}

- (BOOL)shouldShowReplyContextMenu
{
  highlight = [(SLHighlightPillView *)self highlight];
  attributions = [highlight attributions];

  if (![(SLHighlightPillView *)self shouldShowContextMenu])
  {
LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  if ([attributions count] >= 2)
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SLHighlightPillView shouldShowReplyContextMenu];
    }

    goto LABEL_6;
  }

  v6 = 1;
LABEL_8:
  excludedContextMenuIdentifiers = [(SLHighlightPillView *)self excludedContextMenuIdentifiers];
  v8 = [excludedContextMenuIdentifiers containsObject:@"slReplyMenuItem"];

  if (v8)
  {
    v9 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SLHighlightPillView shouldShowReplyContextMenu];
    }

    v6 = 0;
  }

  return v6;
}

- (void)refreshContextMenuItems
{
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(SLHighlightPillView *)self shouldShowContextMenu])
  {
    _uiActionItems = [(SLHighlightPillView *)self _uiActionItems];
    [array addObjectsFromArray:_uiActionItems];

    array2 = [MEMORY[0x277CBEA60] array];
    delegate = [(SLHighlightPillView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(SLHighlightPillView *)self delegate];
      v9 = [delegate2 additionalContextMenuItemsForHighlightPillView:self];

      array2 = v9;
    }

    if ([array2 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = array2;
      v10 = array2;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = v11;
      v13 = *v27;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = MEMORY[0x277CCAC30];
            identifier = [v15 identifier];
            v18 = [v16 predicateWithFormat:@"identifier MATCHES %@", identifier];

            identifier3 = [array filteredArrayUsingPredicate:v18];
            if ([identifier3 count])
            {
              v20 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                identifier2 = [v15 identifier];
                *buf = 134218242;
                selfCopy4 = self;
                v32 = 2112;
                v33 = identifier2;
                _os_log_error_impl(&dword_231772000, v20, OS_LOG_TYPE_ERROR, "[SLHighlightPillView: %p] Skipping adding context menu item with identifier %@ provided by delegate as its already present", buf, 0x16u);
                goto LABEL_25;
              }
            }

            else
            {
              [array addObject:v15];
              v20 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                identifier2 = [v15 identifier];
                *buf = 134218242;
                selfCopy4 = self;
                v32 = 2112;
                v33 = identifier2;
                _os_log_debug_impl(&dword_231772000, v20, OS_LOG_TYPE_DEBUG, "[SLHighlightPillView: %p] Adding context menu item with identifier %@ provided by delegate ", buf, 0x16u);
LABEL_25:
              }
            }

LABEL_21:
            goto LABEL_22;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v15];
            v18 = SLFrameworkLogHandle();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_22;
            }

            identifier3 = [v15 identifier];
            *buf = 134218242;
            selfCopy4 = self;
            v32 = 2112;
            v33 = identifier3;
            _os_log_debug_impl(&dword_231772000, v18, OS_LOG_TYPE_DEBUG, "[SLHighlightPillView: %p] Adding context menu item with identifier %@ provided by delegate ", buf, 0x16u);
            goto LABEL_21;
          }

          v18 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            selfCopy4 = self;
            v32 = 2112;
            v33 = v15;
            _os_log_error_impl(&dword_231772000, v18, OS_LOG_TYPE_ERROR, "[SLHighlightPillView: %p] Not adding invalid context menu item %@ provided by delegate.", buf, 0x16u);
          }

LABEL_22:

          ++v14;
        }

        while (v12 != v14);
        v22 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        v12 = v22;
        if (!v22)
        {
LABEL_27:

          array2 = v25;
          break;
        }
      }
    }
  }

  v23 = [array copy];
  [(SLHighlightPillView *)self setContextMenuItems:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)excludeContextMenuItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    [(SLHighlightPillView *)self setExcludedContextMenuIdentifiers:v4];

    [(SLHighlightPillView *)self refreshContextMenuItems];
  }
}

- (id)_uiActionItems
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(SLHighlightPillView *)self shouldShowReplyContextMenu])
  {
    replyAction = [(SLHighlightPillView *)self replyAction];
    if (replyAction)
    {
      [array addObject:replyAction];
    }
  }

  excludedContextMenuIdentifiers = [(SLHighlightPillView *)self excludedContextMenuIdentifiers];
  v6 = [excludedContextMenuIdentifiers containsObject:@"slHideMenuItem"];

  if (v6)
  {
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SLHighlightPillView _uiActionItems];
    }
  }

  else
  {
    hideAction = [(SLHighlightPillView *)self hideAction];
    if (hideAction)
    {
      [array addObject:hideAction];
    }
  }

  v9 = [array copy];

  return v9;
}

- (UIAction)replyAction
{
  replyAction = self->_replyAction;
  if (!replyAction)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D750C8];
    v5 = SLFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"REPLY_CONTEXTMENU" value:&stru_28468DAB8 table:@"SocialLayer"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"arrowshape.turn.up.left"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__SLHighlightPillView_replyAction__block_invoke;
    v11[3] = &unk_2789271A8;
    objc_copyWeak(&v12, &location);
    v8 = [v4 actionWithTitle:v6 image:v7 identifier:@"slReplyMenuItem" handler:v11];
    v9 = self->_replyAction;
    self->_replyAction = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    replyAction = self->_replyAction;
  }

  return replyAction;
}

void __34__SLHighlightPillView_replyAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _replyMenuItemSelected];
}

- (UIAction)hideAction
{
  hideAction = self->_hideAction;
  if (!hideAction)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D750C8];
    v5 = SLFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"HIDE_CONTEXTMENU" value:&stru_28468DAB8 table:@"SocialLayer"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__SLHighlightPillView_hideAction__block_invoke;
    v11[3] = &unk_2789271A8;
    objc_copyWeak(&v12, &location);
    v8 = [v4 actionWithTitle:v6 image:v7 identifier:@"slHideMenuItem" handler:v11];
    v9 = self->_hideAction;
    self->_hideAction = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    hideAction = self->_hideAction;
  }

  return hideAction;
}

void __33__SLHighlightPillView_hideAction__block_invoke(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_INFO, "SLHighlightPillView: Performing hide context menu action.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideMenuItemSelected];
}

- (void)_replyMenuItemSelected
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLHighlightPillView %p] Performing reply context menu action.", &v5, 0xCu);
  }

  [(SLHighlightPillView *)self _pillTapped:0 forEvent:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_hideMenuItemSelected
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLHighlightPillView %p] _hideMenuItemSelected: Unable to perform hide context menu action without an application identifier.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__SLHighlightPillView__hideMenuItemSelected__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) identifier];
      v11 = 134218242;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_INFO, "[SLHighlightPillView %p] _hideMenuItemSelected: Sent hide feedback for highlight: %@. Posting highlights deleted notification.", &v11, 0x16u);
    }

    notify_post("com.apple.spotlight.SyndicatedContentDeleted");
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__SLHighlightPillView__hideMenuItemSelected__block_invoke_cold_1(a1);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SLHighlightPillView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_2789271D0;
  v6[4] = self;
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:@"slContextMenu" previewProvider:0 actionProvider:v6];

  return v4;
}

id __77__SLHighlightPillView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshContextMenuItems];
  v2 = MEMORY[0x277D75710];
  v3 = [*(a1 + 32) contextMenuItems];
  v4 = [v2 menuWithTitle:&stru_28468DAB8 image:0 identifier:@"slContextMenu" options:1 children:v3];

  return v4;
}

- (id)_targetedPreviewForInteraction:(id)interaction
{
  v4 = objc_alloc_init(MEMORY[0x277D758D8]);
  [(SLHighlightPillView *)self frame];
  v6 = v5 * 0.5;
  lastRenderedSlotStyle = [(SLRemoteView *)self lastRenderedSlotStyle];
  SLRoundToScale(v6, [lastRenderedSlotStyle displayScale]);

  if ([(SLHighlightPillView *)self shouldDrawBackgroundBlur])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  v9 = MEMORY[0x277D75208];
  [(SLHighlightPillView *)self bounds];
  v10 = [v9 bezierPathWithRoundedRect:? cornerRadius:?];
  [v4 setVisiblePath:v10];

  v11 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v4];

  return v11;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  interactions = [(SLHighlightPillView *)self interactions];
  v7 = [interactions containsObject:interactionCopy];

  if (v7)
  {
    v8 = [(SLHighlightPillView *)self _targetedPreviewForInteraction:interactionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  interactionCopy = interaction;
  pointerInteraction = [(SLHighlightPillView *)self pointerInteraction];

  if (pointerInteraction == interactionCopy)
  {
    v10 = regionCopy;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  pointerInteraction = [(SLHighlightPillView *)self pointerInteraction];

  if (pointerInteraction == interactionCopy)
  {
    v8 = [(SLHighlightPillView *)self _targetedPreviewForInteraction:interactionCopy];
    v9 = [MEMORY[0x277D75878] effectWithPreview:v8];
    v7 = [MEMORY[0x277D75890] styleWithEffect:v9 shape:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SLHighlightPillViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithHighlight:maxWidth:variant:shouldDrawBlur:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 highlight];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setBlurEffectGroupName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_231772000, log, OS_LOG_TYPE_DEBUG, "[SLHighlightPillView: %p] blurEffectGroupName set to: '%@'", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_pillTapped:(uint64_t)a1 forEvent:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLHighlightPillView: %p] User tapped the pill, but we don't have any attribution identifiers?", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__SLHighlightPillView_renderRemoteContentForLayerContextID_style_yield___block_invoke_2_cold_1(id *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 56);
  [*a1 maxWidth];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldShowContextMenu
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x277D85DE8];
  highlight = [v0 highlight];
  identifier = [highlight identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldShowReplyContextMenu
{
  OUTLINED_FUNCTION_3_2();
  v11 = *MEMORY[0x277D85DE8];
  highlight = [v0 highlight];
  identifier = [highlight identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_6(&dword_231772000, v3, v4, "[SLHighlightPillView: %p] No reply context menu item for Highlight:%@ since it was asked to be excluded", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_uiActionItems
{
  OUTLINED_FUNCTION_3_2();
  v11 = *MEMORY[0x277D85DE8];
  highlight = [v0 highlight];
  identifier = [highlight identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_6(&dword_231772000, v3, v4, "[SLHighlightPillView: %p] No Hide context menu item for Highlight:%@ since it was asked to be excluded", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __44__SLHighlightPillView__hideMenuItemSelected__block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end