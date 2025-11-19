@interface PXActionProgressToast
- (BOOL)isLocked;
- (PXActionProgressToast)initWithTargetDestination:(id)a3 progress:(id)a4;
- (id)_determinateProgressView;
- (id)_mainViewController;
- (id)_tabBarController;
- (void)_cancel;
- (void)_close:(id)a3;
- (void)_errorButtonClicked:(id)a3;
- (void)_handleContentModeChange:(id)a3;
- (void)_handleSingleTouchTap:(id)a3;
- (void)_prepareForReuse;
- (void)_showToast;
- (void)_updateDeterminateProgress;
- (void)_updateDisplayForDestination:(id)a3;
- (void)_updateIcons;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)_updateToastMargin;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissAnimated:(BOOL)a3 afterDelay:(double)a4;
- (void)finishProgressMarkingAsComplete:(BOOL)a3 updatedLocalizedTitle:(id)a4 updatedLocalizedDescription:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBottomSpacing:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCloseButtonAction:(id)a3;
- (void)setCustomSubtitleText:(id)a3;
- (void)setErrors:(id)a3 forMediaType:(int64_t)a4;
- (void)setLocalizedProgressText:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setState:(int64_t)a3;
- (void)updateConstraints;
- (void)willStartProgress;
@end

@implementation PXActionProgressToast

- (void)_updateDisplayForDestination:(id)a3
{
  v7 = a3;
  v4 = [(PXActionProgressToast *)self targetDestination];
  if (v4)
  {
    v5 = [(PXActionProgressToast *)self targetDestination];
    v6 = [v5 isEqualToNavigationDestination:v7] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != [(PXActionProgressToast *)self isHidden])
  {
    [(PXActionProgressToast *)self setHidden:v6];
    if ((v6 & [(PXActionProgressToast *)self _hasFinalState]) == 1)
    {
      [(PXActionProgressToast *)self dismissAnimated:0];
    }
  }
}

- (void)_handleContentModeChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69BE9B8]];

  [(PXActionProgressToast *)self _updateDisplayForDestination:v5];
}

- (void)_updateIcons
{
  v3 = [(PXActionProgressToast *)self state];
  if (v3 <= 4)
  {
    v4 = 0xFu >> v3;
    v5 = 0x18u >> v3;
    [(UIButton *)self->_errorView setHidden:(0x17u >> v3) & 1];
    [(UIImageView *)self->_checkmarkView setHidden:v4 & 1];
    progressView = self->_progressView;

    [(UIView *)progressView setHidden:v5 & 1];
  }
}

- (void)_prepareForReuse
{
  errors = self->_errors;
  self->_errors = 0;

  [(PXActionProgressToast *)self setState:0];
  [(PXActionProgressToast *)self _updatePrimaryLabel];
  [(PXActionProgressToast *)self _updateSecondaryLabel];
  [(PXActionProgressToast *)self _updateToastMargin];
  v4 = [(PXActionProgressToast *)self _determinateProgressView];
  [v4 prepareForReuse];

  labelContainerWidthConstraint = self->_labelContainerWidthConstraint;

  [(NSLayoutConstraint *)labelContainerWidthConstraint setConstant:0.0];
}

- (id)_tabBarController
{
  v2 = [(PXActionProgressToast *)self _mainViewController];
  v3 = [v2 tabBarController];

  return v3;
}

- (id)_mainViewController
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 px_firstKeyWindow];

  v4 = [v3 rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 contentViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [v4 selectedViewController];
  }

  v6 = v5;

  v4 = v6;
LABEL_6:

  return v4;
}

- (void)_updateToastMargin
{
  [(PXActionProgressToast *)self bottomSpacing];
  v4 = v3;
  v5 = [(PXActionProgressToast *)self _tabBarController];
  v10 = v5;
  if (v5 && ([v5 isTabBarHidden] & 1) == 0)
  {
    v6 = [v10 tabBar];
    [v6 frame];
    v8 = v9;
  }

  else
  {
    v6 = [(PXActionProgressToast *)self _mainViewController];
    [v6 px_safeAreaInsets];
    v8 = v7;
  }

  self->_toastMargin = v4 + 8.0 + v8;
  [(PXToast *)self->_toast setBottomMargin:?];
}

- (void)_close:(id)a3
{
  if ([(PXActionProgressToast *)self state]== 1 || ![(PXActionProgressToast *)self state])
  {
    v4 = [(PXActionProgressToast *)self closeButtonAction];

    if (v4)
    {
      v5 = [(PXActionProgressToast *)self closeButtonAction];
      v5[2]();
    }

    [(PXActionProgressToast *)self _cancel];

    [(PXActionProgressToast *)self dismissAnimated:1 afterDelay:1.0];
  }

  else
  {

    [(PXActionProgressToast *)self dismissAnimated:1];
  }
}

- (void)_cancel
{
  if ([(PXActionProgressToast *)self state]== 1)
  {
    [(PXActionProgressToast *)self setState:2];
    v3 = PXLocalizedStringFromTable(@"PXActionProgressCanceling", @"PhotosUICore");
    [(PXActionProgressToast *)self setLocalizedProgressText:v3];

    [(PXActionProgressToast *)self _updateIcons];
  }
}

- (void)_errorButtonClicked:(id)a3
{
  v4 = [(PXActionProgressToast *)self errorButtonAction];

  if (v4)
  {
    v6 = [(PXActionProgressToast *)self errorButtonAction];
    v5 = [(PXActionProgressToast *)self errors];
    v6[2](v6, v5);
  }
}

- (void)_handleSingleTouchTap:(id)a3
{
  v5 = [(PXActionProgressToast *)self _tabBarController];
  v4 = [(PXActionProgressToast *)self targetDestination];
  if (v4)
  {
    [v5 px_switchToTabAndNavigateToDestination:v4 options:0 completionHandler:&__block_literal_global_199607];
  }
}

- (void)setCloseButtonAction:(id)a3
{
  v5 = _Block_copy(a3);
  closeButtonAction = self->_closeButtonAction;
  self->_closeButtonAction = v5;

  [(UIButton *)self->_closeButton setHidden:a3 == 0];

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)_updateSecondaryLabel
{
  v3 = [(PXActionProgressToast *)self localizedProgressText];
  [(UILabel *)self->_secondaryLabel setText:v3];

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)setLocalizedProgressText:(id)a3
{
  v9 = a3;
  v5 = [(PXActionProgressToast *)self customSubtitleText];

  if (!v5)
  {
    v6 = self->_localizedProgressText;
    v7 = v6;
    if (v6 == v9)
    {
    }

    else
    {
      v8 = [(NSString *)v6 isEqualToString:v9];

      if (!v8)
      {
        objc_storeStrong(&self->_localizedProgressText, a3);
        [(PXActionProgressToast *)self _updateSecondaryLabel];
      }
    }
  }
}

- (void)setCustomSubtitleText:(id)a3
{
  v9 = a3;
  v4 = self->_customSubtitleText;
  customSubtitleText = v4;
  if (v4 != v9)
  {
    v6 = [(NSString *)v4 isEqualToString:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXActionProgressToast *)self setLocalizedProgressText:v9];
    v8 = v9;
    customSubtitleText = self->_customSubtitleText;
    self->_customSubtitleText = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)_updatePrimaryLabel
{
  v6 = [(PXActionProgressToast *)self localizedTitle];
  v3 = [(PXActionProgressToast *)self state]!= 4 && [(PXActionProgressToast *)self state]!= 3;
  if (v3 || !v6)
  {
    v4 = [(PXActionProgressToast *)self progress];
    v5 = [v4 localizedDescription];
    [(UILabel *)self->_primaryLabel setText:v5];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setText:v6];
  }

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)setLocalizedTitle:(id)a3
{
  v8 = a3;
  v5 = self->_localizedTitle;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_localizedTitle, a3);
      [(PXActionProgressToast *)self _updatePrimaryLabel];
    }
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PXActionProgressToast *)self _updatePrimaryLabel];
  }
}

- (void)setBottomSpacing:(double)a3
{
  if (self->_bottomSpacing != a3)
  {
    self->_bottomSpacing = a3;
    [(PXActionProgressToast *)self _updateToastMargin];
  }
}

- (void)finishProgressMarkingAsComplete:(BOOL)a3 updatedLocalizedTitle:(id)a4 updatedLocalizedDescription:(id)a5
{
  v6 = a3;
  v16 = a4;
  v8 = a5;
  if ([(PXActionProgressToast *)self state]== 1)
  {
    [(PXActionProgressToast *)self setState:4];
    if (!v6)
    {
      v14 = 1.7;
LABEL_17:
      [(PXActionProgressToast *)self dismissAnimated:1 afterDelay:v14];
      goto LABEL_18;
    }

    if (v16)
    {
      v9 = [(PXActionProgressToast *)self localizedTitle];
      if (v9 == v16)
      {

        if (!v8)
        {
          goto LABEL_15;
        }

LABEL_8:
        v11 = [(PXActionProgressToast *)self localizedProgressText];
        v12 = v11;
        if (v11 == v8)
        {
        }

        else
        {
          v13 = [v8 isEqualToString:v11];

          if ((v13 & 1) == 0)
          {
            [(PXActionProgressToast *)self setLocalizedProgressText:v8];
LABEL_16:
            [(PXActionProgressToast *)self _updateIcons];
            v14 = 1.0;
            goto LABEL_17;
          }
        }

LABEL_15:
        v15 = PXLocalizedStringFromTable(@"PXActionProgressCompleted", @"PhotosUICore");
        [(PXActionProgressToast *)self setLocalizedProgressText:v15];

        goto LABEL_16;
      }

      v10 = [v16 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        [(PXActionProgressToast *)self setLocalizedTitle:v16];
      }
    }

    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_18:
}

- (void)setErrors:(id)a3 forMediaType:(int64_t)a4
{
  v7 = a3;
  objc_storeStrong(&self->_errors, a3);
  if ([v7 count])
  {
    if ([(PXActionProgressToast *)self state]!= 1)
    {
      [(PXActionProgressToast *)self _prepareForReuse];
      [(PXActionProgressToast *)self _showToast];
    }

    [(PXActionProgressToast *)self setState:3];
    PXLocalizedAssetCountForUsage([v7 count], a4, 0, 5);
  }
}

- (BOOL)isLocked
{
  v3 = [(PXActionProgressToast *)self state];
  v4 = [(PXActionProgressToast *)self closeButtonAction];

  return v3 == 1 && v4 != 0;
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(PXActionProgressToast *)self targetDestination];
  v5 = [_activeToasts_199612 objectForKey:?];

  if (v5)
  {
    [_activeToasts_199612 removeObjectForKey:v6];
  }

  [(PXToast *)self->_toast dismissAnimated:v3];
}

- (void)dismissAnimated:(BOOL)a3 afterDelay:(double)a4
{
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXActionProgressToast_dismissAnimated_afterDelay___block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__PXActionProgressToast_dismissAnimated_afterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissAnimated:*(a1 + 40)];
}

- (void)_showToast
{
  v3 = _activeToasts_199612;
  if (!_activeToasts_199612)
  {
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = _activeToasts_199612;
    _activeToasts_199612 = v4;

    v3 = _activeToasts_199612;
  }

  v6 = [(PXActionProgressToast *)self targetDestination];
  v7 = [v3 objectForKey:v6];

  if (!v7)
  {
    goto LABEL_9;
  }

  if (([v7 isLocked] & 1) == 0)
  {
    [v7 dismissAnimated:1];
LABEL_9:
    v9 = _activeToasts_199612;
    v10 = [(PXActionProgressToast *)self targetDestination];
    [v9 setObject:self forKey:v10];

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__PXActionProgressToast__showToast__block_invoke;
    v13[3] = &unk_1E77433D8;
    objc_copyWeak(&v14, buf);
    v13[4] = self;
    v11 = [PXToast show:v13];
    toast = self->_toast;
    self->_toast = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  v8 = PLUIGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXActionProgressToast: Cannot display new toast with locked toast in existence.", buf, 2u);
  }

LABEL_10:
}

void __35__PXActionProgressToast__showToast__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v4 setContentView:WeakRetained];

  [v4 setBottomMargin:*(*(a1 + 32) + 480)];
}

- (void)_updateDeterminateProgress
{
  v5 = [(PXActionProgressToast *)self _determinateProgressView];
  v3 = [(PXActionProgressToast *)self progress];
  [v3 fractionCompleted];
  *&v4 = v4;
  [v5 setProgress:v4];
}

- (id)_determinateProgressView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    progressView = self->_progressView;
  }

  else
  {
    progressView = 0;
  }

  return progressView;
}

- (void)willStartProgress
{
  [(PXActionProgressToast *)self _updateIcons];
  v5 = [(PXActionProgressToast *)self progress];
  v3 = [v5 localizedAdditionalDescription];
  [(PXActionProgressToast *)self setLocalizedProgressText:v3];

  v4 = [(PXActionProgressToast *)self targetDestination];
  [(PXActionProgressToast *)self _updateDisplayForDestination:v4];

  [(PXActionProgressToast *)self setState:1];
  [(PXActionProgressToast *)self _showToast];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (PXActionProgressToastContext == a6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PXActionProgressToast_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C620;
    v14 = v10;
    v15 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXActionProgressToast;
    [(PXActionProgressToast *)&v12 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

void __72__PXActionProgressToast_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(sel_fractionCompleted);
  if ([v2 isEqualToString:v3])
  {
    v4 = [*(a1 + 40) progress];
    v5 = [v4 isIndeterminate];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) progress];
      [v6 fractionCompleted];
      v8 = v7;

      v9 = *(a1 + 40);
      if (v8 <= 0.0)
      {
        [v9 _prepareForReuse];
      }

      else if (![v9 state])
      {
        [*(a1 + 40) willStartProgress];
      }

      v15 = *(a1 + 40);

      [v15 _updateDeterminateProgress];
      return;
    }
  }

  else
  {
  }

  v10 = *(a1 + 32);
  v11 = NSStringFromSelector(sel_localizedDescription);
  LODWORD(v10) = [v10 isEqualToString:v11];

  if (v10)
  {
    v12 = *(a1 + 40);

    [v12 _updatePrimaryLabel];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = NSStringFromSelector(sel_localizedAdditionalDescription);
    LODWORD(v13) = [v13 isEqualToString:v14];

    if (v13 && ([*(a1 + 40) _hasFinalState] & 1) == 0)
    {
      v17 = [*(a1 + 40) progress];
      v16 = [v17 localizedAdditionalDescription];
      [*(a1 + 40) setLocalizedProgressText:v16];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXActionProgressToast;
  [(PXActionProgressToast *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PXActionProgressToast *)self _updateToastMargin];
}

- (void)updateConstraints
{
  v53.receiver = self;
  v53.super_class = PXActionProgressToast;
  [(PXActionProgressToast *)&v53 updateConstraints];
  [(UILabel *)self->_primaryLabel intrinsicContentSize];
  v4 = v3;
  primaryLabelWidthConstraint = self->_primaryLabelWidthConstraint;
  if (primaryLabelWidthConstraint)
  {
    [(NSLayoutConstraint *)primaryLabelWidthConstraint setConstant:v3];
  }

  else
  {
    v6 = [(UILabel *)self->_primaryLabel widthAnchor];
    v7 = [v6 constraintEqualToConstant:v4];
    v8 = self->_primaryLabelWidthConstraint;
    self->_primaryLabelWidthConstraint = v7;

    LODWORD(v9) = 1132068864;
    [(NSLayoutConstraint *)self->_primaryLabelWidthConstraint setPriority:v9];
    [(NSLayoutConstraint *)self->_primaryLabelWidthConstraint setActive:1];
  }

  [(UILabel *)self->_secondaryLabel intrinsicContentSize];
  v11 = v10;
  secondaryLabelWidthConstraint = self->_secondaryLabelWidthConstraint;
  if (secondaryLabelWidthConstraint)
  {
    [(NSLayoutConstraint *)secondaryLabelWidthConstraint setConstant:v10];
  }

  else
  {
    v13 = [(UILabel *)self->_secondaryLabel widthAnchor];
    v14 = [v13 constraintEqualToConstant:v11];
    v15 = self->_secondaryLabelWidthConstraint;
    self->_secondaryLabelWidthConstraint = v14;

    LODWORD(v16) = 1132068864;
    [(NSLayoutConstraint *)self->_secondaryLabelWidthConstraint setPriority:v16];
    [(NSLayoutConstraint *)self->_secondaryLabelWidthConstraint setActive:1];
  }

  if (v4 < v11)
  {
    v4 = v11;
  }

  labelContainerWidthConstraint = self->_labelContainerWidthConstraint;
  if (labelContainerWidthConstraint)
  {
    [(NSLayoutConstraint *)labelContainerWidthConstraint constant];
    if (v18 < v4)
    {
      v18 = v4;
    }

    [(NSLayoutConstraint *)self->_labelContainerWidthConstraint setConstant:v18];
  }

  else
  {
    v19 = [(UIView *)self->_labelContainer widthAnchor];
    v20 = [v19 constraintEqualToConstant:v4];
    v21 = self->_labelContainerWidthConstraint;
    self->_labelContainerWidthConstraint = v20;

    [(NSLayoutConstraint *)self->_labelContainerWidthConstraint setActive:1];
  }

  if (self->_primaryLabelAlignmentConstraint)
  {
    [(PXActionProgressToast *)self removeConstraint:?];
  }

  if (self->_secondaryLabelWidthConstraint)
  {
    [(PXActionProgressToast *)self removeConstraint:self->_secondaryLabelAlignmentConstraint];
  }

  if (self->_closeButtonWidthConstraint)
  {
    [(PXActionProgressToast *)self removeConstraint:?];
  }

  if (self->_trailingSpacingConstraint)
  {
    [(PXActionProgressToast *)self removeConstraint:?];
  }

  v22 = [(PXActionProgressToast *)self closeButtonAction];

  labelContainer = self->_labelContainer;
  if (v22)
  {
    v24 = [(UIView *)labelContainer centerXAnchor];
    v25 = [(UILabel *)self->_primaryLabel centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    primaryLabelAlignmentConstraint = self->_primaryLabelAlignmentConstraint;
    self->_primaryLabelAlignmentConstraint = v26;

    [(NSLayoutConstraint *)self->_primaryLabelAlignmentConstraint setActive:1];
    v28 = [(UIView *)self->_labelContainer centerXAnchor];
    v29 = [(UILabel *)self->_secondaryLabel centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    secondaryLabelAlignmentConstraint = self->_secondaryLabelAlignmentConstraint;
    self->_secondaryLabelAlignmentConstraint = v30;

    [(NSLayoutConstraint *)self->_secondaryLabelAlignmentConstraint setActive:1];
    v32 = [(PXActionProgressToast *)self trailingAnchor];
    p_closeButton = &self->_closeButton;
    v34 = [(UIButton *)self->_closeButton trailingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:12.0];
    trailingSpacingConstraint = self->_trailingSpacingConstraint;
    self->_trailingSpacingConstraint = v35;

    [(NSLayoutConstraint *)self->_trailingSpacingConstraint setActive:1];
    v37 = 18.0;
  }

  else
  {
    v38 = [(UIView *)labelContainer leadingAnchor];
    v39 = [(UILabel *)self->_primaryLabel leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v41 = self->_primaryLabelAlignmentConstraint;
    self->_primaryLabelAlignmentConstraint = v40;

    [(NSLayoutConstraint *)self->_primaryLabelAlignmentConstraint setActive:1];
    v42 = [(UIView *)self->_labelContainer leadingAnchor];
    v43 = [(UILabel *)self->_secondaryLabel leadingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v45 = self->_secondaryLabelAlignmentConstraint;
    self->_secondaryLabelAlignmentConstraint = v44;

    [(NSLayoutConstraint *)self->_secondaryLabelAlignmentConstraint setActive:1];
    v46 = [(PXActionProgressToast *)self trailingAnchor];
    v47 = [(UIView *)self->_labelContainer trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:22.0];
    v49 = self->_trailingSpacingConstraint;
    self->_trailingSpacingConstraint = v48;

    [(NSLayoutConstraint *)self->_trailingSpacingConstraint setActive:1];
    p_closeButton = &self->_closeButton;
    v37 = 0.0;
  }

  v50 = [(UIButton *)*p_closeButton widthAnchor];
  v51 = [v50 constraintEqualToConstant:v37];
  closeButtonWidthConstraint = self->_closeButtonWidthConstraint;
  self->_closeButtonWidthConstraint = v51;

  [(NSLayoutConstraint *)self->_closeButtonWidthConstraint setActive:1];
}

- (void)dealloc
{
  progress = self->_progress;
  v4 = NSStringFromSelector(sel_fractionCompleted);
  [(NSProgress *)progress removeObserver:self forKeyPath:v4 context:PXActionProgressToastContext];

  v5 = self->_progress;
  v6 = NSStringFromSelector(sel_localizedDescription);
  [(NSProgress *)v5 removeObserver:self forKeyPath:v6 context:PXActionProgressToastContext];

  v7 = self->_progress;
  v8 = NSStringFromSelector(sel_localizedAdditionalDescription);
  [(NSProgress *)v7 removeObserver:self forKeyPath:v8 context:PXActionProgressToastContext];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 removeObserver:self name:*MEMORY[0x1E69BE9A8] object:0];

  v10.receiver = self;
  v10.super_class = PXActionProgressToast;
  [(PXActionProgressToast *)&v10 dealloc];
}

- (PXActionProgressToast)initWithTargetDestination:(id)a3 progress:(id)a4
{
  v143[27] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v142.receiver = self;
  v142.super_class = PXActionProgressToast;
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = [(PXActionProgressToast *)&v142 initWithFrame:*MEMORY[0x1E695F058], v10, v11, v12];
  v14 = v13;
  if (v13)
  {
    v141 = v7;
    v15 = [(PXActionProgressToast *)v13 layer];
    [v15 setCornerRadius:22.0];

    [PXToastDefaultContentView configureBackgroundOfToastContentView:v14];
    objc_storeStrong(&v14->_targetDestination, a3);
    p_progress = &v14->_progress;
    objc_storeStrong(&v14->_progress, a4);
    v140 = v8;
    if ([v8 isIndeterminate])
    {
      v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UIView *)v17 setColor:v18];

      [(UIView *)v17 startAnimating];
    }

    else
    {
      v17 = [[off_1E7721870 alloc] initWithFrame:5 style:{v9, v10, v11, v12}];
    }

    progressView = v14->_progressView;
    v14->_progressView = v17;

    v20 = *p_progress;
    v21 = NSStringFromSelector(sel_fractionCompleted);
    [v20 addObserver:v14 forKeyPath:v21 options:4 context:PXActionProgressToastContext];

    v22 = *p_progress;
    v23 = NSStringFromSelector(sel_localizedDescription);
    [v22 addObserver:v14 forKeyPath:v23 options:4 context:PXActionProgressToastContext];

    v24 = *p_progress;
    v25 = NSStringFromSelector(sel_localizedAdditionalDescription);
    [v24 addObserver:v14 forKeyPath:v25 options:4 context:PXActionProgressToastContext];

    v139 = [MEMORY[0x1E696AD88] defaultCenter];
    [v139 addObserver:v14 selector:sel__handleContentModeChange_ name:*MEMORY[0x1E69BE9A8] object:0];
    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v138 = [v26 imageWithRenderingMode:2];

    v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v138];
    checkmarkView = v14->_checkmarkView;
    v14->_checkmarkView = v27;

    v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v14->_checkmarkView setTintColor:v29];

    [(PXActionProgressToast *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [MEMORY[0x1E69DC738] buttonWithType:0];
    errorView = v14->_errorView;
    v14->_errorView = v30;

    v32 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v14->_errorView setTintColor:v32];

    v33 = v14->_errorView;
    v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle.fill"];
    [(UIButton *)v33 setImage:v34 forState:0];

    [(UIButton *)v14->_errorView addTarget:v14 action:sel__errorButtonClicked_ forControlEvents:64];
    v35 = objc_alloc(MEMORY[0x1E69DD250]);
    [(UIView *)v14->_progressView frame];
    v36 = [v35 initWithFrame:?];
    leadingView = v14->_leadingView;
    v14->_leadingView = v36;

    [(UIView *)v14->_leadingView addSubview:v14->_progressView];
    [(UIView *)v14->_leadingView addSubview:v14->_checkmarkView];
    [(UIView *)v14->_leadingView addSubview:v14->_errorView];
    [(PXActionProgressToast *)v14 addSubview:v14->_leadingView];
    v137 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    v38 = objc_alloc_init(MEMORY[0x1E69DC738]);
    closeButton = v14->_closeButton;
    v14->_closeButton = v38;

    v40 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v14->_closeButton setTintColor:v40];

    [(UIButton *)v14->_closeButton setImage:v137 forState:0];
    [(UIButton *)v14->_closeButton addTarget:v14 action:sel__close_ forControlEvents:64];
    [(PXActionProgressToast *)v14 addSubview:v14->_closeButton];
    [(UIButton *)v14->_closeButton setHidden:1];
    v41 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v14->_primaryLabel;
    v14->_primaryLabel = v41;

    v43 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v14->_primaryLabel setTextColor:v43];

    v44 = [(PXActionProgressToast *)v14 localizedTitle];
    [(UILabel *)v14->_primaryLabel setText:v44];

    [(UILabel *)v14->_primaryLabel setLineBreakMode:4];
    v45 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
    [(UILabel *)v14->_primaryLabel setFont:v45];

    LODWORD(v46) = 1148846080;
    [(UILabel *)v14->_primaryLabel setContentHuggingPriority:0 forAxis:v46];
    LODWORD(v47) = 1132068864;
    [(UILabel *)v14->_primaryLabel setContentCompressionResistancePriority:0 forAxis:v47];
    [(UILabel *)v14->_primaryLabel sizeToFit];
    v48 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v14->_secondaryLabel;
    v14->_secondaryLabel = v48;

    v50 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14->_secondaryLabel setTextColor:v50];

    [(UILabel *)v14->_secondaryLabel setLineBreakMode:4];
    v51 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    [(UILabel *)v14->_secondaryLabel setFont:v51];

    LODWORD(v52) = 1148846080;
    [(UILabel *)v14->_secondaryLabel setContentHuggingPriority:0 forAxis:v52];
    LODWORD(v53) = 1132068864;
    [(UILabel *)v14->_secondaryLabel setContentCompressionResistancePriority:0 forAxis:v53];
    [(UILabel *)v14->_secondaryLabel sizeToFit];
    v54 = objc_alloc_init(MEMORY[0x1E69DD250]);
    labelContainer = v14->_labelContainer;
    v14->_labelContainer = v54;

    [(UIView *)v14->_labelContainer addSubview:v14->_primaryLabel];
    [(UIView *)v14->_labelContainer addSubview:v14->_secondaryLabel];
    [(PXActionProgressToast *)v14 addSubview:v14->_labelContainer];
    v136 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v14 action:sel__handleSingleTouchTap_];
    [v136 setNumberOfTouchesRequired:1];
    [v136 setNumberOfTapsRequired:1];
    [(PXActionProgressToast *)v14 addGestureRecognizer:v136];
    [(PXActionProgressToast *)v14 _prepareForReuse];
    [(UIView *)v14->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v14->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v14->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v14->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v14->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v14->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v14->_errorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v14->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v14->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = v14;
    v57 = [(PXActionProgressToast *)v56 heightAnchor];
    v58 = [v57 constraintEqualToConstant:44.0];
    [v58 setActive:1];

    v107 = MEMORY[0x1E696ACD8];
    v135 = [(PXActionProgressToast *)v56 leadingAnchor];
    v134 = [(UIView *)v14->_leadingView leadingAnchor];
    v133 = [v135 constraintEqualToAnchor:v134 constant:-12.0];
    v143[0] = v133;
    v132 = [(PXActionProgressToast *)v56 centerYAnchor];
    v131 = [(UIView *)v14->_leadingView centerYAnchor];
    v130 = [v132 constraintEqualToAnchor:v131];
    v143[1] = v130;
    v129 = [(PXActionProgressToast *)v56 heightAnchor];
    v128 = [(UIView *)v14->_leadingView heightAnchor];
    v127 = [v129 constraintEqualToAnchor:v128];
    v143[2] = v127;
    v126 = [(PXActionProgressToast *)v56 heightAnchor];
    v125 = [v126 constraintGreaterThanOrEqualToConstant:80.0];
    v143[3] = v125;
    v124 = [(UIView *)v14->_leadingView widthAnchor];
    v123 = [v124 constraintEqualToConstant:18.0];
    v143[4] = v123;
    v122 = [(UIView *)v14->_leadingView centerXAnchor];
    v121 = [(UIView *)v14->_progressView centerXAnchor];
    v120 = [v122 constraintEqualToAnchor:v121];
    v143[5] = v120;
    v119 = [(UIView *)v14->_leadingView centerYAnchor];
    v118 = [(UIView *)v14->_progressView centerYAnchor];
    v117 = [v119 constraintEqualToAnchor:v118];
    v143[6] = v117;
    v116 = [(UIView *)v14->_leadingView centerYAnchor];
    v115 = [(UIImageView *)v14->_checkmarkView centerYAnchor];
    v114 = [v116 constraintEqualToAnchor:v115];
    v143[7] = v114;
    v113 = [(UIView *)v14->_leadingView centerYAnchor];
    v112 = [(UIButton *)v14->_errorView centerYAnchor];
    v111 = [v113 constraintEqualToAnchor:v112];
    v143[8] = v111;
    v110 = [(UIView *)v14->_progressView widthAnchor];
    v109 = [v110 constraintEqualToConstant:18.0];
    v143[9] = v109;
    v108 = [(UIView *)v14->_progressView heightAnchor];
    v106 = [v108 constraintEqualToConstant:18.0];
    v143[10] = v106;
    v105 = [(UIImageView *)v14->_checkmarkView widthAnchor];
    v104 = [v105 constraintEqualToConstant:18.0];
    v143[11] = v104;
    v103 = [(UIImageView *)v14->_checkmarkView heightAnchor];
    v102 = [v103 constraintEqualToConstant:18.0];
    v143[12] = v102;
    v101 = [(UIButton *)v14->_errorView widthAnchor];
    v100 = [v101 constraintEqualToConstant:18.0];
    v143[13] = v100;
    v99 = [(UIButton *)v14->_errorView heightAnchor];
    v98 = [v99 constraintEqualToConstant:18.0];
    v143[14] = v98;
    v59 = v56;
    v97 = [(PXActionProgressToast *)v56 centerYAnchor];
    v96 = [(UIButton *)v14->_closeButton centerYAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v143[15] = v95;
    v94 = [(UIButton *)v14->_closeButton heightAnchor];
    v93 = [v94 constraintEqualToConstant:18.0];
    v143[16] = v93;
    v92 = [(PXActionProgressToast *)v56 centerYAnchor];
    v91 = [(UIView *)v14->_labelContainer centerYAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v143[17] = v90;
    v89 = [(UIView *)v14->_leadingView trailingAnchor];
    v88 = [(UIView *)v14->_labelContainer leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88 constant:-12.0];
    v143[18] = v87;
    v86 = [(UIButton *)v14->_closeButton leadingAnchor];
    v85 = [(UIView *)v14->_labelContainer trailingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85 constant:12.0];
    v143[19] = v84;
    v83 = [(UIView *)v14->_labelContainer topAnchor];
    v82 = [(UILabel *)v14->_primaryLabel topAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v143[20] = v81;
    v80 = [(UIView *)v14->_labelContainer bottomAnchor];
    v79 = [(UILabel *)v14->_secondaryLabel bottomAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v143[21] = v78;
    v77 = [(UILabel *)v14->_primaryLabel bottomAnchor];
    v76 = [(UILabel *)v14->_secondaryLabel topAnchor];
    v75 = [v77 constraintEqualToAnchor:v76 constant:-2.0];
    v143[22] = v75;
    v74 = [(UIView *)v14->_labelContainer widthAnchor];
    v73 = [(UILabel *)v14->_primaryLabel widthAnchor];
    v72 = [v74 constraintGreaterThanOrEqualToAnchor:v73];
    v143[23] = v72;
    v71 = [(UIView *)v14->_labelContainer widthAnchor];
    v60 = [(UILabel *)v14->_secondaryLabel widthAnchor];
    v61 = [v71 constraintGreaterThanOrEqualToAnchor:v60];
    v143[24] = v61;
    v62 = [(UIView *)v14->_leadingView trailingAnchor];
    v63 = [(UIView *)v14->_labelContainer leadingAnchor];
    v64 = [v62 constraintLessThanOrEqualToAnchor:v63];
    v143[25] = v64;
    v65 = [(PXActionProgressToast *)v59 trailingAnchor];
    v66 = v14->_labelContainer;

    v67 = [(UIView *)v66 trailingAnchor];
    v68 = [v65 constraintGreaterThanOrEqualToAnchor:v67];
    v143[26] = v68;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:27];
    [v107 activateConstraints:v69];

    v7 = v141;
    v8 = v140;
  }

  return v14;
}

@end