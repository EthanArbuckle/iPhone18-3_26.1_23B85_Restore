@interface PUAdjustmentsViewController
- (BOOL)canToggleCell:(id)cell;
- (CGSize)controlSize;
- (NSArray)pocketableViews;
- (PUAdjustmentViewControllerDelegate)delegate;
- (PUAdjustmentsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUAdjustmentsViewDataSource)dataSource;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)ppt_sliderValueIncrement;
- (double)ppt_sliderVisibleScaleValue;
- (id)_backgroundImageForItemAtIndexPath:(id)path;
- (id)_circularImageWithSize:(CGSize)size color:(id)color;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_performFeedbackIfNeeded;
- (void)_resetControlsAtIndexPath:(id)path;
- (void)_setupCellBackgroundImagesIfNeeded;
- (void)_sliderDidEndScrolling;
- (void)_updateCell:(id)cell withInfo:(id)info;
- (void)_updateCollectionViewLayoutDirection:(int64_t)direction;
- (void)_updateSelectedInfo;
- (void)_updateSliderForControlAtIndexPath:(id)path;
- (void)_updateViewLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)decreaseAdjustmentValue:(BOOL)value;
- (void)didToggleCell:(id)cell;
- (void)hideUnselectedAdjustments:(BOOL)adjustments;
- (void)increaseAdjustmentValue:(BOOL)value;
- (void)ppt_selectNextAdjustment;
- (void)resetControls;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectAdjustmentInfoAtIndexPath:(id)path;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setSelectedIndexPath:(id)path;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderValueChanged:(id)changed;
- (void)sliderWillBeginScrolling:(id)scrolling;
- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateControls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAdjustmentsViewController

- (CGSize)controlSize
{
  width = self->_controlSize.width;
  height = self->_controlSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUAdjustmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUAdjustmentsViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (double)ppt_sliderValueIncrement
{
  slider = [(PUAdjustmentsViewController *)self slider];
  [slider minimumValue];
  v5 = v4;

  slider2 = [(PUAdjustmentsViewController *)self slider];
  [slider2 maximumValue];
  v8 = v7;

  slider3 = [(PUAdjustmentsViewController *)self slider];
  v10 = [slider3 tickMarkCount] - 1;

  slider4 = [(PUAdjustmentsViewController *)self slider];
  [slider4 maximumValue];
  v13 = (v8 - v5) / fmax(v10, 1.0) * 100.0 / v12;

  return v13;
}

- (double)ppt_sliderVisibleScaleValue
{
  slider = [(PUAdjustmentsViewController *)self slider];
  [slider value];
  v5 = v4 * 100.0;
  slider2 = [(PUAdjustmentsViewController *)self slider];
  [slider2 maximumValue];
  v8 = v5 / v7;

  return v8;
}

- (void)ppt_selectNextAdjustment
{
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
  section = [selectedIndexPath section];

  selectedIndexPath2 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  v6 = [selectedIndexPath2 item] + 1;

  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  v8 = [dataSource numberOfItemsInSection:section];

  if (v6 < v8)
  {
    v9 = MEMORY[0x1E696AC88];
    v10 = v6;
LABEL_5:
    v13 = section;
    goto LABEL_7;
  }

  ++section;
  dataSource2 = [(PUAdjustmentsViewController *)self dataSource];
  v12 = [dataSource2 numberOfSections] - 1;

  v9 = MEMORY[0x1E696AC88];
  if (section < v12)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = 0;
  v13 = 0;
LABEL_7:
  v16 = [v9 indexPathForItem:v10 inSection:v13];
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:1];

  collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
  [(PUAdjustmentsViewController *)self collectionView:collectionView2 didSelectItemAtIndexPath:v16];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:selectedIndexPath];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (([decelerating isDragging] & 1) == 0)
  {
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [collectionView selectItemAtIndexPath:selectedIndexPath animated:0 scrollPosition:0];

    selectedIndexPath2 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:selectedIndexPath2];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:selectedIndexPath];
  }

  delegate = [(PUAdjustmentsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerToolDidEndScrubbing:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  slider = [(PUAdjustmentsViewController *)self slider];
  [slider setEnabled:0 dimmed:1 animated:1];

  selectionFeedbackGenerator = [(PUAdjustmentsViewController *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator prepareFeedback];

  delegate = [(PUAdjustmentsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerToolWillBeginScrubbing:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (!-[PUAdjustmentsViewController isAnimatingScroll](self, "isAnimatingScroll") && (([scrollCopy isTracking] & 1) != 0 || objc_msgSend(scrollCopy, "isDecelerating")))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current - self->_previousTimeStamp;
    [scrollCopy contentOffset];
    v7 = fabs((v6 - self->_lastOffset.x) / v5) / 100.0;
    [scrollCopy contentOffset];
    self->_lastOffset.x = v8;
    self->_lastOffset.y = v9;
    self->_previousTimeStamp = Current;
    collectionViewLayout = [(PUAdjustmentsViewController *)self collectionViewLayout];
    [scrollCopy bounds];
    PXRectGetCenter();
    v11 = [collectionViewLayout nearestIndexPathForVisibleItemAtPoint:?];

    selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];

    if (v11 != selectedIndexPath)
    {
      [(PUAdjustmentsViewController *)self setSelectedIndexPath:v11];
      [(PUAdjustmentsViewController *)self setDidPerformHapticFeedback:0];
      if (v7 > 15.0)
      {
        [(PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
      }
    }

    [scrollCopy bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath2 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    v23 = [collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath2];

    [v23 frame];
    MidX = CGRectGetMidX(v29);
    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    v25 = vabdd_f64(MidX, CGRectGetMidX(v30));
    if (v7 < 15.0 && v25 < 6.0)
    {
      [(PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
    }
  }
}

- (void)_performFeedbackIfNeeded
{
  if (![(PUAdjustmentsViewController *)self didPerformHapticFeedback])
  {
    selectionFeedbackGenerator = [(PUAdjustmentsViewController *)self selectionFeedbackGenerator];
    [selectionFeedbackGenerator performFeedback];

    [(PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  }
}

- (void)sliderDidEndScrolling:(id)scrolling
{
  [(PUAdjustmentsViewController *)self _sliderDidEndScrolling];
  if (![(PUAdjustmentsViewController *)self updatingControls])
  {
    v4 = self->_sliderScrubbingLevel - 1;
    self->_sliderScrubbingLevel = v4;
    if (!v4)
    {
      dataSource = [(PUAdjustmentsViewController *)self dataSource];
      [dataSource endInteractiveChange];
    }
  }
}

- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  v7 = [(PUAdjustmentsViewController *)self delegate:scrolling];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(PUAdjustmentsViewController *)self delegate];
    [delegate adjustmentsViewControllerSliderWillEndScrubbing:self];
  }

  if (x == 0.0)
  {

    [(PUAdjustmentsViewController *)self _sliderDidEndScrolling];
  }
}

- (void)_sliderDidEndScrolling
{
  delegate = [(PUAdjustmentsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerSliderDidEndScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionEnded];
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  if (![(PUAdjustmentsViewController *)self updatingControls])
  {
    sliderScrubbingLevel = self->_sliderScrubbingLevel;
    if (!sliderScrubbingLevel)
    {
      dataSource = [(PUAdjustmentsViewController *)self dataSource];
      [dataSource beginInteractiveChange];

      sliderScrubbingLevel = self->_sliderScrubbingLevel;
    }

    self->_sliderScrubbingLevel = sliderScrubbingLevel + 1;
  }

  delegate = [(PUAdjustmentsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerSliderWillBeginScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionBegan];
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  if (![(PUAdjustmentsViewController *)self isAnimatingScroll])
  {
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
    v6 = [collectionView cellForItemAtIndexPath:selectedIndexPath];

    if (([v6 isEnabled] & 1) == 0)
    {
      [v6 setEnabled:1];
      [changedCopy setEnabled:1 dimmed:0 animated:1];
    }

    [v6 setIsUserModifying:1];
    [changedCopy value];
    [v6 setValue:?];
    self->_isUserModified = 1;
    dataSource = [(PUAdjustmentsViewController *)self dataSource];
    [changedCopy value];
    v9 = v8;
    selectedIndexPath2 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [dataSource modifyValue:selectedIndexPath2 atIndexPath:v9];

    self->_isUserModified = 0;
  }
}

- (NSArray)pocketableViews
{
  v7[2] = *MEMORY[0x1E69E9840];
  slider = [(PUAdjustmentsViewController *)self slider];
  v7[0] = slider;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  v7[1] = collectionView;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(PUAdjustmentsViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(PUAdjustmentsViewController *)self updateControls];
  }
}

- (void)selectAdjustmentInfoAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
  v5 = [pathCopy isEqual:selectedIndexPath];

  if ((v5 & 1) == 0)
  {
    [(PUAdjustmentsViewController *)self setSelectedIndexPath:pathCopy];
    if ([(PUAdjustmentsViewController *)self layoutDirection])
    {
      v6 = 2;
    }

    else
    {
      v6 = 16;
    }

    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:v6 animated:1];
  }
}

- (void)hideUnselectedAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = !adjustmentsCopy;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
        v14 = [selectedIndexPath compare:v12];

        collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
        v16 = [collectionView2 cellForItemAtIndexPath:v12];

        if (v14)
        {
          v17 = v10;
        }

        else
        {
          v17 = 1;
        }

        [v16 setAlpha:v17];
      }

      v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)decreaseAdjustmentValue:(BOOL)value
{
  valueCopy = value;
  slider = [(PUAdjustmentsViewController *)self slider];
  [PUPhotoEditSupport changeValueOfSlider:slider reverse:1 coarse:valueCopy];
  [(PUAdjustmentsViewController *)self sliderValueChanged:slider];
}

- (void)increaseAdjustmentValue:(BOOL)value
{
  valueCopy = value;
  slider = [(PUAdjustmentsViewController *)self slider];
  [PUPhotoEditSupport changeValueOfSlider:slider reverse:0 coarse:valueCopy];
  [(PUAdjustmentsViewController *)self sliderValueChanged:slider];
}

- (void)resetControls
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        dataSource = [(PUAdjustmentsViewController *)self dataSource];
        v11 = [dataSource infoForItemAtIndexPath:v9];

        collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
        v13 = [collectionView2 cellForItemAtIndexPath:v9];

        [(PUAdjustmentsViewController *)self _updateCell:v13 withInfo:v11];
        selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
        [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:selectedIndexPath];

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)updateControls
{
  v19 = *MEMORY[0x1E69E9840];
  [(PUAdjustmentsViewController *)self setUpdatingControls:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        dataSource = [(PUAdjustmentsViewController *)self dataSource];
        v11 = [dataSource infoForItemAtIndexPath:v9];

        collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
        v13 = [collectionView2 cellForItemAtIndexPath:v9];

        [(PUAdjustmentsViewController *)self _updateCell:v13 withInfo:v11];
        if (!self->_isUserModified)
        {
          [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(PUAdjustmentsViewController *)self setUpdatingControls:0];
}

- (void)_updateCell:(id)cell withInfo:(id)info
{
  cellCopy = cell;
  infoCopy = info;
  if (cellCopy && infoCopy)
  {
    iconName = [infoCopy iconName];
    [cellCopy setImageTransformBlock:0];
    traitCollection = [(PUAdjustmentsViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      altIconName = [infoCopy altIconName];

      if (altIconName)
      {
        altIconName2 = [infoCopy altIconName];

        iconName = altIconName2;
      }

      altImageTransformBlock = [infoCopy altImageTransformBlock];

      if (altImageTransformBlock)
      {
        altImageTransformBlock2 = [infoCopy altImageTransformBlock];
        [cellCopy setImageTransformBlock:altImageTransformBlock2];
      }
    }

    [cellCopy setImageName:iconName];
    [cellCopy setImageIsColor:{objc_msgSend(infoCopy, "iconIsColor")}];
    [cellCopy setEnabled:{objc_msgSend(infoCopy, "enabled")}];
    [infoCopy minimumLevel];
    [cellCopy setMinValue:?];
    [infoCopy maximumLevel];
    [cellCopy setMaxValue:?];
    [infoCopy defaultLevel];
    [cellCopy setDefaultValue:?];
    [infoCopy identityLevel];
    [cellCopy setIdentityValue:?];
    [infoCopy currentLevel];
    [cellCopy setValue:?];
  }
}

- (id)_backgroundImageForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PUAdjustmentsViewController *)self _setupCellBackgroundImagesIfNeeded];
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];

  v6 = &OBJC_IVAR___PUAdjustmentsViewController__itemBackgroundImage;
  if (selectedIndexPath == pathCopy)
  {
    v6 = &OBJC_IVAR___PUAdjustmentsViewController__selectedItemBackgroundImage;
  }

  v7 = *(&self->super.super.super.isa + *v6);

  return v7;
}

- (void)_setupCellBackgroundImagesIfNeeded
{
  if (!self->_itemBackgroundImage)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [systemBackgroundColor colorWithAlphaComponent:0.3];

    v5 = [(PUAdjustmentsViewController *)self _circularImageWithSize:v4 color:51.0, 51.0];
    itemBackgroundImage = self->_itemBackgroundImage;
    self->_itemBackgroundImage = v5;
  }

  if (!self->_selectedItemBackgroundImage)
  {
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [systemBackgroundColor2 colorWithAlphaComponent:0.9];

    v8 = [(PUAdjustmentsViewController *)self _circularImageWithSize:v10 color:53.0, 53.0];
    selectedItemBackgroundImage = self->_selectedItemBackgroundImage;
    self->_selectedItemBackgroundImage = v8;
  }
}

- (id)_circularImageWithSize:(CGSize)size color:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PUAdjustmentsViewController__circularImageWithSize_color___block_invoke;
  v11[3] = &unk_1E7B74BD0;
  v12 = colorCopy;
  v13 = width;
  v14 = height;
  v8 = colorCopy;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

void __60__PUAdjustmentsViewController__circularImageWithSize_color___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v3 setFill];
  v5 = [v4 CGContext];

  v6 = a1[5];
  v7 = a1[6];
  v8 = 0;
  v9 = 0;

  CGContextFillEllipseInRect(v5, *&v8);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  v9 = [dataSource infoForItemAtIndexPath:pathCopy];

  [(PUAdjustmentsViewController *)self _updateCell:cellCopy withInfo:v9];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  v9 = [dataSource infoForItemAtIndexPath:pathCopy];

  identifier = [v9 identifier];
  v11 = *MEMORY[0x1E69BDF98];

  if (identifier == v11)
  {
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PUEditAutoEnhanceCellReuseIdentifier" forIndexPath:pathCopy];

    autoEnhanceCell = self->_autoEnhanceCell;
    self->_autoEnhanceCell = v13;

    [(PUPhotoEditAutoAdjustmentCell *)self->_autoEnhanceCell setDelegate:self];
    v12 = self->_autoEnhanceCell;
  }

  else
  {
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PUEditAdjustmentsCellReuseIdentifier" forIndexPath:pathCopy];

    [(PUPhotoEditAutoAdjustmentCell *)v12 setDelegate:self];
    [(PUPhotoEditAutoAdjustmentCell *)v12 setShouldDisplayValueLabel:[(PUAdjustmentsViewController *)self shouldDisplayControlValues]];
    [(PUPhotoEditAutoAdjustmentCell *)v12 setDisplayMappedValue:[(PUAdjustmentsViewController *)self shouldDisplayMappedValues]];
  }

  [(PUAdjustmentsViewController *)self _updateCell:v12 withInfo:v9];

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(PUAdjustmentsViewController *)self dataSource];

  if (!dataSource)
  {
    return 0;
  }

  dataSource2 = [(PUAdjustmentsViewController *)self dataSource];
  numberOfSections = [dataSource2 numberOfSections];

  return numberOfSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(PUAdjustmentsViewController *)self dataSource];

  if (!dataSource)
  {
    return 0;
  }

  dataSource2 = [(PUAdjustmentsViewController *)self dataSource];
  v8 = [dataSource2 numberOfItemsInSection:section];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];

  if (selectedIndexPath != pathCopy)
  {
    [(PUAdjustmentsViewController *)self setSelectedIndexPath:pathCopy];
    slider = [(PUAdjustmentsViewController *)self slider];
    [slider setEnabled:0 dimmed:1 animated:1];

    [(PUAdjustmentsViewController *)self setIsAnimatingScroll:1];
    if ([(PUAdjustmentsViewController *)self layoutDirection])
    {
      v8 = 2;
    }

    else
    {
      v8 = 16;
    }

    v9 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PUAdjustmentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v12[3] = &unk_1E7B7F350;
    v12[4] = self;
    v13 = pathCopy;
    v14 = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__PUAdjustmentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
    v10[3] = &unk_1E7B80088;
    v10[4] = self;
    v11 = v13;
    [v9 animateWithDuration:v12 animations:v10 completion:0.25];
  }
}

void __71__PUAdjustmentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:*(a1 + 48) animated:0];
}

uint64_t __71__PUAdjustmentsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateSliderForControlAtIndexPath:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setIsAnimatingScroll:0];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (index)
  {
    if (index < 1)
    {
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v11 = *(MEMORY[0x1E69DDCE0] + 24);
      v14 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
    }

    else
    {
      layoutDirection = [(PUAdjustmentsViewController *)self layoutDirection];
      if (layoutDirection)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 10.0;
      }

      if (layoutDirection)
      {
        v12 = 10.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (layoutDirection)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 10.0;
      }

      if (layoutDirection)
      {
        v14 = 10.0;
      }

      else
      {
        v14 = 0.0;
      }
    }
  }

  else
  {
    layoutDirection2 = [(PUAdjustmentsViewController *)self layoutDirection];
    v13 = 0.0;
    if (layoutDirection2)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 10.0;
    }

    if (layoutDirection2)
    {
      v12 = 10.0;
    }

    else
    {
      v12 = 0.0;
    }

    v14 = 0.0;
  }

  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)didToggleCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  self->_isUserModified = 1;
  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  isEnabled = [cellCopy isEnabled];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PUAdjustmentsViewController_didToggleCell___block_invoke;
  v11[3] = &unk_1E7B76EA8;
  v11[4] = self;
  v12 = v6;
  v13 = cellCopy;
  v9 = cellCopy;
  v10 = v6;
  [dataSource setAdjustmentEnabled:isEnabled atIndexPath:v10 completionHandler:v11];

  self->_isUserModified = 0;
}

void __45__PUAdjustmentsViewController_didToggleCell___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _updateSliderForControlAtIndexPath:*(a1 + 40)];
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 infoForItemAtIndexPath:*(a1 + 40)];

    [v4 currentLevel];
    [*(a1 + 48) setValue:?];
    [*(a1 + 48) setIsUserModifying:{objc_msgSend(v4, "enabled")}];
  }
}

- (BOOL)canToggleCell:(id)cell
{
  cellCopy = cell;
  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  v7 = [collectionView indexPathForCell:cellCopy];

  LOBYTE(cellCopy) = [dataSource canModifyAdjustmentAtIndexPath:v7];
  return cellCopy;
}

- (void)_resetControlsAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  [v7 resetToDefault];
  slider = [(PUAdjustmentsViewController *)self slider];
  [slider resetToDefault];
}

- (void)setSelectedIndexPath:(id)path
{
  pathCopy = path;
  if (self->_selectedIndexPath != pathCopy)
  {
    v8 = pathCopy;
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:self->_selectedIndexPath];

    [v7 setIsUserModifying:0];
    objc_storeStrong(&self->_selectedIndexPath, path);
    [(PUAdjustmentsViewController *)self _updateSelectedInfo];

    pathCopy = v8;
  }
}

- (void)_updateSelectedInfo
{
  dataSource = [(PUAdjustmentsViewController *)self dataSource];
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];
  obj = [dataSource infoForItemAtIndexPath:selectedIndexPath];

  v5 = obj;
  if (obj)
  {
    objc_storeStrong(&self->_selectedAdjustmentInfo, obj);
    delegate = [(PUAdjustmentsViewController *)self delegate];

    v5 = obj;
    if (delegate)
    {
      delegate2 = [(PUAdjustmentsViewController *)self delegate];
      [delegate2 adjustmentsViewControllerDidUpdateSelectedControl:self];

      v5 = obj;
    }
  }
}

- (void)setLayoutDirection:(int64_t)direction
{
  if (self->_layoutDirection != direction)
  {
    self->_layoutDirection = direction;
    [(PUAdjustmentsViewController *)self _updateCollectionViewLayoutDirection:?];
  }
}

- (void)_updateCollectionViewLayoutDirection:(int64_t)direction
{
  v4 = direction == 0;
  collectionViewLayout = [(PUAdjustmentsViewController *)self collectionViewLayout];
  [collectionViewLayout setScrollDirection:v4];

  collectionViewLayout2 = [(PUAdjustmentsViewController *)self collectionViewLayout];
  [collectionViewLayout2 invalidateLayout];
}

- (void)_updateSliderForControlAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];

  v5 = pathCopy;
  if (selectedIndexPath == pathCopy)
  {
    dataSource = [(PUAdjustmentsViewController *)self dataSource];
    v7 = [dataSource infoForItemAtIndexPath:pathCopy];

    if (v7)
    {
      enabled = [v7 enabled];
      identifier = [v7 identifier];
      v10 = identifier != *MEMORY[0x1E69BDF98];

      v11 = v10 | enabled;
      slider = [(PUAdjustmentsViewController *)self slider];
      [slider setEnabled:v11 & 1 dimmed:enabled ^ 1u animated:1];

      [v7 minimumLevel];
      v14 = v13;
      slider2 = [(PUAdjustmentsViewController *)self slider];
      [slider2 setMinimumValue:v14];

      [v7 maximumLevel];
      v17 = v16;
      slider3 = [(PUAdjustmentsViewController *)self slider];
      [slider3 setMaximumValue:v17];

      [v7 defaultLevel];
      v20 = v19;
      slider4 = [(PUAdjustmentsViewController *)self slider];
      [slider4 setDefaultValue:v20];

      slider5 = [(PUAdjustmentsViewController *)self slider];
      [slider5 defaultValue];
      v24 = v23;
      slider6 = [(PUAdjustmentsViewController *)self slider];
      [slider6 setMarkedValue:v24];

      if (!self->_snappingController)
      {
        v26 = objc_alloc(MEMORY[0x1E69C3C28]);
        slider7 = [(PUAdjustmentsViewController *)self slider];
        [v7 defaultLevel];
        [slider7 xOffsetForValue:?];
        v28 = [v26 initWithSnappingTarget:?];
        snappingController = self->_snappingController;
        self->_snappingController = v28;

        [(PXUISnappingController *)self->_snappingController setRetentionOffsetThreshold:5.0];
        [(PXUISnappingController *)self->_snappingController setAttractionOffsetThreshold:5.0];
        [(PXUISnappingController *)self->_snappingController setAttractionVelocityThreshold:30.0];
        [(PXUISnappingController *)self->_snappingController setAccumulateOffsetWhileSnapped:1];
      }

      [v7 currentLevel];
      v31 = v30;
      slider8 = [(PUAdjustmentsViewController *)self slider];
      [slider8 setValue:v31];
    }

    v5 = pathCopy;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = PUAdjustmentsViewController;
  coordinatorCopy = coordinator;
  [(PUAdjustmentsViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PUAdjustmentsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E7B7DC38;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
}

void __82__PUAdjustmentsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedIndexPath];

  if (v2)
  {
    if ([*(a1 + 32) layoutDirection])
    {
      v3 = 2;
    }

    else
    {
      v3 = 16;
    }

    v4 = [*(a1 + 32) collectionView];
    v5 = [*(a1 + 32) selectedIndexPath];
    [v4 scrollToItemAtIndexPath:v5 atScrollPosition:v3 animated:0];

    v6 = *(a1 + 32);
    v7 = [v6 selectedIndexPath];
    [v6 _updateSliderForControlAtIndexPath:v7];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = PUAdjustmentsViewController;
  [(PUAdjustmentsViewController *)&v16 viewDidAppear:appear];
  selectedIndexPath = [(PUAdjustmentsViewController *)self selectedIndexPath];

  if (!selectedIndexPath)
  {
    collectionViewLayout = [(PUAdjustmentsViewController *)self collectionViewLayout];
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    [collectionView bounds];
    UIRectGetCenter();
    v7 = [collectionViewLayout nearestIndexPathForVisibleItemAtPoint:?];
    [(PUAdjustmentsViewController *)self setSelectedIndexPath:v7];
  }

  if ([(PUAdjustmentsViewController *)self layoutDirection])
  {
    v8 = 2;
  }

  else
  {
    v8 = 16;
  }

  collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
  selectedIndexPath2 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [collectionView2 selectItemAtIndexPath:selectedIndexPath2 animated:0 scrollPosition:0];

  collectionView3 = [(PUAdjustmentsViewController *)self collectionView];
  selectedIndexPath3 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [collectionView3 scrollToItemAtIndexPath:selectedIndexPath3 atScrollPosition:v8 animated:0];

  selectedIndexPath4 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:selectedIndexPath4];

  delegate = [(PUAdjustmentsViewController *)self delegate];
  LOBYTE(collectionView3) = objc_opt_respondsToSelector();

  if (collectionView3)
  {
    delegate2 = [(PUAdjustmentsViewController *)self delegate];
    [delegate2 adjustmentsViewControllerDidAppear:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsViewController;
  [(PUAdjustmentsViewController *)&v3 viewDidLayoutSubviews];
  [(PUAdjustmentsViewController *)self _updateViewLayout];
}

- (void)_updateViewLayout
{
  view = [(PUAdjustmentsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  slider = [(PUAdjustmentsViewController *)self slider];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v48.a = *MEMORY[0x1E695EFD0];
  *&v48.c = v13;
  *&v48.tx = *(MEMORY[0x1E695EFD0] + 32);
  [slider setTransform:&v48];

  view2 = [(PUAdjustmentsViewController *)self view];
  window = [view2 window];

  if ([(PUAdjustmentsViewController *)self layoutDirection])
  {
    view3 = [(PUAdjustmentsViewController *)self view];
    [window convertPoint:view3 fromView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v18 = v17;

    slider2 = [(PUAdjustmentsViewController *)self slider];
    [slider2 setFrame:{0.0, 0.0, v11, 66.0}];

    CGAffineTransformMakeRotation(&v47, -1.57079633);
    slider3 = [(PUAdjustmentsViewController *)self slider];
    v48 = v47;
    [slider3 setTransform:&v48];

    v49.origin.x = v5;
    v49.origin.y = v7;
    v49.size.width = v9;
    v49.size.height = v11;
    v21 = CGRectGetMaxX(v49) + -33.0;
    v50.origin.x = v5;
    v50.origin.y = v7;
    v50.size.width = v9;
    v50.size.height = v11;
    v22 = CGRectGetMidY(v50) - v18 * 0.5;
    slider4 = [(PUAdjustmentsViewController *)self slider];
    [slider4 setCenter:{v21, v22}];

    v51.origin.x = v5;
    v51.origin.y = v7;
    v51.size.width = v9;
    v51.size.height = v11;
    v24 = CGRectGetMaxX(v51) + -51.0 + -57.0;
    v25 = v11 - v18;
    collectionView = [(PUAdjustmentsViewController *)self collectionView];
    [collectionView setFrame:{v24, 0.0, 51.0, v25}];

    v27 = v25 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v29 = v27 - v28 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v31 = v27 - v30 * 0.5;
    collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
    v33 = collectionView2;
    v34 = 0.0;
    v35 = 0.0;
    v36 = v29;
    v37 = v31;
  }

  else
  {
    v52.origin.x = v5;
    v52.origin.y = v7;
    v52.size.width = v9;
    v52.size.height = v11;
    v38 = CGRectGetMaxY(v52) + -66.0 + -5.0;
    slider5 = [(PUAdjustmentsViewController *)self slider];
    [slider5 setFrame:{0.0, v38, v9, 66.0}];

    v53.origin.x = v5;
    v53.origin.y = v7;
    v53.size.width = v9;
    v53.size.height = v11;
    v40 = CGRectGetMaxY(v53) + -51.0 + -62.0;
    collectionView3 = [(PUAdjustmentsViewController *)self collectionView];
    [collectionView3 setFrame:{0.0, v40, v9, 51.0}];

    v42 = v9 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v44 = v9 * 0.5 - v43 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v46 = v42 - v45 * 0.5;
    collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
    v33 = collectionView2;
    v36 = 0.0;
    v37 = 0.0;
    v34 = v44;
    v35 = v46;
  }

  [collectionView2 setContentInset:{v36, v34, v37, v35}];
}

- (void)viewDidLoad
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PUAdjustmentsViewController;
  [(PUAdjustmentsViewController *)&v37 viewDidLoad];
  [(PUAdjustmentsViewController *)self setLayoutDirection:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(PUAdjustmentsViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(PUAdjustmentsViewController *)self setControlSize:51.0, 51.0];
  v5 = objc_alloc_init(PUAdjustmentsViewFlowLayout);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v5;

  [(PUAdjustmentsViewController *)self controlSize];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setItemSize:?];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumInteritemSpacing:20.0];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:20.0];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setScrollDirection:1];
  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v8 = [v7 initWithFrame:self->_collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PUAdjustmentsViewController *)self setCollectionView:v8];

  view2 = [(PUAdjustmentsViewController *)self view];
  collectionView = [(PUAdjustmentsViewController *)self collectionView];
  [view2 addSubview:collectionView];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  collectionView2 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView2 setBackgroundColor:clearColor2];

  collectionView3 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView4 setAllowsKeyboardScrolling:0];

  collectionView5 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView5 setShowsVerticalScrollIndicator:0];

  collectionView6 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView6 setSemanticContentAttribute:3];

  collectionView7 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView7 setContentInsetAdjustmentBehavior:2];

  collectionView8 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView8 setSelectionFollowsFocus:1];

  collectionView9 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView9 _setSupportsPointerDragScrolling:1];

  collectionView10 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView10 setDelegate:self];

  collectionView11 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView11 setDataSource:self];

  collectionView12 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView12 setClipsToBounds:0];

  collectionView13 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView13 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUEditAdjustmentsCellReuseIdentifier"];

  collectionView14 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView14 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUEditAutoEnhanceCellReuseIdentifier"];

  v25 = *MEMORY[0x1E69DE3A0];
  collectionView15 = [(PUAdjustmentsViewController *)self collectionView];
  [collectionView15 setDecelerationRate:v25];

  v27 = +[PUPhotoEditSupport createEditSlider];
  [(PUAdjustmentsViewController *)self setSlider:v27];

  slider = [(PUAdjustmentsViewController *)self slider];
  [slider setDelegate:self];

  slider2 = [(PUAdjustmentsViewController *)self slider];
  [slider2 addTarget:self action:sel_sliderValueChanged_ forControlEvents:4096];

  slider3 = [(PUAdjustmentsViewController *)self slider];
  [slider3 setEnabled:0 dimmed:1 animated:0];

  view3 = [(PUAdjustmentsViewController *)self view];
  slider4 = [(PUAdjustmentsViewController *)self slider];
  [view3 addSubview:slider4];

  if (PUHapticsAllowed_onceToken != -1)
  {
    dispatch_once(&PUHapticsAllowed_onceToken, &__block_literal_global_78331);
  }

  if (PUHapticsAllowed_allowHaptics == 1)
  {
    v33 = objc_alloc_init(PUSelectionFeedbackGenerator);
    selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
    self->_selectionFeedbackGenerator = v33;
  }

  [(PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  v38[0] = objc_opt_class();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v36 = [(PUAdjustmentsViewController *)self registerForTraitChanges:v35 withAction:sel_traitEnvironment_didChangeTraitCollection_];
}

- (PUAdjustmentsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = PUAdjustmentsViewController;
  result = [(PUAdjustmentsViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_shouldDisplayControlValues = 1;
    result->_shouldDisplayMappedValues = 1;
  }

  return result;
}

@end