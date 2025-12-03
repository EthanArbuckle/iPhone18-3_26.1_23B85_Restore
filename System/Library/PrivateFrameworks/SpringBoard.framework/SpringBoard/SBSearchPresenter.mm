@interface SBSearchPresenter
- (BOOL)_canPresent;
- (SBHSearchInteractivePresentationMetrics)interactivePresentationMetrics;
- (SBSearchPresenter)initWithSettings:(id)settings identifier:(id)identifier;
- (SBSearchPresenterDelegate)searchPresenterDelegate;
- (double)_rubberbandingOffsetForContentOffset:(CGPoint)offset;
- (double)_searchPresentationProgressForOffset:(double)offset;
- (id)_noteWillBeginModifyingPresentationProgressForState:(int64_t)state animated:(BOOL)animated;
- (void)_didDismissSearch;
- (void)_didPresentSearch;
- (void)_sendDidDismissSearchToDelegateAndObservers;
- (void)_sendDidDismissSearchToObserver:(id)observer;
- (void)_sendDidPresentSearchToDelegateAndObservers;
- (void)_sendDidPresentSearchToObserver:(id)observer;
- (void)_sendWillDismissSearch:(BOOL)search toObserver:(id)observer;
- (void)_sendWillDismissSearchToDelegateAndObservers:(BOOL)observers;
- (void)_sendWillPresentSearch:(BOOL)search toObserver:(id)observer;
- (void)_sendWillPresentSearchToDelegateAndObservers:(BOOL)observers;
- (void)_setUpInteractivePresentationMetrics;
- (void)_setUpSearchAnimationSettings;
- (void)_updatePresentables:(id)presentables withMode:(int64_t)mode;
- (void)_updatePresentables:(id)presentables withMode:(int64_t)mode withCompletion:(id)completion;
- (void)_willDismissSearchAnimated:(BOOL)animated;
- (void)_willPresentSearchAnimated:(BOOL)animated;
- (void)dismissSearchAnimated:(BOOL)animated;
- (void)presentSearchAnimated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity;
- (void)setUsesTransitionDistanceAsStartOffset:(BOOL)offset;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBSearchPresenter

- (SBHSearchInteractivePresentationMetrics)interactivePresentationMetrics
{
  interactiveTransitionStartOffset = self->_interactivePresentationMetrics.interactiveTransitionStartOffset;
  interactiveTransitionDistance = self->_interactivePresentationMetrics.interactiveTransitionDistance;
  interactiveTransitionBeganFromTopLeeway = self->_interactivePresentationMetrics.interactiveTransitionBeganFromTopLeeway;
  interactiveActivationThreshold = self->_interactivePresentationMetrics.interactiveActivationThreshold;
  result.interactiveActivationThreshold = interactiveActivationThreshold;
  result.interactiveTransitionBeganFromTopLeeway = interactiveTransitionBeganFromTopLeeway;
  result.interactiveTransitionDistance = interactiveTransitionDistance;
  result.interactiveTransitionStartOffset = interactiveTransitionStartOffset;
  return result;
}

- (void)_didPresentSearch
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_presentables != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSearchPresenter.m";
    v16 = 1024;
    v17 = 340;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sendDidPresentSearchToDelegateAndObservers
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  [(SBSearchPresenter *)self _sendDidPresentSearchToObserver:WeakRetained];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
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

        [(SBSearchPresenter *)self _sendDidPresentSearchToObserver:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (SBSearchPresenter)initWithSettings:(id)settings identifier:(id)identifier
{
  settingsCopy = settings;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBSearchPresenter;
  v9 = [(SBSearchPresenter *)&v15 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    objc_storeStrong(&v9->_pullToSearchSettings, settings);
    [(SBHHomePullToSearchSettings *)v9->_pullToSearchSettings addKeyObserver:v9];
    [(SBSearchPresenter *)v9 _setUpSearchAnimationSettings];
    [(SBSearchPresenter *)v9 _setUpInteractivePresentationMetrics];
  }

  return v9;
}

- (void)presentSearchAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x277D85DE8];
  if ([(SBSearchPresenter *)self _canPresent])
  {
    [(SBSearchPresenter *)self _willPresentSearchAnimated:animatedCopy];
    v5 = [(SBSearchPresenter *)self _noteWillBeginModifyingPresentationProgressForState:2 animated:animatedCopy];
    self->_presentationState = 2;
    self->_presentationVelocity = 0.0;
    trackingScrollView = self->_trackingScrollView;
    if (trackingScrollView)
    {
      [(UIScrollView *)trackingScrollView _forcePanGestureToEndImmediately];
    }

    if (animatedCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__SBSearchPresenter_presentSearchAnimated___block_invoke;
      v16[3] = &unk_2783A8BF0;
      v17 = v5;
      selfCopy = self;
      [(SBSearchPresenter *)self _updatePresentablesWithMode:3 withCompletion:v16];
    }

    else
    {
      [(SBSearchPresenter *)self _updatePresentablesWithMode:4 withCompletion:0];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
        }

        while (v9);
      }

      [(SBSearchPresenter *)self _didPresentSearch];
    }
  }
}

void *__43__SBSearchPresenter_presentSearchAnimated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result[8] == 2)
  {
    return [result _didPresentSearch];
  }

  return result;
}

- (void)dismissSearchAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  presentationState = self->_presentationState;
  [(SBSearchPresenter *)self _willDismissSearchAnimated:?];
  self->_presentationVelocity = 0.0;
  self->_presentationState = presentationState;
  v6 = [(SBSearchPresenter *)self _noteWillBeginModifyingPresentationProgressForState:0 animated:animatedCopy];
  self->_presentationState = 0;
  trackingScrollView = self->_trackingScrollView;
  if (trackingScrollView)
  {
    [(UIScrollView *)trackingScrollView _forcePanGestureToEndImmediately];
  }

  if (animatedCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__SBSearchPresenter_dismissSearchAnimated___block_invoke;
    v17[3] = &unk_2783A8BF0;
    v18 = v6;
    selfCopy = self;
    [(SBSearchPresenter *)self _updatePresentablesWithMode:3 withCompletion:v17];
  }

  else
  {
    [(SBSearchPresenter *)self _updatePresentablesWithMode:4 withCompletion:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v10);
    }

    [(SBSearchPresenter *)self _didDismissSearch];
  }
}

void *__43__SBSearchPresenter_dismissSearchAnimated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (!result[8])
  {
    return [result _didDismissSearch];
  }

  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v27 = *MEMORY[0x277D85DE8];
  draggingCopy = dragging;
  v6 = SBLogSpotlight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    identifier = self->_identifier;
    v23 = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%@ identifier: %@", &v23, 0x16u);
  }

  _canPresent = [(SBSearchPresenter *)self _canPresent];
  if (_canPresent)
  {
    objc_storeStrong(&self->_trackingScrollView, dragging);
    window = [draggingCopy window];
    if (([window interfaceOrientation] - 1) > 1)
    {
    }

    else
    {
      v11 = +[SBReachabilityDomain rootSettings];
      [v11 homeGestureSwipeDownHeight];
      v13 = v12;

      panGestureRecognizer = [draggingCopy panGestureRecognizer];
      [panGestureRecognizer locationInView:draggingCopy];
      v16 = v15;
      v18 = v17;

      [draggingCopy convertPoint:0 toView:{v16, v18}];
      v20 = v19;
      [window size];
      v22 = v21 - v13;

      if (v20 > v22)
      {
        LOBYTE(_canPresent) = 0;
        goto LABEL_9;
      }
    }

    [draggingCopy contentOffset];
    LOBYTE(_canPresent) = BSFloatLessThanOrEqualToFloat();
  }

LABEL_9:
  self->_scrollViewBeganScrollingFromTop = _canPresent;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v17 = *MEMORY[0x277D85DE8];
  [scroll contentOffset];
  [(SBSearchPresenter *)self _rubberbandingOffsetForContentOffset:?];
  if (self->_scrollViewBeganScrollingFromTop && BSFloatGreaterThanFloat() && !self->_presentationState)
  {
    v4 = SBLogSpotlight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _SBFLoggingMethodProem();
      identifier = self->_identifier;
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = identifier;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%@ identifier: %@ starting new interactive transition", &v13, 0x16u);
    }

    self->_presentationVelocity = 0.0;
    [(SBSearchPresenter *)self _willPresentSearchAnimated:1];
    v7 = [(SBSearchPresenter *)self _noteWillBeginModifyingPresentationProgressForState:1 animated:1];
    interactionCompletions = [(SBSearchPresenter *)self interactionCompletions];
    if ([interactionCompletions count])
    {
      v9 = SBLogSpotlight();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = _SBFLoggingMethodProem();
        v11 = self->_identifier;
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ identifier: %@ had previous interactive transition completions", &v13, 0x16u);
      }

      v12 = [v7 arrayByAddingObjectsFromArray:interactionCompletions];

      v7 = v12;
    }

    [(SBSearchPresenter *)self setInteractionCompletions:v7];
    self->_presentationState = 1;
  }

  if (self->_presentationState == 1)
  {
    self->_presentationVelocity = 0.0;
    [(SBSearchPresenter *)self _updatePresentablesWithMode:5 withCompletion:0];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  v45 = *MEMORY[0x277D85DE8];
  draggingCopy = dragging;
  self->_scrollViewBeganScrollingFromTop = 0;
  presentationState = self->_presentationState;
  v8 = SBLogSpotlight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    identifier = self->_identifier;
    *buf = 138412802;
    v40 = v9;
    v41 = 1024;
    v42 = presentationState == 1;
    v43 = 2112;
    v44 = identifier;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%@ interactive: %{BOOL}u identifier: %@", buf, 0x1Cu);
  }

  interactionCompletions = [(SBSearchPresenter *)self interactionCompletions];
  [(SBSearchPresenter *)self setInteractionCompletions:0];
  if (presentationState == 1)
  {
    v12 = *MEMORY[0x277D76EB8];
    [draggingCopy contentOffset];
    v14 = v13;
    v16 = v15;
    panGestureRecognizer = [draggingCopy panGestureRecognizer];
    [panGestureRecognizer velocityInView:draggingCopy];
    v19 = v18;
    v21 = v20;

    [(SBSearchPresenter *)self _rubberbandingOffsetForContentOffset:v14 - v12 * (v19 / 1000.0) / (1.0 - v12), v16 - v12 * (v21 / 1000.0) / (1.0 - v12)];
    v22 = BSFloatGreaterThanFloat();
    v23 = v22;
    if (v22)
    {
      self->_presentationState = 2;
    }

    else
    {
      [(SBSearchPresenter *)self _willDismissSearchAnimated:1];
    }

    self->_presentationVelocity = y * -1000.0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__SBSearchPresenter_scrollViewWillEndDragging_withVelocity___block_invoke_2;
    v34[3] = &unk_2783B1948;
    v37 = v23;
    v35 = interactionCompletions;
    selfCopy = self;
    [(SBSearchPresenter *)self _updatePresentablesWithMode:3 withCompletion:v34];
    v24 = v35;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = interactionCompletions;
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          (*(*(*(&v30 + 1) + 8 * i) + 16))(*(*(&v30 + 1) + 8 * i));
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v26);
    }
  }

  trackingScrollView = self->_trackingScrollView;
  self->_trackingScrollView = 0;
}

void *__60__SBSearchPresenter_scrollViewWillEndDragging_withVelocity___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  if (*(a1 + 48) != 1 || (result = *(a1 + 40), result[8] == 2) && (result = [result _didPresentSearch], (*(a1 + 48) & 1) == 0))
  {
    result = *(a1 + 40);
    if (!result[8])
    {
      return [result _didDismissSearch];
    }
  }

  return result;
}

- (void)setUsesTransitionDistanceAsStartOffset:(BOOL)offset
{
  if (self->_usesTransitionDistanceAsStartOffset != offset)
  {
    self->_usesTransitionDistanceAsStartOffset = offset;
    [(SBSearchPresenter *)self _setUpInteractivePresentationMetrics];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  [(SBSearchPresenter *)self _setUpSearchAnimationSettings:settings];

  [(SBSearchPresenter *)self _setUpInteractivePresentationMetrics];
}

- (BOOL)_canPresent
{
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [WeakRetained searchPresenterCanPresent:self];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setUpSearchAnimationSettings
{
  pullTransitionAnimationSettings = [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionAnimationSettings];
  searchAnimationSettings = self->_searchAnimationSettings;
  self->_searchAnimationSettings = pullTransitionAnimationSettings;
}

- (void)_setUpInteractivePresentationMetrics
{
  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionDistance];
  self->_interactivePresentationMetrics.interactiveTransitionDistance = v3;
  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionActivationThreshold];
  self->_interactivePresentationMetrics.interactiveActivationThreshold = v4;
  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullGestureBeganFromTopLeeway];
  self->_interactivePresentationMetrics.interactiveTransitionBeganFromTopLeeway = v5;
  if (self->_usesTransitionDistanceAsStartOffset)
  {
    [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionRubberbandThreshold];
    self->_interactivePresentationMetrics.interactiveTransitionStartOffset = -v6;
  }
}

- (void)_willPresentSearchAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v46 = *MEMORY[0x277D85DE8];
  v5 = SBLogSpotlight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    identifier = self->_identifier;
    *buf = 138412802;
    v41 = v6;
    v42 = 1024;
    v43 = animatedCopy;
    v44 = 2112;
    v45 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ animated: %{BOOL}u identifier: %@", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  p_presentables = &self->_presentables;
  if (self->_presentables)
  {
    v10 = 0;
  }

  else
  {
    v11 = [WeakRetained searchPresentablesForPresenter:self];
    v10 = [v11 copy];

    objc_storeStrong(&self->_presentables, v10);
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [WeakRetained displayConfigurationForPresenter:self];
    if (v12 && v10)
    {
      v28 = animatedCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 setTargetDisplayConfiguration:v12];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v15);
      }

      animatedCopy = v28;
      p_presentables = &self->_presentables;
    }
  }

  else
  {
    v12 = 0;
  }

  [(SBSearchPresenter *)self _sendWillPresentSearchToDelegateAndObservers:animatedCopy];
  if (![v10 count])
  {
    v19 = [WeakRetained searchPresentablesForPresenter:self];
    v20 = [v19 copy];

    objc_storeStrong(p_presentables, v20);
    v10 = v20;
  }

  if (v10)
  {
    self->_topOffset = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained searchTopOffsetForSearchPresenter:self];
      self->_topOffset = v21;
    }

    v29 = WeakRetained;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v30 + 1) + 8 * j);
          [v27 setTopOffset:self->_topOffset];
          [v27 setMaxPresentationOffset:self->_interactivePresentationMetrics.interactiveTransitionDistance];
          if (objc_opt_respondsToSelector())
          {
            [v27 setSearchTransitionSettings:self->_pullToSearchSettings];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    WeakRetained = v29;
  }
}

- (void)_sendWillPresentSearchToDelegateAndObservers:(BOOL)observers
{
  observersCopy = observers;
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  [(SBSearchPresenter *)self _sendWillPresentSearch:observersCopy toObserver:WeakRetained];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
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

        [(SBSearchPresenter *)self _sendWillPresentSearch:observersCopy toObserver:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_sendWillPresentSearch:(BOOL)search toObserver:(id)observer
{
  searchCopy = search;
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy searchPresenterWillPresentSearch:self animated:searchCopy];
  }
}

- (void)_sendDidPresentSearchToObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy searchPresenterDidPresentSearch:self];
  }
}

- (void)_willDismissSearchAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = *MEMORY[0x277D85DE8];
  v5 = SBLogSpotlight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    identifier = self->_identifier;
    v8 = 138412802;
    v9 = v6;
    v10 = 1024;
    v11 = animatedCopy;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ animated: %{BOOL}u identifier: %@", &v8, 0x1Cu);
  }

  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
  [(SBSearchPresenter *)self _sendWillDismissSearchToDelegateAndObservers:animatedCopy];
  self->_presentationState = 0;
}

- (void)_sendWillDismissSearchToDelegateAndObservers:(BOOL)observers
{
  observersCopy = observers;
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  [(SBSearchPresenter *)self _sendWillDismissSearch:observersCopy toObserver:WeakRetained];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
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

        [(SBSearchPresenter *)self _sendWillDismissSearch:observersCopy toObserver:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_sendWillDismissSearch:(BOOL)search toObserver:(id)observer
{
  searchCopy = search;
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy searchPresenterWillDismissSearch:self animated:searchCopy];
  }
}

- (void)_didDismissSearch
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SBLogSpotlight();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _SBFLoggingMethodProem();
    identifier = self->_identifier;
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = identifier;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%@ identifier %@", &v7, 0x16u);
  }

  presentables = self->_presentables;
  self->_presentables = 0;

  [(SBSearchPresenter *)self _sendDidDismissSearchToDelegateAndObservers];
}

- (void)_sendDidDismissSearchToDelegateAndObservers
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);
  [(SBSearchPresenter *)self _sendDidDismissSearchToObserver:WeakRetained];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
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

        [(SBSearchPresenter *)self _sendDidDismissSearchToObserver:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_sendDidDismissSearchToObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy searchPresenterDidDismissSearch:self];
  }
}

- (id)_noteWillBeginModifyingPresentationProgressForState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v7 = self->_presentables;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v13 = [v12 willBeginModifyingPresentationProgressForState:state animated:animatedCopy needsInitialLayout:{&v21, selfCopy}];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 copy];
          v16 = MEMORY[0x223D6F7F0]();
          [array2 addObject:v16];
        }

        if (v21 == 1)
        {
          [array addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    [(SBSearchPresenter *)selfCopy _updatePresentables:array withMode:2 withCompletion:0];
  }

  return array2;
}

- (double)_rubberbandingOffsetForContentOffset:(CGPoint)offset
{
  interactiveTransitionStartOffset = self->_interactivePresentationMetrics.interactiveTransitionStartOffset;
  v4 = -interactiveTransitionStartOffset;
  result = -(offset.y + interactiveTransitionStartOffset);
  if (offset.y >= v4)
  {
    return 0.0;
  }

  return result;
}

- (double)_searchPresentationProgressForOffset:(double)offset
{
  v3 = offset / self->_interactivePresentationMetrics.interactiveTransitionDistance;
  if (v3 <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3 + 0.0;
  }

  return fmin(v4, 1.0);
}

- (void)_updatePresentables:(id)presentables withMode:(int64_t)mode withCompletion:(id)completion
{
  presentablesCopy = presentables;
  completionCopy = completion;
  v10 = MEMORY[0x277D75D18];
  searchAnimationSettings = self->_searchAnimationSettings;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBSearchPresenter__updatePresentables_withMode_withCompletion___block_invoke;
  v16[3] = &unk_2783AB2A8;
  v16[4] = self;
  v17 = presentablesCopy;
  modeCopy = mode;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SBSearchPresenter__updatePresentables_withMode_withCompletion___block_invoke_2;
  v14[3] = &unk_2783AE778;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = presentablesCopy;
  [v10 sb_animateWithSettings:searchAnimationSettings mode:mode animations:v16 completion:v14];
}

uint64_t __65__SBSearchPresenter__updatePresentables_withMode_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updatePresentables:(id)presentables withMode:(int64_t)mode
{
  v28 = *MEMORY[0x277D85DE8];
  presentablesCopy = presentables;
  presentationState = self->_presentationState;
  if (presentationState)
  {
    if (presentationState == 2)
    {
      *&self->_presentationProgress = xmmword_21F8A65A0;
    }

    else if (presentationState == 1)
    {
      [(UIScrollView *)self->_trackingScrollView contentOffset];
      [(SBSearchPresenter *)self _rubberbandingOffsetForContentOffset:?];
      self->_presentationOffset = v8;
      [(SBSearchPresenter *)self _searchPresentationProgressForOffset:?];
      self->_presentationProgress = v9;
    }
  }

  else
  {
    self->_presentationProgress = 0.0;
    self->_presentationOffset = 0.0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__SBSearchPresenter__updatePresentables_withMode___block_invoke;
  v26[3] = &__block_descriptor_40_e43_v24__0__SBFFluidBehaviorSettings_8___v___16l;
  v26[4] = mode;
  v10 = MEMORY[0x223D6F7F0](v26);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = presentablesCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_opt_respondsToSelector();
        presentationProgress = self->_presentationProgress;
        presentationOffset = self->_presentationOffset;
        presentationVelocity = self->_presentationVelocity;
        v21 = self->_presentationState;
        if (v17)
        {
          [v16 updatePresentationProgress:v21 withOffset:v10 velocity:presentationProgress presentationState:presentationOffset applyBlock:presentationVelocity];
        }

        else
        {
          [v16 updatePresentationProgress:v21 withOffset:presentationProgress velocity:presentationOffset presentationState:{presentationVelocity, v22}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v13);
  }
}

- (SBSearchPresenterDelegate)searchPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchPresenterDelegate);

  return WeakRetained;
}

@end