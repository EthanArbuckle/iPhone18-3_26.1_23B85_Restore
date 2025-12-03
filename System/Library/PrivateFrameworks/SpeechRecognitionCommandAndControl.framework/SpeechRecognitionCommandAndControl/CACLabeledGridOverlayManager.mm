@interface CACLabeledGridOverlayManager
+ (CGSize)bestGridResolutionForPortraitUpRect:(CGRect)rect desiredColumns:(unint64_t)columns desiredRows:(unint64_t)rows level:(unint64_t)level screen:(id)screen;
+ (CGSize)gridResolutionForTopLevelWithPortraitUpRect:(CGRect)rect desiredColumns:(unint64_t)columns desiredRows:(unint64_t)rows screen:(id)screen;
+ (unint64_t)maxNumberOfColumnsForDevice;
+ (unint64_t)maxNumberOfRowsForDevice;
- (BOOL)_isNextLevelAvailable;
- (BOOL)shouldZoom;
- (BOOL)updateOverlayWithPortraitUpRect:(CGRect)rect gridContainingLabel:(id)label;
- (CACLabeledGridOverlayManagerDelegate)delegate;
- (CGPoint)portraitUpCenterPoint;
- (CGRect)bestDrilledGridRectForPortraitUpRect:(CGRect)rect;
- (CGRect)currentGridPortraitUpFrame;
- (CGSize)bestGridResolutionForPortraitUpRect:(CGRect)rect;
- (void)_generateLabeledElementsForPortraitUpRect:(CGRect)rect;
- (void)hide;
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)hideWithoutAnimation;
- (void)resetAndDrawAtTopLevelWithStartingNumber:(unint64_t)number;
- (void)setDelegate:(id)delegate;
- (void)showOverlayWithStartingNumber:(unint64_t)number;
- (void)startDelayedDimmingOfNumbers;
- (void)stopDelayedDimmingOfNumbers;
@end

@implementation CACLabeledGridOverlayManager

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CACSimpleContentViewManager *)self setContentViewManagerDelegate:obj];
  }
}

- (void)showOverlayWithStartingNumber:(unint64_t)number
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CACLabeledGridOverlayManager_showOverlayWithStartingNumber___block_invoke;
  v4[3] = &unk_279CEB348;
  v4[4] = self;
  v4[5] = number;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__CACLabeledGridOverlayManager_showOverlayWithStartingNumber___block_invoke_2;
  v3[3] = &unk_279CEB370;
  v3[4] = self;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:v4 updateHandler:v3];
}

CACLabeledGridOverlayViewController *__62__CACLabeledGridOverlayManager_showOverlayWithStartingNumber___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(CACLabeledGridOverlayViewController);
  [*(a1 + 32) resetAndDrawAtTopLevelWithStartingNumber:*(a1 + 40)];

  return v2;
}

void __62__CACLabeledGridOverlayManager_showOverlayWithStartingNumber___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v4 setShowsNumbersInTopLeft:{objc_msgSend(v5, "showsNumbersInTopLeftForLabeledGridOverlayManager:", *(a1 + 32))}];
}

- (void)resetAndDrawAtTopLevelWithStartingNumber:(unint64_t)number
{
  [(CACLabeledGridOverlayManager *)self setCurrentLevel:0];
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_currentGridPortraitUpFrame.origin = *MEMORY[0x277CBF3A0];
  self->_currentGridPortraitUpFrame.size = v5;
  delegate = [(CACLabeledGridOverlayManager *)self delegate];
  v13 = [delegate screenForLabeledGridOverlayManager:self];

  [v13 bounds];
  *&v8 = v7;
  [(CACLabeledGridOverlayManager *)self setMaxX:v8];
  [v13 bounds];
  *&v10 = v9;
  [(CACLabeledGridOverlayManager *)self setMaxY:v10];
  [v13 scale];
  *&v11 = v11;
  [(CACLabeledGridOverlayManager *)self setScale:v11];
  [(CACLabeledGridOverlayManager *)self setStartingNumber:number];
  delegate2 = [(CACLabeledGridOverlayManager *)self delegate];
  [delegate2 topLevelPortraitUpRectForLabeledGridOverlayManager:self];
  [(CACLabeledGridOverlayManager *)self updateOverlayWithPortraitUpRect:0 gridContainingLabel:?];
}

- (CGPoint)portraitUpCenterPoint
{
  p_currentGridPortraitUpFrame = &self->_currentGridPortraitUpFrame;
  MidX = CGRectGetMidX(self->_currentGridPortraitUpFrame);
  MidY = CGRectGetMidY(*p_currentGridPortraitUpFrame);
  v5 = MidX;
  result.y = MidY;
  result.x = v5;
  return result;
}

- (void)startDelayedDimmingOfNumbers
{
  if (self->_currentLevel <= 1 && (-[CACLabeledGridOverlayManager delegate](self, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isAlwaysShowingLabeledGridOverlayManager:self], v3, v4))
  {
    [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
    [(CACSimpleContentViewManager *)self setActiveDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    delegate = [(CACLabeledGridOverlayManager *)self delegate];
    v6 = [delegate isOverlayFadingEnabledForLabeledGridOverlayManager:self];

    if (v6)
    {
      delegate2 = [(CACLabeledGridOverlayManager *)self delegate];
      [delegate2 overlayFadeDelayForLabeledGridOverlayManager:self];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2;
      v12[3] = &unk_279CEB2D0;
      v12[4] = self;
      v10 = MEMORY[0x277D85CD0];
      dispatch_after(v9, MEMORY[0x277D85CD0], v12);
    }
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_4;
    v11[3] = &unk_279CEB2D0;
    v11[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

uint64_t __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDimmingTransactionID];
  result = [*(a1 + 32) pendingDimmingTransactionID];
  if (v2 == result)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_3;
    v4[3] = &unk_279CEB2D0;
    v4[4] = *(a1 + 32);
    return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0 completion:1.0];
  }

  return result;
}

void __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  [v6 overlayFadeOpacityForLabeledGridOverlayManager:*(a1 + 32)];
  v3 = v2;
  v4 = [*(a1 + 32) viewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];
}

void __60__CACLabeledGridOverlayManager_startDelayedDimmingOfNumbers__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

- (void)stopDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  [view setAlpha:1.0];
}

- (BOOL)updateOverlayWithPortraitUpRect:(CGRect)rect gridContainingLabel:(id)label
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _isNextLevelAvailable = [(CACLabeledGridOverlayManager *)self _isNextLevelAvailable];
  if (_isNextLevelAvailable)
  {
    [(CACLabeledGridOverlayManager *)self setCurrentLevel:[(CACLabeledGridOverlayManager *)self currentLevel]+ 1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__CACLabeledGridOverlayManager_updateOverlayWithPortraitUpRect_gridContainingLabel___block_invoke;
    block[3] = &unk_279CEB398;
    block[4] = self;
    *&block[5] = x;
    *&block[6] = y;
    *&block[7] = width;
    *&block[8] = height;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = CACLogGrid();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CACLabeledGridOverlayManager updateOverlayWithPortraitUpRect:gridContainingLabel:];
    }
  }

  return _isNextLevelAvailable;
}

void __84__CACLabeledGridOverlayManager_updateOverlayWithPortraitUpRect_gridContainingLabel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsToBeRedrawn:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if ([*(a1 + 32) currentLevel] >= 2)
  {
    [*(a1 + 32) stopDelayedDimmingOfNumbers];
    [*(a1 + 32) bestDrilledGridRectForPortraitUpRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v2 = v6;
    v3 = v7;
    v4 = v8;
    v5 = v9;
  }

  v10 = (*(a1 + 32) + 56);
  *v10 = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  [*(a1 + 32) _generateLabeledElementsForPortraitUpRect:{v2, v3, v4, v5}];
  v11 = [*(a1 + 32) _isNextLevelAvailable];
  v12 = [*(a1 + 32) viewController];
  [v12 setShowsElementsAsClickable:v11 ^ 1u];

  v13 = [*(a1 + 32) viewController];
  v14 = [*(a1 + 32) labeledElements];
  [v13 setLabeledElements:v14];

  v15 = [*(a1 + 32) delegate];
  [v15 didUpdateElementsForLabeledGridOverlayManager:*(a1 + 32)];
}

- (BOOL)_isNextLevelAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CACLogGrid();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromCGRect(self->_currentGridPortraitUpFrame);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_26B354000, v3, OS_LOG_TYPE_DEFAULT, "Grid size %@", &v10, 0xCu);
  }

  delegate = [(CACLabeledGridOverlayManager *)self delegate];
  v6 = [delegate isPressOnFirstLevelEnabledForLabeledGridOverlayManager:self];

  currentLevel = self->_currentLevel;
  if (currentLevel >= 1 && (v6 & 1) != 0)
  {
    return 0;
  }

  height = self->_currentGridPortraitUpFrame.size.height;
  if (currentLevel >= 1 && height < 36.0000011 && self->_currentGridPortraitUpFrame.size.width < 36.0000011)
  {
    return 0;
  }

  if (height == 27.0)
  {
    return self->_currentGridPortraitUpFrame.size.width != 27.0;
  }

  return 1;
}

- (CGRect)bestDrilledGridRectForPortraitUpRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  v10 = CACViewRectFromPortraitUpRect(view, x, y, width, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(CACLabeledGridOverlayManager *)self maxX];
  v18 = v17;
  [(CACLabeledGridOverlayManager *)self maxY];
  v20 = v19;
  v21 = CACLogGrid();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [CACLabeledGridOverlayManager bestDrilledGridRectForPortraitUpRect:];
  }

  v22 = fmax(v16, 27.0);
  v23 = fmax(v14, 27.0);
  if (v10 + v23 > v18)
  {
    v10 = v18 - v23;
  }

  if (v12 + v22 > v20)
  {
    v12 = v20 - v22;
  }

  if (v10 < 0.0 || v12 < 0.0)
  {
    v24 = CACLogGrid();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CACLabeledGridOverlayManager bestDrilledGridRectForPortraitUpRect:];
    }
  }

  v25 = CACPortraitUpRectFromViewRect(0, v10, v12, v23, v22);
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (CGSize)gridResolutionForTopLevelWithPortraitUpRect:(CGRect)rect desiredColumns:(unint64_t)columns desiredRows:(unint64_t)rows screen:(id)screen
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  screenCopy = screen;
  [objc_opt_class() bestGridResolutionForPortraitUpRect:columns desiredColumns:rows desiredRows:1 level:screenCopy screen:{x, y, width, height}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)bestGridResolutionForPortraitUpRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentNumberOfColumns = [(CACLabeledGridOverlayManager *)self currentNumberOfColumns];
  currentNumberOfRows = [(CACLabeledGridOverlayManager *)self currentNumberOfRows];
  if (!(currentNumberOfColumns | currentNumberOfRows))
  {
    delegate = [(CACLabeledGridOverlayManager *)self delegate];
    currentNumberOfColumns = [delegate defaultNumberOfColumnsForLabeledGridOverlayManager:self];
  }

  delegate2 = [(CACLabeledGridOverlayManager *)self delegate];
  v12 = [delegate2 screenForLabeledGridOverlayManager:self];

  [objc_opt_class() bestGridResolutionForPortraitUpRect:currentNumberOfColumns desiredColumns:currentNumberOfRows desiredRows:self->_currentLevel level:v12 screen:{x, y, width, height}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

+ (CGSize)bestGridResolutionForPortraitUpRect:(CGRect)rect desiredColumns:(unint64_t)columns desiredRows:(unint64_t)rows level:(unint64_t)level screen:(id)screen
{
  CACViewRectFromPortraitUpRect(0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v12 = v10;
  v13 = v11;
  v14 = v11 / v10 <= 0.666666667 || v11 / v10 >= 1.5;
  v15 = columns == 0;
  if (level <= 1)
  {
    LOBYTE(v14) = rows == 0;
  }

  else
  {
    v15 = v14;
  }

  columnsCopy = columns;
  if (v10 < (20 * columns))
  {
    columnsCopy = (v10 / 20.0);
  }

  if (v11 < (20 * rows))
  {
    rows = (v11 / 20.0);
  }

  if (v14)
  {
    rows = vcvtad_u64_f64(v11 / (v10 / columnsCopy));
    if (columnsCopy * rows > 0x96)
    {
      if (!v15)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else if (v15)
  {
    columnsCopy = vcvtad_u64_f64(v10 / (v11 / rows));
    if (rows * columnsCopy > 0x96)
    {
LABEL_17:
      columnsCopy = 0x96 / rows;
    }
  }

  else if (rows * columnsCopy > 0x96)
  {
LABEL_19:
    rows = 0x96 / columnsCopy;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", columnsCopy * rows / 0xA + 1];
  v18 = [v17 length];

  [CACLabeledBadgeView sizeOfBadgeGivenNumberOfDisplayedDigits:v18 arrowOrientation:0 badgePresentation:0 badgeIndicator:0];
  if (!columns || level >= 2)
  {
    v20 = v12 / columnsCopy < v19;
    v21 = v12 / v19;
    if (v20)
    {
      columnsCopy = v21;
    }

    if (level >= 2)
    {
      v22 = rows >= 3 && columnsCopy > 2;
      if (!v22 && (vabdd_f64(v12, v13) + 1.0) / (v12 + v13) < 0.2)
      {
        rows = 3;
        columnsCopy = 3;
      }
    }
  }

  v23 = columnsCopy;
  rowsCopy = rows;
  result.height = rowsCopy;
  result.width = v23;
  return result;
}

+ (unint64_t)maxNumberOfRowsForDevice
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  CACPortraitUpRectFromViewRect(0, v3, v4, v5, v6);
  v8 = v7;

  v9 = v8 / 27.0;
  return vcvtms_u32_f32(v9);
}

+ (unint64_t)maxNumberOfColumnsForDevice
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  CACPortraitUpRectFromViewRect(0, v3, v4, v5, v6);
  v8 = v7;

  v9 = v8 / 27.0;
  return vcvtms_u32_f32(v9);
}

- (void)_generateLabeledElementsForPortraitUpRect:(CGRect)rect
{
  v49 = *MEMORY[0x277D85DE8];
  CACViewRectFromPortraitUpRect(0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  [(CACLabeledGridOverlayManager *)self bestGridResolutionForPortraitUpRect:self->_currentGridPortraitUpFrame.origin.x, self->_currentGridPortraitUpFrame.origin.y, self->_currentGridPortraitUpFrame.size.width, self->_currentGridPortraitUpFrame.size.height];
  v5 = v4;
  v7 = v6;
  v8 = CACLogGrid();
  v9 = v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CACLabeledGridOverlayManager _generateLabeledElementsForPortraitUpRect:];
  }

  v10 = CACLogGrid();
  v37 = v7;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CACLabeledGridOverlayManager _generateLabeledElementsForPortraitUpRect:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = objc_opt_new();
  labeledElements = selfCopy->_labeledElements;
  selfCopy->_labeledElements = v12;

  if (v37 >= 1)
  {
    v14 = 0;
    v36 = v37;
    do
    {
      if (v9 <= 0)
      {
        ++v14;
      }

      else
      {
        v15 = 0;
        v16 = v14 * v9;
        v38 = v14 + 1;
        v17 = (v14 + 1) * v9;
        do
        {
          [(CACLabeledGridOverlayManager *)selfCopy scale];
          UIRoundToScale();
          v19 = v18;
          UIRoundToScale();
          v21 = v20;
          UIRoundToScale();
          v23 = v22;
          UIRoundToScale();
          v25 = v24;
          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
          v27 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

          if (v27)
          {
            v28 = v17 + ~v15 + [(CACLabeledGridOverlayManager *)selfCopy startingNumber];
          }

          else
          {
            v28 = v16 + [(CACLabeledGridOverlayManager *)selfCopy startingNumber];
          }

          delegate = [(CACLabeledGridOverlayManager *)selfCopy delegate];
          viewController = [(CACSimpleContentViewManager *)selfCopy viewController];
          view = [viewController view];
          v32 = [delegate labeledGridOverlayManager:selfCopy elementWithNumber:v28 rectangle:{CACPortraitUpRectFromViewRect(view, v19, v21, v23, v25)}];

          [(NSMutableArray *)selfCopy->_labeledElements addObject:v32];
          v33 = CACLogGrid();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218752;
            v42 = v19;
            v43 = 2048;
            v44 = v21;
            v45 = 2048;
            v46 = v25;
            v47 = 2048;
            v48 = v23;
            _os_log_debug_impl(&dword_26B354000, v33, OS_LOG_TYPE_DEBUG, "element.rectangle: origin (%f, %f),size (%f, %f)", buf, 0x2Au);
          }

          v34 = CACLogGrid();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            label = [v32 label];
            [(CACLabeledGridOverlayManager *)label _generateLabeledElementsForPortraitUpRect:v39, &v40, v34];
          }

          ++v15;
          ++v16;
        }

        while (v9 != v15);
        v14 = v38;
      }
    }

    while (v14 != v37);
  }

  objc_sync_exit(selfCopy);
}

- (void)hide
{
  v2.receiver = self;
  v2.super_class = CACLabeledGridOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hide];
}

- (void)hideWithoutAnimation
{
  v2.receiver = self;
  v2.super_class = CACLabeledGridOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hideWithoutAnimation];
}

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(CACLabeledGridOverlayManager *)self setLabeledElements:0];
  v7.receiver = self;
  v7.super_class = CACLabeledGridOverlayManager;
  [(CACSimpleContentViewManager *)&v7 hideAnimated:animatedCopy completion:completionCopy];
}

- (BOOL)shouldZoom
{
  selfCopy = self;
  delegate = [(CACLabeledGridOverlayManager *)self delegate];
  LOBYTE(selfCopy) = [delegate isZoomEnabledForGridOverlayManager:selfCopy];

  return selfCopy;
}

- (CGRect)currentGridPortraitUpFrame
{
  objc_copyStruct(v6, &self->_currentGridPortraitUpFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CACLabeledGridOverlayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)bestDrilledGridRectForPortraitUpRect:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)bestDrilledGridRectForPortraitUpRect:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26B354000, v0, OS_LOG_TYPE_ERROR, "Grid rect's origin is off-screen! {%f, %f}", v1, 0x16u);
}

- (void)_generateLabeledElementsForPortraitUpRect:(void *)a3 .cold.3(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_26B354000, log, OS_LOG_TYPE_DEBUG, "element.label: %@", buf, 0xCu);
}

@end