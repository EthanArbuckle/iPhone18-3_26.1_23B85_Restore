@interface PXActionProgressToast
- (BOOL)isLocked;
- (PXActionProgressToast)initWithTargetDestination:(id)destination progress:(id)progress;
- (id)_determinateProgressView;
- (id)_mainViewController;
- (id)_tabBarController;
- (void)_cancel;
- (void)_close:(id)_close;
- (void)_errorButtonClicked:(id)clicked;
- (void)_handleContentModeChange:(id)change;
- (void)_handleSingleTouchTap:(id)tap;
- (void)_prepareForReuse;
- (void)_showToast;
- (void)_updateDeterminateProgress;
- (void)_updateDisplayForDestination:(id)destination;
- (void)_updateIcons;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)_updateToastMargin;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)dismissAnimated:(BOOL)animated afterDelay:(double)delay;
- (void)finishProgressMarkingAsComplete:(BOOL)complete updatedLocalizedTitle:(id)title updatedLocalizedDescription:(id)description;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBottomSpacing:(double)spacing;
- (void)setBounds:(CGRect)bounds;
- (void)setCloseButtonAction:(id)action;
- (void)setCustomSubtitleText:(id)text;
- (void)setErrors:(id)errors forMediaType:(int64_t)type;
- (void)setLocalizedProgressText:(id)text;
- (void)setLocalizedTitle:(id)title;
- (void)setState:(int64_t)state;
- (void)updateConstraints;
- (void)willStartProgress;
@end

@implementation PXActionProgressToast

- (void)_updateDisplayForDestination:(id)destination
{
  destinationCopy = destination;
  targetDestination = [(PXActionProgressToast *)self targetDestination];
  if (targetDestination)
  {
    targetDestination2 = [(PXActionProgressToast *)self targetDestination];
    v6 = [targetDestination2 isEqualToNavigationDestination:destinationCopy] ^ 1;
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

- (void)_handleContentModeChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69BE9B8]];

  [(PXActionProgressToast *)self _updateDisplayForDestination:v5];
}

- (void)_updateIcons
{
  state = [(PXActionProgressToast *)self state];
  if (state <= 4)
  {
    v4 = 0xFu >> state;
    v5 = 0x18u >> state;
    [(UIButton *)self->_errorView setHidden:(0x17u >> state) & 1];
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
  _determinateProgressView = [(PXActionProgressToast *)self _determinateProgressView];
  [_determinateProgressView prepareForReuse];

  labelContainerWidthConstraint = self->_labelContainerWidthConstraint;

  [(NSLayoutConstraint *)labelContainerWidthConstraint setConstant:0.0];
}

- (id)_tabBarController
{
  _mainViewController = [(PXActionProgressToast *)self _mainViewController];
  tabBarController = [_mainViewController tabBarController];

  return tabBarController;
}

- (id)_mainViewController
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];

  rootViewController = [px_firstKeyWindow rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentViewController = [rootViewController contentViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    contentViewController = [rootViewController selectedViewController];
  }

  v6 = contentViewController;

  rootViewController = v6;
LABEL_6:

  return rootViewController;
}

- (void)_updateToastMargin
{
  [(PXActionProgressToast *)self bottomSpacing];
  v4 = v3;
  _tabBarController = [(PXActionProgressToast *)self _tabBarController];
  v10 = _tabBarController;
  if (_tabBarController && ([_tabBarController isTabBarHidden] & 1) == 0)
  {
    tabBar = [v10 tabBar];
    [tabBar frame];
    v8 = v9;
  }

  else
  {
    tabBar = [(PXActionProgressToast *)self _mainViewController];
    [tabBar px_safeAreaInsets];
    v8 = v7;
  }

  self->_toastMargin = v4 + 8.0 + v8;
  [(PXToast *)self->_toast setBottomMargin:?];
}

- (void)_close:(id)_close
{
  if ([(PXActionProgressToast *)self state]== 1 || ![(PXActionProgressToast *)self state])
  {
    closeButtonAction = [(PXActionProgressToast *)self closeButtonAction];

    if (closeButtonAction)
    {
      closeButtonAction2 = [(PXActionProgressToast *)self closeButtonAction];
      closeButtonAction2[2]();
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

- (void)_errorButtonClicked:(id)clicked
{
  errorButtonAction = [(PXActionProgressToast *)self errorButtonAction];

  if (errorButtonAction)
  {
    errorButtonAction2 = [(PXActionProgressToast *)self errorButtonAction];
    errors = [(PXActionProgressToast *)self errors];
    errorButtonAction2[2](errorButtonAction2, errors);
  }
}

- (void)_handleSingleTouchTap:(id)tap
{
  _tabBarController = [(PXActionProgressToast *)self _tabBarController];
  targetDestination = [(PXActionProgressToast *)self targetDestination];
  if (targetDestination)
  {
    [_tabBarController px_switchToTabAndNavigateToDestination:targetDestination options:0 completionHandler:&__block_literal_global_199607];
  }
}

- (void)setCloseButtonAction:(id)action
{
  v5 = _Block_copy(action);
  closeButtonAction = self->_closeButtonAction;
  self->_closeButtonAction = v5;

  [(UIButton *)self->_closeButton setHidden:action == 0];

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)_updateSecondaryLabel
{
  localizedProgressText = [(PXActionProgressToast *)self localizedProgressText];
  [(UILabel *)self->_secondaryLabel setText:localizedProgressText];

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)setLocalizedProgressText:(id)text
{
  textCopy = text;
  customSubtitleText = [(PXActionProgressToast *)self customSubtitleText];

  if (!customSubtitleText)
  {
    v6 = self->_localizedProgressText;
    v7 = v6;
    if (v6 == textCopy)
    {
    }

    else
    {
      v8 = [(NSString *)v6 isEqualToString:textCopy];

      if (!v8)
      {
        objc_storeStrong(&self->_localizedProgressText, text);
        [(PXActionProgressToast *)self _updateSecondaryLabel];
      }
    }
  }
}

- (void)setCustomSubtitleText:(id)text
{
  textCopy = text;
  v4 = self->_customSubtitleText;
  customSubtitleText = v4;
  if (v4 != textCopy)
  {
    v6 = [(NSString *)v4 isEqualToString:textCopy];

    v7 = textCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PXActionProgressToast *)self setLocalizedProgressText:textCopy];
    v8 = textCopy;
    customSubtitleText = self->_customSubtitleText;
    self->_customSubtitleText = v8;
  }

  v7 = textCopy;
LABEL_5:
}

- (void)_updatePrimaryLabel
{
  localizedTitle = [(PXActionProgressToast *)self localizedTitle];
  v3 = [(PXActionProgressToast *)self state]!= 4 && [(PXActionProgressToast *)self state]!= 3;
  if (v3 || !localizedTitle)
  {
    progress = [(PXActionProgressToast *)self progress];
    localizedDescription = [progress localizedDescription];
    [(UILabel *)self->_primaryLabel setText:localizedDescription];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setText:localizedTitle];
  }

  [(PXActionProgressToast *)self setNeedsUpdateConstraints];
}

- (void)setLocalizedTitle:(id)title
{
  titleCopy = title;
  v5 = self->_localizedTitle;
  v6 = v5;
  if (v5 == titleCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_localizedTitle, title);
      [(PXActionProgressToast *)self _updatePrimaryLabel];
    }
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PXActionProgressToast *)self _updatePrimaryLabel];
  }
}

- (void)setBottomSpacing:(double)spacing
{
  if (self->_bottomSpacing != spacing)
  {
    self->_bottomSpacing = spacing;
    [(PXActionProgressToast *)self _updateToastMargin];
  }
}

- (void)finishProgressMarkingAsComplete:(BOOL)complete updatedLocalizedTitle:(id)title updatedLocalizedDescription:(id)description
{
  completeCopy = complete;
  titleCopy = title;
  descriptionCopy = description;
  if ([(PXActionProgressToast *)self state]== 1)
  {
    [(PXActionProgressToast *)self setState:4];
    if (!completeCopy)
    {
      v14 = 1.7;
LABEL_17:
      [(PXActionProgressToast *)self dismissAnimated:1 afterDelay:v14];
      goto LABEL_18;
    }

    if (titleCopy)
    {
      localizedTitle = [(PXActionProgressToast *)self localizedTitle];
      if (localizedTitle == titleCopy)
      {

        if (!descriptionCopy)
        {
          goto LABEL_15;
        }

LABEL_8:
        localizedProgressText = [(PXActionProgressToast *)self localizedProgressText];
        v12 = localizedProgressText;
        if (localizedProgressText == descriptionCopy)
        {
        }

        else
        {
          v13 = [descriptionCopy isEqualToString:localizedProgressText];

          if ((v13 & 1) == 0)
          {
            [(PXActionProgressToast *)self setLocalizedProgressText:descriptionCopy];
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

      v10 = [titleCopy isEqualToString:localizedTitle];

      if ((v10 & 1) == 0)
      {
        [(PXActionProgressToast *)self setLocalizedTitle:titleCopy];
      }
    }

    if (!descriptionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_18:
}

- (void)setErrors:(id)errors forMediaType:(int64_t)type
{
  errorsCopy = errors;
  objc_storeStrong(&self->_errors, errors);
  if ([errorsCopy count])
  {
    if ([(PXActionProgressToast *)self state]!= 1)
    {
      [(PXActionProgressToast *)self _prepareForReuse];
      [(PXActionProgressToast *)self _showToast];
    }

    [(PXActionProgressToast *)self setState:3];
    PXLocalizedAssetCountForUsage([errorsCopy count], type, 0, 5);
  }
}

- (BOOL)isLocked
{
  state = [(PXActionProgressToast *)self state];
  closeButtonAction = [(PXActionProgressToast *)self closeButtonAction];

  return state == 1 && closeButtonAction != 0;
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  targetDestination = [(PXActionProgressToast *)self targetDestination];
  v5 = [_activeToasts_199612 objectForKey:?];

  if (v5)
  {
    [_activeToasts_199612 removeObjectForKey:targetDestination];
  }

  [(PXToast *)self->_toast dismissAnimated:animatedCopy];
}

- (void)dismissAnimated:(BOOL)animated afterDelay:(double)delay
{
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXActionProgressToast_dismissAnimated_afterDelay___block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v8, &location);
  animatedCopy = animated;
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
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = _activeToasts_199612;
    _activeToasts_199612 = weakToWeakObjectsMapTable;

    v3 = _activeToasts_199612;
  }

  targetDestination = [(PXActionProgressToast *)self targetDestination];
  v7 = [v3 objectForKey:targetDestination];

  if (!v7)
  {
    goto LABEL_9;
  }

  if (([v7 isLocked] & 1) == 0)
  {
    [v7 dismissAnimated:1];
LABEL_9:
    v9 = _activeToasts_199612;
    targetDestination2 = [(PXActionProgressToast *)self targetDestination];
    [v9 setObject:self forKey:targetDestination2];

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
  _determinateProgressView = [(PXActionProgressToast *)self _determinateProgressView];
  progress = [(PXActionProgressToast *)self progress];
  [progress fractionCompleted];
  *&v4 = v4;
  [_determinateProgressView setProgress:v4];
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
  progress = [(PXActionProgressToast *)self progress];
  localizedAdditionalDescription = [progress localizedAdditionalDescription];
  [(PXActionProgressToast *)self setLocalizedProgressText:localizedAdditionalDescription];

  targetDestination = [(PXActionProgressToast *)self targetDestination];
  [(PXActionProgressToast *)self _updateDisplayForDestination:targetDestination];

  [(PXActionProgressToast *)self setState:1];
  [(PXActionProgressToast *)self _showToast];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (PXActionProgressToastContext == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PXActionProgressToast_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C620;
    v14 = pathCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXActionProgressToast;
    [(PXActionProgressToast *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
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

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = PXActionProgressToast;
  [(PXActionProgressToast *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
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
    widthAnchor = [(UILabel *)self->_primaryLabel widthAnchor];
    v7 = [widthAnchor constraintEqualToConstant:v4];
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
    widthAnchor2 = [(UILabel *)self->_secondaryLabel widthAnchor];
    v14 = [widthAnchor2 constraintEqualToConstant:v11];
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
    widthAnchor3 = [(UIView *)self->_labelContainer widthAnchor];
    v20 = [widthAnchor3 constraintEqualToConstant:v4];
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

  closeButtonAction = [(PXActionProgressToast *)self closeButtonAction];

  labelContainer = self->_labelContainer;
  if (closeButtonAction)
  {
    centerXAnchor = [(UIView *)labelContainer centerXAnchor];
    centerXAnchor2 = [(UILabel *)self->_primaryLabel centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    primaryLabelAlignmentConstraint = self->_primaryLabelAlignmentConstraint;
    self->_primaryLabelAlignmentConstraint = v26;

    [(NSLayoutConstraint *)self->_primaryLabelAlignmentConstraint setActive:1];
    centerXAnchor3 = [(UIView *)self->_labelContainer centerXAnchor];
    centerXAnchor4 = [(UILabel *)self->_secondaryLabel centerXAnchor];
    v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    secondaryLabelAlignmentConstraint = self->_secondaryLabelAlignmentConstraint;
    self->_secondaryLabelAlignmentConstraint = v30;

    [(NSLayoutConstraint *)self->_secondaryLabelAlignmentConstraint setActive:1];
    trailingAnchor = [(PXActionProgressToast *)self trailingAnchor];
    p_closeButton = &self->_closeButton;
    trailingAnchor2 = [(UIButton *)self->_closeButton trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
    trailingSpacingConstraint = self->_trailingSpacingConstraint;
    self->_trailingSpacingConstraint = v35;

    [(NSLayoutConstraint *)self->_trailingSpacingConstraint setActive:1];
    v37 = 18.0;
  }

  else
  {
    leadingAnchor = [(UIView *)labelContainer leadingAnchor];
    leadingAnchor2 = [(UILabel *)self->_primaryLabel leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41 = self->_primaryLabelAlignmentConstraint;
    self->_primaryLabelAlignmentConstraint = v40;

    [(NSLayoutConstraint *)self->_primaryLabelAlignmentConstraint setActive:1];
    leadingAnchor3 = [(UIView *)self->_labelContainer leadingAnchor];
    leadingAnchor4 = [(UILabel *)self->_secondaryLabel leadingAnchor];
    v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v45 = self->_secondaryLabelAlignmentConstraint;
    self->_secondaryLabelAlignmentConstraint = v44;

    [(NSLayoutConstraint *)self->_secondaryLabelAlignmentConstraint setActive:1];
    trailingAnchor3 = [(PXActionProgressToast *)self trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_labelContainer trailingAnchor];
    v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:22.0];
    v49 = self->_trailingSpacingConstraint;
    self->_trailingSpacingConstraint = v48;

    [(NSLayoutConstraint *)self->_trailingSpacingConstraint setActive:1];
    p_closeButton = &self->_closeButton;
    v37 = 0.0;
  }

  widthAnchor4 = [(UIButton *)*p_closeButton widthAnchor];
  v51 = [widthAnchor4 constraintEqualToConstant:v37];
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BE9A8] object:0];

  v10.receiver = self;
  v10.super_class = PXActionProgressToast;
  [(PXActionProgressToast *)&v10 dealloc];
}

- (PXActionProgressToast)initWithTargetDestination:(id)destination progress:(id)progress
{
  v143[27] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  progressCopy = progress;
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
    v141 = destinationCopy;
    layer = [(PXActionProgressToast *)v13 layer];
    [layer setCornerRadius:22.0];

    [PXToastDefaultContentView configureBackgroundOfToastContentView:v14];
    objc_storeStrong(&v14->_targetDestination, destination);
    p_progress = &v14->_progress;
    objc_storeStrong(&v14->_progress, progress);
    v140 = progressCopy;
    if ([progressCopy isIndeterminate])
    {
      v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UIView *)v17 setColor:secondaryLabelColor];

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__handleContentModeChange_ name:*MEMORY[0x1E69BE9A8] object:0];
    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v138 = [v26 imageWithRenderingMode:2];

    v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v138];
    checkmarkView = v14->_checkmarkView;
    v14->_checkmarkView = v27;

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v14->_checkmarkView setTintColor:secondaryLabelColor2];

    [(PXActionProgressToast *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [MEMORY[0x1E69DC738] buttonWithType:0];
    errorView = v14->_errorView;
    v14->_errorView = v30;

    secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v14->_errorView setTintColor:secondaryLabelColor3];

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

    secondaryLabelColor4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v14->_closeButton setTintColor:secondaryLabelColor4];

    [(UIButton *)v14->_closeButton setImage:v137 forState:0];
    [(UIButton *)v14->_closeButton addTarget:v14 action:sel__close_ forControlEvents:64];
    [(PXActionProgressToast *)v14 addSubview:v14->_closeButton];
    [(UIButton *)v14->_closeButton setHidden:1];
    v41 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v14->_primaryLabel;
    v14->_primaryLabel = v41;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v14->_primaryLabel setTextColor:labelColor];

    localizedTitle = [(PXActionProgressToast *)v14 localizedTitle];
    [(UILabel *)v14->_primaryLabel setText:localizedTitle];

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

    secondaryLabelColor5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14->_secondaryLabel setTextColor:secondaryLabelColor5];

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
    heightAnchor = [(PXActionProgressToast *)v56 heightAnchor];
    v58 = [heightAnchor constraintEqualToConstant:44.0];
    [v58 setActive:1];

    v107 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(PXActionProgressToast *)v56 leadingAnchor];
    leadingAnchor2 = [(UIView *)v14->_leadingView leadingAnchor];
    v133 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-12.0];
    v143[0] = v133;
    centerYAnchor = [(PXActionProgressToast *)v56 centerYAnchor];
    centerYAnchor2 = [(UIView *)v14->_leadingView centerYAnchor];
    v130 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v143[1] = v130;
    heightAnchor2 = [(PXActionProgressToast *)v56 heightAnchor];
    heightAnchor3 = [(UIView *)v14->_leadingView heightAnchor];
    v127 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v143[2] = v127;
    heightAnchor4 = [(PXActionProgressToast *)v56 heightAnchor];
    v125 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:80.0];
    v143[3] = v125;
    widthAnchor = [(UIView *)v14->_leadingView widthAnchor];
    v123 = [widthAnchor constraintEqualToConstant:18.0];
    v143[4] = v123;
    centerXAnchor = [(UIView *)v14->_leadingView centerXAnchor];
    centerXAnchor2 = [(UIView *)v14->_progressView centerXAnchor];
    v120 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v143[5] = v120;
    centerYAnchor3 = [(UIView *)v14->_leadingView centerYAnchor];
    centerYAnchor4 = [(UIView *)v14->_progressView centerYAnchor];
    v117 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v143[6] = v117;
    centerYAnchor5 = [(UIView *)v14->_leadingView centerYAnchor];
    centerYAnchor6 = [(UIImageView *)v14->_checkmarkView centerYAnchor];
    v114 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v143[7] = v114;
    centerYAnchor7 = [(UIView *)v14->_leadingView centerYAnchor];
    centerYAnchor8 = [(UIButton *)v14->_errorView centerYAnchor];
    v111 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v143[8] = v111;
    widthAnchor2 = [(UIView *)v14->_progressView widthAnchor];
    v109 = [widthAnchor2 constraintEqualToConstant:18.0];
    v143[9] = v109;
    heightAnchor5 = [(UIView *)v14->_progressView heightAnchor];
    v106 = [heightAnchor5 constraintEqualToConstant:18.0];
    v143[10] = v106;
    widthAnchor3 = [(UIImageView *)v14->_checkmarkView widthAnchor];
    v104 = [widthAnchor3 constraintEqualToConstant:18.0];
    v143[11] = v104;
    heightAnchor6 = [(UIImageView *)v14->_checkmarkView heightAnchor];
    v102 = [heightAnchor6 constraintEqualToConstant:18.0];
    v143[12] = v102;
    widthAnchor4 = [(UIButton *)v14->_errorView widthAnchor];
    v100 = [widthAnchor4 constraintEqualToConstant:18.0];
    v143[13] = v100;
    heightAnchor7 = [(UIButton *)v14->_errorView heightAnchor];
    v98 = [heightAnchor7 constraintEqualToConstant:18.0];
    v143[14] = v98;
    v59 = v56;
    centerYAnchor9 = [(PXActionProgressToast *)v56 centerYAnchor];
    centerYAnchor10 = [(UIButton *)v14->_closeButton centerYAnchor];
    v95 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    v143[15] = v95;
    heightAnchor8 = [(UIButton *)v14->_closeButton heightAnchor];
    v93 = [heightAnchor8 constraintEqualToConstant:18.0];
    v143[16] = v93;
    centerYAnchor11 = [(PXActionProgressToast *)v56 centerYAnchor];
    centerYAnchor12 = [(UIView *)v14->_labelContainer centerYAnchor];
    v90 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
    v143[17] = v90;
    trailingAnchor = [(UIView *)v14->_leadingView trailingAnchor];
    leadingAnchor3 = [(UIView *)v14->_labelContainer leadingAnchor];
    v87 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-12.0];
    v143[18] = v87;
    leadingAnchor4 = [(UIButton *)v14->_closeButton leadingAnchor];
    trailingAnchor2 = [(UIView *)v14->_labelContainer trailingAnchor];
    v84 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:12.0];
    v143[19] = v84;
    topAnchor = [(UIView *)v14->_labelContainer topAnchor];
    topAnchor2 = [(UILabel *)v14->_primaryLabel topAnchor];
    v81 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v143[20] = v81;
    bottomAnchor = [(UIView *)v14->_labelContainer bottomAnchor];
    bottomAnchor2 = [(UILabel *)v14->_secondaryLabel bottomAnchor];
    v78 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v143[21] = v78;
    bottomAnchor3 = [(UILabel *)v14->_primaryLabel bottomAnchor];
    topAnchor3 = [(UILabel *)v14->_secondaryLabel topAnchor];
    v75 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-2.0];
    v143[22] = v75;
    widthAnchor5 = [(UIView *)v14->_labelContainer widthAnchor];
    widthAnchor6 = [(UILabel *)v14->_primaryLabel widthAnchor];
    v72 = [widthAnchor5 constraintGreaterThanOrEqualToAnchor:widthAnchor6];
    v143[23] = v72;
    widthAnchor7 = [(UIView *)v14->_labelContainer widthAnchor];
    widthAnchor8 = [(UILabel *)v14->_secondaryLabel widthAnchor];
    v61 = [widthAnchor7 constraintGreaterThanOrEqualToAnchor:widthAnchor8];
    v143[24] = v61;
    trailingAnchor3 = [(UIView *)v14->_leadingView trailingAnchor];
    leadingAnchor5 = [(UIView *)v14->_labelContainer leadingAnchor];
    v64 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor5];
    v143[25] = v64;
    trailingAnchor4 = [(PXActionProgressToast *)v59 trailingAnchor];
    v66 = v14->_labelContainer;

    trailingAnchor5 = [(UIView *)v66 trailingAnchor];
    v68 = [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
    v143[26] = v68;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:27];
    [v107 activateConstraints:v69];

    destinationCopy = v141;
    progressCopy = v140;
  }

  return v14;
}

@end