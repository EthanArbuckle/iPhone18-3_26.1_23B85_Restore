@interface WBSSystemNoteTakingController
- (BOOL)_isSystemNoteTakingEnabled;
- (WBSSystemNoteTakingController)init;
- (void)_setUpNotesVisibilityObserver;
@end

@implementation WBSSystemNoteTakingController

- (WBSSystemNoteTakingController)init
{
  v11.receiver = self;
  v11.super_class = WBSSystemNoteTakingController;
  v2 = [(WBSSystemNoteTakingController *)&v11 init];
  p_isa = &v2->super.isa;
  if (v2 && [(WBSSystemNoteTakingController *)v2 _isSystemNoteTakingEnabled])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v4 = getSYLinkContextClientClass_softClass;
    v16 = getSYLinkContextClientClass_softClass;
    if (!getSYLinkContextClientClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getSYLinkContextClientClass_block_invoke;
      v12[3] = &unk_1E8283D08;
      v12[4] = &v13;
      __getSYLinkContextClientClass_block_invoke(v12);
      v4 = v14[3];
    }

    v5 = v4;
    _Block_object_dispose(&v13, 8);
    v6 = objc_alloc_init(v4);
    v7 = p_isa[1];
    p_isa[1] = v6;

    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        [p_isa[1] setDelegate:p_isa];
      }

      v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v9 = p_isa[2];
      p_isa[2] = v8;

      [p_isa[2] setTotalCostLimit:1000];
      [p_isa _setUpNotesVisibilityObserver];
      v6 = p_isa;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSystemNoteTakingEnabled
{
  v3 = SynapseLibraryCore();
  if (v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getSYFeatureEligibilityClass_softClass;
    v11 = getSYFeatureEligibilityClass_softClass;
    if (!getSYFeatureEligibilityClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getSYFeatureEligibilityClass_block_invoke;
      v7[3] = &unk_1E8283D08;
      v7[4] = &v8;
      __getSYFeatureEligibilityClass_block_invoke(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    LODWORD(v3) = [v4 supportsQuickNote];
    if (v3)
    {
      LOBYTE(v3) = [(WBSSystemNoteTakingController *)self _isSystemNoteTakingEnabledForSafari];
    }
  }

  return v3;
}

- (void)_setUpNotesVisibilityObserver
{
  if (!self->_notesActivationObserver)
  {
    objc_initWeak(&location, self);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getSYNotesActivationObserverClass_softClass;
    v15 = getSYNotesActivationObserverClass_softClass;
    if (!getSYNotesActivationObserverClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getSYNotesActivationObserverClass_block_invoke;
      v11[3] = &unk_1E8283D08;
      v11[4] = &v12;
      __getSYNotesActivationObserverClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = [v3 alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__WBSSystemNoteTakingController__setUpNotesVisibilityObserver__block_invoke;
    v8[3] = &unk_1E8285C58;
    objc_copyWeak(&v9, &location);
    v6 = [v5 initWithHandler:v8];
    notesActivationObserver = self->_notesActivationObserver;
    self->_notesActivationObserver = v6;

    self->_isNotesPIPVisible = [(SYNotesActivationObserver *)self->_notesActivationObserver isVisible];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __62__WBSSystemNoteTakingController__setUpNotesVisibilityObserver__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__WBSSystemNoteTakingController__setUpNotesVisibilityObserver__block_invoke_2;
  v3[3] = &unk_1E8287B90;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __125__WBSSystemNoteTakingController_saveHighlightsData_selectedText_selectedImage_newGroup_originatedInApp_webView_userActivity___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to fetch page metadata. Continuing with limited metadata. (%{public}@)", v7, v8, v9, v10, 2u);
}

void __125__WBSSystemNoteTakingController_saveHighlightsData_selectedText_selectedImage_newGroup_originatedInApp_webView_userActivity___block_invoke_13_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to create link context: %@", v7, v8, v9, v10, 2u);
}

void __91__WBSSystemNoteTakingController_fetchHighlightsForUserActivity_privateBrowsing_completion___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to fetch link context: %{public}@", v7, v8, v9, v10, 2u);
}

@end