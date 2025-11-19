@interface CACSceneManager
- (BOOL)anyPresentationPreventsDictation;
- (BOOL)isAlwaysShowingElementNamesOverlayManager:(id)a3;
- (BOOL)isAlwaysShowingLabeledElementsOverlayManager:(id)a3;
- (BOOL)isAlwaysShowingLabeledGridOverlayManager:(id)a3;
- (BOOL)isCarPlayScene;
- (BOOL)isDisplayingAnyContentView;
- (BOOL)isDisplayingAnyInteractiveContentInProcess;
- (BOOL)isDisplayingAnyOutOfProcessPresentation;
- (BOOL)isDisplayingAnyOverlay;
- (BOOL)isDisplayingAnyPresentation;
- (BOOL)isDisplayingCorrections;
- (BOOL)isHandlingDisambiguationForLabeledElementsOverlayManager:(id)a3;
- (BOOL)isMainDisplayScene;
- (BOOL)isOverlayFadingEnabledForEditingModeOverlayManager:(id)a3;
- (BOOL)isOverlayFadingEnabledForElementNamesOverlayManager:(id)a3;
- (BOOL)isOverlayFadingEnabledForLabeledElementsOverlayManager:(id)a3;
- (BOOL)isOverlayFadingEnabledForLabeledGridOverlayManager:(id)a3;
- (BOOL)isPressOnFirstLevelEnabledForLabeledGridOverlayManager:(id)a3;
- (BOOL)shouldAssignNumbersRandomlyInLabeledElementsOverlayManager:(id)a3;
- (BOOL)showsNumbersInTopLeftForLabeledGridOverlayManager:(id)a3;
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
- (CGRect)imageRectForDictationRecognizerModeOverlayManager:(id)a3;
- (CGRect)minimumSystemAperatureRect;
- (CGRect)systemAperatureRect;
- (CGRect)topLevelPortraitUpRectForLabeledGridOverlayManager:(id)a3;
- (double)overlayFadeDelayForEditingModeOverlayManager:(id)a3;
- (double)overlayFadeDelayForElementNamesOverlayManager:(id)a3;
- (double)overlayFadeDelayForLabeledElementsOverlayManager:(id)a3;
- (double)overlayFadeDelayForLabeledGridOverlayManager:(id)a3;
- (float)overlayFadeOpacityForEditingModeOverlayManager:(id)a3;
- (float)overlayFadeOpacityForElementNamesOverlayManager:(id)a3;
- (float)overlayFadeOpacityForLabeledElementsOverlayManager:(id)a3;
- (float)overlayFadeOpacityForLabeledGridOverlayManager:(id)a3;
- (id)_containerViewControllerForViewController:(id)a3;
- (id)labeledGridOverlayManager:(id)a3 elementWithNumber:(unint64_t)a4 rectangle:(CGRect)a5;
- (id)localeForLabeledElementsOverlayManager:(id)a3;
- (id)screen;
- (int)modeForDictationRecognizerModeOverlayManager:(id)a3;
- (int64_t)maximumLevelForLabeledGridOverlayManager:(id)a3;
- (unint64_t)_numberOfLabelsForGridManager:(id)a3;
- (unint64_t)numberOfLabelsForGridManager;
- (unint64_t)updateGridLayoutWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 shouldPreferRows:(BOOL)a5 startingNumber:(unint64_t)a6;
- (unsigned)displayID;
- (unsigned)randomElementNumberingSeedForLabeledElementsOverlayManager:(id)a3;
- (void)_installViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_uninstallViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)contentViewManager:(id)a3 dismissViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)contentViewManager:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)didAssignNumbersInLabeledElementsOverlayManager:(id)a3;
- (void)didUpdateElementsForLabeledGridOverlayManager:(id)a3;
- (void)hideAnyOverlayAnimated:(BOOL)a3 includeInteractiveOverlays:(BOOL)a4;
- (void)hideAnyPresentationAnimated:(BOOL)a3 includingOutOfProcessPresentations:(BOOL)a4;
- (void)hideDictationRecognizerModeOverlayNow;
- (void)numberingDidUpdate;
- (void)registerPresentationManager:(id)a3;
- (void)showBannerViewWithText:(id)a3 type:(int64_t)a4;
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
  v2 = [(CACSceneManager *)self scene];
  v3 = [v2 screen];
  v4 = [v3 _integerDisplayID];

  return v4;
}

- (BOOL)isMainDisplayScene
{
  v2 = [(CACSceneManager *)self displayID];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  LOBYTE(v2) = v2 == [v3 _integerDisplayID];

  return v2;
}

- (BOOL)isCarPlayScene
{
  v2 = [(CACSceneManager *)self scene];
  v3 = [v2 session];
  v4 = [v3 role];
  v5 = [v4 isEqualToString:*MEMORY[0x277D776C8]];

  return v5;
}

- (id)screen
{
  v3 = [(CACSceneManager *)self scene];

  if (v3)
  {
    v4 = [(CACSceneManager *)self scene];
    v5 = [v4 screen];
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
  }

  return v5;
}

- (void)registerPresentationManager:(id)a3
{
  v5 = a3;
  v4 = self->_registeredPresentationManagers;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_registeredPresentationManagers addObject:v5];
  objc_sync_exit(v4);
}

- (void)showBannerViewWithText:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [(CACSceneManager *)self bannerViewPresenter];

  if (!v7)
  {
    v8 = [CACBannerViewPresenter alloc];
    v9 = [(CACContainerViewController *)self->_overlayContainerViewController viewAboveContainedViews];
    v10 = [(CACBannerViewPresenter *)v8 initWithContainingView:v9];
    [(CACSceneManager *)self setBannerViewPresenter:v10];
  }

  v11 = [(CACSceneManager *)self bannerViewPresenter];
  [v11 presentBannerViewWithText:v6 type:a4 avoidingSystemAperature:{self->_systemAperatureRect.origin.x, self->_systemAperatureRect.origin.y, self->_systemAperatureRect.size.width, self->_systemAperatureRect.size.height}];
}

- (id)_containerViewControllerForViewController:(id)a3
{
  v4 = [a3 isOverlay];
  v5 = 32;
  if (v4)
  {
    v5 = 40;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (void)_installViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CACSceneManager *)self _containerViewControllerForViewController:v9];
  [v10 installViewController:v9 animated:v5 completion:v8];
}

- (void)_uninstallViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CACSceneManager *)self _containerViewControllerForViewController:v9];
  [v10 uninstallViewController:v9 animated:v5 completion:v8];
}

- (void)hideAnyOverlayAnimated:(BOOL)a3 includeInteractiveOverlays:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v7 = self->_registeredPresentationManagers;
  objc_sync_enter(v7);
  v8 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v7);

  v9 = CACLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"excluding";
    if (v4)
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
        if ([v15 isShowing] && objc_msgSend(v15, "isOverlay") && (v4 || (objc_msgSend(v15, "isPhysicallyInteractiveOverlay") & 1) == 0))
        {
          if (v5)
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

- (void)hideAnyPresentationAnimated:(BOOL)a3 includingOutOfProcessPresentations:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v7 = self->_registeredPresentationManagers;
  objc_sync_enter(v7);
  v8 = [(NSMutableArray *)self->_registeredPresentationManagers copy];
  objc_sync_exit(v7);

  v9 = CACLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"excluding";
    if (v4)
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
        if (([v15 isOverlay] & 1) == 0 && (v4 || (objc_msgSend(v15, "isOutOfProcess") & 1) == 0))
        {
          if (v5)
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
            v10 = [(CACSceneManager *)self correctionPresentationManager];
            v11 = v9 == v10;

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
  v4 = [(CACSceneManager *)self labeledGridOverlayManager];
  v5 = [v4 currentNumberOfColumns];

  v6 = [(CACSceneManager *)self labeledGridOverlayManager];
  v7 = [v6 currentNumberOfRows];

  if ([v3 gridOverlayCustomColumnsEnabled])
  {
    v8 = [v3 gridOverlayCustomColumnsCount];
  }

  else
  {
    v8 = 0;
  }

  if ([v3 gridOverlayCustomRowsEnabled])
  {
    v9 = [v3 gridOverlayCustomRowsCount];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CACSceneManager *)self labeledGridOverlayManager];
  [v10 setCurrentNumberOfColumns:v8];

  v11 = [(CACSceneManager *)self labeledGridOverlayManager];
  [v11 setCurrentNumberOfRows:v9];

  v13 = v5 != v8 || v7 != v9;
  return v13;
}

- (unint64_t)_numberOfLabelsForGridManager:(id)a3
{
  v4 = a3;
  v5 = [v4 currentNumberOfColumns];
  v6 = [v4 currentNumberOfRows];
  if (!(v5 | v6))
  {
    v5 = [(CACSceneManager *)self defaultNumberOfColumnsForLabeledGridOverlayManager:v4];
  }

  [(CACSceneManager *)self topLevelPortraitUpRectForLabeledGridOverlayManager:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CACSceneManager *)self screen];
  [CACLabeledGridOverlayManager gridResolutionForTopLevelWithPortraitUpRect:v5 desiredColumns:v6 desiredRows:v15 screen:v8, v10, v12, v14];
  v17 = v16;
  v19 = v18;

  return vcvtad_u64_f64(v19 * v17);
}

- (unint64_t)numberOfLabelsForGridManager
{
  v3 = [(CACSceneManager *)self labeledGridOverlayManager];
  v4 = [(CACSceneManager *)self _numberOfLabelsForGridManager:v3];

  return v4;
}

- (unint64_t)updateGridLayoutWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 shouldPreferRows:(BOOL)a5 startingNumber:(unint64_t)a6
{
  v11 = [(CACSceneManager *)self labeledGridOverlayManager];
  [(CACSceneManager *)self topLevelPortraitUpRectForLabeledGridOverlayManager:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CACSceneManager *)self screen];
  [CACLabeledGridOverlayManager gridResolutionForTopLevelWithPortraitUpRect:a4 desiredColumns:a3 desiredRows:v20 screen:v13, v15, v17, v19];
  v22 = v21;
  v24 = v23;

  v25 = [(CACSceneManager *)self labeledGridOverlayManager];
  [v25 setCurrentNumberOfColumns:a4];

  v26 = [(CACSceneManager *)self labeledGridOverlayManager];
  [v26 setCurrentNumberOfRows:a3];

  v27 = [(CACSceneManager *)self labeledGridOverlayManager];
  [v27 setStartingNumber:a6];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__CACSceneManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows_startingNumber___block_invoke;
  v29[3] = &unk_279CEC3B0;
  v30 = a5;
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

- (void)contentViewManager:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__CACSceneManager_contentViewManager_presentViewController_animated_completion___block_invoke;
  v11[3] = &unk_279CEC3D8;
  v12 = v9;
  v10 = v9;
  [(CACSceneManager *)self _installViewController:a4 animated:v6 completion:v11];
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

- (void)contentViewManager:(id)a3 dismissViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CACSceneManager_contentViewManager_dismissViewController_animated_completion___block_invoke;
  v13[3] = &unk_279CEB3E0;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(CACSceneManager *)self _uninstallViewController:v12 animated:v7 completion:v13];
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

- (void)didAssignNumbersInLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 labeledScreenElementsCollection];
  [v4 setAreElementsNumbered:1];

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v5 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];
}

- (BOOL)isHandlingDisambiguationForLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 disambiguationHandler];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)shouldAssignNumbersRandomlyInLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 doesFocusedElementRequireSecureInput];

  return v4;
}

- (id)localeForLabeledElementsOverlayManager:(id)a3
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  return v6;
}

- (BOOL)isOverlayFadingEnabledForLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 overlayFadingEnabled];

  return v4;
}

- (double)overlayFadeDelayForLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 alwaysShowOverlayType];
  v5 = [v4 isEqualToString:@"NumberedElements"];

  return v5;
}

- (void)numberingDidUpdate
{
  v3 = [(CACSceneManager *)self labeledElementsOverlayManager];
  [v3 numberingDidUpdate];

  v4 = [(CACSceneManager *)self linesEditingModeOverlayManager];
  [v4 numberingDidUpdate];
}

- (BOOL)isOverlayFadingEnabledForElementNamesOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 overlayFadingEnabled];

  return v4;
}

- (double)overlayFadeDelayForElementNamesOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForElementNamesOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingElementNamesOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 alwaysShowOverlayType];
  v5 = [v4 isEqualToString:@"NamedElements"];

  return v5;
}

- (BOOL)isOverlayFadingEnabledForEditingModeOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 overlayFadingEnabled];

  return v4;
}

- (double)overlayFadeDelayForEditingModeOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForEditingModeOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (id)labeledGridOverlayManager:(id)a3 elementWithNumber:(unint64_t)a4 rectangle:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16[1] = *MEMORY[0x277D85DE8];
  v11 = [CACLocaleUtilities displayStringForOverlayNumber:a4];
  v12 = [CACLabeledElement alloc];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [(CACLabeledElement *)v12 initWithElement:0 recognitionStrings:v13 rectangle:x, y, width, height];

  [(CACLabeledElement *)v14 setNumber:a4];
  [(CACLabeledElement *)v14 setDisplayID:[(CACSceneManager *)self displayID]];

  return v14;
}

- (CGRect)topLevelPortraitUpRectForLabeledGridOverlayManager:(id)a3
{
  v3 = [(CACSceneManager *)self screen];
  [v3 bounds];
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

- (int64_t)maximumLevelForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 gridOverlayMaxLevel];

  return v4;
}

- (BOOL)isOverlayFadingEnabledForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 overlayFadingEnabled];

  return v4;
}

- (double)overlayFadeDelayForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeDelay];
  v5 = v4;

  return v5;
}

- (float)overlayFadeOpacityForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 overlayFadeOpacity];
  v5 = v4;

  return v5;
}

- (BOOL)isAlwaysShowingLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 alwaysShowOverlayType];
  v5 = [v4 isEqualToString:@"NumberedGrid"];

  return v5;
}

- (void)didUpdateElementsForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 synchronizeRecognizersWithReason:kSRUISyncReasonOverlayStateChanged];
}

- (BOOL)showsNumbersInTopLeftForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 gridOverlayShowsNumbersInTopLeft];

  return v4;
}

- (BOOL)isPressOnFirstLevelEnabledForLabeledGridOverlayManager:(id)a3
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 gridOverlayPressOnFirstLevelEnabled];

  return v4;
}

- (unsigned)randomElementNumberingSeedForLabeledElementsOverlayManager:(id)a3
{
  v3 = +[CACDisplayManager sharedManager];
  v4 = [v3 randomElementNumberingSeed];

  return v4;
}

- (int)modeForDictationRecognizerModeOverlayManager:(id)a3
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 dictationRecognizerMode];

  return v4;
}

- (CGRect)imageRectForDictationRecognizerModeOverlayManager:(id)a3
{
  v3 = a3;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v3 viewController];

  v6 = [v5 view];
  [v4 bestDictationRecognizerModeImageRectForView:v6];
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