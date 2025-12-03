@interface SBHomeGestureInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)locationInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (NSSet)gestureRecognizers;
- (SBHomeGestureInteraction)initWithSystemGestureManager:(id)manager delegate:(id)delegate;
- (SBHomeGestureInteractionDelegate)delegate;
- (double)indirectScreenEdgeGestureRecognitionDistance;
- (id)gestureRecognizerForType:(int64_t)type;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (int64_t)typeOfGestureRecognizer:(id)recognizer;
- (void)_configureGestureRecognizers;
- (void)_configureIndirectPanGestureRecognizer;
- (void)_configureScreenEdgePanGestureRecognizer;
- (void)_configureScrunchGestureRecognizer;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)invalidate;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SBHomeGestureInteraction

- (SBHomeGestureInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_configureGestureRecognizers
{
  [(SBHomeGestureInteraction *)self _configureScreenEdgePanGestureRecognizer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SBHomeGestureInteraction *)self _configureIndirectPanGestureRecognizer];

    [(SBHomeGestureInteraction *)self _configureScrunchGestureRecognizer];
  }
}

- (void)_configureScreenEdgePanGestureRecognizer
{
  delegate = [(SBHomeGestureInteraction *)self delegate];
  v3 = [delegate homeGestureInteraction:self systemGestureTypeForType:1];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate customScreenEdgePanGestureRecognizerForHomeGestureInteraction:self];
    }

    else
    {
      v5 = [SBHomeGesturePanGestureRecognizer homeGesturePanGestureRecognizerWithTarget:0 action:0];
      [(UIScreenEdgePanGestureRecognizer *)v5 setEdges:4];
      [(SBHomeGesturePanGestureRecognizer *)v5 setInstalledAsSystemGesture:1];
    }

    [(SBHomeGesturePanGestureRecognizer *)v5 addTarget:self action:sel__handleGestureRecognizer_];
    [(SBHomeGesturePanGestureRecognizer *)v5 setDelegate:self];
    screenEdgePanGestureRecognizer = self->_screenEdgePanGestureRecognizer;
    self->_screenEdgePanGestureRecognizer = v5;
    v7 = v5;

    [(SBSystemGestureManager *)self->_gestureManager addGestureRecognizer:v7 withType:v4];
  }
}

- (NSSet)gestureRecognizers
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 bs_safeAddObject:self->_screenEdgePanGestureRecognizer];
  [v3 bs_safeAddObject:self->_indirectPanGestureRecognizer];
  [v3 bs_safeAddObject:self->_scrunchGestureRecognizer];

  return v3;
}

- (SBHomeGestureInteraction)initWithSystemGestureManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBHomeGestureInteraction;
  v10 = [(SBHomeGestureInteraction *)&v12 init];
  if (v10)
  {
    if (!managerCopy)
    {
      [SBHomeGestureInteraction initWithSystemGestureManager:a2 delegate:v10];
    }

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_enabled = 1;
    objc_storeStrong(&v10->_gestureManager, manager);
    [(SBHomeGestureInteraction *)v10 _configureGestureRecognizers];
  }

  return v10;
}

- (void)invalidate
{
  [(SBSystemGestureManager *)self->_gestureManager removeGestureRecognizer:self->_screenEdgePanGestureRecognizer];
  [(SBSystemGestureManager *)self->_gestureManager removeGestureRecognizer:self->_indirectPanGestureRecognizer];
  gestureManager = self->_gestureManager;
  scrunchGestureRecognizer = self->_scrunchGestureRecognizer;

  [(SBSystemGestureManager *)gestureManager removeGestureRecognizer:scrunchGestureRecognizer];
}

- (void)dealloc
{
  [(SBHomeGestureInteraction *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBHomeGestureInteraction;
  [(SBHomeGestureInteraction *)&v3 dealloc];
}

- (void)_configureIndirectPanGestureRecognizer
{
  delegate = [(SBHomeGestureInteraction *)self delegate];
  v3 = [delegate homeGestureInteraction:self systemGestureTypeForType:2];
  if (v3)
  {
    v4 = v3;
    v5 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleGestureRecognizer_ edges:4];
    [(SBIndirectPanGestureRecognizer *)v5 setName:@"indirectHomeInteractionGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)v5 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)v5 setShouldInvertYAxis:1];
    indirectPanGestureRecognizer = self->_indirectPanGestureRecognizer;
    self->_indirectPanGestureRecognizer = v5;
    v7 = v5;

    [(SBSystemGestureManager *)self->_gestureManager addGestureRecognizer:v7 withType:v4];
  }
}

- (void)_configureScrunchGestureRecognizer
{
  delegate = [(SBHomeGestureInteraction *)self delegate];
  v3 = [delegate homeGestureInteraction:self systemGestureTypeForType:3];
  if (v3)
  {
    v4 = v3;
    v5 = [[SBFluidScrunchGestureRecognizer alloc] initWithTarget:self action:sel__handleGestureRecognizer_];
    [(SBFluidScrunchGestureRecognizer *)v5 setDelegate:self];
    scrunchGestureRecognizer = self->_scrunchGestureRecognizer;
    self->_scrunchGestureRecognizer = v5;
    v7 = v5;

    [(SBSystemGestureManager *)self->_gestureManager addGestureRecognizer:v7 withType:v4];
  }
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  v6 = [(SBHomeGestureInteraction *)self typeOfGestureRecognizer:recognizerCopy];

  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (state > 2)
  {
    if (state == 3)
    {
      v9 = delegate;
      [delegate homeGestureInteractionEnded:self];
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_13;
      }

      v9 = delegate;
      [delegate homeGestureInteractionCancelled:self];
    }

    delegate = v9;
    if (self->_recognizedGestureType == v6)
    {
      self->_recognizedGestureType = 0;
    }
  }

  else
  {
    if (state == 1)
    {
      self->_recognizedGestureType = v6;
      v8 = delegate;
      [delegate homeGestureInteractionBegan:self];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_13;
      }

      v8 = delegate;
      [delegate homeGestureInteractionChanged:self];
    }

    delegate = v8;
  }

LABEL_13:
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained viewForSystemGestureRecognizer:recognizerCopy];

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate homeGestureInteraction:self shouldBeginGestureRecognizerOfType:{-[SBHomeGestureInteraction typeOfGestureRecognizer:](self, "typeOfGestureRecognizer:", beginCopy)}];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate homeGestureInteraction:self shouldReceiveTouch:touchCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate homeGestureInteraction:self shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    gestureRecognizers = [(SBHomeGestureInteraction *)self gestureRecognizers];
    v9 = [gestureRecognizers containsObject:recognizerCopy] && (objc_msgSend(gestureRecognizers, "containsObject:", gestureRecognizerCopy) & 1) != 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate homeGestureInteraction:self shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  delegate = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate homeGestureInteraction:self shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  v6 = v5;
  if (v5)
  {
    [v5 locationInView:viewCopy];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  viewCopy = view;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 translationInView:viewCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  viewCopy = view;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 velocityInView:viewCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    gestureRecognizers = [(SBHomeGestureInteraction *)self gestureRecognizers];
    v5 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:enabledCopy];
        }

        while (v6 != v8);
        v6 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)gestureRecognizerForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->_recognizedGestureType + type);
  }

  return v4;
}

- (int64_t)typeOfGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->_screenEdgePanGestureRecognizer == recognizerCopy)
  {
    v5 = 1;
  }

  else if (self->_indirectPanGestureRecognizer == recognizerCopy)
  {
    v5 = 2;
  }

  else if (self->_scrunchGestureRecognizer == recognizerCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)indirectScreenEdgeGestureRecognitionDistance
{
  if (self->_recognizedGestureType != 2)
  {
    return 0.0;
  }

  [(SBIndirectPanGestureRecognizer *)self->_indirectPanGestureRecognizer activationRecognitionDistance];
  return result;
}

- (void)initWithSystemGestureManager:(uint64_t)a1 delegate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGestureInteraction.m" lineNumber:37 description:@"invalid system gesture manager"];
}

@end