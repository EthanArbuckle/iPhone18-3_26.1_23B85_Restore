@interface SKUIContextActionsPresentationRegistration
- (BOOL)previewInteractionShouldBegin:(id)begin;
- (SKUIContextActionsPresentationRegistration)initWithViewController:(id)controller handler:(id)handler;
- (void)_presentFromGestureRecognizer:(id)recognizer;
- (void)cleanupPreviewInteraction:(id)interaction;
- (void)dealloc;
- (void)longPressGestureRecognizerTriggered:(id)triggered;
- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended;
- (void)previewInteractionDidCancel:(id)cancel;
- (void)setLongPressGestureRecognizer:(id)recognizer;
@end

@implementation SKUIContextActionsPresentationRegistration

- (SKUIContextActionsPresentationRegistration)initWithViewController:(id)controller handler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsPresentationRegistration initWithViewController:handler:];
  }

  v14.receiver = self;
  v14.super_class = SKUIContextActionsPresentationRegistration;
  v9 = [(SKUIContextActionsPresentationRegistration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewController, controller);
    v11 = _Block_copy(handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;

    v10->_previewInteractionDidEnd = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(UIPreviewInteraction *)self->_previewInteraction cancelInteraction];
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  if (longPressGestureRecognizer)
  {
    view = [(UILongPressGestureRecognizer *)longPressGestureRecognizer view];
    [view removeGestureRecognizer:self->_longPressGestureRecognizer];
  }

  v5.receiver = self;
  v5.super_class = SKUIContextActionsPresentationRegistration;
  [(SKUIContextActionsPresentationRegistration *)&v5 dealloc];
}

- (BOOL)previewInteractionShouldBegin:(id)begin
{
  v101 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  view = [beginCopy view];
  traitCollection = [view traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 1)
  {
    v8 = 0;
  }

  else
  {
    viewController = [(SKUIContextActionsPresentationRegistration *)self viewController];
    if (viewController)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v73 = view;
      if (v73)
      {
        v11 = v73;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            if ([v12 isDragging])
            {

              v8 = 0;
              goto LABEL_30;
            }

            [v10 addObject:v12];
          }

          superview = [v11 superview];

          v11 = superview;
        }

        while (superview);
      }

      v72 = viewController;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v96 objects:v100 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v97;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v97 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v96 + 1) + 8 * i);
            panGestureRecognizer = [v19 panGestureRecognizer];
            [panGestureRecognizer setEnabled:0];

            panGestureRecognizer2 = [v19 panGestureRecognizer];
            [panGestureRecognizer2 setEnabled:1];
          }

          v16 = [v14 countByEnumeratingWithState:&v96 objects:v100 count:16];
        }

        while (v16);
      }

      handler = [(SKUIContextActionsPresentationRegistration *)self handler];
      v12 = (handler)[2](handler, self);

      if (v12)
      {
        [beginCopy locationInCoordinateSpace:v73];
        v24 = v23;
        v26 = v25;
        viewController = v72;
        v27 = [[SKUIContextActionsPresentationSource alloc] initWithViewController:v72];
        [v12 setPresentationSource:v27];

        presentationSource = [v12 presentationSource];
        [presentationSource setSourceView:v73];

        v29 = *MEMORY[0x277CBF3A8];
        v30 = *(MEMORY[0x277CBF3A8] + 8);
        presentationSource2 = [v12 presentationSource];
        [presentationSource2 setSourceRect:{v24, v26, v29, v30}];

        v32 = [[SKUIContextActionsViewController alloc] initWithConfiguration:v12];
        [(SKUIContextActionsViewController *)v32 setOrbPresentation:1];
        longPressGestureRecognizer = [(SKUIContextActionsPresentationRegistration *)self longPressGestureRecognizer];
        [(SKUIContextActionsViewController *)v32 setSystemProvidedGestureRecognzier:longPressGestureRecognizer];

        v34 = [beginCopy valueForKey:@"touchObservingGestureRecognizer"];
        v35 = v34;
        if (v34)
        {
          [v34 setCancelsTouchesInView:1];
        }

        v36 = MEMORY[0x277D75D28];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke;
        v93[3] = &unk_2781F80C8;
        v12 = v12;
        v94 = v12;
        v37 = v32;
        v95 = v37;
        [v36 _performWithoutDeferringTransitions:v93];
        [(SKUIContextActionsPresentationRegistration *)self setOrbContextActionsViewController:v37];
        transitionPresentationController = [(SKUIContextActionsViewController *)v37 transitionPresentationController];
        v39 = transitionPresentationController;
        v8 = transitionPresentationController != 0;
        if (transitionPresentationController)
        {
          v70 = v35;
          v71 = v37;
          backgroundView = [transitionPresentationController backgroundView];
          v41 = [v73 snapshotViewAfterScreenUpdates:1];
          v69 = v39;
          containerView = [v39 containerView];
          v43 = containerView;
          if (v41 && containerView)
          {
            [containerView insertSubview:v41 aboveSubview:backgroundView];
            [v73 bounds];
            [v73 convertRect:v43 toView:?];
            [v41 setFrame:?];
            [v73 setHidden:1];
          }

          clearColor = [MEMORY[0x277D75348] clearColor];
          [backgroundView setBackgroundColor:clearColor];

          v45 = [SKUIContextActionsBlurEffect effectWithStyle:1];
          v68 = v43;
          v46 = objc_alloc(MEMORY[0x277D75D40]);
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_2;
          v89[3] = &unk_2781F8680;
          v66 = backgroundView;
          v90 = v66;
          v91 = v45;
          v47 = v41;
          v92 = v47;
          v67 = v45;
          v48 = [v46 initWithDuration:3 curve:v89 animations:1.0];
          [(SKUIContextActionsPresentationRegistration *)self setPreviewPhasePropertyAnimator:v48];

          view2 = [(SKUIContextActionsViewController *)v71 view];
          [v73 bounds];
          Width = CGRectGetWidth(v102);
          [view2 bounds];
          v51 = fmax(Width / CGRectGetWidth(v103), 0.5);
          [v73 bounds];
          Height = CGRectGetHeight(v104);
          [view2 bounds];
          v53 = CGRectGetHeight(v105);
          memset(&v88, 0, sizeof(v88));
          CGAffineTransformMakeScale(&v88, v51, fmax(Height / v53, 0.5));
          memset(&v87, 0, sizeof(v87));
          [v47 frame];
          MidX = CGRectGetMidX(v106);
          [view2 frame];
          v55 = MidX - CGRectGetMidX(v107);
          [v47 frame];
          MidY = CGRectGetMidY(v108);
          [view2 frame];
          v57 = CGRectGetMidY(v109);
          CGAffineTransformMakeTranslation(&v87, v55, MidY - v57);
          t1 = v88;
          t2 = v87;
          CGAffineTransformConcat(&v86, &t1, &t2);
          v88 = v86;
          [view2 setTransform:&v86];
          v58 = objc_alloc(MEMORY[0x277D75D40]);
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_3;
          v80[3] = &unk_2781F8680;
          v81 = v47;
          v82 = v66;
          v59 = view2;
          v83 = v59;
          v74 = v66;
          v60 = v47;
          v61 = [v58 initWithDuration:v80 dampingRatio:0.400000006 animations:1.0];
          [(SKUIContextActionsPresentationRegistration *)self setCommitPhasePropertyAnimator:v61];

          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v79 = v88;
          v77[2] = __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_4;
          v77[3] = &unk_2781FB828;
          v78 = v59;
          v62 = v59;
          [v69 setDismissalAnimations:v77];
          v63 = MEMORY[0x277CBEBB8];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_5;
          v75[3] = &unk_2781FB850;
          v75[4] = self;
          v76 = beginCopy;
          v64 = [v63 scheduledTimerWithTimeInterval:0 repeats:v75 block:1.0];
          [(SKUIContextActionsPresentationRegistration *)self setPreviewInteractionTimeout:v64];

          [(SKUIContextActionsPresentationRegistration *)self setPreviewInteractionDidEnd:0];
          v37 = v71;

          v39 = v69;
          viewController = v72;
          v35 = v70;
        }

        else
        {
          NSLog(&cfstr_Uipreviewinter.isa);
          [(SKUIContextActionsPresentationRegistration *)self cleanupPreviewInteraction:beginCopy];
        }
      }

      else
      {
        v8 = 0;
        viewController = v72;
      }

LABEL_30:
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationSource];
  [v2 presentViewController:*(a1 + 40) permittedArrowDirections:12 animated:0];

  v3 = [*(a1 + 40) view];
  [v3 setUserInteractionEnabled:0];

  v4 = [*(a1 + 40) view];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 40) view];
  [v5 setHidden:1];
}

uint64_t __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEffect:*(a1 + 40)];
  CGAffineTransformMakeScale(&v5, 1.08000004, 1.08000004);
  v2 = *(a1 + 48);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_3(id *a1)
{
  v2 = a1[4];
  v22 = *(MEMORY[0x277CBF2C0] + 16);
  v24 = *MEMORY[0x277CBF2C0];
  v23 = v24;
  v25 = v22;
  v26 = *(MEMORY[0x277CBF2C0] + 32);
  v21 = v26;
  [v2 setTransform:&v24];
  [a1[4] setAlpha:0.0];
  [a1[4] bounds];
  [a1[5] bounds];
  v3 = [a1[6] traitCollection];
  [v3 displayScale];
  v19 = v4;
  UIRectCenteredXInRectScale();

  [a1[5] bounds];
  v5 = [a1[6] traitCollection];
  [v5 displayScale];
  v20 = v6;
  UIRectCenteredYInRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  [a1[4] setBounds:{0.0, 0.0, Width, CGRectGetHeight(v28), v20}];
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  [a1[4] setCenter:{MidX, CGRectGetMidY(v30)}];
  v17 = a1[6];
  v24 = v23;
  v25 = v22;
  v26 = v21;
  [v17 setTransform:&v24];
  return [a1[6] setAlpha:1.0];
}

uint64_t __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v4];
}

void __76__SKUIContextActionsPresentationRegistration_previewInteractionShouldBegin___block_invoke_5(uint64_t a1)
{
  if (([*(a1 + 32) previewInteractionDidEnd] & 1) == 0)
  {
    NSLog(&cfstr_Uipreviewinter_0.isa);
    [*(a1 + 32) previewInteraction:*(a1 + 40) didUpdatePreviewTransition:1 ended:1.0];
    v2 = [*(a1 + 32) previewInteraction];
    [v2 _prepareUsingFeedback];

    v3 = [*(a1 + 32) previewInteraction];
    [v3 _actuateFeedbackForStateIfNeeded:2];

    v4 = [*(a1 + 32) previewInteraction];
    [v4 cancelInteraction];
  }
}

- (void)previewInteraction:(id)interaction didUpdatePreviewTransition:(double)transition ended:(BOOL)ended
{
  endedCopy = ended;
  interactionCopy = interaction;
  NSLog(&cfstr_Uipreviewinter_1.isa);
  v8 = transition * transition;
  previewPhasePropertyAnimator = [(SKUIContextActionsPresentationRegistration *)self previewPhasePropertyAnimator];
  [previewPhasePropertyAnimator fractionComplete];
  v11 = v10;

  if (v8 < 1.0 || v11 != 0.0)
  {
    previewPhasePropertyAnimator2 = [(SKUIContextActionsPresentationRegistration *)self previewPhasePropertyAnimator];
    [previewPhasePropertyAnimator2 setFractionComplete:v8];
  }

  if (endedCopy)
  {
    [(SKUIContextActionsPresentationRegistration *)self setPreviewInteractionDidEnd:1];
    orbContextActionsViewController = [(SKUIContextActionsPresentationRegistration *)self orbContextActionsViewController];
    view = [orbContextActionsViewController view];
    [view setUserInteractionEnabled:1];

    orbContextActionsViewController2 = [(SKUIContextActionsPresentationRegistration *)self orbContextActionsViewController];
    view2 = [orbContextActionsViewController2 view];
    [view2 setHidden:0];

    commitPhasePropertyAnimator = [(SKUIContextActionsPresentationRegistration *)self commitPhasePropertyAnimator];
    [commitPhasePropertyAnimator startAnimation];

    previewPhasePropertyAnimator3 = [(SKUIContextActionsPresentationRegistration *)self previewPhasePropertyAnimator];
    [previewPhasePropertyAnimator3 pauseAnimation];

    v19 = [objc_alloc(MEMORY[0x277D75A60]) initWithDampingRatio:1.0];
    previewPhasePropertyAnimator4 = [(SKUIContextActionsPresentationRegistration *)self previewPhasePropertyAnimator];
    [previewPhasePropertyAnimator4 continueAnimationWithTimingParameters:v19 durationFactor:0.400000006];

    [(SKUIContextActionsPresentationRegistration *)self setOrbContextActionsViewController:0];
    [(SKUIContextActionsPresentationRegistration *)self cleanupPreviewInteraction:interactionCopy];
  }
}

- (void)previewInteractionDidCancel:(id)cancel
{
  cancelCopy = cancel;
  if ([(SKUIContextActionsPresentationRegistration *)self previewInteractionDidEnd])
  {
    NSLog(&cfstr_Uipreviewinter_2.isa);
  }

  else
  {
    NSLog(&cfstr_Uipreviewinter_3.isa);
    [(SKUIContextActionsPresentationRegistration *)self cleanupPreviewInteraction:cancelCopy];
    [(SKUIContextActionsPresentationRegistration *)self setOrbContextActionsViewController:0];
    [(SKUIContextActionsPresentationRegistration *)self setCommitPhasePropertyAnimator:0];
    [(SKUIContextActionsPresentationRegistration *)self setPreviewPhasePropertyAnimator:0];
  }
}

- (void)cleanupPreviewInteraction:(id)interaction
{
  interactionCopy = interaction;
  previewInteractionTimeout = [(SKUIContextActionsPresentationRegistration *)self previewInteractionTimeout];
  [previewInteractionTimeout invalidate];

  [(SKUIContextActionsPresentationRegistration *)self setPreviewInteractionTimeout:0];
  v5 = [interactionCopy valueForKey:@"touchObservingGestureRecognizer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setCancelsTouchesInView:0];
  }

  orbContextActionsViewController = [(SKUIContextActionsPresentationRegistration *)self orbContextActionsViewController];
  [orbContextActionsViewController dismissViewControllerAnimated:0 completion:0];

  view = [interactionCopy view];
  [view setHidden:0];
}

- (void)longPressGestureRecognizerTriggered:(id)triggered
{
  triggeredCopy = triggered;
  if ([triggeredCopy state] == 1)
  {
    view = [triggeredCopy view];
    traitCollection = [view traitCollection];
    forceTouchCapability = [traitCollection forceTouchCapability];

    if (forceTouchCapability != 2)
    {
      [(SKUIContextActionsPresentationRegistration *)self _presentFromGestureRecognizer:triggeredCopy];
    }
  }
}

- (void)setLongPressGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer removeTarget:self action:sel_longPressGestureRecognizerTriggered_];
  objc_storeStrong(&self->_longPressGestureRecognizer, recognizer);
  v5 = recognizerCopy;
  if (recognizerCopy)
  {
    [recognizerCopy addTarget:self action:sel_longPressGestureRecognizerTriggered_];
    v5 = recognizerCopy;
  }
}

- (void)_presentFromGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  handler = [(SKUIContextActionsPresentationRegistration *)self handler];
  v5 = (handler)[2](handler, self);

  if (v5)
  {
    v6 = [SKUIContextActionsPresentationSource alloc];
    viewController = [(SKUIContextActionsPresentationRegistration *)self viewController];
    v8 = [(SKUIContextActionsPresentationSource *)v6 initWithViewController:viewController];

    view = [recognizerCopy view];
    [(SKUIContextActionsPresentationSource *)v8 setSourceView:view];

    view2 = [recognizerCopy view];
    [view2 defaultPresentationPosition];
    [(SKUIContextActionsPresentationSource *)v8 setSourceRect:?];

    [v5 setPresentationSource:v8];
    v11 = [[SKUIContextActionsViewController alloc] initWithConfiguration:v5];
    [(SKUIContextActionsViewController *)v11 setSystemProvidedGestureRecognzier:recognizerCopy];
    presentationSource = [v5 presentationSource];
    [presentationSource presentViewController:v11 permittedArrowDirections:12 animated:1];
  }
}

- (void)initWithViewController:handler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsPresentationRegistration initWithViewController:handler:]";
}

@end