@interface _UITextChoiceAccelerationAssistant
- (BOOL)autocorrectInlinePromptIsVisible;
- (BOOL)canHandleDictationChoiceForPromptIndex:(int64_t)index;
- (BOOL)dismissIfPresented;
- (BOOL)positionIsAtDocumentStart:(id)start;
- (BOOL)presentTextChoicePromptForText:(id)text delay:(double)delay autocorrectionRects:(id)rects;
- (BOOL)promptIsVisible;
- (BOOL)showAutocorrectReplacementChoicesIfNeeded:(id)needed forRange:(id)range;
- (BOOL)showChoicesForAutocorrectionCandidate:(id)candidate range:(id)range delay:(double)delay;
- (BOOL)showChoicesForCandidates:(id)candidates;
- (BOOL)showChoicesForTextInRange:(id)range;
- (BOOL)showChoicesForTextInRange:(id)range withReplacements:(id)replacements delay:(double)delay;
- (BOOL)showDictationChoicesForTextInRange:(id)range;
- (BOOL)showPromptForReplacementCandidate:(id)candidate originalCandidate:(id)originalCandidate delay:(double)delay;
- (BOOL)showingPrompt;
- (BOOL)showingPromptsIncludingDictationChoices;
- (BOOL)textChoiceInteraction:(id)interaction shouldRespondToTapAtPoint:(CGPoint)point;
- (CGRect)convertedSelectionRect:(id)rect;
- (UITextInput)textInputResponder;
- (UITextInteractionAssistant)interactionAssistant;
- (_UIAssertion)grabberSuppressionAssertion;
- (_UITextChoiceAccelerationAssistant)initWithInteractionAssistant:(id)assistant;
- (_UITextChoiceAccelerationAssistant)initWithTextInputResponder:(id)responder;
- (_UITextChoiceAccelerationBubble)prompt;
- (_UITextChoicesAssistantDelegate)delegate;
- (id)_document;
- (id)_existingUnderlineView;
- (id)_rangeOfText:(id)text endingAtPosition:(id)position;
- (id)_underlineView;
- (id)activeSelectedRange;
- (id)alternateCorrectionsForList:(id)list;
- (id)anchorRangeForText:(id)text;
- (id)autocorrectionForList:(id)list;
- (id)candidateForFinalString:(id)string;
- (id)createPromptWithCompletionHandler:(id)handler;
- (id)currentKeyboardSceneDelegate;
- (id)defaultUnderlineColor;
- (id)keyFromRange:(id)range;
- (id)listForFinalString:(id)string;
- (id)nearestDictationPromptForPoint:(CGPoint)point withEvent:(id)event;
- (id)parentViewForPrompt;
- (id)rangeForTextChoicesAtPosition:(id)position;
- (id)rangeOfAutocorrectionForString:(id)string atPosition:(id)position inDocument:(id)document;
- (id)selectionRectsForRange:(id)range;
- (id)selectionViewManager;
- (id)textHighlightColor;
- (id)textInputView;
- (id)underlineRectForTextSelectionRect:(id)rect forCandidate:(id)candidate;
- (id)underlineRectFromDocumentRect:(CGRect)rect;
- (id)underlineRectsForCandidate:(id)candidate range:(id)range;
- (id)underlineRectsForCandidate:(id)candidate selectionRects:(id)rects;
- (id)underlineRectsForInput:(id)input;
- (id)updateUnderlineRects:(id)rects forRange:(id)range;
- (unint64_t)numberOfDisambiguationOptions;
- (void)_addUnderlineView;
- (void)_removeUnderlinesRelativeToPosition:(id)position compare:(int64_t)compare;
- (void)activateUnderlineViewIfNeeded;
- (void)addList:(id)list forCandidate:(id)candidate;
- (void)addUnderlineForCandidate:(id)candidate range:(id)range;
- (void)addUnderlinesForCandidate:(id)candidate range:(id)range;
- (void)adjustRangesAfterPosition:(id)position byOffset:(int64_t)offset;
- (void)cancelPendingDictationPromptDisplay;
- (void)cancelPromptDisplay;
- (void)clearSecureCandidateHashes;
- (void)clearUnderlineForPosition:(id)position;
- (void)clearUnderlinesIfNeededBeforePosition:(id)position;
- (void)clearUnderlinesInRange:(id)range animated:(BOOL)animated;
- (void)dealloc;
- (void)decorateTextInRanges:(id)ranges replacementTexts:(id)texts allowAutomaticReplacement:(BOOL)replacement autoHide:(BOOL)hide voiceCommandTrackingUUID:(id)d withCompletionHandler:(id)handler;
- (void)decorateTextInRects:(id)rects targetTextArray:(id)array replacementTexts:(id)texts deltaRanges:(id)ranges originalSelectedRange:(_NSRange)range allowAutomaticReplacement:(BOOL)replacement autoHide:(BOOL)hide voiceCommandUUID:(id)self0 withCompletionHandler:(id)self1;
- (void)didRecognizeDismissal;
- (void)dismissWithoutSelection;
- (void)fullAutocorrectionForWord:(id)word atPosition:(id)position completionHandler:(id)handler;
- (void)informAnalyticsOfCompletedCandidateReplacement;
- (void)informAnalyticsOfUpcomingCandidateReplacement;
- (void)presentIfNeededForRange:(id)range;
- (void)refreshExistingUnderlines;
- (void)releaseSelectionGrabberAssertion;
- (void)removeActivePromptAndUnderline;
- (void)removeAllUnderlinesAnimated:(BOOL)animated;
- (void)removePassthroughContainer;
- (void)removeUnderlinesAfterPosition:(id)position;
- (void)removeUnderlinesBeforePosition:(id)position;
- (void)removeWordForRange:(id)range animated:(BOOL)animated;
- (void)resetDictationChoicesAnimated:(BOOL)animated;
- (void)resetDictationUnderlines;
- (void)restoreInsertionPointPositionWithDocument:(id)document originalPositionRange:(_NSRange)range targetRange:(_NSRange)targetRange payloadRange:(_NSRange)payloadRange contextBefore:(BOOL)before;
- (void)selectionDidChange;
- (void)setNeedsUnderlineUpdate;
- (void)setupPassthroughContainer;
- (void)shouldShowPromptForWebKitText:(id)text atPosition:(id)position completionHandler:(id)handler;
- (void)textChoiceInteraction:(id)interaction receivedTapAtLocation:(CGPoint)location;
- (void)textDidEndScrolling;
- (void)textWillBeginScrolling;
- (void)trackUnderlineForWebKitCandidate:(id)candidate;
- (void)underlineTextInRange:(id)range revertText:(id)text textChoices:(id)choices isActiveEditingSession:(BOOL)session;
- (void)updateActivePromptForCandidate:(id)candidate displayRects:(id)rects highlightOnly:(BOOL)only;
- (void)updateDictationChoicesFromPromptIndex:(int64_t)index completionHandler:(id)handler;
- (void)updateDocumentFromPrompt:(id)prompt completionHandler:(id)handler;
- (void)updatePrompt:(id)prompt forReplacementCandidate:(id)candidate;
- (void)updatePromptLocation:(id)location;
- (void)updateReplacements:(id)replacements forCandidate:(id)candidate;
- (void)updateReplacementsForSavedCandidate:(id)candidate;
- (void)updateSelectionHighlights;
- (void)updateUnderlineGeometryIfNeeded;
- (void)updateUnderlinesForAddedRange:(id)range;
- (void)updateUnderlinesIfNeededAfterPosition:(id)position;
@end

@implementation _UITextChoiceAccelerationAssistant

- (id)parentViewForPrompt
{
  currentKeyboardSceneDelegate = [(_UITextChoiceAccelerationAssistant *)self currentKeyboardSceneDelegate];
  containerWindow = [currentKeyboardSceneDelegate containerWindow];
  v5 = containerWindow;
  if (containerWindow)
  {
    inputOverlayContainer = containerWindow;
  }

  else
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputOverlayContainer = [delegate inputOverlayContainer];
  }

  return inputOverlayContainer;
}

- (id)currentKeyboardSceneDelegate
{
  delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
  inputOverlayContainer = [delegate inputOverlayContainer];
  keyboardSceneDelegate = [inputOverlayContainer keyboardSceneDelegate];

  if (!keyboardSceneDelegate)
  {
    keyboardSceneDelegate = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  return keyboardSceneDelegate;
}

- (_UITextChoicesAssistantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UITextChoiceAccelerationBubble)prompt
{
  prompt = self->_prompt;
  if (!prompt)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self createPromptWithCompletionHandler:0];
    v5 = self->_prompt;
    self->_prompt = v4;

    prompt = self->_prompt;
  }

  return prompt;
}

- (UITextInput)textInputResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_textInputResponder);

  return WeakRetained;
}

- (void)clearSecureCandidateHashes
{
  secureCandidateHashes = self->_secureCandidateHashes;
  self->_secureCandidateHashes = 0;
}

- (BOOL)dismissIfPresented
{
  if ([(_UITextChoiceAccelerationAssistant *)self keepPromptActive])
  {
    goto LABEL_2;
  }

  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  [(_UITextChoiceAccelerationAssistant *)self releaseSelectionGrabberAssertion];
  promptIsVisible = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v5 = prompt;
  if (promptIsVisible)
  {
    [prompt removeAnimated:1];

    if (![(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
    {
      goto LABEL_11;
    }

    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (!textInputResponder)
    {
      goto LABEL_11;
    }

    activeSelectedRange = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    v5 = [activeSelectedRange end];

    if (v5)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

      if (textInputResponder2)
      {
        delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
        textInputResponder3 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        textInputResponder4 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v12 = [textInputResponder4 textRangeFromPosition:v5 toPosition:v5];
        [delegate updateTextChoicePromptSelection:textInputResponder3 toRange:v12];
      }
    }
  }

  else
  {
    [prompt reset];
  }

LABEL_11:
  if (!+[UIKeyboard usesInputSystemUI])
  {
    return promptIsVisible;
  }

  if ([(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [delegate2 dismissTextChoicePrompt];

    LOBYTE(promptIsVisible) = 1;
    return promptIsVisible;
  }

LABEL_2:
  LOBYTE(promptIsVisible) = 0;
  return promptIsVisible;
}

- (void)cancelPromptDisplay
{
  promptDisplayTimer = [(_UITextChoiceAccelerationAssistant *)self promptDisplayTimer];
  [promptDisplayTimer invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setPromptDisplayTimer:0];

  [(_UITextChoiceAccelerationAssistant *)self removePassthroughContainer];
}

- (void)removePassthroughContainer
{
  passthroughContainer = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];

  if (passthroughContainer)
  {
    passthroughContainer2 = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];
    [passthroughContainer2 removeFromSuperview];

    [(_UITextChoiceAccelerationAssistant *)self setPassthroughContainer:0];
  }
}

- (void)releaseSelectionGrabberAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_grabberSuppressionAssertion);
  [WeakRetained _invalidate];

  objc_storeWeak(&self->_grabberSuppressionAssertion, 0);
  [(_UIAssertion *)self->_textChoiceInteractionGrabberSuppressionAssertion _invalidate];
  textChoiceInteractionGrabberSuppressionAssertion = self->_textChoiceInteractionGrabberSuppressionAssertion;
  self->_textChoiceInteractionGrabberSuppressionAssertion = 0;
}

- (BOOL)promptIsVisible
{
  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  superview = [prompt superview];
  if (superview)
  {
    prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [prompt2 alpha];
    v7 = v6 > 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)selectionDidChange
{
  if ([(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
  {
    activeSelectedRange = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (activeSelectedRange)
    {
      v5 = activeSelectedRange;
      v4 = [activeSelectedRange end];
      [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:v4];

      activeSelectedRange = v5;
    }
  }
}

- (void)setNeedsUnderlineUpdate
{
  if (!self->_needsUpdate && !+[UIKeyboard isKeyboardProcess])
  {
    self->_needsUpdate = 1;

    [(_UITextChoiceAccelerationAssistant *)self performSelector:sel_updateUnderlineGeometryIfNeeded withObject:0 afterDelay:0.0];
  }
}

- (id)_existingUnderlineView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    _existingUnderlineView = [selectionViewManager _existingUnderlineView];
  }

  else
  {
    _existingUnderlineView = self->_selectionHighlightView;
  }

  return _existingUnderlineView;
}

- (id)selectionViewManager
{
  v23 = *MEMORY[0x1E69E9840];
  interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (interactionAssistant)
  {
    interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    _selectionViewManager = [interactionAssistant2 _selectionViewManager];
  }

  else
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (textInputResponder)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      _selectionViewManager = [textInputResponder2 _selectionDisplayInteraction];

      if (!_selectionViewManager)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        textInputResponder3 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        textInputView = [textInputResponder3 textInputView];
        interactions = [textInputView interactions];

        v12 = [interactions countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(interactions);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = v15;
                if ([v12 isActivated])
                {
                  v16 = v12;
                }

                else
                {
                  v16 = 0;
                }

                goto LABEL_22;
              }
            }

            v12 = [interactions countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v16 = 0;
LABEL_22:

        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v12;
        }

        _selectionViewManager = v17;
      }
    }

    else
    {
      _selectionViewManager = 0;
    }
  }

  return _selectionViewManager;
}

- (UITextInteractionAssistant)interactionAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);

  return WeakRetained;
}

- (void)updateUnderlineGeometryIfNeeded
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdate)
  {
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    isEditing = [_document isEditing];

    if ((isEditing & 1) == 0)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:0];
      [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
    }

    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [underlinedRanges copy];

    if (![v6 count])
    {
      [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:0];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v53 objects:v57 count:16];
    _underlineView = v7;
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      v12 = *v54;
      v50 = v7;
      v51 = *v54;
      while (2)
      {
        v13 = 0;
        v52 = v10;
        do
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v53 + 1) + 8 * v13);
          if (([v14 isEmpty] & 1) == 0)
          {
            _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v16 = [_document2 textInRange:v14];

            v17 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v14];
            underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            v19 = [underlinedWordData objectForKey:v17];

            if (v19)
            {
              documentTextToReplace = [v19 documentTextToReplace];
              v21 = [documentTextToReplace isEqualToString:v16];

              if (v21)
              {
                if ((v11 & 1) == 0)
                {
                  v22 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v14];
                  firstObject = [v22 firstObject];
                  [firstObject rect];
                  v25 = v24;
                  v27 = v26;

                  underlines = [v19 underlines];
                  firstObject2 = [underlines firstObject];
                  [firstObject2 rect];
                  v31 = v30;
                  v33 = v32;

                  if (v25 == v31 && v27 == v33)
                  {
                    lastObject = [v22 lastObject];
                    [lastObject rect];
                    v37 = v36;
                    v39 = v38;
                    underlines2 = [v19 underlines];
                    lastObject2 = [underlines2 lastObject];
                    [lastObject2 rect];
                    v43 = v42;
                    v45 = v44;

                    v7 = v50;
                    if (v37 == v43 && v39 == v45)
                    {

                      _underlineView = v50;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                underlines3 = [v19 underlines];
                v47 = [(_UITextChoiceAccelerationAssistant *)self updateUnderlineRects:underlines3 forRange:v14];
                [v19 setUnderlines:v47];

                v7 = v50;
                underlines4 = [v19 underlines];
                [v49 addObjectsFromArray:underlines4];

                v11 = 1;
              }

              v12 = v51;
            }

            else
            {
              [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v14];
            }

            v10 = v52;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [v7 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      if (v11)
      {
        _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [_underlineView setUnderlineRects:v49];
        goto LABEL_31;
      }
    }

    else
    {
LABEL_31:
    }

    self->_needsUpdate = 0;
  }
}

- (id)_document
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    textInput = [selectionViewManager textInput];
  }

  else
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    activeSelectionController = [selectionViewManager activeSelectionController];
    selection = [activeSelectionController selection];
    textInput = [selection document];
  }

  return textInput;
}

- (_UITextChoiceAccelerationAssistant)initWithInteractionAssistant:(id)assistant
{
  assistantCopy = assistant;
  v17.receiver = self;
  v17.super_class = _UITextChoiceAccelerationAssistant;
  v5 = [(_UITextChoiceAccelerationAssistant *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactionAssistant, assistantCopy);
    array = [MEMORY[0x1E695DF70] array];
    underlinedRanges = v6->_underlinedRanges;
    v6->_underlinedRanges = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    savedLists = v6->_savedLists;
    v6->_savedLists = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    underlinedWordData = v6->_underlinedWordData;
    v6->_underlinedWordData = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    underlinedWordDataForDictation = v6->_underlinedWordDataForDictation;
    v6->_underlinedWordDataForDictation = dictionary3;

    v6->_usingCustomInteraction = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_displayDidChange_ name:@"UITextSelectionWillScroll" object:0];
    [defaultCenter addObserver:v6 selector:sel_displayDidChange_ name:@"UITextSelectionWillZoom" object:0];
    [defaultCenter addObserver:v6 selector:sel_updatePromptLocation_ name:@"UIWindowSceneDidEndLiveResizeNotification" object:0];
  }

  return v6;
}

- (_UITextChoiceAccelerationAssistant)initWithTextInputResponder:(id)responder
{
  responderCopy = responder;
  v5 = [(_UITextChoiceAccelerationAssistant *)self initWithInteractionAssistant:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textInputResponder, responderCopy);
    v6->_usingCustomInteraction = 1;
    v7 = [[_UITextChoiceInteraction alloc] initWithDelegate:v6];
    textChoiceInteraction = v6->_textChoiceInteraction;
    v6->_textChoiceInteraction = v7;
  }

  return v6;
}

- (void)dealloc
{
  prompt = self->_prompt;
  if (prompt)
  {
    [(_UITextChoiceAccelerationBubble *)prompt removeFromSuperview];
    v4 = self->_prompt;
    self->_prompt = 0;
  }

  v5.receiver = self;
  v5.super_class = _UITextChoiceAccelerationAssistant;
  [(_UITextChoiceAccelerationAssistant *)&v5 dealloc];
}

- (BOOL)textChoiceInteraction:(id)interaction shouldRespondToTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction]|| [(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    return 0;
  }

  textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  v9 = [textInputResponder closestPositionToPoint:{x, y}];

  v7 = 0;
  if (v9)
  {
    v10 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v9];

    if (v10)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)textChoiceInteraction:(id)interaction receivedTapAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (![(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v18 = [textInputResponder closestPositionToPoint:{x, y}];

    if (v18)
    {
      v15 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v18];
      if (v15)
      {
        delegate = v15;
        if ([(_UITextChoiceAccelerationAssistant *)self showDictationChoicesForTextInRange:v15])
        {
          goto LABEL_8;
        }

        textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v17 = [(_UITextChoiceAccelerationAssistant *)self showAutocorrectReplacementChoicesIfNeeded:textInputResponder2 forRange:delegate];

        if (v17)
        {
          goto LABEL_11;
        }
      }
    }

    [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
    goto LABEL_11;
  }

  [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
  textInputResponder3 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  v18 = [textInputResponder3 closestPositionToPoint:{x, y}];

  v8 = v18;
  if (!v18)
  {
    goto LABEL_12;
  }

  textInputResponder4 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (textInputResponder4)
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    textInputResponder5 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    textInputResponder6 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v13 = [textInputResponder6 textRangeFromPosition:v18 toPosition:v18];
    [delegate updateTextChoicePromptSelection:textInputResponder5 toRange:v13];

LABEL_8:
  }

LABEL_11:
  v8 = v18;
LABEL_12:
}

- (id)createPromptWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [_UITextChoiceAccelerationBubble alloc];
  v6 = [(_UITextChoiceAccelerationBubble *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __72___UITextChoiceAccelerationAssistant_createPromptWithCompletionHandler___block_invoke;
  v15 = &unk_1E7109338;
  objc_copyWeak(&v18, &location);
  v7 = v6;
  v16 = v7;
  v8 = handlerCopy;
  v17 = v8;
  v9 = [UIAction actionWithHandler:&v12];
  [(UIControl *)v7 addAction:v9 forControlEvents:64, v12, v13, v14, v15];
  v10 = v7;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_addUnderlineView
{
  selectionHighlightView = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];

  if (!selectionHighlightView)
  {
    v4 = [_UITextUnderlineView alloc];
    v5 = [(_UITextUnderlineView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UITextChoiceAccelerationAssistant *)self setSelectionHighlightView:v5];
  }

  selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
  _hostViewBelowText = [selectionViewManager _hostViewBelowText];

  selectionHighlightView2 = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];
  [_hostViewBelowText addSubview:selectionHighlightView2];
}

- (id)_underlineView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    _underlineView = [selectionViewManager _underlineView];
  }

  else
  {
    _underlineView = self->_selectionHighlightView;
  }

  return _underlineView;
}

- (id)textInputView
{
  interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (interactionAssistant)
  {
    interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    view = [interactionAssistant2 view];
    textInputView = [view textInputView];
  }

  else
  {
    textInputView = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (!textInputView)
    {
      goto LABEL_6;
    }

    interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    textInputView = [interactionAssistant2 textInputView];
  }

LABEL_6:

  return textInputView;
}

- (void)activateUnderlineViewIfNeeded
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];

    if (!selectionViewManager)
    {
      interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      [interactionAssistant activate];
    }
  }

  else
  {
    selectionHighlightView = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];

    if (!selectionHighlightView)
    {

      [(_UITextChoiceAccelerationAssistant *)self _addUnderlineView];
    }
  }
}

- (void)refreshExistingUnderlines
{
  v80 = *MEMORY[0x1E69E9840];
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v4 = [underlinedRanges copy];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (!v5)
    {
      goto LABEL_48;
    }

    v6 = v5;
    v7 = *v75;
    v63 = *v75;
    while (1)
    {
      v8 = 0;
      v64 = v6;
      do
      {
        if (*v75 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v74 + 1) + 8 * v8);
        _document = [(_UITextChoiceAccelerationAssistant *)self _document];
        v11 = [_document textInRange:v9];

        v12 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v9];
        underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
        v14 = [underlinedWordData objectForKey:v12];

        if (!v14)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v9];
          goto LABEL_44;
        }

        documentTextToReplace = [v14 documentTextToReplace];
        v16 = [documentTextToReplace isEqualToString:v11];

        if (v16)
        {
          underlines = [v14 underlines];
          v18 = [(_UITextChoiceAccelerationAssistant *)self updateUnderlineRects:underlines forRange:v9];
          [v14 setUnderlines:v18];

          underlines2 = [v14 underlines];
          [v65 addObjectsFromArray:underlines2];

          goto LABEL_44;
        }

        start = [v9 start];
        _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
        endOfDocument = [_document2 endOfDocument];

        v67 = endOfDocument;
        if (endOfDocument)
        {
          if (!start || (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 comparePosition:endOfDocument toPosition:start], v23, v24 == -1))
          {
            v25 = endOfDocument;

            start = v25;
          }
        }

        _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer = [_document3 tokenizer];
        v28 = [tokenizer rangeEnclosingPosition:start withGranularity:1 inDirection:1];

        v68 = start;
        v69 = v12;
        if (v28 && ([v28 isEmpty] & 1) == 0)
        {
          _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v29 = [_document4 textInRange:v28];

          documentTextToReplace2 = [v14 documentTextToReplace];
          LOBYTE(_document4) = [documentTextToReplace2 isEqualToString:v29];

          if (_document4)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v29 = v11;
        }

        _document5 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer2 = [_document5 tokenizer];
        v32 = [tokenizer2 rangeEnclosingPosition:start withGranularity:1 inDirection:0];

        if (v32 && ([v32 isEmpty] & 1) == 0)
        {
          _document6 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v33 = [_document6 textInRange:v32];

          documentTextToReplace3 = [v14 documentTextToReplace];
          LOBYTE(_document6) = [documentTextToReplace3 isEqualToString:v33];

          if (_document6)
          {
            v29 = v33;
            v28 = v32;
LABEL_30:
            underlinedRanges2 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            v46 = [underlinedRanges2 indexOfObject:v9];

            underlinedRanges3 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            v48 = underlinedRanges3;
            v62 = v29;
            if (v46 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [underlinedRanges3 addObject:v28];
            }

            else
            {
              [underlinedRanges3 replaceObjectAtIndex:v46 withObject:v28];
            }

            v49 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v28];
            array = [MEMORY[0x1E695DF70] array];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v51 = v49;
            v52 = [v51 countByEnumeratingWithState:&v70 objects:v78 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v71;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v71 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v56 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:*(*(&v70 + 1) + 8 * i) forCandidate:0, v62];
                  if (v56)
                  {
                    [array addObject:v56];
                  }
                }

                v53 = [v51 countByEnumeratingWithState:&v70 objects:v78 count:16];
              }

              while (v53);
            }

            [v14 setUnderlines:array];
            [v65 addObjectsFromArray:array];
            v57 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v28];
            underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            v12 = v69;
            [underlinedWordData2 removeObjectForKey:v69];

            underlinedWordData3 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            [underlinedWordData3 setObject:v14 forKey:v57];

            v7 = v63;
            v6 = v64;
            v29 = v62;
            goto LABEL_43;
          }
        }

        else
        {
          v33 = v29;
        }

        _document7 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer3 = [_document7 tokenizer];
        v36 = [tokenizer3 positionFromPosition:start toBoundary:1 inDirection:0];

        _document8 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer4 = [_document8 tokenizer];
        v28 = [tokenizer4 rangeEnclosingPosition:v36 withGranularity:1 inDirection:0];

        if (v28 && ![v28 isEmpty])
        {
          _document9 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v29 = [_document9 textInRange:v28];

          documentTextToReplace4 = [v14 documentTextToReplace];
          LODWORD(_document9) = [documentTextToReplace4 isEqualToString:v29];

          v12 = v69;
          if (_document9)
          {
            goto LABEL_30;
          }

          v7 = v63;
          v6 = v64;
        }

        else
        {

          v29 = v33;
          v7 = v63;
          v6 = v64;
          v12 = v69;
        }

        [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v9];
LABEL_43:

        v11 = v29;
LABEL_44:

        ++v8;
      }

      while (v8 != v6);
      v60 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
      v6 = v60;
      if (!v60)
      {
LABEL_48:

        _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [_underlineView setUnderlineRects:v65];

        return;
      }
    }
  }
}

- (void)updateUnderlinesForAddedRange:(id)range
{
  rangeCopy = range;
  [(_UITextChoiceAccelerationAssistant *)self activateUnderlineViewIfNeeded];
  v4 = rangeCopy;
  if (rangeCopy)
  {
    start = [rangeCopy start];
    v6 = [(_UITextChoiceAccelerationAssistant *)self positionIsAtDocumentStart:start];

    if (!v6)
    {
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      tokenizer = [_document tokenizer];
      start2 = [rangeCopy start];
      v10 = [tokenizer positionFromPosition:start2 toBoundary:2 inDirection:1];

      if (v10)
      {
        _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
        start3 = [rangeCopy start];
        v13 = [_document2 comparePosition:start3 toPosition:v10];

        if (v13)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeUnderlinesBeforePosition:v10];
        }
      }
    }

    lastAddedPosition = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];

    if (lastAddedPosition)
    {
      _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v16 = [rangeCopy end];
      lastAddedPosition2 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
      v18 = [_document3 comparePosition:v16 toPosition:lastAddedPosition2];

      v19 = [rangeCopy end];
      if (v18 != 1)
      {
        [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:v19];
LABEL_12:

        v4 = rangeCopy;
        goto LABEL_13;
      }
    }

    else
    {
      v19 = [rangeCopy end];
    }

    [(_UITextChoiceAccelerationAssistant *)self setLastAddedPosition:v19];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)addUnderlinesForCandidate:(id)candidate range:(id)range
{
  candidateCopy = candidate;
  rangeCopy = range;
  [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesForAddedRange:rangeCopy];
  v7 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:candidateCopy range:rangeCopy];
  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && [v7 count])
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (textInputResponder)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      textInputView = [textInputResponder2 textInputView];
      textChoiceInteraction = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [textInputView addInteraction:textChoiceInteraction];
    }

    _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    [_underlineView addUnderlines:v7 animated:0];

    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [underlinedRanges addObject:rangeCopy];

    v14 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:candidateCopy range:rangeCopy];
    [v14 setUnderlines:v7];
    [v14 setUnderlineStyle:1];
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v16 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
    [underlinedWordData setObject:v14 forKey:v16];
  }
}

- (void)addUnderlineForCandidate:(id)candidate range:(id)range
{
  candidateCopy = candidate;
  rangeCopy = range;
  if (+[UIKeyboard isKeyboardProcess])
  {
    candidate = [candidateCopy candidate];
    v8 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:candidate];

    candidate2 = [candidateCopy candidate];
    v10 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:candidate2];

    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [underlinedRanges addObject:v8];

    v12 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:candidateCopy range:v8];
    [v12 setUnderlines:v10];
    [v12 setUnderlineStyle:0];
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v14 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v8];
    [underlinedWordData setObject:v12 forKey:v14];
  }

  if (rangeCopy)
  {
    if (([rangeCopy isEmpty] & 1) == 0)
    {
      start = [rangeCopy start];
      if (start)
      {
        v16 = start;
        v17 = [rangeCopy end];

        if (v17)
        {
          [(_UITextChoiceAccelerationAssistant *)self addUnderlinesForCandidate:candidateCopy range:rangeCopy];
        }
      }
    }
  }
}

- (void)underlineTextInRange:(id)range revertText:(id)text textChoices:(id)choices isActiveEditingSession:(BOOL)session
{
  sessionCopy = session;
  rangeCopy = range;
  textCopy = text;
  choicesCopy = choices;
  [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesForAddedRange:rangeCopy];
  v12 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:0 range:rangeCopy];
  v13 = +[UIKeyboard isKeyboardProcess];
  if (rangeCopy && !v13)
  {
    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [underlinedRanges addObject:rangeCopy];

    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    v16 = [_document textInRange:rangeCopy];

    if (v16 && [v16 length])
    {
      v17 = [_UIReplacementCandidate candidateForDocumentText:v16 revertText:textCopy textChoices:0 range:rangeCopy underlineStyle:1 promptStyle:1 promptButton:2];
      [v17 setRevertText:textCopy];
      [v17 setTextChoices:choicesCopy];
      v18 = [v12 count];
      v19 = v18 != 0;
      if (v18)
      {
        [v17 setUnderlines:v12];
      }

      [v17 setUnderlineStyle:1];
      underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
      v21 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
      [underlinedWordData setObject:v17 forKey:v21];

      if (sessionCopy)
      {
        underlinedWordDataForDictation = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
        v23 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
        [underlinedWordDataForDictation setObject:v17 forKey:v23];
      }
    }

    else
    {
      v19 = 0;
    }

    _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    [_underlineView addUnderlines:v12 animated:0];

    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (textInputResponder)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      textInputView = [textInputResponder2 textInputView];
      textChoiceInteraction = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [textInputView addInteraction:textChoiceInteraction];
    }

    if (v19)
    {
      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }
}

- (id)underlineRectsForCandidate:(id)candidate range:(id)range
{
  candidateCopy = candidate;
  v7 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:range];
  v8 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:candidateCopy selectionRects:v7];

  return v8;
}

- (id)underlineRectsForCandidate:(id)candidate selectionRects:(id)rects
{
  v21 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  rectsCopy = rects;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = rectsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:*(*(&v16 + 1) + 8 * i) forCandidate:candidateCopy, v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  if ([(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction]&& ([(_UITextChoiceAccelerationAssistant *)self textInputResponder], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v7 = [textInputResponder selectionRectsForRange:rangeCopy];
  }

  else
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [textInputResponder _underlineRectsByDocumentLineForSelectionRange:rangeCopy];
  }

  v8 = v7;

  return v8;
}

- (id)updateUnderlineRects:(id)rects forRange:(id)range
{
  v33[1] = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  rangeCopy = range;
  v8 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:rangeCopy];
  if (+[UIKeyboard isKeyboardProcess])
  {
    v9 = +[UIKeyboard currentDocumentState];
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    v11 = [rangeCopy _asNSRangeRelativeToDocument:_document];
    v13 = v12;

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 firstRectForCharacterRange:{v11, v13}];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputOverlayContainer = [delegate inputOverlayContainer];
      v24 = [_UIMutableTextSelectionRect selectionRectWithRect:inputOverlayContainer fromView:v15, v17, v19, v21];

      v33[0] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

      v8 = v25;
    }
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v8 count])
  {
    v27 = 0;
    while (1)
    {
      v28 = [v8 objectAtIndex:v27];
      v29 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:v28 forCandidate:0];
      if (v27 < [rectsCopy count])
      {
        if (v29)
        {
          break;
        }
      }

      if (v29)
      {
        goto LABEL_11;
      }

LABEL_12:

      if (++v27 >= [v8 count])
      {
        goto LABEL_13;
      }
    }

    v30 = [rectsCopy objectAtIndex:v27];
    [v29 setUnderlineType:{objc_msgSend(v30, "underlineType")}];
    underlineColor = [v30 underlineColor];
    [v29 setUnderlineColor:underlineColor];

LABEL_11:
    [v26 addObject:v29];
    goto LABEL_12;
  }

LABEL_13:

  return v26;
}

- (id)keyFromRange:(id)range
{
  rangeCopy = range;
  _document = [(_UITextChoiceAccelerationAssistant *)self _document];
  v6 = [rangeCopy _asNSRangeRelativeToDocument:_document];
  v8 = v7;

  v9 = MEMORY[0x1E696AEC0];
  v14.location = v6;
  v14.length = v8;
  v10 = NSStringFromRange(v14);
  v11 = [v9 stringWithFormat:@"%@", v10];

  return v11;
}

- (void)_removeUnderlinesRelativeToPosition:(id)position compare:(int64_t)compare
{
  v30 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v7 = [underlinedRanges copy];

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        start = [v12 start];
        if (compare == -1)
        {
          v14 = [v12 end];

          start = v14;
        }

        _document = [(_UITextChoiceAccelerationAssistant *)self _document];
        v16 = [_document comparePosition:start toPosition:positionCopy];

        if (v16 == compare)
        {
          underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v18 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v12];
          v19 = [underlinedWordData objectForKey:v18];

          if (v19)
          {
            underlines = [v19 underlines];
            [v22 addObjectsFromArray:underlines];
          }

          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
  [_underlineView removeUnderlines:v22 animated:1];
}

- (void)removeUnderlinesBeforePosition:(id)position
{
  positionCopy = position;
  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v5 = [underlinedRanges count];

  v6 = positionCopy;
  if (positionCopy && v5)
  {
    [(_UITextChoiceAccelerationAssistant *)self _removeUnderlinesRelativeToPosition:positionCopy compare:-1];
    v6 = positionCopy;
  }
}

- (void)removeUnderlinesAfterPosition:(id)position
{
  if (position)
  {
    [(_UITextChoiceAccelerationAssistant *)self _removeUnderlinesRelativeToPosition:position compare:1];
  }
}

- (void)clearUnderlinesIfNeededBeforePosition:(id)position
{
  positionCopy = position;
  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v5 = [underlinedRanges count];

  v6 = positionCopy;
  if (positionCopy && v5)
  {
    if ([(_UITextChoiceAccelerationAssistant *)self positionIsAtDocumentStart:positionCopy])
    {
      [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:0];
      [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
LABEL_15:
      v6 = positionCopy;
      goto LABEL_16;
    }

    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    tokenizer = [_document tokenizer];
    v9 = [tokenizer positionFromPosition:positionCopy toBoundary:1 inDirection:1];

    if (v9)
    {
      _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v11 = [_document2 textRangeFromPosition:v9 toPosition:positionCopy];

      if (v11 && (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v12 = objc_claimAutoreleasedReturnValue(), [v12 textInRange:v11], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @" "), v13, v12, (v14 & 1) != 0))
      {
        _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer2 = [_document3 tokenizer];
        v17 = [tokenizer2 positionFromPosition:v9 toBoundary:1 inDirection:1];

        v9 = v17;
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
      tokenizer3 = [_document4 tokenizer];
      v20 = [tokenizer3 positionFromPosition:v9 toBoundary:1 inDirection:1];

      if (v20)
      {
        [(_UITextChoiceAccelerationAssistant *)self removeUnderlinesBeforePosition:v20];
      }

      [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
    }

LABEL_14:
    [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:positionCopy];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateUnderlinesIfNeededAfterPosition:(id)position
{
  positionCopy = position;
  lastAddedPosition = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];

  if (lastAddedPosition)
  {
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    lastAddedPosition2 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
    v7 = [_document comparePosition:positionCopy toPosition:lastAddedPosition2];

    if (v7 == -1)
    {
      _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
      tokenizer = [_document2 tokenizer];
      v10 = [tokenizer positionFromPosition:positionCopy toBoundary:2 inDirection:0];

      if (v10)
      {
        _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
        lastAddedPosition3 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
        v13 = [_document3 offsetFromPosition:v10 toPosition:lastAddedPosition3];

        if (v13 >= 2)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:1];
          [(_UITextChoiceAccelerationAssistant *)self setLastAddedPosition:positionCopy];
        }
      }

      [(_UITextChoiceAccelerationAssistant *)self refreshExistingUnderlines];
    }
  }
}

- (void)clearUnderlineForPosition:(id)position
{
  positionCopy = position;
  if (positionCopy)
  {
    v14 = positionCopy;
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    tokenizer = [_document tokenizer];
    v7 = [tokenizer rangeEnclosingPosition:v14 withGranularity:1 inDirection:1];

    if (+[UIKeyboard usesInputSystemUI]&& !v7)
    {
      _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
      tokenizer2 = [_document2 tokenizer];
      v7 = [tokenizer2 positionFromPosition:v14 toBoundary:1 inDirection:1];

      if (v7)
      {
        _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
        tokenizer3 = [_document3 tokenizer];
        v12 = [tokenizer3 positionFromPosition:v7 toBoundary:1 inDirection:1];

        if (v12)
        {
          _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v7 = [_document4 textRangeFromPosition:v12 toPosition:v14];

          goto LABEL_7;
        }

        v7 = 0;
      }

LABEL_10:

      positionCopy = v14;
      goto LABEL_11;
    }

LABEL_7:
    if (v7)
    {
      [(_UITextChoiceAccelerationAssistant *)self clearUnderlinesInRange:v7 animated:1];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)clearUnderlinesInRange:(id)range animated:(BOOL)animated
{
  animatedCopy = animated;
  v47 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (rangeCopy)
  {
    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [underlinedRanges copy];

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v9 = v7;
    v10 = *v37;
    *&v8 = 138412802;
    v31 = v8;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        start = [v12 start];
        if (!start || (v14 = start, [v12 end], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
        {
          v26 = _UIKeyboardLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            start2 = [v12 start];
            v29 = [v12 end];
            *buf = v31;
            v41 = v12;
            v42 = 2112;
            v43 = start2;
            v44 = 2112;
            v45 = v29;
            _os_log_error_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Error: Underlined range %@: %@ -> %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        _document = [(_UITextChoiceAccelerationAssistant *)self _document];
        start3 = [rangeCopy start];
        v18 = [v12 end];
        v19 = [_document comparePosition:start3 toPosition:v18];

        _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v21 = [rangeCopy end];
        start4 = [v12 start];
        v23 = [_document2 comparePosition:v21 toPosition:start4];

        if (v19 != 1 && v23 != -1)
        {
          underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v25 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v12];
          v26 = [underlinedWordData objectForKey:v25];

          if (v26)
          {
            underlines = [v26 underlines];
            [v32 addObjectsFromArray:underlines];
          }

          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v12 animated:animatedCopy];
LABEL_16:

          continue;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (!v9)
      {
LABEL_19:

        _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [_underlineView removeUnderlines:v32 animated:animatedCopy];

        break;
      }
    }
  }
}

- (void)adjustRangesAfterPosition:(id)position byOffset:(int64_t)offset
{
  v46 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  if (!positionCopy || !offset)
  {
    [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    goto LABEL_21;
  }

  offsetCopy = offset;
  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v8 = [underlinedRanges copy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v42;
  v36 = *v42;
  v37 = positionCopy;
  do
  {
    v12 = 0;
    v40 = v10;
    do
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v41 + 1) + 8 * v12);
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      start = [v13 start];
      v16 = [_document comparePosition:start toPosition:positionCopy];

      if (v16 != -1)
      {
        v17 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v13];
        underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
        v19 = [underlinedWordData objectForKey:v17];

        if (v19)
        {
          _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
          start2 = [v13 start];
          underlinedRanges5 = [_document2 positionFromPosition:start2 offset:offsetCopy];

          _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v24 = [v13 end];
          v25 = [_document3 positionFromPosition:v24 offset:offsetCopy];

          _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v27 = [_document4 textRangeFromPosition:underlinedRanges5 toPosition:v25];

          underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          [underlinedWordData2 removeObjectForKey:v17];

          underlinedWordData3 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v30 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v27];
          [underlinedWordData3 setObject:v19 forKey:v30];

          underlinedRanges2 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
          v32 = [underlinedRanges2 indexOfObject:v13];

          if (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            underlinedRanges3 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [underlinedRanges3 replaceObjectAtIndex:v32 withObject:v27];
          }

          v11 = v36;
          positionCopy = v37;
LABEL_15:

          v10 = v40;
        }

        else
        {
          underlinedRanges4 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
          v35 = [underlinedRanges4 indexOfObject:v13];

          if (v35 != 0x7FFFFFFFFFFFFFFFLL)
          {
            underlinedRanges5 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [underlinedRanges5 removeObjectAtIndex:v35];
            goto LABEL_15;
          }
        }
      }

      ++v12;
    }

    while (v10 != v12);
    v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v10);
LABEL_19:

  [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
LABEL_21:
}

- (BOOL)positionIsAtDocumentStart:(id)start
{
  startCopy = start;
  _document = [(_UITextChoiceAccelerationAssistant *)self _document];
  beginningOfDocument = [_document beginningOfDocument];

  v7 = 0;
  if (startCopy && beginningOfDocument)
  {
    _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [_document2 comparePosition:startCopy toPosition:beginningOfDocument] == 0;
  }

  return v7;
}

- (id)underlineRectForTextSelectionRect:(id)rect forCandidate:(id)candidate
{
  rectCopy = rect;
  candidateCopy = candidate;
  [rectCopy rect];
  if (v8 == 0.0 || ([(_UITextChoiceAccelerationAssistant *)self convertedSelectionRect:rectCopy], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, CGRectEqualToRect(v27, *MEMORY[0x1E695F050])))
  {
    v13 = 0;
    goto LABEL_4;
  }

  [rectCopy baselineOffset];
  if (v15 == 0.0)
  {
    v16 = height * 0.75;
  }

  else
  {
    v16 = v15;
  }

  if (rectCopy)
  {
    [rectCopy transform];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  v13 = [_UITextUnderlineRect underlineRectWithRect:&v23 offset:x transform:y, width, height, v16];
  defaultUnderlineColor = [(_UITextChoiceAccelerationAssistant *)self defaultUnderlineColor];
  if (candidateCopy)
  {
    if (TIGetShowCandidateConfidenceValue_onceToken != -1)
    {
      dispatch_once(&TIGetShowCandidateConfidenceValue_onceToken, &__block_literal_global_1032);
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v19 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"ShowCandidateConfidence"];

    LODWORD(mEMORY[0x1E69D9680]) = [v19 BOOLValue];
    if (mEMORY[0x1E69D9680])
    {
      confidence = [candidateCopy confidence];
      if (confidence > 1)
      {
        if (confidence == 3)
        {
          v21 = +[UIColor systemGrayColor];
          goto LABEL_26;
        }

        if (confidence == 2)
        {
          v21 = +[UIColor systemRedColor];
          goto LABEL_26;
        }
      }

      else
      {
        if (!confidence)
        {
          v21 = +[UIColor systemGreenColor];
          goto LABEL_26;
        }

        if (confidence == 1)
        {
          v21 = +[UIColor systemYellowColor];
LABEL_26:
          v22 = v21;

          defaultUnderlineColor = v22;
        }
      }
    }
  }

  [v13 setUnderlineColor:{defaultUnderlineColor, v23, v24, v25}];

LABEL_4:

  return v13;
}

- (CGRect)convertedSelectionRect:(id)rect
{
  rectCopy = rect;
  _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
  if (_underlineView || ([(_UITextChoiceAccelerationAssistant *)self activateUnderlineViewIfNeeded], [(_UITextChoiceAccelerationAssistant *)self _underlineView], (_underlineView = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = _underlineView;
    [rectCopy rect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    textInputView = [_document textInputView];
    [v6 convertRect:textInputView fromView:{v8, v10, v12, v14}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v18 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 8);
    v22 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
  }

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)defaultUnderlineColor
{
  v3 = +[UIKeyboard currentDocumentState];
  autocorrectTextBackgroundColor = [v3 autocorrectTextBackgroundColor];

  if (autocorrectTextBackgroundColor)
  {
    insertionPointColor = [v3 insertionPointColor];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [insertionPointColor cgColor]);

    goto LABEL_9;
  }

  _document = [(_UITextChoiceAccelerationAssistant *)self _document];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
    insertionPointColor2 = [_document2 insertionPointColor];
    goto LABEL_7;
  }

  textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (textInputResponder)
  {
    _document2 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    insertionPointColor2 = [_document2 tintColor];
LABEL_7:
    v6 = insertionPointColor2;

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v6 = +[UIColor insertionPointColor];
LABEL_9:
  v21 = 0;
  v19 = 0.0;
  v20 = 0.0;
  if ([v6 getHue:&v21 saturation:&v20 brightness:&v19 alpha:0])
  {
    v12 = v19 * (v20 * -0.5 + 1.0);
    v13 = 0.0;
    if (v12 != 0.0 && v12 != 1.0)
    {
      v13 = (v19 - v12) / fmin(v12, 1.0 - v12) * 1.2;
    }

    v20 = fmin(v13, 1.0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59___UITextChoiceAccelerationAssistant_defaultUnderlineColor__block_invoke;
    v18[3] = &__block_descriptor_48_e36___UIColor_16__0__UITraitCollection_8l;
    v18[4] = v21;
    *&v18[5] = v20;
    v15 = [UIColor colorWithDynamicProvider:v18];
  }

  else
  {
    v15 = [v6 colorWithAlphaComponent:0.4];
  }

  v16 = v15;

  return v16;
}

- (void)updateSelectionHighlights
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionAssistant);

  if (WeakRetained)
  {
    interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    obj = [interactionAssistant obtainSelectionGrabberSuppressionAssertion];

    v5 = objc_loadWeakRetained(&self->_interactionAssistant);
    [v5 setGrabberSuppressionAssertion:obj];

    objc_storeWeak(&self->_grabberSuppressionAssertion, obj);
    v6 = objc_loadWeakRetained(&self->_interactionAssistant);
    [v6 setNeedsSelectionDisplayUpdate];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_textInputResponder);

    if (!v7)
    {
      return;
    }

    obj = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    _obtainGrabberSuppressionAssertion = [obj _obtainGrabberSuppressionAssertion];
    textChoiceInteractionGrabberSuppressionAssertion = self->_textChoiceInteractionGrabberSuppressionAssertion;
    self->_textChoiceInteractionGrabberSuppressionAssertion = _obtainGrabberSuppressionAssertion;

    [obj setNeedsSelectionUpdate];
    [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
  }
}

- (id)textHighlightColor
{
  v3 = +[UIKeyboard currentDocumentState];
  autocorrectTextBackgroundColor = [v3 autocorrectTextBackgroundColor];

  if (autocorrectTextBackgroundColor)
  {
    autocorrectTextBackgroundColor2 = [v3 autocorrectTextBackgroundColor];
    selectionHighlightColor = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [autocorrectTextBackgroundColor2 cgColor]);
LABEL_5:
    v9 = selectionHighlightColor;
LABEL_6:

    goto LABEL_7;
  }

  _document = [(_UITextChoiceAccelerationAssistant *)self _document];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    autocorrectTextBackgroundColor2 = [(_UITextChoiceAccelerationAssistant *)self _document];
    selectionHighlightColor = [autocorrectTextBackgroundColor2 selectionHighlightColor];
    goto LABEL_5;
  }

  textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (textInputResponder)
  {
    textInputView = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    traitCollection = [textInputView traitCollection];
    v14 = dbl_18A679CF0[[traitCollection userInterfaceStyle] == 2];

    autocorrectTextBackgroundColor2 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    tintColor = [autocorrectTextBackgroundColor2 tintColor];
    v9 = [tintColor colorWithAlphaComponent:v14];

    goto LABEL_6;
  }

  v9 = +[UIColor selectionHighlightColor];
LABEL_7:

  return v9;
}

- (id)nearestDictationPromptForPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  v52 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v9 = [dictationVoiceEditingPrompts count];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = dictationVoiceEditingPrompts;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v47;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          [v16 convertPoint:0 fromView:{x, y}];
          if ([v16 pointInside:eventCopy withEvent:?])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    v17 = [v10 count];
    if (v17)
    {
      if (v17 == 1)
      {
        firstObject = [v10 firstObject];
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = v10;
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          firstObject = 0;
          v22 = *v43;
          v23 = 1.79769313e308;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v42 + 1) + 8 * j);
              backgroundView = [v25 backgroundView];
              [backgroundView frame];
              v28 = v27;
              v30 = v29;
              v32 = v31;
              v34 = v33;

              v54.origin.x = v28;
              v54.origin.y = v30;
              v54.size.width = v32;
              v54.size.height = v34;
              MidX = CGRectGetMidX(v54);
              v55.origin.x = v28;
              v55.origin.y = v30;
              v55.size.width = v32;
              v55.size.height = v34;
              [v25 convertPoint:0 toView:{MidX, CGRectGetMidY(v55)}];
              v38 = hypot(x - v36, y - v37);
              if (v38 < v23)
              {
                v39 = v38;
                v40 = v25;

                firstObject = v40;
                v23 = v39;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v21);
        }

        else
        {
          firstObject = 0;
        }
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)autocorrectInlinePromptIsVisible
{
  showingAutocorrectInlinePrompt = [(_UITextChoiceAccelerationAssistant *)self showingAutocorrectInlinePrompt];
  if (showingAutocorrectInlinePrompt)
  {

    LOBYTE(showingAutocorrectInlinePrompt) = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  }

  return showingAutocorrectInlinePrompt;
}

- (BOOL)showingPrompt
{
  if ([(_UITextChoiceAccelerationAssistant *)self showingAutocorrectInlinePrompt])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_grabberSuppressionAssertion);
  v3 = WeakRetained || self->_textChoiceInteractionGrabberSuppressionAssertion || [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];

  return v3;
}

- (BOOL)showingPromptsIncludingDictationChoices
{
  if ([(_UITextChoiceAccelerationAssistant *)self showingAutocorrectInlinePrompt]|| [(_UITextChoiceAccelerationAssistant *)self promptIsVisible])
  {
    return 1;
  }

  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v3 = [dictationVoiceEditingPrompts count] != 0;

  return v3;
}

- (void)updateActivePromptForCandidate:(id)candidate displayRects:(id)rects highlightOnly:(BOOL)only
{
  onlyCopy = only;
  v33[1] = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  rectsCopy = rects;
  parentViewForPrompt = [(_UITextChoiceAccelerationAssistant *)self parentViewForPrompt];
  if (!parentViewForPrompt)
  {
LABEL_11:
    [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
    goto LABEL_16;
  }

  keepPromptActive = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];
  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  superview = [prompt superview];
  v14 = superview == parentViewForPrompt;

  prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  prompt3 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [parentViewForPrompt _convertVisualAltitude:prompt3 toView:0.0];
  [prompt2 _setVisualAltitude:?];

  if (![rectsCopy count])
  {
    keepPromptActive2 = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];
    if (!rectsCopy && !candidateCopy && keepPromptActive2)
    {
      prompt4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [prompt4 hideForNow];

      [(_UITextChoiceAccelerationAssistant *)self removePassthroughContainer];
    }

    goto LABEL_11;
  }

  v17 = v14 && keepPromptActive;
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:1];
  firstObject = [rectsCopy firstObject];
  if (onlyCopy)
  {
    if (!v17)
    {
      prompt5 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [prompt5 showChoices:0];
    }

    prompt6 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputOverlayContainer = [delegate inputOverlayContainer];
    textHighlightColor = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
    [prompt6 updateTextBoxHighlightForRect:firstObject inTextView:inputOverlayContainer parentView:parentViewForPrompt highlightColor:textHighlightColor];
  }

  else
  {
    if (!v17)
    {
      prompt7 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [prompt7 updateButtonForType:1];

      prompt8 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      v33[0] = candidateCopy;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v29 = _candidatesChoicesFromTextChoices(v28, 0);
      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputOverlayContainer2 = [delegate2 inputOverlayContainer];
      [prompt8 updateWithChoices:v29 fromParentView:parentViewForPrompt referenceTextView:inputOverlayContainer2 presentedFromRect:firstObject textHighlightColor:0];

      prompt9 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [prompt9 updateButtonName:@"xmark" placement:1 originalText:candidateCopy];
    }

    prompt6 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputOverlayContainer = [delegate inputOverlayContainer];
    textHighlightColor = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
    [prompt6 updateForSingleWord:candidateCopy textAnchorRect:firstObject inTextView:inputOverlayContainer parentView:parentViewForPrompt highlightColor:textHighlightColor];
  }

  [(_UITextChoiceAccelerationAssistant *)self setupPassthroughContainer];
LABEL_16:
}

- (void)setupPassthroughContainer
{
  passthroughContainer = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];

  if (!passthroughContainer)
  {
    textInputView = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    _window = [textInputView _window];
    windowScene = [_window windowScene];
    keyWindow = [windowScene keyWindow];

    if (keyWindow)
    {
      v7 = [_UITextChoiceAccelerationPassthroughView alloc];
      [keyWindow bounds];
      v8 = [(_UITextChoiceAccelerationPassthroughView *)v7 initWithFrame:self delegate:?];
      [(UIView *)v8 setAutoresizingMask:18];
      [keyWindow addSubview:v8];
      [(_UITextChoiceAccelerationAssistant *)self setPassthroughContainer:v8];
    }
  }
}

- (void)didRecognizeDismissal
{
  if ([(_UITextChoiceAccelerationAssistant *)self keepPromptActive])
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [delegate acceptAutocorrectionWithCompletionHandler:0];
  }

  else
  {
    if (![(_UITextChoiceAccelerationAssistant *)self dismissIfPresented])
    {
      goto LABEL_7;
    }

    delegate = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (delegate)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:delegate animated:0];
      interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      [interactionAssistant selectionChanged];
    }
  }

LABEL_7:

  [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
}

- (BOOL)showPromptForReplacementCandidate:(id)candidate originalCandidate:(id)originalCandidate delay:(double)delay
{
  candidateCopy = candidate;
  originalCandidateCopy = originalCandidate;
  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
  parentViewForPrompt = [(_UITextChoiceAccelerationAssistant *)self parentViewForPrompt];
  if (!parentViewForPrompt)
  {
    v30 = 0;
    goto LABEL_38;
  }

  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [parentViewForPrompt _convertVisualAltitude:prompt2 toView:0.0];
  [prompt _setVisualAltitude:?];

  rangeInDocument = [candidateCopy rangeInDocument];
  underlines = [candidateCopy underlines];
  if (+[UIKeyboard isKeyboardProcess])
  {
    documentTextToReplace = [candidateCopy documentTextToReplace];
    v16 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:documentTextToReplace];

    if (![v16 count])
    {
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      v18 = [_document textInRange:rangeInDocument];

      if (v18 && [v18 length])
      {
        v19 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:v18];

        v16 = v19;
      }
    }

    underlines = v16;
  }

  if (!underlines || ![underlines count])
  {
    interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

    if (interactionAssistant)
    {
      interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      activeSelectionController = [interactionAssistant2 activeSelectionController];
      selection = [activeSelectionController selection];
      v24 = [selection underlineRectsForRange:rangeInDocument];

      underlines = v24;
    }
  }

  if ([(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
  {
    textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (textInputResponder)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v27 = [textInputResponder2 selectionRectsForRange:rangeInDocument];

      underlines = v27;
    }
  }

  if (!underlines || ![underlines count])
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    asyncInputDelegate = [delegate asyncInputDelegate];
    if (asyncInputDelegate)
    {
    }

    else
    {
      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      webInputDelegate = [delegate2 webInputDelegate];

      if (!webInputDelegate)
      {
        delegate3 = [(_UITextChoiceAccelerationAssistant *)self delegate];
        asyncWebKitInteractionDelegate = [delegate3 asyncWebKitInteractionDelegate];
        webSelectionRects = [asyncWebKitInteractionDelegate webSelectionRects];
        goto LABEL_25;
      }
    }

    delegate4 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputDelegateManager = [delegate4 inputDelegateManager];
    delegate3 = [inputDelegateManager selectedTextRange];

    if (!delegate3)
    {
LABEL_26:

      goto LABEL_27;
    }

    asyncWebKitInteractionDelegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputDelegateManager2 = [asyncWebKitInteractionDelegate inputDelegateManager];
    webSelectionRects = [inputDelegateManager2 selectionRectsForRange:delegate3];

    underlines = inputDelegateManager2;
LABEL_25:

    underlines = webSelectionRects;
    goto LABEL_26;
  }

LABEL_27:
  if ([underlines count] && (objc_msgSend(underlines, "firstObject"), (v39 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = v39;
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __96___UITextChoiceAccelerationAssistant_showPromptForReplacementCandidate_originalCandidate_delay___block_invoke;
    v50 = &unk_1E7109380;
    v51 = candidateCopy;
    v52 = originalCandidateCopy;
    selfCopy = self;
    v41 = rangeInDocument;
    v54 = v41;
    v55 = parentViewForPrompt;
    v42 = v40;
    v56 = v42;
    v43 = _Block_copy(&v47);
    [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay:v47];
    if (delay <= 0.0)
    {
      v43[2](v43, 0);
    }

    else
    {
      v44 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v43 block:delay];
      [(_UITextChoiceAccelerationAssistant *)self setPromptDisplayTimer:v44];
    }

    if (+[UIKeyboard usesInputSystemUI]|| [(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v41];
    }

    _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    v30 = 1;
    [_underlineView removeUnderlines:underlines animated:1];
  }

  else
  {
    v30 = 0;
  }

LABEL_38:
  return v30;
}

- (id)_rangeOfText:(id)text endingAtPosition:(id)position
{
  textCopy = text;
  positionCopy = position;
  if (positionCopy)
  {
    if ([textCopy length])
    {
      v8 = [textCopy length];
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      _document4 = [_document positionFromPosition:positionCopy offset:-v8];

      if (_document4)
      {
        _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v12 = [_document2 textRangeFromPosition:_document4 toPosition:positionCopy];

        if (v12)
        {
          _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v14 = [_document3 textInRange:v12];

          if ([v14 isEqualToString:textCopy])
          {
            v15 = v12;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v15 = [_document4 textRangeFromPosition:positionCopy toPosition:positionCopy];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)showChoicesForAutocorrectionCandidate:(id)candidate range:(id)range delay:(double)delay
{
  v95 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  rangeCopy = range;
  p_candidate = &self->_candidate;
  if (self->_candidate == candidateCopy)
  {
    prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
    candidate = [prompt candidate];
    if (candidate == candidateCopy)
    {
      prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      superview = [prompt2 superview];
      v12 = superview == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  candidate2 = [(TIKeyboardCandidate *)candidateCopy candidate];

  if (!candidate2 || !v12)
  {
    [(_UITextChoiceAccelerationAssistant *)self dismissWithoutSelection];
LABEL_27:
    v33 = 0;
    goto LABEL_28;
  }

  if ([rangeCopy isEmpty])
  {
    start = [rangeCopy start];
    v19 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:start];

    if (v19 && ([v19 isEmpty] & 1) == 0)
    {
      v23 = rangeCopy;
      rangeCopy = v19;
LABEL_24:

      goto LABEL_25;
    }

    v20 = candidateCopy;
    candidate3 = [(TIKeyboardCandidate *)candidateCopy candidate];
    start2 = [rangeCopy start];
    v23 = [(_UITextChoiceAccelerationAssistant *)self _rangeOfText:candidate3 endingAtPosition:start2];

    if (v23)
    {
      v24 = v23;

      rangeCopy = v24;
    }

    else if (!rangeCopy)
    {
      candidateCopy = v20;
      goto LABEL_20;
    }

    candidateCopy = v20;
    if (![rangeCopy isEmpty])
    {
      goto LABEL_24;
    }

LABEL_20:
    v25 = rangeCopy;
    v26 = candidateCopy;
    selfCopy = self;
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    tokenizer = [_document tokenizer];
    v29 = v25;
    start3 = [v25 start];
    v31 = [tokenizer rangeEnclosingPosition:start3 withGranularity:1 inDirection:1];

    if (v31 && ([v31 isEmpty] & 1) == 0)
    {
      v32 = v31;

      v29 = v32;
    }

    candidateCopy = v26;

    rangeCopy = v29;
    self = selfCopy;
    goto LABEL_24;
  }

LABEL_25:
  if (!rangeCopy || ([rangeCopy isEmpty] & 1) != 0)
  {
    goto LABEL_27;
  }

  objc_storeStrong(p_candidate, candidate);
  if (+[UIKeyboard usesInputSystemUI])
  {
    [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [delegate presentTextChoicePromptForRange:rangeCopy];

    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v37 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
    v38 = [underlinedWordData objectForKey:v37];

    if (v38)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:rangeCopy];
      _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
      underlines = [v38 underlines];
      [_underlineView removeUnderlines:underlines animated:1];
    }

    [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];

    v33 = 1;
    goto LABEL_28;
  }

  prompt3 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [prompt3 setCandidate:candidateCopy];

  delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  keyboardState = [delegate2 keyboardState];
  secureCandidateRenderTraits = [keyboardState secureCandidateRenderTraits];
  [secureCandidateRenderTraits singleCellHeight];
  v46 = v45;
  prompt4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [prompt4 setSecureCandidateHeight:v46];

  array = [MEMORY[0x1E695DF70] array];
  candidate4 = [(TIKeyboardCandidate *)candidateCopy candidate];
  v50 = [(_UITextChoiceAccelerationAssistant *)self listForFinalString:candidate4];

  v51 = [(_UITextChoiceAccelerationAssistant *)self alternateCorrectionsForList:v50];
  input = [(TIKeyboardCandidate *)candidateCopy input];
  v53 = [input length];

  if (v53)
  {
    _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v55 = [_document2 textInRange:rangeCopy];

    input2 = [(TIKeyboardCandidate *)candidateCopy input];
    v57 = [input2 isEqualToString:v55];

    if (v57)
    {
      candidate5 = [(TIKeyboardCandidate *)candidateCopy candidate];
      v59 = [candidate5 isEqualToString:v55];

      if (v59)
      {
        v60 = 0;
LABEL_41:

        goto LABEL_42;
      }

      candidate6 = [(TIKeyboardCandidate *)candidateCopy candidate];
    }

    else
    {
      candidate6 = [(TIKeyboardCandidate *)candidateCopy input];
    }

    v62 = candidate6;
    [array addObject:candidate6];

    v60 = 1;
    goto LABEL_41;
  }

  v60 = 0;
LABEL_42:
  v85 = v51;
  if ([v51 count])
  {
    v82 = v50;
    v83 = rangeCopy;
    selfCopy2 = self;
    v84 = candidateCopy;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v63 = v51;
    v64 = [v63 countByEnumeratingWithState:&v89 objects:v94 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = 0;
      v67 = *v90;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v90 != v67)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v89 + 1) + 8 * i);
          if ([v69 isAlternativeInput])
          {
            candidate7 = [v69 candidate];
            v93 = candidate7;
            LOBYTE(v60) = 1;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];

            v66 = v71;
          }

          candidate8 = [v69 candidate];
          [array addObject:candidate8];
        }

        v65 = [v63 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v65);
    }

    else
    {
      v66 = 0;
    }

    v60 = v60 & ([array count] < 2);
    rangeCopy = v83;
    candidateCopy = v84;
    self = selfCopy2;
    v50 = v82;
  }

  else
  {
    v66 = 0;
  }

  underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v74 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
  v75 = [underlinedWordData2 objectForKey:v74];

  if (!v75)
  {
    candidate9 = [(TIKeyboardCandidate *)candidateCopy candidate];
    [(TIKeyboardCandidate *)candidateCopy input];
    v88 = v60;
    v77 = v50;
    v79 = v78 = candidateCopy;
    v75 = [_UIReplacementCandidate candidateForDocumentText:candidate9 revertText:v79 textChoices:0 range:rangeCopy underlineStyle:1 promptStyle:0 promptButton:2];

    candidateCopy = v78;
    v50 = v77;
    v60 = v88;
  }

  if ([array count])
  {
    v80 = 1;
  }

  else
  {
    v80 = 2;
  }

  [v75 setPreferredPromptStyle:v80];
  if (v60)
  {
    v81 = 2;
  }

  else
  {
    v81 = 0;
  }

  [v75 setPreferredPromptButton:v81];
  if (v75 && [array count])
  {
    [v75 setTextChoices:array];
  }

  [v75 setAlternativeRevertTexts:v66];
  [v75 setIsAutofillDoubleLineUI:0];
  v33 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v75 delay:delay];

LABEL_28:
  return v33;
}

- (BOOL)showChoicesForCandidates:(id)candidates
{
  v112 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  firstObject = [candidatesCopy firstObject];
  IsSmartReply = _candidateSourceIsSmartReply(firstObject);
  v90 = firstObject;
  if (IsSmartReply)
  {
    goto LABEL_2;
  }

  if ([firstObject slotID])
  {
    v6 = 0;
    v92 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v92 = 0;
      v6 = 0;
      goto LABEL_7;
    }

    v92 = 0;
    v6 = [firstObject customInfoType] != 32;
  }

LABEL_7:
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v8 = candidatesCopy;
  v9 = [v8 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v102;
    do
    {
      v12 = v8;
      for (i = 0; i != v10; ++i)
      {
        if (*v102 != v11)
        {
          objc_enumerationMutation(v12);
        }

        v14 = *(*(&v101 + 1) + 8 * i);
        if ((!IsSmartReply || (_candidateSourceIsSmartReply(*(*(&v101 + 1) + 8 * i)) & 1) == 0) && (!v92 || ![v14 slotID]))
        {
          if (!v6)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 customInfoType] == 32)
          {
            continue;
          }
        }

        [v91 addObject:v14];
        v15 = v7;
        v16 = MEMORY[0x1E696AD98];
        secureCandidateHash = [v14 secureCandidateHash];
        v18 = v16;
        v7 = v15;
        v19 = [v18 numberWithUnsignedInteger:secureCandidateHash];
        [v15 addObject:v19];
      }

      v8 = v12;
      v10 = [v12 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v10);
  }

  if (![v91 count] || (selfCopy = self, -[NSArray isEqualToArray:](self->_secureCandidateHashes, "isEqualToArray:", v7)))
  {
    v21 = 0;
    goto LABEL_62;
  }

  v86 = v7;
  objc_storeStrong(&self->_secureCandidateHashes, v7);
  firstObject2 = [v8 firstObject];
  input = [firstObject2 input];
  v24 = input;
  if (input)
  {
    v25 = input;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v26 = v25;

  interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  selectedRange = [activeSelection selectedRange];

  v85 = selectedRange;
  v30 = +[_UIReplacementCandidate candidateForDocumentText:revertText:candidateChoices:range:underlineStyle:promptStyle:promptButton:](_UIReplacementCandidate, "candidateForDocumentText:revertText:candidateChoices:range:underlineStyle:promptStyle:promptButton:", v26, &stru_1EFB14550, v91, selectedRange, 0, 2, [v91 count] < 2);
  interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
  activeSelection2 = [interactionAssistant2 activeSelection];
  [activeSelection2 caretRect];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = *(MEMORY[0x1E695EFD0] + 16);
  *buf = *MEMORY[0x1E695EFD0];
  v108 = v41;
  v109 = *(MEMORY[0x1E695EFD0] + 32);
  v42 = [_UITextUnderlineRect underlineRectWithRect:buf offset:v34 transform:v36, v38, v40, 0.0];
  v110 = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v30 setUnderlines:v43];

  [v30 setIsAutofillDoubleLineUI:0];
  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v87 = v30;
  [prompt setReplacement:v30];

  delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
  keyboardState = [delegate keyboardState];
  secureCandidateRenderTraits = [keyboardState secureCandidateRenderTraits];
  [secureCandidateRenderTraits singleCellHeight];
  v49 = v48;
  prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [prompt2 setSecureCandidateHeight:v49];

  delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  keyboardState2 = [delegate2 keyboardState];
  secureCandidateRenderTraits2 = [keyboardState2 secureCandidateRenderTraits];

  if (v6)
  {
    v83 = secureCandidateRenderTraits2;
    v84 = v26;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v54 = v8;
    v55 = [v54 countByEnumeratingWithState:&v97 objects:v106 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v98;
      while (2)
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v98 != v57)
          {
            objc_enumerationMutation(v54);
          }

          textSuggestion = [*(*(&v97 + 1) + 8 * j) textSuggestion];
          headerText = [textSuggestion headerText];
          v61 = [headerText length];

          if (v61)
          {
            [v87 setIsAutofillDoubleLineUI:1];

            goto LABEL_54;
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v97 objects:v106 count:16];
        if (v56)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v62 = secureCandidateRenderTraits2;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![secureCandidateRenderTraits2 isInlinePromptUI])
    {
      goto LABEL_55;
    }

    v83 = secureCandidateRenderTraits2;
    v84 = v26;
    prompt3 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [prompt3 secureCandidateHeight];
    [prompt3 setSecureCandidateHeight:v64 * 0.5];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v8;
    v65 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v94;
      v68 = &selRef__validateSortedDeleteItems_moveItems_movedSourceIndexPaths_movedDestinationIndexPaths_insertItems_oldCollectionViewData_;
      do
      {
        v69 = 0;
        v70 = v68[341];
        do
        {
          if (*v94 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v71 = *(*(&v93 + 1) + 8 * v69);
          if (objc_opt_respondsToSelector())
          {
            v72 = MEMORY[0x1E695DF50];
            v73 = [v71 methodSignatureForSelector:v70];
            v74 = [v72 invocationWithMethodSignature:v73];

            [v74 setSelector:v70];
            [v74 setTarget:v71];
            [v74 invoke];
            buf[0] = 0;
            [v74 getReturnValue:buf];
            v75 = v8;
            v76 = buf[0];

            v77 = v76 == 1;
            v8 = v75;
            if (v77)
            {
              prompt4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
              [prompt4 secureCandidateHeight];
              [prompt4 setSecureCandidateHeight:v82 + v82];

              [v87 setIsAutofillDoubleLineUI:1];
              goto LABEL_54;
            }
          }

          else
          {
          }

          ++v69;
        }

        while (v66 != v69);
        v66 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
        v68 = &selRef__validateSortedDeleteItems_moveItems_movedSourceIndexPaths_movedDestinationIndexPaths_insertItems_oldCollectionViewData_;
      }

      while (v66);
    }
  }

LABEL_54:

  selfCopy = self;
  v62 = v83;
  v26 = v84;
LABEL_55:
  v78 = _UIKeyboardSmartReplyLog();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v79 = @"text suggestion";
    if (v92)
    {
      v79 = @"secure";
    }

    if (IsSmartReply)
    {
      v79 = @"smart reply";
    }

    *buf = 138412290;
    *&buf[4] = v79;
    _os_log_impl(&dword_188A29000, v78, OS_LOG_TYPE_DEFAULT, "Text choice assistant is showing prompt for %@ candidates", buf, 0xCu);
  }

  v21 = [(_UITextChoiceAccelerationAssistant *)selfCopy showPromptForReplacementCandidate:v87];
  v7 = v86;
LABEL_62:

  return v21;
}

- (void)updatePromptLocation:(id)location
{
  locationCopy = location;
  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  window = [prompt window];
  windowScene = [window windowScene];
  object = [locationCopy object];

  if (windowScene == object)
  {
    prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    replacement = [prompt2 replacement];
    [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:replacement];
  }
}

- (BOOL)showChoicesForTextInRange:(id)range
{
  v15[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v6 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];

  v7 = [underlinedWordData objectForKey:v6];

  if (v7)
  {
    [v7 setIsAutofillDoubleLineUI:0];
    prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [prompt setCandidate:0];

    prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [prompt2 setReplacement:v7];

    textChoices = [v7 textChoices];

    if (!textChoices)
    {
      revertText = [v7 revertText];
      v15[0] = revertText;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v7 setTextChoices:v12];
    }

    v13 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)showDictationChoicesForTextInRange:(id)range
{
  rangeCopy = range;
  underlinedWordDataForDictation = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  v6 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];

  v7 = [underlinedWordDataForDictation objectForKey:v6];

  if (v7)
  {
    [v7 setIsAutofillDoubleLineUI:0];
    v8 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)showChoicesForTextInRange:(id)range withReplacements:(id)replacements delay:(double)delay
{
  rangeCopy = range;
  replacementsCopy = replacements;
  firstObject = [replacementsCopy firstObject];
  v11 = firstObject;
  if (firstObject)
  {
    originalText = [firstObject originalText];
    replacementText = [v11 replacementText];
    v14 = [_UIReplacementCandidate candidateForDocumentText:originalText revertText:replacementText textChoices:0 range:rangeCopy underlineStyle:0 promptStyle:1 promptButton:2];

    if ([replacementsCopy count] >= 2)
    {
      array = [MEMORY[0x1E695DF70] array];
      replacementText2 = [v11 replacementText];

      if (replacementText2)
      {
        replacementText3 = [v11 replacementText];
        [array addObject:replacementText3];
      }

      if ([replacementsCopy count] >= 2)
      {
        v18 = 1;
        do
        {
          v19 = [replacementsCopy objectAtIndex:v18];
          replacementText4 = [v19 replacementText];

          if (replacementText4)
          {
            replacementText5 = [v19 replacementText];
            [array addObject:replacementText5];
          }

          ++v18;
        }

        while (v18 < [replacementsCopy count]);
      }

      [v14 setTextChoices:array];
      [v14 setPreferredPromptButton:0];
      [v14 setPreferredPromptStyle:2];
    }

    [v14 setIsAutofillDoubleLineUI:0];
    v22 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v14 delay:delay];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)showAutocorrectReplacementChoicesIfNeeded:(id)needed forRange:(id)range
{
  rangeCopy = range;
  v7 = [UITextReplacementGeneratorForCorrections generatorForTextInput:needed range:rangeCopy options:32];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (([v7 isStringToReplaceMisspelled] & 1) == 0)
  {
    [v8 forceAutocorrectionGuesses];
  }

  autocorrectionRecord = [v8 autocorrectionRecord];
  if (autocorrectionRecord && (v10 = autocorrectionRecord, v11 = [v8 forceAutocorrectionGuesses], v10, v11))
  {
    autocorrectionRecord2 = [v8 autocorrectionRecord];
    v13 = [(_UITextChoiceAccelerationAssistant *)self showChoicesForAutocorrectionCandidate:autocorrectionRecord2 range:rangeCopy delay:0.2];
  }

  else
  {
    if (![v8 forceAutocorrectionGuesses])
    {
LABEL_11:
      [(_UITextChoiceAccelerationAssistant *)self dismissWithoutSelection];
LABEL_12:
      v15 = 0;
      goto LABEL_13;
    }

    autocorrectionRecord2 = [v8 replacements];
    v13 = [(_UITextChoiceAccelerationAssistant *)self showChoicesForTextInRange:rangeCopy withReplacements:autocorrectionRecord2 delay:0.2];
  }

  v14 = v13;

  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (void)updatePrompt:(id)prompt forReplacementCandidate:(id)candidate
{
  promptCopy = prompt;
  candidateCopy = candidate;
  v6 = candidateCopy;
  if (!candidateCopy)
  {
    v8 = @"arrow.uturn.backward";
    v9 = 1;
    goto LABEL_19;
  }

  preferredPromptButton = [candidateCopy preferredPromptButton];
  v8 = @"arrow.uturn.backward";
  v9 = 1;
  if (preferredPromptButton <= 2)
  {
    if (!preferredPromptButton)
    {
      v9 = 0;
      v8 = &stru_1EFB14550;
      goto LABEL_18;
    }

    if (preferredPromptButton != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (preferredPromptButton != 3)
    {
      if (preferredPromptButton == 4)
      {
        v9 = 2;
      }

      else if (preferredPromptButton == 5)
      {
        if ([promptCopy labelNumber])
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.circle.fill", objc_msgSend(promptCopy, "labelNumber")];
        }

        else
        {
          v8 = &stru_1EFB14550;
        }

        v9 = 3;
      }

      goto LABEL_18;
    }

    preferredPromptButton = 2;
  }

  v8 = @"xmark";
  v9 = preferredPromptButton;
LABEL_18:
  [promptCopy updateButtonForType:{objc_msgSend(v6, "preferredPromptButton")}];
LABEL_19:
  revertText = [v6 revertText];
  [promptCopy updateButtonName:v8 placement:v9 originalText:revertText];
}

- (id)rangeForTextChoicesAtPosition:(id)position
{
  v38 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  if (positionCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [underlinedRanges countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v28;
      *&v7 = 138412802;
      v26 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(underlinedRanges);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          start = [v11 start];
          if (start && (v13 = start, [v11 end], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
          {
            _document = [(_UITextChoiceAccelerationAssistant *)self _document];
            start2 = [v11 start];
            v17 = [_document comparePosition:positionCopy toPosition:start2];

            if (v17 != -1)
            {
              _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
              v19 = [v11 end];
              v20 = [_document2 comparePosition:positionCopy toPosition:v19];

              if (v20 != 1)
              {
                v24 = v11;
                goto LABEL_19;
              }
            }
          }

          else
          {
            v21 = _UIKeyboardLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              start3 = [v11 start];
              v23 = [v11 end];
              *buf = v26;
              v32 = v11;
              v33 = 2112;
              v34 = start3;
              v35 = 2112;
              v36 = v23;
              _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Error: Underlined range %@: %@ -> %@", buf, 0x20u);
            }
          }
        }

        v8 = [underlinedRanges countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v8);
    }

    v24 = 0;
LABEL_19:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unint64_t)numberOfDisambiguationOptions
{
  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v3 = [dictationVoiceEditingPrompts count];

  return v3;
}

- (BOOL)canHandleDictationChoiceForPromptIndex:(int64_t)index
{
  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  if ([dictationVoiceEditingPrompts count])
  {
    if (index == -1)
    {
      v7 = 1;
    }

    else
    {
      dictationVoiceEditingPrompts2 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
      v7 = [dictationVoiceEditingPrompts2 count] > (index - 1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateDictationChoicesFromPromptIndex:(int64_t)index completionHandler:(id)handler
{
  handlerCopy = handler;
  if (index == -1)
  {
    dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    lastObject = [dictationVoiceEditingPrompts lastObject];
  }

  else
  {
    v7 = index < 1;
    v8 = index - 1;
    if (v7 || (-[_UITextChoiceAccelerationAssistant dictationVoiceEditingPrompts](self, "dictationVoiceEditingPrompts"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8 >= v10))
    {
      v13 = _UIKeyboardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Attempted to update out of bound dictation prompts", v14, 2u);
      }

      goto LABEL_10;
    }

    dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    lastObject = [dictationVoiceEditingPrompts objectAtIndex:v8];
  }

  v13 = lastObject;

  if (v13)
  {
    [(_UITextChoiceAccelerationAssistant *)self updateDocumentFromPrompt:v13 completionHandler:handlerCopy];
LABEL_10:
  }
}

- (void)updateDocumentFromPrompt:(id)prompt completionHandler:(id)handler
{
  v148[1] = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  handlerCopy = handler;
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
  [delegate handleTextChoiceBubbleTapped];

  selectedCandidateChoice = [promptCopy selectedCandidateChoice];
  if (![selectedCandidateChoice slotID])
  {
    selectedCandidateChoice2 = [promptCopy selectedCandidateChoice];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_4;
    }

    selectedCandidateChoice3 = [promptCopy selectedCandidateChoice];
    if (_candidateSourceIsSmartReply(selectedCandidateChoice3))
    {
      v17 = _UIKeyboardSmartReplyLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Text choice assistant is accepting smart reply candidate", buf, 2u);
      }

      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      [delegate2 acceptPredictiveInput:selectedCandidateChoice3];
LABEL_54:

      goto LABEL_5;
    }

    delegate2 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (([delegate2 isEmpty] & 1) == 0)
    {
      v19 = delegate2;
      if (delegate2)
      {
LABEL_21:
        _document = [(_UITextChoiceAccelerationAssistant *)self _document];
        v27 = [_document textInRange:v19];

        if ([promptCopy shouldRejectCandidate])
        {
          selectedChoice = [promptCopy selectedChoice];
          if ([selectedChoice isEqualToString:@"autocorrection.cancel"])
          {

LABEL_25:
            delegate3 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            [delegate3 fadeAutocorrectPrompt];

            +[UIKBAnalyticsDispatcher didRevisionBubbleTap];
LABEL_51:
            [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v19];
            if (!+[UIKeyboard isKeyboardProcess])
            {
              v109 = [v27 length];
              selectedChoice2 = [promptCopy selectedChoice];
              v111 = v109 - [selectedChoice2 length];

              start = [v19 start];
              [(_UITextChoiceAccelerationAssistant *)self adjustRangesAfterPosition:start byOffset:v111];
            }

            goto LABEL_54;
          }

          keepPromptActive = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];

          if (keepPromptActive)
          {
            goto LABEL_25;
          }
        }

        else if ([(_UITextChoiceAccelerationAssistant *)self keepPromptActive])
        {
          goto LABEL_25;
        }

        v144 = v27;
        if ([promptCopy promptStyle] != 3)
        {
          candidate = [promptCopy candidate];
          v50Candidate = [candidate candidate];

          v142 = v50Candidate;
          if ([v50Candidate length])
          {
            v52 = [delegate2 end];
            v53 = [(_UITextChoiceAccelerationAssistant *)self _rangeOfText:v50Candidate endingAtPosition:v52];

            if (v53 && ([v53 isEmpty] & 1) == 0)
            {
              v54 = v53;

              v55 = v50Candidate;
              v144 = v55;
              v19 = v54;
            }
          }

          selectedChoice3 = [promptCopy selectedChoice];
          selectedChoice4 = [promptCopy selectedChoice];
          v58 = [UITextReplacement replacementWithRange:v19 original:v144 replacement:selectedChoice3 menuTitle:selectedChoice4];

          [(_UITextChoiceAccelerationAssistant *)self informAnalyticsOfUpcomingCandidateReplacement];
          delegate4 = [(_UITextChoiceAccelerationAssistant *)self delegate];
          [delegate4 replaceText:v58];

          if ([promptCopy shouldRejectCandidate])
          {
            delegate5 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            candidate2 = [promptCopy candidate];
            [delegate5 rejectAutocorrection:candidate2];
          }

          [(_UITextChoiceAccelerationAssistant *)self informAnalyticsOfCompletedCandidateReplacement];
          v62 = +[UIDictationController activeInstance];
          replacement = [promptCopy replacement];
          voiceCommandTrackingUUID = [replacement voiceCommandTrackingUUID];
          [v62 markDictationUndoEventWithVoiceCommandUUID:voiceCommandTrackingUUID viaTapOnRevertBubble:1];

          goto LABEL_41;
        }

        replacement2 = [promptCopy replacement];
        rangeInDocument = [replacement2 rangeInDocument];

        if (!rangeInDocument)
        {
          v143 = +[UIDictationController activeInstance];
          deltaRange = [promptCopy deltaRange];
          v128 = v66;
          v130 = deltaRange;
          replacement3 = [promptCopy replacement];
          documentTextToReplace = [replacement3 documentTextToReplace];
          replacement4 = [promptCopy replacement];
          textChoices = [replacement4 textChoices];
          v122 = [textChoices objectAtIndexedSubscript:0];
          originalSelectedRange = [promptCopy originalSelectedRange];
          v118 = v68;
          v120 = originalSelectedRange;
          replacement5 = [promptCopy replacement];
          voiceCommandDisambiguationSelectedIndex = [replacement5 voiceCommandDisambiguationSelectedIndex];
          replacement6 = [promptCopy replacement];
          voiceCommandDisambiguationTargetCount = [replacement6 voiceCommandDisambiguationTargetCount];
          replacement7 = [promptCopy replacement];
          voiceCommandTrackingUUID2 = [replacement7 voiceCommandTrackingUUID];
          [v143 performTextReplacementForWebKitWithDeltaRange:v130 targetText:v128 replacementText:documentTextToReplace originalSelectedRange:v122 voiceCommandDisambiguationSelectedIndex:v120 voiceCommandDisambiguationTargetCount:v118 voiceCommandUUID:voiceCommandDisambiguationSelectedIndex completionHandler:{voiceCommandDisambiguationTargetCount, voiceCommandTrackingUUID2, handlerCopy}];

          [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
LABEL_41:
          v27 = v144;
          goto LABEL_51;
        }

        replacement8 = [promptCopy replacement];
        textChoices2 = [replacement8 textChoices];
        v35 = [textChoices2 objectAtIndexedSubscript:0];
        v129 = [v35 isEqualToString:0x1EFB75A70];

        replacement9 = [promptCopy replacement];
        textChoices3 = [replacement9 textChoices];
        v38 = [textChoices3 objectAtIndexedSubscript:0];
        LODWORD(textChoices2) = [v38 isEqualToString:0x1EFB75A90];

        activeSelectedRange = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
        _document2 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v141 = activeSelectedRange;
        v135 = [_document2 _nsrangeForTextRange:activeSelectedRange];
        v137 = v41;

        _document3 = [(_UITextChoiceAccelerationAssistant *)self _document];
        replacement10 = [promptCopy replacement];
        rangeInDocument2 = [replacement10 rangeInDocument];
        v133 = [_document3 _nsrangeForTextRange:rangeInDocument2];
        v127 = v45;

        replacement11 = [promptCopy replacement];
        voiceCommandDisambiguationSelectedIndex2 = [replacement11 voiceCommandDisambiguationSelectedIndex];

        if (textChoices2)
        {
          _document4 = [(_UITextChoiceAccelerationAssistant *)self _document];
          replacement12 = [promptCopy replacement];
          rangeInDocument3 = [replacement12 rangeInDocument];
          [_document4 setSelectedTextRange:rangeInDocument3];
        }

        else
        {
          if (!v129)
          {
            replacement13 = [promptCopy replacement];
            textChoices4 = [replacement13 textChoices];
            v132 = [textChoices4 objectAtIndexedSubscript:0];

            replacement14 = [promptCopy replacement];
            rangeInDocument4 = [replacement14 rangeInDocument];
            replacement15 = [promptCopy replacement];
            documentTextToReplace2 = [replacement15 documentTextToReplace];
            v89 = [UITextReplacement replacementWithRange:rangeInDocument4 original:documentTextToReplace2 replacement:v132 menuTitle:v132 isDictationCommandReplacement:1];

            delegate6 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            v119 = v89;
            [delegate6 replaceText:v89];

            replacement16 = [promptCopy replacement];
            revertText = [replacement16 revertText];

            replacement17 = [promptCopy replacement];
            textChoices5 = [replacement17 textChoices];
            firstObject = [textChoices5 firstObject];

            v95 = [v132 length];
            v121 = revertText;
            v96 = v95 - [revertText length];
            replacement18 = [promptCopy replacement];
            rangeInDocument5 = [replacement18 rangeInDocument];

            _document5 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v100 = [rangeInDocument5 end];
            v126 = [_document5 positionFromPosition:v100 offset:v96];

            _document6 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v117 = rangeInDocument5;
            start2 = [rangeInDocument5 start];
            v103 = [_document6 textRangeFromPosition:start2 toPosition:v126];

            if (v103)
            {
              replacement19 = [promptCopy replacement];
              voiceCommandTrackingUUID3 = [replacement19 voiceCommandTrackingUUID];

              [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
              v148[0] = v121;
              v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:1];
              [(_UITextChoiceAccelerationAssistant *)self underlineTextInRange:v103 revertText:v121 textChoices:v105 isActiveEditingSession:1];

              v147 = v103;
              v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
              v146 = firstObject;
              v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
              [(_UITextChoiceAccelerationAssistant *)self decorateTextInRanges:v106 replacementTexts:v107 allowAutomaticReplacement:0 autoHide:1 voiceCommandTrackingUUID:voiceCommandTrackingUUID3 withCompletionHandler:handlerCopy];
            }

            _document7 = [(_UITextChoiceAccelerationAssistant *)self _document];
            LOBYTE(v113) = v135 > v133;
            -[_UITextChoiceAccelerationAssistant restoreInsertionPointPositionWithDocument:originalPositionRange:targetRange:payloadRange:contextBefore:](self, "restoreInsertionPointPositionWithDocument:originalPositionRange:targetRange:payloadRange:contextBefore:", _document7, v135, v137, v133, v127, 0, [v132 length], v113);

            goto LABEL_48;
          }

          _document8 = [(_UITextChoiceAccelerationAssistant *)self _document];
          replacement20 = [promptCopy replacement];
          rangeInDocument6 = [replacement20 rangeInDocument];
          [_document8 setSelectedTextRange:rangeInDocument6];

          _document9 = [(_UITextChoiceAccelerationAssistant *)self _document];
          activeSelectedRange2 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
          v131 = [_document9 _nsrangeForTextRange:activeSelectedRange2];
          v78 = v77;

          delegate7 = [(_UITextChoiceAccelerationAssistant *)self delegate];
          [delegate7 deleteBackward];

          _document10 = [(_UITextChoiceAccelerationAssistant *)self _document];
          activeSelectedRange3 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
          v82 = [_document10 _nsrangeForTextRange:activeSelectedRange3];

          _document11 = [(_UITextChoiceAccelerationAssistant *)self _document];
          LOBYTE(v113) = v135 > v133;
          [(_UITextChoiceAccelerationAssistant *)self restoreInsertionPointPositionWithDocument:_document11 originalPositionRange:v135 targetRange:v137 payloadRange:0 contextBefore:v131 + v78 - v82, 0, 0, v113];
        }

        [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
LABEL_48:
        v27 = v144;
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, voiceCommandDisambiguationSelectedIndex2);
        }

        goto LABEL_51;
      }
    }

    start3 = [delegate2 start];
    v21 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:start3];

    if (!v21)
    {
      _document12 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
        v21 = 0;
        goto LABEL_19;
      }

      _document13 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v25 = [delegate2 end];
      v21 = [_document13 _rangeOfEnclosingWord:v25];

      if (!v21)
      {
        goto LABEL_19;
      }
    }

    if (([v21 isEmpty] & 1) == 0)
    {
      v21 = v21;

      v19 = v21;
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    v19 = delegate2;
    goto LABEL_20;
  }

LABEL_4:
  delegate8 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  authenticationMessage = [promptCopy authenticationMessage];
  [delegate8 _attemptAuthenticationWithMessage:authenticationMessage];

  delegate9 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  selectedCandidateChoice4 = [promptCopy selectedCandidateChoice];
  [delegate9 acceptPredictiveInput:selectedCandidateChoice4];

LABEL_5:
}

- (void)informAnalyticsOfUpcomingCandidateReplacement
{
  +[UIKBAnalyticsDispatcher didRevisionBubbleTap];
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v3 setNextCandidateReplacementSource:8];

  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  buttonType = [prompt buttonType];

  delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v9 = delegate;
  v7 = @"revisionBubble";
  if (buttonType == 1)
  {
    v7 = @"reversionBubble";
  }

  if (buttonType)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"autocorrectionBubble";
  }

  [delegate acceptingCandidateWithTrigger:v8];
}

- (void)informAnalyticsOfCompletedCandidateReplacement
{
  v2 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v2 setNextCandidateReplacementSource:0];
}

- (id)activeSelectedRange
{
  interactionAssistant = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (interactionAssistant)
  {
    interactionAssistant2 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    activeSelection = [interactionAssistant2 activeSelection];
    v6 = activeSelection;
    if (activeSelection)
    {
      selection = activeSelection;
    }

    else
    {
      interactionAssistant3 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      activeSelectionController = [interactionAssistant3 activeSelectionController];
      selection = [activeSelectionController selection];
    }

    selectedRange = [selection selectedRange];
  }

  else
  {
    selection = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    selectedRange = [selection selectedTextRange];
  }

  v11 = selectedRange;

  return v11;
}

- (void)removeWordForRange:(id)range animated:(BOOL)animated
{
  animatedCopy = animated;
  rangeCopy = range;
  if (+[UIKeyboard isKeyboardProcess])
  {
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [_document textInRange:rangeCopy];

    v8 = [(_UITextChoiceAccelerationAssistant *)self candidateForFinalString:v7];
    if (v8)
    {
      savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
      [savedLists removeObjectForKey:v7];
    }
  }

  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  [underlinedRanges removeObject:rangeCopy];

  v11 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:rangeCopy];
  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v13 = [underlinedWordData objectForKey:v11];

  if (v13)
  {
    underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [underlinedWordData2 removeObjectForKey:v11];

    underlinedWordDataForDictation = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    [underlinedWordDataForDictation removeObjectForKey:v11];

    savedLists2 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    documentTextToReplace = [v13 documentTextToReplace];
    [savedLists2 removeObjectForKey:documentTextToReplace];

    if (!+[UIKeyboard isKeyboardProcess])
    {
      _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
      underlines = [v13 underlines];
      [_underlineView removeUnderlines:underlines animated:animatedCopy];

      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }

  textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  if (textInputResponder)
  {
    v21 = textInputResponder;
    underlinedRanges2 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v23 = [underlinedRanges2 count];

    if (!v23)
    {
      textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      textInputView = [textInputResponder2 textInputView];
      textChoiceInteraction = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [textInputView removeInteraction:textChoiceInteraction];
    }
  }
}

- (void)removeAllUnderlinesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _existingUnderlineView = [(_UITextChoiceAccelerationAssistant *)self _existingUnderlineView];
  [_existingUnderlineView clearAllUnderlinesAnimated:animatedCopy];

  underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  [underlinedRanges removeAllObjects];

  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  [underlinedWordData removeAllObjects];

  underlinedWordDataForDictation = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  [underlinedWordDataForDictation removeAllObjects];

  savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  [savedLists removeAllObjects];

  textInputResponder = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (textInputResponder)
  {
    textInputResponder2 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    textInputView = [textInputResponder2 textInputView];
    textChoiceInteraction = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
    [textInputView removeInteraction:textChoiceInteraction];
  }
}

- (void)dismissWithoutSelection
{
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
  if (+[UIKeyboard usesInputSystemUI])
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [delegate dismissTextChoicePrompt];
  }

  prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [prompt removeAnimated:1];
}

- (void)removeActivePromptAndUnderline
{
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  promptIsVisible = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  activeSelectedRange = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
  if ([activeSelectedRange isEmpty])
  {
    start = [activeSelectedRange start];
    v5 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:start];

    if (v5 && ([v5 isEmpty] & 1) == 0)
    {
      v6 = v5;

      activeSelectedRange = v6;
    }
  }

  if (([activeSelectedRange isEmpty] & 1) == 0)
  {
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v8 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:activeSelectedRange];
    v9 = [underlinedWordData objectForKey:v8];

    if (v9)
    {
      underlines = [v9 underlines];
      v11 = [underlines count];

      if (v11)
      {
        _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        underlines2 = [v9 underlines];
        [_underlineView removeUnderlines:underlines2 animated:1];
      }

      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:activeSelectedRange];
    }
  }

  if (promptIsVisible)
  {
    prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [prompt removeAnimated:1];
  }
}

- (void)addList:(id)list forCandidate:(id)candidate
{
  if (list && candidate)
  {
    listCopy = list;
    candidate = [candidate candidate];
    savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    [savedLists setObject:listCopy forKey:candidate];
  }
}

- (id)listForFinalString:(id)string
{
  stringCopy = string;
  savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  v6 = [savedLists objectForKey:stringCopy];

  return v6;
}

- (id)candidateForFinalString:(id)string
{
  stringCopy = string;
  savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  v6 = [savedLists objectForKey:stringCopy];

  v7 = [(_UITextChoiceAccelerationAssistant *)self autocorrectionForList:v6];

  return v7;
}

- (id)alternateCorrectionsForList:(id)list
{
  corrections = [list corrections];
  alternateCorrections = [corrections alternateCorrections];

  return alternateCorrections;
}

- (id)autocorrectionForList:(id)list
{
  corrections = [list corrections];
  autocorrection = [corrections autocorrection];

  return autocorrection;
}

- (void)shouldShowPromptForWebKitText:(id)text atPosition:(id)position completionHandler:(id)handler
{
  textCopy = text;
  positionCopy = position;
  handlerCopy = handler;
  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v12 = [underlinedWordData objectForKey:textCopy];

  if (v12)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputDelegateManager = [delegate inputDelegateManager];
    asyncCapableInputDelegate = [inputDelegateManager asyncCapableInputDelegate];

    if (asyncCapableInputDelegate)
    {
      v16 = objc_opt_new();
      [v16 setSurroundingGranularity:0];
      [v16 setFlags:197];
      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputDelegateManager2 = [delegate2 inputDelegateManager];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __97___UITextChoiceAccelerationAssistant_shouldShowPromptForWebKitText_atPosition_completionHandler___block_invoke;
      v19[3] = &unk_1E71093A8;
      v19[4] = self;
      v20 = textCopy;
      v21 = positionCopy;
      v22 = handlerCopy;
      [inputDelegateManager2 requestDocumentContext:v16 completionHandler:v19];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)fullAutocorrectionForWord:(id)word atPosition:(id)position completionHandler:(id)handler
{
  wordCopy = word;
  positionCopy = position;
  handlerCopy = handler;
  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v12 = [underlinedWordData objectForKey:wordCopy];

  if (!v12)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93___UITextChoiceAccelerationAssistant_fullAutocorrectionForWord_atPosition_completionHandler___block_invoke;
    aBlock[3] = &unk_1E71093A8;
    aBlock[4] = self;
    v26 = wordCopy;
    v27 = positionCopy;
    v13 = handlerCopy;
    v28 = v13;
    v24 = _Block_copy(aBlock);
    v14 = objc_opt_new();
    [v14 setSurroundingGranularity:0];
    [v14 setFlags:197];
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputDelegateManager = [delegate inputDelegateManager];
    asyncCapableInputDelegate = [inputDelegateManager asyncCapableInputDelegate];

    if (asyncCapableInputDelegate)
    {
      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputDelegateManager2 = [delegate2 inputDelegateManager];
      asyncCapableInputDelegate2 = [inputDelegateManager2 asyncCapableInputDelegate];

      delegate3 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputDelegateManager3 = [delegate3 inputDelegateManager];
      v23 = v24;
      [inputDelegateManager3 requestDocumentContext:v14 completionHandler:v24];

      if (asyncCapableInputDelegate2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      (*(v13 + 2))(v13, 0);
      v23 = v24;
    }

    (*(v13 + 2))(v13, 0);
    asyncCapableInputDelegate2 = 0;
    goto LABEL_8;
  }

  (*(handlerCopy + 2))(handlerCopy, wordCopy);
LABEL_9:
}

- (id)rangeOfAutocorrectionForString:(id)string atPosition:(id)position inDocument:(id)document
{
  v35 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  documentCopy = document;
  autocorrectedRanges = [documentCopy autocorrectedRanges];
  if (autocorrectedRanges)
  {
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    [_document caretRectForPosition:positionCopy];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [documentCopy rangeContainedWithinRect:{v12, v14, v16, v18}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = autocorrectedRanges;
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          rangeValue = [*(*(&v30 + 1) + 8 * i) rangeValue];
          if (v19 >= rangeValue && v19 - rangeValue < v26)
          {
            v28 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v26}];
            goto LABEL_15;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v22);
    }

    v28 = 0;
LABEL_15:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)trackUnderlineForWebKitCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = [candidateCopy candidate];

  if (candidate)
  {
    candidate2 = [candidateCopy candidate];
    v7 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:candidate2];

    if (v7)
    {
      if (([v7 isEmpty] & 1) == 0)
      {
        start = [v7 start];
        if (start)
        {
          v9 = start;
          v10 = [v7 end];

          if (v10)
          {
            underlinedRanges = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [underlinedRanges addObject:v7];
          }
        }
      }
    }

    v12 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:candidateCopy range:v7];
    [v12 setUnderlineStyle:0];
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    candidate3 = [candidateCopy candidate];
    [underlinedWordData setObject:v12 forKey:candidate3];
  }

  else
  {
    v15 = _UIKeyboardLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Attempted to track underline for empty candidate", v16, 2u);
    }
  }
}

- (BOOL)presentTextChoicePromptForText:(id)text delay:(double)delay autocorrectionRects:(id)rects
{
  v29[2] = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  textCopy = text;
  underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v11 = [underlinedWordData objectForKey:textCopy];

  if (v11 && (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || ![v11 underlineStyle]))
  {
    savedLists = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    documentTextToReplace = [v11 documentTextToReplace];
    v14 = [savedLists objectForKey:documentTextToReplace];

    if (v14)
    {
      corrections = [v14 corrections];
      autocorrection = [corrections autocorrection];
    }

    else
    {
      autocorrection = 0;
    }

    if ([rectsCopy count])
    {
      firstObject = [rectsCopy firstObject];
      [firstObject CGRectValue];
      v24 = *(MEMORY[0x1E695EFD0] + 16);
      v26 = *MEMORY[0x1E695EFD0];
      v25 = v26;
      v27 = v24;
      v28 = *(MEMORY[0x1E695EFD0] + 32);
      v23 = v28;
      v18 = [_UITextUnderlineRect underlineRectWithRect:"underlineRectWithRect:offset:transform:" offset:&v26 transform:?];

      lastObject = [rectsCopy lastObject];
      [lastObject CGRectValue];
      v26 = v25;
      v27 = v24;
      v28 = v23;
      v20 = [_UITextUnderlineRect underlineRectWithRect:"underlineRectWithRect:offset:transform:" offset:&v26 transform:?];

      v29[0] = v18;
      v29[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      [v11 setUnderlines:v21];
    }

    [v11 setIsAutofillDoubleLineUI:0];
    [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v11 originalCandidate:autocorrection delay:delay];
  }

  return v11 != 0;
}

- (void)updateReplacements:(id)replacements forCandidate:(id)candidate
{
  replacementsCopy = replacements;
  candidateCopy = candidate;
  firstObject = [replacementsCopy firstObject];
  if (firstObject)
  {
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v9 = [underlinedWordData objectForKey:candidateCopy];

    v10 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:candidateCopy];
    if (!v9)
    {
      v11 = [replacementsCopy count];
      replacementText = [firstObject replacementText];
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v9 = [_UIReplacementCandidate candidateForDocumentText:candidateCopy revertText:replacementText textChoices:0 range:v10 underlineStyle:0 promptStyle:v13 promptButton:2 * (v11 < 2)];
    }

    if ([replacementsCopy count])
    {
      array = [MEMORY[0x1E695DF70] array];
      if ([replacementsCopy count])
      {
        v15 = 0;
        do
        {
          v16 = [replacementsCopy objectAtIndex:v15];
          replacementText2 = [v16 replacementText];

          if (replacementText2)
          {
            replacementText3 = [v16 replacementText];
            [array addObject:replacementText3];
          }

          ++v15;
        }

        while (v15 < [replacementsCopy count]);
      }

      if ([array count])
      {
        [v9 setTextChoices:array];
      }
    }

    textChoices = [v9 textChoices];
    v20 = [textChoices count];

    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    [v9 setPreferredPromptStyle:v21];
    [v9 setPreferredPromptButton:2 * (v20 < 2)];
    underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [underlinedWordData2 setObject:v9 forKey:candidateCopy];
  }
}

- (void)updateReplacementsForSavedCandidate:(id)candidate
{
  v51 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(_UITextChoiceAccelerationAssistant *)self listForFinalString:candidateCopy];
  v7 = [(_UITextChoiceAccelerationAssistant *)self alternateCorrectionsForList:v6];
  v8 = [(_UITextChoiceAccelerationAssistant *)self autocorrectionForList:v6];
  input = [v8 input];
  v10 = [input length];

  if (v10)
  {
    delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
    inputDelegateManager = [delegate inputDelegateManager];
    asyncCapableInputDelegate = [inputDelegateManager asyncCapableInputDelegate];

    if (asyncCapableInputDelegate)
    {
      delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      inputDelegateManager2 = [delegate2 inputDelegateManager];
      selectedText = [inputDelegateManager2 selectedText];
    }

    else
    {
      selectedText = 0;
    }

    input2 = [v8 input];
    v18 = [input2 isEqualToString:selectedText];

    if (v18)
    {
      candidate = [v8 candidate];
      v20 = [candidate isEqualToString:selectedText];

      if (v20)
      {
LABEL_10:

        goto LABEL_11;
      }

      candidate2 = [v8 candidate];
    }

    else
    {
      candidate2 = [v8 input];
    }

    v22 = candidate2;
    [array addObject:candidate2];

    goto LABEL_10;
  }

LABEL_11:
  if ([v7 count])
  {
    v44 = v8;
    v23 = candidateCopy;
    v24 = v6;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v7;
    v26 = v7;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          candidate3 = [*(*(&v46 + 1) + 8 * i) candidate];
          [array addObject:candidate3];
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    v7 = v25;
    v6 = v24;
    candidateCopy = v23;
    v8 = v44;
  }

  if ([array count])
  {
    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v33 = [underlinedWordData objectForKey:candidateCopy];

    if (!v33)
    {
      v34 = [array count];
      v35 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:candidateCopy];
      [array firstObject];
      v45 = v6;
      v37 = v36 = v7;
      if (v34 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      v33 = [_UIReplacementCandidate candidateForDocumentText:candidateCopy revertText:v37 textChoices:0 range:v35 underlineStyle:0 promptStyle:v38 promptButton:2 * (v34 < 2)];

      v7 = v36;
      v6 = v45;
    }

    v39 = [array copy];
    [v33 setTextChoices:v39];

    textChoices = [v33 textChoices];
    v41 = [textChoices count];

    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    [v33 setPreferredPromptStyle:v42];
    [v33 setPreferredPromptButton:2 * (v41 < 2)];
    underlinedWordData2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [underlinedWordData2 setObject:v33 forKey:candidateCopy];
  }
}

- (void)restoreInsertionPointPositionWithDocument:(id)document originalPositionRange:(_NSRange)range targetRange:(_NSRange)targetRange payloadRange:(_NSRange)payloadRange contextBefore:(BOOL)before
{
  length = targetRange.length;
  v8 = range.length;
  location = range.location;
  documentCopy = document;
  v15 = documentCopy;
  if (before)
  {
    location += payloadRange.length - length;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4505 description:{@"restoreInsertionPointPositionWithDocument to an invalid range (%lu)", 0x7FFFFFFFFFFFFFFFLL}];

      documentCopy = v15;
    }
  }

  v13 = [documentCopy _textRangeFromNSRange:{location, v8}];
  [v15 setSelectedTextRange:v13];
}

- (void)resetDictationChoicesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v6 = [dictationVoiceEditingPrompts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(dictationVoiceEditingPrompts);
        }

        [*(*(&v15 + 1) + 8 * v9++) removeAnimated:animatedCopy withDuration:1.0];
      }

      while (v7 != v9);
      v7 = [dictationVoiceEditingPrompts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  dictationVoiceEditingPrompts2 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v11 = [dictationVoiceEditingPrompts2 count];

  if (v11)
  {
    [(_UITextChoiceAccelerationAssistant *)self releaseSelectionGrabberAssertion];
    dictationVoiceEditingPrompts3 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    [dictationVoiceEditingPrompts3 removeAllObjects];
  }

  dictationDisambiguationUIAssertion = [(_UITextChoiceAccelerationAssistant *)self dictationDisambiguationUIAssertion];

  if (dictationDisambiguationUIAssertion)
  {
    dictationDisambiguationUIAssertion2 = [(_UITextChoiceAccelerationAssistant *)self dictationDisambiguationUIAssertion];
    [dictationDisambiguationUIAssertion2 _invalidate];

    [(_UITextChoiceAccelerationAssistant *)self setDictationDisambiguationUIAssertion:0];
  }
}

- (void)resetDictationUnderlines
{
  v23 = *MEMORY[0x1E69E9840];
  underlinedWordDataForDictation = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  v4 = [underlinedWordDataForDictation count];

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    underlinedWordDataForDictation2 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    allValues = [underlinedWordDataForDictation2 allValues];

    v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          _underlineView = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
          underlines = [v11 underlines];
          [_underlineView removeUnderlines:underlines animated:1];

          ++v10;
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    underlinedWordDataForDictation3 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    allKeys = [underlinedWordDataForDictation3 allKeys];

    underlinedWordData = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [underlinedWordData removeObjectsForKeys:allKeys];

    underlinedWordDataForDictation4 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    [underlinedWordDataForDictation4 removeAllObjects];

    if (!+[UIKeyboard isKeyboardProcess])
    {
      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }
}

- (void)cancelPendingDictationPromptDisplay
{
  dictationUnderlineDisplayTimer = [(_UITextChoiceAccelerationAssistant *)self dictationUnderlineDisplayTimer];
  [dictationUnderlineDisplayTimer invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setDictationUnderlineDisplayTimer:0];
  dictationPromptAutoUpdateTimer = [(_UITextChoiceAccelerationAssistant *)self dictationPromptAutoUpdateTimer];
  [dictationPromptAutoUpdateTimer invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setDictationPromptAutoUpdateTimer:0];
}

- (void)decorateTextInRanges:(id)ranges replacementTexts:(id)texts allowAutomaticReplacement:(BOOL)replacement autoHide:(BOOL)hide voiceCommandTrackingUUID:(id)d withCompletionHandler:(id)handler
{
  hideCopy = hide;
  replacementCopy = replacement;
  v67[1] = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  textsCopy = texts;
  handlerCopy = handler;
  if (+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_37;
  }

  v16 = [rangesCopy count];
  if (v16 != [textsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4567 description:@"ranges and replacementTexts must have the same amount of items"];
  }

  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];

  if (!dictationVoiceEditingPrompts)
  {
    v18 = objc_opt_new();
    [(_UITextChoiceAccelerationAssistant *)self setDictationVoiceEditingPrompts:v18];
  }

  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  textHighlightColor = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
  v54 = hideCopy;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    _cursorTintColor = [selectionViewManager _cursorTintColor];

    textHighlightColor = _cursorTintColor;
  }

  v59 = [rangesCopy count];
  v22 = v59 == 1 && replacementCopy;
  v53 = v22;
  if ([rangesCopy count])
  {
    v23 = 0;
    v62 = 1;
    v57 = textsCopy;
    v58 = rangesCopy;
    selfCopy = self;
    v56 = textHighlightColor;
    do
    {
      v24 = [rangesCopy objectAtIndexedSubscript:v23];
      v25 = [textsCopy objectAtIndexedSubscript:v23];
      v26 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v24];
      if (v24)
      {
        _document = [(_UITextChoiceAccelerationAssistant *)self _document];
        v28 = [_document textInRange:v24];

        if (v28 && [v28 length])
        {
          v60 = v25;
          v67[0] = v25;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
          [MEMORY[0x1E696AD98] numberWithInt:v23];
          v31 = v30 = self;
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rangesCopy, "count")}];
          v33 = [_UIReplacementCandidate candidateForDocumentText:v28 revertText:v28 textChoices:v29 range:v24 underlineStyle:0 promptStyle:3 promptButton:5 voiceCommandDisambiguationSelectedIndex:v31 voiceCommandDisambiguationTargetCount:v32];

          v34 = [(_UITextChoiceAccelerationAssistant *)v30 createPromptWithCompletionHandler:handlerCopy];
          [v34 setPromptStyle:3];
          [v34 setDictationPromptDelegate:v30];
          dictationVoiceEditingPrompts2 = [(_UITextChoiceAccelerationAssistant *)v30 dictationVoiceEditingPrompts];
          [dictationVoiceEditingPrompts2 addObject:v34];

          parentViewForPrompt = [(_UITextChoiceAccelerationAssistant *)v30 parentViewForPrompt];
          [parentViewForPrompt _convertVisualAltitude:v34 toView:0.0];
          [v34 _setVisualAltitude:?];
          v37 = v30;
          textHighlightColor = v56;
          textInputView = [(_UITextChoiceAccelerationAssistant *)v37 textInputView];
          firstObject = [v26 firstObject];
          [v34 updateWithChoices:0 fromParentView:parentViewForPrompt referenceTextView:textInputView presentedFromRect:firstObject textHighlightColor:v56];

          [v34 updateButtonForType:5];
          [v34 setReplacement:v33];
          if (v59 != 1)
          {
            [v34 setLabelNumber:v62];
          }

          self = selfCopy;
          [(_UITextChoiceAccelerationAssistant *)selfCopy updatePrompt:v34 forReplacementCandidate:v33];
          ++v62;

          textsCopy = v57;
          rangesCopy = v58;
          v25 = v60;
        }
      }

      ++v23;
    }

    while (v23 < [rangesCopy count]);
  }

  dictationVoiceEditingPrompts3 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  if ([dictationVoiceEditingPrompts3 count] <= 1)
  {
    selfCopy2 = self;
    v44 = v53;
    v43 = v54;
    goto LABEL_25;
  }

  [(_UITextChoiceAccelerationAssistant *)self dictationDisambiguationUIAssertion];
  v42 = v41 = self;

  v44 = v53;
  v43 = v54;
  if (!v42)
  {
    dictationVoiceEditingPrompts3 = +[UIDictationController activeInstance];
    _obtainDisambiguationUIAssertion = [dictationVoiceEditingPrompts3 _obtainDisambiguationUIAssertion];
    selfCopy2 = v41;
    [(_UITextChoiceAccelerationAssistant *)v41 setDictationDisambiguationUIAssertion:_obtainDisambiguationUIAssertion];

LABEL_25:
    v41 = selfCopy2;
  }

  [(_UITextChoiceAccelerationAssistant *)v41 setupPassthroughContainer];
  if (v44)
  {
    [(_UITextChoiceAccelerationAssistant *)v41 cancelPendingDictationPromptDisplay];
    dictationVoiceEditingPrompts4 = [(_UITextChoiceAccelerationAssistant *)v41 dictationVoiceEditingPrompts];
    firstObject2 = [dictationVoiceEditingPrompts4 firstObject];

    if (firstObject2)
    {
      v49 = MEMORY[0x1E695DFF0];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __158___UITextChoiceAccelerationAssistant_decorateTextInRanges_replacementTexts_allowAutomaticReplacement_autoHide_voiceCommandTrackingUUID_withCompletionHandler___block_invoke;
      v64[3] = &unk_1E71093D0;
      v64[4] = v41;
      v65 = firstObject2;
      v66 = handlerCopy;
      v50 = [v49 scheduledTimerWithTimeInterval:0 repeats:v64 block:0.2];
      [(_UITextChoiceAccelerationAssistant *)v41 setDictationPromptAutoUpdateTimer:v50];
    }

    else if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else if (v43)
  {
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __158___UITextChoiceAccelerationAssistant_decorateTextInRanges_replacementTexts_allowAutomaticReplacement_autoHide_voiceCommandTrackingUUID_withCompletionHandler___block_invoke_2;
    v63[3] = &unk_1E7106478;
    v63[4] = v41;
    v51 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v63 block:0.2];
    [(_UITextChoiceAccelerationAssistant *)v41 setDictationUnderlineDisplayTimer:v51];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_37:
}

- (void)decorateTextInRects:(id)rects targetTextArray:(id)array replacementTexts:(id)texts deltaRanges:(id)ranges originalSelectedRange:(_NSRange)range allowAutomaticReplacement:(BOOL)replacement autoHide:(BOOL)hide voiceCommandUUID:(id)self0 withCompletionHandler:(id)self1
{
  v88[1] = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  arrayCopy = array;
  textsCopy = texts;
  rangesCopy = ranges;
  dCopy = d;
  handlerCopy = handler;
  if (+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_42;
  }

  v19 = [rectsCopy count];
  if (v19 != [textsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4658 description:@"rects and replacementTexts must have the same amount of items"];
  }

  v20 = [rectsCopy count];
  if (v20 != [arrayCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4659 description:@"rects and targetTextArray must have the same amount of items"];
  }

  if (rangesCopy)
  {
    v21 = [rectsCopy count];
    if (v21 != [rangesCopy count])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4660 description:@"deltaRanges must be nil or rects and deltaRanges must have the same amount of items"];
    }
  }

  dictationVoiceEditingPrompts = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];

  if (!dictationVoiceEditingPrompts)
  {
    v23 = objc_opt_new();
    [(_UITextChoiceAccelerationAssistant *)self setDictationVoiceEditingPrompts:v23];
  }

  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  textHighlightColor = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    selectionViewManager = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    _cursorTintColor = [selectionViewManager _cursorTintColor];

    textHighlightColor = _cursorTintColor;
  }

  v77 = textHighlightColor;
  v27 = [rectsCopy count];
  v28 = v27 == 1 && replacement;
  v71 = v28;
  if (v27 != [arrayCopy count])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4675 description:@"rects must match targets"];
  }

  selfCopy = self;
  if (v27)
  {
    v29 = v27;
    v30 = 0;
    v74 = arrayCopy;
    v75 = rectsCopy;
    v72 = v27;
    v73 = textsCopy;
    do
    {
      v31 = [rectsCopy objectAtIndexedSubscript:v30];
      v32 = [arrayCopy objectAtIndexedSubscript:v30];
      v33 = v32;
      if (v32 && [v32 length])
      {
        v34 = [textsCopy objectAtIndexedSubscript:v30];
        v88[0] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
        v36 = [MEMORY[0x1E696AD98] numberWithInt:v30];
        v37 = [MEMORY[0x1E696AD98] numberWithInt:v29];
        v81 = [_UIReplacementCandidate candidateForDocumentText:v33 revertText:v33 textChoices:v35 range:0 underlineStyle:0 promptStyle:0 promptButton:5 voiceCommandDisambiguationSelectedIndex:v36 voiceCommandDisambiguationTargetCount:v37];

        [v81 setVoiceCommandTrackingUUID:dCopy];
        v38 = [(_UITextChoiceAccelerationAssistant *)selfCopy createPromptWithCompletionHandler:handlerCopy];
        [v38 setDictationPromptDelegate:selfCopy];
        [v38 setPromptStyle:3];
        dictationVoiceEditingPrompts2 = [(_UITextChoiceAccelerationAssistant *)selfCopy dictationVoiceEditingPrompts];
        [dictationVoiceEditingPrompts2 addObject:v38];

        parentViewForPrompt = [(_UITextChoiceAccelerationAssistant *)selfCopy parentViewForPrompt];
        [parentViewForPrompt _convertVisualAltitude:v38 toView:0.0];
        [v38 _setVisualAltitude:?];
        [v31 CGRectValue];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        delegate = [(_UITextChoiceAccelerationAssistant *)selfCopy delegate];
        inputOverlayContainer = [delegate inputOverlayContainer];
        v51 = [_UIMutableTextSelectionRect selectionRectWithRect:inputOverlayContainer fromView:v42, v44, v46, v48];

        v29 = v72;
        textInputView = [(_UITextChoiceAccelerationAssistant *)selfCopy textInputView];
        [v38 updateWithChoices:0 fromParentView:parentViewForPrompt referenceTextView:textInputView presentedFromRect:v51 textHighlightColor:v77];

        [v38 updateButtonForType:5];
        [v38 setReplacement:v81];
        if (v72 != 1)
        {
          [v38 setLabelNumber:v30 + 1];
        }

        if (rangesCopy)
        {
          v53 = [rangesCopy objectAtIndex:v30];
          rangeValue = [v53 rangeValue];
          [v38 setDeltaRange:{rangeValue, v55}];
        }

        [v38 setOriginalSelectedRange:{range.location, range.length}];
        [(_UITextChoiceAccelerationAssistant *)selfCopy updatePrompt:v38 forReplacementCandidate:v81];

        arrayCopy = v74;
        rectsCopy = v75;
        textsCopy = v73;
      }

      ++v30;
    }

    while (v29 != v30);
  }

  dictationVoiceEditingPrompts3 = [(_UITextChoiceAccelerationAssistant *)selfCopy dictationVoiceEditingPrompts];
  if ([dictationVoiceEditingPrompts3 count] <= 1)
  {
    v58 = v77;
    v59 = v71;
    goto LABEL_32;
  }

  dictationDisambiguationUIAssertion = [(_UITextChoiceAccelerationAssistant *)selfCopy dictationDisambiguationUIAssertion];

  v58 = v77;
  v59 = v71;
  if (!dictationDisambiguationUIAssertion)
  {
    dictationVoiceEditingPrompts3 = +[UIDictationController activeInstance];
    _obtainDisambiguationUIAssertion = [dictationVoiceEditingPrompts3 _obtainDisambiguationUIAssertion];
    [(_UITextChoiceAccelerationAssistant *)selfCopy setDictationDisambiguationUIAssertion:_obtainDisambiguationUIAssertion];

LABEL_32:
  }

  [(_UITextChoiceAccelerationAssistant *)selfCopy setupPassthroughContainer];
  if (v59)
  {
    [(_UITextChoiceAccelerationAssistant *)selfCopy cancelPendingDictationPromptDisplay];
    dictationVoiceEditingPrompts4 = [(_UITextChoiceAccelerationAssistant *)selfCopy dictationVoiceEditingPrompts];
    firstObject = [dictationVoiceEditingPrompts4 firstObject];

    if (firstObject)
    {
      v63 = MEMORY[0x1E695DFF0];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke;
      v85[3] = &unk_1E71093D0;
      v85[4] = selfCopy;
      v86 = firstObject;
      v87 = handlerCopy;
      v64 = [v63 scheduledTimerWithTimeInterval:0 repeats:v85 block:0.2];
      [(_UITextChoiceAccelerationAssistant *)selfCopy setDictationPromptAutoUpdateTimer:v64];
    }
  }

  else if (hide)
  {
    v65 = MEMORY[0x1E695DFF0];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke_2;
    v83[3] = &unk_1E71093F8;
    v83[4] = selfCopy;
    v84 = handlerCopy;
    v66 = [v65 scheduledTimerWithTimeInterval:0 repeats:v83 block:0.2];
    [(_UITextChoiceAccelerationAssistant *)selfCopy setDictationUnderlineDisplayTimer:v66];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_42:
}

- (void)presentIfNeededForRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy isEmpty])
  {
    start = [rangeCopy start];
    v5 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:start];

    if (v5 || (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v6 = objc_claimAutoreleasedReturnValue(), [rangeCopy end], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_rangeOfEnclosingWord:", v7), v5 = objc_claimAutoreleasedReturnValue(), v7, v6, v5))
    {
      v8 = v5;

      v9 = v8;
LABEL_6:
      v15 = v9;
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      v11 = [_document textInRange:v15];

      v12 = [(_UITextChoiceAccelerationAssistant *)self candidateForFinalString:v11];
      if (v12)
      {
        [(_UITextChoiceAccelerationAssistant *)self showChoicesForAutocorrectionCandidate:v12 range:v15];
      }

      else
      {
        [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
      }

      v13 = v15;
      goto LABEL_11;
    }
  }

  v9 = rangeCopy;
  if (rangeCopy)
  {
    goto LABEL_6;
  }

  [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
  v13 = 0;
LABEL_11:
}

- (id)anchorRangeForText:(id)text
{
  textCopy = text;
  activeSelectedRange = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
  if (activeSelectedRange)
  {
    _document = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [activeSelectedRange end];
    v8 = [_document _rangeOfText:textCopy endingAtPosition:v7];

    if (v8)
    {
      v9 = v8;

      activeSelectedRange = v9;
    }
  }

  return activeSelectedRange;
}

- (id)underlineRectsForInput:(id)input
{
  v28 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (+[UIKeyboard isKeyboardProcess])
  {
    array = [MEMORY[0x1E695DF70] array];
    v6 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:inputCopy];
    v7 = v6;
    if (v6 && ([v6 isEmpty] & 1) == 0)
    {
      v8 = +[UIKeyboard currentDocumentState];
      _document = [(_UITextChoiceAccelerationAssistant *)self _document];
      v10 = [v7 _asNSRangeRelativeToDocument:_document];
      v12 = v11;

      v21 = v12;
      v22 = v10;
      v13 = [v8 rectsForCharacterRange:v10 withGranularity:{v12, 1}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v23 + 1) + 8 * i) CGRectValue];
            v18 = [(_UITextChoiceAccelerationAssistant *)self underlineRectFromDocumentRect:?];
            if (v18)
            {
              [array addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }

      if (![array count])
      {
        [v8 firstRectForCharacterRange:{v22, v21}];
        v19 = [(_UITextChoiceAccelerationAssistant *)self underlineRectFromDocumentRect:?];
        if (v19)
        {
          [array addObject:v19];
        }
      }
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)underlineRectFromDocumentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textInputView = [(_UITextChoiceAccelerationAssistant *)self textInputView];
  delegate = [(_UITextChoiceAccelerationAssistant *)self delegate];
  inputOverlayContainer = [delegate inputOverlayContainer];
  [textInputView convertRect:inputOverlayContainer toCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  delegate2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  inputOverlayContainer2 = [delegate2 inputOverlayContainer];
  v21 = [_UIMutableTextSelectionRect selectionRectWithRect:inputOverlayContainer2 fromView:v12, v14, v16, v18];

  v22 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:v21 forCandidate:0];

  return v22;
}

- (void)textWillBeginScrolling
{
  if ([(_UITextChoiceAccelerationAssistant *)self promptIsVisible])
  {
    prompt = [(_UITextChoiceAccelerationAssistant *)self prompt];
    replacement = [prompt replacement];
    IsSmartReply = _replacementSourceIsSmartReply(replacement);

    if (IsSmartReply)
    {
      v6 = _UIKeyboardSmartReplyLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Text choice assistant is stashing smart replies as scrolling begins", v10, 2u);
      }

      prompt2 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      replacement2 = [prompt2 replacement];
      stashedReplacement = self->_stashedReplacement;
      self->_stashedReplacement = replacement2;

      [(_UITextChoiceAccelerationAssistant *)self clearSecureCandidateHashes];
    }
  }
}

- (void)textDidEndScrolling
{
  v3 = self->_stashedReplacement;
  stashedReplacement = self->_stashedReplacement;
  self->_stashedReplacement = 0;

  if (![(_UITextChoiceAccelerationAssistant *)self promptIsVisible]&& _replacementSourceIsSmartReply(v3))
  {
    v5 = _UIKeyboardSmartReplyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Text choice assistant is restoring stashed smart replies as scrolling ends", v7, 2u);
    }

    candidateChoices = [(_UIReplacementCandidate *)v3 candidateChoices];
    [(_UITextChoiceAccelerationAssistant *)self showChoicesForCandidates:candidateChoices];
  }
}

- (_UIAssertion)grabberSuppressionAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_grabberSuppressionAssertion);

  return WeakRetained;
}

@end