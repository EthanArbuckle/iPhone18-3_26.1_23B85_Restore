@interface PGControlsView
- (BOOL)PG_preferredVisibilityForView:(id)a3;
- (BOOL)_showsDimmingView;
- (CGRect)_prerollIndicatorFrameWithScaling:(double)a3;
- (CGRect)_progressIndicatorFrameWithScaling:(double)a3;
- (CGRect)buttonView:(id)a3 imageRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5;
- (CGRect)buttonView:(id)a3 titleRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5;
- (PGControlsView)initWithFrame:(CGRect)a3 viewModel:(id)a4;
- (UIEdgeInsets)buttonView:(id)a3 contentEdgeInsetsForProposedInsets:(UIEdgeInsets)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)buttonViewDidReceiveTouchUpInside:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setPrefersControlsHidden:(BOOL)a3;
- (void)updateControlsAlpha;
- (void)updateProgress;
- (void)viewModelDidUpdateValuesFromOldValues:(id)a3;
@end

@implementation PGControlsView

- (PGControlsView)initWithFrame:(CGRect)a3 viewModel:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v62[6] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [v10 values];
  v60.receiver = self;
  v60.super_class = PGControlsView;
  v12 = -[PGLayoutContainerView initWithFrame:wantsGlassBackground:](&v60, sel_initWithFrame_wantsGlassBackground_, [v11 controlsViewWantsGlassBackground], x, y, width, height);

  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, a4);
    v13 = [v10 values];
    v12->_wantsGlassBackground = [v13 controlsViewWantsGlassBackground];

    if (!v12->_wantsGlassBackground)
    {
      v14 = [PGCABackdropLayerView alloc];
      [(PGControlsView *)v12 bounds];
      v15 = [(PGCABackdropLayerView *)v14 initWithFrame:1 captureOnly:?];
      captureOnlyView = v12->_captureOnlyView;
      v12->_captureOnlyView = v15;

      [(PGControlsView *)v12 addSubview:v12->_captureOnlyView];
    }

    v17 = [PGDimmingView alloc];
    [(PGControlsView *)v12 bounds];
    v18 = [(PGDimmingView *)v17 initWithFrame:v12->_wantsGlassBackground wantsGlassBackground:?];
    dimmingView = v12->_dimmingView;
    v12->_dimmingView = v18;

    [(PGControlsView *)v12 addSubview:v12->_dimmingView];
    v20 = [PGLayoutContainerView alloc];
    [(PGControlsView *)v12 bounds];
    v21 = [(PGLayoutContainerView *)v20 initWithFrame:v12->_wantsGlassBackground wantsGlassBackground:?];
    hidableItemsLayoutContainerView = v12->_hidableItemsLayoutContainerView;
    v12->_hidableItemsLayoutContainerView = v21;

    [(PGControlsView *)v12 addSubview:v12->_hidableItemsLayoutContainerView];
    v23 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    cancelButton = v12->_cancelButton;
    v12->_cancelButton = v23;

    v25 = v12->_cancelButton;
    if (v12->_wantsGlassBackground)
    {
      [(PGButtonView *)v25 setCircular:1];
    }

    else
    {
      [(PGMaterialView *)v25 _setContinuousCornerRadius:6.0];
    }

    v26 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    restoreButton = v12->_restoreButton;
    v12->_restoreButton = v26;

    v28 = v12->_restoreButton;
    v55 = v10;
    if (v12->_wantsGlassBackground)
    {
      [(PGButtonView *)v28 setCircular:1];
    }

    else
    {
      [(PGMaterialView *)v28 _setContinuousCornerRadius:6.0];
    }

    v29 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    skipBackButton = v12->_skipBackButton;
    v12->_skipBackButton = v29;

    [(PGButtonView *)v12->_skipBackButton setGlyphSize:26.0];
    [(PGButtonView *)v12->_skipBackButton setCircular:1];
    v31 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    actionButton = v12->_actionButton;
    v12->_actionButton = v31;

    [(PGButtonView *)v12->_actionButton setGlyphSize:38.0];
    [(PGButtonView *)v12->_actionButton setCircular:1];
    v33 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    skipForwardButton = v12->_skipForwardButton;
    v12->_skipForwardButton = v33;

    [(PGButtonView *)v12->_skipForwardButton setGlyphSize:24.0];
    [(PGButtonView *)v12->_skipForwardButton setCircular:1];
    v35 = [PGButtonView buttonWithDelegate:v12 wantsGlassBackground:v12->_wantsGlassBackground];
    liveIndicatorBadgeButton = v12->_liveIndicatorBadgeButton;
    v12->_liveIndicatorBadgeButton = v35;

    [(PGButtonView *)v12->_liveIndicatorBadgeButton setEnabled:0];
    [(PGMaterialView *)v12->_liveIndicatorBadgeButton _setContinuousCornerRadius:6.0];
    v37 = v12->_liveIndicatorBadgeButton;
    v38 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.75];
    [(PGButtonView *)v37 setTintColor:v38];

    [(UIView *)v12->_liveIndicatorBadgeButton PG_updateVibrancyEffectForTintColor];
    v62[0] = v12->_restoreButton;
    v62[1] = v12->_cancelButton;
    v62[2] = v12->_skipBackButton;
    v62[3] = v12->_actionButton;
    v62[4] = v12->_skipForwardButton;
    v62[5] = v12->_liveIndicatorBadgeButton;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:6];
    allButtons = v12->_allButtons;
    v12->_allButtons = v39;

    v41 = [PGProgressIndicator alloc];
    [(PGControlsView *)v12 _progressIndicatorFrameWithScaling:1.0];
    v42 = [(PGProgressIndicator *)v41 initWithFrame:v12->_wantsGlassBackground wantsGlassBackground:?];
    progressIndicator = v12->_progressIndicator;
    v12->_progressIndicator = v42;

    [(PGLayoutContainerView *)v12->_hidableItemsLayoutContainerView addSubview:v12->_progressIndicator];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = v12->_allButtons;
    v45 = [(NSArray *)v44 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v57;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v57 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [(PGLayoutContainerView *)v12->_hidableItemsLayoutContainerView addSubview:*(*(&v56 + 1) + 8 * i)];
        }

        v46 = [(NSArray *)v44 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v46);
    }

    v49 = [PGPrerollIndicatorView alloc];
    v50 = [(PGPrerollIndicatorView *)v49 initWithFrame:v12->_viewModel viewModel:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    prerollIndicatorView = v12->_prerollIndicatorView;
    v12->_prerollIndicatorView = v50;

    [(PGControlsView *)v12 addSubview:v12->_prerollIndicatorView];
    v52 = [[PGDisplayLink alloc] initWithOwner:v12 linkFired:&__block_literal_global_7];
    displayLinkForProgressUpdates = v12->_displayLinkForProgressUpdates;
    v12->_displayLinkForProgressUpdates = v52;

    v10 = v55;
    if (v12->_wantsGlassBackground || ([(UIView *)v12 PG_recursivelyDisallowGroupBlending], v12->_wantsGlassBackground))
    {
      [(UIView *)v12->_hidableItemsLayoutContainerView PG_setGlassGroupEnabled:1];
    }
  }

  return v12;
}

- (void)dealloc
{
  [(PGDisplayLink *)self->_displayLinkForProgressUpdates invalidate];
  [(PGProgressIndicator *)self->_progressIndicator setIncludesWaitingToPlayIndicator:0];
  v3.receiver = self;
  v3.super_class = PGControlsView;
  [(PGControlsView *)&v3 dealloc];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = PGControlsView;
  [(PGControlsView *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_dimmingView _setContinuousCornerRadius:a3];
  [(UIView *)self->_contentLoadingIndicatorContainerView _setContinuousCornerRadius:a3];
}

- (void)viewModelDidUpdateValuesFromOldValues:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v80 = a3;
  v4 = [(PGControlsViewModel *)self->_viewModel values];
  -[PGButtonView setHidden:](self->_restoreButton, "setHidden:", [v4 includesRestoreButton] ^ 1);
  -[PGButtonView setHidden:](self->_skipBackButton, "setHidden:", [v4 includesSkipBackButton] ^ 1);
  -[PGButtonView setHidden:](self->_actionButton, "setHidden:", [v4 includesActionButton] ^ 1);
  -[PGButtonView setHidden:](self->_skipForwardButton, "setHidden:", [v4 includesSkipForwardButton] ^ 1);
  -[PGButtonView setHidden:](self->_cancelButton, "setHidden:", [v4 includesCancelButton] ^ 1);
  -[PGButtonView setHidden:](self->_liveIndicatorBadgeButton, "setHidden:", [v4 includesLiveIndicatorBadge] ^ 1);
  -[PGButtonView setEnabled:](self->_skipBackButton, "setEnabled:", [v4 isSkipBackButtonEnabled]);
  -[PGButtonView setEnabled:](self->_actionButton, "setEnabled:", [v4 isActionButtonEnabled]);
  -[PGButtonView setEnabled:](self->_skipForwardButton, "setEnabled:", [v4 isSkipForwardButtonEnabled]);
  cancelButton = self->_cancelButton;
  v6 = [v4 cancelButtonImageTintColor];
  if (v6)
  {
    [(PGButtonView *)cancelButton setTintColor:v6];
  }

  else
  {
    v7 = [(PGButtonView *)self->_cancelButton enabledTintColor];
    [(PGButtonView *)cancelButton setTintColor:v7];
  }

  v8 = self->_cancelButton;
  v9 = [v4 cancelButtonBackgroundTintColor];
  [(PGMaterialView *)v8 setBackgroundColor:v9];

  skipBackButton = self->_skipBackButton;
  v11 = [v4 skipBackButtonImageTintColor];
  if (v11)
  {
    [(PGButtonView *)skipBackButton setTintColor:v11];
  }

  else
  {
    v12 = [(PGButtonView *)self->_actionButton enabledTintColor];
    [(PGButtonView *)skipBackButton setTintColor:v12];
  }

  v13 = self->_skipBackButton;
  v14 = [v4 skipBackButtonBackgroundTintColor];
  [(PGMaterialView *)v13 setBackgroundColor:v14];

  skipForwardButton = self->_skipForwardButton;
  v16 = [v4 skipForwardButtonImageTintColor];
  if (v16)
  {
    [(PGButtonView *)skipForwardButton setTintColor:v16];
  }

  else
  {
    v17 = [(PGButtonView *)self->_actionButton enabledTintColor];
    [(PGButtonView *)skipForwardButton setTintColor:v17];
  }

  v18 = self->_skipForwardButton;
  v19 = [v4 skipForwardButtonBackgroundTintColor];
  [(PGMaterialView *)v18 setBackgroundColor:v19];

  actionButton = self->_actionButton;
  v21 = [v4 actionButtonImageTintColor];
  if (v21)
  {
    [(PGButtonView *)actionButton setTintColor:v21];
  }

  else
  {
    v22 = [(PGButtonView *)self->_actionButton enabledTintColor];
    [(PGButtonView *)actionButton setTintColor:v22];
  }

  v23 = self->_actionButton;
  v24 = [v4 actionButtonBackgroundTintColor];
  [(PGMaterialView *)v23 setBackgroundColor:v24];

  v25 = self->_cancelButton;
  v26 = [v4 cancelButtonSystemImageName];
  [(PGButtonView *)v25 setSystemImageName:v26];

  restoreButton = self->_restoreButton;
  v28 = [v4 restoreButtonSystemImageName];
  [(PGButtonView *)restoreButton setSystemImageName:v28];

  v29 = self->_skipBackButton;
  v30 = [v4 skipBackButtonSystemImageName];
  [(PGButtonView *)v29 setSystemImageName:v30];

  v31 = self->_actionButton;
  v32 = [v4 actionButtonSystemImageName];
  [(PGButtonView *)v31 setSystemImageName:v32];

  v33 = self->_skipForwardButton;
  v34 = [v4 skipForwardButtonSystemImageName];
  [(PGButtonView *)v33 setSystemImageName:v34];

  v35 = self->_restoreButton;
  v36 = [(PGButtonView *)v35 enabledTintColor];
  [(PGButtonView *)v35 setTintColor:v36];

  v37 = self->_cancelButton;
  v38 = [v4 cancelButtonAccessibilityIdentifier];
  [(PGButtonView *)v37 setAccessibilityIdentifier:v38];

  v39 = self->_restoreButton;
  v40 = [v4 restoreButtonAccessibilityIdentifier];
  [(PGButtonView *)v39 setAccessibilityIdentifier:v40];

  v41 = self->_skipBackButton;
  v42 = [v4 skipBackButtonAccessibilityIdentifier];
  [(PGButtonView *)v41 setAccessibilityIdentifier:v42];

  v43 = self->_actionButton;
  v44 = [v4 actionButtonAccessibilityIdentifier];
  [(PGButtonView *)v43 setAccessibilityIdentifier:v44];

  v45 = self->_skipForwardButton;
  v46 = [v4 skipForwardButtonAccessibilityIdentifier];
  [(PGButtonView *)v45 setAccessibilityIdentifier:v46];

  v47 = self->_cancelButton;
  v48 = [v4 cancelButtonCustomImage];
  [(PGButtonView *)v47 setImage:v48];

  -[PGMaterialView setBackdropHidden:](self->_cancelButton, "setBackdropHidden:", [v4 cancelButtonWantsBackground] ^ 1);
  -[PGMaterialView setBackdropHidden:](self->_restoreButton, "setBackdropHidden:", [v4 restoreButtonWantsBackground] ^ 1);
  -[PGMaterialView setBackdropHidden:](self->_skipBackButton, "setBackdropHidden:", [v4 actionButtonsWantBackground] ^ 1);
  -[PGMaterialView setBackdropHidden:](self->_actionButton, "setBackdropHidden:", [v4 actionButtonsWantBackground] ^ 1);
  -[PGMaterialView setBackdropHidden:](self->_skipForwardButton, "setBackdropHidden:", [v4 actionButtonsWantBackground] ^ 1);
  if (([v4 controlsViewWantsGlassBackground] & 1) == 0)
  {
    v49 = [v4 actionButtonsWantBackground];
    if (v49)
    {
      v50 = 23.0;
    }

    else
    {
      v50 = 21.0;
    }

    if (v49)
    {
      v51 = 23.0;
    }

    else
    {
      v51 = 30.0;
    }

    [(PGButtonView *)self->_skipBackButton setGlyphSize:v50];
    [(PGButtonView *)self->_actionButton setGlyphSize:v51];
    [(PGButtonView *)self->_skipForwardButton setGlyphSize:v50];
  }

  -[PGProgressIndicator setHidden:](self->_progressIndicator, "setHidden:", [v4 includesProgressBar] ^ 1);
  [(PGControlsView *)self updateProgress];
  [(UIView *)self->_dimmingView setHidden:[(PGControlsView *)self _showsDimmingView]^ 1];
  v52 = [v4 isPrerollActive];
  v53 = v52 ^ [(PGPrerollIndicatorView *)self->_prerollIndicatorView isHidden];
  if ((v53 & 1) == 0)
  {
    [(PGPrerollIndicatorView *)self->_prerollIndicatorView setHidden:v52 ^ 1u];
    progressIndicator = self->_progressIndicator;
    v55 = [v4 prerollTintColor];
    [(PGProgressIndicator *)progressIndicator setCustomElapsedTrackTintColor:v55];
  }

  v56 = v53 ^ 1;
  if (self->_wantsGlassBackground)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v57 = self->_allButtons;
    v58 = [(NSArray *)v57 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v82;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v82 != v60)
          {
            objc_enumerationMutation(v57);
          }

          [*(*(&v81 + 1) + 8 * i) PG_setGlassBackgroundEnabled:1];
        }

        v59 = [(NSArray *)v57 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v59);
    }

    [(UIView *)self->_progressIndicator PG_setGlassBackgroundEnabled:1];
  }

  v62 = [v80 cancelButtonWantsBackground];
  v63 = v62 ^ [v4 cancelButtonWantsBackground] | v56;
  v64 = [v80 restoreButtonWantsBackground];
  v65 = v64 ^ [v4 restoreButtonWantsBackground];
  v66 = [v80 actionButtonsWantBackground];
  v67 = v66 ^ [v4 actionButtonsWantBackground];
  v68 = [v80 includesLiveIndicatorBadge];
  v69 = v68 ^ [v4 includesLiveIndicatorBadge];
  v70 = [v80 includesContentLoadingIndicator];
  v71 = v70 ^ [v4 includesContentLoadingIndicator] | v69 | v67 | v65 | v63;
  v72 = [v80 cancelButtonCustomText];
  v73 = [v4 cancelButtonCustomText];
  if (v72 != v73)
  {
    v74 = [v80 cancelButtonCustomText];
    v75 = [v4 cancelButtonCustomText];
    v76 = [v74 isEqualToString:v75] ^ 1;

    LOBYTE(v71) = v76 | v71;
  }

  v77 = [v80 cancelButtonCustomImage];
  v78 = [v4 cancelButtonCustomImage];

  if (v77 != v78 || (v71 & 1) != 0)
  {
    [(PGControlsView *)self setNeedsLayout];
    [(PGControlsView *)self layoutIfNeeded];
  }

  [(PGPrerollIndicatorView *)self->_prerollIndicatorView updateValues];
  v79 = [(PGControlsView *)self PG_backdropGroupLeader];
  [v79 updateEffects];
}

- (void)updateProgress
{
  progressIndicator = self->_progressIndicator;
  v4 = [(PGControlsViewModel *)self->_viewModel playbackState];
  [v4 normalizedProgress];
  [(PGProgressIndicator *)progressIndicator setProgress:?];

  if ([(PGControlsView *)self prefersControlsHidden]|| ([(PGControlsView *)self window], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    displayLinkForProgressUpdates = self->_displayLinkForProgressUpdates;
    v11 = 0;
  }

  else
  {
    v6 = [(PGControlsView *)self traitCollection];
    [v6 displayScale];
    v8 = v7;

    [(PGProgressIndicator *)self->_progressIndicator frame];
    Width = CGRectGetWidth(v16);
    v10 = self->_displayLinkForProgressUpdates;
    v11 = [(PGControlsViewModel *)self->_viewModel recommendedUpdateCadenceForProgressBarWithWidthInPixels:fmax(v8, 1.0) * Width];
    displayLinkForProgressUpdates = v10;
  }

  [(PGDisplayLink *)displayLinkForProgressUpdates setPreferredFramesPerSecond:v11];
  v13 = self->_progressIndicator;
  v14 = [(PGControlsViewModel *)self->_viewModel values];
  -[PGProgressIndicator setIncludesWaitingToPlayIndicator:](v13, "setIncludesWaitingToPlayIndicator:", [v14 includesWaitingToPlayIndicator]);
}

- (void)updateControlsAlpha
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(PGControlsView *)self prefersControlsHidden])
  {
    if (self->_wantsGlassBackground)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = self->_allButtons;
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v17 + 1) + 8 * i);
            [v8 setAlpha:{0.0, v17}];
            [v8 updateTraitsIfNeeded];
          }

          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v5);
      }

      [(PGProgressIndicator *)self->_progressIndicator setAlpha:0.0];
      [(PGProgressIndicator *)self->_progressIndicator updateTraitsIfNeeded];
    }

    [(UIView *)self->_dimmingView setAlpha:0.0, v17];
  }

  else
  {
    [(UIView *)self->_dimmingView setHidden:[(PGControlsView *)self _showsDimmingView]^ 1];
    [(UIView *)self->_dimmingView setAlpha:1.0];
    if (self->_wantsGlassBackground)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = self->_allButtons;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * j);
            [v14 setAlpha:1.0];
            [v14 updateTraitsIfNeeded];
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      [(PGProgressIndicator *)self->_progressIndicator setAlpha:1.0];
      [(PGProgressIndicator *)self->_progressIndicator updateTraitsIfNeeded];
    }
  }

  v15 = [(PGControlsViewModel *)self->_viewModel values];
  v16 = [v15 isPrerollActive];

  if (v16)
  {
    [(PGControlsView *)self setNeedsLayout];
    [(PGControlsView *)self layoutIfNeeded];
  }
}

- (void)setPrefersControlsHidden:(BOOL)a3
{
  if (self->_prefersControlsHidden != a3)
  {
    self->_prefersControlsHidden = a3;
    [(PGControlsView *)self updateProgress];
    v5 = [(PGControlsView *)self PG_backdropGroupLeader];
    [v5 updateEffects];
  }
}

- (BOOL)PG_preferredVisibilityForView:(id)a3
{
  v4 = a3;
  v5 = [(PGButtonView *)v4 isHidden];
  if (![(PGControlsView *)self prefersControlsHidden])
  {
    v8 = [(PGControlsViewModel *)self->_viewModel values];
    v6 = v8;
    if (self->_cancelButton == v4)
    {
      v9 = [v8 includesCancelButton];
    }

    else if (self->_restoreButton == v4)
    {
      v9 = [v8 includesRestoreButton];
    }

    else if (self->_skipBackButton == v4)
    {
      v9 = [v8 includesSkipBackButton];
    }

    else if (self->_actionButton == v4)
    {
      v9 = [v8 includesActionButton];
    }

    else
    {
      if (self->_skipForwardButton != v4)
      {
        goto LABEL_16;
      }

      v9 = [v8 includesSkipForwardButton];
    }

    LOBYTE(v5) = v9;
    goto LABEL_16;
  }

  if ([(PGButtonView *)v4 isDescendantOfView:self->_prerollIndicatorView])
  {
    v6 = [(PGControlsViewModel *)self->_viewModel values];
    v7 = [v6 prerollAttributes];
    LOBYTE(v5) = v7 != 0;

LABEL_16:
    goto LABEL_17;
  }

  v5 &= [(PGButtonView *)v4 isDescendantOfView:self]^ 1;
LABEL_17:

  return v5;
}

- (void)layoutSubviews
{
  v244 = *MEMORY[0x1E69E9840];
  v236.receiver = self;
  v236.super_class = PGControlsView;
  [(PGControlsView *)&v236 layoutSubviews];
  captureOnlyView = self->_captureOnlyView;
  [(PGControlsView *)self bounds];
  [(PGCABackdropLayerView *)captureOnlyView setFrame:?];
  dimmingView = self->_dimmingView;
  [(PGControlsView *)self bounds];
  [(UIView *)dimmingView setFrame:?];
  hidableItemsLayoutContainerView = self->_hidableItemsLayoutContainerView;
  [(PGControlsView *)self bounds];
  [(PGLayoutContainerView *)hidableItemsLayoutContainerView setFrame:?];
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v6 = self->_allButtons;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v232 objects:v243 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v233;
    v224 = *(MEMORY[0x1E695EFD0] + 16);
    v226 = *MEMORY[0x1E695EFD0];
    v221 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v233 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v232 + 1) + 8 * i);
        *&v231.a = v226;
        *&v231.c = v224;
        *&v231.tx = v221;
        [v11 setTransform:&v231];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v232 objects:v243 count:16];
    }

    while (v8);
  }

  if (self->_wantsGlassBackground)
  {
    [(PGControlsView *)self bounds];
    [PGControlsViewLayoutMetrics scaleForViewSize:v12, v13];
    v15 = v14;
    [(PGControlsView *)self bounds];
    [PGControlsViewLayoutMetrics spacingScaleForViewSize:v16, v17];
    v208 = v18;
    memset(&v231, 0, sizeof(v231));
    CGAffineTransformMakeScale(&v231, v15, v15);
    v230 = v231;
    IsIdentity = CGAffineTransformIsIdentity(&v230);
    +[PGControlsViewLayoutMetrics defaultControlsViewPadding];
    v21 = v20;
    +[PGControlsViewLayoutMetrics defaultProgressIndicatorHeight];
    v23 = v22;
    +[PGControlsViewLayoutMetrics defaultPrerollIndicatorHeight];
    v25 = v24;
    v26 = [(PGControlsViewModel *)self->_viewModel values];
    v27 = [v26 includesLiveIndicatorBadge];

    if (v27)
    {
      v28 = [(PGButtonView *)self->_liveIndicatorBadgeButton text];

      if (!v28)
      {
        liveIndicatorBadgeButton = self->_liveIndicatorBadgeButton;
        v30 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
        [(PGButtonView *)liveIndicatorBadgeButton setFont:v30];

        v31 = self->_liveIndicatorBadgeButton;
        v32 = PGLocalizedString(@"LIVE_INDICATOR_BADGE");
        [(PGButtonView *)v31 setText:v32];
      }

      v33 = [(PGButtonView *)self->_liveIndicatorBadgeButton text];
      v241 = *MEMORY[0x1E69DB648];
      v34 = [(PGButtonView *)self->_liveIndicatorBadgeButton font];
      v242 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
      [v33 sizeWithAttributes:v35];
    }

    +[PGControlsViewLayoutMetrics defaultPrerollLiveIndicatorPadding];
    v63 = v62;
    +[PGControlsViewLayoutMetrics defaultRestoreCancelButtonsSize];
    v210 = v64;
    v214 = v65;
    +[PGControlsViewLayoutMetrics defaultActionButtonSize];
    v218 = v67;
    v219 = v66;
    +[PGControlsViewLayoutMetrics defaultSkipButtonsSize];
    v217 = v68;
    v225 = v69;
    +[PGControlsViewLayoutMetrics defaultRestoreCancelButtonsGlyphSize];
    v212 = v70;
    +[PGControlsViewLayoutMetrics defaultActionButtonGlyphSize];
    v222 = v71;
    +[PGControlsViewLayoutMetrics defaultSkipButtonsGlyphSize];
    v220 = v72;
    [(PGControlsView *)self bounds];
    v73 = fmax(CGRectGetWidth(v248) + v21 * -2.0 * v15, 0.0);
    [(PGControlsView *)self bounds];
    v209 = v15 * v21;
    [(PGProgressIndicator *)self->_progressIndicator setFrame:v15 * v21, CGRectGetMaxY(v249) - (v21 + v23) * v15, v73, v15 * v23];
    [(PGControlsView *)self updateProgress];
    [(PGProgressIndicator *)self->_progressIndicator frame];
    Width = CGRectGetWidth(v250);
    v75 = v15 * v25;
    [(PGProgressIndicator *)self->_progressIndicator frame];
    MinX = CGRectGetMinX(v251);
    [(PGProgressIndicator *)self->_progressIndicator frame];
    v77 = CGRectGetMaxY(v252) - v25 * v15;
    if (![(PGControlsView *)self prefersControlsHidden])
    {
      [(PGProgressIndicator *)self->_progressIndicator frame];
      v77 = v77 - (CGRectGetHeight(v253) + v63 * v15);
    }

    [(PGPrerollIndicatorView *)self->_prerollIndicatorView setFrame:MinX, v77, Width, v75];
    v78 = [(PGControlsViewModel *)self->_viewModel values];
    v79 = [v78 includesLiveIndicatorBadge];

    v228 = v15;
    if (v79)
    {
      v80 = *MEMORY[0x1E695EFF8];
      v81 = *(MEMORY[0x1E695EFF8] + 8);
      UISizeRoundToScale();
      [(PGButtonView *)self->_liveIndicatorBadgeButton setFrame:v80, v81, v82, v83];
      v84 = self->_liveIndicatorBadgeButton;
      v230 = v231;
      [(PGButtonView *)v84 setTransform:&v230];
      [(PGProgressIndicator *)self->_progressIndicator frame];
      v85 = CGRectGetMinX(v254);
      [(PGProgressIndicator *)self->_progressIndicator frame];
      v86 = CGRectGetMinY(v255) - v63 * v15;
      [(PGButtonView *)self->_liveIndicatorBadgeButton frame];
      v87 = v86 - CGRectGetHeight(v256);
      v15 = v228;
      v88 = self->_liveIndicatorBadgeButton;
      [(PGButtonView *)v88 frame];
      v89 = CGRectGetWidth(v257);
      [(PGButtonView *)self->_liveIndicatorBadgeButton frame];
      [(PGButtonView *)v88 setFrame:v85, v87, v89, CGRectGetHeight(v258)];
    }

    [(PGButtonView *)self->_cancelButton setFrame:v21, v21, v210, v214];
    restoreButton = self->_restoreButton;
    [(PGControlsView *)self bounds];
    [(PGButtonView *)restoreButton setFrame:CGRectGetMaxX(v259) - v210 - v21, v21, v210, v214];
    [(PGButtonView *)self->_cancelButton setGlyphSize:v212];
    [(PGButtonView *)self->_restoreButton setGlyphSize:v212];
    if (!IsIdentity)
    {
      cancelButton = self->_cancelButton;
      v230 = v231;
      [(PGButtonView *)cancelButton setTransform:&v230];
      v92 = self->_restoreButton;
      v230 = v231;
      [(PGButtonView *)v92 setTransform:&v230];
      v93 = v231.tx + v21 * v231.c + v231.a * v21;
      v215 = v231.ty + v21 * v231.d + v231.b * v21;
      [(PGButtonView *)self->_cancelButton frame];
      v94 = CGRectGetWidth(v260);
      [(PGButtonView *)self->_cancelButton frame];
      Height = CGRectGetHeight(v261);
      [(PGControlsView *)self bounds];
      MaxX = CGRectGetMaxX(v262);
      [(PGButtonView *)self->_restoreButton frame];
      v97 = MaxX - CGRectGetWidth(v263) - v21 * v15;
      [(PGButtonView *)self->_restoreButton frame];
      v98 = CGRectGetWidth(v264);
      [(PGButtonView *)self->_restoreButton frame];
      v99 = CGRectGetHeight(v265);
      [(PGButtonView *)self->_cancelButton setFrame:v93, v215, v94, Height];
      [(PGButtonView *)self->_restoreButton setFrame:v97, v209, v98, v99];
    }

    v100 = [(PGControlsViewModel *)self->_viewModel values];
    v101 = [v100 includesLiveIndicatorBadge];

    v206 = v21;
    if (v101)
    {
      [(PGProgressIndicator *)self->_progressIndicator frame];
      MidY = CGRectGetMaxY(v266) * 0.5;
    }

    else
    {
      [(PGControlsView *)self bounds];
      MidY = CGRectGetMidY(v267);
    }

    [(PGControlsView *)self bounds];
    MidX = CGRectGetMidX(v268);
    v104 = MidX - v219 * 0.5;
    v105 = MidY - v218 * 0.5;
    v106 = v219 - v217 * 0.5;
    v213 = MidX;
    v216 = MidY;
    v107 = MidY - v225 * 0.5;
    v211 = v106;
    v108 = v106 + MidX + v219 * 0.5 + v217 * 0.5 - v217 * 0.5;
    [(PGButtonView *)self->_skipBackButton setFrame:MidX - v106 - v219 * 0.5 - v217 * 0.5 - v217 * 0.5, v107, v217, v225];
    [(PGButtonView *)self->_actionButton setFrame:v104, v105, v219, v218];
    [(PGButtonView *)self->_skipForwardButton setFrame:v108, v107, v217, v225];
    [(PGButtonView *)self->_skipBackButton setGlyphSize:v220];
    [(PGButtonView *)self->_actionButton setGlyphSize:v222];
    [(PGButtonView *)self->_skipForwardButton setGlyphSize:v220];
    if (!IsIdentity)
    {
      [(PGControlsView *)self bounds];
      if (!CGRectIsEmpty(v269))
      {
        skipBackButton = self->_skipBackButton;
        v230 = v231;
        [(PGButtonView *)skipBackButton setTransform:&v230];
        actionButton = self->_actionButton;
        v230 = v231;
        [(PGButtonView *)actionButton setTransform:&v230];
        skipForwardButton = self->_skipForwardButton;
        v230 = v231;
        [(PGButtonView *)skipForwardButton setTransform:&v230];
        [(PGButtonView *)self->_actionButton setCenter:v213, v216];
        [(PGControlsView *)self bounds];
        v112 = CGRectGetMidX(v270);
        [(PGButtonView *)self->_actionButton frame];
        v113 = v112 - CGRectGetWidth(v271) * 0.5;
        [(PGButtonView *)self->_skipBackButton frame];
        v114 = v113 - CGRectGetWidth(v272) - v207 * v228;
        if (v208 * v211 < v114)
        {
          v114 = v208 * v211;
        }

        if (v114 >= 0.0)
        {
          v115 = v114;
        }

        else
        {
          v115 = 0.0;
        }

        [(PGButtonView *)self->_actionButton frame];
        v116 = v213 - v115 - CGRectGetWidth(v273) * 0.5;
        [(PGButtonView *)self->_skipBackButton frame];
        v117 = v116 - CGRectGetWidth(v274) * 0.5;
        [(PGButtonView *)self->_actionButton frame];
        v118 = v213 + v115 + CGRectGetWidth(v275) * 0.5;
        [(PGButtonView *)self->_skipForwardButton frame];
        v119 = v118 + CGRectGetWidth(v276) * 0.5;
        [(PGButtonView *)self->_skipBackButton setCenter:v117, v216];
        [(PGButtonView *)self->_skipForwardButton setCenter:v119, v216];
      }
    }

    v120 = [(PGControlsViewModel *)self->_viewModel values];
    v121 = [v120 includesContentLoadingIndicator];

    if (v121)
    {
      if (!self->_contentLoadingIndicator)
      {
        v182 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
        contentLoadingIndicator = self->_contentLoadingIndicator;
        self->_contentLoadingIndicator = v182;

        v184 = objc_alloc(MEMORY[0x1E69DD250]);
        [(PGControlsView *)self bounds];
        v185 = [v184 initWithFrame:?];
        contentLoadingIndicatorContainerView = self->_contentLoadingIndicatorContainerView;
        self->_contentLoadingIndicatorContainerView = v185;

        [(PGLayoutContainerView *)self->_hidableItemsLayoutContainerView insertSubview:self->_contentLoadingIndicatorContainerView atIndex:0];
        [(UIView *)self->_contentLoadingIndicatorContainerView addSubview:self->_contentLoadingIndicator];
        v187 = self->_contentLoadingIndicatorContainerView;
        v188 = [MEMORY[0x1E69DC888] darkGrayColor];
        [(UIView *)v187 setBackgroundColor:v188];

        v189 = self->_contentLoadingIndicatorContainerView;
        [(UIView *)self->_dimmingView _continuousCornerRadius];
        [(UIView *)v189 _setContinuousCornerRadius:?];
      }

      v190 = self->_contentLoadingIndicatorContainerView;
      [(PGControlsView *)self bounds];
      [(UIView *)v190 setFrame:?];
      v191 = self->_contentLoadingIndicator;
      v230 = v231;
      [(UIActivityIndicatorView *)v191 setTransform:&v230];
      v192 = self->_contentLoadingIndicator;
      [(UIView *)self->_contentLoadingIndicatorContainerView bounds];
      UIRectGetCenter();
      [(UIActivityIndicatorView *)v192 setCenter:?];
    }

    [(UIView *)self->_contentLoadingIndicatorContainerView setHidden:v121 ^ 1u];
    if ((v121 ^ 1) == [(UIActivityIndicatorView *)self->_contentLoadingIndicator isAnimating])
    {
      v193 = self->_contentLoadingIndicator;
      if (v121)
      {
        [(UIActivityIndicatorView *)v193 startAnimating];
      }

      else
      {
        [(UIActivityIndicatorView *)v193 stopAnimating];
      }
    }
  }

  else
  {
    [(PGControlsViewModel *)self->_viewModel preferredMinimumWidth];
    v37 = v36;
    [(PGControlsView *)self bounds];
    v38 = CGRectGetWidth(v245);
    [(PGControlsView *)self bounds];
    v39 = CGRectGetHeight(v246);
    v40 = v38 / v37;
    if (v38 / v37 > 1.0)
    {
      v40 = 1.0;
    }

    v41 = v39 / 110.0;
    if (v39 / 110.0 > 1.0)
    {
      v41 = 1.0;
    }

    if (v40 >= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v40;
    }

    v43 = v39 / 136.0;
    memset(&v231.c, 0, 32);
    if (v43 <= 1.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 1.0;
    }

    *&v231.a = 0uLL;
    CGAffineTransformMakeScale(&v231, v42, v42);
    memset(&v230, 0, sizeof(v230));
    CGAffineTransformMakeScale(&v230, v42 * 0.5 + 0.5, v42 * 0.5 + 0.5);
    v229 = v231;
    v227 = CGAffineTransformIsIdentity(&v229);
    v45 = self->_restoreButton;
    [(PGControlsView *)self bounds];
    v46 = 32.0;
    [(PGButtonView *)v45 setFrame:CGRectGetMaxX(v247) + -32.0 + -9.0, 9.0, 32.0, 25.0];
    v47 = [(PGMaterialView *)self->_restoreButton isBackdropHidden];
    v48 = 15.0;
    if (!v47)
    {
      v48 = 13.0;
    }

    [(PGButtonView *)self->_restoreButton setGlyphSize:v48];
    v49 = [(PGControlsViewModel *)self->_viewModel values];
    v50 = [v49 cancelButtonCustomText];

    v51 = [(PGControlsViewModel *)self->_viewModel values];
    v52 = [v51 cancelButtonCustomText];

    if (v50)
    {
      v53 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
      v54 = v53;
      v55 = 12.5;
      if (v53)
      {
        v239 = *MEMORY[0x1E69DB648];
        v240 = v53;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
        [v52 sizeWithAttributes:v56];
        v58 = v57;

        _NF = v42 > 0.0 && v42 < 1.0;
        v60 = v38;
        if (_NF)
        {
          v60 = v38 * (1.0 / v42);
        }

        v61 = v60 + -27.0 + -32.0;
        if (v58 + 27.0 + 6.0 >= v61)
        {
          v46 = v61;
        }

        else
        {
          v46 = v58 + 27.0 + 6.0;
        }
      }

      else
      {
        v46 = 32.0;
      }
    }

    else
    {
      v54 = 0;
      v55 = 6.0;
    }

    v122 = [(PGMaterialView *)self->_cancelButton isBackdropHidden];
    v123 = 17.0;
    if (!v122)
    {
      v123 = 13.0;
    }

    if (v50)
    {
      v123 = 11.0;
    }

    [(PGButtonView *)self->_cancelButton setGlyphSize:v123];
    [(PGButtonView *)self->_cancelButton setText:v52];
    [(PGButtonView *)self->_cancelButton setFont:v54];
    v124 = self->_cancelButton;
    v125 = [(PGControlsViewModel *)self->_viewModel values];
    v126 = [v125 cancelButtonCustomImage];
    [(PGButtonView *)v124 setImage:v126];

    [(PGButtonView *)self->_cancelButton setFrame:9.0, 9.0, v46, 25.0];
    [(PGMaterialView *)self->_cancelButton _setContinuousCornerRadius:v55];
    if (!v227)
    {
      v127 = self->_cancelButton;
      v229 = v231;
      [(PGButtonView *)v127 setTransform:&v229];
      __asm { FMOV            V3.2D, #9.0 }

      [(PGButtonView *)self->_cancelButton setFrameOrigin:vaddq_f64(*&v230.tx, vmlaq_f64(vmulq_f64(*&v230.c, _Q3), _Q3, *&v230.a))];
      v132 = self->_restoreButton;
      v229 = v231;
      [(PGButtonView *)v132 setTransform:&v229];
      [(PGButtonView *)self->_cancelButton origin];
      v134 = v133;
      v136 = v135;
      [(PGControlsView *)self bounds];
      v137 = CGRectGetMaxX(v277);
      [(PGButtonView *)self->_restoreButton frame];
      [(PGButtonView *)self->_restoreButton setFrameOrigin:v137 - (v134 + CGRectGetWidth(v278)), v136];
    }

    [(PGControlsView *)self _progressIndicatorFrameWithScaling:v42];
    [(PGProgressIndicator *)self->_progressIndicator setFrame:?];
    [(PGControlsView *)self updateProgress];
    [(PGControlsView *)self _prerollIndicatorFrameWithScaling:v42];
    [(PGPrerollIndicatorView *)self->_prerollIndicatorView setFrame:?];
    v138 = [(PGControlsViewModel *)self->_viewModel values];
    v139 = [v138 includesLiveIndicatorBadge];

    if (v139)
    {
      v140 = [(PGButtonView *)self->_liveIndicatorBadgeButton text];

      if (!v140)
      {
        v141 = self->_liveIndicatorBadgeButton;
        v142 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
        [(PGButtonView *)v141 setFont:v142];

        v143 = self->_liveIndicatorBadgeButton;
        v144 = PGLocalizedString(@"LIVE_INDICATOR_BADGE");
        [(PGButtonView *)v143 setText:v144];
      }

      v145 = [(PGButtonView *)self->_liveIndicatorBadgeButton text];
      v237 = *MEMORY[0x1E69DB648];
      v146 = [(PGButtonView *)self->_liveIndicatorBadgeButton font];
      v238 = v146;
      v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v238 forKeys:&v237 count:1];
      [v145 sizeWithAttributes:v147];

      v148 = *MEMORY[0x1E695EFF8];
      v149 = *(MEMORY[0x1E695EFF8] + 8);
      UISizeRoundToScale();
      [(PGButtonView *)self->_liveIndicatorBadgeButton setFrame:v148, v149, v150, v151];
      v152 = self->_liveIndicatorBadgeButton;
      v229 = v231;
      [(PGButtonView *)v152 setTransform:&v229];
      [(PGProgressIndicator *)self->_progressIndicator frame];
      v153 = CGRectGetMinX(v279);
      [(PGProgressIndicator *)self->_progressIndicator frame];
      v154 = CGRectGetMinY(v280) + (v42 * 0.5 + 0.5) * -6.0;
      [(PGButtonView *)self->_liveIndicatorBadgeButton frame];
      [(PGButtonView *)self->_liveIndicatorBadgeButton setFrameOrigin:v153, v154 - CGRectGetHeight(v281)];
    }

    v155 = [(PGControlsViewModel *)self->_viewModel values];
    if ([v155 actionButtonsWantBackground])
    {
      v156 = 52.0;
    }

    else
    {
      v156 = 48.0;
    }

    v223 = fmin(fmax(v44 * ((v38 + v156 * -3.0) * 0.25), 12.0), 20.0);
    v157 = v156 + v223;
    [(PGButtonView *)self->_cancelButton glyphSize];
    [(PGButtonView *)self->_restoreButton glyphSize];
    v158 = [(PGControlsViewModel *)self->_viewModel values];
    if ([v158 includesLiveIndicatorBadge])
    {
      [(PGButtonView *)self->_liveIndicatorBadgeButton frame];
    }

    else
    {
      [(PGProgressIndicator *)self->_progressIndicator frame];
    }

    CGRectGetMinY(*&v159);

    UIRoundToScale();
    v164 = v163;
    [(PGControlsView *)self bounds];
    v165 = CGRectGetMidX(v282);
    v166 = v165 - v156 * 0.5;
    v167 = v164 - v156 * 0.5;
    [(PGButtonView *)self->_skipBackButton setFrame:v166 - v157, v167, v156, v156];
    [(PGButtonView *)self->_actionButton setFrame:v166, v167, v156, v156];
    [(PGButtonView *)self->_skipForwardButton setFrame:v157 + v166, v167 + 0.0, v156, v156];
    if (!v227)
    {
      [(PGControlsView *)self bounds];
      if (!CGRectIsEmpty(v283))
      {
        v168 = self->_skipBackButton;
        v229 = v231;
        [(PGButtonView *)v168 setTransform:&v229];
        v169 = self->_actionButton;
        v229 = v231;
        [(PGButtonView *)v169 setTransform:&v229];
        v170 = self->_skipForwardButton;
        v229 = v231;
        [(PGButtonView *)v170 setTransform:&v229];
        [(PGButtonView *)self->_actionButton setCenter:v165, v164];
        [(PGButtonView *)self->_actionButton frame];
        v171 = CGRectGetWidth(v284) + v223 * v42;
        [(PGButtonView *)self->_actionButton center];
        v173 = v172;
        v175 = v174 - v171;
        [(PGButtonView *)self->_actionButton center];
        v177 = v171 + v176;
        v179 = v178 + 0.0;
        [(PGButtonView *)self->_skipBackButton setCenter:v175, v173];
        [(PGButtonView *)self->_skipForwardButton setCenter:v177, v179];
      }
    }

    v180 = [(PGControlsViewModel *)self->_viewModel values];
    v181 = [v180 includesContentLoadingIndicator];

    if (v181)
    {
      if (!self->_contentLoadingIndicator)
      {
        v194 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
        v195 = self->_contentLoadingIndicator;
        self->_contentLoadingIndicator = v194;

        v196 = objc_alloc(MEMORY[0x1E69DD250]);
        [(PGControlsView *)self bounds];
        v197 = [v196 initWithFrame:?];
        v198 = self->_contentLoadingIndicatorContainerView;
        self->_contentLoadingIndicatorContainerView = v197;

        [(PGLayoutContainerView *)self->_hidableItemsLayoutContainerView insertSubview:self->_contentLoadingIndicatorContainerView atIndex:0];
        [(UIView *)self->_contentLoadingIndicatorContainerView addSubview:self->_contentLoadingIndicator];
        v199 = self->_contentLoadingIndicatorContainerView;
        v200 = [MEMORY[0x1E69DC888] darkGrayColor];
        [(UIView *)v199 setBackgroundColor:v200];

        v201 = self->_contentLoadingIndicatorContainerView;
        [(UIView *)self->_dimmingView _continuousCornerRadius];
        [(UIView *)v201 _setContinuousCornerRadius:?];
      }

      v202 = self->_contentLoadingIndicatorContainerView;
      [(PGControlsView *)self bounds];
      [(UIView *)v202 setFrame:?];
      v203 = self->_contentLoadingIndicator;
      v229 = v231;
      [(UIActivityIndicatorView *)v203 setTransform:&v229];
      v204 = self->_contentLoadingIndicator;
      [(UIView *)self->_contentLoadingIndicatorContainerView bounds];
      UIRectGetCenter();
      [(UIActivityIndicatorView *)v204 setCenter:?];
    }

    [(UIView *)self->_contentLoadingIndicatorContainerView setHidden:v181 ^ 1u];
    if ((v181 ^ 1) == [(UIActivityIndicatorView *)self->_contentLoadingIndicator isAnimating])
    {
      v205 = self->_contentLoadingIndicator;
      if (v181)
      {
        [(UIActivityIndicatorView *)v205 startAnimating];
      }

      else
      {
        [(UIActivityIndicatorView *)v205 stopAnimating];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PGControlsView;
  [(PGControlsView *)&v4 didMoveToWindow];
  [(PGControlsView *)self updateProgress];
  [(PGControlsView *)self updateControlsAlpha];
  if ([(PGControlsView *)self _isInAWindow])
  {
    v3 = [(PGControlsView *)self PG_backdropGroupLeader];
    [v3 updateEffects];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = PGControlsView;
  v5 = [(PGLayoutContainerView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (void)buttonViewDidReceiveTouchUpInside:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_restoreButton == v4)
  {
    [(PGControlsViewModel *)self->_viewModel handleRestoreButtonTapped];
  }

  else if (self->_actionButton == v4)
  {
    [(PGControlsViewModel *)self->_viewModel handleActionButtonTapped];
  }

  else if (self->_skipBackButton == v4)
  {
    [(PGControlsViewModel *)self->_viewModel handleSkipBackButtonTapped];
  }

  else if (self->_skipForwardButton == v4)
  {
    [(PGControlsViewModel *)self->_viewModel handleSkipForwardButtonTapped];
  }

  else
  {
    if (self->_cancelButton != v4)
    {
      goto LABEL_12;
    }

    [(PGControlsViewModel *)self->_viewModel handleCancelButtonTapped];
  }

  v4 = v5;
LABEL_12:
}

- (CGRect)buttonView:(id)a3 imageRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  if (self->_cancelButton == v10)
  {
    v11 = [(PGControlsViewModel *)self->_viewModel values];
    v12 = [v11 cancelButtonCustomImage];

    if (v12)
    {
      [(PGButtonView *)v10 bounds];
      width = CGRectGetHeight(v17) + -4.0;
      [(PGButtonView *)v10 bounds];
      height = CGRectGetHeight(v18) + -4.0;
      y = 2.0;
      x = 2.0;
    }
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)buttonView:(id)a3 titleRectForContentRect:(CGRect)a4 proposedRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  if (self->_cancelButton == v10)
  {
    v11 = [(PGControlsViewModel *)self->_viewModel values];
    v12 = [v11 cancelButtonCustomText];

    if (v12)
    {
      [(PGButtonView *)v10 bounds];
      x = CGRectGetMaxX(v17) - width + -6.0;
    }
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UIEdgeInsets)buttonView:(id)a3 contentEdgeInsetsForProposedInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = [(PGControlsViewModel *)self->_viewModel values];
  v9 = [v8 cancelButtonCustomImage];

  if (v9)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = left;
  }

  v11 = top;
  v12 = bottom;
  v13 = right;
  result.right = v13;
  result.bottom = v12;
  result.left = v10;
  result.top = v11;
  return result;
}

- (CGRect)_prerollIndicatorFrameWithScaling:(double)a3
{
  rect = *(MEMORY[0x1E695F058] + 8);
  [(PGControlsView *)self _progressIndicatorFrameWithScaling:a3];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v9 = CGRectGetWidth(v21);
  +[PGPrerollIndicatorView preferredHeight];
  v19 = a3;
  v11 = v10 * a3;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = MinX;
  v24.origin.y = rect;
  v24.size.width = v9;
  v24.size.height = v11;
  v14 = MaxY - CGRectGetHeight(v24);
  if (![(PGControlsView *)self prefersControlsHidden])
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v14 = v14 - (CGRectGetHeight(v25) + (v19 * 0.5 + 0.5) * 6.0);
  }

  v15 = MinX;
  v16 = v14;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_progressIndicatorFrameWithScaling:(double)a3
{
  [(PGControlsView *)self bounds];
  v4 = [(PGControlsView *)self traitCollection];
  [v4 displayScale];

  [(PGControlsView *)self bounds];
  CGRectGetMaxY(v15);
  UIPointRoundToViewScale();
  v6 = v5;
  v8 = v7;
  UISizeRoundToViewScale();
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v14 = v8;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_showsDimmingView
{
  if (self->_wantsGlassBackground)
  {
    if ([(PGControlsView *)self prefersControlsHidden])
    {
      return 0;
    }

    else
    {
      v6 = [(PGControlsViewModel *)self->_viewModel values];
      v7 = [v6 includesDimmingView];

      return v7;
    }
  }

  else
  {
    v4 = [(PGControlsViewModel *)self->_viewModel values];
    if ([v4 actionButtonsWantBackground])
    {
      v5 = 0;
    }

    else
    {
      v8 = [(PGControlsViewModel *)self->_viewModel values];
      v5 = [v8 includesActionButton];
    }

    return ![(PGControlsView *)self prefersControlsHidden]& v5;
  }
}

@end