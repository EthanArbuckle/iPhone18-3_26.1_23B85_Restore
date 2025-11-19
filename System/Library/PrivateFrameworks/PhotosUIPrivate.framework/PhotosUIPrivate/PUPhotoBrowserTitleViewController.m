@interface PUPhotoBrowserTitleViewController
- (BOOL)_needsUpdate;
- (PUPhotoBrowserTitleViewController)init;
- (PUPhotoBrowserTitleViewControllerDelegate)delegate;
- (void)_assertInsideChangeBlock;
- (void)_assertInsideUpdate;
- (void)_dateFormatterChanged:(id)a3;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_invalidateDayAndTimeDescriptions;
- (void)_invalidateGestureRecognizers;
- (void)_invalidateLabels;
- (void)_setDayDescription:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setTimeDescription:(id)a3;
- (void)_updateDayAndTimeDescriptionsIfNeeded;
- (void)_updateGestureRecognizersIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLabelsIfNeeded;
- (void)performChanges:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setGeoDescription:(id)a3;
- (void)setTappable:(BOOL)a3;
- (void)setUsingCompactTitleView:(BOOL)a3;
@end

@implementation PUPhotoBrowserTitleViewController

- (PUPhotoBrowserTitleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  if ([a3 state] == 3 && self->_delegateFlags.respondsToTapped)
  {
    v4 = [(PUPhotoBrowserTitleViewController *)self delegate];
    [v4 photoBrowserTitleViewControllerTapped:self];
  }
}

- (void)_updateGestureRecognizersIfNeeded
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdateGestureRecognizers])
  {
    [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateGestureRecognizers:0];
    v4 = [(PUPhotoBrowserTitleViewController *)self _tapGestureRecognizer];
    if ([(PUPhotoBrowserTitleViewController *)self isTappable])
    {
      v3 = v4;
      if (!v4)
      {
        v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
        [(UIView *)self->_view addGestureRecognizer:v5];
        v3 = v5;
      }
    }

    else
    {
      v3 = v4;
      if (v4)
      {
        [(UIView *)self->_view removeGestureRecognizer:v4];

        v3 = 0;
      }
    }

    v6 = v3;
    [(PUPhotoBrowserTitleViewController *)self _setTapGestureRecognizer:v3];
  }
}

- (void)_invalidateGestureRecognizers
{
  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateGestureRecognizers:1];

  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdate];
}

- (void)_updateLabelsIfNeeded
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdateLabels])
  {
    [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateLabels:0];
    v3 = +[PUInterfaceManager currentTheme];
    v4 = [v3 photoBrowserPhotoPrimaryTitleFont];
    v5 = [v3 photoBrowserPhotoSubtitleFont];
    v6 = [(PUPhotoBrowserTitleViewController *)self geoDescription];
    v7 = [(PUPhotoBrowserTitleViewController *)self _dayDescription];
    v8 = [(PUPhotoBrowserTitleViewController *)self _timeDescription];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PUPhotoBrowserTitleViewController__updateLabelsIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7B7AA38;
    v9 = v7;
    v34 = v9;
    v10 = v8;
    v35 = v10;
    v11 = _Block_copy(aBlock);
    usingCompactTitleView = self->_usingCompactTitleView;
    v13 = [v6 length];
    v24 = v6;
    v25 = v9;
    if (usingCompactTitleView)
    {
      if (v13)
      {
        v14 = v6;
        v15 = 0;
      }

      else
      {
        v14 = v11[2](v11);
        v17 = [v3 photoBrowserTimeTitleFont];

        v15 = 0;
        v4 = v17;
      }
    }

    else
    {
      if (v13)
      {
        v14 = v6;
        v16 = v11[2](v11);
      }

      else
      {
        v14 = v9;
        v16 = v10;
      }

      v15 = v16;
    }

    v18 = self->_view;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__PUPhotoBrowserTitleViewController__updateLabelsIfNeeded__block_invoke_2;
    v26[3] = &unk_1E7B7AF30;
    v27 = v18;
    v28 = v14;
    v29 = v15;
    v30 = v4;
    v31 = v5;
    v32 = self;
    v19 = v5;
    v20 = v4;
    v21 = v15;
    v22 = v14;
    v23 = v18;
    [(UIView *)v23 performChanges:v26];
  }
}

id __58__PUPhotoBrowserTitleViewController__updateLabelsIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = *(a1 + 40);
  if (v2)
  {
    if ([v3 length])
    {
      v4 = PULocalizedString(@"PUPHOTOBROWSER_TITLE_LONG_DATE_FORMAT");
      v5 = PUStringWithValidatedFormat();

      goto LABEL_7;
    }

    v6 = *(a1 + 32);
  }

  else
  {
    v6 = v3;
  }

  v5 = v6;
LABEL_7:

  return v5;
}

uint64_t __58__PUPhotoBrowserTitleViewController__updateLabelsIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setSubtitle:*(a1 + 48)];
  [*(a1 + 32) setTitleFont:*(a1 + 56)];
  [*(a1 + 32) setSubtitleFont:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 72) + 10);

  return [v2 setVerticalSizeClass:v3];
}

- (void)_invalidateLabels
{
  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateLabels:1];

  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdate];
}

- (void)_updateDayAndTimeDescriptionsIfNeeded
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdateDayAndTimeDescriptions])
  {
    [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateDayAndTimeDescriptions:0];
    v7 = [(PUPhotoBrowserTitleViewController *)self creationDate];
    if (v7)
    {
      v3 = [(PUPhotoBrowserTitleViewController *)self _dayFormatter];
      v4 = [v3 stringFromDate:v7];

      v5 = [(PUPhotoBrowserTitleViewController *)self _timeFormatter];
      v6 = [v5 stringFromDate:v7];
    }

    else
    {
      v6 = &stru_1F2AC6818;
      v4 = &stru_1F2AC6818;
    }

    [(PUPhotoBrowserTitleViewController *)self _setDayDescription:v4];
    [(PUPhotoBrowserTitleViewController *)self _setTimeDescription:v6];
  }
}

- (void)_invalidateDayAndTimeDescriptions
{
  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateDayAndTimeDescriptions:1];

  [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdate];
}

- (void)_setNeedsUpdate
{
  if (![(PUPhotoBrowserTitleViewController *)self _isUpdating]&& ![(PUPhotoBrowserTitleViewController *)self _isPerformingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:202 description:@"not within a change block or update"];
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdateDayAndTimeDescriptions]|| [(PUPhotoBrowserTitleViewController *)self _needsUpdateLabels])
  {
    return 1;
  }

  return [(PUPhotoBrowserTitleViewController *)self _needsUpdateGestureRecognizers];
}

- (void)_updateIfNeeded
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdate])
  {
    v4 = [(PUPhotoBrowserTitleViewController *)self _isUpdating];
    [(PUPhotoBrowserTitleViewController *)self _setUpdating:1];
    [(PUPhotoBrowserTitleViewController *)self _updateDayAndTimeDescriptionsIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _updateLabelsIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _updateGestureRecognizersIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _setUpdating:v4];
    if ([(PUPhotoBrowserTitleViewController *)self _needsUpdate])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:190 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)performChanges:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"nil != changeBlock"}];
  }

  v5 = [(PUPhotoBrowserTitleViewController *)self _isPerformingChanges];
  [(PUPhotoBrowserTitleViewController *)self _setPerformingChanges:1];
  v7[2]();
  [(PUPhotoBrowserTitleViewController *)self _setPerformingChanges:v5];
  if (!v5)
  {
    [(PUPhotoBrowserTitleViewController *)self _updateIfNeeded];
  }
}

- (void)_assertInsideUpdate
{
  if (![(PUPhotoBrowserTitleViewController *)self _isUpdating])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:161 description:@"not withing update"];
  }
}

- (void)_assertInsideChangeBlock
{
  if (![(PUPhotoBrowserTitleViewController *)self _isPerformingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:156 description:@"not within a change block"];
  }
}

- (void)_dateFormatterChanged:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUPhotoBrowserTitleViewController__dateFormatterChanged___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUPhotoBrowserTitleViewController *)self performChanges:v3];
}

- (void)_setTimeDescription:(id)a3
{
  v7 = a3;
  v5 = [(PUPhotoBrowserTitleViewController *)self _assertInsideUpdate];
  v6 = v7;
  if (self->__timeDescription != v7)
  {
    v5 = [(NSString *)v7 isEqualToString:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->__timeDescription, a3);
      v5 = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_setDayDescription:(id)a3
{
  v7 = a3;
  v5 = [(PUPhotoBrowserTitleViewController *)self _assertInsideUpdate];
  v6 = v7;
  if (self->__dayDescription != v7)
  {
    v5 = [(NSString *)v7 isEqualToString:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->__dayDescription, a3);
      v5 = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setCreationDate:(id)a3
{
  v7 = a3;
  v5 = [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  v6 = v7;
  if (self->_creationDate != v7)
  {
    v5 = [(NSDate *)v7 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_creationDate, a3);
      v5 = [(PUPhotoBrowserTitleViewController *)self _invalidateDayAndTimeDescriptions];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setGeoDescription:(id)a3
{
  v7 = a3;
  v5 = [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  v6 = v7;
  if (self->_geoDescription != v7)
  {
    v5 = [(NSString *)v7 isEqualToString:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_geoDescription, a3);
      v5 = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setUsingCompactTitleView:(BOOL)a3
{
  v3 = a3;
  [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  if (self->_usingCompactTitleView != v3)
  {
    self->_usingCompactTitleView = v3;

    [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
  }
}

- (void)setTappable:(BOOL)a3
{
  if (self->_tappable != a3)
  {
    self->_tappable = a3;
    [(PUPhotoBrowserTitleViewController *)self _invalidateGestureRecognizers];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToTapped = objc_opt_respondsToSelector() & 1;
  }
}

- (PUPhotoBrowserTitleViewController)init
{
  v12.receiver = self;
  v12.super_class = PUPhotoBrowserTitleViewController;
  v2 = [(PUPhotoBrowserTitleViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C3720]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    view = v2->_view;
    v2->_view = v4;

    v6 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:2];
    dayFormatter = v2->__dayFormatter;
    v2->__dayFormatter = v6;

    [(PLDateRangeFormatter *)v2->__dayFormatter setUseLocalDates:1];
    v8 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:7];
    timeFormatter = v2->__timeFormatter;
    v2->__timeFormatter = v8;

    [(PLDateRangeFormatter *)v2->__timeFormatter setUseLocalDates:1];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__dateFormatterChanged_ name:*MEMORY[0x1E69BE978] object:0];
  }

  return v2;
}

@end