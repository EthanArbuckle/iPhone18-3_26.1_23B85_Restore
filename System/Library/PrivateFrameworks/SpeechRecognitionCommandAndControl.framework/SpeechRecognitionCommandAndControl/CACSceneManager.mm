@interface CACSceneManager
- (BOOL)anyPresentationPreventsDictation;
- (BOOL)isAlwaysShowingElementNamesOverlayManager:(id)manager;
- (BOOL)isAlwaysShowingLabeledElementsOverlayManager:(id)manager;
- (BOOL)isAlwaysShowingLabeledGridOverlayManager:(id)manager;
- (BOOL)isCarPlayScene;
- (BOOL)isDisplayingAnyContentView;
- (BOOL)isDisplayingAnyInteractiveContentInProcess;
- (BOOL)isDisplayingAnyOutOfProcessPresentation;
- (BOOL)isDisplayingAnyOverlay;
- (BOOL)isDisplayingAnyPresentation;
- (BOOL)isDisplayingCorrections;
- (BOOL)isHandlingDisambiguationForLabeledElementsOverlayManager:(id)manager;
- (BOOL)isMainDisplayScene;
- (BOOL)isOverlayFadingEnabledForEditingModeOverlayManager:(id)manager;
- (BOOL)isOverlayFadingEnabledForElementNamesOverlayManager:(id)manager;
- (BOOL)isOverlayFadingEnabledForLabeledElementsOverlayManager:(id)manager;
- (BOOL)isOverlayFadingEnabledForLabeledGridOverlayManager:(id)manager;
- (BOOL)isPressOnFirstLevelEnabledForLabeledGridOverlayManager:(id)manager;
- (BOOL)shouldAssignNumbersRandomlyInLabeledElementsOverlayManager:(id)manager;
- (BOOL)showsNumbersInTopLeftForLabeledGridOverlayManager:(id)manager;
- (BOOL)updateGridLayoutFromPreferences;
- (CACContextCluesPresentationManager)contextCluesPresentationManager;
- (CACCorrectionPresentationManager)correctionPresentationManager;
- (CACCustomCommandEditorPresentationManager)customCommandEditorPresentationManager;
- (CACDictationRecognizerModeOverlayManager)dictationRecognizerModeOverlayManager;
- (CACEditingModeOverlayManager)editingModeOverlayManager;
- (CACEditingModeOverlayManager)linesEditingModeOverlayManager;
- (CACElementActionsPresentationManager)elementActionsPresentationManager;
- (CACElementNamesOverlayManager)elementNamesOverlayManager;
- (CACGestureLivePreviewOverlayManager)gestureLivePreviewPresentationOverlayManager;
- (CACLabeledElementsOverlayManager)labeledElementsOverlayManager;
- (CACLabeledGridOverlayManager)labeledGridOverlayManager;
- (CACSceneManager)init;
- (CGRect)imageRectForDictationRecognizerModeOverlayManager:(id)manager;
- (CGRect)minimumSystemAperatureRect;
- (CGRect)systemAperatureRect;
- (CGRect)topLevelPortraitUpRectForLabeledGridOverlayManager:(id)manager;
- (double)overlayFadeDelayForEditingModeOverlayManager:(id)manager;
- (double)overlayFadeDelayForElementNamesOverlayManager:(id)manager;
- (double)overlayFadeDelayForLabeledElementsOverlayManager:(id)manager;
- (double)overlayFadeDelayForLabeledGridOverlayManager:(id)manager;
- (float)overlayFadeOpacityForEditingModeOverlayManager:(id)manager;
- (float)overlayFadeOpacityForElementNamesOverlayManager:(id)manager;
- (float)overlayFadeOpacityForLabeledElementsOverlayManager:(id)manager;
- (float)overlayFadeOpacityForLabeledGridOverlayManager:(id)manager;
- (id)_containerViewControllerForViewController:(id)controller;
- (id)labeledGridOverlayManager:(id)manager elementWithNumber:(unint64_t)number rectangle:(CGRect)rectangle;
- (id)localeForLabeledElementsOverlayManager:(id)manager;
- (id)screen;
- (int)modeForDictationRecognizerModeOverlayManager:(id)manager;
- (int64_t)maximumLevelForLabeledGridOverlayManager:(id)manager;
- (unint64_t)_numberOfLabelsForGridManager:(id)manager;
- (unint64_t)numberOfLabelsForGridManager;
- (unint64_t)updateGridLayoutWithNumberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns shouldPreferRows:(BOOL)preferRows startingNumber:(unint64_t)number;
- (unsigned)displayID;
- (unsigned)randomElementNumberingSeedForLabeledElementsOverlayManager:(id)manager;
- (void)_installViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)contentViewManager:(id)manager dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)contentViewManager:(id)manager presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)didAssignNumbersInLabeledElementsOverlayManager:(id)manager;
- (void)didUpdateElementsForLabeledGridOverlayManager:(id)manager;
- (void)hideAnyOverlayAnimated:(BOOL)animated includeInteractiveOverlays:(BOOL)overlays;
- (void)hideAnyPresentationAnimated:(BOOL)animated includingOutOfProcessPresentations:(BOOL)presentations;
- (void)hideDictationRecognizerModeOverlayNow;
- (void)numberingDidUpdate;
- (void)registerPresentationManager:(id)manager;
- (void)showBannerViewWithText:(id)text type:(int64_t)type;
@end

@implementation CACSceneManager

- (CACSceneManager)init
{
  v7.receiver = self;
  v7.super_class = CACSceneManager;
  v2 = [(CACSceneManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registeredPresentationManagers = v2->_registeredPresentationManagers;
    v2->_registeredPresentationManagers = v3;

    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v2->_systemAperatureRect.origin = *MEMORY[0x277CBF3A0];
    v2->_systemAperatureRect.size = v5;
  }

  return v2;
}

- (unsigned)displayID
{
  scene = [(CACSceneManager *)self scene];
  screen = [scene screen];
  _integerDisplayID = [screen _integerDisplayID];

  return _integerDisplayID;
}

- (BOOL)isMainDisplayScene
{
  displayID = [(CACSceneManager *)self displayID];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  LOBYTE(displayID) = displayID == [mainScreen _integerDisplayID];

  return displayID;
}

- (BOOL)isCarPlayScene
{
  scene = [(CACSceneManager *)self scene];
  session = [scene session];
  role = [session role];
  v5 = [role isEqualToString:*MEMORY[0x277D776C8]];

  return v5;
}

- (id)screen
{
  scene = [(CACSceneManager *)self scene];

  if (scene)
  {
    scene2 = [(CACSceneManager *)self scene];
    screen = [scene2 screen];
  }

  else
  {
    screen = [MEMORY[0x277D759A0] mainScreen];
  }

  return screen;
}

- (void)registerPresentationManager:(id)manager
{
  managerCopy = manager;
  v4 = self->_registeredPresentationManagers;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_registeredPresentationManagers addObject:managerCopy];
  objc_sync_exit(v4);
}

- (void)showBannerViewWithText:(id)text type:(int64_t)type
{
  textCopy = text;
  bannerViewPresenter = [(CACSceneManager *)self bannerViewPresenter];

  if (!bannerViewPresenter)
  {
    v8 = [CACBannerViewPresenter alloc];
    viewAboveContainedViews = [(CACContainerViewController *)self->_overlayContainerViewController viewAboveContainedViews];
    v10 = [(CACBannerViewPresenter *)v8 initWithContainingView:viewAboveContainedViews];
    [(CACSceneManager *)self setBannerViewPresenter:v10];
  }

  bannerViewPresenter2 = [(CACSceneManager *)self bannerViewPresenter];
  [bannerViewPresenter2 presentBannerViewWithText:textCopy type:type avoidingSystemAperature:{self->_systemAperatureRect.origin.x, self->_systemAperatureRect.origin.y, self->_systemAperatureRect.size.width, self->_systemAperatureRect.size.height}];
}

- (id)_containerViewControllerForViewController:(id)controller
{
  isOverlay = [controller isOverlay];
  v5 = 32;
  if (isOverlay)
  {
    v5 = 40;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (void)_installViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  v10 = [(CACSceneManager *)self _containerViewControllerForViewController:controllerCopy];
  [v10 installViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  v10 = [(CACSceneManager *)self _containerViewControllerForViewController:controllerCopy];
  [v10 uninstallViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)hideAnyOverlayAnimated:(BOOL)animated includeInteractiveOverlays:(BOOL)overlays
{
  overlaysCopy = overlays;
  animatedCopy = animated;
  v23 = *MEMORY[0x277D85DE8];
  v7 = self->_registeredPresentationManagers;
  objc_sync_enter(v7);
  v8 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v7);

  v9 = CACLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"excluding";
    if (overlaysCopy)
    {
      v10 = @"including";
    }

    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_26B354000, v9, OS_LOG_TYPE_INFO, "Hiding all overlays %@ interactive", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 isShowing] && objc_msgSend(v15, "isOverlay") && (overlaysCopy || (objc_msgSend(v15, "isPhysicallyInteractiveOverlay") & 1) == 0))
        {
          if (animatedCopy)
          {
            [v15 hide];
          }

          else
          {
            [v15 hideWithoutAnimation];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)hideAnyPresentationAnimated:(BOOL)animated includingOutOfProcessPresentations:(BOOL)presentations
{
  presentationsCopy = presentations;
  animatedCopy = animated;
  v23 = *MEMORY[0x277D85DE8];
  v7 = self->_registeredPresentationManagers;
  objc_sync_enter(v7);
  v8 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v7);

  v9 = CACLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"excluding";
    if (presentationsCopy)
    {
      v10 = @"including";
    }

    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_26B354000, v9, OS_LOG_TYPE_INFO, "Hiding all presentations %@ out of process", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (([v15 isOverlay] & 1) == 0 && (presentationsCopy || (objc_msgSend(v15, "isOutOfProcess") & 1) == 0))
        {
          if (animatedCopy)
          {
            [v15 hide];
          }

          else
          {
            [v15 hideWithoutAnimation];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)hideDictationRecognizerModeOverlayNow
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isShowing])
        {
          [v9 hideWithoutAnimation];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)isDisplayingAnyContentView
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isShowing])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isDisplayingAnyPresentation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isShowing] && (objc_msgSend(v9, "isOverlay") & 1) == 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)isDisplayingCorrections
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isShowing])
        {
          if (([v9 isOverlay] & 1) == 0)
          {
            correctionPresentationManager = [(CACSceneManager *)self correctionPresentationManager];
            v11 = v9 == correctionPresentationManager;

            if (v11)
            {
              v12 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)isDisplayingAnyInteractiveContentInProcess
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isShowing] && (objc_msgSend(v9, "isOverlay") & 1) == 0 && (objc_msgSend(v9, "isOutOfProcess") & 1) == 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (BOOL)isDisplayingAnyOutOfProcessPresentation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isShowing] && (objc_msgSend(v9, "isOutOfProcess") & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)anyPresentationPreventsDictation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isShowing] && (objc_msgSend(v9, "shouldPreventDictation") & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)isDisplayingAnyOverlay
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_registeredPresentationManagers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isShowing] && (objc_msgSend(v9, "isOverlay") & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (CACLabeledElementsOverlayManager)labeledElementsOverlayManager
{
  labeledElementsOverlayManager = self->_labeledElementsOverlayManager;
  if (!labeledElementsOverlayManager)
  {
    v4 = objc_alloc_init(CACLabeledElementsOverlayManager);
    v5 = self->_labeledElementsOverlayManager;
    self->_labeledElementsOverlayManager = v4;

    [(CACLabeledElementsOverlayManager *)self->_labeledElementsOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_labeledElementsOverlayManager];
    labeledElementsOverlayManager = self->_labeledElementsOverlayManager;
  }

  return labeledElementsOverlayManager;
}

- (CACLabeledGridOverlayManager)labeledGridOverlayManager
{
  labeledGridOverlayManager = self->_labeledGridOverlayManager;
  if (!labeledGridOverlayManager)
  {
    v4 = objc_alloc_init(CACLabeledGridOverlayManager);
    v5 = self->_labeledGridOverlayManager;
    self->_labeledGridOverlayManager = v4;

    [(CACLabeledGridOverlayManager *)self->_labeledGridOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_labeledGridOverlayManager];
    [(CACSceneManager *)self updateGridLayoutFromPreferences];
    labeledGridOverlayManager = self->_labeledGridOverlayManager;
  }

  return labeledGridOverlayManager;
}

- (CACElementNamesOverlayManager)elementNamesOverlayManager
{
  elementNamesOverlayManager = self->_elementNamesOverlayManager;
  if (!elementNamesOverlayManager)
  {
    v4 = objc_alloc_init(CACElementNamesOverlayManager);
    v5 = self->_elementNamesOverlayManager;
    self->_elementNamesOverlayManager = v4;

    [(CACElementNamesOverlayManager *)self->_elementNamesOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_elementNamesOverlayManager];
    elementNamesOverlayManager = self->_elementNamesOverlayManager;
  }

  return elementNamesOverlayManager;
}

- (CACEditingModeOverlayManager)editingModeOverlayManager
{
  editingModeOverlayManager = self->_editingModeOverlayManager;
  if (!editingModeOverlayManager)
  {
    v4 = objc_alloc_init(CACEditingModeOverlayManager);
    v5 = self->_editingModeOverlayManager;
    self->_editingModeOverlayManager = v4;

    [(CACEditingModeOverlayManager *)self->_editingModeOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_editingModeOverlayManager];
    editingModeOverlayManager = self->_editingModeOverlayManager;
  }

  return editingModeOverlayManager;
}

- (CACEditingModeOverlayManager)linesEditingModeOverlayManager
{
  linesEditingModeOverlayManager = self->_linesEditingModeOverlayManager;
  if (!linesEditingModeOverlayManager)
  {
    v4 = objc_alloc_init(CACEditingModeOverlayManager);
    v5 = self->_linesEditingModeOverlayManager;
    self->_linesEditingModeOverlayManager = v4;

    [(CACEditingModeOverlayManager *)self->_linesEditingModeOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_linesEditingModeOverlayManager];
    linesEditingModeOverlayManager = self->_linesEditingModeOverlayManager;
  }

  return linesEditingModeOverlayManager;
}

- (CACGestureLivePreviewOverlayManager)gestureLivePreviewPresentationOverlayManager
{
  gestureLivePreviewOverlayManager = self->_gestureLivePreviewOverlayManager;
  if (!gestureLivePreviewOverlayManager)
  {
    v4 = objc_alloc_init(CACGestureLivePreviewOverlayManager);
    v5 = self->_gestureLivePreviewOverlayManager;
    self->_gestureLivePreviewOverlayManager = v4;

    [(CACSimpleContentViewManager *)self->_gestureLivePreviewOverlayManager setContentViewManagerDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_gestureLivePreviewOverlayManager];
    gestureLivePreviewOverlayManager = self->_gestureLivePreviewOverlayManager;
  }

  return gestureLivePreviewOverlayManager;
}

- (CACElementActionsPresentationManager)elementActionsPresentationManager
{
  elementActionsPresentationManager = self->_elementActionsPresentationManager;
  if (!elementActionsPresentationManager)
  {
    v4 = objc_alloc_init(CACElementActionsPresentationManager);
    v5 = self->_elementActionsPresentationManager;
    self->_elementActionsPresentationManager = v4;

    [(CACSimpleContentViewManager *)self->_elementActionsPresentationManager setContentViewManagerDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_elementActionsPresentationManager];
    elementActionsPresentationManager = self->_elementActionsPresentationManager;
  }

  return elementActionsPresentationManager;
}

- (CACCorrectionPresentationManager)correctionPresentationManager
{
  correctionPresentationManager = self->_correctionPresentationManager;
  if (!correctionPresentationManager)
  {
    v4 = objc_alloc_init(CACCorrectionPresentationManager);
    v5 = self->_correctionPresentationManager;
    self->_correctionPresentationManager = v4;

    [(CACSimpleContentViewManager *)self->_correctionPresentationManager setContentViewManagerDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_correctionPresentationManager];
    correctionPresentationManager = self->_correctionPresentationManager;
  }

  return correctionPresentationManager;
}

- (CACCustomCommandEditorPresentationManager)customCommandEditorPresentationManager
{
  customCommandEditorPresentationManager = self->_customCommandEditorPresentationManager;
  if (!customCommandEditorPresentationManager)
  {
    v4 = objc_opt_new();
    v5 = self->_customCommandEditorPresentationManager;
    self->_customCommandEditorPresentationManager = v4;

    [(CACSceneManager *)self registerPresentationManager:self->_customCommandEditorPresentationManager];
    customCommandEditorPresentationManager = self->_customCommandEditorPresentationManager;
  }

  return customCommandEditorPresentationManager;
}

- (CACDictationRecognizerModeOverlayManager)dictationRecognizerModeOverlayManager
{
  dictationRecognizerModeOverlayManager = self->_dictationRecognizerModeOverlayManager;
  if (!dictationRecognizerModeOverlayManager)
  {
    v4 = objc_opt_new();
    v5 = self->_dictationRecognizerModeOverlayManager;
    self->_dictationRecognizerModeOverlayManager = v4;

    [(CACDictationRecognizerModeOverlayManager *)self->_dictationRecognizerModeOverlayManager setDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_dictationRecognizerModeOverlayManager];
    dictationRecognizerModeOverlayManager = self->_dictationRecognizerModeOverlayManager;
  }

  return dictationRecognizerModeOverlayManager;
}

- (CACContextCluesPresentationManager)contextCluesPresentationManager
{
  contextCluesPresentationManager = self->_contextCluesPresentationManager;
  if (!contextCluesPresentationManager)
  {
    v4 = objc_opt_new();
    v5 = self->_contextCluesPresentationManager;
    self->_contextCluesPresentationManager = v4;

    [(CACSimpleContentViewManager *)self->_contextCluesPresentationManager setContentViewManagerDelegate:self];
    [(CACSceneManager *)self registerPresentationManager:self->_contextCluesPresentationManager];
    contextCluesPresentationManager = self->_contextCluesPresentationManager;
  }

  return contextCluesPresentationManager;
}

- (BOOL)updateGridLayoutFromPreferences
{
  v3 = +[CACPreferences sharedPreferences];
  labeledGridOverlayManager = [(CACSceneManager *)self labeledGridOverlayManager];
  currentNumberOfColumns = [labeledGridOverlayManager currentNumberOfColumns];

  labeledGridOverlayManager2 = [(CACSceneManager *)self labeledGridOverlayManager];
  currentNumberOfRows = [labeledGridOverlayManager2 currentNumberOfRows];

  if ([v3 gridOverlayCustomColumnsEnabled])
  {
    gridOverlayCustomColumnsCount = [v3 gridOverlayCustomColumnsCount];
  }

  else
  {
    gridOverlayCustomColumnsCount = 0;
  }

  if ([v3 gridOverlayCustomRowsEnabled])
  {
    gridOverlayCustomRowsCount = [v3 gridOverlayCustomRowsCount];
  }

  else
  {
    gridOverlayCustomRowsCount = 0;
  }

  labeledGridOverlayManager3 = [(CACSceneManager *)self labeledGridOverlayManager];
  [labeledGridOverlayManager3 setCurrentNumberOfColumns:gridOverlayCustomColumnsCount];

  labeledGridOverlayManager4 = [(CACSceneManager *)self labeledGridOverlayManager];
  [labeledGridOverlayManager4 setCurrentNumberOfRows:gridOverlayCustomRowsCount];

  v13 = currentNumberOfColumns != gridOverlayCustomColumnsCount || currentNumberOfRows != gridOverlayCustomRowsCount;
  return v13;
}

- (unint64_t)_numberOfLabelsForGridManager:(id)manager
{
  managerCopy = manager;
  currentNumberOfColumns = [managerCopy currentNumberOfColumns];
  currentNumberOfRows = [managerCopy currentNumberOfRows];
  if (!(currentNumberOfColumns | currentNumberOfRows))
  {
    currentNumberOfColumns = [(CACSceneManager *)self defaultNumberOfColumnsForLabeledGridOverlayManager:managerCopy];
  }

  [(CACSceneManager *)self topLevelPortraitUpRectForLabeledGridOverlayManager:managerCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  screen = [(CACSceneManager *)self screen];
  [CACLabeledGridOverlayManager gridResolutionForTopLevelWithPortraitUpRect:currentNumberOfColumns desiredColumns:currentNumberOfRows desiredRows:screen screen:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;

  return vcvtad_u64_f64(v19 * v17);
}

- (unint64_t)numberOfLabelsForGridManager
{
  labeledGridOverlayManager = [(CACSceneManager *)self labeledGridOverlayManager];
  v4 = [(CACSceneManager *)self _numberOfLabelsForGridManager:labeledGridOverlayManager];

  return v4;
}

- (unint64_t)updateGridLayoutWithNumberOfRows:(unint64_t)rows numberOfColumns:(unint64_t)columns shouldPreferRows:(BOOL)preferRows startingNumber:(unint64_t)number
{
  labeledGridOverlayManager = [(CACSceneManager *)self labeledGridOverlayManager];
  [(CACSceneManager *)self topLevelPortraitUpRectForLabeledGridOverlayManager:labeledGridOverlayManager];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  screen = [(CACSceneManager *)self screen];
  [CACLabeledGridOverlayManager gridResolutionForTopLevelWithPortraitUpRect:columns desiredColumns:rows desiredRows:screen screen:v13, v15, v17, v19];
  v22 = v21;
  v24 = v23;

  labeledGridOverlayManager2 = [(CACSceneManager *)self labeledGridOverlayManager];
  [labeledGridOverlayManager2 setCurrentNumberOfColumns:columns];

  labeledGridOverlayManager3 = [(CACSceneManager *)self labeledGridOverlayManager];
  [labeledGridOverlayManager3 setCurrentNumberOfRows:rows];

  labeledGridOverlayManager4 = [(CACSceneManager *)self labeledGridOverlayManager];
  [labeledGridOverlayManager4 setStartingNumber:number];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__CACSceneManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows_startingNumber___block_invoke;
  v29[3] = &unk_279CEC3B0;
  preferRowsCopy = preferRows;
  v29[4] = self;
  *&v29[5] = v22;
  *&v29[6] = v24;
  dispatch_async(MEMORY[0x277D85CD0], v29);
  return vcvtad_u64_f64(v22 * v24);
}

void __100__CACSceneManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows_startingNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v7 = [*(a1 + 32) labeledGridOverlayManager];
    if (*(a1 + 48) < [v7 currentNumberOfRows])
    {

LABEL_8:
      v7 = +[CACDisplayManager sharedManager];
      v6 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.GridResolutionMaximumReached"];
      [v7 displayMessageString:v6 type:1 announcementCompletion:&__block_literal_global_31];

      goto LABEL_9;
    }

    if (*(a1 + 56))
    {
LABEL_9:

      return;
    }
  }

  v3 = [*(a1 + 32) labeledGridOverlayManager];
  v4 = [v3 currentNumberOfColumns];
  v5 = *(a1 + 40);

  if (v2)
  {
  }

  if (v5 < v4)
  {
    goto LABEL_8;
  }
}

void __100__CACSceneManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows_startingNumber___block_invoke_2()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
}

- (void)contentViewManager:(id)manager presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__CACSceneManager_contentViewManager_presentViewController_animated_completion___block_invoke;
  v11[3] = &unk_279CEC3D8;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CACSceneManager *)self _installViewController:controller animated:animatedCopy completion:v11];
}

uint64_t __80__CACSceneManager_contentViewManager_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)contentViewManager:(id)manager dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CACSceneManager_contentViewManager_dismissViewController_animated_completion___block_invoke;
  v13[3] = &unk_279CEB3E0;
  v14 = controllerCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = controllerCopy;
  [(CACSceneManager *)self _uninstallViewController:v12 animated:animatedCopy completion:v13];
}

uint64_t __80__CACSceneManager_contentViewManager_dismissViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];

  if (([*(a1 + 32) isOverlay] & 1) == 0)
  {
    v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v3 forceElementFetchWithReason:@"Dismissed our own view controller"];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)didAssignNumbersInLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  labeledScreenElementsCollection = [v3 labeledScreenElementsCollection];
  [labeledScreenElementsCollection setAreElementsNumbered:1];

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v5 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];
}

- (BOOL)isHandlingDisambiguationForLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  disambiguationHandler = [v3 disambiguationHandler];
  v5 = disambiguationHandler != 0;

  return v5;
}

- (BOOL)shouldAssignNumbersRandomlyInLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  doesFocusedElementRequireSecureInput = [v3 doesFocusedElementRequireSecureInput];

  return doesFocusedElementRequireSecureInput;
}

- (id)localeForLabeledElementsOverlayManager:(id)manager
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:bestLocaleIdentifier];

  return v6;
}

- (BOOL)isOverlayFadingEnabledForLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  overlayFadingEnabled = [v3 overlayFadingEnabled];

  return overlayFadingEnabled;
}

- (double)overlayFadeDelayForLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v3 alwaysShowOverlayType];
  v5 = [alwaysShowOverlayType isEqualToString:@"NumberedElements"];

  return v5;
}

- (void)numberingDidUpdate
{
  labeledElementsOverlayManager = [(CACSceneManager *)self labeledElementsOverlayManager];
  [labeledElementsOverlayManager numberingDidUpdate];

  linesEditingModeOverlayManager = [(CACSceneManager *)self linesEditingModeOverlayManager];
  [linesEditingModeOverlayManager numberingDidUpdate];
}

- (BOOL)isOverlayFadingEnabledForElementNamesOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  overlayFadingEnabled = [v3 overlayFadingEnabled];

  return overlayFadingEnabled;
}

- (double)overlayFadeDelayForElementNamesOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForElementNamesOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingElementNamesOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v3 alwaysShowOverlayType];
  v5 = [alwaysShowOverlayType isEqualToString:@"NamedElements"];

  return v5;
}

- (BOOL)isOverlayFadingEnabledForEditingModeOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  overlayFadingEnabled = [v3 overlayFadingEnabled];

  return overlayFadingEnabled;
}

- (double)overlayFadeDelayForEditingModeOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForEditingModeOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (id)labeledGridOverlayManager:(id)manager elementWithNumber:(unint64_t)number rectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v16[1] = *MEMORY[0x277D85DE8];
  v11 = [CACLocaleUtilities displayStringForOverlayNumber:number];
  v12 = [CACLabeledElement alloc];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  height = [(CACLabeledElement *)v12 initWithElement:0 recognitionStrings:v13 rectangle:x, y, width, height];

  [(CACLabeledElement *)height setNumber:number];
  [(CACLabeledElement *)height setDisplayID:[(CACSceneManager *)self displayID]];

  return height;
}

- (CGRect)topLevelPortraitUpRectForLabeledGridOverlayManager:(id)manager
{
  screen = [(CACSceneManager *)self screen];
  [screen bounds];
  v8 = CACPortraitUpRectFromViewRect(0, v4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (int64_t)maximumLevelForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  gridOverlayMaxLevel = [v3 gridOverlayMaxLevel];

  return gridOverlayMaxLevel;
}

- (BOOL)isOverlayFadingEnabledForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  overlayFadingEnabled = [v3 overlayFadingEnabled];

  return overlayFadingEnabled;
}

- (double)overlayFadeDelayForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v3 alwaysShowOverlayType];
  v5 = [alwaysShowOverlayType isEqualToString:@"NumberedGrid"];

  return v5;
}

- (void)didUpdateElementsForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];
}

- (BOOL)showsNumbersInTopLeftForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  gridOverlayShowsNumbersInTopLeft = [v3 gridOverlayShowsNumbersInTopLeft];

  return gridOverlayShowsNumbersInTopLeft;
}

- (BOOL)isPressOnFirstLevelEnabledForLabeledGridOverlayManager:(id)manager
{
  v3 = +[CACPreferences sharedPreferences];
  gridOverlayPressOnFirstLevelEnabled = [v3 gridOverlayPressOnFirstLevelEnabled];

  return gridOverlayPressOnFirstLevelEnabled;
}

- (unsigned)randomElementNumberingSeedForLabeledElementsOverlayManager:(id)manager
{
  v3 = +[CACDisplayManager sharedManager];
  randomElementNumberingSeed = [v3 randomElementNumberingSeed];

  return randomElementNumberingSeed;
}

- (int)modeForDictationRecognizerModeOverlayManager:(id)manager
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v3 dictationRecognizerMode];

  return dictationRecognizerMode;
}

- (CGRect)imageRectForDictationRecognizerModeOverlayManager:(id)manager
{
  managerCopy = manager;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  viewController = [managerCopy viewController];

  view = [viewController view];
  [v4 bestDictationRecognizerModeImageRectForView:view];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)systemAperatureRect
{
  x = self->_systemAperatureRect.origin.x;
  y = self->_systemAperatureRect.origin.y;
  width = self->_systemAperatureRect.size.width;
  height = self->_systemAperatureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)minimumSystemAperatureRect
{
  x = self->_minimumSystemAperatureRect.origin.x;
  y = self->_minimumSystemAperatureRect.origin.y;
  width = self->_minimumSystemAperatureRect.size.width;
  height = self->_minimumSystemAperatureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end