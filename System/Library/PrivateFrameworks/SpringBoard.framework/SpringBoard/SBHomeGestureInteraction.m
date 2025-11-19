@interface SBHomeGestureInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
- (NSSet)gestureRecognizers;
- (SBHomeGestureInteraction)initWithSystemGestureManager:(id)a3 delegate:(id)a4;
- (SBHomeGestureInteractionDelegate)delegate;
- (double)indirectScreenEdgeGestureRecognitionDistance;
- (id)gestureRecognizerForType:(int64_t)a3;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (int64_t)typeOfGestureRecognizer:(id)a3;
- (void)_configureGestureRecognizers;
- (void)_configureIndirectPanGestureRecognizer;
- (void)_configureScreenEdgePanGestureRecognizer;
- (void)_configureScrunchGestureRecognizer;
- (void)_handleGestureRecognizer:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setEnabled:(BOOL)a3;
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SBHomeGestureInteraction *)self _configureIndirectPanGestureRecognizer];

    [(SBHomeGestureInteraction *)self _configureScrunchGestureRecognizer];
  }
}

- (void)_configureScreenEdgePanGestureRecognizer
{
  v8 = [(SBHomeGestureInteraction *)self delegate];
  v3 = [v8 homeGestureInteraction:self systemGestureTypeForType:1];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v8 customScreenEdgePanGestureRecognizerForHomeGestureInteraction:self];
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

- (SBHomeGestureInteraction)initWithSystemGestureManager:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = SBHomeGestureInteraction;
  v10 = [(SBHomeGestureInteraction *)&v12 init];
  if (v10)
  {
    if (!v8)
    {
      [SBHomeGestureInteraction initWithSystemGestureManager:a2 delegate:v10];
    }

    objc_storeWeak(&v10->_delegate, v9);
    v10->_enabled = 1;
    objc_storeStrong(&v10->_gestureManager, a3);
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
  v8 = [(SBHomeGestureInteraction *)self delegate];
  v3 = [v8 homeGestureInteraction:self systemGestureTypeForType:2];
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
  v8 = [(SBHomeGestureInteraction *)self delegate];
  v3 = [v8 homeGestureInteraction:self systemGestureTypeForType:3];
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

- (void)_handleGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [(SBHomeGestureInteraction *)self typeOfGestureRecognizer:v4];

  v7 = [(SBHomeGestureInteraction *)self delegate];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = v7;
      [v7 homeGestureInteractionEnded:self];
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      v9 = v7;
      [v7 homeGestureInteractionCancelled:self];
    }

    v7 = v9;
    if (self->_recognizedGestureType == v6)
    {
      self->_recognizedGestureType = 0;
    }
  }

  else
  {
    if (v5 == 1)
    {
      self->_recognizedGestureType = v6;
      v8 = v7;
      [v7 homeGestureInteractionBegan:self];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      v8 = v7;
      [v7 homeGestureInteractionChanged:self];
    }

    v7 = v8;
  }

LABEL_13:
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained viewForSystemGestureRecognizer:v4];

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 homeGestureInteraction:self shouldBeginGestureRecognizerOfType:{-[SBHomeGestureInteraction typeOfGestureRecognizer:](self, "typeOfGestureRecognizer:", v4)}];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 homeGestureInteraction:self shouldReceiveTouch:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 homeGestureInteraction:self shouldRecognizeSimultaneouslyWithGestureRecognizer:v7];
  }

  else
  {
    v10 = [(SBHomeGestureInteraction *)self gestureRecognizers];
    v9 = [v10 containsObject:v6] && (objc_msgSend(v10, "containsObject:", v7) & 1) != 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 homeGestureInteraction:self shouldRequireFailureOfGestureRecognizer:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeGestureInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 homeGestureInteraction:self shouldBeRequiredToFailByGestureRecognizer:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  v6 = v5;
  if (v5)
  {
    [v5 locationInView:v4];
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

- (CGPoint)translationInView:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 translationInView:v4];
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

- (CGPoint)velocityInView:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeGestureInteraction *)self gestureRecognizerForType:self->_recognizedGestureType];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 velocityInView:v4];
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

- (void)setEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(SBHomeGestureInteraction *)self gestureRecognizers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)gestureRecognizerForType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->_recognizedGestureType + a3);
  }

  return v4;
}

- (int64_t)typeOfGestureRecognizer:(id)a3
{
  v4 = a3;
  if (self->_screenEdgePanGestureRecognizer == v4)
  {
    v5 = 1;
  }

  else if (self->_indirectPanGestureRecognizer == v4)
  {
    v5 = 2;
  }

  else if (self->_scrunchGestureRecognizer == v4)
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