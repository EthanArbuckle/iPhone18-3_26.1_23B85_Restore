@interface WBSScribbleController
- (BOOL)_hasAnyHiddenElements;
- (BOOL)_shouldSkipValidation;
- (BOOL)canHideContentInWebView;
- (CGPoint)lastRequestLocation;
- (WBSScribbleController)initWithWebView:(id)view;
- (WBSScribbleControllerDelegate)delegate;
- (id)_contentBlockingRulesAsString:(id)string;
- (id)_currentUserContentControllers;
- (id)_elementsToValidate;
- (id)_tapToRadarDescriptionWithWebView:(id)view contentBlockingRules:(id)rules;
- (id)cachedGlobalContentBlockerActions;
- (void)_applyQuirksToRequest:(id)request;
- (void)_applyWebCompatibilityFixups;
- (void)_disableHiddenActiveElementIfNeeded;
- (void)_hideElementUsingPaintAvoidance:(id)avoidance completion:(id)completion;
- (void)_makePageScrollableAndInteractableIfNeeded;
- (void)_rescheduleValidation;
- (void)_resetPaintAvoidanceForElements:(id)elements completion:(id)completion;
- (void)_stopValidationTimer;
- (void)_updateQuirksIfNeeded;
- (void)_updateUserStyleSheet;
- (void)_validateHiddenElements:(id)elements;
- (void)clearAllEdits;
- (void)deselectSelectedElement;
- (void)endScribblingAndSaveChanges:(BOOL)changes;
- (void)getElementAtPoint:(CGPoint)point completion:(id)completion;
- (void)getTapToRadarURLForScribbleIssueForWebView:(id)view category:(int64_t)category completionHandler:(id)handler;
- (void)hideSelectedElement;
- (void)invalidate;
- (void)loadContentBlockerForHost:(id)host;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadWithoutScribbleElements;
- (void)setDelegate:(id)delegate;
- (void)startScribblingWithCompletionHandler:(id)handler;
- (void)startValidatingHiddenElements;
- (void)undoLastAction;
- (void)updateCountForElementsHiddenByPaintingAvoidance;
- (void)updateSelectionToPoint:(CGPoint)point;
- (void)userDefinedContentBlockerManagerDidUpdateAllRules:(id)rules;
@end

@implementation WBSScribbleController

- (WBSScribbleController)initWithWebView:(id)view
{
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = WBSScribbleController;
  v5 = [(WBSScribbleController *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = objc_opt_new();
    targetedElementsHiddenFromCurrentSession = v6->_targetedElementsHiddenFromCurrentSession;
    v6->_targetedElementsHiddenFromCurrentSession = v7;

    v9 = objc_opt_new();
    targetedElementsHiddenByValidation = v6->_targetedElementsHiddenByValidation;
    v6->_targetedElementsHiddenByValidation = v9;

    v11 = objc_opt_new();
    targetedElementsToHideUsingDisplayNone = v6->_targetedElementsToHideUsingDisplayNone;
    v6->_targetedElementsToHideUsingDisplayNone = v11;

    v13 = objc_opt_new();
    scribbleElementsFromCurrentSession = v6->_scribbleElementsFromCurrentSession;
    v6->_scribbleElementsFromCurrentSession = v13;

    v15 = objc_opt_new();
    scribbleElementsForGlobalActionsFromCurrentSession = v6->_scribbleElementsForGlobalActionsFromCurrentSession;
    v6->_scribbleElementsForGlobalActionsFromCurrentSession = v15;

    v17 = objc_opt_new();
    activeGlobalActionsByDatabaseID = v6->_activeGlobalActionsByDatabaseID;
    v6->_activeGlobalActionsByDatabaseID = v17;

    v19 = v6;
  }

  return v6;
}

- (void)invalidate
{
  objc_storeWeak(&self->_webView, 0);
  objc_storeWeak(&self->_delegate, 0);
  [(WBSScribbleValidator *)self->_validator invalidate];
  validator = self->_validator;
  self->_validator = 0;

  [(WBSScribbleController *)self _stopValidationTimer];
}

- (void)getElementAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  self->_lastRequestLocation.x = x;
  self->_lastRequestLocation.y = y;
  v8 = [objc_alloc(MEMORY[0x1E6985400]) initWithPoint:{x, y}];
  [(WBSScribbleController *)self _applyQuirksToRequest:v8];
  self->_isGettingElementAtPoint = 1;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__WBSScribbleController_getElementAtPoint_completion___block_invoke;
  v11[3] = &unk_1E8285590;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [WeakRetained _requestTargetedElementInfo:v8 completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __54__WBSScribbleController_getElementAtPoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 0;
    if ([v8 count])
    {
      v5 = [WBSScribbleElement alloc];
      v6 = objc_loadWeakRetained(v4 + 1);
      v7 = [(WBSScribbleElement *)v5 initWithTargetedElements:v8 webView:v6];
    }

    else
    {
      v7 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_updateQuirksIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v11 = [WeakRetained URL];

  if (v11)
  {
    safari_highLevelDomain = [v11 safari_highLevelDomain];
    highLevelDomain = [(WBSScribbleQuirks *)self->_quirksForCurrentSession highLevelDomain];
    v6 = [highLevelDomain isEqualToString:safari_highLevelDomain];

    if ((v6 & 1) == 0)
    {
      delegate = [(WBSScribbleController *)self delegate];
      scribbleQuirksManager = [delegate scribbleQuirksManager];
      v9 = [scribbleQuirksManager quirksForHighLevelDomain:safari_highLevelDomain];
      quirksForCurrentSession = self->_quirksForCurrentSession;
      self->_quirksForCurrentSession = v9;
    }
  }

  else
  {
    safari_highLevelDomain = self->_quirksForCurrentSession;
    self->_quirksForCurrentSession = 0;
  }
}

- (void)_applyQuirksToRequest:(id)request
{
  requestCopy = request;
  quirksForCurrentSession = self->_quirksForCurrentSession;
  if (quirksForCurrentSession)
  {
    shouldIgnorePointerEventsNone = [(WBSScribbleQuirks *)quirksForCurrentSession shouldIgnorePointerEventsNone];

    if (shouldIgnorePointerEventsNone)
    {
      shouldIgnorePointerEventsNone2 = [(WBSScribbleQuirks *)self->_quirksForCurrentSession shouldIgnorePointerEventsNone];
      [requestCopy setShouldIgnorePointerEventsNone:{objc_msgSend(shouldIgnorePointerEventsNone2, "BOOLValue")}];
    }
  }
}

- (void)startValidatingHiddenElements
{
  if ([(WBSScribbleController *)self canHideContentInWebView]&& (self->_validatingDelay > 1.0 || !self->_validatingTimer))
  {
    self->_validatingDelay = 1.0;

    [(WBSScribbleController *)self _rescheduleValidation];
  }
}

- (void)_stopValidationTimer
{
  validatingTimer = self->_validatingTimer;
  if (validatingTimer)
  {
    [(NSTimer *)validatingTimer invalidate];
    v4 = self->_validatingTimer;
    self->_validatingTimer = 0;
  }

  self->_validatingDelay = 1.0;
}

- (BOOL)_hasAnyHiddenElements
{
  canHideContentInWebView = [(WBSScribbleController *)self canHideContentInWebView];
  if (canHideContentInWebView)
  {
    LOBYTE(canHideContentInWebView) = self->_numberOfElementsHiddenByPaintingAvoidance || [(NSMutableArray *)self->_targetedElementsHiddenFromCurrentSession count]|| [(NSMutableArray *)self->_targetedElementsHiddenByValidation count]!= 0;
  }

  return canHideContentInWebView;
}

- (id)_elementsToValidate
{
  actions = [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost actions];
  v4 = scribbleElementsFromActions(actions);

  cachedGlobalContentBlockerActions = [(WBSScribbleController *)self cachedGlobalContentBlockerActions];
  v6 = scribbleElementsFromActions(cachedGlobalContentBlockerActions);
  v7 = [v4 arrayByAddingObjectsFromArray:v6];

  if (self->_scribbleElementsFromCurrentSession)
  {
    scribbleElementsFromCurrentSession = self->_scribbleElementsFromCurrentSession;
  }

  else
  {
    scribbleElementsFromCurrentSession = MEMORY[0x1E695E0F0];
  }

  v9 = [v7 arrayByAddingObjectsFromArray:scribbleElementsFromCurrentSession];

  return v9;
}

- (BOOL)_shouldSkipValidation
{
  if (![(WBSScribbleController *)self canHideContentInWebView])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (([WeakRetained _isSuspended] & 1) == 0 && objc_msgSend(WeakRetained, "_webProcessIsResponsive") && (objc_msgSend(WeakRetained, "window"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if ([(WBSScribbleController *)self _hasAnyHiddenElements])
    {
      v5 = 0;
    }

    else
    {
      cachedGlobalContentBlockerActions = [(WBSScribbleController *)self cachedGlobalContentBlockerActions];
      v5 = [cachedGlobalContentBlockerActions count] == 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)cachedGlobalContentBlockerActions
{
  delegate = [(WBSScribbleController *)self delegate];
  userDefinedContentBlockerManager = [delegate userDefinedContentBlockerManager];
  cachedGlobalContentBlockerActions = [userDefinedContentBlockerManager cachedGlobalContentBlockerActions];

  return cachedGlobalContentBlockerActions;
}

- (void)_rescheduleValidation
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__WBSScribbleController__rescheduleValidation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 3);
    WeakRetained[3] = 0.0;

    v5[4] = v5[4] + v5[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__WBSScribbleController__rescheduleValidation__block_invoke_2;
    v7[3] = &unk_1E8283A38;
    objc_copyWeak(&v8, (a1 + 32));
    [v5 _validateHiddenElements:v7];
    objc_destroyWeak(&v8);
  }
}

void __46__WBSScribbleController__rescheduleValidation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[4] <= 8.0)
  {
    v2 = WeakRetained;
    [WeakRetained _rescheduleValidation];
    WeakRetained = v2;
  }
}

- (void)_validateHiddenElements:(id)elements
{
  elementsCopy = elements;
  v5 = elementsCopy;
  if (self->_validator)
  {
    (*(elementsCopy + 2))(elementsCopy);
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [WBSScribbleValidator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _elementsToValidate = [(WBSScribbleController *)self _elementsToValidate];
    _targetsHiddenByUserOrValidation = [(WBSScribbleController *)self _targetsHiddenByUserOrValidation];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WBSScribbleController__validateHiddenElements___block_invoke;
    v12[3] = &unk_1E8285AB0;
    objc_copyWeak(&v14, &location);
    v13 = v5;
    v10 = [(WBSScribbleValidator *)v6 initWithWebView:WeakRetained elements:_elementsToValidate excludedTargets:_targetsHiddenByUserOrValidation completion:v12];
    validator = self->_validator;
    self->_validator = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __49__WBSScribbleController__validateHiddenElements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && v3)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    if (v6)
    {
      v7 = dispatch_group_create();
      v8 = [v6 URL];
      v9 = [v8 host];

      v10 = [v3 targetsToReveal];
      v11 = [v3 targetsToHideUsingDisplayNone];
      v12 = [v3 targetsToHideUsingPaintAvoidance];
      v13 = v11;
      v25 = [v11 arrayByAddingObjectsFromArray:v12];

      v24 = v10;
      if ([v10 count])
      {
        dispatch_group_enter(v7);
        v14 = [v3 targetsToReveal];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __49__WBSScribbleController__validateHiddenElements___block_invoke_2;
        v46[3] = &unk_1E8283970;
        v47 = v7;
        [v5 _resetPaintAvoidanceForElements:v14 completion:v46];
      }

      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v45[3] = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__10;
      v43 = __Block_byref_object_dispose__10;
      v44 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__10;
      v37 = __Block_byref_object_dispose__10;
      v38 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__WBSScribbleController__validateHiddenElements___block_invoke_46;
      v28[3] = &unk_1E8285A88;
      v28[4] = v5;
      v15 = v9;
      v29 = v15;
      v30 = v45;
      v31 = &v33;
      v32 = &v39;
      [v3 forEachSimilarTargetedElement:v28];
      [v5 delegate];
      v17 = v16 = v25;
      v18 = v13;
      v19 = v7;
      if (v17)
      {
        v20 = v34[5];
        if (v20)
        {
          [v20 bounds];
          [v17 scribbleController:v5 runHidingAnimationWithElementRect:?];
          if (([v17 isPrivateBrowsing] & 1) == 0)
          {
            v21 = [v34[5] safari_uniqueSelectorsIncludingShadowHosts];
            [v40[5] addHostWhereActionHasApplied:v15 selectors:v21];
            v22 = [v17 userDefinedContentBlockerManager];
            [v22 updateContentBlockerActionExtraAttributes:v40[5]];

            v16 = v25;
          }
        }
      }

      if ([v16 count])
      {
        dispatch_group_enter(v19);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __49__WBSScribbleController__validateHiddenElements___block_invoke_49;
        v26[3] = &unk_1E8283080;
        v27 = v19;
        [v5 _hideElementUsingPaintAvoidance:v16 completion:v26];
        [v5[12] addObjectsFromArray:v16];
      }

      if ([v18 count])
      {
        [v5[13] addObjectsFromArray:v18];
        [v5 _updateUserStyleSheet];
      }

      v23 = v5[16];
      v5[16] = 0;

      dispatch_group_notify(v19, MEMORY[0x1E69E96A0], *(a1 + 32));
      _Block_object_dispose(&v33, 8);

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(v45, 8);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __49__WBSScribbleController__validateHiddenElements___block_invoke_46(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 isBackedByGlobalAction])
  {
    v8 = [v7 backingAction];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 databaseID];
      if (v10 != *MEMORY[0x1E69C96F0])
      {
        v11 = *(a1[4] + 112);
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "databaseID")}];
        [v11 setObject:v9 forKeyedSubscript:v12];
      }

      if (([v6 isInVisibilityAdjustmentSubtree] & 1) == 0)
      {
        v13 = [v9 hostsWhereActionHasApplied];
        v14 = [v13 containsObject:a1[5]];

        if ((v14 & 1) == 0)
        {
          [v6 bounds];
          v17 = *(a1[6] + 8);
          if (v15 * v16 > *(v17 + 24))
          {
            *(v17 + 24) = v15 * v16;
            objc_storeStrong((*(a1[7] + 8) + 40), a2);
            objc_storeStrong((*(a1[8] + 8) + 40), v9);
          }
        }
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXScribble();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __49__WBSScribbleController__validateHiddenElements___block_invoke_46_cold_1();
      }
    }
  }
}

- (void)_resetPaintAvoidanceForElements:(id)elements completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = elementsCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke(v10, self->_targetedElementsHiddenFromCurrentSession, v14);
          __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke(v15, self->_targetedElementsToHideUsingDisplayNone, v14);
          __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke(v16, self->_targetedElementsHiddenByValidation, v14);
          ++v13;
        }

        while (v11 != v13);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v11 = v10;
      }

      while (v10);
    }

    [(WBSScribbleController *)self _updateUserStyleSheet];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke_3;
    v17[3] = &unk_1E82838F8;
    v17[4] = self;
    v18 = completionCopy;
    [WeakRetained _resetVisibilityAdjustmentsForTargetedElements:v9 completionHandler:v17];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke_2;
  v6[3] = &unk_1E82850D0;
  v7 = v4;
  v5 = v4;
  [a2 safari_removeObjectsPassingTest:v6];
}

uint64_t __68__WBSScribbleController__resetPaintAvoidanceForElements_completion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) updateCountForElementsHiddenByPaintingAvoidance];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_hideElementUsingPaintAvoidance:(id)avoidance completion:(id)completion
{
  avoidanceCopy = avoidance;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__WBSScribbleController__hideElementUsingPaintAvoidance_completion___block_invoke;
    v9[3] = &unk_1E82838F8;
    v9[4] = self;
    v10 = completionCopy;
    [WeakRetained _adjustVisibilityForTargetedElements:avoidanceCopy completionHandler:v9];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __68__WBSScribbleController__hideElementUsingPaintAvoidance_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) updateCountForElementsHiddenByPaintingAvoidance];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)updateCountForElementsHiddenByPaintingAvoidance
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__WBSScribbleController_updateCountForElementsHiddenByPaintingAvoidance__block_invoke;
  v4[3] = &unk_1E8285AD8;
  v4[4] = self;
  [WeakRetained _numberOfVisibilityAdjustmentRectsWithCompletionHandler:v4];
}

void __72__WBSScribbleController_updateCountForElementsHiddenByPaintingAvoidance__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = a2;
  v6 = [*(a1 + 32) delegate];
  [v6 scribbleControllerDidUpdateHiddenElementCount:*(a1 + 32)];

  if (a2 && !v5)
  {
    [*(a1 + 32) _updateUserStyleSheet];
    [*(a1 + 32) _applyWebCompatibilityFixups];
    v7 = *(a1 + 32);

    [v7 startValidatingHiddenElements];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    userDefinedContentBlockerManager = [WeakRetained userDefinedContentBlockerManager];
    [userDefinedContentBlockerManager removeUserDefinedContentBlockerObserver:self];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  userDefinedContentBlockerManager2 = [delegateCopy userDefinedContentBlockerManager];

  [userDefinedContentBlockerManager2 addUserDefinedContentBlockerObserver:self];
}

- (void)loadContentBlockerForHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  if (WeakRetained && [hostCopy length] && objc_msgSend(MEMORY[0x1E69C8880], "isScribbleEnabled"))
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    userDefinedContentBlockerManager = [v6 userDefinedContentBlockerManager];
    objc_initWeak(&location, self);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      normalBrowsingUserDefinedContentBlockerManager = [userDefinedContentBlockerManager normalBrowsingUserDefinedContentBlockerManager];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__WBSScribbleController_loadContentBlockerForHost___block_invoke;
      v13[3] = &unk_1E8285B00;
      objc_copyWeak(&v15, &location);
      v14 = v6;
      [normalBrowsingUserDefinedContentBlockerManager contentBlockerForHost:hostCopy createIfNeeded:0 completionHandler:v13];

      objc_destroyWeak(&v15);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__WBSScribbleController_loadContentBlockerForHost___block_invoke_2;
    v10[3] = &unk_1E8285B00;
    objc_copyWeak(&v12, &location);
    v9 = v6;
    v11 = v9;
    [userDefinedContentBlockerManager contentBlockerForHost:hostCopy createIfNeeded:0 completionHandler:v10];
    self->_numberOfElementsHiddenByPaintingAvoidance = 0;
    [(WBSScribbleController *)self updateCountForElementsHiddenByPaintingAvoidance];
    [(NSMutableDictionary *)self->_activeGlobalActionsByDatabaseID removeAllObjects];
    [(NSMutableArray *)self->_targetedElementsHiddenFromCurrentSession removeAllObjects];
    [(NSMutableArray *)self->_targetedElementsHiddenByValidation removeAllObjects];
    [(NSMutableArray *)self->_targetedElementsToHideUsingDisplayNone removeAllObjects];
    *&self->_isUpdatingShouldMakePageScrollableAndInteractable = 0;
    [(WBSScribbleController *)self _updateUserStyleSheet];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __51__WBSScribbleController_loadContentBlockerForHost___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    v6 = [v9 actions];
    v7 = [v6 count];

    if (v5 != v7)
    {
      v8 = [v9 actions];
      v4[7] = [v8 count];

      [*(a1 + 32) scribbleControllerDidUpdateHiddenElementCount:v4];
    }
  }
}

void __51__WBSScribbleController_loadContentBlockerForHost___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 8, a2);
    [*(a1 + 32) scribbleControllerDidUpdateHiddenElementCount:v5];
    if ([v5 _hasAnyHiddenElements])
    {
      [v5 _applyWebCompatibilityFixups];
      [v5 startValidatingHiddenElements];
    }
  }
}

- (void)reloadWithoutScribbleElements
{
  [(WBSScribbleController *)self _stopValidationTimer];
  self->_numberOfElementsHiddenByPaintingAvoidance = 0;
  self->_numberOfHiddenElementsInheritedFromNormalBrowsing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained scribbleControllerDidUpdateHiddenElementCount:self];
}

- (void)clearAllEdits
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_isScribbling)
  {
    [(WBSScribbleController *)self endScribblingAndSaveChanges:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  userDefinedContentBlockerManager = [WeakRetained userDefinedContentBlockerManager];
  v5 = userDefinedContentBlockerManager;
  if (self->_contentBlockerForCurrentHost)
  {
    [userDefinedContentBlockerManager deleteActionsForContentBlocker:?];
  }

  v6 = objc_loadWeakRetained(&self->_webView);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    normalBrowsingUserDefinedContentBlockerManager = [v5 normalBrowsingUserDefinedContentBlockerManager];
    v8 = [v6 URL];
    host = [v8 host];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __38__WBSScribbleController_clearAllEdits__block_invoke;
    v28[3] = &unk_1E8285B28;
    v10 = normalBrowsingUserDefinedContentBlockerManager;
    v29 = v10;
    [v10 contentBlockerForHost:host createIfNeeded:0 completionHandler:v28];
  }

  else
  {
    v10 = v5;
  }

  if ([(WBSScribbleController *)self numberOfAllHiddenElements])
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didClearScribble];

    v12 = MEMORY[0x1E69E9820];
    self->_numberOfElementsHiddenByPaintingAvoidance = 0;
    self->_numberOfHiddenElementsInheritedFromNormalBrowsing = 0;
    v25[0] = v12;
    v25[1] = 3221225472;
    v25[2] = __38__WBSScribbleController_clearAllEdits__block_invoke_2;
    v25[3] = &unk_1E8285B50;
    v26 = WeakRetained;
    selfCopy = self;
    [v6 _resetVisibilityAdjustmentsForTargetedElements:0 completionHandler:v25];
    allValues = [(NSMutableDictionary *)self->_activeGlobalActionsByDatabaseID allValues];
    [v10 deleteActions:allValues];

    [(WBSScribbleController *)self _stopValidationTimer];
    validator = self->_validator;
    self->_validator = 0;

    [(NSMutableArray *)self->_targetedElementsHiddenFromCurrentSession removeAllObjects];
    [(NSMutableArray *)self->_targetedElementsHiddenByValidation removeAllObjects];
    [(NSMutableArray *)self->_targetedElementsToHideUsingDisplayNone removeAllObjects];
    [(NSMutableDictionary *)self->_activeGlobalActionsByDatabaseID removeAllObjects];
    *&self->_isUpdatingShouldMakePageScrollableAndInteractable = 0;
    [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost setActions:MEMORY[0x1E695E0F0]];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _currentUserContentControllers = [(WBSScribbleController *)self _currentUserContentControllers];
    v16 = [_currentUserContentControllers countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      v19 = MEMORY[0x1E695E0F0];
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(_currentUserContentControllers);
          }

          [*(*(&v21 + 1) + 8 * v20++) safari_updateScribbleStyleSheetForWebView:v6 targets:v19 forceScrollable:0];
        }

        while (v17 != v20);
        v17 = [_currentUserContentControllers countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v17);
    }
  }
}

uint64_t __38__WBSScribbleController_clearAllEdits__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) deleteActionsForContentBlocker:a2];
  }

  return result;
}

- (void)userDefinedContentBlockerManagerDidUpdateAllRules:(id)rules
{
  rulesCopy = rules;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  userDefinedContentBlockerManager = [WeakRetained userDefinedContentBlockerManager];

  if (userDefinedContentBlockerManager == rulesCopy)
  {
    v9 = objc_loadWeakRetained(&self->_webView);
    v7 = [v9 URL];
    host = [v7 host];
    [(WBSScribbleController *)self loadContentBlockerForHost:host];
  }
}

- (id)_tapToRadarDescriptionWithWebView:(id)view contentBlockingRules:(id)rules
{
  rulesCopy = rules;
  viewCopy = view;
  [viewCopy bounds];
  v8 = v7;
  v10 = v9;
  scrollView = [viewCopy scrollView];
  [scrollView zoomScale];
  v13 = v12;

  [viewCopy _viewScale];
  v15 = v14;
  v16 = [viewCopy URL];

  v17 = MEMORY[0x1E696AEC0];
  safari_userVisibleHost = [v16 safari_userVisibleHost];
  rulesCopy = [v17 stringWithFormat:@"* Please describe the issue in detail:\n\n* Please attach a screenshot or screen recording if possible.\n\nURL: %@\nPage Bounds: %f width, %f height\nPage Zoom Factor: %lf\nPage Scale: %f\n\nContent Blocking Rules for %@:\n%@", v16, v8, v10, v13, v15, safari_userVisibleHost, rulesCopy];

  return rulesCopy;
}

- (void)getTapToRadarURLForScribbleIssueForWebView:(id)view category:(int64_t)category completionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v10 = MEMORY[0x1E696AEC0];
  if ((category - 1) > 2)
  {
    v11 = @"CannotSelectItems";
  }

  else
  {
    v11 = off_1E8285D50[category - 1];
  }

  v12 = [viewCopy URL];
  safari_userVisibleHost = [v12 safari_userVisibleHost];
  v14 = [v10 stringWithFormat:@"[%@] Distraction Control Issue on %@", v11, safari_userVisibleHost];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  userDefinedContentBlockerManager = [WeakRetained userDefinedContentBlockerManager];
  v17 = [viewCopy URL];
  host = [v17 host];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__WBSScribbleController_getTapToRadarURLForScribbleIssueForWebView_category_completionHandler___block_invoke;
  v22[3] = &unk_1E8285B78;
  v22[4] = self;
  v23 = viewCopy;
  v24 = v14;
  v25 = handlerCopy;
  v19 = handlerCopy;
  v20 = v14;
  v21 = viewCopy;
  [userDefinedContentBlockerManager contentBlockerForHost:host createIfNeeded:0 completionHandler:v22];
}

void __95__WBSScribbleController_getTapToRadarURLForScribbleIssueForWebView_category_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v3 _contentBlockingRulesAsString:a2];
  v11 = [v3 _tapToRadarDescriptionWithWebView:v4 contentBlockingRules:v5];

  v6 = objc_alloc(MEMORY[0x1E69C8F60]);
  v7 = [MEMORY[0x1E69C8F68] safariScribble];
  v8 = [v6 initWithComponent:v7 title:a1[6] descriptionTemplate:v11];

  [v8 setClassification:@"Serious Bug"];
  [v8 setReproducibility:@"Not Applicable"];
  v9 = a1[7];
  v10 = [v8 continueInTapToRadarURL];
  (*(v9 + 16))(v9, v10);
}

- (id)_contentBlockingRulesAsString:(id)string
{
  v51 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  string = [MEMORY[0x1E696AD60] string];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = stringCopy;
  obj = [stringCopy actions];
  v25 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v25)
  {
    v24 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        allSelectorsIncludingShadowHosts = [*(*(&v43 + 1) + 8 * v5) allSelectorsIncludingShadowHosts];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = allSelectorsIncludingShadowHosts;
        v29 = [allSelectorsIncludingShadowHosts countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v29)
        {
          v28 = *v40;
          do
          {
            v7 = 0;
            do
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v30 = v7;
              v8 = *(*(&v39 + 1) + 8 * v7);
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v9 = v8;
              v10 = [v9 countByEnumeratingWithState:&v35 objects:v48 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v36;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v36 != v12)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v14 = *(*(&v35 + 1) + 8 * i);
                    v31 = 0u;
                    v32 = 0u;
                    v33 = 0u;
                    v34 = 0u;
                    v15 = v14;
                    v16 = [v15 countByEnumeratingWithState:&v31 objects:v47 count:16];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = *v32;
                      do
                      {
                        for (j = 0; j != v17; ++j)
                        {
                          if (*v32 != v18)
                          {
                            objc_enumerationMutation(v15);
                          }

                          [string appendString:*(*(&v31 + 1) + 8 * j)];
                          [string appendString:@"\n"];
                        }

                        v17 = [v15 countByEnumeratingWithState:&v31 objects:v47 count:16];
                      }

                      while (v17);
                    }
                  }

                  v11 = [v9 countByEnumeratingWithState:&v35 objects:v48 count:16];
                }

                while (v11);
              }

              v7 = v30 + 1;
            }

            while (v30 + 1 != v29);
            v29 = [v27 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v29);
        }

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v25);
  }

  if ([string length])
  {
    v20 = string;
  }

  else
  {
    v20 = @"No rules defined";
  }

  return v20;
}

- (void)updateSelectionToPoint:(CGPoint)point
{
  if (self->_elementSelectionEnabled)
  {
    y = point.y;
    x = point.x;
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__WBSScribbleController_updateSelectionToPoint___block_invoke;
    v6[3] = &unk_1E8285BA0;
    objc_copyWeak(v7, &location);
    v7[1] = *&x;
    v7[2] = *&y;
    [(WBSScribbleController *)self getElementAtPoint:v6 completion:x, y];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __48__WBSScribbleController_updateSelectionToPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXScribble();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __48__WBSScribbleController_updateSelectionToPoint___block_invoke_cold_1(a1, v9, v7);
      }
    }

    objc_storeStrong(WeakRetained + 19, a2);
    v10 = objc_loadWeakRetained(WeakRetained + 18);
    [v10 scribbleController:WeakRetained didUpdateSelectedElement:v6 withError:v7];
  }
}

- (void)_applyWebCompatibilityFixups
{
  [(WBSScribbleController *)self _makePageScrollableAndInteractableIfNeeded];

  [(WBSScribbleController *)self _disableHiddenActiveElementIfNeeded];
}

- (void)_disableHiddenActiveElementIfNeeded
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (WeakRetained)
  {
    shouldDisableHiddenActiveElement = [(WBSScribbleQuirks *)self->_quirksForCurrentSession shouldDisableHiddenActiveElement];
    bOOLValue = [shouldDisableHiddenActiveElement BOOLValue];

    if (bOOLValue)
    {
      v6 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      actions = [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost actions];
      v8 = [actions countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          v11 = 0;
          do
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(actions);
            }

            allSelectorsIncludingShadowHosts = [*(*(&v28 + 1) + 8 * v11) allSelectorsIncludingShadowHosts];
            v13 = selectorsForJavaScript(allSelectorsIncludingShadowHosts);
            [v6 addObjectsFromArray:v13];

            ++v11;
          }

          while (v9 != v11);
          v9 = [actions countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v9);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = self->_scribbleElementsFromCurrentSession;
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            allSelectorsIncludingShadowHosts2 = [*(*(&v24 + 1) + 8 * v18) allSelectorsIncludingShadowHosts];
            v20 = selectorsForJavaScript(allSelectorsIncludingShadowHosts2);
            [v6 addObjectsFromArray:v20];

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v16);
      }

      if ([v6 count])
      {
        v21 = [v6 componentsJoinedByString:{@", "}];
        v32 = @"selectors";
        v33 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        defaultClientWorld = [MEMORY[0x1E6985318] defaultClientWorld];
        [WeakRetained callAsyncJavaScript:@"return (selectors => {    const activeElement = window?.document?.activeElement;    if (!activeElement || activeElement === document.body || activeElement.disabled)        return false;    for (const element of [...document.querySelectorAll(selectors)]) {        if (element.contains(activeElement)) {            activeElement.disabled = true;            activeElement.setAttribute('aria-disabled' arguments:'true');            return true;        }    }    return false;})(selectors)" inFrame:v22 inContentWorld:0 completionHandler:{defaultClientWorld, &__block_literal_global_88}];
      }
    }
  }
}

void __60__WBSScribbleController__disableHiddenActiveElementIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__WBSScribbleController__disableHiddenActiveElementIfNeeded__block_invoke_cold_1();
    }
  }

  else if ([a2 BOOLValue])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __60__WBSScribbleController__disableHiddenActiveElementIfNeeded__block_invoke_cold_2();
    }
  }
}

- (void)_makePageScrollableAndInteractableIfNeeded
{
  if (!self->_shouldMakePageScrollableAndInteractable && !self->_isUpdatingShouldMakePageScrollableAndInteractable)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v4 = [WeakRetained URL];
    host = [v4 host];

    if (host)
    {
      if ([(WBSScribbleController *)self _hasAnyHiddenElements])
      {
        safari_worldForScribbleScript = [MEMORY[0x1E6985318] safari_worldForScribbleScript];
        self->_isUpdatingShouldMakePageScrollableAndInteractable = 1;
        objc_initWeak(&location, self);
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __67__WBSScribbleController__makePageScrollableAndInteractableIfNeeded__block_invoke;
        v7[3] = &unk_1E8285BE8;
        objc_copyWeak(&v8, &location);
        [WeakRetained evaluateJavaScript:@"(() => {    if (document?.body) {        const bodyStyle = getComputedStyle(document.body);        if (bodyStyle.overflow === 'hidden' || bodyStyle.pointerEvents === 'none')            return true;        const thresholdForScrollableBodyContent = 2 * visualViewport.height * visualViewport.scale;        if (bodyStyle.position === 'fixed' && document.body.getBoundingClientRect().height > thresholdForScrollableBodyContent)            return true;    }    if (document?.documentElement) {        const documentElementStyle = getComputedStyle(document.documentElement);        if (documentElementStyle.overflow === 'hidden' || documentElementStyle.pointerEvents === 'none')            return true;    }    return false;})();" inFrame:0 inContentWorld:safari_worldForScribbleScript completionHandler:v7];
        objc_destroyWeak(&v8);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __67__WBSScribbleController__makePageScrollableAndInteractableIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__WBSScribbleController__makePageScrollableAndInteractableIfNeeded__block_invoke_2;
    v10[3] = &unk_1E8283080;
    v10[4] = WeakRetained;
    [v8 setHandler:v10];
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXScribble();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __67__WBSScribbleController__makePageScrollableAndInteractableIfNeeded__block_invoke_cold_1();
      }
    }

    else if ([v5 BOOLValue])
    {
      WeakRetained[42] = 1;
      [WeakRetained _updateUserStyleSheet];
    }
  }
}

- (void)hideSelectedElement
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  targetedElements = [a2 targetedElements];
  firstObject = [targetedElements firstObject];
  v6 = [firstObject debugDescription];
  v7 = 138477827;
  v8 = v6;
  _os_log_debug_impl(&dword_1C6968000, selfCopy, OS_LOG_TYPE_DEBUG, "Hiding item: %{private}@", &v7, 0xCu);
}

void __44__WBSScribbleController_hideSelectedElement__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) setImageAnalysisText:v4];
  }
}

- (void)deselectSelectedElement
{
  self->_isGettingElementAtPoint = 0;
  selectedScribbleElement = self->_selectedScribbleElement;
  if (selectedScribbleElement)
  {
    self->_selectedScribbleElement = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scribbleController:self didUpdateSelectedElement:0 withError:0];
  }
}

- (void)undoLastAction
{
  if ([(NSMutableArray *)self->_scribbleElementsFromCurrentSession count])
  {
    objc_initWeak(&location, self);
    [(WBSScribbleController *)self _stopValidationTimer];
    lastObject = [(NSMutableArray *)self->_scribbleElementsFromCurrentSession lastObject];
    [(NSMutableArray *)self->_scribbleElementsFromCurrentSession removeLastObject];
    [(NSMutableArray *)self->_scribbleElementsForGlobalActionsFromCurrentSession removeObject:lastObject];
    targetedElements = [lastObject targetedElements];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__WBSScribbleController_undoLastAction__block_invoke;
    v5[3] = &unk_1E8285C58;
    objc_copyWeak(&v6, &location);
    [(WBSScribbleController *)self _resetPaintAvoidanceForElements:targetedElements completion:v5];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __39__WBSScribbleController_undoLastAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startValidatingHiddenElements];
}

- (id)_currentUserContentControllers
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained isPrivateBrowsing])
  {
    safari_privateBrowsingUserContentController = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    v6[0] = safari_privateBrowsingUserContentController;
    normalBrowsingUserContentControllers = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    normalBrowsingUserContentControllers = [WeakRetained normalBrowsingUserContentControllers];
  }

  return normalBrowsingUserContentControllers;
}

- (void)_updateUserStyleSheet
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(WBSScribbleController *)self _hasAnyHiddenElements])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    _currentUserContentControllers = [(WBSScribbleController *)self _currentUserContentControllers];
    v4 = [_currentUserContentControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(_currentUserContentControllers);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          WeakRetained = objc_loadWeakRetained(&self->_webView);
          [v8 safari_updateScribbleStyleSheetForWebView:WeakRetained targets:self->_targetedElementsToHideUsingDisplayNone forceScrollable:self->_shouldMakePageScrollableAndInteractable];

          ++v7;
        }

        while (v5 != v7);
        v5 = [_currentUserContentControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)canHideContentInWebView
{
  if ([MEMORY[0x1E69C8880] isScribbleEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _committedURL = [WeakRetained _committedURL];
    host = [_committedURL host];
    v6 = [host length];

    if (!v6)
    {
      LOBYTE(v8) = 0;
LABEL_12:

      return v8;
    }

    _MIMEType = [WeakRetained _MIMEType];
    if ([_MIMEType length])
    {
      if ([_MIMEType hasPrefix:@"text/"])
      {
        LOBYTE(v8) = 1;
LABEL_11:

        goto LABEL_12;
      }

      if (([_MIMEType isEqualToString:@"application/pdf"] & 1) == 0 && (objc_msgSend(_MIMEType, "hasPrefix:", @"image/") & 1) == 0)
      {
        v8 = [_MIMEType hasPrefix:@"audio/"] ^ 1;
        goto LABEL_11;
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_11;
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (void)startScribblingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained URL];

  self->_startedScribblingWithHiddenItems = [(WBSScribbleController *)self numberOfAllHiddenElements]!= 0;
  [(WBSScribbleController *)self _updateQuirksIfNeeded];
  host = [v6 host];
  v8 = objc_loadWeakRetained(&self->_delegate);
  userDefinedContentBlockerManager = [v8 userDefinedContentBlockerManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WBSScribbleController_startScribblingWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E8285C80;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [userDefinedContentBlockerManager contentBlockerForHost:host createIfNeeded:1 completionHandler:v11];
}

void __62__WBSScribbleController_startScribblingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = WeakRetained;
    v6 = *(a1 + 32);
    if ((*(v6 + 40) & 1) == 0 && WeakRetained)
    {
      [WeakRetained addObserver:? forKeyPath:? options:? context:?];
      v6 = *(a1 + 32);
    }

    *(v6 + 40) = 1;
    *(*(a1 + 32) + 136) = 1;
    objc_storeStrong((*(a1 + 32) + 64), a2);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)endScribblingAndSaveChanges:(BOOL)changes
{
  changesCopy = changes;
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = WeakRetained;
  if (self->_isScribbling && WeakRetained != 0)
  {
    [WeakRetained removeObserver:self forKeyPath:@"frame" context:webViewFrameObservationContext];
  }

  self->_isScribbling = 0;
  v8 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke;
  v37[3] = &unk_1E8283080;
  v37[4] = self;
  v25 = v8;
  [v8 setHandler:v37];
  v26 = [(NSMutableArray *)self->_scribbleElementsFromCurrentSession safari_mapObjectsUsingBlock:&__block_literal_global_117_0];
  v9 = objc_loadWeakRetained(&self->_delegate);
  userDefinedContentBlockerManager = [v9 userDefinedContentBlockerManager];
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  v12 = mEMORY[0x1E69C8810];
  if (changesCopy)
  {
    [mEMORY[0x1E69C8810] didFinishScribble:{-[WBSScribbleController numberOfChangesFromCurrentSession](self, "numberOfChangesFromCurrentSession")}];

    if (self->_startedScribblingWithHiddenItems)
    {
      mEMORY[0x1E69C8810]2 = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810]2 didHideMoreItems];
    }

    objc_initWeak(&location, self);
    [userDefinedContentBlockerManager addActions:v26 forContentBlocker:self->_contentBlockerForCurrentHost];
    host = [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost host];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_3;
    v34[3] = &unk_1E8285CC8;
    objc_copyWeak(&v35, &location);
    [userDefinedContentBlockerManager contentBlockerForHost:host createIfNeeded:0 completionHandler:v34];

    if ([(NSMutableArray *)self->_scribbleElementsForGlobalActionsFromCurrentSession count])
    {
      v15 = [(NSMutableArray *)self->_scribbleElementsForGlobalActionsFromCurrentSession safari_mapObjectsUsingBlock:&__block_literal_global_119];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_5;
      v31[3] = &unk_1E8285CF0;
      v32 = userDefinedContentBlockerManager;
      v16 = v15;
      v33 = v16;
      [v32 getGlobalContentBlockerWithCompletionHandler:v31];
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    [mEMORY[0x1E69C8810] didCancelScribble];

    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_scribbleElementsFromCurrentSession, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = self->_scribbleElementsFromCurrentSession;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v19)
    {
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v18);
          }

          targetedElements = [*(*(&v27 + 1) + 8 * i) targetedElements];
          [v17 addObjectsFromArray:targetedElements];
        }

        v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v19);
    }

    if ([v17 count])
    {
      [(WBSScribbleController *)self _resetPaintAvoidanceForElements:v17 completion:&__block_literal_global_121];
    }

    [(NSMutableArray *)self->_scribbleElementsForGlobalActionsFromCurrentSession removeAllObjects];
    [(NSMutableArray *)self->_scribbleElementsFromCurrentSession removeAllObjects];
    actions = [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost actions];
    v24 = [actions safari_filterObjectsUsingBlock:&__block_literal_global_125];
    [(WBSUserDefinedContentBlocker *)self->_contentBlockerForCurrentHost setActions:v24];
  }
}

uint64_t __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  [*(*(a1 + 32) + 72) removeAllObjects];
  v4 = *(*(a1 + 32) + 80);

  return [v4 removeAllObjects];
}

void __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 8, a2);
  }
}

void __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_6(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_6_cold_1();
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (webViewFrameObservationContext == context)
  {
    v11 = *MEMORY[0x1E696A4F0];
    changeCopy = change;
    v13 = [changeCopy objectForKeyedSubscript:v11];
    [v13 CGRectValue];
    v15 = v14;
    v17 = v16;

    v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];

    [v18 CGRectValue];
    v20 = v19;
    v22 = v21;

    if (v20 != v15 || v22 != v17)
    {
      selectedScribbleElement = self->_selectedScribbleElement;
      self->_selectedScribbleElement = 0;

      delegate = [(WBSScribbleController *)self delegate];
      [delegate scribbleController:self didUpdateSelectedElement:0 withError:0];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = WBSScribbleController;
    changeCopy2 = change;
    [(WBSScribbleController *)&v26 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (WBSScribbleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastRequestLocation
{
  x = self->_lastRequestLocation.x;
  y = self->_lastRequestLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

void __49__WBSScribbleController__validateHiddenElements___block_invoke_46_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__WBSScribbleController_updateSelectionToPoint___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v14.x = v4;
  v14.y = v5;
  v7 = NSStringFromPoint(v14);
  v8 = [a3 safari_privacyPreservingError];
  v9 = 138543618;
  v10 = v7;
  v11 = 2114;
  v12 = v8;
  _os_log_error_impl(&dword_1C6968000, v6, OS_LOG_TYPE_ERROR, "Failed to find element at %{public}@ with error %{public}@", &v9, 0x16u);
}

void __53__WBSScribbleController_endScribblingAndSaveChanges___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end