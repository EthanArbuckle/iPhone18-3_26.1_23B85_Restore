@interface PURedeyeToolController
- (BOOL)_removeCorrectionAtPoint:(CGPoint)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_extractRedEyePointFromCorrectionDictionary:(id)a3;
- (PURedeyeToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)centerToolbarView;
- (void)_animateFailureAppearance;
- (void)_animateInstructionAppearance;
- (void)_correctRedEyeAtPoint:(CGPoint)a3;
- (void)_handleRedeyeButton:(id)a3;
- (void)_handleTapGesture:(id)a3;
- (void)_loadCorrectionsFromModelAnimated:(BOOL)a3;
- (void)_showChangeIndicatorAtPoint:(CGPoint)a3 isFailure:(BOOL)a4;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)dealloc;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)flashAutoRedEyeCorrections;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PURedeyeToolController

- (void)_correctRedEyeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__71392;
  v32 = __Block_byref_object_dispose__71393;
  v33 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(PUPhotoEditToolController *)self delegate];
  [v7 toolControllerOriginalImageSize:self];
  v9 = v8;
  v11 = v10;

  v12 = [(PUPhotoEditToolController *)self delegate];
  v13 = [v12 toolControllerMainRenderer:self];
  v14 = [v13 composition];

  [v14 setObject:0 forKeyedSubscript:@"orientation"];
  PLPhysicalScreenScale();
  v15 = x / v9;
  v17 = y / v11;
  v18 = [objc_alloc(MEMORY[0x1E69BDE58]) initWithComposition:v14 location:v15 touchDiameter:{v17, v16 * 42.0}];
  [v18 setName:@"PU-PIManualRedEyeAutoCalculator"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__PURedeyeToolController__correctRedEyeAtPoint___block_invoke;
  v25[3] = &unk_1E7B7D5B8;
  v27 = &v28;
  v19 = v6;
  v26 = v19;
  [v18 submit:v25];
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  if ([v29[5] count])
  {
    self->_isModelChangeLocal = 1;
    v20 = [(PUPhotoEditToolController *)self compositionController];
    v21 = [(PUPhotoEditToolController *)self compositionController];
    v22 = [v21 adjustmentConstants];
    v23 = [v22 PIRedEyeAdjustmentKey];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __48__PURedeyeToolController__correctRedEyeAtPoint___block_invoke_2;
    v24[3] = &unk_1E7B7D5E0;
    v24[4] = &v28;
    [v20 modifyAdjustmentWithKey:v23 modificationBlock:v24];

    self->_isModelChangeLocal = 0;
  }

  else
  {
    [(PURedeyeToolController *)self _showChangeIndicatorAtPoint:1 isFailure:v15, v17];
    [(PURedeyeToolController *)self _animateFailureAppearance];
  }

  _Block_object_dispose(&v28, 8);
}

void __48__PURedeyeToolController__correctRedEyeAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = [v3 valueForKey:@"inputCorrectionInfo"];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __48__PURedeyeToolController__correctRedEyeAtPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setEnabled:1];
  v3 = [v8 inputCorrectionInfo];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEC8] array];
  }

  v6 = v5;

  v7 = [v6 arrayByAddingObjectsFromArray:*(*(*(a1 + 32) + 8) + 40)];
  [v8 setInputCorrectionInfo:v7];
}

- (BOOL)_removeCorrectionAtPoint:(CGPoint)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  [v4 toolControllerOriginalImageSize:self];
  v6 = v5;

  v7 = self->_knownCorrections;
  v8 = [(NSMutableArray *)v7 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 2.0;
    v12 = v8;
    do
    {
      v13 = [(NSMutableArray *)v7 objectAtIndex:v10];
      v14 = [v13 objectForKey:@"repairRectangleMinimumX"];

      if (v14)
      {
        v15 = [v13 objectForKey:@"repairRectangleMinimumX"];
        [v15 doubleValue];

        v16 = [v13 objectForKey:@"repairRectangleMaximumX"];
        [v16 doubleValue];

        v17 = [v13 objectForKey:@"repairRectangleMaximumY"];
        [v17 doubleValue];

        v18 = [v13 objectForKey:@"repairRectangleMinimumY"];
        [v18 doubleValue];

        UIDistanceBetweenPointAndRect();
      }

      else
      {
        [(PURedeyeToolController *)self _extractRedEyePointFromCorrectionDictionary:v13];
        UIDistanceBetweenPoints();
      }

      if (v19 < 15.0 / v6 && v19 < v11)
      {
        v11 = v19;
        v12 = v10;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v9)
  {
    self->_isModelChangeLocal = 1;
    v20 = [(NSMutableArray *)v7 subarrayWithRange:v12, 1];
    v21 = [(PUPhotoEditToolController *)self compositionController];
    v22 = [(PUPhotoEditToolController *)self compositionController];
    v23 = [v22 adjustmentConstants];
    v24 = [v23 PIRedEyeAdjustmentKey];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__PURedeyeToolController__removeCorrectionAtPoint___block_invoke;
    v27[3] = &unk_1E7B7D590;
    v28 = v20;
    v25 = v20;
    [v21 modifyAdjustmentWithKey:v24 modificationBlock:v27];

    self->_isModelChangeLocal = 0;
  }

  return v12 != v9;
}

void __51__PURedeyeToolController__removeCorrectionAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inputCorrectionInfo];
  v6 = [v4 mutableCopy];

  [v6 removeObjectsInArray:*(a1 + 32)];
  v5 = [v6 copy];
  [v3 setInputCorrectionInfo:v5];
}

- (void)_handleRedeyeButton:(id)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  [v4 toolControllerDidFinish:self];
}

- (void)_animateInstructionAppearance
{
  if (!self->_failureAnimationIsInProgress)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__animateInstructionAppearance object:0];
    self->_failureAnimationIsInProgress = 1;
    [(CEKBadgeTextView *)self->_instructionLabel setHidden:0];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__PURedeyeToolController__animateInstructionAppearance__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__PURedeyeToolController__animateInstructionAppearance__block_invoke_2;
    v3[3] = &unk_1E7B7F020;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v4 options:v3 animations:0.3 completion:0.0];
  }
}

uint64_t __55__PURedeyeToolController__animateInstructionAppearance__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1216) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1232);

  return [v2 setAlpha:0.0];
}

uint64_t __55__PURedeyeToolController__animateInstructionAppearance__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1232) setHidden:1];
  *(*(a1 + 32) + 1264) = 0;
  return result;
}

- (void)_animateFailureAppearance
{
  if (!self->_failureAnimationIsInProgress)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__animateInstructionAppearance object:0];
    self->_failureAnimationIsInProgress = 1;
    [(CEKBadgeTextView *)self->_failureLabel setHidden:0];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__PURedeyeToolController__animateFailureAppearance__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__PURedeyeToolController__animateFailureAppearance__block_invoke_2;
    v3[3] = &unk_1E7B7F020;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.1];
  }
}

uint64_t __51__PURedeyeToolController__animateFailureAppearance__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1216) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1232);

  return [v2 setAlpha:1.0];
}

uint64_t __51__PURedeyeToolController__animateFailureAppearance__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1216) setHidden:1];
  result = [*(a1 + 32) performSelector:sel__animateInstructionAppearance withObject:0 afterDelay:3.0];
  *(*(a1 + 32) + 1264) = 0;
  return result;
}

- (void)_showChangeIndicatorAtPoint:(CGPoint)a3 isFailure:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(PUPhotoEditToolController *)self delegate];
  v9 = [v8 toolControllerPreviewView:self];

  v10 = [(PUPhotoEditToolController *)self delegate];
  [v10 toolControllerOriginalImageSize:self];
  v12 = v11;
  v14 = v13;

  v15 = [(PUPhotoEditToolController *)self delegate];
  [v15 toolController:self viewPointFromOriginalPoint:v9 view:{x * v12, y * v14}];
  v17 = v16;
  v19 = v18;

  [v9 bounds];
  v26.x = v17;
  v26.y = v19;
  if (CGRectContainsPoint(v27, v26))
  {
    v20 = v4;
    if (v4)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 0.5;
    }

    v22 = objc_alloc_init(PURedEyeIndicatorView);
    [(PURedEyeIndicatorView *)v22 setAnimationType:v20];
    [(PURedEyeIndicatorView *)v22 setCenter:v17, v19];
    [v9 addSubview:v22];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__PURedeyeToolController__showChangeIndicatorAtPoint_isFailure___block_invoke;
    v24[3] = &unk_1E7B80DD0;
    v25 = v22;
    v23 = v22;
    [(PURedEyeIndicatorView *)v23 animateWithDelay:v24 completion:v21];
  }
}

- (void)_loadCorrectionsFromModelAnimated:(BOOL)a3
{
  v29 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoEditToolController *)self compositionController];

  if (!v5)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PURedeyeToolController.m" lineNumber:326 description:@"Need a composition to perform this operation"];
  }

  v30 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v30 redEyeAdjustmentController];
  v7 = [v6 inputCorrectionInfo];
  v8 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = self->_knownCorrections;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        if (([v7 containsObject:v14] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v11);
  }

  knownCorrections = self->_knownCorrections;
  v16 = [v8 allObjects];
  [(NSMutableArray *)knownCorrections removeObjectsInArray:v16];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * j);
        if (([(NSMutableArray *)self->_knownCorrections containsObject:v22]& 1) == 0)
        {
          [(NSMutableArray *)self->_knownCorrections addObject:v22];
          [v8 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v19);
  }

  if (v29)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v8;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(PURedeyeToolController *)self _extractRedEyePointFromCorrectionDictionary:*(*(&v31 + 1) + 8 * k)];
          [(PURedeyeToolController *)self _showChangeIndicatorAtPoint:0 isFailure:?];
        }

        v25 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v25);
    }
  }
}

- (void)flashAutoRedEyeCorrections
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 redEyeAdjustmentController];
  v5 = [v4 inputCorrectionInfo];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PURedeyeToolController *)self _extractRedEyePointFromCorrectionDictionary:*(*(&v10 + 1) + 8 * v9)];
        [(PURedeyeToolController *)self _showChangeIndicatorAtPoint:0 isFailure:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (CGPoint)_extractRedEyePointFromCorrectionDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"repairRectangleMinimumX"];

  if (v4)
  {
    v5 = [v3 objectForKey:@"repairRectangleMinimumX"];
    [v5 doubleValue];
    v7 = v6;
    v8 = [v3 objectForKey:@"repairRectangleMaximumX"];
    [v8 doubleValue];
    v10 = (v7 + v9) * 0.5;

    v11 = [v3 objectForKey:@"repairRectangleMinimumY"];
    [v11 doubleValue];
    v13 = v12;
    v14 = [v3 objectForKey:@"repairRectangleMaximumY"];
    [v14 doubleValue];
    v16 = (v13 + v15) * 0.5;

    goto LABEL_8;
  }

  v17 = [v3 objectForKeyedSubscript:@"pointX"];

  if (v17)
  {
    v18 = [v3 objectForKey:@"pointX"];
    [v18 doubleValue];
    v10 = v19;

    v20 = [v3 objectForKey:@"pointY"];
LABEL_7:
    v11 = v20;
    [v20 doubleValue];
    v16 = v24;
    goto LABEL_8;
  }

  v21 = [v3 objectForKeyedSubscript:@"px"];

  if (v21)
  {
    v22 = [v3 objectForKeyedSubscript:@"px"];
    [v22 doubleValue];
    v10 = v23;

    v20 = [v3 objectForKeyedSubscript:@"py"];
    goto LABEL_7;
  }

  v27 = MEMORY[0x1E695EFF8];
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Red-eye repair dictionary is of unknown type", v28, 2u);
  }

  v10 = *v27;
  v16 = v27[1];
LABEL_8:

  v25 = v10;
  v26 = v16;
  result.y = v26;
  result.x = v25;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_tapGestureRecognizer == v4)
  {
    v6 = [(PUPhotoEditToolController *)self delegate];
    v7 = [v6 toolControllerPreviewView:self];

    if (v7)
    {
      v8 = [v7 superview];
      [(UITapGestureRecognizer *)v4 locationInView:v8];
      v10 = v9;
      v12 = v11;

      [v7 frame];
      v14.x = v10;
      v14.y = v12;
      v5 = CGRectContainsPoint(v15, v14);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_handleTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(PURedeyeToolController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PUPhotoEditToolController *)self delegate];
  v11 = [(PURedeyeToolController *)self view];
  [v10 toolController:self originalPointFromViewPoint:v11 view:{v7, v9}];
  v13 = v12;
  v15 = v14;

  if (![(PURedeyeToolController *)self _removeCorrectionAtPoint:v13, v15])
  {

    [(PURedeyeToolController *)self _correctRedEyeAtPoint:v13, v15];
  }
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v8 setLayoutOrientation:a3 withTransitionCoordinator:a4];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_instructionLabelConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_failureLabelConstraints];
  instructionLabelConstraints = self->_instructionLabelConstraints;
  self->_instructionLabelConstraints = 0;

  failureLabelConstraints = self->_failureLabelConstraints;
  self->_failureLabelConstraints = 0;

  v7 = [(PURedeyeToolController *)self view];
  [v7 setNeedsUpdateConstraints];
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v4.receiver = self;
  v4.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v4 compositionControllerDidChangeForAdjustments:a3];
  [(PURedeyeToolController *)self _loadCorrectionsFromModelAnimated:self->_isModelChangeLocal];
}

- (id)centerToolbarView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = PULocalizedString(@"PHOTOEDIT_REDEYE_TOP_LABEL");
  v4 = [v3 localizedUppercaseString];

  v5 = [v2 photoEditingTopToolbarToolLabelButtonColor];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v4];
  [v6 setTextColor:v5];
  v7 = [v2 topToolbarToolLabelFont];
  [v6 setFont:v7];

  return v6;
}

- (void)didResignActiveTool
{
  v3.receiver = self;
  v3.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v3 didResignActiveTool];
  [(NSMutableArray *)self->_knownCorrections removeAllObjects];
}

- (void)updateViewConstraints
{
  v47[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerMainContainerView:self];

  v45 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(PURedeyeToolController *)self view];
  }

  v6 = v5;
  v7 = [(PUPhotoEditToolController *)self toolContainerView];
  v8 = v7;
  if (!self->_instructionLabelConstraints)
  {
    v44 = v7;
    v9 = [MEMORY[0x1E695DF70] array];
    [(CEKBadgeTextView *)self->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(PUPhotoEditToolController *)self photoEditSpec];
    v11 = [v10 currentLayoutStyle];

    v12 = [(CEKBadgeTextView *)self->_instructionLabel widthAnchor];
    v13 = [(PURedeyeToolController *)self view];
    v14 = [v13 widthAnchor];
    v15 = [v12 constraintLessThanOrEqualToAnchor:v14];
    v43 = v9;
    [(NSArray *)v9 addObject:v15];

    v16 = [(CEKBadgeTextView *)self->_instructionLabel centerXAnchor];
    v17 = [v6 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v19 = v18;
    if (v11 == 4)
    {
      v47[0] = v18;
      v20 = [(CEKBadgeTextView *)self->_instructionLabel bottomAnchor];
      v21 = [v6 bottomAnchor];
      [v20 constraintEqualToAnchor:v21 constant:-27.0];
      v22 = v42 = v6;
      v47[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      v24 = v43;
      [(NSArray *)v43 addObjectsFromArray:v23];

      v6 = v42;
    }

    else
    {
      v24 = v9;
      [(NSArray *)v9 addObject:v18];

      v25 = [(PUPhotoEditToolController *)self layoutOrientation];
      if ((v25 - 2) >= 2)
      {
        v8 = v44;
        if (v25 == 1)
        {
          v39 = [(CEKBadgeTextView *)self->_instructionLabel centerYAnchor];
          v40 = [v44 bottomAnchor];
          v41 = [v39 constraintEqualToAnchor:v40 constant:-33.0];
          [(NSArray *)v9 addObject:v41];
        }

        goto LABEL_10;
      }

      v16 = [(CEKBadgeTextView *)self->_instructionLabel bottomAnchor];
      v17 = [(PURedeyeToolController *)self view];
      v19 = [v17 safeAreaLayoutGuide];
      v26 = [v19 bottomAnchor];
      v27 = [v16 constraintEqualToAnchor:v26 constant:-6.0];
      [(NSArray *)v9 addObject:v27];

      v24 = v9;
    }

    v8 = v44;
LABEL_10:
    [MEMORY[0x1E696ACD8] activateConstraints:v24];
    instructionLabelConstraints = self->_instructionLabelConstraints;
    self->_instructionLabelConstraints = v24;
  }

  if (!self->_failureLabelConstraints)
  {
    v29 = [MEMORY[0x1E695DF70] array];
    v30 = v6;
    [(CEKBadgeTextView *)self->_failureLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_failureLabel attribute:9 relatedBy:0 toItem:self->_instructionLabel attribute:9 multiplier:1.0 constant:0.0];
    [(NSArray *)v29 addObject:v31];

    v32 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_failureLabel attribute:10 relatedBy:0 toItem:self->_instructionLabel attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v29 addObject:v32];

    v33 = MEMORY[0x1E696ACD8];
    failureLabel = self->_failureLabel;
    v35 = [(PURedeyeToolController *)self view];
    v36 = failureLabel;
    v6 = v30;
    v37 = [v33 constraintWithItem:v36 attribute:7 relatedBy:-1 toItem:v35 attribute:7 multiplier:1.0 constant:0.0];
    [(NSArray *)v29 addObject:v37];

    [MEMORY[0x1E696ACD8] activateConstraints:v29];
    failureLabelConstraints = self->_failureLabelConstraints;
    self->_failureLabelConstraints = v29;
  }

  v46.receiver = self;
  v46.super_class = PURedeyeToolController;
  [(PURedeyeToolController *)&v46 updateViewConstraints];
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v3 dealloc];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v6 viewDidDisappear:a3];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_instructionLabelConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_failureLabelConstraints];
  instructionLabelConstraints = self->_instructionLabelConstraints;
  self->_instructionLabelConstraints = 0;

  failureLabelConstraints = self->_failureLabelConstraints;
  self->_failureLabelConstraints = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PURedeyeToolController;
  [(PURedeyeToolController *)&v5 viewWillDisappear:a3];
  v4 = [(UITapGestureRecognizer *)self->_tapGestureRecognizer view];
  [v4 removeGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v9 viewWillAppear:a3];
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 toolControllerHitEventForwardView:self];

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGesture_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v6;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [v5 addGestureRecognizer:self->_tapGestureRecognizer];
  v8 = [(PURedeyeToolController *)self view];
  [v8 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = PURedeyeToolController;
  [(PURedeyeToolController *)&v30 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E6993830]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v8;

  v10 = self->_instructionLabel;
  v11 = PULocalizedString(@"PHOTOEDIT_REDEYE_INSTRUCTION");
  [(CEKBadgeTextView *)v10 _setText:v11];

  v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  [(CEKBadgeTextView *)self->_instructionLabel _setContentColor:v12];

  v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.8];
  [(CEKBadgeTextView *)self->_instructionLabel _setFillColor:v13];

  [MEMORY[0x1E6993830] _defaultTextInsets];
  v15 = v14 + 3.0;
  v17 = v16 + 3.0;
  v19 = v18 + 1.0;
  v21 = v20 + 1.0;
  [(CEKBadgeTextView *)self->_instructionLabel _setTextInsets:v20 + 1.0, v14 + 3.0, v18 + 1.0, v16 + 3.0];
  v22 = [(PURedeyeToolController *)self view];
  [v22 addSubview:self->_instructionLabel];

  v23 = [objc_alloc(MEMORY[0x1E6993830]) initWithFrame:{v4, v5, v6, v7}];
  failureLabel = self->_failureLabel;
  self->_failureLabel = v23;

  v25 = self->_failureLabel;
  v26 = PULocalizedString(@"PHOTOEDIT_REDEYE_FAILURE");
  [(CEKBadgeTextView *)v25 _setText:v26];

  [(CEKBadgeTextView *)self->_failureLabel setHidden:1];
  [(CEKBadgeTextView *)self->_failureLabel setAlpha:0.0];
  [(CEKBadgeTextView *)self->_failureLabel _setTextInsets:v21, v15, v19, v17];
  v27 = [(CEKBadgeTextView *)self->_instructionLabel _contentColor];
  [(CEKBadgeTextView *)self->_failureLabel _setContentColor:v27];

  v28 = [(CEKBadgeTextView *)self->_instructionLabel _fillColor];
  [(CEKBadgeTextView *)self->_failureLabel _setFillColor:v28];

  v29 = [(PURedeyeToolController *)self view];
  [v29 addSubview:self->_failureLabel];

  self->_failureAnimationIsInProgress = 0;
}

- (void)didBecomeActiveTool
{
  [(PURedeyeToolController *)self _loadCorrectionsFromModelAnimated:1];
  v3.receiver = self;
  v3.super_class = PURedeyeToolController;
  [(PUPhotoEditToolController *)&v3 didBecomeActiveTool];
}

- (PURedeyeToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = PURedeyeToolController;
  v4 = [(PUPhotoEditToolController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    knownCorrections = v4->_knownCorrections;
    v4->_knownCorrections = v5;

    v7 = objc_alloc_init(PURedeyeToolControllerSpec);
    [(PUPhotoEditToolController *)v4 setToolControllerSpec:v7];
  }

  return v4;
}

@end