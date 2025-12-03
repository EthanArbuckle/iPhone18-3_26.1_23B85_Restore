@interface PNPWizardScratchpadView
- (BOOL)_viewIsPartOfStylusCanvasView:(id)view;
- (CGPoint)pointForFirstTool;
- (PNPWizardScratchpadView)initWithFrame:(CGRect)frame;
- (PNPWizardScratchpadViewDelegate)delegate;
- (id)_selectedInk;
- (id)_selectedInkView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateAdjustmentSliderAppearance:(id)appearance;
- (void)_animateInkChange:(id)change;
- (void)_animateLayoutChange:(id)change;
- (void)_canvasViewWillBeginDrawing:(id)drawing;
- (void)_dismissToastNotification;
- (void)_initializeToastViewIfNecessary;
- (void)_inkViewPressed:(id)pressed;
- (void)_selectInkAtIndex:(int64_t)index;
- (void)_showToastNotificationAndAnimateStrokeAway;
- (void)_showToastNotificationWithInitialAnimation;
- (void)_triggerShowToastTimer;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)clearCanvas;
- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareCanvasViews;
- (void)setStep:(unint64_t)step;
- (void)viewWillMoveToSuperview:(id)superview;
@end

@implementation PNPWizardScratchpadView

- (void)layoutSubviews
{
  backgroundView = self->_backgroundView;
  [(PNPWizardScratchpadView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  canvasView = self->_canvasView;
  [(PNPWizardScratchpadView *)self bounds];
  [(PNPWizardScratchpadCanvasView *)canvasView setFrame:?];
  fingerDrawingCanvasView = self->_fingerDrawingCanvasView;
  [(PNPWizardScratchpadView *)self bounds];
  [(PNPWizardScratchpadCanvasView *)fingerDrawingCanvasView setFrame:?];
  v6 = self->_backgroundView;
  scratchpadBackgroundColor = [MEMORY[0x277D75348] scratchpadBackgroundColor];
  [(UIView *)v6 setBackgroundColor:scratchpadBackgroundColor];

  toolsBackgroundPillView = self->_toolsBackgroundPillView;
  toolBackgroundColor = [MEMORY[0x277D75348] toolBackgroundColor];
  [(UIView *)toolsBackgroundPillView setBackgroundColor:toolBackgroundColor];

  [(UIView *)self->_toolsBackgroundPillView setAlpha:0.91];
  v10 = MEMORY[0x277D75208];
  [(PNPWizardScratchpadView *)self bounds];
  v62 = [v10 bezierPathWithRect:?];
  v11 = MEMORY[0x277D75208];
  [(PNPWizardScratchpadView *)self bounds];
  v12 = [v11 bezierPathWithRoundedRect:? cornerRadius:?];
  bezierPathByReversingPath = [v12 bezierPathByReversingPath];
  [v62 appendPath:bezierPathByReversingPath];

  frameLayer = self->_frameLayer;
  v15 = v62;
  -[CAShapeLayer setPath:](frameLayer, "setPath:", [v62 CGPath]);
  v16 = self->_frameLayer;
  platterContainerColor = [MEMORY[0x277D75348] platterContainerColor];
  -[CAShapeLayer setFillColor:](v16, "setFillColor:", [platterContainerColor CGColor]);

  firstObject = [(NSMutableArray *)self->_inkViews firstObject];
  [firstObject intrinsicContentSize];
  v20 = v19;

  v21 = [(NSMutableArray *)self->_inkViews count];
  v22 = [(NSMutableArray *)self->_inkViews count];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if ([(NSMutableArray *)self->_inkViews count])
  {
    v27 = 0;
    v63 = v20 + 16.0;
    v64 = v20 * v21 + (v22 + -1.0) * 16.0;
    do
    {
      v28 = [(NSMutableArray *)self->_inkViews objectAtIndex:v27];
      [(PNPWizardScratchpadView *)self bounds];
      v30 = v29 + -30.0;
      +[PNPWizardScratchpadInkView preferredHeight];
      v32 = v31;
      v33 = v30 - v31;
      [v28 intrinsicContentSize];
      v35 = v34 + 16.0;
      [(PNPWizardScratchpadView *)self bounds];
      v37 = v63 * v27 + (v36 - v64) * 0.5;
      [v28 setFrame:{v37, v33, v35, v32}];
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      if (CGRectIsNull(v66))
      {
        height = v32;
        width = v35;
        y = v33;
        x = v37;
      }

      else
      {
        v67.origin.x = x;
        v67.origin.y = y;
        v67.size.width = width;
        v67.size.height = height;
        v69.origin.x = v37;
        v69.origin.y = v33;
        v69.size.width = v35;
        v69.size.height = v32;
        v68 = CGRectUnion(v67, v69);
        x = v68.origin.x;
        y = v68.origin.y;
        width = v68.size.width;
        height = v68.size.height;
      }

      ++v27;
    }

    while (v27 < [(NSMutableArray *)self->_inkViews count]);
  }

  UIRectInset();
  UIRectInset();
  [(UIView *)self->_toolsBackgroundPillView setFrame:?];
  [(UIView *)self->_toolsBackgroundPillView _setContinuousCornerRadius:12.0];
  _selectedInkView = [(PNPWizardScratchpadView *)self _selectedInkView];
  [(PNPWizardInkWeightControl *)self->_inkWeightControl intrinsicContentSize];
  [_selectedInkView frame];
  UIRectCenteredXInRect();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  if (self->_inkWeightControlVisible)
  {
    v45 = 19.0;
  }

  else
  {
    v45 = 9.0;
  }

  [_selectedInkView frame];
  [(PNPWizardInkWeightControl *)self->_inkWeightControl setFrame:v40, v46 - (v44 + v45), v42, v44];
  v47 = 0.8;
  if (!self->_inkWeightControlVisible)
  {
    v47 = 0.0;
  }

  [(PNPWizardInkWeightControl *)self->_inkWeightControl setAlpha:v47];
  [(PNPWizardScratchpadToast *)self->_toastView intrinsicContentSize];
  [(PNPWizardScratchpadView *)self bounds];
  traitCollection = [(PNPWizardScratchpadView *)self traitCollection];
  [traitCollection displayScale];
  v61 = v49;
  UIRectCenteredIntegralRectScale();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [(PNPWizardScratchpadToast *)self->_toastView setFrame:v51, v53, v55, v57, v61];
  toastView = self->_toastView;
  showingToast = [(PNPWizardScratchpadView *)self showingToast];
  v60 = 1.0;
  if (!showingToast)
  {
    v60 = 0.0;
  }

  [(PNPWizardScratchpadToast *)toastView setAlpha:v60];
}

- (CGPoint)pointForFirstTool
{
  firstObject = [(NSMutableArray *)self->_inkViews firstObject];
  [firstObject bounds];
  [(PNPWizardScratchpadView *)self convertRect:firstObject fromView:?];
  UIRectGetCenter();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_animateLayoutChange:(id)change
{
  changeCopy = change;
  [(PNPWizardScratchpadView *)self setNeedsLayout];
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PNPWizardScratchpadView__animateLayoutChange___block_invoke;
  v9[3] = &unk_279A0A060;
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PNPWizardScratchpadView__animateLayoutChange___block_invoke_2;
  v7[3] = &unk_279A0A1C0;
  v8 = changeCopy;
  v6 = changeCopy;
  [v5 _animateUsingDefaultTimingWithOptions:4 animations:v9 completion:v7];
}

uint64_t __48__PNPWizardScratchpadView__animateLayoutChange___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateInkChange:(id)change
{
  changeCopy = change;
  [(PNPWizardScratchpadView *)self setNeedsLayout];
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PNPWizardScratchpadView__animateInkChange___block_invoke;
  v9[3] = &unk_279A0A060;
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PNPWizardScratchpadView__animateInkChange___block_invoke_2;
  v7[3] = &unk_279A0A1C0;
  v8 = changeCopy;
  v6 = changeCopy;
  [v5 animateWithDuration:4 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.475 options:0.0 animations:0.8 completion:0.0];
}

uint64_t __45__PNPWizardScratchpadView__animateInkChange___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateAdjustmentSliderAppearance:(id)appearance
{
  appearanceCopy = appearance;
  [(PNPWizardScratchpadView *)self setNeedsLayout];
  v18 = 0.0;
  v16 = 0u;
  v17 = 0u;
  PNPWizardScratchpadOpacitySliderAnimationParameters(&v16);
  v5 = objc_alloc(MEMORY[0x277D753D0]);
  v6 = [v5 initWithControlPoint1:v16 controlPoint2:v17];
  v7 = objc_alloc(MEMORY[0x277D75D40]);
  v8 = [v7 initWithDuration:v6 timingParameters:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__PNPWizardScratchpadView__animateAdjustmentSliderAppearance___block_invoke;
  v15[3] = &unk_279A0A060;
  v15[4] = self;
  [v8 addAnimations:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __62__PNPWizardScratchpadView__animateAdjustmentSliderAppearance___block_invoke_2;
  v13 = &unk_279A0A470;
  v14 = appearanceCopy;
  v9 = appearanceCopy;
  [v8 addCompletion:&v10];
  [v8 startAnimation];
}

uint64_t __62__PNPWizardScratchpadView__animateAdjustmentSliderAppearance___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)eventSource:(id)source hadPencilDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  _selectedInk = [(PNPWizardScratchpadView *)self _selectedInk];
  identifier = [_selectedInk identifier];

  if (identifier == *MEMORY[0x277CD96D8])
  {
    previousMarkingToolIndex = self->_previousMarkingToolIndex;
  }

  else
  {
    self->_previousMarkingToolIndex = self->_selectedInkIndex;
    previousMarkingToolIndex = [(NSMutableArray *)self->_inkViews count]- 1;
  }

  [(PNPWizardScratchpadView *)self _selectInkAtIndex:previousMarkingToolIndex];
  [(PNPWizardScratchpadView *)self _animateLayoutChange:0];
  if (tappedCopy)
  {
    tappedCopy[2]();
  }
}

- (void)_selectInkAtIndex:(int64_t)index
{
  if (!self->_isDrawing)
  {
    [(PNPWizardScratchpadView *)self _deselectAllInks];
    self->_selectedInkIndex = index;
    v6 = [(NSMutableArray *)self->_inkViews objectAtIndex:index];
    [v6 setSelected:1];

    canvasView = self->_canvasView;
    _selectedInk = [(PNPWizardScratchpadView *)self _selectedInk];
    [(PNPWizardScratchpadCanvasView *)canvasView setInk:_selectedInk];
  }
}

- (id)_selectedInkView
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  inkViews = self->_inkViews;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PNPWizardScratchpadView__selectedInkView__block_invoke;
  v5[3] = &unk_279A0A4B8;
  v5[4] = &v6;
  [(NSMutableArray *)inkViews enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__PNPWizardScratchpadView__selectedInkView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 selected])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_selectedInk
{
  _selectedInkView = [(PNPWizardScratchpadView *)self _selectedInkView];
  v4 = [_selectedInkView ink];
  [(PNPWizardInkWeightControl *)self->_inkWeightControl value];
  BSIntervalValueForFraction();
  v6 = v5;
  v7 = MEMORY[0x277CD9638];
  identifier = [v4 identifier];
  color = [v4 color];
  v10 = [v7 inkWithIdentifier:identifier color:color weight:v6];

  return v10;
}

- (void)_inkViewPressed:(id)pressed
{
  pressedCopy = pressed;
  view = [pressedCopy view];
  v5 = [(NSMutableArray *)self->_inkViews indexOfObject:view];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [pressedCopy locationInView:view];
    v7 = [view pointInside:0 withEvent:?];
    [view setPressed:0];
    if ([pressedCopy state] == 1 || objc_msgSend(pressedCopy, "state") == 2)
    {
      [view setPressed:v7];
      if ((([pressedCopy state] == 3) & v7) == 0)
      {
LABEL_10:
        [(PNPWizardScratchpadView *)self _animateInkChange:0];
        goto LABEL_11;
      }
    }

    else if ((([pressedCopy state] == 3) & v7) != 1)
    {
LABEL_11:
      delegate = [(PNPWizardScratchpadView *)self delegate];
      [delegate scratchPadViewHadInteractionEvent:self];

      goto LABEL_12;
    }

    _selectedInk = [(PNPWizardScratchpadView *)self _selectedInk];
    identifier = [_selectedInk identifier];

    if (([identifier isEqual:*MEMORY[0x277CD96D8]] & 1) == 0)
    {
      self->_previousMarkingToolIndex = self->_selectedInkIndex;
    }

    [(PNPWizardScratchpadView *)self _selectInkAtIndex:v6];

    goto LABEL_10;
  }

LABEL_12:
}

- (BOOL)_viewIsPartOfStylusCanvasView:(id)view
{
  viewCopy = view;
  v5 = ([(PNPWizardScratchpadCanvasView *)self->_canvasView containsView:viewCopy]& 1) != 0 || self->_canvasView == viewCopy;

  return v5;
}

- (void)_showToastNotificationWithInitialAnimation
{
  [(PNPWizardScratchpadView *)self _initializeToastViewIfNecessary];
  [(PNPWizardScratchpadView *)self setShowingToast:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__PNPWizardScratchpadView__showToastNotificationWithInitialAnimation__block_invoke;
  v3[3] = &unk_279A0A060;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v3 options:0 animations:0.3 completion:0.0];
}

uint64_t __69__PNPWizardScratchpadView__showToastNotificationWithInitialAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowingToast:1];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_initializeToastViewIfNecessary
{
  if (!self->_toastView)
  {
    v3 = objc_alloc_init(PNPWizardScratchpadToast);
    toastView = self->_toastView;
    self->_toastView = v3;
  }

  v5 = PencilPairingUIBundle();
  v6 = [v5 localizedStringForKey:@"USE_APPLE_PENCIL_PROMPT" value:&stru_286FDFDB8 table:0];

  [(PNPWizardScratchpadToast *)self->_toastView setText:v6];
}

- (void)_showToastNotificationAndAnimateStrokeAway
{
  [(PNPWizardScratchpadView *)self _initializeToastViewIfNecessary];
  [(PNPWizardScratchpadView *)self setShowingToast:1];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  canvasView = [(PNPWizardScratchpadCanvasView *)self->_canvasView canvasView];
  drawing = [canvasView drawing];
  _visibleStrokes = [drawing _visibleStrokes];
  v6 = [_visibleStrokes count] != 0;

  v9 = v6;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__PNPWizardScratchpadView__showToastNotificationAndAnimateStrokeAway__block_invoke;
  v7[3] = &unk_279A0A4E0;
  v7[4] = self;
  v7[5] = v8;
  [(PNPWizardScratchpadView *)self _animateLayoutChange:v7];
  _Block_object_dispose(v8, 8);
}

void __69__PNPWizardScratchpadView__showToastNotificationAndAnimateStrokeAway__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__PNPWizardScratchpadView__showToastNotificationAndAnimateStrokeAway__block_invoke_2;
  v3[3] = &unk_279A0A4E0;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

uint64_t __69__PNPWizardScratchpadView__showToastNotificationAndAnimateStrokeAway__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 424) clearDrawingAnimated];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) setShowingToast:0];
  }

  v2 = *(a1 + 32);

  return [v2 _animateLayoutChange:0];
}

- (void)_dismissToastNotification
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__PNPWizardScratchpadView__dismissToastNotification__block_invoke;
  v2[3] = &unk_279A0A060;
  v2[4] = self;
  [(PNPWizardScratchpadView *)self _animateLayoutChange:v2];
}

uint64_t __52__PNPWizardScratchpadView__dismissToastNotification__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) clearDrawingAnimated];
  [*(a1 + 32) setShowingToast:0];
  v2 = *(a1 + 32);

  return [v2 _animateLayoutChange:0];
}

- (void)_canvasViewWillBeginDrawing:(id)drawing
{
  if ([(PNPWizardScratchpadView *)self _viewIsPartOfStylusCanvasView:drawing])
  {
    v4 = [(PNPWizardScratchpadCanvasView *)self->_canvasView ink];
    identifier = [v4 identifier];
    v6 = [identifier isEqual:*MEMORY[0x277CD96D8]];

    delegate = [(PNPWizardScratchpadView *)self delegate];
    v8 = [delegate scratchPadViewIsPlayingAnimation:self];

    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [(PNPWizardScratchpadView *)self _selectInkAtIndex:self->_previousMarkingToolIndex];

      [(PNPWizardScratchpadView *)self _animateLayoutChange:0];
    }
  }
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  if ([(PNPWizardScratchpadView *)self _viewIsPartOfStylusCanvasView:drawing])
  {
    self->_isDrawing = 1;
    delegate = [(PNPWizardScratchpadView *)self delegate];
    [delegate scratchPadViewHadInteractionEvent:self];

    v5 = [(PNPWizardScratchpadCanvasView *)self->_canvasView ink];
    identifier = [v5 identifier];
    v7 = [identifier isEqual:*MEMORY[0x277CD96D8]];

    if ((v7 & 1) == 0)
    {
      [(NSTimer *)self->_showToastTimer invalidate];
      showToastTimer = self->_showToastTimer;
      self->_showToastTimer = 0;

      [(PNPWizardScratchpadView *)self _dismissToastNotification];
    }
  }
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  drawingCopy = drawing;
  if ([(PNPWizardScratchpadView *)self _viewIsPartOfStylusCanvasView:?])
  {
    self->_isDrawing = 0;
  }

  if (![(PNPWizardScratchpadView *)self _viewIsPartOfStylusCanvasView:drawingCopy])
  {
    [(PNPWizardScratchpadView *)self _showToastNotificationAndAnimateStrokeAway];
  }

  drawing = [drawingCopy drawing];
  _visibleStrokes = [drawing _visibleStrokes];
  v6 = [_visibleStrokes count];

  if (v6)
  {
    [(NSTimer *)self->_showToastTimer invalidate];
    showToastTimer = self->_showToastTimer;
    self->_showToastTimer = 0;
  }
}

- (void)clearCanvas
{
  [(PNPWizardScratchpadCanvasView *)self->_canvasView clearDrawingAnimated];

  [(PNPWizardScratchpadView *)self setShowingToast:0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = PNPWizardScratchpadView;
  v8 = [(PNPWizardScratchpadView *)&v12 hitTest:eventCopy withEvent:x, y];
  if (-[PNPWizardScratchpadView _viewIsPartOfStylusCanvasView:](self, "_viewIsPartOfStylusCanvasView:", v8) && ![eventCopy pnp_isPencilEvent])
  {
    [(PNPWizardScratchpadCanvasView *)self->_fingerDrawingCanvasView convertPoint:self fromView:x, y];
    v9 = [(PNPWizardScratchpadCanvasView *)self->_fingerDrawingCanvasView hitTest:eventCopy withEvent:?];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (PNPWizardScratchpadView)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = PNPWizardScratchpadView;
  v3 = [(PNPWizardScratchpadView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  backgroundView = v3->_backgroundView;
  v3->_backgroundView = v4;

  [(PNPWizardScratchpadView *)v3 addSubview:v3->_backgroundView];
  v6 = objc_alloc_init(PNPWizardScratchpadCanvasView);
  canvasView = v3->_canvasView;
  v3->_canvasView = v6;

  v8 = objc_alloc_init(PNPWizardScratchpadCanvasView);
  fingerDrawingCanvasView = v3->_fingerDrawingCanvasView;
  v3->_fingerDrawingCanvasView = v8;

  [(PNPWizardScratchpadCanvasView *)v3->_canvasView setDelegate:v3];
  [(PNPWizardScratchpadCanvasView *)v3->_canvasView setOpaque:0];
  [(PNPWizardScratchpadCanvasView *)v3->_fingerDrawingCanvasView setDelegate:v3];
  [(PNPWizardScratchpadCanvasView *)v3->_fingerDrawingCanvasView setOpaque:0];
  v10 = v3->_fingerDrawingCanvasView;
  v11 = MEMORY[0x277CD9638];
  v12 = *MEMORY[0x277CD96E0];
  fingerDrawingInkColor = [MEMORY[0x277D75348] fingerDrawingInkColor];
  v14 = [v11 inkWithIdentifier:v12 color:fingerDrawingInkColor weight:0.2];
  [(PNPWizardScratchpadCanvasView *)v10 setInk:v14];

  [(PNPWizardScratchpadView *)v3 addSubview:v3->_fingerDrawingCanvasView];
  [(PNPWizardScratchpadView *)v3 addSubview:v3->_canvasView];
  layer = [MEMORY[0x277CD9F90] layer];
  frameLayer = v3->_frameLayer;
  v3->_frameLayer = layer;

  layer2 = [(PNPWizardScratchpadView *)v3 layer];
  [layer2 addSublayer:v3->_frameLayer];

  v18 = v3->_frameLayer;
  scratchpadFrameColor = [MEMORY[0x277D75348] scratchpadFrameColor];
  -[CAShapeLayer setFillColor:](v18, "setFillColor:", [scratchpadFrameColor CGColor]);

  v20 = objc_alloc_init(MEMORY[0x277D75D18]);
  toolsBackgroundPillView = v3->_toolsBackgroundPillView;
  v3->_toolsBackgroundPillView = v20;

  [(PNPWizardScratchpadView *)v3 addSubview:v3->_toolsBackgroundPillView];
  v22 = objc_alloc_init(PNPWizardInkWeightControl);
  inkWeightControl = v3->_inkWeightControl;
  v3->_inkWeightControl = v22;

  [(PNPWizardScratchpadView *)v3 addSubview:v3->_inkWeightControl];
  array = [MEMORY[0x277CBEB18] array];
  inkViews = v3->_inkViews;
  v3->_inkViews = array;

  for (i = 0; i != 8; ++i)
  {
    v27 = [[PNPWizardScratchpadInkView alloc] initWithIndex:i];
    v28 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__inkViewPressed_];
    [v28 setMinimumPressDuration:0.0];
    [(PNPWizardScratchpadInkView *)v27 addGestureRecognizer:v28];
    [(NSMutableArray *)v3->_inkViews addObject:v27];
    [(PNPWizardScratchpadView *)v3 addSubview:v27];
  }

  [(PNPWizardScratchpadView *)v3 _selectInkAtIndex:1];
  v3->_previousMarkingToolIndex = 1;
  v29 = objc_alloc_init(PNPWizardScratchpadToast);
  toastView = v3->_toastView;
  v3->_toastView = v29;

  [(PNPWizardScratchpadToast *)v3->_toastView setUserInteractionEnabled:0];
  [(PNPWizardScratchpadView *)v3 addSubview:v3->_toastView];
  v31 = PencilPairingUIBundle();
  v32 = [v31 localizedStringForKey:@"USE_APPLE_PENCIL_PROMPT" value:&stru_286FDFDB8 table:0];

  [(PNPWizardScratchpadToast *)v3->_toastView setText:v32];
  return v3;
}

- (void)prepareCanvasViews
{
  [(PNPWizardScratchpadCanvasView *)self->_fingerDrawingCanvasView prepareCanvasView];
  [(PNPWizardScratchpadCanvasView *)self->_canvasView prepareCanvasView];
  drawingGestureRecognizer = [(PNPWizardScratchpadCanvasView *)self->_canvasView drawingGestureRecognizer];
  [drawingGestureRecognizer setAllowedTouchTypes:&unk_286FED350];

  drawingGestureRecognizer2 = [(PNPWizardScratchpadCanvasView *)self->_fingerDrawingCanvasView drawingGestureRecognizer];
  [drawingGestureRecognizer2 setAllowedTouchTypes:&unk_286FED368];
}

- (void)setStep:(unint64_t)step
{
  self->_step = step;
  if (step == 1)
  {
    [(PNPWizardScratchpadView *)self _triggerShowToastTimer];
  }
}

- (void)_triggerShowToastTimer
{
  showToastTimer = self->_showToastTimer;
  if (showToastTimer)
  {
    [(NSTimer *)showToastTimer invalidate];
    v4 = self->_showToastTimer;
    self->_showToastTimer = 0;
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__showToastNotificationWithInitialAnimation selector:0 userInfo:0 repeats:3.0];
  v6 = self->_showToastTimer;
  self->_showToastTimer = v5;

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)viewWillMoveToSuperview:(id)superview
{
  if (!superview)
  {
    [(NSTimer *)self->_showToastTimer invalidate];
    showToastTimer = self->_showToastTimer;
    self->_showToastTimer = 0;
  }
}

- (PNPWizardScratchpadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end