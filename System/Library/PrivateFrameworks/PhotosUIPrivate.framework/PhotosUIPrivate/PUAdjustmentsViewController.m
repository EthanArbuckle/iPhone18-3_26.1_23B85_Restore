@interface PUAdjustmentsViewController
- (BOOL)canToggleCell:(id)a3;
- (CGSize)controlSize;
- (NSArray)pocketableViews;
- (PUAdjustmentViewControllerDelegate)delegate;
- (PUAdjustmentsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUAdjustmentsViewDataSource)dataSource;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)ppt_sliderValueIncrement;
- (double)ppt_sliderVisibleScaleValue;
- (id)_backgroundImageForItemAtIndexPath:(id)a3;
- (id)_circularImageWithSize:(CGSize)a3 color:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_performFeedbackIfNeeded;
- (void)_resetControlsAtIndexPath:(id)a3;
- (void)_setupCellBackgroundImagesIfNeeded;
- (void)_sliderDidEndScrolling;
- (void)_updateCell:(id)a3 withInfo:(id)a4;
- (void)_updateCollectionViewLayoutDirection:(int64_t)a3;
- (void)_updateSelectedInfo;
- (void)_updateSliderForControlAtIndexPath:(id)a3;
- (void)_updateViewLayout;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)decreaseAdjustmentValue:(BOOL)a3;
- (void)didToggleCell:(id)a3;
- (void)hideUnselectedAdjustments:(BOOL)a3;
- (void)increaseAdjustmentValue:(BOOL)a3;
- (void)ppt_selectNextAdjustment;
- (void)resetControls;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectAdjustmentInfoAtIndexPath:(id)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setSelectedIndexPath:(id)a3;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateControls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(PUAdjustmentsViewController *)self slider];
  [v3 minimumValue];
  v5 = v4;

  v6 = [(PUAdjustmentsViewController *)self slider];
  [v6 maximumValue];
  v8 = v7;

  v9 = [(PUAdjustmentsViewController *)self slider];
  v10 = [v9 tickMarkCount] - 1;

  v11 = [(PUAdjustmentsViewController *)self slider];
  [v11 maximumValue];
  v13 = (v8 - v5) / fmax(v10, 1.0) * 100.0 / v12;

  return v13;
}

- (double)ppt_sliderVisibleScaleValue
{
  v3 = [(PUAdjustmentsViewController *)self slider];
  [v3 value];
  v5 = v4 * 100.0;
  v6 = [(PUAdjustmentsViewController *)self slider];
  [v6 maximumValue];
  v8 = v5 / v7;

  return v8;
}

- (void)ppt_selectNextAdjustment
{
  v3 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  v4 = [v3 section];

  v5 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  v6 = [v5 item] + 1;

  v7 = [(PUAdjustmentsViewController *)self dataSource];
  v8 = [v7 numberOfItemsInSection:v4];

  if (v6 < v8)
  {
    v9 = MEMORY[0x1E696AC88];
    v10 = v6;
LABEL_5:
    v13 = v4;
    goto LABEL_7;
  }

  ++v4;
  v11 = [(PUAdjustmentsViewController *)self dataSource];
  v12 = [v11 numberOfSections] - 1;

  v9 = MEMORY[0x1E696AC88];
  if (v4 < v12)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = 0;
  v13 = 0;
LABEL_7:
  v16 = [v9 indexPathForItem:v10 inSection:v13];
  v14 = [(PUAdjustmentsViewController *)self collectionView];
  [v14 scrollToItemAtIndexPath:v16 atScrollPosition:16 animated:1];

  v15 = [(PUAdjustmentsViewController *)self collectionView];
  [(PUAdjustmentsViewController *)self collectionView:v15 didSelectItemAtIndexPath:v16];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v4];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (([a3 isDragging] & 1) == 0)
  {
    v4 = [(PUAdjustmentsViewController *)self collectionView];
    v5 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

    v6 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v6];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v10 = a3;
  if (!a4)
  {
    v6 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v6];
  }

  v7 = [(PUAdjustmentsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PUAdjustmentsViewController *)self delegate];
    [v9 adjustmentsViewControllerToolDidEndScrubbing:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(PUAdjustmentsViewController *)self slider];
  [v4 setEnabled:0 dimmed:1 animated:1];

  v5 = [(PUAdjustmentsViewController *)self selectionFeedbackGenerator];
  [v5 prepareFeedback];

  v6 = [(PUAdjustmentsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PUAdjustmentsViewController *)self delegate];
    [v8 adjustmentsViewControllerToolWillBeginScrubbing:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v27 = a3;
  if (!-[PUAdjustmentsViewController isAnimatingScroll](self, "isAnimatingScroll") && (([v27 isTracking] & 1) != 0 || objc_msgSend(v27, "isDecelerating")))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current - self->_previousTimeStamp;
    [v27 contentOffset];
    v7 = fabs((v6 - self->_lastOffset.x) / v5) / 100.0;
    [v27 contentOffset];
    self->_lastOffset.x = v8;
    self->_lastOffset.y = v9;
    self->_previousTimeStamp = Current;
    v10 = [(PUAdjustmentsViewController *)self collectionViewLayout];
    [v27 bounds];
    PXRectGetCenter();
    v11 = [v10 nearestIndexPathForVisibleItemAtPoint:?];

    v12 = [(PUAdjustmentsViewController *)self selectedIndexPath];

    if (v11 != v12)
    {
      [(PUAdjustmentsViewController *)self setSelectedIndexPath:v11];
      [(PUAdjustmentsViewController *)self setDidPerformHapticFeedback:0];
      if (v7 > 15.0)
      {
        [(PUAdjustmentsViewController *)self _performFeedbackIfNeeded];
      }
    }

    [v27 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(PUAdjustmentsViewController *)self collectionView];
    v22 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    v23 = [v21 layoutAttributesForItemAtIndexPath:v22];

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
    v3 = [(PUAdjustmentsViewController *)self selectionFeedbackGenerator];
    [v3 performFeedback];

    [(PUAdjustmentsViewController *)self setDidPerformHapticFeedback:1];
  }
}

- (void)sliderDidEndScrolling:(id)a3
{
  [(PUAdjustmentsViewController *)self _sliderDidEndScrolling];
  if (![(PUAdjustmentsViewController *)self updatingControls])
  {
    v4 = self->_sliderScrubbingLevel - 1;
    self->_sliderScrubbingLevel = v4;
    if (!v4)
    {
      v5 = [(PUAdjustmentsViewController *)self dataSource];
      [v5 endInteractiveChange];
    }
  }
}

- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v7 = [(PUAdjustmentsViewController *)self delegate:a3];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PUAdjustmentsViewController *)self delegate];
    [v9 adjustmentsViewControllerSliderWillEndScrubbing:self];
  }

  if (x == 0.0)
  {

    [(PUAdjustmentsViewController *)self _sliderDidEndScrolling];
  }
}

- (void)_sliderDidEndScrolling
{
  v3 = [(PUAdjustmentsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PUAdjustmentsViewController *)self delegate];
    [v5 adjustmentsViewControllerSliderDidEndScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionEnded];
}

- (void)sliderWillBeginScrolling:(id)a3
{
  if (![(PUAdjustmentsViewController *)self updatingControls])
  {
    sliderScrubbingLevel = self->_sliderScrubbingLevel;
    if (!sliderScrubbingLevel)
    {
      v5 = [(PUAdjustmentsViewController *)self dataSource];
      [v5 beginInteractiveChange];

      sliderScrubbingLevel = self->_sliderScrubbingLevel;
    }

    self->_sliderScrubbingLevel = sliderScrubbingLevel + 1;
  }

  v6 = [(PUAdjustmentsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PUAdjustmentsViewController *)self delegate];
    [v8 adjustmentsViewControllerSliderWillBeginScrubbing:self];
  }

  snappingController = self->_snappingController;

  [(PXUISnappingController *)snappingController interactionBegan];
}

- (void)sliderValueChanged:(id)a3
{
  v11 = a3;
  if (![(PUAdjustmentsViewController *)self isAnimatingScroll])
  {
    v4 = [(PUAdjustmentsViewController *)self collectionView];
    v5 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    v6 = [v4 cellForItemAtIndexPath:v5];

    if (([v6 isEnabled] & 1) == 0)
    {
      [v6 setEnabled:1];
      [v11 setEnabled:1 dimmed:0 animated:1];
    }

    [v6 setIsUserModifying:1];
    [v11 value];
    [v6 setValue:?];
    self->_isUserModified = 1;
    v7 = [(PUAdjustmentsViewController *)self dataSource];
    [v11 value];
    v9 = v8;
    v10 = [(PUAdjustmentsViewController *)self selectedIndexPath];
    [v7 modifyValue:v10 atIndexPath:v9];

    self->_isUserModified = 0;
  }
}

- (NSArray)pocketableViews
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUAdjustmentsViewController *)self slider];
  v7[0] = v3;
  v4 = [(PUAdjustmentsViewController *)self collectionView];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(PUAdjustmentsViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {

    [(PUAdjustmentsViewController *)self updateControls];
  }
}

- (void)selectAdjustmentInfoAtIndexPath:(id)a3
{
  v8 = a3;
  v4 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(PUAdjustmentsViewController *)self setSelectedIndexPath:v8];
    if ([(PUAdjustmentsViewController *)self layoutDirection])
    {
      v6 = 2;
    }

    else
    {
      v6 = 16;
    }

    v7 = [(PUAdjustmentsViewController *)self collectionView];
    [v7 scrollToItemAtIndexPath:v8 atScrollPosition:v6 animated:1];
  }
}

- (void)hideUnselectedAdjustments:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(PUAdjustmentsViewController *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = !v3;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(PUAdjustmentsViewController *)self selectedIndexPath];
        v14 = [v13 compare:v12];

        v15 = [(PUAdjustmentsViewController *)self collectionView];
        v16 = [v15 cellForItemAtIndexPath:v12];

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

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)decreaseAdjustmentValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAdjustmentsViewController *)self slider];
  [PUPhotoEditSupport changeValueOfSlider:v5 reverse:1 coarse:v3];
  [(PUAdjustmentsViewController *)self sliderValueChanged:v5];
}

- (void)increaseAdjustmentValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAdjustmentsViewController *)self slider];
  [PUPhotoEditSupport changeValueOfSlider:v5 reverse:0 coarse:v3];
  [(PUAdjustmentsViewController *)self sliderValueChanged:v5];
}

- (void)resetControls
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(PUAdjustmentsViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(PUAdjustmentsViewController *)self dataSource];
        v11 = [v10 infoForItemAtIndexPath:v9];

        v12 = [(PUAdjustmentsViewController *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v9];

        [(PUAdjustmentsViewController *)self _updateCell:v13 withInfo:v11];
        v14 = [(PUAdjustmentsViewController *)self selectedIndexPath];
        [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v14];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(PUAdjustmentsViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(PUAdjustmentsViewController *)self dataSource];
        v11 = [v10 infoForItemAtIndexPath:v9];

        v12 = [(PUAdjustmentsViewController *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v9];

        [(PUAdjustmentsViewController *)self _updateCell:v13 withInfo:v11];
        if (!self->_isUserModified)
        {
          [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(PUAdjustmentsViewController *)self setUpdatingControls:0];
}

- (void)_updateCell:(id)a3 withInfo:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 && v6)
  {
    v7 = [v6 iconName];
    [v14 setImageTransformBlock:0];
    v8 = [(PUAdjustmentsViewController *)self traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 1)
    {
      v10 = [v6 altIconName];

      if (v10)
      {
        v11 = [v6 altIconName];

        v7 = v11;
      }

      v12 = [v6 altImageTransformBlock];

      if (v12)
      {
        v13 = [v6 altImageTransformBlock];
        [v14 setImageTransformBlock:v13];
      }
    }

    [v14 setImageName:v7];
    [v14 setImageIsColor:{objc_msgSend(v6, "iconIsColor")}];
    [v14 setEnabled:{objc_msgSend(v6, "enabled")}];
    [v6 minimumLevel];
    [v14 setMinValue:?];
    [v6 maximumLevel];
    [v14 setMaxValue:?];
    [v6 defaultLevel];
    [v14 setDefaultValue:?];
    [v6 identityLevel];
    [v14 setIdentityValue:?];
    [v6 currentLevel];
    [v14 setValue:?];
  }
}

- (id)_backgroundImageForItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(PUAdjustmentsViewController *)self _setupCellBackgroundImagesIfNeeded];
  v5 = [(PUAdjustmentsViewController *)self selectedIndexPath];

  v6 = &OBJC_IVAR___PUAdjustmentsViewController__itemBackgroundImage;
  if (v5 == v4)
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
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [v3 colorWithAlphaComponent:0.3];

    v5 = [(PUAdjustmentsViewController *)self _circularImageWithSize:v4 color:51.0, 51.0];
    itemBackgroundImage = self->_itemBackgroundImage;
    self->_itemBackgroundImage = v5;
  }

  if (!self->_selectedItemBackgroundImage)
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [v7 colorWithAlphaComponent:0.9];

    v8 = [(PUAdjustmentsViewController *)self _circularImageWithSize:v10 color:53.0, 53.0];
    selectedItemBackgroundImage = self->_selectedItemBackgroundImage;
    self->_selectedItemBackgroundImage = v8;
  }
}

- (id)_circularImageWithSize:(CGSize)a3 color:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PUAdjustmentsViewController__circularImageWithSize_color___block_invoke;
  v11[3] = &unk_1E7B74BD0;
  v12 = v6;
  v13 = width;
  v14 = height;
  v8 = v6;
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(PUAdjustmentsViewController *)self dataSource];
  v9 = [v8 infoForItemAtIndexPath:v7];

  [(PUAdjustmentsViewController *)self _updateCell:v10 withInfo:v9];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUAdjustmentsViewController *)self dataSource];
  v9 = [v8 infoForItemAtIndexPath:v6];

  v10 = [v9 identifier];
  v11 = *MEMORY[0x1E69BDF98];

  if (v10 == v11)
  {
    v13 = [v7 dequeueReusableCellWithReuseIdentifier:@"PUEditAutoEnhanceCellReuseIdentifier" forIndexPath:v6];

    autoEnhanceCell = self->_autoEnhanceCell;
    self->_autoEnhanceCell = v13;

    [(PUPhotoEditAutoAdjustmentCell *)self->_autoEnhanceCell setDelegate:self];
    v12 = self->_autoEnhanceCell;
  }

  else
  {
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:@"PUEditAdjustmentsCellReuseIdentifier" forIndexPath:v6];

    [(PUPhotoEditAutoAdjustmentCell *)v12 setDelegate:self];
    [(PUPhotoEditAutoAdjustmentCell *)v12 setShouldDisplayValueLabel:[(PUAdjustmentsViewController *)self shouldDisplayControlValues]];
    [(PUPhotoEditAutoAdjustmentCell *)v12 setDisplayMappedValue:[(PUAdjustmentsViewController *)self shouldDisplayMappedValues]];
  }

  [(PUAdjustmentsViewController *)self _updateCell:v12 withInfo:v9];

  return v12;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [(PUAdjustmentsViewController *)self dataSource];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUAdjustmentsViewController *)self dataSource];
  v6 = [v5 numberOfSections];

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(PUAdjustmentsViewController *)self dataSource];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PUAdjustmentsViewController *)self dataSource];
  v8 = [v7 numberOfItemsInSection:a4];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUAdjustmentsViewController *)self selectedIndexPath];

  if (v6 != v5)
  {
    [(PUAdjustmentsViewController *)self setSelectedIndexPath:v5];
    v7 = [(PUAdjustmentsViewController *)self slider];
    [v7 setEnabled:0 dimmed:1 animated:1];

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
    v13 = v5;
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    if (a5 < 1)
    {
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v11 = *(MEMORY[0x1E69DDCE0] + 24);
      v14 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
    }

    else
    {
      v10 = [(PUAdjustmentsViewController *)self layoutDirection];
      if (v10)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 10.0;
      }

      if (v10)
      {
        v12 = 10.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (v10)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 10.0;
      }

      if (v10)
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
    v15 = [(PUAdjustmentsViewController *)self layoutDirection];
    v13 = 0.0;
    if (v15)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 10.0;
    }

    if (v15)
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

- (void)didToggleCell:(id)a3
{
  v4 = a3;
  v5 = [(PUAdjustmentsViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  self->_isUserModified = 1;
  v7 = [(PUAdjustmentsViewController *)self dataSource];
  v8 = [v4 isEnabled];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PUAdjustmentsViewController_didToggleCell___block_invoke;
  v11[3] = &unk_1E7B76EA8;
  v11[4] = self;
  v12 = v6;
  v13 = v4;
  v9 = v4;
  v10 = v6;
  [v7 setAdjustmentEnabled:v8 atIndexPath:v10 completionHandler:v11];

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

- (BOOL)canToggleCell:(id)a3
{
  v4 = a3;
  v5 = [(PUAdjustmentsViewController *)self dataSource];
  v6 = [(PUAdjustmentsViewController *)self collectionView];
  v7 = [v6 indexPathForCell:v4];

  LOBYTE(v4) = [v5 canModifyAdjustmentAtIndexPath:v7];
  return v4;
}

- (void)_resetControlsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAdjustmentsViewController *)self collectionView];
  v7 = [v5 cellForItemAtIndexPath:v4];

  [v7 resetToDefault];
  v6 = [(PUAdjustmentsViewController *)self slider];
  [v6 resetToDefault];
}

- (void)setSelectedIndexPath:(id)a3
{
  v5 = a3;
  if (self->_selectedIndexPath != v5)
  {
    v8 = v5;
    v6 = [(PUAdjustmentsViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:self->_selectedIndexPath];

    [v7 setIsUserModifying:0];
    objc_storeStrong(&self->_selectedIndexPath, a3);
    [(PUAdjustmentsViewController *)self _updateSelectedInfo];

    v5 = v8;
  }
}

- (void)_updateSelectedInfo
{
  v3 = [(PUAdjustmentsViewController *)self dataSource];
  v4 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  obj = [v3 infoForItemAtIndexPath:v4];

  v5 = obj;
  if (obj)
  {
    objc_storeStrong(&self->_selectedAdjustmentInfo, obj);
    v6 = [(PUAdjustmentsViewController *)self delegate];

    v5 = obj;
    if (v6)
    {
      v7 = [(PUAdjustmentsViewController *)self delegate];
      [v7 adjustmentsViewControllerDidUpdateSelectedControl:self];

      v5 = obj;
    }
  }
}

- (void)setLayoutDirection:(int64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    self->_layoutDirection = a3;
    [(PUAdjustmentsViewController *)self _updateCollectionViewLayoutDirection:?];
  }
}

- (void)_updateCollectionViewLayoutDirection:(int64_t)a3
{
  v4 = a3 == 0;
  v5 = [(PUAdjustmentsViewController *)self collectionViewLayout];
  [v5 setScrollDirection:v4];

  v6 = [(PUAdjustmentsViewController *)self collectionViewLayout];
  [v6 invalidateLayout];
}

- (void)_updateSliderForControlAtIndexPath:(id)a3
{
  v33 = a3;
  v4 = [(PUAdjustmentsViewController *)self selectedIndexPath];

  v5 = v33;
  if (v4 == v33)
  {
    v6 = [(PUAdjustmentsViewController *)self dataSource];
    v7 = [v6 infoForItemAtIndexPath:v33];

    if (v7)
    {
      v8 = [v7 enabled];
      v9 = [v7 identifier];
      v10 = v9 != *MEMORY[0x1E69BDF98];

      v11 = v10 | v8;
      v12 = [(PUAdjustmentsViewController *)self slider];
      [v12 setEnabled:v11 & 1 dimmed:v8 ^ 1u animated:1];

      [v7 minimumLevel];
      v14 = v13;
      v15 = [(PUAdjustmentsViewController *)self slider];
      [v15 setMinimumValue:v14];

      [v7 maximumLevel];
      v17 = v16;
      v18 = [(PUAdjustmentsViewController *)self slider];
      [v18 setMaximumValue:v17];

      [v7 defaultLevel];
      v20 = v19;
      v21 = [(PUAdjustmentsViewController *)self slider];
      [v21 setDefaultValue:v20];

      v22 = [(PUAdjustmentsViewController *)self slider];
      [v22 defaultValue];
      v24 = v23;
      v25 = [(PUAdjustmentsViewController *)self slider];
      [v25 setMarkedValue:v24];

      if (!self->_snappingController)
      {
        v26 = objc_alloc(MEMORY[0x1E69C3C28]);
        v27 = [(PUAdjustmentsViewController *)self slider];
        [v7 defaultLevel];
        [v27 xOffsetForValue:?];
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
      v32 = [(PUAdjustmentsViewController *)self slider];
      [v32 setValue:v31];
    }

    v5 = v33;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = PUAdjustmentsViewController;
  v7 = a4;
  [(PUAdjustmentsViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUAdjustmentsViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PUAdjustmentsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E7B7DC38;
  v10[4] = self;
  [v7 animateAlongsideTransition:v10 completion:0];
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

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = PUAdjustmentsViewController;
  [(PUAdjustmentsViewController *)&v16 viewDidAppear:a3];
  v4 = [(PUAdjustmentsViewController *)self selectedIndexPath];

  if (!v4)
  {
    v5 = [(PUAdjustmentsViewController *)self collectionViewLayout];
    v6 = [(PUAdjustmentsViewController *)self collectionView];
    [v6 bounds];
    UIRectGetCenter();
    v7 = [v5 nearestIndexPathForVisibleItemAtPoint:?];
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

  v9 = [(PUAdjustmentsViewController *)self collectionView];
  v10 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [v9 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];

  v11 = [(PUAdjustmentsViewController *)self collectionView];
  v12 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [v11 scrollToItemAtIndexPath:v12 atScrollPosition:v8 animated:0];

  v13 = [(PUAdjustmentsViewController *)self selectedIndexPath];
  [(PUAdjustmentsViewController *)self _updateSliderForControlAtIndexPath:v13];

  v14 = [(PUAdjustmentsViewController *)self delegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v15 = [(PUAdjustmentsViewController *)self delegate];
    [v15 adjustmentsViewControllerDidAppear:self];
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
  v3 = [(PUAdjustmentsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUAdjustmentsViewController *)self slider];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v48.a = *MEMORY[0x1E695EFD0];
  *&v48.c = v13;
  *&v48.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v12 setTransform:&v48];

  v14 = [(PUAdjustmentsViewController *)self view];
  v15 = [v14 window];

  if ([(PUAdjustmentsViewController *)self layoutDirection])
  {
    v16 = [(PUAdjustmentsViewController *)self view];
    [v15 convertPoint:v16 fromView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v18 = v17;

    v19 = [(PUAdjustmentsViewController *)self slider];
    [v19 setFrame:{0.0, 0.0, v11, 66.0}];

    CGAffineTransformMakeRotation(&v47, -1.57079633);
    v20 = [(PUAdjustmentsViewController *)self slider];
    v48 = v47;
    [v20 setTransform:&v48];

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
    v23 = [(PUAdjustmentsViewController *)self slider];
    [v23 setCenter:{v21, v22}];

    v51.origin.x = v5;
    v51.origin.y = v7;
    v51.size.width = v9;
    v51.size.height = v11;
    v24 = CGRectGetMaxX(v51) + -51.0 + -57.0;
    v25 = v11 - v18;
    v26 = [(PUAdjustmentsViewController *)self collectionView];
    [v26 setFrame:{v24, 0.0, 51.0, v25}];

    v27 = v25 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v29 = v27 - v28 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v31 = v27 - v30 * 0.5;
    v32 = [(PUAdjustmentsViewController *)self collectionView];
    v33 = v32;
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
    v39 = [(PUAdjustmentsViewController *)self slider];
    [v39 setFrame:{0.0, v38, v9, 66.0}];

    v53.origin.x = v5;
    v53.origin.y = v7;
    v53.size.width = v9;
    v53.size.height = v11;
    v40 = CGRectGetMaxY(v53) + -51.0 + -62.0;
    v41 = [(PUAdjustmentsViewController *)self collectionView];
    [v41 setFrame:{0.0, v40, v9, 51.0}];

    v42 = v9 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v44 = v9 * 0.5 - v43 * 0.5;
    [(PUAdjustmentsViewController *)self controlSize];
    v46 = v42 - v45 * 0.5;
    v32 = [(PUAdjustmentsViewController *)self collectionView];
    v33 = v32;
    v36 = 0.0;
    v37 = 0.0;
    v34 = v44;
    v35 = v46;
  }

  [v32 setContentInset:{v36, v34, v37, v35}];
}

- (void)viewDidLoad
{
  v38[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PUAdjustmentsViewController;
  [(PUAdjustmentsViewController *)&v37 viewDidLoad];
  [(PUAdjustmentsViewController *)self setLayoutDirection:0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PUAdjustmentsViewController *)self view];
  [v4 setBackgroundColor:v3];

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

  v9 = [(PUAdjustmentsViewController *)self view];
  v10 = [(PUAdjustmentsViewController *)self collectionView];
  [v9 addSubview:v10];

  v11 = [MEMORY[0x1E69DC888] clearColor];
  v12 = [(PUAdjustmentsViewController *)self collectionView];
  [v12 setBackgroundColor:v11];

  v13 = [(PUAdjustmentsViewController *)self collectionView];
  [v13 setShowsHorizontalScrollIndicator:0];

  v14 = [(PUAdjustmentsViewController *)self collectionView];
  [v14 setAllowsKeyboardScrolling:0];

  v15 = [(PUAdjustmentsViewController *)self collectionView];
  [v15 setShowsVerticalScrollIndicator:0];

  v16 = [(PUAdjustmentsViewController *)self collectionView];
  [v16 setSemanticContentAttribute:3];

  v17 = [(PUAdjustmentsViewController *)self collectionView];
  [v17 setContentInsetAdjustmentBehavior:2];

  v18 = [(PUAdjustmentsViewController *)self collectionView];
  [v18 setSelectionFollowsFocus:1];

  v19 = [(PUAdjustmentsViewController *)self collectionView];
  [v19 _setSupportsPointerDragScrolling:1];

  v20 = [(PUAdjustmentsViewController *)self collectionView];
  [v20 setDelegate:self];

  v21 = [(PUAdjustmentsViewController *)self collectionView];
  [v21 setDataSource:self];

  v22 = [(PUAdjustmentsViewController *)self collectionView];
  [v22 setClipsToBounds:0];

  v23 = [(PUAdjustmentsViewController *)self collectionView];
  [v23 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUEditAdjustmentsCellReuseIdentifier"];

  v24 = [(PUAdjustmentsViewController *)self collectionView];
  [v24 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUEditAutoEnhanceCellReuseIdentifier"];

  v25 = *MEMORY[0x1E69DE3A0];
  v26 = [(PUAdjustmentsViewController *)self collectionView];
  [v26 setDecelerationRate:v25];

  v27 = +[PUPhotoEditSupport createEditSlider];
  [(PUAdjustmentsViewController *)self setSlider:v27];

  v28 = [(PUAdjustmentsViewController *)self slider];
  [v28 setDelegate:self];

  v29 = [(PUAdjustmentsViewController *)self slider];
  [v29 addTarget:self action:sel_sliderValueChanged_ forControlEvents:4096];

  v30 = [(PUAdjustmentsViewController *)self slider];
  [v30 setEnabled:0 dimmed:1 animated:0];

  v31 = [(PUAdjustmentsViewController *)self view];
  v32 = [(PUAdjustmentsViewController *)self slider];
  [v31 addSubview:v32];

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

- (PUAdjustmentsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = PUAdjustmentsViewController;
  result = [(PUAdjustmentsViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_shouldDisplayControlValues = 1;
    result->_shouldDisplayMappedValues = 1;
  }

  return result;
}

@end