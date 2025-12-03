@interface SBHFocusNavigationGestureRecognizer
- (BOOL)_viewIsRTL;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (BOOL)shouldReceiveEvent:(id)event;
- (SBHFocusNavigationGestureRecognizerDelegate)navigationDelegate;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation SBHFocusNavigationGestureRecognizer

- (BOOL)shouldReceiveEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([(SBHFocusNavigationGestureRecognizer *)self onlyAcceptsGameControllerEvents])
  {
    if ([eventCopy type] != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    [eventCopy pressesForGestureRecognizer:self];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * i) _source] != 2)
          {

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v12.receiver = self;
  v12.super_class = SBHFocusNavigationGestureRecognizer;
  v10 = [(SBHFocusNavigationGestureRecognizer *)&v12 shouldReceiveEvent:eventCopy];
LABEL_16:

  return v10;
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (WeakRetained)
  {
    [WeakRetained focusNavigationGestureRecognizer:self handledNavigationWithDirection:{-[SBHFocusNavigationGestureRecognizer preferredNavigationDirection](self, "preferredNavigationDirection")}];
  }

  v9.receiver = self;
  v9.super_class = SBHFocusNavigationGestureRecognizer;
  [(SBHFocusNavigationGestureRecognizer *)&v9 pressesEnded:endedCopy withEvent:eventCopy];
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (-[SBHFocusNavigationGestureRecognizer requiresFailureOfBuiltInFocusGestureRecognizers](self, "requiresFailureOfBuiltInFocusGestureRecognizers") && ((-[SBHFocusNavigationGestureRecognizer view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? ([v5 window], v6 = objc_claimAutoreleasedReturnValue()) : (v6 = v5), v7 = v6, objc_msgSend(v6, "_focusSystemGesturesForFailureRequirements"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", recognizerCopy), v8, v7, v5, (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHFocusNavigationGestureRecognizer;
    v10 = [(SBHFocusNavigationGestureRecognizer *)&v12 shouldBeRequiredToFailByGestureRecognizer:recognizerCopy];
  }

  return v10;
}

- (SBHFocusNavigationGestureRecognizerDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (BOOL)_viewIsRTL
{
  if (!self)
  {
    return 0;
  }

  view = [self view];
  traitCollection = [view traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

@end