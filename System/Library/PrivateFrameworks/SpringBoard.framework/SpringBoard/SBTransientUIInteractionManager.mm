@interface SBTransientUIInteractionManager
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (SBSystemGestureManager)systemGestureManager;
- (SBTransientUIInteractionManager)initWithSystemGestureManager:(id)manager;
- (UIWindow)window;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (void)_screenWasIndirectPannedToDismiss:(id)dismiss;
- (void)_screenWasTappedToUnhide:(id)unhide;
- (void)registerParticipantForIndirectPanToDismiss:(id)dismiss;
- (void)registerParticipantForTapToDismiss:(id)dismiss;
- (void)registerParticipantForTapToUnhide:(id)unhide;
- (void)unregisterParticipantForIndirectPanToDismiss:(id)dismiss;
- (void)unregisterParticipantForTapToDismiss:(id)dismiss;
- (void)unregisterParticipantForTapToUnhide:(id)unhide;
@end

@implementation SBTransientUIInteractionManager

- (SBTransientUIInteractionManager)initWithSystemGestureManager:(id)manager
{
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = SBTransientUIInteractionManager;
  v5 = [(SBTransientUIInteractionManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_systemGestureManager, managerCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    tapToDismissParticipants = v6->_tapToDismissParticipants;
    v6->_tapToDismissParticipants = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    tapToUnhideParticipants = v6->_tapToUnhideParticipants;
    v6->_tapToUnhideParticipants = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    indirectPanToParticipants = v6->_indirectPanToParticipants;
    v6->_indirectPanToParticipants = weakObjectsHashTable3;

    dismissGestureRecognizer = v6->_dismissGestureRecognizer;
    v6->_dismissGestureRecognizer = 0;

    unhideTapRecognizer = v6->_unhideTapRecognizer;
    v6->_unhideTapRecognizer = 0;

    unhideDoubleTapRecognizer = v6->_unhideDoubleTapRecognizer;
    v6->_unhideDoubleTapRecognizer = 0;

    indirectPanRecognizer = v6->_indirectPanRecognizer;
    v6->_indirectPanRecognizer = 0;
  }

  return v6;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
  windowForSystemGestures = [WeakRetained windowForSystemGestures];

  return windowForSystemGestures;
}

- (void)_screenWasTappedToUnhide:(id)unhide
{
  v15 = *MEMORY[0x277D85DE8];
  unhideCopy = unhide;
  if (self->_unhideTapRecognizer == unhideCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSHashTable *)self->_tapToUnhideParticipants copy];
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

          [*(*(&v10 + 1) + 8 * v9++) transientUI:self wasTappedToUnhideFromGestureRecognizer:unhideCopy];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_screenWasIndirectPannedToDismiss:(id)dismiss
{
  v16 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v5 = dismissCopy;
  if (self->_indirectPanRecognizer == dismissCopy && [(UIPanGestureRecognizer *)dismissCopy state]== 1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSHashTable *)self->_indirectPanToParticipants copy];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) transientUI:self wasIndirectPannedToDismissFromGestureRecognizer:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v20 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_dismissGestureRecognizer == recognizerCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSHashTable *)self->_tapToDismissParticipants copy];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v8 |= [*(*(&v15 + 1) + 8 * i) transientUIHandledTouch:touchCopy withSystemGestureRecognizer:recognizerCopy];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = self->_unhideTapRecognizer == recognizerCopy || self->_unhideDoubleTapRecognizer == recognizerCopy;
  }

  return v8 & 1;
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
  windowForSystemGestures = [WeakRetained windowForSystemGestures];

  return windowForSystemGestures;
}

- (void)registerParticipantForTapToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (![(NSHashTable *)self->_tapToDismissParticipants containsObject:?])
  {
    [(NSHashTable *)self->_tapToDismissParticipants addObject:dismissCopy];
  }

  if ([(NSHashTable *)self->_tapToDismissParticipants count]&& !self->_dismissGestureRecognizer)
  {
    v4 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    self->_dismissGestureRecognizer = v4;

    [(SBFailingSystemGestureRecognizer *)self->_dismissGestureRecognizer setName:@"transientUI.dismiss"];
    [(SBFailingSystemGestureRecognizer *)self->_dismissGestureRecognizer setAllowedTouchTypes:&unk_28336E0A0];
    [(SBFailingSystemGestureRecognizer *)self->_dismissGestureRecognizer setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
    [WeakRetained addGestureRecognizer:self->_dismissGestureRecognizer withType:27];
  }
}

- (void)unregisterParticipantForTapToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if ([(NSHashTable *)self->_tapToDismissParticipants containsObject:?])
  {
    [(NSHashTable *)self->_tapToDismissParticipants removeObject:dismissCopy];
  }

  if (![(NSHashTable *)self->_tapToDismissParticipants count]&& self->_dismissGestureRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
    [WeakRetained removeGestureRecognizer:self->_dismissGestureRecognizer];

    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    self->_dismissGestureRecognizer = 0;
  }
}

- (void)registerParticipantForTapToUnhide:(id)unhide
{
  unhideCopy = unhide;
  if (![(NSHashTable *)self->_tapToUnhideParticipants containsObject:?])
  {
    [(NSHashTable *)self->_tapToUnhideParticipants addObject:unhideCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
  if ([(NSHashTable *)self->_tapToUnhideParticipants count])
  {
    if (!self->_unhideTapRecognizer)
    {
      v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__screenWasTappedToUnhide_];
      unhideTapRecognizer = self->_unhideTapRecognizer;
      self->_unhideTapRecognizer = v5;

      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setName:@"transientUI.unhide.tap"];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setCancelsTouchesInView:0];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setDelaysTouchesEnded:0];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setAllowedTouchTypes:&unk_28336E0B8];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer setDelegate:self];
      [WeakRetained addGestureRecognizer:self->_unhideTapRecognizer withType:29];
    }

    if (!self->_unhideDoubleTapRecognizer)
    {
      v7 = objc_alloc_init(MEMORY[0x277D75B80]);
      unhideDoubleTapRecognizer = self->_unhideDoubleTapRecognizer;
      self->_unhideDoubleTapRecognizer = v7;

      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setName:@"transientUI.unhide.doubleTap"];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setNumberOfTapsRequired:2];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setCancelsTouchesInView:0];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setDelaysTouchesEnded:0];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setAllowedTouchTypes:&unk_28336E0D0];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
      [(UITapGestureRecognizer *)self->_unhideDoubleTapRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_unhideTapRecognizer requireGestureRecognizerToFail:self->_unhideDoubleTapRecognizer];
      [WeakRetained addGestureRecognizer:self->_unhideDoubleTapRecognizer withType:30];
    }
  }
}

- (void)unregisterParticipantForTapToUnhide:(id)unhide
{
  unhideCopy = unhide;
  if ([(NSHashTable *)self->_tapToUnhideParticipants containsObject:?])
  {
    [(NSHashTable *)self->_tapToUnhideParticipants removeObject:unhideCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
  if (![(NSHashTable *)self->_tapToUnhideParticipants count])
  {
    [WeakRetained removeGestureRecognizer:self->_unhideTapRecognizer];
    unhideTapRecognizer = self->_unhideTapRecognizer;
    self->_unhideTapRecognizer = 0;

    [WeakRetained removeGestureRecognizer:self->_unhideDoubleTapRecognizer];
    unhideDoubleTapRecognizer = self->_unhideDoubleTapRecognizer;
    self->_unhideDoubleTapRecognizer = 0;
  }
}

- (void)registerParticipantForIndirectPanToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (![(NSHashTable *)self->_indirectPanToParticipants containsObject:?])
  {
    [(NSHashTable *)self->_indirectPanToParticipants addObject:dismissCopy];
  }

  if ([(NSHashTable *)self->_indirectPanToParticipants count]&& !self->_indirectPanRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__screenWasIndirectPannedToDismiss_];
    indirectPanRecognizer = self->_indirectPanRecognizer;
    self->_indirectPanRecognizer = v4;

    [(UIPanGestureRecognizer *)self->_indirectPanRecognizer setName:@"transientUI.dismiss.indirectPan"];
    [(UIPanGestureRecognizer *)self->_indirectPanRecognizer setDelegate:self];
    [(UIPanGestureRecognizer *)self->_indirectPanRecognizer setAllowedTouchTypes:MEMORY[0x277CBEBF8]];
    [(UIPanGestureRecognizer *)self->_indirectPanRecognizer setAllowedScrollTypesMask:3];
    WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
    [WeakRetained addGestureRecognizer:self->_indirectPanRecognizer withType:28];
  }
}

- (void)unregisterParticipantForIndirectPanToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if ([(NSHashTable *)self->_indirectPanToParticipants containsObject:?])
  {
    [(NSHashTable *)self->_indirectPanToParticipants removeObject:dismissCopy];
  }

  if (![(NSHashTable *)self->_indirectPanToParticipants count]&& self->_indirectPanRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);
    [WeakRetained removeGestureRecognizer:self->_indirectPanRecognizer];

    indirectPanRecognizer = self->_indirectPanRecognizer;
    self->_indirectPanRecognizer = 0;
  }
}

- (SBSystemGestureManager)systemGestureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);

  return WeakRetained;
}

@end