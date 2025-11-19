@interface _UITextChoiceAccelerationAssistant
- (BOOL)autocorrectInlinePromptIsVisible;
- (BOOL)canHandleDictationChoiceForPromptIndex:(int64_t)a3;
- (BOOL)dismissIfPresented;
- (BOOL)positionIsAtDocumentStart:(id)a3;
- (BOOL)presentTextChoicePromptForText:(id)a3 delay:(double)a4 autocorrectionRects:(id)a5;
- (BOOL)promptIsVisible;
- (BOOL)showAutocorrectReplacementChoicesIfNeeded:(id)a3 forRange:(id)a4;
- (BOOL)showChoicesForAutocorrectionCandidate:(id)a3 range:(id)a4 delay:(double)a5;
- (BOOL)showChoicesForCandidates:(id)a3;
- (BOOL)showChoicesForTextInRange:(id)a3;
- (BOOL)showChoicesForTextInRange:(id)a3 withReplacements:(id)a4 delay:(double)a5;
- (BOOL)showDictationChoicesForTextInRange:(id)a3;
- (BOOL)showPromptForReplacementCandidate:(id)a3 originalCandidate:(id)a4 delay:(double)a5;
- (BOOL)showingPrompt;
- (BOOL)showingPromptsIncludingDictationChoices;
- (BOOL)textChoiceInteraction:(id)a3 shouldRespondToTapAtPoint:(CGPoint)a4;
- (CGRect)convertedSelectionRect:(id)a3;
- (UITextInput)textInputResponder;
- (UITextInteractionAssistant)interactionAssistant;
- (_UIAssertion)grabberSuppressionAssertion;
- (_UITextChoiceAccelerationAssistant)initWithInteractionAssistant:(id)a3;
- (_UITextChoiceAccelerationAssistant)initWithTextInputResponder:(id)a3;
- (_UITextChoiceAccelerationBubble)prompt;
- (_UITextChoicesAssistantDelegate)delegate;
- (id)_document;
- (id)_existingUnderlineView;
- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4;
- (id)_underlineView;
- (id)activeSelectedRange;
- (id)alternateCorrectionsForList:(id)a3;
- (id)anchorRangeForText:(id)a3;
- (id)autocorrectionForList:(id)a3;
- (id)candidateForFinalString:(id)a3;
- (id)createPromptWithCompletionHandler:(id)a3;
- (id)currentKeyboardSceneDelegate;
- (id)defaultUnderlineColor;
- (id)keyFromRange:(id)a3;
- (id)listForFinalString:(id)a3;
- (id)nearestDictationPromptForPoint:(CGPoint)a3 withEvent:(id)a4;
- (id)parentViewForPrompt;
- (id)rangeForTextChoicesAtPosition:(id)a3;
- (id)rangeOfAutocorrectionForString:(id)a3 atPosition:(id)a4 inDocument:(id)a5;
- (id)selectionRectsForRange:(id)a3;
- (id)selectionViewManager;
- (id)textHighlightColor;
- (id)textInputView;
- (id)underlineRectForTextSelectionRect:(id)a3 forCandidate:(id)a4;
- (id)underlineRectFromDocumentRect:(CGRect)a3;
- (id)underlineRectsForCandidate:(id)a3 range:(id)a4;
- (id)underlineRectsForCandidate:(id)a3 selectionRects:(id)a4;
- (id)underlineRectsForInput:(id)a3;
- (id)updateUnderlineRects:(id)a3 forRange:(id)a4;
- (unint64_t)numberOfDisambiguationOptions;
- (void)_addUnderlineView;
- (void)_removeUnderlinesRelativeToPosition:(id)a3 compare:(int64_t)a4;
- (void)activateUnderlineViewIfNeeded;
- (void)addList:(id)a3 forCandidate:(id)a4;
- (void)addUnderlineForCandidate:(id)a3 range:(id)a4;
- (void)addUnderlinesForCandidate:(id)a3 range:(id)a4;
- (void)adjustRangesAfterPosition:(id)a3 byOffset:(int64_t)a4;
- (void)cancelPendingDictationPromptDisplay;
- (void)cancelPromptDisplay;
- (void)clearSecureCandidateHashes;
- (void)clearUnderlineForPosition:(id)a3;
- (void)clearUnderlinesIfNeededBeforePosition:(id)a3;
- (void)clearUnderlinesInRange:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)decorateTextInRanges:(id)a3 replacementTexts:(id)a4 allowAutomaticReplacement:(BOOL)a5 autoHide:(BOOL)a6 voiceCommandTrackingUUID:(id)a7 withCompletionHandler:(id)a8;
- (void)decorateTextInRects:(id)a3 targetTextArray:(id)a4 replacementTexts:(id)a5 deltaRanges:(id)a6 originalSelectedRange:(_NSRange)a7 allowAutomaticReplacement:(BOOL)a8 autoHide:(BOOL)a9 voiceCommandUUID:(id)a10 withCompletionHandler:(id)a11;
- (void)didRecognizeDismissal;
- (void)dismissWithoutSelection;
- (void)fullAutocorrectionForWord:(id)a3 atPosition:(id)a4 completionHandler:(id)a5;
- (void)informAnalyticsOfCompletedCandidateReplacement;
- (void)informAnalyticsOfUpcomingCandidateReplacement;
- (void)presentIfNeededForRange:(id)a3;
- (void)refreshExistingUnderlines;
- (void)releaseSelectionGrabberAssertion;
- (void)removeActivePromptAndUnderline;
- (void)removeAllUnderlinesAnimated:(BOOL)a3;
- (void)removePassthroughContainer;
- (void)removeUnderlinesAfterPosition:(id)a3;
- (void)removeUnderlinesBeforePosition:(id)a3;
- (void)removeWordForRange:(id)a3 animated:(BOOL)a4;
- (void)resetDictationChoicesAnimated:(BOOL)a3;
- (void)resetDictationUnderlines;
- (void)restoreInsertionPointPositionWithDocument:(id)a3 originalPositionRange:(_NSRange)a4 targetRange:(_NSRange)a5 payloadRange:(_NSRange)a6 contextBefore:(BOOL)a7;
- (void)selectionDidChange;
- (void)setNeedsUnderlineUpdate;
- (void)setupPassthroughContainer;
- (void)shouldShowPromptForWebKitText:(id)a3 atPosition:(id)a4 completionHandler:(id)a5;
- (void)textChoiceInteraction:(id)a3 receivedTapAtLocation:(CGPoint)a4;
- (void)textDidEndScrolling;
- (void)textWillBeginScrolling;
- (void)trackUnderlineForWebKitCandidate:(id)a3;
- (void)underlineTextInRange:(id)a3 revertText:(id)a4 textChoices:(id)a5 isActiveEditingSession:(BOOL)a6;
- (void)updateActivePromptForCandidate:(id)a3 displayRects:(id)a4 highlightOnly:(BOOL)a5;
- (void)updateDictationChoicesFromPromptIndex:(int64_t)a3 completionHandler:(id)a4;
- (void)updateDocumentFromPrompt:(id)a3 completionHandler:(id)a4;
- (void)updatePrompt:(id)a3 forReplacementCandidate:(id)a4;
- (void)updatePromptLocation:(id)a3;
- (void)updateReplacements:(id)a3 forCandidate:(id)a4;
- (void)updateReplacementsForSavedCandidate:(id)a3;
- (void)updateSelectionHighlights;
- (void)updateUnderlineGeometryIfNeeded;
- (void)updateUnderlinesForAddedRange:(id)a3;
- (void)updateUnderlinesIfNeededAfterPosition:(id)a3;
@end

@implementation _UITextChoiceAccelerationAssistant

- (id)parentViewForPrompt
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self currentKeyboardSceneDelegate];
  v4 = [v3 containerWindow];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v6 = [v7 inputOverlayContainer];
  }

  return v6;
}

- (id)currentKeyboardSceneDelegate
{
  v2 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v3 = [v2 inputOverlayContainer];
  v4 = [v3 keyboardSceneDelegate];

  if (!v4)
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  return v4;
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
  v3 = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  v4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v5 = v4;
  if (v3)
  {
    [v4 removeAnimated:1];

    if (![(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
    {
      goto LABEL_11;
    }

    v6 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    v5 = [v7 end];

    if (v5)
    {
      v8 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

      if (v8)
      {
        v9 = [(_UITextChoiceAccelerationAssistant *)self delegate];
        v10 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v11 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v12 = [v11 textRangeFromPosition:v5 toPosition:v5];
        [v9 updateTextChoicePromptSelection:v10 toRange:v12];
      }
    }
  }

  else
  {
    [v4 reset];
  }

LABEL_11:
  if (!+[UIKeyboard usesInputSystemUI])
  {
    return v3;
  }

  if ([(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    v13 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [v13 dismissTextChoicePrompt];

    LOBYTE(v3) = 1;
    return v3;
  }

LABEL_2:
  LOBYTE(v3) = 0;
  return v3;
}

- (void)cancelPromptDisplay
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self promptDisplayTimer];
  [v3 invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setPromptDisplayTimer:0];

  [(_UITextChoiceAccelerationAssistant *)self removePassthroughContainer];
}

- (void)removePassthroughContainer
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];

  if (v3)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];
    [v4 removeFromSuperview];

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
  v3 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [v5 alpha];
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
    v3 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (v3)
    {
      v5 = v3;
      v4 = [v3 end];
      [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:v4];

      v3 = v5;
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
    v3 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    v4 = [v3 _existingUnderlineView];
  }

  else
  {
    v4 = self->_selectionHighlightView;
  }

  return v4;
}

- (id)selectionViewManager
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (v3)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    v5 = [v4 _selectionViewManager];
  }

  else
  {
    v7 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (v7)
    {
      v8 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v5 = [v8 _selectionDisplayInteraction];

      if (!v5)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v10 = [v9 textInputView];
        v11 = [v10 interactions];

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
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

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

        v5 = v17;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
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
    v3 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v4 = [v3 isEditing];

    if ((v4 & 1) == 0)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:0];
      [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
    }

    v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [v5 copy];

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
    v9 = v7;
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
            v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v16 = [v15 textInRange:v14];

            v17 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v14];
            v18 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            v19 = [v18 objectForKey:v17];

            if (v19)
            {
              v20 = [v19 documentTextToReplace];
              v21 = [v20 isEqualToString:v16];

              if (v21)
              {
                if ((v11 & 1) == 0)
                {
                  v22 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v14];
                  v23 = [v22 firstObject];
                  [v23 rect];
                  v25 = v24;
                  v27 = v26;

                  v28 = [v19 underlines];
                  v29 = [v28 firstObject];
                  [v29 rect];
                  v31 = v30;
                  v33 = v32;

                  if (v25 == v31 && v27 == v33)
                  {
                    v35 = [v22 lastObject];
                    [v35 rect];
                    v37 = v36;
                    v39 = v38;
                    v40 = [v19 underlines];
                    v41 = [v40 lastObject];
                    [v41 rect];
                    v43 = v42;
                    v45 = v44;

                    v7 = v50;
                    if (v37 == v43 && v39 == v45)
                    {

                      v9 = v50;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                v46 = [v19 underlines];
                v47 = [(_UITextChoiceAccelerationAssistant *)self updateUnderlineRects:v46 forRange:v14];
                [v19 setUnderlines:v47];

                v7 = v50;
                v48 = [v19 underlines];
                [v49 addObjectsFromArray:v48];

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
        v9 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [v9 setUnderlineRects:v49];
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
    v3 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    v4 = [v3 textInput];
  }

  else
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    v5 = [v3 activeSelectionController];
    v6 = [v5 selection];
    v4 = [v6 document];
  }

  return v4;
}

- (_UITextChoiceAccelerationAssistant)initWithInteractionAssistant:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UITextChoiceAccelerationAssistant;
  v5 = [(_UITextChoiceAccelerationAssistant *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactionAssistant, v4);
    v7 = [MEMORY[0x1E695DF70] array];
    underlinedRanges = v6->_underlinedRanges;
    v6->_underlinedRanges = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    savedLists = v6->_savedLists;
    v6->_savedLists = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    underlinedWordData = v6->_underlinedWordData;
    v6->_underlinedWordData = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    underlinedWordDataForDictation = v6->_underlinedWordDataForDictation;
    v6->_underlinedWordDataForDictation = v13;

    v6->_usingCustomInteraction = 0;
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel_displayDidChange_ name:@"UITextSelectionWillScroll" object:0];
    [v15 addObserver:v6 selector:sel_displayDidChange_ name:@"UITextSelectionWillZoom" object:0];
    [v15 addObserver:v6 selector:sel_updatePromptLocation_ name:@"UIWindowSceneDidEndLiveResizeNotification" object:0];
  }

  return v6;
}

- (_UITextChoiceAccelerationAssistant)initWithTextInputResponder:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self initWithInteractionAssistant:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textInputResponder, v4);
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

- (BOOL)textChoiceInteraction:(id)a3 shouldRespondToTapAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (![(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction]|| [(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    return 0;
  }

  v8 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  v9 = [v8 closestPositionToPoint:{x, y}];

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

- (void)textChoiceInteraction:(id)a3 receivedTapAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (![(_UITextChoiceAccelerationAssistant *)self showingPrompt])
  {
    v14 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v18 = [v14 closestPositionToPoint:{x, y}];

    if (v18)
    {
      v15 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v18];
      if (v15)
      {
        v10 = v15;
        if ([(_UITextChoiceAccelerationAssistant *)self showDictationChoicesForTextInRange:v15])
        {
          goto LABEL_8;
        }

        v16 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
        v17 = [(_UITextChoiceAccelerationAssistant *)self showAutocorrectReplacementChoicesIfNeeded:v16 forRange:v10];

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
  v7 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  v18 = [v7 closestPositionToPoint:{x, y}];

  v8 = v18;
  if (!v18)
  {
    goto LABEL_12;
  }

  v9 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (v9)
  {
    v10 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v11 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v12 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v13 = [v12 textRangeFromPosition:v18 toPosition:v18];
    [v10 updateTextChoicePromptSelection:v11 toRange:v13];

LABEL_8:
  }

LABEL_11:
  v8 = v18;
LABEL_12:
}

- (id)createPromptWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v8 = v4;
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
  v3 = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];

  if (!v3)
  {
    v4 = [_UITextUnderlineView alloc];
    v5 = [(_UITextUnderlineView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UITextChoiceAccelerationAssistant *)self setSelectionHighlightView:v5];
  }

  v6 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
  v8 = [v6 _hostViewBelowText];

  v7 = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];
  [v8 addSubview:v7];
}

- (id)_underlineView
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    v4 = [v3 _underlineView];
  }

  else
  {
    v4 = self->_selectionHighlightView;
  }

  return v4;
}

- (id)textInputView
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (v3)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    v5 = [v4 view];
    v6 = [v5 textInputView];
  }

  else
  {
    v6 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v6 = [v4 textInputView];
  }

LABEL_6:

  return v6;
}

- (void)activateUnderlineViewIfNeeded
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];

    if (!v3)
    {
      v5 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      [v5 activate];
    }
  }

  else
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self selectionHighlightView];

    if (!v4)
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
    v3 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v4 = [v3 copy];

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
        v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v11 = [v10 textInRange:v9];

        v12 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v9];
        v13 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
        v14 = [v13 objectForKey:v12];

        if (!v14)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v9];
          goto LABEL_44;
        }

        v15 = [v14 documentTextToReplace];
        v16 = [v15 isEqualToString:v11];

        if (v16)
        {
          v17 = [v14 underlines];
          v18 = [(_UITextChoiceAccelerationAssistant *)self updateUnderlineRects:v17 forRange:v9];
          [v14 setUnderlines:v18];

          v19 = [v14 underlines];
          [v65 addObjectsFromArray:v19];

          goto LABEL_44;
        }

        v20 = [v9 start];
        v21 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v22 = [v21 endOfDocument];

        v67 = v22;
        if (v22)
        {
          if (!v20 || (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 comparePosition:v22 toPosition:v20], v23, v24 == -1))
          {
            v25 = v22;

            v20 = v25;
          }
        }

        v26 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v27 = [v26 tokenizer];
        v28 = [v27 rangeEnclosingPosition:v20 withGranularity:1 inDirection:1];

        v68 = v20;
        v69 = v12;
        if (v28 && ([v28 isEmpty] & 1) == 0)
        {
          v39 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v29 = [v39 textInRange:v28];

          v40 = [v14 documentTextToReplace];
          LOBYTE(v39) = [v40 isEqualToString:v29];

          if (v39)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v29 = v11;
        }

        v30 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v31 = [v30 tokenizer];
        v32 = [v31 rangeEnclosingPosition:v20 withGranularity:1 inDirection:0];

        if (v32 && ([v32 isEmpty] & 1) == 0)
        {
          v41 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v33 = [v41 textInRange:v32];

          v42 = [v14 documentTextToReplace];
          LOBYTE(v41) = [v42 isEqualToString:v33];

          if (v41)
          {
            v29 = v33;
            v28 = v32;
LABEL_30:
            v45 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            v46 = [v45 indexOfObject:v9];

            v47 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            v48 = v47;
            v62 = v29;
            if (v46 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v47 addObject:v28];
            }

            else
            {
              [v47 replaceObjectAtIndex:v46 withObject:v28];
            }

            v49 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v28];
            v50 = [MEMORY[0x1E695DF70] array];
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
                    [v50 addObject:v56];
                  }
                }

                v53 = [v51 countByEnumeratingWithState:&v70 objects:v78 count:16];
              }

              while (v53);
            }

            [v14 setUnderlines:v50];
            [v65 addObjectsFromArray:v50];
            v57 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v28];
            v58 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            v12 = v69;
            [v58 removeObjectForKey:v69];

            v59 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
            [v59 setObject:v14 forKey:v57];

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

        v34 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v35 = [v34 tokenizer];
        v36 = [v35 positionFromPosition:v20 toBoundary:1 inDirection:0];

        v37 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v38 = [v37 tokenizer];
        v28 = [v38 rangeEnclosingPosition:v36 withGranularity:1 inDirection:0];

        if (v28 && ![v28 isEmpty])
        {
          v43 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v29 = [v43 textInRange:v28];

          v44 = [v14 documentTextToReplace];
          LODWORD(v43) = [v44 isEqualToString:v29];

          v12 = v69;
          if (v43)
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

        v61 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [v61 setUnderlineRects:v65];

        return;
      }
    }
  }
}

- (void)updateUnderlinesForAddedRange:(id)a3
{
  v20 = a3;
  [(_UITextChoiceAccelerationAssistant *)self activateUnderlineViewIfNeeded];
  v4 = v20;
  if (v20)
  {
    v5 = [v20 start];
    v6 = [(_UITextChoiceAccelerationAssistant *)self positionIsAtDocumentStart:v5];

    if (!v6)
    {
      v7 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v8 = [v7 tokenizer];
      v9 = [v20 start];
      v10 = [v8 positionFromPosition:v9 toBoundary:2 inDirection:1];

      if (v10)
      {
        v11 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v12 = [v20 start];
        v13 = [v11 comparePosition:v12 toPosition:v10];

        if (v13)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeUnderlinesBeforePosition:v10];
        }
      }
    }

    v14 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];

    if (v14)
    {
      v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v16 = [v20 end];
      v17 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
      v18 = [v15 comparePosition:v16 toPosition:v17];

      v19 = [v20 end];
      if (v18 != 1)
      {
        [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:v19];
LABEL_12:

        v4 = v20;
        goto LABEL_13;
      }
    }

    else
    {
      v19 = [v20 end];
    }

    [(_UITextChoiceAccelerationAssistant *)self setLastAddedPosition:v19];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)addUnderlinesForCandidate:(id)a3 range:(id)a4
{
  v17 = a3;
  v6 = a4;
  [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesForAddedRange:v6];
  v7 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:v17 range:v6];
  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && [v7 count])
  {
    v8 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (v8)
    {
      v9 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v10 = [v9 textInputView];
      v11 = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [v10 addInteraction:v11];
    }

    v12 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    [v12 addUnderlines:v7 animated:0];

    v13 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [v13 addObject:v6];

    v14 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:v17 range:v6];
    [v14 setUnderlines:v7];
    [v14 setUnderlineStyle:1];
    v15 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v16 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v6];
    [v15 setObject:v14 forKey:v16];
  }
}

- (void)addUnderlineForCandidate:(id)a3 range:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v7 = [v18 candidate];
    v8 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:v7];

    v9 = [v18 candidate];
    v10 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:v9];

    v11 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [v11 addObject:v8];

    v12 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:v18 range:v8];
    [v12 setUnderlines:v10];
    [v12 setUnderlineStyle:0];
    v13 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v14 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v8];
    [v13 setObject:v12 forKey:v14];
  }

  if (v6)
  {
    if (([v6 isEmpty] & 1) == 0)
    {
      v15 = [v6 start];
      if (v15)
      {
        v16 = v15;
        v17 = [v6 end];

        if (v17)
        {
          [(_UITextChoiceAccelerationAssistant *)self addUnderlinesForCandidate:v18 range:v6];
        }
      }
    }
  }
}

- (void)underlineTextInRange:(id)a3 revertText:(id)a4 textChoices:(id)a5 isActiveEditingSession:(BOOL)a6
{
  v6 = a6;
  v29 = a3;
  v10 = a4;
  v11 = a5;
  [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesForAddedRange:v29];
  v12 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:0 range:v29];
  v13 = +[UIKeyboard isKeyboardProcess];
  if (v29 && !v13)
  {
    v14 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    [v14 addObject:v29];

    v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v16 = [v15 textInRange:v29];

    if (v16 && [v16 length])
    {
      v17 = [_UIReplacementCandidate candidateForDocumentText:v16 revertText:v10 textChoices:0 range:v29 underlineStyle:1 promptStyle:1 promptButton:2];
      [v17 setRevertText:v10];
      [v17 setTextChoices:v11];
      v18 = [v12 count];
      v19 = v18 != 0;
      if (v18)
      {
        [v17 setUnderlines:v12];
      }

      [v17 setUnderlineStyle:1];
      v20 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
      v21 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v29];
      [v20 setObject:v17 forKey:v21];

      if (v6)
      {
        v22 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
        v23 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v29];
        [v22 setObject:v17 forKey:v23];
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    [v24 addUnderlines:v12 animated:0];

    v25 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (v25)
    {
      v26 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v27 = [v26 textInputView];
      v28 = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [v27 addInteraction:v28];
    }

    if (v19)
    {
      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }
}

- (id)underlineRectsForCandidate:(id)a3 range:(id)a4
{
  v6 = a3;
  v7 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:a4];
  v8 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForCandidate:v6 selectionRects:v7];

  return v8;
}

- (id)underlineRectsForCandidate:(id)a3 selectionRects:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
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

        v14 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:*(*(&v16 + 1) + 8 * i) forCandidate:v6, v16];
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

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  if ([(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction]&& ([(_UITextChoiceAccelerationAssistant *)self textInputResponder], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v7 = [v6 selectionRectsForRange:v4];
  }

  else
  {
    v6 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [v6 _underlineRectsByDocumentLineForSelectionRange:v4];
  }

  v8 = v7;

  return v8;
}

- (id)updateUnderlineRects:(id)a3 forRange:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v7];
  if (+[UIKeyboard isKeyboardProcess])
  {
    v9 = +[UIKeyboard currentDocumentState];
    v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v11 = [v7 _asNSRangeRelativeToDocument:v10];
    v13 = v12;

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 firstRectForCharacterRange:{v11, v13}];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v23 = [v22 inputOverlayContainer];
      v24 = [_UIMutableTextSelectionRect selectionRectWithRect:v23 fromView:v15, v17, v19, v21];

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
      if (v27 < [v6 count])
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

    v30 = [v6 objectAtIndex:v27];
    [v29 setUnderlineType:{objc_msgSend(v30, "underlineType")}];
    v31 = [v30 underlineColor];
    [v29 setUnderlineColor:v31];

LABEL_11:
    [v26 addObject:v29];
    goto LABEL_12;
  }

LABEL_13:

  return v26;
}

- (id)keyFromRange:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self _document];
  v6 = [v4 _asNSRangeRelativeToDocument:v5];
  v8 = v7;

  v9 = MEMORY[0x1E696AEC0];
  v14.location = v6;
  v14.length = v8;
  v10 = NSStringFromRange(v14);
  v11 = [v9 stringWithFormat:@"%@", v10];

  return v11;
}

- (void)_removeUnderlinesRelativeToPosition:(id)a3 compare:(int64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v7 = [v6 copy];

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
        v13 = [v12 start];
        if (a4 == -1)
        {
          v14 = [v12 end];

          v13 = v14;
        }

        v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v16 = [v15 comparePosition:v13 toPosition:v24];

        if (v16 == a4)
        {
          v17 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v18 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v12];
          v19 = [v17 objectForKey:v18];

          if (v19)
          {
            v20 = [v19 underlines];
            [v22 addObjectsFromArray:v20];
          }

          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
  [v21 removeUnderlines:v22 animated:1];
}

- (void)removeUnderlinesBeforePosition:(id)a3
{
  v7 = a3;
  v4 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v5 = [v4 count];

  v6 = v7;
  if (v7 && v5)
  {
    [(_UITextChoiceAccelerationAssistant *)self _removeUnderlinesRelativeToPosition:v7 compare:-1];
    v6 = v7;
  }
}

- (void)removeUnderlinesAfterPosition:(id)a3
{
  if (a3)
  {
    [(_UITextChoiceAccelerationAssistant *)self _removeUnderlinesRelativeToPosition:a3 compare:1];
  }
}

- (void)clearUnderlinesIfNeededBeforePosition:(id)a3
{
  v21 = a3;
  v4 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v5 = [v4 count];

  v6 = v21;
  if (v21 && v5)
  {
    if ([(_UITextChoiceAccelerationAssistant *)self positionIsAtDocumentStart:v21])
    {
      [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:0];
      [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
LABEL_15:
      v6 = v21;
      goto LABEL_16;
    }

    v7 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v8 = [v7 tokenizer];
    v9 = [v8 positionFromPosition:v21 toBoundary:1 inDirection:1];

    if (v9)
    {
      v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v11 = [v10 textRangeFromPosition:v9 toPosition:v21];

      if (v11 && (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v12 = objc_claimAutoreleasedReturnValue(), [v12 textInRange:v11], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @" "), v13, v12, (v14 & 1) != 0))
      {
        v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v16 = [v15 tokenizer];
        v17 = [v16 positionFromPosition:v9 toBoundary:1 inDirection:1];

        v9 = v17;
        if (!v17)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v18 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v19 = [v18 tokenizer];
      v20 = [v19 positionFromPosition:v9 toBoundary:1 inDirection:1];

      if (v20)
      {
        [(_UITextChoiceAccelerationAssistant *)self removeUnderlinesBeforePosition:v20];
      }

      [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
    }

LABEL_14:
    [(_UITextChoiceAccelerationAssistant *)self updateUnderlinesIfNeededAfterPosition:v21];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)updateUnderlinesIfNeededAfterPosition:(id)a3
{
  v14 = a3;
  v4 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];

  if (v4)
  {
    v5 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v6 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
    v7 = [v5 comparePosition:v14 toPosition:v6];

    if (v7 == -1)
    {
      v8 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v9 = [v8 tokenizer];
      v10 = [v9 positionFromPosition:v14 toBoundary:2 inDirection:0];

      if (v10)
      {
        v11 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v12 = [(_UITextChoiceAccelerationAssistant *)self lastAddedPosition];
        v13 = [v11 offsetFromPosition:v10 toPosition:v12];

        if (v13 >= 2)
        {
          [(_UITextChoiceAccelerationAssistant *)self removeAllUnderlinesAnimated:1];
          [(_UITextChoiceAccelerationAssistant *)self setLastAddedPosition:v14];
        }
      }

      [(_UITextChoiceAccelerationAssistant *)self refreshExistingUnderlines];
    }
  }
}

- (void)clearUnderlineForPosition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v6 = [v5 tokenizer];
    v7 = [v6 rangeEnclosingPosition:v14 withGranularity:1 inDirection:1];

    if (+[UIKeyboard usesInputSystemUI]&& !v7)
    {
      v8 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v9 = [v8 tokenizer];
      v7 = [v9 positionFromPosition:v14 toBoundary:1 inDirection:1];

      if (v7)
      {
        v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v11 = [v10 tokenizer];
        v12 = [v11 positionFromPosition:v7 toBoundary:1 inDirection:1];

        if (v12)
        {
          v13 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v7 = [v13 textRangeFromPosition:v12 toPosition:v14];

          goto LABEL_7;
        }

        v7 = 0;
      }

LABEL_10:

      v4 = v14;
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

- (void)clearUnderlinesInRange:(id)a3 animated:(BOOL)a4
{
  v33 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v34 = a3;
  if (v34)
  {
    v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [v5 copy];

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
        v13 = [v12 start];
        if (!v13 || (v14 = v13, [v12 end], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
        {
          v26 = _UIKeyboardLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [v12 start];
            v29 = [v12 end];
            *buf = v31;
            v41 = v12;
            v42 = 2112;
            v43 = v28;
            v44 = 2112;
            v45 = v29;
            _os_log_error_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Error: Underlined range %@: %@ -> %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        v16 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v17 = [v34 start];
        v18 = [v12 end];
        v19 = [v16 comparePosition:v17 toPosition:v18];

        v20 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v21 = [v34 end];
        v22 = [v12 start];
        v23 = [v20 comparePosition:v21 toPosition:v22];

        if (v19 != 1 && v23 != -1)
        {
          v24 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v25 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v12];
          v26 = [v24 objectForKey:v25];

          if (v26)
          {
            v27 = [v26 underlines];
            [v32 addObjectsFromArray:v27];
          }

          [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v12 animated:v33];
LABEL_16:

          continue;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (!v9)
      {
LABEL_19:

        v30 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        [v30 removeUnderlines:v32 animated:v33];

        break;
      }
    }
  }
}

- (void)adjustRangesAfterPosition:(id)a3 byOffset:(int64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 || !a4)
  {
    [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    goto LABEL_21;
  }

  v38 = a4;
  v7 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  v8 = [v7 copy];

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
  v37 = v6;
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
      v14 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v15 = [v13 start];
      v16 = [v14 comparePosition:v15 toPosition:v6];

      if (v16 != -1)
      {
        v17 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v13];
        v18 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
        v19 = [v18 objectForKey:v17];

        if (v19)
        {
          v20 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v21 = [v13 start];
          v22 = [v20 positionFromPosition:v21 offset:v38];

          v23 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v24 = [v13 end];
          v25 = [v23 positionFromPosition:v24 offset:v38];

          v26 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v27 = [v26 textRangeFromPosition:v22 toPosition:v25];

          v28 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          [v28 removeObjectForKey:v17];

          v29 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
          v30 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v27];
          [v29 setObject:v19 forKey:v30];

          v31 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
          v32 = [v31 indexOfObject:v13];

          if (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [v33 replaceObjectAtIndex:v32 withObject:v27];
          }

          v11 = v36;
          v6 = v37;
LABEL_15:

          v10 = v40;
        }

        else
        {
          v34 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
          v35 = [v34 indexOfObject:v13];

          if (v35 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [v22 removeObjectAtIndex:v35];
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

- (BOOL)positionIsAtDocumentStart:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self _document];
  v6 = [v5 beginningOfDocument];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [v8 comparePosition:v4 toPosition:v6] == 0;
  }

  return v7;
}

- (id)underlineRectForTextSelectionRect:(id)a3 forCandidate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 rect];
  if (v8 == 0.0 || ([(_UITextChoiceAccelerationAssistant *)self convertedSelectionRect:v6], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, CGRectEqualToRect(v27, *MEMORY[0x1E695F050])))
  {
    v13 = 0;
    goto LABEL_4;
  }

  [v6 baselineOffset];
  if (v15 == 0.0)
  {
    v16 = height * 0.75;
  }

  else
  {
    v16 = v15;
  }

  if (v6)
  {
    [v6 transform];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  v13 = [_UITextUnderlineRect underlineRectWithRect:&v23 offset:x transform:y, width, height, v16];
  v17 = [(_UITextChoiceAccelerationAssistant *)self defaultUnderlineColor];
  if (v7)
  {
    if (TIGetShowCandidateConfidenceValue_onceToken != -1)
    {
      dispatch_once(&TIGetShowCandidateConfidenceValue_onceToken, &__block_literal_global_1032);
    }

    v18 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v19 = [v18 valueForPreferenceKey:@"ShowCandidateConfidence"];

    LODWORD(v18) = [v19 BOOLValue];
    if (v18)
    {
      v20 = [v7 confidence];
      if (v20 > 1)
      {
        if (v20 == 3)
        {
          v21 = +[UIColor systemGrayColor];
          goto LABEL_26;
        }

        if (v20 == 2)
        {
          v21 = +[UIColor systemRedColor];
          goto LABEL_26;
        }
      }

      else
      {
        if (!v20)
        {
          v21 = +[UIColor systemGreenColor];
          goto LABEL_26;
        }

        if (v20 == 1)
        {
          v21 = +[UIColor systemYellowColor];
LABEL_26:
          v22 = v21;

          v17 = v22;
        }
      }
    }
  }

  [v13 setUnderlineColor:{v17, v23, v24, v25}];

LABEL_4:

  return v13;
}

- (CGRect)convertedSelectionRect:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
  if (v5 || ([(_UITextChoiceAccelerationAssistant *)self activateUnderlineViewIfNeeded], [(_UITextChoiceAccelerationAssistant *)self _underlineView], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v4 rect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v16 = [v15 textInputView];
    [v6 convertRect:v16 fromView:{v8, v10, v12, v14}];
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
  v4 = [v3 autocorrectTextBackgroundColor];

  if (v4)
  {
    v5 = [v3 insertionPointColor];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 cgColor]);

    goto LABEL_9;
  }

  v7 = [(_UITextChoiceAccelerationAssistant *)self _document];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v10 = [v9 insertionPointColor];
    goto LABEL_7;
  }

  v11 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (v11)
  {
    v9 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    v10 = [v9 tintColor];
LABEL_7:
    v6 = v10;

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
    v4 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    obj = [v4 obtainSelectionGrabberSuppressionAssertion];

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
    v8 = [obj _obtainGrabberSuppressionAssertion];
    textChoiceInteractionGrabberSuppressionAssertion = self->_textChoiceInteractionGrabberSuppressionAssertion;
    self->_textChoiceInteractionGrabberSuppressionAssertion = v8;

    [obj setNeedsSelectionUpdate];
    [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
  }
}

- (id)textHighlightColor
{
  v3 = +[UIKeyboard currentDocumentState];
  v4 = [v3 autocorrectTextBackgroundColor];

  if (v4)
  {
    v5 = [v3 autocorrectTextBackgroundColor];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 cgColor]);
LABEL_5:
    v9 = v6;
LABEL_6:

    goto LABEL_7;
  }

  v7 = [(_UITextChoiceAccelerationAssistant *)self _document];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v5 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v6 = [v5 selectionHighlightColor];
    goto LABEL_5;
  }

  v11 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (v11)
  {
    v12 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    v13 = [v12 traitCollection];
    v14 = dbl_18A679CF0[[v13 userInterfaceStyle] == 2];

    v5 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    v15 = [v5 tintColor];
    v9 = [v15 colorWithAlphaComponent:v14];

    goto LABEL_6;
  }

  v9 = +[UIColor selectionHighlightColor];
LABEL_7:

  return v9;
}

- (id)nearestDictationPromptForPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v52 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v9 = [v8 count];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v8;
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
          if ([v16 pointInside:v7 withEvent:?])
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
        v18 = [v10 firstObject];
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
          v18 = 0;
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
              v26 = [v25 backgroundView];
              [v26 frame];
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

                v18 = v40;
                v23 = v39;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v21);
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)autocorrectInlinePromptIsVisible
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self showingAutocorrectInlinePrompt];
  if (v3)
  {

    LOBYTE(v3) = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  }

  return v3;
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

  v4 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v3 = [v4 count] != 0;

  return v3;
}

- (void)updateActivePromptForCandidate:(id)a3 displayRects:(id)a4 highlightOnly:(BOOL)a5
{
  v5 = a5;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(_UITextChoiceAccelerationAssistant *)self parentViewForPrompt];
  if (!v10)
  {
LABEL_11:
    [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
    goto LABEL_16;
  }

  v11 = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];
  v12 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v13 = [v12 superview];
  v14 = v13 == v10;

  v15 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v16 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v10 _convertVisualAltitude:v16 toView:0.0];
  [v15 _setVisualAltitude:?];

  if (![v9 count])
  {
    v24 = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];
    if (!v9 && !v8 && v24)
    {
      v25 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [v25 hideForNow];

      [(_UITextChoiceAccelerationAssistant *)self removePassthroughContainer];
    }

    goto LABEL_11;
  }

  v17 = v14 && v11;
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:1];
  v18 = [v9 firstObject];
  if (v5)
  {
    if (!v17)
    {
      v19 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [v19 showChoices:0];
    }

    v20 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    v21 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v22 = [v21 inputOverlayContainer];
    v23 = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
    [v20 updateTextBoxHighlightForRect:v18 inTextView:v22 parentView:v10 highlightColor:v23];
  }

  else
  {
    if (!v17)
    {
      v26 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [v26 updateButtonForType:1];

      v27 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      v33[0] = v8;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v29 = _candidatesChoicesFromTextChoices(v28, 0);
      v30 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v31 = [v30 inputOverlayContainer];
      [v27 updateWithChoices:v29 fromParentView:v10 referenceTextView:v31 presentedFromRect:v18 textHighlightColor:0];

      v32 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      [v32 updateButtonName:@"xmark" placement:1 originalText:v8];
    }

    v20 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    v21 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v22 = [v21 inputOverlayContainer];
    v23 = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
    [v20 updateForSingleWord:v8 textAnchorRect:v18 inTextView:v22 parentView:v10 highlightColor:v23];
  }

  [(_UITextChoiceAccelerationAssistant *)self setupPassthroughContainer];
LABEL_16:
}

- (void)setupPassthroughContainer
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self passthroughContainer];

  if (!v3)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
    v5 = [v4 _window];
    v6 = [v5 windowScene];
    v9 = [v6 keyWindow];

    if (v9)
    {
      v7 = [_UITextChoiceAccelerationPassthroughView alloc];
      [v9 bounds];
      v8 = [(_UITextChoiceAccelerationPassthroughView *)v7 initWithFrame:self delegate:?];
      [(UIView *)v8 setAutoresizingMask:18];
      [v9 addSubview:v8];
      [(_UITextChoiceAccelerationAssistant *)self setPassthroughContainer:v8];
    }
  }
}

- (void)didRecognizeDismissal
{
  if ([(_UITextChoiceAccelerationAssistant *)self keepPromptActive])
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [v3 acceptAutocorrectionWithCompletionHandler:0];
  }

  else
  {
    if (![(_UITextChoiceAccelerationAssistant *)self dismissIfPresented])
    {
      goto LABEL_7;
    }

    v3 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (v3)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v3 animated:0];
      v4 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      [v4 selectionChanged];
    }
  }

LABEL_7:

  [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
}

- (BOOL)showPromptForReplacementCandidate:(id)a3 originalCandidate:(id)a4 delay:(double)a5
{
  v8 = a3;
  v9 = a4;
  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
  v10 = [(_UITextChoiceAccelerationAssistant *)self parentViewForPrompt];
  if (!v10)
  {
    v30 = 0;
    goto LABEL_38;
  }

  v11 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v12 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v10 _convertVisualAltitude:v12 toView:0.0];
  [v11 _setVisualAltitude:?];

  v13 = [v8 rangeInDocument];
  v14 = [v8 underlines];
  if (+[UIKeyboard isKeyboardProcess])
  {
    v15 = [v8 documentTextToReplace];
    v16 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:v15];

    if (![v16 count])
    {
      v17 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v18 = [v17 textInRange:v13];

      if (v18 && [v18 length])
      {
        v19 = [(_UITextChoiceAccelerationAssistant *)self underlineRectsForInput:v18];

        v16 = v19;
      }
    }

    v14 = v16;
  }

  if (!v14 || ![v14 count])
  {
    v20 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

    if (v20)
    {
      v21 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      v22 = [v21 activeSelectionController];
      v23 = [v22 selection];
      v24 = [v23 underlineRectsForRange:v13];

      v14 = v24;
    }
  }

  if ([(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
  {
    v25 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

    if (v25)
    {
      v26 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v27 = [v26 selectionRectsForRange:v13];

      v14 = v27;
    }
  }

  if (!v14 || ![v14 count])
  {
    v28 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v29 = [v28 asyncInputDelegate];
    if (v29)
    {
    }

    else
    {
      v31 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v32 = [v31 webInputDelegate];

      if (!v32)
      {
        v35 = [(_UITextChoiceAccelerationAssistant *)self delegate];
        v36 = [v35 asyncWebKitInteractionDelegate];
        v38 = [v36 webSelectionRects];
        goto LABEL_25;
      }
    }

    v33 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v34 = [v33 inputDelegateManager];
    v35 = [v34 selectedTextRange];

    if (!v35)
    {
LABEL_26:

      goto LABEL_27;
    }

    v36 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v37 = [v36 inputDelegateManager];
    v38 = [v37 selectionRectsForRange:v35];

    v14 = v37;
LABEL_25:

    v14 = v38;
    goto LABEL_26;
  }

LABEL_27:
  if ([v14 count] && (objc_msgSend(v14, "firstObject"), (v39 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = v39;
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __96___UITextChoiceAccelerationAssistant_showPromptForReplacementCandidate_originalCandidate_delay___block_invoke;
    v50 = &unk_1E7109380;
    v51 = v8;
    v52 = v9;
    v53 = self;
    v41 = v13;
    v54 = v41;
    v55 = v10;
    v42 = v40;
    v56 = v42;
    v43 = _Block_copy(&v47);
    [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay:v47];
    if (a5 <= 0.0)
    {
      v43[2](v43, 0);
    }

    else
    {
      v44 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v43 block:a5];
      [(_UITextChoiceAccelerationAssistant *)self setPromptDisplayTimer:v44];
    }

    if (+[UIKeyboard usesInputSystemUI]|| [(_UITextChoiceAccelerationAssistant *)self usingCustomInteraction])
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v41];
    }

    v45 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
    v30 = 1;
    [v45 removeUnderlines:v14 animated:1];
  }

  else
  {
    v30 = 0;
  }

LABEL_38:
  return v30;
}

- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 length])
    {
      v8 = [v6 length];
      v9 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v10 = [v9 positionFromPosition:v7 offset:-v8];

      if (v10)
      {
        v11 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v12 = [v11 textRangeFromPosition:v10 toPosition:v7];

        if (v12)
        {
          v13 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v14 = [v13 textInRange:v12];

          if ([v14 isEqualToString:v6])
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
      v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v15 = [v10 textRangeFromPosition:v7 toPosition:v7];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)showChoicesForAutocorrectionCandidate:(id)a3 range:(id)a4 delay:(double)a5
{
  v95 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  p_candidate = &self->_candidate;
  if (self->_candidate == v9)
  {
    v13 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    v14 = [v13 candidate];
    if (v14 == v9)
    {
      v15 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      v16 = [v15 superview];
      v12 = v16 == 0;
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

  v17 = [(TIKeyboardCandidate *)v9 candidate];

  if (!v17 || !v12)
  {
    [(_UITextChoiceAccelerationAssistant *)self dismissWithoutSelection];
LABEL_27:
    v33 = 0;
    goto LABEL_28;
  }

  if ([v10 isEmpty])
  {
    v18 = [v10 start];
    v19 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v18];

    if (v19 && ([v19 isEmpty] & 1) == 0)
    {
      v23 = v10;
      v10 = v19;
LABEL_24:

      goto LABEL_25;
    }

    v20 = v9;
    v21 = [(TIKeyboardCandidate *)v9 candidate];
    v22 = [v10 start];
    v23 = [(_UITextChoiceAccelerationAssistant *)self _rangeOfText:v21 endingAtPosition:v22];

    if (v23)
    {
      v24 = v23;

      v10 = v24;
    }

    else if (!v10)
    {
      v9 = v20;
      goto LABEL_20;
    }

    v9 = v20;
    if (![v10 isEmpty])
    {
      goto LABEL_24;
    }

LABEL_20:
    v25 = v10;
    v26 = v9;
    v86 = self;
    v27 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v28 = [v27 tokenizer];
    v29 = v25;
    v30 = [v25 start];
    v31 = [v28 rangeEnclosingPosition:v30 withGranularity:1 inDirection:1];

    if (v31 && ([v31 isEmpty] & 1) == 0)
    {
      v32 = v31;

      v29 = v32;
    }

    v9 = v26;

    v10 = v29;
    self = v86;
    goto LABEL_24;
  }

LABEL_25:
  if (!v10 || ([v10 isEmpty] & 1) != 0)
  {
    goto LABEL_27;
  }

  objc_storeStrong(p_candidate, a3);
  if (+[UIKeyboard usesInputSystemUI])
  {
    [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
    v35 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [v35 presentTextChoicePromptForRange:v10];

    v36 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v37 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v10];
    v38 = [v36 objectForKey:v37];

    if (v38)
    {
      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v10];
      v39 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
      v40 = [v38 underlines];
      [v39 removeUnderlines:v40 animated:1];
    }

    [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];

    v33 = 1;
    goto LABEL_28;
  }

  v41 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v41 setCandidate:v9];

  v42 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v43 = [v42 keyboardState];
  v44 = [v43 secureCandidateRenderTraits];
  [v44 singleCellHeight];
  v46 = v45;
  v47 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v47 setSecureCandidateHeight:v46];

  v48 = [MEMORY[0x1E695DF70] array];
  v49 = [(TIKeyboardCandidate *)v9 candidate];
  v50 = [(_UITextChoiceAccelerationAssistant *)self listForFinalString:v49];

  v51 = [(_UITextChoiceAccelerationAssistant *)self alternateCorrectionsForList:v50];
  v52 = [(TIKeyboardCandidate *)v9 input];
  v53 = [v52 length];

  if (v53)
  {
    v54 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v55 = [v54 textInRange:v10];

    v56 = [(TIKeyboardCandidate *)v9 input];
    v57 = [v56 isEqualToString:v55];

    if (v57)
    {
      v58 = [(TIKeyboardCandidate *)v9 candidate];
      v59 = [v58 isEqualToString:v55];

      if (v59)
      {
        v60 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v61 = [(TIKeyboardCandidate *)v9 candidate];
    }

    else
    {
      v61 = [(TIKeyboardCandidate *)v9 input];
    }

    v62 = v61;
    [v48 addObject:v61];

    v60 = 1;
    goto LABEL_41;
  }

  v60 = 0;
LABEL_42:
  v85 = v51;
  if ([v51 count])
  {
    v82 = v50;
    v83 = v10;
    v87 = self;
    v84 = v9;
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
            v70 = [v69 candidate];
            v93 = v70;
            LOBYTE(v60) = 1;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];

            v66 = v71;
          }

          v72 = [v69 candidate];
          [v48 addObject:v72];
        }

        v65 = [v63 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v65);
    }

    else
    {
      v66 = 0;
    }

    v60 = v60 & ([v48 count] < 2);
    v10 = v83;
    v9 = v84;
    self = v87;
    v50 = v82;
  }

  else
  {
    v66 = 0;
  }

  v73 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v74 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v10];
  v75 = [v73 objectForKey:v74];

  if (!v75)
  {
    v76 = [(TIKeyboardCandidate *)v9 candidate];
    [(TIKeyboardCandidate *)v9 input];
    v88 = v60;
    v77 = v50;
    v79 = v78 = v9;
    v75 = [_UIReplacementCandidate candidateForDocumentText:v76 revertText:v79 textChoices:0 range:v10 underlineStyle:1 promptStyle:0 promptButton:2];

    v9 = v78;
    v50 = v77;
    v60 = v88;
  }

  if ([v48 count])
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
  if (v75 && [v48 count])
  {
    [v75 setTextChoices:v48];
  }

  [v75 setAlternativeRevertTexts:v66];
  [v75 setIsAutofillDoubleLineUI:0];
  v33 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v75 delay:a5];

LABEL_28:
  return v33;
}

- (BOOL)showChoicesForCandidates:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  IsSmartReply = _candidateSourceIsSmartReply(v4);
  v90 = v4;
  if (IsSmartReply)
  {
    goto LABEL_2;
  }

  if ([v4 slotID])
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
    v6 = [v4 customInfoType] != 32;
  }

LABEL_7:
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v8 = v3;
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
        v17 = [v14 secureCandidateHash];
        v18 = v16;
        v7 = v15;
        v19 = [v18 numberWithUnsignedInteger:v17];
        [v15 addObject:v19];
      }

      v8 = v12;
      v10 = [v12 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v10);
  }

  if (![v91 count] || (v20 = self, -[NSArray isEqualToArray:](self->_secureCandidateHashes, "isEqualToArray:", v7)))
  {
    v21 = 0;
    goto LABEL_62;
  }

  v86 = v7;
  objc_storeStrong(&self->_secureCandidateHashes, v7);
  v22 = [v8 firstObject];
  v23 = [v22 input];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v26 = v25;

  v27 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
  v28 = [v27 activeSelection];
  v29 = [v28 selectedRange];

  v85 = v29;
  v30 = +[_UIReplacementCandidate candidateForDocumentText:revertText:candidateChoices:range:underlineStyle:promptStyle:promptButton:](_UIReplacementCandidate, "candidateForDocumentText:revertText:candidateChoices:range:underlineStyle:promptStyle:promptButton:", v26, &stru_1EFB14550, v91, v29, 0, 2, [v91 count] < 2);
  v31 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
  v32 = [v31 activeSelection];
  [v32 caretRect];
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
  v44 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v87 = v30;
  [v44 setReplacement:v30];

  v45 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v46 = [v45 keyboardState];
  v47 = [v46 secureCandidateRenderTraits];
  [v47 singleCellHeight];
  v49 = v48;
  v50 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v50 setSecureCandidateHeight:v49];

  v51 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v52 = [v51 keyboardState];
  v53 = [v52 secureCandidateRenderTraits];

  if (v6)
  {
    v83 = v53;
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

          v59 = [*(*(&v97 + 1) + 8 * j) textSuggestion];
          v60 = [v59 headerText];
          v61 = [v60 length];

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
    v62 = v53;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![v53 isInlinePromptUI])
    {
      goto LABEL_55;
    }

    v83 = v53;
    v84 = v26;
    v63 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [v63 secureCandidateHeight];
    [v63 setSecureCandidateHeight:v64 * 0.5];

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
              v81 = [(_UITextChoiceAccelerationAssistant *)self prompt];
              [v81 secureCandidateHeight];
              [v81 setSecureCandidateHeight:v82 + v82];

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

  v20 = self;
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

  v21 = [(_UITextChoiceAccelerationAssistant *)v20 showPromptForReplacementCandidate:v87];
  v7 = v86;
LABEL_62:

  return v21;
}

- (void)updatePromptLocation:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v10 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    v9 = [v10 replacement];
    [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v9];
  }
}

- (BOOL)showChoicesForTextInRange:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v6 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v4];

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    [v7 setIsAutofillDoubleLineUI:0];
    v8 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [v8 setCandidate:0];

    v9 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [v9 setReplacement:v7];

    v10 = [v7 textChoices];

    if (!v10)
    {
      v11 = [v7 revertText];
      v15[0] = v11;
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

- (BOOL)showDictationChoicesForTextInRange:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  v6 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v4];

  v7 = [v5 objectForKey:v6];

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

- (BOOL)showChoicesForTextInRange:(id)a3 withReplacements:(id)a4 delay:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 originalText];
    v13 = [v11 replacementText];
    v14 = [_UIReplacementCandidate candidateForDocumentText:v12 revertText:v13 textChoices:0 range:v8 underlineStyle:0 promptStyle:1 promptButton:2];

    if ([v9 count] >= 2)
    {
      v15 = [MEMORY[0x1E695DF70] array];
      v16 = [v11 replacementText];

      if (v16)
      {
        v17 = [v11 replacementText];
        [v15 addObject:v17];
      }

      if ([v9 count] >= 2)
      {
        v18 = 1;
        do
        {
          v19 = [v9 objectAtIndex:v18];
          v20 = [v19 replacementText];

          if (v20)
          {
            v21 = [v19 replacementText];
            [v15 addObject:v21];
          }

          ++v18;
        }

        while (v18 < [v9 count]);
      }

      [v14 setTextChoices:v15];
      [v14 setPreferredPromptButton:0];
      [v14 setPreferredPromptStyle:2];
    }

    [v14 setIsAutofillDoubleLineUI:0];
    v22 = [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v14 delay:a5];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)showAutocorrectReplacementChoicesIfNeeded:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = [UITextReplacementGeneratorForCorrections generatorForTextInput:a3 range:v6 options:32];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (([v7 isStringToReplaceMisspelled] & 1) == 0)
  {
    [v8 forceAutocorrectionGuesses];
  }

  v9 = [v8 autocorrectionRecord];
  if (v9 && (v10 = v9, v11 = [v8 forceAutocorrectionGuesses], v10, v11))
  {
    v12 = [v8 autocorrectionRecord];
    v13 = [(_UITextChoiceAccelerationAssistant *)self showChoicesForAutocorrectionCandidate:v12 range:v6 delay:0.2];
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

    v12 = [v8 replacements];
    v13 = [(_UITextChoiceAccelerationAssistant *)self showChoicesForTextInRange:v6 withReplacements:v12 delay:0.2];
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

- (void)updatePrompt:(id)a3 forReplacementCandidate:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    v8 = @"arrow.uturn.backward";
    v9 = 1;
    goto LABEL_19;
  }

  v7 = [v5 preferredPromptButton];
  v8 = @"arrow.uturn.backward";
  v9 = 1;
  if (v7 <= 2)
  {
    if (!v7)
    {
      v9 = 0;
      v8 = &stru_1EFB14550;
      goto LABEL_18;
    }

    if (v7 != 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v9 = 2;
      }

      else if (v7 == 5)
      {
        if ([v11 labelNumber])
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.circle.fill", objc_msgSend(v11, "labelNumber")];
        }

        else
        {
          v8 = &stru_1EFB14550;
        }

        v9 = 3;
      }

      goto LABEL_18;
    }

    v7 = 2;
  }

  v8 = @"xmark";
  v9 = v7;
LABEL_18:
  [v11 updateButtonForType:{objc_msgSend(v6, "preferredPromptButton")}];
LABEL_19:
  v10 = [v6 revertText];
  [v11 updateButtonName:v8 placement:v9 originalText:v10];
}

- (id)rangeForTextChoicesAtPosition:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 start];
          if (v12 && (v13 = v12, [v11 end], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
          {
            v15 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v16 = [v11 start];
            v17 = [v15 comparePosition:v4 toPosition:v16];

            if (v17 != -1)
            {
              v18 = [(_UITextChoiceAccelerationAssistant *)self _document];
              v19 = [v11 end];
              v20 = [v18 comparePosition:v4 toPosition:v19];

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
              v22 = [v11 start];
              v23 = [v11 end];
              *buf = v26;
              v32 = v11;
              v33 = 2112;
              v34 = v22;
              v35 = 2112;
              v36 = v23;
              _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Error: Underlined range %@: %@ -> %@", buf, 0x20u);
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
  v2 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v3 = [v2 count];

  return v3;
}

- (BOOL)canHandleDictationChoiceForPromptIndex:(int64_t)a3
{
  v5 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  if ([v5 count])
  {
    if (a3 == -1)
    {
      v7 = 1;
    }

    else
    {
      v6 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
      v7 = [v6 count] > (a3 - 1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateDictationChoicesFromPromptIndex:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3 == -1)
  {
    v11 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    v12 = [v11 lastObject];
  }

  else
  {
    v7 = a3 < 1;
    v8 = a3 - 1;
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

    v11 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    v12 = [v11 objectAtIndex:v8];
  }

  v13 = v12;

  if (v13)
  {
    [(_UITextChoiceAccelerationAssistant *)self updateDocumentFromPrompt:v13 completionHandler:v6];
LABEL_10:
  }
}

- (void)updateDocumentFromPrompt:(id)a3 completionHandler:(id)a4
{
  v148[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  v8 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  [v8 handleTextChoiceBubbleTapped];

  v9 = [v6 selectedCandidateChoice];
  if (![v9 slotID])
  {
    v10 = [v6 selectedCandidateChoice];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_4;
    }

    v16 = [v6 selectedCandidateChoice];
    if (_candidateSourceIsSmartReply(v16))
    {
      v17 = _UIKeyboardSmartReplyLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Text choice assistant is accepting smart reply candidate", buf, 2u);
      }

      v18 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      [v18 acceptPredictiveInput:v16];
LABEL_54:

      goto LABEL_5;
    }

    v18 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
    if (([v18 isEmpty] & 1) == 0)
    {
      v19 = v18;
      if (v18)
      {
LABEL_21:
        v26 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v27 = [v26 textInRange:v19];

        if ([v6 shouldRejectCandidate])
        {
          v28 = [v6 selectedChoice];
          if ([v28 isEqualToString:@"autocorrection.cancel"])
          {

LABEL_25:
            v29 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            [v29 fadeAutocorrectPrompt];

            +[UIKBAnalyticsDispatcher didRevisionBubbleTap];
LABEL_51:
            [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v19];
            if (!+[UIKeyboard isKeyboardProcess])
            {
              v109 = [v27 length];
              v110 = [v6 selectedChoice];
              v111 = v109 - [v110 length];

              v112 = [v19 start];
              [(_UITextChoiceAccelerationAssistant *)self adjustRangesAfterPosition:v112 byOffset:v111];
            }

            goto LABEL_54;
          }

          v30 = [(_UITextChoiceAccelerationAssistant *)self keepPromptActive];

          if (v30)
          {
            goto LABEL_25;
          }
        }

        else if ([(_UITextChoiceAccelerationAssistant *)self keepPromptActive])
        {
          goto LABEL_25;
        }

        v144 = v27;
        if ([v6 promptStyle] != 3)
        {
          v50 = [v6 candidate];
          v51 = [v50 candidate];

          v142 = v51;
          if ([v51 length])
          {
            v52 = [v18 end];
            v53 = [(_UITextChoiceAccelerationAssistant *)self _rangeOfText:v51 endingAtPosition:v52];

            if (v53 && ([v53 isEmpty] & 1) == 0)
            {
              v54 = v53;

              v55 = v51;
              v144 = v55;
              v19 = v54;
            }
          }

          v56 = [v6 selectedChoice];
          v57 = [v6 selectedChoice];
          v58 = [UITextReplacement replacementWithRange:v19 original:v144 replacement:v56 menuTitle:v57];

          [(_UITextChoiceAccelerationAssistant *)self informAnalyticsOfUpcomingCandidateReplacement];
          v59 = [(_UITextChoiceAccelerationAssistant *)self delegate];
          [v59 replaceText:v58];

          if ([v6 shouldRejectCandidate])
          {
            v60 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            v61 = [v6 candidate];
            [v60 rejectAutocorrection:v61];
          }

          [(_UITextChoiceAccelerationAssistant *)self informAnalyticsOfCompletedCandidateReplacement];
          v62 = +[UIDictationController activeInstance];
          v63 = [v6 replacement];
          v64 = [v63 voiceCommandTrackingUUID];
          [v62 markDictationUndoEventWithVoiceCommandUUID:v64 viaTapOnRevertBubble:1];

          goto LABEL_41;
        }

        v31 = [v6 replacement];
        v32 = [v31 rangeInDocument];

        if (!v32)
        {
          v143 = +[UIDictationController activeInstance];
          v65 = [v6 deltaRange];
          v128 = v66;
          v130 = v65;
          v138 = [v6 replacement];
          v140 = [v138 documentTextToReplace];
          v136 = [v6 replacement];
          v134 = [v136 textChoices];
          v122 = [v134 objectAtIndexedSubscript:0];
          v67 = [v6 originalSelectedRange];
          v118 = v68;
          v120 = v67;
          v124 = [v6 replacement];
          v114 = [v124 voiceCommandDisambiguationSelectedIndex];
          v116 = [v6 replacement];
          v69 = [v116 voiceCommandDisambiguationTargetCount];
          v70 = [v6 replacement];
          v71 = [v70 voiceCommandTrackingUUID];
          [v143 performTextReplacementForWebKitWithDeltaRange:v130 targetText:v128 replacementText:v140 originalSelectedRange:v122 voiceCommandDisambiguationSelectedIndex:v120 voiceCommandDisambiguationTargetCount:v118 voiceCommandUUID:v114 completionHandler:{v69, v71, v7}];

          [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
LABEL_41:
          v27 = v144;
          goto LABEL_51;
        }

        v33 = [v6 replacement];
        v34 = [v33 textChoices];
        v35 = [v34 objectAtIndexedSubscript:0];
        v129 = [v35 isEqualToString:0x1EFB75A70];

        v36 = [v6 replacement];
        v37 = [v36 textChoices];
        v38 = [v37 objectAtIndexedSubscript:0];
        LODWORD(v34) = [v38 isEqualToString:0x1EFB75A90];

        v39 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
        v40 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v141 = v39;
        v135 = [v40 _nsrangeForTextRange:v39];
        v137 = v41;

        v42 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v43 = [v6 replacement];
        v44 = [v43 rangeInDocument];
        v133 = [v42 _nsrangeForTextRange:v44];
        v127 = v45;

        v46 = [v6 replacement];
        v139 = [v46 voiceCommandDisambiguationSelectedIndex];

        if (v34)
        {
          v47 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v48 = [v6 replacement];
          v49 = [v48 rangeInDocument];
          [v47 setSelectedTextRange:v49];
        }

        else
        {
          if (!v129)
          {
            v84 = [v6 replacement];
            v85 = [v84 textChoices];
            v132 = [v85 objectAtIndexedSubscript:0];

            v125 = [v6 replacement];
            v86 = [v125 rangeInDocument];
            v87 = [v6 replacement];
            v88 = [v87 documentTextToReplace];
            v89 = [UITextReplacement replacementWithRange:v86 original:v88 replacement:v132 menuTitle:v132 isDictationCommandReplacement:1];

            v90 = [(_UITextChoiceAccelerationAssistant *)self delegate];
            v119 = v89;
            [v90 replaceText:v89];

            v91 = [v6 replacement];
            v92 = [v91 revertText];

            v93 = [v6 replacement];
            v94 = [v93 textChoices];
            v123 = [v94 firstObject];

            v95 = [v132 length];
            v121 = v92;
            v96 = v95 - [v92 length];
            v97 = [v6 replacement];
            v98 = [v97 rangeInDocument];

            v99 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v100 = [v98 end];
            v126 = [v99 positionFromPosition:v100 offset:v96];

            v101 = [(_UITextChoiceAccelerationAssistant *)self _document];
            v117 = v98;
            v102 = [v98 start];
            v103 = [v101 textRangeFromPosition:v102 toPosition:v126];

            if (v103)
            {
              v104 = [v6 replacement];
              v115 = [v104 voiceCommandTrackingUUID];

              [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
              v148[0] = v121;
              v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:1];
              [(_UITextChoiceAccelerationAssistant *)self underlineTextInRange:v103 revertText:v121 textChoices:v105 isActiveEditingSession:1];

              v147 = v103;
              v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
              v146 = v123;
              v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
              [(_UITextChoiceAccelerationAssistant *)self decorateTextInRanges:v106 replacementTexts:v107 allowAutomaticReplacement:0 autoHide:1 voiceCommandTrackingUUID:v115 withCompletionHandler:v7];
            }

            v108 = [(_UITextChoiceAccelerationAssistant *)self _document];
            LOBYTE(v113) = v135 > v133;
            -[_UITextChoiceAccelerationAssistant restoreInsertionPointPositionWithDocument:originalPositionRange:targetRange:payloadRange:contextBefore:](self, "restoreInsertionPointPositionWithDocument:originalPositionRange:targetRange:payloadRange:contextBefore:", v108, v135, v137, v133, v127, 0, [v132 length], v113);

            goto LABEL_48;
          }

          v72 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v73 = [v6 replacement];
          v74 = [v73 rangeInDocument];
          [v72 setSelectedTextRange:v74];

          v75 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v76 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
          v131 = [v75 _nsrangeForTextRange:v76];
          v78 = v77;

          v79 = [(_UITextChoiceAccelerationAssistant *)self delegate];
          [v79 deleteBackward];

          v80 = [(_UITextChoiceAccelerationAssistant *)self _document];
          v81 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
          v82 = [v80 _nsrangeForTextRange:v81];

          v83 = [(_UITextChoiceAccelerationAssistant *)self _document];
          LOBYTE(v113) = v135 > v133;
          [(_UITextChoiceAccelerationAssistant *)self restoreInsertionPointPositionWithDocument:v83 originalPositionRange:v135 targetRange:v137 payloadRange:0 contextBefore:v131 + v78 - v82, 0, 0, v113];
        }

        [(_UITextChoiceAccelerationAssistant *)self resetDictationChoicesAnimated:0];
LABEL_48:
        v27 = v144;
        if (v7)
        {
          v7[2](v7, v139);
        }

        goto LABEL_51;
      }
    }

    v20 = [v18 start];
    v21 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v20];

    if (!v21)
    {
      v22 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
        v21 = 0;
        goto LABEL_19;
      }

      v24 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v25 = [v18 end];
      v21 = [v24 _rangeOfEnclosingWord:v25];

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
    v19 = v18;
    goto LABEL_20;
  }

LABEL_4:
  v12 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v13 = [v6 authenticationMessage];
  [v12 _attemptAuthenticationWithMessage:v13];

  v14 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v15 = [v6 selectedCandidateChoice];
  [v14 acceptPredictiveInput:v15];

LABEL_5:
}

- (void)informAnalyticsOfUpcomingCandidateReplacement
{
  +[UIKBAnalyticsDispatcher didRevisionBubbleTap];
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v3 setNextCandidateReplacementSource:8];

  v4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  v5 = [v4 buttonType];

  v6 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v9 = v6;
  v7 = @"revisionBubble";
  if (v5 == 1)
  {
    v7 = @"reversionBubble";
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"autocorrectionBubble";
  }

  [v6 acceptingCandidateWithTrigger:v8];
}

- (void)informAnalyticsOfCompletedCandidateReplacement
{
  v2 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v2 setNextCandidateReplacementSource:0];
}

- (id)activeSelectedRange
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];

  if (v3)
  {
    v4 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
    v5 = [v4 activeSelection];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9 = [(_UITextChoiceAccelerationAssistant *)self interactionAssistant];
      v10 = [v9 activeSelectionController];
      v7 = [v10 selection];
    }

    v8 = [v7 selectedRange];
  }

  else
  {
    v7 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v8 = [v7 selectedTextRange];
  }

  v11 = v8;

  return v11;
}

- (void)removeWordForRange:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v6 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [v6 textInRange:v27];

    v8 = [(_UITextChoiceAccelerationAssistant *)self candidateForFinalString:v7];
    if (v8)
    {
      v9 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
      [v9 removeObjectForKey:v7];
    }
  }

  v10 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  [v10 removeObject:v27];

  v11 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v27];
  v12 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [v14 removeObjectForKey:v11];

    v15 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    [v15 removeObjectForKey:v11];

    v16 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    v17 = [v13 documentTextToReplace];
    [v16 removeObjectForKey:v17];

    if (!+[UIKeyboard isKeyboardProcess])
    {
      v18 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
      v19 = [v13 underlines];
      [v18 removeUnderlines:v19 animated:v4];

      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }

  v20 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
  if (v20)
  {
    v21 = v20;
    v22 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
    v23 = [v22 count];

    if (!v23)
    {
      v24 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
      v25 = [v24 textInputView];
      v26 = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
      [v25 removeInteraction:v26];
    }
  }
}

- (void)removeAllUnderlinesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self _existingUnderlineView];
  [v5 clearAllUnderlinesAnimated:v3];

  v6 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
  [v6 removeAllObjects];

  v7 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  [v7 removeAllObjects];

  v8 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  [v8 removeAllObjects];

  v9 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  [v9 removeAllObjects];

  v10 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];

  if (v10)
  {
    v13 = [(_UITextChoiceAccelerationAssistant *)self textInputResponder];
    v11 = [v13 textInputView];
    v12 = [(_UITextChoiceAccelerationAssistant *)self textChoiceInteraction];
    [v11 removeInteraction:v12];
  }
}

- (void)dismissWithoutSelection
{
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  [(_UITextChoiceAccelerationAssistant *)self setKeepPromptActive:0];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    [v3 dismissTextChoicePrompt];
  }

  v4 = [(_UITextChoiceAccelerationAssistant *)self prompt];
  [v4 removeAnimated:1];
}

- (void)removeActivePromptAndUnderline
{
  [(_UITextChoiceAccelerationAssistant *)self cancelPromptDisplay];
  v3 = [(_UITextChoiceAccelerationAssistant *)self promptIsVisible];
  v15 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
  if ([v15 isEmpty])
  {
    v4 = [v15 start];
    v5 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v4];

    if (v5 && ([v5 isEmpty] & 1) == 0)
    {
      v6 = v5;

      v15 = v6;
    }
  }

  if (([v15 isEmpty] & 1) == 0)
  {
    v7 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v8 = [(_UITextChoiceAccelerationAssistant *)self keyFromRange:v15];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = [v9 underlines];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
        v13 = [v9 underlines];
        [v12 removeUnderlines:v13 animated:1];
      }

      [(_UITextChoiceAccelerationAssistant *)self removeWordForRange:v15];
    }
  }

  if (v3)
  {
    v14 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    [v14 removeAnimated:1];
  }
}

- (void)addList:(id)a3 forCandidate:(id)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    v8 = [a4 candidate];
    v7 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    [v7 setObject:v6 forKey:v8];
  }
}

- (id)listForFinalString:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)candidateForFinalString:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
  v6 = [v5 objectForKey:v4];

  v7 = [(_UITextChoiceAccelerationAssistant *)self autocorrectionForList:v6];

  return v7;
}

- (id)alternateCorrectionsForList:(id)a3
{
  v3 = [a3 corrections];
  v4 = [v3 alternateCorrections];

  return v4;
}

- (id)autocorrectionForList:(id)a3
{
  v3 = [a3 corrections];
  v4 = [v3 autocorrection];

  return v4;
}

- (void)shouldShowPromptForWebKitText:(id)a3 atPosition:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v12 = [v11 objectForKey:v8];

  if (v12)
  {
    v10[2](v10, 1);
  }

  else
  {
    v13 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v14 = [v13 inputDelegateManager];
    v15 = [v14 asyncCapableInputDelegate];

    if (v15)
    {
      v16 = objc_opt_new();
      [v16 setSurroundingGranularity:0];
      [v16 setFlags:197];
      v17 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v18 = [v17 inputDelegateManager];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __97___UITextChoiceAccelerationAssistant_shouldShowPromptForWebKitText_atPosition_completionHandler___block_invoke;
      v19[3] = &unk_1E71093A8;
      v19[4] = self;
      v20 = v8;
      v21 = v9;
      v22 = v10;
      [v18 requestDocumentContext:v16 completionHandler:v19];
    }

    else
    {
      v10[2](v10, 0);
    }
  }
}

- (void)fullAutocorrectionForWord:(id)a3 atPosition:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v12 = [v11 objectForKey:v8];

  if (!v12)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93___UITextChoiceAccelerationAssistant_fullAutocorrectionForWord_atPosition_completionHandler___block_invoke;
    aBlock[3] = &unk_1E71093A8;
    aBlock[4] = self;
    v26 = v8;
    v27 = v9;
    v13 = v10;
    v28 = v13;
    v24 = _Block_copy(aBlock);
    v14 = objc_opt_new();
    [v14 setSurroundingGranularity:0];
    [v14 setFlags:197];
    v15 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v16 = [v15 inputDelegateManager];
    v17 = [v16 asyncCapableInputDelegate];

    if (v17)
    {
      v18 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v19 = [v18 inputDelegateManager];
      v20 = [v19 asyncCapableInputDelegate];

      v21 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v22 = [v21 inputDelegateManager];
      v23 = v24;
      [v22 requestDocumentContext:v14 completionHandler:v24];

      if (v20)
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
    v20 = 0;
    goto LABEL_8;
  }

  (*(v10 + 2))(v10, v8);
LABEL_9:
}

- (id)rangeOfAutocorrectionForString:(id)a3 atPosition:(id)a4 inDocument:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v8 autocorrectedRanges];
  if (v9)
  {
    v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
    [v10 caretRectForPosition:v7];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [v8 rangeContainedWithinRect:{v12, v14, v16, v18}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v9;
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

          v25 = [*(*(&v30 + 1) + 8 * i) rangeValue];
          if (v19 >= v25 && v19 - v25 < v26)
          {
            v28 = [MEMORY[0x1E696B098] valueWithRange:{v25, v26}];
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

- (void)trackUnderlineForWebKitCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 candidate];

  if (v5)
  {
    v6 = [v4 candidate];
    v7 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:v6];

    if (v7)
    {
      if (([v7 isEmpty] & 1) == 0)
      {
        v8 = [v7 start];
        if (v8)
        {
          v9 = v8;
          v10 = [v7 end];

          if (v10)
          {
            v11 = [(_UITextChoiceAccelerationAssistant *)self underlinedRanges];
            [v11 addObject:v7];
          }
        }
      }
    }

    v12 = [_UIReplacementCandidate candidateForAutocorrectionCandidate:v4 range:v7];
    [v12 setUnderlineStyle:0];
    v13 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v14 = [v4 candidate];
    [v13 setObject:v12 forKey:v14];
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

- (BOOL)presentTextChoicePromptForText:(id)a3 delay:(double)a4 autocorrectionRects:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
  v11 = [v10 objectForKey:v9];

  if (v11 && (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || ![v11 underlineStyle]))
  {
    v12 = [(_UITextChoiceAccelerationAssistant *)self savedLists];
    v13 = [v11 documentTextToReplace];
    v14 = [v12 objectForKey:v13];

    if (v14)
    {
      v15 = [v14 corrections];
      v16 = [v15 autocorrection];
    }

    else
    {
      v16 = 0;
    }

    if ([v8 count])
    {
      v17 = [v8 firstObject];
      [v17 CGRectValue];
      v24 = *(MEMORY[0x1E695EFD0] + 16);
      v26 = *MEMORY[0x1E695EFD0];
      v25 = v26;
      v27 = v24;
      v28 = *(MEMORY[0x1E695EFD0] + 32);
      v23 = v28;
      v18 = [_UITextUnderlineRect underlineRectWithRect:"underlineRectWithRect:offset:transform:" offset:&v26 transform:?];

      v19 = [v8 lastObject];
      [v19 CGRectValue];
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
    [(_UITextChoiceAccelerationAssistant *)self showPromptForReplacementCandidate:v11 originalCandidate:v16 delay:a4];
  }

  return v11 != 0;
}

- (void)updateReplacements:(id)a3 forCandidate:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v23 firstObject];
  if (v7)
  {
    v8 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v9 = [v8 objectForKey:v6];

    v10 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:v6];
    if (!v9)
    {
      v11 = [v23 count];
      v12 = [v7 replacementText];
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v9 = [_UIReplacementCandidate candidateForDocumentText:v6 revertText:v12 textChoices:0 range:v10 underlineStyle:0 promptStyle:v13 promptButton:2 * (v11 < 2)];
    }

    if ([v23 count])
    {
      v14 = [MEMORY[0x1E695DF70] array];
      if ([v23 count])
      {
        v15 = 0;
        do
        {
          v16 = [v23 objectAtIndex:v15];
          v17 = [v16 replacementText];

          if (v17)
          {
            v18 = [v16 replacementText];
            [v14 addObject:v18];
          }

          ++v15;
        }

        while (v15 < [v23 count]);
      }

      if ([v14 count])
      {
        [v9 setTextChoices:v14];
      }
    }

    v19 = [v9 textChoices];
    v20 = [v19 count];

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
    v22 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [v22 setObject:v9 forKey:v6];
  }
}

- (void)updateReplacementsForSavedCandidate:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(_UITextChoiceAccelerationAssistant *)self listForFinalString:v4];
  v7 = [(_UITextChoiceAccelerationAssistant *)self alternateCorrectionsForList:v6];
  v8 = [(_UITextChoiceAccelerationAssistant *)self autocorrectionForList:v6];
  v9 = [v8 input];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(_UITextChoiceAccelerationAssistant *)self delegate];
    v12 = [v11 inputDelegateManager];
    v13 = [v12 asyncCapableInputDelegate];

    if (v13)
    {
      v14 = [(_UITextChoiceAccelerationAssistant *)self delegate];
      v15 = [v14 inputDelegateManager];
      v16 = [v15 selectedText];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v8 input];
    v18 = [v17 isEqualToString:v16];

    if (v18)
    {
      v19 = [v8 candidate];
      v20 = [v19 isEqualToString:v16];

      if (v20)
      {
LABEL_10:

        goto LABEL_11;
      }

      v21 = [v8 candidate];
    }

    else
    {
      v21 = [v8 input];
    }

    v22 = v21;
    [v5 addObject:v21];

    goto LABEL_10;
  }

LABEL_11:
  if ([v7 count])
  {
    v44 = v8;
    v23 = v4;
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

          v31 = [*(*(&v46 + 1) + 8 * i) candidate];
          [v5 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    v7 = v25;
    v6 = v24;
    v4 = v23;
    v8 = v44;
  }

  if ([v5 count])
  {
    v32 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    v33 = [v32 objectForKey:v4];

    if (!v33)
    {
      v34 = [v5 count];
      v35 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:v4];
      [v5 firstObject];
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

      v33 = [_UIReplacementCandidate candidateForDocumentText:v4 revertText:v37 textChoices:0 range:v35 underlineStyle:0 promptStyle:v38 promptButton:2 * (v34 < 2)];

      v7 = v36;
      v6 = v45;
    }

    v39 = [v5 copy];
    [v33 setTextChoices:v39];

    v40 = [v33 textChoices];
    v41 = [v40 count];

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
    v43 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [v43 setObject:v33 forKey:v4];
  }
}

- (void)restoreInsertionPointPositionWithDocument:(id)a3 originalPositionRange:(_NSRange)a4 targetRange:(_NSRange)a5 payloadRange:(_NSRange)a6 contextBefore:(BOOL)a7
{
  length = a5.length;
  v8 = a4.length;
  location = a4.location;
  v12 = a3;
  v15 = v12;
  if (a7)
  {
    location += a6.length - length;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4505 description:{@"restoreInsertionPointPositionWithDocument to an invalid range (%lu)", 0x7FFFFFFFFFFFFFFFLL}];

      v12 = v15;
    }
  }

  v13 = [v12 _textRangeFromNSRange:{location, v8}];
  [v15 setSelectedTextRange:v13];
}

- (void)resetDictationChoicesAnimated:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * v9++) removeAnimated:v3 withDuration:1.0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  v11 = [v10 count];

  if (v11)
  {
    [(_UITextChoiceAccelerationAssistant *)self releaseSelectionGrabberAssertion];
    v12 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
    [v12 removeAllObjects];
  }

  v13 = [(_UITextChoiceAccelerationAssistant *)self dictationDisambiguationUIAssertion];

  if (v13)
  {
    v14 = [(_UITextChoiceAccelerationAssistant *)self dictationDisambiguationUIAssertion];
    [v14 _invalidate];

    [(_UITextChoiceAccelerationAssistant *)self setDictationDisambiguationUIAssertion:0];
  }
}

- (void)resetDictationUnderlines
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
  v4 = [v3 count];

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v12 = [(_UITextChoiceAccelerationAssistant *)self _underlineView];
          v13 = [v11 underlines];
          [v12 removeUnderlines:v13 animated:1];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    v15 = [v14 allKeys];

    v16 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordData];
    [v16 removeObjectsForKeys:v15];

    v17 = [(_UITextChoiceAccelerationAssistant *)self underlinedWordDataForDictation];
    [v17 removeAllObjects];

    if (!+[UIKeyboard isKeyboardProcess])
    {
      [(_UITextChoiceAccelerationAssistant *)self setNeedsUnderlineUpdate];
    }
  }
}

- (void)cancelPendingDictationPromptDisplay
{
  v3 = [(_UITextChoiceAccelerationAssistant *)self dictationUnderlineDisplayTimer];
  [v3 invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setDictationUnderlineDisplayTimer:0];
  v4 = [(_UITextChoiceAccelerationAssistant *)self dictationPromptAutoUpdateTimer];
  [v4 invalidate];

  [(_UITextChoiceAccelerationAssistant *)self setDictationPromptAutoUpdateTimer:0];
}

- (void)decorateTextInRanges:(id)a3 replacementTexts:(id)a4 allowAutomaticReplacement:(BOOL)a5 autoHide:(BOOL)a6 voiceCommandTrackingUUID:(id)a7 withCompletionHandler:(id)a8
{
  v9 = a6;
  v10 = a5;
  v67[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v61 = a8;
  if (+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_37;
  }

  v16 = [v14 count];
  if (v16 != [v15 count])
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4567 description:@"ranges and replacementTexts must have the same amount of items"];
  }

  v17 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];

  if (!v17)
  {
    v18 = objc_opt_new();
    [(_UITextChoiceAccelerationAssistant *)self setDictationVoiceEditingPrompts:v18];
  }

  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  v19 = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
  v54 = v9;
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v20 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    v21 = [v20 _cursorTintColor];

    v19 = v21;
  }

  v59 = [v14 count];
  v22 = v59 == 1 && v10;
  v53 = v22;
  if ([v14 count])
  {
    v23 = 0;
    v62 = 1;
    v57 = v15;
    v58 = v14;
    v55 = self;
    v56 = v19;
    do
    {
      v24 = [v14 objectAtIndexedSubscript:v23];
      v25 = [v15 objectAtIndexedSubscript:v23];
      v26 = [(_UITextChoiceAccelerationAssistant *)self selectionRectsForRange:v24];
      if (v24)
      {
        v27 = [(_UITextChoiceAccelerationAssistant *)self _document];
        v28 = [v27 textInRange:v24];

        if (v28 && [v28 length])
        {
          v60 = v25;
          v67[0] = v25;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
          [MEMORY[0x1E696AD98] numberWithInt:v23];
          v31 = v30 = self;
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "count")}];
          v33 = [_UIReplacementCandidate candidateForDocumentText:v28 revertText:v28 textChoices:v29 range:v24 underlineStyle:0 promptStyle:3 promptButton:5 voiceCommandDisambiguationSelectedIndex:v31 voiceCommandDisambiguationTargetCount:v32];

          v34 = [(_UITextChoiceAccelerationAssistant *)v30 createPromptWithCompletionHandler:v61];
          [v34 setPromptStyle:3];
          [v34 setDictationPromptDelegate:v30];
          v35 = [(_UITextChoiceAccelerationAssistant *)v30 dictationVoiceEditingPrompts];
          [v35 addObject:v34];

          v36 = [(_UITextChoiceAccelerationAssistant *)v30 parentViewForPrompt];
          [v36 _convertVisualAltitude:v34 toView:0.0];
          [v34 _setVisualAltitude:?];
          v37 = v30;
          v19 = v56;
          v38 = [(_UITextChoiceAccelerationAssistant *)v37 textInputView];
          v39 = [v26 firstObject];
          [v34 updateWithChoices:0 fromParentView:v36 referenceTextView:v38 presentedFromRect:v39 textHighlightColor:v56];

          [v34 updateButtonForType:5];
          [v34 setReplacement:v33];
          if (v59 != 1)
          {
            [v34 setLabelNumber:v62];
          }

          self = v55;
          [(_UITextChoiceAccelerationAssistant *)v55 updatePrompt:v34 forReplacementCandidate:v33];
          ++v62;

          v15 = v57;
          v14 = v58;
          v25 = v60;
        }
      }

      ++v23;
    }

    while (v23 < [v14 count]);
  }

  v40 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];
  if ([v40 count] <= 1)
  {
    v46 = self;
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
    v40 = +[UIDictationController activeInstance];
    v45 = [v40 _obtainDisambiguationUIAssertion];
    v46 = v41;
    [(_UITextChoiceAccelerationAssistant *)v41 setDictationDisambiguationUIAssertion:v45];

LABEL_25:
    v41 = v46;
  }

  [(_UITextChoiceAccelerationAssistant *)v41 setupPassthroughContainer];
  if (v44)
  {
    [(_UITextChoiceAccelerationAssistant *)v41 cancelPendingDictationPromptDisplay];
    v47 = [(_UITextChoiceAccelerationAssistant *)v41 dictationVoiceEditingPrompts];
    v48 = [v47 firstObject];

    if (v48)
    {
      v49 = MEMORY[0x1E695DFF0];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __158___UITextChoiceAccelerationAssistant_decorateTextInRanges_replacementTexts_allowAutomaticReplacement_autoHide_voiceCommandTrackingUUID_withCompletionHandler___block_invoke;
      v64[3] = &unk_1E71093D0;
      v64[4] = v41;
      v65 = v48;
      v66 = v61;
      v50 = [v49 scheduledTimerWithTimeInterval:0 repeats:v64 block:0.2];
      [(_UITextChoiceAccelerationAssistant *)v41 setDictationPromptAutoUpdateTimer:v50];
    }

    else if (v61)
    {
      (*(v61 + 2))(v61, 0);
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

  else if (v61)
  {
    (*(v61 + 2))(v61, 0);
  }

LABEL_37:
}

- (void)decorateTextInRects:(id)a3 targetTextArray:(id)a4 replacementTexts:(id)a5 deltaRanges:(id)a6 originalSelectedRange:(_NSRange)a7 allowAutomaticReplacement:(BOOL)a8 autoHide:(BOOL)a9 voiceCommandUUID:(id)a10 withCompletionHandler:(id)a11
{
  v88[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v80 = a6;
  v78 = a10;
  v79 = a11;
  if (+[UIKeyboard isKeyboardProcess])
  {
    goto LABEL_42;
  }

  v19 = [v16 count];
  if (v19 != [v18 count])
  {
    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4658 description:@"rects and replacementTexts must have the same amount of items"];
  }

  v20 = [v16 count];
  if (v20 != [v17 count])
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4659 description:@"rects and targetTextArray must have the same amount of items"];
  }

  if (v80)
  {
    v21 = [v16 count];
    if (v21 != [v80 count])
    {
      v70 = [MEMORY[0x1E696AAA8] currentHandler];
      [v70 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4660 description:@"deltaRanges must be nil or rects and deltaRanges must have the same amount of items"];
    }
  }

  v22 = [(_UITextChoiceAccelerationAssistant *)self dictationVoiceEditingPrompts];

  if (!v22)
  {
    v23 = objc_opt_new();
    [(_UITextChoiceAccelerationAssistant *)self setDictationVoiceEditingPrompts:v23];
  }

  [(_UITextChoiceAccelerationAssistant *)self updateSelectionHighlights];
  v24 = [(_UITextChoiceAccelerationAssistant *)self textHighlightColor];
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v25 = [(_UITextChoiceAccelerationAssistant *)self selectionViewManager];
    v26 = [v25 _cursorTintColor];

    v24 = v26;
  }

  v77 = v24;
  v27 = [v16 count];
  v28 = v27 == 1 && a8;
  v71 = v28;
  if (v27 != [v17 count])
  {
    v69 = [MEMORY[0x1E696AAA8] currentHandler];
    [v69 handleFailureInMethod:a2 object:self file:@"_UITextChoiceAccelerationAssistant.m" lineNumber:4675 description:@"rects must match targets"];
  }

  v82 = self;
  if (v27)
  {
    v29 = v27;
    v30 = 0;
    v74 = v17;
    v75 = v16;
    v72 = v27;
    v73 = v18;
    do
    {
      v31 = [v16 objectAtIndexedSubscript:v30];
      v32 = [v17 objectAtIndexedSubscript:v30];
      v33 = v32;
      if (v32 && [v32 length])
      {
        v34 = [v18 objectAtIndexedSubscript:v30];
        v88[0] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
        v36 = [MEMORY[0x1E696AD98] numberWithInt:v30];
        v37 = [MEMORY[0x1E696AD98] numberWithInt:v29];
        v81 = [_UIReplacementCandidate candidateForDocumentText:v33 revertText:v33 textChoices:v35 range:0 underlineStyle:0 promptStyle:0 promptButton:5 voiceCommandDisambiguationSelectedIndex:v36 voiceCommandDisambiguationTargetCount:v37];

        [v81 setVoiceCommandTrackingUUID:v78];
        v38 = [(_UITextChoiceAccelerationAssistant *)v82 createPromptWithCompletionHandler:v79];
        [v38 setDictationPromptDelegate:v82];
        [v38 setPromptStyle:3];
        v39 = [(_UITextChoiceAccelerationAssistant *)v82 dictationVoiceEditingPrompts];
        [v39 addObject:v38];

        v40 = [(_UITextChoiceAccelerationAssistant *)v82 parentViewForPrompt];
        [v40 _convertVisualAltitude:v38 toView:0.0];
        [v38 _setVisualAltitude:?];
        [v31 CGRectValue];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = [(_UITextChoiceAccelerationAssistant *)v82 delegate];
        v50 = [v49 inputOverlayContainer];
        v51 = [_UIMutableTextSelectionRect selectionRectWithRect:v50 fromView:v42, v44, v46, v48];

        v29 = v72;
        v52 = [(_UITextChoiceAccelerationAssistant *)v82 textInputView];
        [v38 updateWithChoices:0 fromParentView:v40 referenceTextView:v52 presentedFromRect:v51 textHighlightColor:v77];

        [v38 updateButtonForType:5];
        [v38 setReplacement:v81];
        if (v72 != 1)
        {
          [v38 setLabelNumber:v30 + 1];
        }

        if (v80)
        {
          v53 = [v80 objectAtIndex:v30];
          v54 = [v53 rangeValue];
          [v38 setDeltaRange:{v54, v55}];
        }

        [v38 setOriginalSelectedRange:{a7.location, a7.length}];
        [(_UITextChoiceAccelerationAssistant *)v82 updatePrompt:v38 forReplacementCandidate:v81];

        v17 = v74;
        v16 = v75;
        v18 = v73;
      }

      ++v30;
    }

    while (v29 != v30);
  }

  v56 = [(_UITextChoiceAccelerationAssistant *)v82 dictationVoiceEditingPrompts];
  if ([v56 count] <= 1)
  {
    v58 = v77;
    v59 = v71;
    goto LABEL_32;
  }

  v57 = [(_UITextChoiceAccelerationAssistant *)v82 dictationDisambiguationUIAssertion];

  v58 = v77;
  v59 = v71;
  if (!v57)
  {
    v56 = +[UIDictationController activeInstance];
    v60 = [v56 _obtainDisambiguationUIAssertion];
    [(_UITextChoiceAccelerationAssistant *)v82 setDictationDisambiguationUIAssertion:v60];

LABEL_32:
  }

  [(_UITextChoiceAccelerationAssistant *)v82 setupPassthroughContainer];
  if (v59)
  {
    [(_UITextChoiceAccelerationAssistant *)v82 cancelPendingDictationPromptDisplay];
    v61 = [(_UITextChoiceAccelerationAssistant *)v82 dictationVoiceEditingPrompts];
    v62 = [v61 firstObject];

    if (v62)
    {
      v63 = MEMORY[0x1E695DFF0];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke;
      v85[3] = &unk_1E71093D0;
      v85[4] = v82;
      v86 = v62;
      v87 = v79;
      v64 = [v63 scheduledTimerWithTimeInterval:0 repeats:v85 block:0.2];
      [(_UITextChoiceAccelerationAssistant *)v82 setDictationPromptAutoUpdateTimer:v64];
    }
  }

  else if (a9)
  {
    v65 = MEMORY[0x1E695DFF0];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __199___UITextChoiceAccelerationAssistant_decorateTextInRects_targetTextArray_replacementTexts_deltaRanges_originalSelectedRange_allowAutomaticReplacement_autoHide_voiceCommandUUID_withCompletionHandler___block_invoke_2;
    v83[3] = &unk_1E71093F8;
    v83[4] = v82;
    v84 = v79;
    v66 = [v65 scheduledTimerWithTimeInterval:0 repeats:v83 block:0.2];
    [(_UITextChoiceAccelerationAssistant *)v82 setDictationUnderlineDisplayTimer:v66];
  }

  else if (v79)
  {
    (*(v79 + 2))(v79, 0);
  }

LABEL_42:
}

- (void)presentIfNeededForRange:(id)a3
{
  v14 = a3;
  if ([v14 isEmpty])
  {
    v4 = [v14 start];
    v5 = [(_UITextChoiceAccelerationAssistant *)self rangeForTextChoicesAtPosition:v4];

    if (v5 || (-[_UITextChoiceAccelerationAssistant _document](self, "_document"), v6 = objc_claimAutoreleasedReturnValue(), [v14 end], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_rangeOfEnclosingWord:", v7), v5 = objc_claimAutoreleasedReturnValue(), v7, v6, v5))
    {
      v8 = v5;

      v9 = v8;
LABEL_6:
      v15 = v9;
      v10 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v11 = [v10 textInRange:v15];

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

  v9 = v14;
  if (v14)
  {
    goto LABEL_6;
  }

  [(_UITextChoiceAccelerationAssistant *)self dismissIfPresented];
  v13 = 0;
LABEL_11:
}

- (id)anchorRangeForText:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceAccelerationAssistant *)self activeSelectedRange];
  if (v5)
  {
    v6 = [(_UITextChoiceAccelerationAssistant *)self _document];
    v7 = [v5 end];
    v8 = [v6 _rangeOfText:v4 endingAtPosition:v7];

    if (v8)
    {
      v9 = v8;

      v5 = v9;
    }
  }

  return v5;
}

- (id)underlineRectsForInput:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(_UITextChoiceAccelerationAssistant *)self anchorRangeForText:v4];
    v7 = v6;
    if (v6 && ([v6 isEmpty] & 1) == 0)
    {
      v8 = +[UIKeyboard currentDocumentState];
      v9 = [(_UITextChoiceAccelerationAssistant *)self _document];
      v10 = [v7 _asNSRangeRelativeToDocument:v9];
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
              [v5 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }

      if (![v5 count])
      {
        [v8 firstRectForCharacterRange:{v22, v21}];
        v19 = [(_UITextChoiceAccelerationAssistant *)self underlineRectFromDocumentRect:?];
        if (v19)
        {
          [v5 addObject:v19];
        }
      }
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)underlineRectFromDocumentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextChoiceAccelerationAssistant *)self textInputView];
  v9 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v10 = [v9 inputOverlayContainer];
  [v8 convertRect:v10 toCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(_UITextChoiceAccelerationAssistant *)self delegate];
  v20 = [v19 inputOverlayContainer];
  v21 = [_UIMutableTextSelectionRect selectionRectWithRect:v20 fromView:v12, v14, v16, v18];

  v22 = [(_UITextChoiceAccelerationAssistant *)self underlineRectForTextSelectionRect:v21 forCandidate:0];

  return v22;
}

- (void)textWillBeginScrolling
{
  if ([(_UITextChoiceAccelerationAssistant *)self promptIsVisible])
  {
    v3 = [(_UITextChoiceAccelerationAssistant *)self prompt];
    v4 = [v3 replacement];
    IsSmartReply = _replacementSourceIsSmartReply(v4);

    if (IsSmartReply)
    {
      v6 = _UIKeyboardSmartReplyLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Text choice assistant is stashing smart replies as scrolling begins", v10, 2u);
      }

      v7 = [(_UITextChoiceAccelerationAssistant *)self prompt];
      v8 = [v7 replacement];
      stashedReplacement = self->_stashedReplacement;
      self->_stashedReplacement = v8;

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

    v6 = [(_UIReplacementCandidate *)v3 candidateChoices];
    [(_UITextChoiceAccelerationAssistant *)self showChoicesForCandidates:v6];
  }
}

- (_UIAssertion)grabberSuppressionAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_grabberSuppressionAssertion);

  return WeakRetained;
}

@end