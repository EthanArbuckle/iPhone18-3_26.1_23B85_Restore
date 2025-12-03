@interface PUPhotoBrowserTitleViewController
- (BOOL)_needsUpdate;
- (PUPhotoBrowserTitleViewController)init;
- (PUPhotoBrowserTitleViewControllerDelegate)delegate;
- (void)_assertInsideChangeBlock;
- (void)_assertInsideUpdate;
- (void)_dateFormatterChanged:(id)changed;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_invalidateDayAndTimeDescriptions;
- (void)_invalidateGestureRecognizers;
- (void)_invalidateLabels;
- (void)_setDayDescription:(id)description;
- (void)_setNeedsUpdate;
- (void)_setTimeDescription:(id)description;
- (void)_updateDayAndTimeDescriptionsIfNeeded;
- (void)_updateGestureRecognizersIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLabelsIfNeeded;
- (void)performChanges:(id)changes;
- (void)setCreationDate:(id)date;
- (void)setDelegate:(id)delegate;
- (void)setGeoDescription:(id)description;
- (void)setTappable:(BOOL)tappable;
- (void)setUsingCompactTitleView:(BOOL)view;
@end

@implementation PUPhotoBrowserTitleViewController

- (PUPhotoBrowserTitleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3 && self->_delegateFlags.respondsToTapped)
  {
    delegate = [(PUPhotoBrowserTitleViewController *)self delegate];
    [delegate photoBrowserTitleViewControllerTapped:self];
  }
}

- (void)_updateGestureRecognizersIfNeeded
{
  if ([(PUPhotoBrowserTitleViewController *)self _needsUpdateGestureRecognizers])
  {
    [(PUPhotoBrowserTitleViewController *)self _setNeedsUpdateGestureRecognizers:0];
    _tapGestureRecognizer = [(PUPhotoBrowserTitleViewController *)self _tapGestureRecognizer];
    if ([(PUPhotoBrowserTitleViewController *)self isTappable])
    {
      v3 = _tapGestureRecognizer;
      if (!_tapGestureRecognizer)
      {
        v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
        [(UIView *)self->_view addGestureRecognizer:v5];
        v3 = v5;
      }
    }

    else
    {
      v3 = _tapGestureRecognizer;
      if (_tapGestureRecognizer)
      {
        [(UIView *)self->_view removeGestureRecognizer:_tapGestureRecognizer];

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
    photoBrowserPhotoPrimaryTitleFont = [v3 photoBrowserPhotoPrimaryTitleFont];
    photoBrowserPhotoSubtitleFont = [v3 photoBrowserPhotoSubtitleFont];
    geoDescription = [(PUPhotoBrowserTitleViewController *)self geoDescription];
    _dayDescription = [(PUPhotoBrowserTitleViewController *)self _dayDescription];
    _timeDescription = [(PUPhotoBrowserTitleViewController *)self _timeDescription];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PUPhotoBrowserTitleViewController__updateLabelsIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7B7AA38;
    v9 = _dayDescription;
    v34 = v9;
    v10 = _timeDescription;
    v35 = v10;
    v11 = _Block_copy(aBlock);
    usingCompactTitleView = self->_usingCompactTitleView;
    v13 = [geoDescription length];
    v24 = geoDescription;
    v25 = v9;
    if (usingCompactTitleView)
    {
      if (v13)
      {
        v14 = geoDescription;
        v15 = 0;
      }

      else
      {
        v14 = v11[2](v11);
        photoBrowserTimeTitleFont = [v3 photoBrowserTimeTitleFont];

        v15 = 0;
        photoBrowserPhotoPrimaryTitleFont = photoBrowserTimeTitleFont;
      }
    }

    else
    {
      if (v13)
      {
        v14 = geoDescription;
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
    v30 = photoBrowserPhotoPrimaryTitleFont;
    v31 = photoBrowserPhotoSubtitleFont;
    selfCopy = self;
    v19 = photoBrowserPhotoSubtitleFont;
    v20 = photoBrowserPhotoPrimaryTitleFont;
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
    creationDate = [(PUPhotoBrowserTitleViewController *)self creationDate];
    if (creationDate)
    {
      _dayFormatter = [(PUPhotoBrowserTitleViewController *)self _dayFormatter];
      v4 = [_dayFormatter stringFromDate:creationDate];

      _timeFormatter = [(PUPhotoBrowserTitleViewController *)self _timeFormatter];
      v6 = [_timeFormatter stringFromDate:creationDate];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:202 description:@"not within a change block or update"];
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
    _isUpdating = [(PUPhotoBrowserTitleViewController *)self _isUpdating];
    [(PUPhotoBrowserTitleViewController *)self _setUpdating:1];
    [(PUPhotoBrowserTitleViewController *)self _updateDayAndTimeDescriptionsIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _updateLabelsIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _updateGestureRecognizersIfNeeded];
    [(PUPhotoBrowserTitleViewController *)self _setUpdating:_isUpdating];
    if ([(PUPhotoBrowserTitleViewController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:190 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"nil != changeBlock"}];
  }

  _isPerformingChanges = [(PUPhotoBrowserTitleViewController *)self _isPerformingChanges];
  [(PUPhotoBrowserTitleViewController *)self _setPerformingChanges:1];
  changesCopy[2]();
  [(PUPhotoBrowserTitleViewController *)self _setPerformingChanges:_isPerformingChanges];
  if (!_isPerformingChanges)
  {
    [(PUPhotoBrowserTitleViewController *)self _updateIfNeeded];
  }
}

- (void)_assertInsideUpdate
{
  if (![(PUPhotoBrowserTitleViewController *)self _isUpdating])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:161 description:@"not withing update"];
  }
}

- (void)_assertInsideChangeBlock
{
  if (![(PUPhotoBrowserTitleViewController *)self _isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoBrowserTitleViewController.m" lineNumber:156 description:@"not within a change block"];
  }
}

- (void)_dateFormatterChanged:(id)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUPhotoBrowserTitleViewController__dateFormatterChanged___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUPhotoBrowserTitleViewController *)self performChanges:v3];
}

- (void)_setTimeDescription:(id)description
{
  descriptionCopy = description;
  _assertInsideUpdate = [(PUPhotoBrowserTitleViewController *)self _assertInsideUpdate];
  v6 = descriptionCopy;
  if (self->__timeDescription != descriptionCopy)
  {
    _assertInsideUpdate = [(NSString *)descriptionCopy isEqualToString:?];
    v6 = descriptionCopy;
    if ((_assertInsideUpdate & 1) == 0)
    {
      objc_storeStrong(&self->__timeDescription, description);
      _assertInsideUpdate = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = descriptionCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_assertInsideUpdate, v6);
}

- (void)_setDayDescription:(id)description
{
  descriptionCopy = description;
  _assertInsideUpdate = [(PUPhotoBrowserTitleViewController *)self _assertInsideUpdate];
  v6 = descriptionCopy;
  if (self->__dayDescription != descriptionCopy)
  {
    _assertInsideUpdate = [(NSString *)descriptionCopy isEqualToString:?];
    v6 = descriptionCopy;
    if ((_assertInsideUpdate & 1) == 0)
    {
      objc_storeStrong(&self->__dayDescription, description);
      _assertInsideUpdate = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = descriptionCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_assertInsideUpdate, v6);
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  _assertInsideChangeBlock = [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  v6 = dateCopy;
  if (self->_creationDate != dateCopy)
  {
    _assertInsideChangeBlock = [(NSDate *)dateCopy isEqual:?];
    v6 = dateCopy;
    if ((_assertInsideChangeBlock & 1) == 0)
    {
      objc_storeStrong(&self->_creationDate, date);
      _assertInsideChangeBlock = [(PUPhotoBrowserTitleViewController *)self _invalidateDayAndTimeDescriptions];
      v6 = dateCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_assertInsideChangeBlock, v6);
}

- (void)setGeoDescription:(id)description
{
  descriptionCopy = description;
  _assertInsideChangeBlock = [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  v6 = descriptionCopy;
  if (self->_geoDescription != descriptionCopy)
  {
    _assertInsideChangeBlock = [(NSString *)descriptionCopy isEqualToString:?];
    v6 = descriptionCopy;
    if ((_assertInsideChangeBlock & 1) == 0)
    {
      objc_storeStrong(&self->_geoDescription, description);
      _assertInsideChangeBlock = [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
      v6 = descriptionCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_assertInsideChangeBlock, v6);
}

- (void)setUsingCompactTitleView:(BOOL)view
{
  viewCopy = view;
  [(PUPhotoBrowserTitleViewController *)self _assertInsideChangeBlock];
  if (self->_usingCompactTitleView != viewCopy)
  {
    self->_usingCompactTitleView = viewCopy;

    [(PUPhotoBrowserTitleViewController *)self _invalidateLabels];
  }
}

- (void)setTappable:(BOOL)tappable
{
  if (self->_tappable != tappable)
  {
    self->_tappable = tappable;
    [(PUPhotoBrowserTitleViewController *)self _invalidateGestureRecognizers];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__dateFormatterChanged_ name:*MEMORY[0x1E69BE978] object:0];
  }

  return v2;
}

@end