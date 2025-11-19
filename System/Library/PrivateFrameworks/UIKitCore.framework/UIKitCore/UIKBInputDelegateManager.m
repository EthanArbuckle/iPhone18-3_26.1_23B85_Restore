@interface UIKBInputDelegateManager
+ (BOOL)isAsyncTextInputEnabled;
+ (_NSRange)rangeForTextRange:(id)a3 document:(id)a4;
- (BOOL)_deleteForwardAndNotify:(BOOL)a3;
- (BOOL)_hasMarkedText;
- (BOOL)_range:(id)a3 intersectsRange:(id)a4;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)callKeyboardWillDismiss;
- (BOOL)callShouldDeleteBackwardWithCount:(unint64_t)a3;
- (BOOL)callShouldReplaceExtendedRange:(int64_t)a3 withText:(id)a4 includeMarkedText:(BOOL)a5;
- (BOOL)canHandleInputDelegateCommandAction:(unint64_t)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)continuousSpellCheckingEnabled;
- (BOOL)delegateRespondsToSelector:(SEL)a3;
- (BOOL)hasAsyncCapableInputDelegate;
- (BOOL)hasMarkedText;
- (BOOL)hasText;
- (BOOL)insertSupplementalItem:(id)a3 candidate:(id)a4 replacementRange:(id)a5;
- (BOOL)insertTextSuggestion:(id)a3;
- (BOOL)requiresKeyEvents;
- (BOOL)selectionIsEndOfWord;
- (BOOL)selectionIsWord;
- (BOOL)shouldDeleteForward;
- (BOOL)shouldSuppressUpdateCandidateView;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)selectionClipRect;
- (CGRect)textFirstRect;
- (CGRect)textLastRect;
- (CGRect)visibleTextRect;
- (SEL)selectorForCommand:(unint64_t)a3;
- (UIAsyncTextInputClient)asyncInputDelegate;
- (UIKBInputDelegateManager)init;
- (UIKeyInput)forwardingInputDelegate;
- (UIKeyboardImplStateProtocol)keyboardStateDelegate;
- (UIKeyboardInput)legacyInputDelegate;
- (UITextInputTraits)textInputTraits;
- (UITextInteractionAssistant)textInteractionAssistant;
- (UITextInteractionSelectableInputDelegate)selectableDelegate;
- (UITextSelectionDisplayInteraction)selectionDisplayInteraction;
- (UIView)automaticallySelectedOverlay;
- (id)__content;
- (id)_adjustedTextRange:(id)a3 givenRange:(_NSRange)a4 contextBeforeLength:(unint64_t)a5 relativeToDocument:(id)a6;
- (id)_moveDown:(BOOL)a3 withHistory:(id)a4;
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveUp:(BOOL)a3 withHistory:(id)a4;
- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4;
- (id)_textRangeFromNSRange:(_NSRange)a3;
- (id)_textSelectingContainer;
- (id)asyncCapableInputDelegate;
- (id)asyncWebKitInteractionDelegate;
- (id)attributedMarkedText;
- (id)beginningOfDocument;
- (id)delegateAsResponder;
- (id)delegateRespectingForwardingDelegate:(BOOL)a3;
- (id)endOfDocument;
- (id)inputSystemSourceSession;
- (id)markedText;
- (id)markedTextRange;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)privateInputDelegate;
- (id)privateInputDelegateRespectingForwardingDelegate:(BOOL)a3;
- (id)privateKeyInputDelegate;
- (id)selectedText;
- (id)selectedTextRange;
- (id)selectionRectsForRange:(id)a3;
- (id)textInRange:(id)a3;
- (id)textInputDelegate;
- (id)textInputView;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)tintColor;
- (id)webInputDelegate;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unint64_t)removeAnnotation:(id)a3 removalRangeLength:(unint64_t)a4 forAnnotationRange:(_NSRange)a5 contextBeforeLength:(int64_t)a6;
- (unint64_t)replaceAnnotationRange:(_NSRange)a3 contextBeforeLength:(int64_t)a4 withAnnotatedString:(id)a5 relativeReplacementRange:(_NSRange)a6;
- (unsigned)_characterBeforeCaretSelection;
- (void)_deleteBackwardAndNotify:(BOOL)a3 reinsertText:(BOOL)a4 overrideOriginalContextBeforeInputWith:(id)a5;
- (void)_deleteBackwardWhileOverridingContextAndNotifyAtEnd:(BOOL)a3 deletionCount:(unint64_t)a4 reinsertTextInLoop:(BOOL)a5;
- (void)_deleteByWord;
- (void)_deleteForwardByWord;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_firstResponderDidChange:(id)a3;
- (void)_moveCurrentSelection:(int)a3;
- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_setSelectionToPosition:(id)a3;
- (void)addTextAlternatives:(id)a3;
- (void)adjustSelection:(id)a3 completionHandler:(id)a4;
- (void)applyAutocorrection:(id)a3 toString:(id)a4 shouldUnderline:(BOOL)a5 withCompletionHandler:(id)a6;
- (void)applyAutocorrection:(id)a3 toString:(id)a4 withCompletionHandler:(id)a5;
- (void)changedSelection;
- (void)clearDelegate;
- (void)clearForwardingInputDelegateAndResign:(BOOL)a3;
- (void)collapseSelectionAndAdjustByOffset:(int64_t)a3;
- (void)correctedTypedText:(id)a3 rangeOfReplacement:(id)a4;
- (void)handleClearWithInsertBeforeAdvance:(id)a3;
- (void)handleKeyWebEvent:(id)a3;
- (void)handleKeyWebEvent:(id)a3 withCompletionHandler:(id)a4;
- (void)insertAttributedText:(id)a3;
- (void)insertDictationResult:(id)a3;
- (void)insertText:(id)a3;
- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5;
- (void)insertText:(id)a3 updateInputSource:(BOOL)a4;
- (void)insertText:(id)a3 withEnumeratedAnimationStyle:(int64_t)a4;
- (void)insertTextAfterSelection:(id)a3;
- (void)moveSelectionToEndOfWord;
- (void)replaceRange:(id)a3 oldText:(id)a4 withAttributedText:(id)a5 forReplaceAction:(int)a6;
- (void)replaceRange:(id)a3 oldText:(id)a4 withText:(id)a5 forReplaceAction:(int)a6;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)requestDocumentContext:(id)a3 completionHandler:(id)a4;
- (void)requestTextContextForAutocorrectionWithCompletionHandler:(id)a3;
- (void)requestTextRectsForString:(id)a3 withCompletionHandler:(id)a4;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setContinuousSpellCheckingEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setForwardingInputDelegate:(id)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setupResponderChangeListeners;
- (void)shiftKeyStateChangedFrom:(int)a3 to:(int)a4;
- (void)storeDelegateConformance;
- (void)transposeCharacters;
- (void)unmarkText;
- (void)unmarkText:(id)a3;
- (void)updateRespectForwardingInputDelegateFlagInDestination;
- (void)updateSelectableInputDelegateIfNecessary;
@end

@implementation UIKBInputDelegateManager

- (BOOL)_hasMarkedText
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    v7 = v4;
    v8 = [v4 hasMarkedText];
    goto LABEL_8;
  }

  v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v5)
  {
    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (v6)
  {
    v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  v10 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v7 = [v10 markedTextRange];

  if (v7)
  {
    v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v12 = [v11 textInRange:v7];
    v8 = [v12 length] != 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)webInputDelegate
{
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    goto LABEL_7;
  }

  if ([(UIKBInputDelegateManager *)self shouldRespectForwardingInputDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);

    if (WeakRetained)
    {
      if (self->_forwardingInputDelegateConformsToBETextInput)
      {
        v4 = objc_loadWeakRetained(&self->_forwardingInputDelegate);
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if ((self->m_delegateConformanceType & 0x800) == 0)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = self->_keyInputDelegate;
LABEL_8:

  return v4;
}

- (BOOL)hasAsyncCapableInputDelegate
{
  v2 = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  v3 = v2 != 0;

  return v3;
}

- (id)textInputView
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v4 = ;
    }
  }

  v7 = v4;
  v8 = [v4 textInputView];

  return v8;
}

- (id)delegateAsResponder
{
  v3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 window], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "screen"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_userInterfaceIdiom"), v5, v4, v6 == 3))
  {
    v7 = v3;
  }

  else
  {
    v8 = [UIApp keyWindow];
    v7 = [v8 firstResponder];
    v9 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

    if (v9)
    {
      v10 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

      v7 = v10;
    }

    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v3 == 0;
    }

    if (!v11)
    {
      v7 = v3;
    }
  }

  return v7;
}

- (void)updateSelectableInputDelegateIfNecessary
{
  self->m_firstResponderAdoptsTextInput = 0;
  v3 = +[UIWindow _applicationKeyWindow];
  v4 = [v3 firstResponder];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 conformsToProtocol:&unk_1EFE8B2D0])
  {
    self->m_firstResponderAdoptsTextInput = 1;
  }
}

+ (BOOL)isAsyncTextInputEnabled
{
  if (qword_1ED49DFB0 != -1)
  {
    dispatch_once(&qword_1ED49DFB0, &__block_literal_global_245);
  }

  if (qword_1ED49DFA8 == 1)
  {
    if ((_MergedGlobals_1104 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (qword_1ED49DFA8 || (_MergedGlobals_1104 & 1) != 0)
  {
    return 0;
  }

LABEL_9:

  return _os_feature_enabled_impl();
}

- (id)textInputDelegate
{
  if ((self->m_delegateConformanceType & 2) != 0)
  {
    v4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIKeyInput)forwardingInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);

  return WeakRetained;
}

- (id)asyncCapableInputDelegate
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v5 = v8;
  }

  return v5;
}

- (id)beginningOfDocument
{
  v2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v3 = [v2 beginningOfDocument];

  return v3;
}

- (id)endOfDocument
{
  v2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v3 = [v2 endOfDocument];

  return v3;
}

- (UITextInputTraits)textInputTraits
{
  v3 = +[UIKeyboard usesInputSystemUI];
  v4 = [(UIKBInputDelegateManager *)self privateInputDelegateRespectingForwardingDelegate:!v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 textInputTraits];
    v7 = [UITextInputTraits traitsByAdoptingTraits:v6];

    if ([v5 conformsToProtocol:&unk_1EFE8A8A0])
    {
      v8 = [UITextInputTraits traitsByAdoptingTraits:v5];
      [v7 overrideWithTraits:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [(UIKBInputDelegateManager *)self delegateRespectingForwardingDelegate:!v3];
  if (v9)
  {
    v10 = [UITextInputTraits traitsByAdoptingTraits:v9];
    v11 = v10;
    if (v7)
    {
      [v7 overrideWithTraits:v10];
    }

    else
    {
      v7 = v10;
    }
  }

  return v7;
}

- (UIAsyncTextInputClient)asyncInputDelegate
{
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    goto LABEL_7;
  }

  if ([(UIKBInputDelegateManager *)self shouldRespectForwardingInputDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);

    if (WeakRetained)
    {
      if (self->_forwardingInputDelegateConformsToAsyncTextInputClient)
      {
        v4 = objc_loadWeakRetained(&self->_forwardingInputDelegate);
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if ((self->m_delegateConformanceType & 0x400) == 0)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = self->_keyInputDelegate;
LABEL_8:

  return v4;
}

- (id)asyncWebKitInteractionDelegate
{
  if ([(UIKBInputDelegateManager *)self shouldRespectForwardingInputDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);

    if (WeakRetained)
    {
      if (self->_forwardingInputDelegateConformsToWKInteraction)
      {
        v4 = objc_loadWeakRetained(&self->_forwardingInputDelegate);
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

  if ((self->m_delegateConformanceType & 8) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = self->_keyInputDelegate;
LABEL_8:

  return v4;
}

void __51__UIKBInputDelegateManager_isAsyncTextInputEnabled__block_invoke()
{
  qword_1ED49DFA8 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _MergedGlobals_1104 = [v0 isEqualToString:@"com.apple.iBooks"];
}

- (id)privateInputDelegate
{
  if ((self->m_delegateConformanceType & 4) != 0)
  {
    v4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UITextInteractionAssistant)textInteractionAssistant
{
  v3 = [(UIKBInputDelegateManager *)self privateInputDelegate];

  if (v3)
  {
    [(UIKBInputDelegateManager *)self privateInputDelegate];
  }

  else
  {
    [(UIKBInputDelegateManager *)self textInputDelegate];
  }
  v4 = ;
  v5 = [v4 interactionAssistant];

  return v5;
}

- (id)markedText
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v6)
      {
        v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v10 = [v7 markedTextRange];
        if (v10)
        {
          v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v12 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v13 = [v12 markedTextRange];
          v8 = [v11 textInRange:v13];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_8;
      }

      v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = v4;
  v8 = [v4 markedText];
LABEL_8:

  return v8;
}

- (id)selectedTextRange
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v4 = ;
  }

  v6 = v4;
  v7 = [v4 selectedTextRange];

  return v7;
}

- (UIView)automaticallySelectedOverlay
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v6 = v4;
    v7 = [v4 unscaledView];
    goto LABEL_6;
  }

  v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v5)
  {
    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v6 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v7 = [v9 automaticallySelectedOverlay];
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (id)inputSystemSourceSession
{
  if ((self->m_delegateConformanceType & 0x80) != 0 || ([(UIKBInputDelegateManager *)self forwardingInputDelegate], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (m_originalDelegateConformanceType = self->m_originalDelegateConformanceType, v3, (m_originalDelegateConformanceType & 0x80) != 0))
  {
    v6 = [(UIKBInputDelegateManager *)self delegateRespectingForwardingDelegate:0];
    v5 = [v6 _rtiSourceSession];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)changedSelection
{
  v3 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v7 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      [v8 keyboardInputChangedSelection:v7];
    }
  }
}

- (void)storeDelegateConformance
{
  v33 = *MEMORY[0x1E69E9840];
  self->m_delegateConformanceType = 0;
  v3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = [v3 conformsToProtocol:&unk_1EFE8B2D0];

  if (v4)
  {
    self->m_delegateConformanceType |= 2uLL;
  }

  v5 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v6 = [v5 conformsToProtocol:&unk_1EFE8E9A0];

  if (v6)
  {
    self->m_delegateConformanceType |= 4uLL;
  }

  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    v7 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v8 = [v7 conformsToProtocol:&unk_1F016C7B0];

    if (v8)
    {
      self->m_delegateConformanceType |= 0x720uLL;
      v9 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v29 = [(UIKBInputDelegateManager *)self keyInputDelegate];
        v31 = 138412290;
        v32 = v29;
        _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Delegate: %@, conforms to UIAsyncTextInputClient", &v31, 0xCu);
      }
    }

    v10 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v11 = [v10 conformsToProtocol:&unk_1F016C810];

    if (v11)
    {
      self->m_delegateConformanceType |= 0x920uLL;
      v12 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v30 = [(UIKBInputDelegateManager *)self keyInputDelegate];
        v31 = 138412290;
        v32 = v30;
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Delegate: %@, conforms to BETextInput", &v31, 0xCu);
      }
    }
  }

  v13 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v14 = [v13 conformsToProtocol:&unk_1F016CC30];

  if (v14)
  {
    self->m_delegateConformanceType |= 8uLL;
  }

  v15 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v16 = [v15 conformsToProtocol:&unk_1EFE8A940];

  if (v16)
  {
    self->m_delegateConformanceType |= 1uLL;
  }

  v17 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v18 = [v17 conformsToProtocol:&unk_1EFEB5DC8];

  m_delegateConformanceType = self->m_delegateConformanceType;
  if (v18)
  {
    m_delegateConformanceType |= 0x10uLL;
    self->m_delegateConformanceType = m_delegateConformanceType;
  }

  if ((m_delegateConformanceType & 4) != 0)
  {
    v20 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      self->m_delegateConformanceType |= 0x20uLL;
    }
  }

  v22 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v23 = [v22 conformsToProtocol:&unk_1EFE8A188];

  if (v23)
  {
    self->m_delegateConformanceType |= 0x40uLL;
  }

  v24 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    self->m_delegateConformanceType |= 0x80uLL;
  }

  v26 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v27 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v28 = [v27 requiresKeyEvents];

    if (v28)
    {
      self->m_delegateConformanceType |= 0x100uLL;
    }
  }

  else
  {
  }
}

- (BOOL)hasText
{
  v2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v3 = [v2 hasText];

  return v3;
}

- (unsigned)_characterBeforeCaretSelection
{
  v2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v3 = [v2 _characterBeforeCaretSelection];

  return v3;
}

- (UIKeyboardInput)legacyInputDelegate
{
  if ((self->m_delegateConformanceType & 0x40) != 0)
  {
    v4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)markedTextRange
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v4 = ;
  }

  v6 = v4;
  v7 = [v4 markedTextRange];

  return v7;
}

- (UIKBInputDelegateManager)init
{
  v3.receiver = self;
  v3.super_class = UIKBInputDelegateManager;
  return [(UIKBInputDelegateManager *)&v3 init];
}

- (void)setupResponderChangeListeners
{
  [(UIKBInputDelegateManager *)self updateSelectableInputDelegateIfNecessary];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel_updateSelectableInputDelegateIfNecessary name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
}

- (UITextSelectionDisplayInteraction)selectionDisplayInteraction
{
  v2 = [(UIKBInputDelegateManager *)self delegateAsResponder];
  v3 = [v2 _responderForEditing];
  v4 = [v3 _selectionDisplayInteraction];

  return v4;
}

- (void)setDelegate:(id)a3
{
  v12 = a3;
  selectableDelegate = self->_selectableDelegate;
  self->_selectableDelegate = 0;

  objc_storeStrong(&self->_keyInputDelegate, a3);
  [(UIKBInputDelegateManager *)self storeDelegateConformance];
  v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v7 = [v6 interactionAssistant];

  v8 = [v7 externalInteractions];

  if (v8)
  {
    v9 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v10 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:v9];
    v11 = self->_selectableDelegate;
    self->_selectableDelegate = v10;
  }

  [(UIKBInputDelegateManager *)self setShouldRespectForwardingInputDelegate:0];
}

- (void)clearDelegate
{
  [(UIKBInputDelegateManager *)self setSelectableDelegate:0];
  keyInputDelegate = self->_keyInputDelegate;
  self->_keyInputDelegate = 0;

  self->m_originalDelegateConformanceType = 0;
  v4 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

  if (v4)
  {
    v5 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];
    [v5 resignFirstResponder];

    [(UIKBInputDelegateManager *)self setForwardingInputDelegate:0];
  }
}

- (void)setForwardingInputDelegate:(id)a3
{
  v9 = a3;
  v4 = objc_storeWeak(&self->_forwardingInputDelegate, v9);
  v5 = [v9 conformsToProtocol:&unk_1F016CC30];

  self->_forwardingInputDelegateConformsToWKInteraction = v5;
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);
    self->_forwardingInputDelegateConformsToAsyncTextInputClient = [WeakRetained conformsToProtocol:&unk_1F016C7B0];

    v7 = objc_loadWeakRetained(&self->_forwardingInputDelegate);
    self->_forwardingInputDelegateConformsToBETextInput = [v7 conformsToProtocol:&unk_1F016C810];
  }

  [(UIKBInputDelegateManager *)self setShouldRespectForwardingInputDelegate:v9 != 0];
  self->m_originalDelegateConformanceType = self->m_delegateConformanceType;
  [(UIKBInputDelegateManager *)self storeDelegateConformance];
  v8 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v8 didChangeForwardingInputDelegate:v9];

  [(UIKBInputDelegateManager *)self updateRespectForwardingInputDelegateFlagInDestination];
}

- (void)clearForwardingInputDelegateAndResign:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

  if (v5)
  {
    if (v3)
    {
      v6 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];
      [v6 resignFirstResponder];
    }

    [(UIKBInputDelegateManager *)self setForwardingInputDelegate:0];
    self->m_originalDelegateConformanceType = 0;
  }
}

- (void)updateRespectForwardingInputDelegateFlagInDestination
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = [(UIKBInputDelegateManager *)self inputSystemSourceSession];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 textOperations];
      [v4 setCustomInfoType:0x1EFB7C8B0];
      v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBInputDelegateManager shouldRespectForwardingInputDelegate](self, "shouldRespectForwardingInputDelegate")}];
      [v4 setCustomInfo:v5];

      [v6 flushOperations];
      v3 = v6;
    }
  }
}

- (id)delegateRespectingForwardingDelegate:(BOOL)a3
{
  if (a3 && [(UIKBInputDelegateManager *)self shouldRespectForwardingInputDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);
  }

  else
  {
    WeakRetained = self->_keyInputDelegate;
  }

  return WeakRetained;
}

- (CGRect)selectionClipRect
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v8 = v5;
    [v5 selectionClipRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    goto LABEL_6;
  }

  v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v8 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v21 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    [v21 _selectionClipRect];
    v10 = v22;
    v12 = v23;
    v14 = v24;
    v16 = v25;
  }

  else
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

LABEL_6:

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)privateInputDelegateRespectingForwardingDelegate:(BOOL)a3
{
  if ((self->m_delegateConformanceType & 4) != 0)
  {
    v5 = [(UIKBInputDelegateManager *)self delegateRespectingForwardingDelegate:a3, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)privateKeyInputDelegate
{
  if ((self->m_delegateConformanceType & 0x10) != 0)
  {
    v4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UITextInteractionSelectableInputDelegate)selectableDelegate
{
  v3 = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (v3)
  {
    v4 = v3;
    selectableDelegate = self->_selectableDelegate;
    if (selectableDelegate)
    {
      v6 = [(UITextInteractionSelectableInputDelegate *)selectableDelegate textInput];

      v7 = self->_selectableDelegate;
      if (v6 == v4)
      {
LABEL_7:
        v12 = v7;
LABEL_11:
        v13 = v12;

        v4 = v13;
        goto LABEL_13;
      }

      if (v7)
      {
        goto LABEL_13;
      }
    }

    v8 = [v4 interactionAssistant];
    v9 = [v8 externalInteractions];

    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:v4];
    v11 = self->_selectableDelegate;
    self->_selectableDelegate = v10;

    v7 = self->_selectableDelegate;
    goto LABEL_7;
  }

  if (self->m_firstResponderAdoptsTextInput)
  {
    v4 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (!v4)
    {
      goto LABEL_13;
    }

    v12 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:v4];
    goto LABEL_11;
  }

  v4 = 0;
LABEL_13:

  return v4;
}

- (BOOL)canHandleInputDelegateCommandAction:(unint64_t)a3
{
  v4 = [(UIKBInputDelegateManager *)self selectorForCommand:a3];
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v7)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v12 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v12)
      {
        v8 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        v9 = [v8 canPerformAction:v4 withSender:0];
        goto LABEL_6;
      }

      v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
    }
  }

  v8 = v6;
  v9 = objc_opt_respondsToSelector();
LABEL_6:
  v10 = v9;

  return v10 & 1;
}

- (SEL)selectorForCommand:(unint64_t)a3
{
  v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v6 = v7 != 0;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = &selRef_deleteInDirection_toGranularity_;
        v10 = &selRef__deleteForwardAndNotify_;
      }

      else
      {
        if (a3 != 2)
        {
          return result;
        }

        v9 = &selRef_deleteInDirection_toGranularity_;
        v10 = &selRef__deleteByWord;
      }
    }

    else
    {
      v9 = &selRef_transposeCharactersAroundSelection;
      v10 = &selRef__transpose;
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v9 = &selRef_deleteInDirection_toGranularity_;
      v10 = &selRef__deleteToEndOfLine;
    }

    else
    {
      if (a3 != 6)
      {
        return result;
      }

      v9 = &selRef_deleteInDirection_toGranularity_;
      v10 = &selRef__deleteToEndOfParagraph;
    }
  }

  else
  {
    v9 = &selRef_deleteInDirection_toGranularity_;
    if (a3 == 3)
    {
      v10 = &selRef__deleteForwardByWord;
    }

    else
    {
      v10 = &selRef__deleteToStartOfLine;
    }
  }

  if (!v6)
  {
    v9 = v10;
  }

  return *v9;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (v7)
  {
  }

  else
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (!v8)
    {
      v9 = [(UIKBInputDelegateManager *)self delegateAsResponder];
      v13 = [v9 canPerformAction:a3 withSender:v6];
      goto LABEL_13;
    }
  }

  if (sel_isEqual(a3, sel__moveUp_withHistory_) || sel_isEqual(a3, sel__moveDown_withHistory_) || sel_isEqual(a3, sel__moveLeft_withHistory_) || sel_isEqual(a3, sel__moveRight_withHistory_))
  {
    v9 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (![v9 canPerformAction:sel_moveInLayoutDirection_ withSender:v6])
    {
      v13 = 0;
      goto LABEL_13;
    }

    v10 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    v11 = v10;
    v12 = sel_extendInLayoutDirection_;
  }

  else
  {
    if (!sel_isEqual(a3, sel__moveToStartOfWord_withHistory_) && !sel_isEqual(a3, sel__moveToStartOfLine_withHistory_) && !sel_isEqual(a3, sel__moveToStartOfParagraph_withHistory_) && !sel_isEqual(a3, sel__moveToStartOfDocument_withHistory_) && !sel_isEqual(a3, sel__moveToEndOfWord_withHistory_) && !sel_isEqual(a3, sel__moveToEndOfParagraph_withHistory_) && !sel_isEqual(a3, sel__moveToEndOfLine_withHistory_) && !sel_isEqual(a3, sel__moveToEndOfDocument_withHistory_))
    {
      v13 = 0;
      goto LABEL_14;
    }

    v9 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if ([v9 canPerformAction:sel_moveInStorageDirection_byGranularity_ withSender:v6])
    {
      v13 = 1;
      goto LABEL_13;
    }

    v10 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    v11 = v10;
    v12 = sel_extendInStorageDirection_byGranularity_;
  }

  v13 = [v10 canPerformAction:v12 withSender:v6];

LABEL_13:
LABEL_14:

  return v13;
}

- (BOOL)delegateRespondsToSelector:(SEL)a3
{
  v3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)_firstResponderDidChange:(id)a3
{
  v7 = a3;
  v4 = [v7 object];
  if ([v4 _isApplicationKeyWindow])
  {
    self->m_firstResponderAdoptsTextInput = 0;
    v5 = [v7 userInfo];
    v6 = [v5 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 conformsToProtocol:&unk_1EFE8B2D0])
    {
      self->m_firstResponderAdoptsTextInput = 1;
    }
  }
}

- (BOOL)continuousSpellCheckingEnabled
{
  v3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v6 = [v5 continuousSpellCheckingEnabled];

  return v6;
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    [v7 setContinuousSpellCheckingEnabled:v3];
  }
}

- (void)insertText:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v6 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "inserting text", v7, 2u);
    }
  }

  v5 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  -[UIKBInputDelegateManager insertText:updateInputSource:](self, "insertText:updateInputSource:", v4, [v5 _textInputSource] != 3);
}

- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    v24 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "inserting text", v25, 2u);
    }
  }

  v10 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v11 = objc_opt_respondsToSelector();

  v12 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v13 = objc_opt_respondsToSelector();

  v14 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v15 = objc_opt_respondsToSelector();

  if ((v11 | v13) & 1) != 0 || (v15)
  {
    [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
    if ((v11 | v13))
    {
      v17 = [[off_1E70ECBA0 alloc] initWithPrimaryString:v8 alternativeStrings:v9 isLowConfidence:a5 == 1];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v18 = getBETextAlternativesClass_softClass;
      v29 = getBETextAlternativesClass_softClass;
      if (!getBETextAlternativesClass_softClass)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __getBETextAlternativesClass_block_invoke;
        v25[3] = &unk_1E70F2F20;
        v25[4] = &v26;
        __getBETextAlternativesClass_block_invoke(v25);
        v18 = v27[3];
      }

      v19 = v18;
      _Block_object_dispose(&v26, 8);
      v20 = [[v18 alloc] _initWithNSTextAlternatives:v17];
      v21 = [(UIKBInputDelegateManager *)self webInputDelegate];
      v22 = v21;
      if (v13)
      {
        [v21 insertTextAlternatives:v20];
      }

      else if (v11)
      {
        [v21 insertText:v8 textAlternatives:v20 style:a5];
      }
    }

    else
    {
      v17 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v17 insertText:v8 alternatives:v9 style:a5];
    }

    v23 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v23 updateTextInputKeyboardSource];

    [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
    v16 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v16 updateKeyboardStateForInsertion:v8];
  }

  else
  {
    v16 = [off_1E70ECBA0 attributedText:v8 withAlternativeTexts:v9 style:a5];
    [(UIKBInputDelegateManager *)self insertAttributedText:v16];
  }
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v7)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v6 = ;
  }

  v8 = v6;
  v9 = [v6 textInRange:v4];

  return v9;
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
  [v8 replaceRange:v7 withText:v6];
}

- (void)correctedTypedText:(id)a3 rangeOfReplacement:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UIKBInputDelegateManager *)self textInputDelegate];
    [v9 correctedTypedText:v10 rangeOfReplacement:v6];
  }
}

- (void)replaceRange:(id)a3 oldText:(id)a4 withText:(id)a5 forReplaceAction:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    v55 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_DEFAULT, "replacing text", buf, 2u);
    }
  }

  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v21 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v22 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v23 = [v22 beginningOfDocument];
      v24 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v25 = [v24 endOfDocument];
      v15 = [v21 textRangeFromPosition:v23 toPosition:v25];

      v26 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v27 = [v26 textInRange:v15];
      v28 = [v27 length];

      if (![(UIKBInputDelegateManager *)self callShouldReplaceExtendedRange:v28 withText:v12 includeMarkedText:1])
      {
LABEL_32:

        goto LABEL_40;
      }

      v16 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v16 replaceRange:v15 withText:v12];
LABEL_30:

      goto LABEL_32;
    }

    if (a6 != 3 || !v12)
    {
      goto LABEL_40;
    }

    v17 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (v17)
    {
      if (![v11 length])
      {
        goto LABEL_48;
      }

      v18 = [(UIKBInputDelegateManager *)self webInputDelegate];
    }

    else
    {
      v32 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

      if (v32)
      {
        if (![v11 length])
        {
          goto LABEL_48;
        }

        v18 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      }

      else
      {
        v37 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

        if (!v37)
        {
          if (!v10 || ([v10 isEmpty] & 1) != 0)
          {
            goto LABEL_48;
          }

          v50 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v51 = objc_opt_respondsToSelector();

          if (v51)
          {
            v52 = [(UIKBInputDelegateManager *)self textInputDelegate];
            [v52 replaceRangeWithTextWithoutClosingTyping:v10 replacementText:v12];
          }

          else
          {
            v52 = [(UIKBInputDelegateManager *)self selectableDelegate];
            [v52 replaceRange:v10 withText:v12];
          }

          v20 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
          [v20 updateKeyboardStateForReplacingText:v11 withText:v12];
          goto LABEL_39;
        }

        if (![v11 length])
        {
          goto LABEL_48;
        }

        v18 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }
    }

    v20 = v18;
    [v18 replaceDictatedText:v11 withText:v12];
    goto LABEL_39;
  }

  if (!a6)
  {
    v19 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    if (v19 || ([(UIKBInputDelegateManager *)self webInputDelegate], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v35 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v20 = [(UIKBInputDelegateManager *)self textInputDelegate];
        [v20 replaceRangeWithTextWithoutClosingTyping:v10 replacementText:v12];
        goto LABEL_39;
      }
    }

    v20 = [(UIKBInputDelegateManager *)self selectableDelegate];
    [v20 replaceRange:v10 withText:v12];
LABEL_39:

    goto LABEL_40;
  }

  if (a6 == 1)
  {
    v13 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (v13)
    {
      v14 = [(UIKBInputDelegateManager *)self webInputDelegate];
      v15 = [v14 selectedText];

      if ([v15 length])
      {
        v16 = [(UIKBInputDelegateManager *)self webInputDelegate];
        [v16 replaceSelectedText:v15 withText:v12];
        goto LABEL_30;
      }

LABEL_31:
      [(UIKBInputDelegateManager *)self insertText:v12];
      goto LABEL_32;
    }

    v29 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v29)
    {
      v30 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v15 = [v30 selectedText];

      if (![v15 length])
      {
        goto LABEL_31;
      }

      v31 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_29:
      v16 = v31;
      [v31 replaceText:v15 withText:v12];
      goto LABEL_30;
    }

    v33 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

    if (v33)
    {
      v34 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v15 = [v34 selectedText];

      if (![v15 length])
      {
        goto LABEL_31;
      }

      v31 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      goto LABEL_29;
    }

    v38 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v15 = [v38 selectedTextRange];

    if (v15)
    {
      if (![v15 isEmpty] || (-[UIKBInputDelegateManager textInputDelegate](self, "textInputDelegate"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "end"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "_rangeOfEnclosingWord:", v40), v41 = objc_claimAutoreleasedReturnValue(), v15, v40, v39, (v15 = v41) != 0))
      {
        v42 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [v42 setShouldIgnoreTextInputChanges:1];

        v43 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v44 = [v43 textInRange:v15];

        v45 = [(UIKBInputDelegateManager *)self selectableDelegate];
        [v45 replaceRange:v15 withText:v12];

        v59 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        v46 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        v47 = [v46 keyboardState];
        v48 = [v47 documentState];
        v49 = [v48 documentStateAfterReplacingText:v44 withText:v12];
        if (v49)
        {
          [v59 setDocumentState:v49];
        }

        else
        {
          v57 = MEMORY[0x1E69D9590];
          v56 = [(UIKBInputDelegateManager *)self textInputDelegate];
          [v57 documentStateOfDocument:v56];
          v53 = v58 = v44;
          [v59 setDocumentState:v53];

          v44 = v58;
        }

        v54 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [v54 setShouldIgnoreTextInputChanges:0];

        goto LABEL_32;
      }
    }

LABEL_48:
    [(UIKBInputDelegateManager *)self insertText:v12];
  }

LABEL_40:
}

- (void)replaceRange:(id)a3 oldText:(id)a4 withAttributedText:(id)a5 forReplaceAction:(int)a6
{
  v9 = a3;
  v10 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    v18 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "replacing text", v19, 2u);
    }

    if (a6)
    {
      goto LABEL_9;
    }
  }

  else if (a6)
  {
    goto LABEL_9;
  }

  v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (v11 || ([(UIKBInputDelegateManager *)self webInputDelegate], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v16 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v14 = [(UIKBInputDelegateManager *)self textInputDelegate];
      goto LABEL_8;
    }
  }

  v12 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(UIKBInputDelegateManager *)self selectableDelegate];
LABEL_8:
    v15 = v14;
    [v14 replaceRange:v9 withAttributedText:v10];
  }

LABEL_9:
}

- (id)_adjustedTextRange:(id)a3 givenRange:(_NSRange)a4 contextBeforeLength:(unint64_t)a5 relativeToDocument:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a6;
  v11 = v10;
  v12 = 0;
  if (a3 && v10)
  {
    v13 = [a3 start];
    v14 = [v11 positionFromPosition:v13 offset:location - a5];

    if (v14 && ([v11 positionFromPosition:v14 offset:length], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v12 = [v11 textRangeFromPosition:v14 toPosition:v15];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)replaceAnnotationRange:(_NSRange)a3 contextBeforeLength:(int64_t)a4 withAnnotatedString:(id)a5 relativeReplacementRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v9 = a3.length;
  v10 = a3.location;
  v12 = a5;
  v13 = v10 - a4;
  if (_os_feature_enabled_impl())
  {
    v14 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(UIKBInputDelegateManager *)self webInputDelegate];
      [v16 replaceSelectionOffset:v10 - a4 length:v9 withAnnotatedString:v12 relativeReplacementRange:{location, length}];
LABEL_25:
      v27 = 1;
      goto LABEL_26;
    }
  }

  v17 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!v17)
  {
    v28 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v28)
    {
      v16 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_17:
        v35 = v29;
        [v29 replaceSelectionOffset:v10 - a4 length:v9 withAnnotatedString:v12 relativeReplacementRange:{0x7FFFFFFFFFFFFFFFLL, length}];
LABEL_24:

        goto LABEL_25;
      }

      v36 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v36 textWillChange:v16];

      v37 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v34 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v34)
      {
        v38 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v39 = objc_opt_respondsToSelector();

        if ((v39 & 1) == 0)
        {
          v27 = 0;
          goto LABEL_27;
        }

        v40 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v41 = [v40 markedTextRange];
        v42 = v41;
        if (v41)
        {
          v16 = v41;
        }

        else
        {
          v48 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v16 = [v48 selectedTextRange];
        }

        v46 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v24 = [(UIKBInputDelegateManager *)self _adjustedTextRange:v16 givenRange:v10 contextBeforeLength:v9 relativeToDocument:a4, v46];

        if (v24)
        {
          v47 = [(UIKBInputDelegateManager *)self textInputDelegate];
          [v47 replaceRange:v24 withAnnotatedString:v12 relativeReplacementRange:{location, length}];

          v27 = 1;
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v16 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        goto LABEL_17;
      }

      v43 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v43 textWillChange:v16];

      v37 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v44 = v37;
    [v37 replaceSelectionOffset:v13 length:v9 withAnnotatedString:v12 relativeReplacementRange:{location, length}];

    v35 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v35 textDidChange:v16];
    goto LABEL_24;
  }

  v18 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v16 = [v18 documentState];

  v19 = [v16 contextBeforeInput];
  [v19 length];

  v20 = [v16 contextBeforeInput];
  v21 = [v20 length];

  if (v10 + v9 > v21)
  {
    v22 = [v16 contextBeforeInput];
    v9 = [v22 length] - v10;
  }

  v23 = [v16 contextBeforeInput];
  v24 = [v23 substringWithRange:{v10, v9}];

  v25 = [v12 string];
  v26 = [v24 isEqualToString:v25];

  if ((v26 & 1) == 0)
  {
    v30 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v31 = [v12 string];
    [v30 replaceDictatedText:v24 withText:v31];

    v32 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v33 = [v12 string];
    [v32 updateKeyboardStateForReplacingText:v24 withText:v33];

    v27 = 3;
    goto LABEL_13;
  }

LABEL_8:
  v27 = 0;
LABEL_13:

LABEL_26:
LABEL_27:

  return v27;
}

- (unint64_t)removeAnnotation:(id)a3 removalRangeLength:(unint64_t)a4 forAnnotationRange:(_NSRange)a5 contextBeforeLength:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  if (_os_feature_enabled_impl())
  {
    v12 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_10:
      v20 = v14;
      [v14 removeAnnotation:v11 forSelectionOffset:location - a6 length:a4];
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v15 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!v15)
  {
    v17 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v14 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      goto LABEL_10;
    }

    v19 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

    if (v19)
    {
      v14 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      goto LABEL_10;
    }

    v22 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v25 = [v24 markedTextRange];
      v26 = v25;
      if (v25)
      {
        v20 = v25;
      }

      else
      {
        v27 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v20 = [v27 selectedTextRange];
      }

      v28 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v29 = [(UIKBInputDelegateManager *)self _adjustedTextRange:v20 givenRange:location contextBeforeLength:length relativeToDocument:a6, v28];

      if (v29)
      {
        v30 = [(UIKBInputDelegateManager *)self textInputDelegate];
        [v30 removeAnnotation:v11 forRange:v29];

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)transposeCharacters
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v5 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [v5 transposeCharactersAroundSelection];
  }

  else
  {
    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v4)
    {
      v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [v5 transposeCharacters];
    }

    else
    {
      v5 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v5 _transpose];
    }
  }
}

- (id)selectedText
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v6)
      {
        goto LABEL_8;
      }

      v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = v4;
  v6 = [v4 selectedText];

LABEL_8:

  return v6;
}

- (void)setSelectedTextRange:(id)a3
{
  v8 = a3;
  v4 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v4)
  {
    v5 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v6)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v5 = ;
  }

  v7 = v5;
  [v5 setSelectedTextRange:v8];
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v9)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v8 = ;
  }

  v10 = v8;
  [v8 _setAttributedMarkedText:v11 selectedRange:{location, length}];
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v7)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v6 = ;
  }

  v8 = v6;
  v9 = [v6 selectionRectsForRange:v4];

  return v9;
}

- (BOOL)hasMarkedText
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    v7 = v4;
    v8 = [v4 hasMarkedText];

    return v8;
  }

  v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v5)
  {
    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (v6)
  {
    v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  return 0;
}

- (void)unmarkText
{
  v3 = [(UIKBInputDelegateManager *)self selectableDelegate];
  [v3 _unmarkText];

  v4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v6 = [v5 keyboardState];
  v7 = [v6 documentState];
  v8 = [v7 documentStateAfterUnmarkingText];
  [v4 setDocumentState:v8];

  v9 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v9 clearInputForMarkedText];
}

- (id)attributedMarkedText
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v5 = objc_opt_respondsToSelector();

    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    v11 = v6;
    if (v5)
    {
      v12 = [v6 attributedMarkedText];
LABEL_13:

      goto LABEL_14;
    }

    v13 = [v6 markedText];

    if (v13)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
      v11 = v13;
      goto LABEL_13;
    }

    v11 = 0;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v5 = objc_opt_respondsToSelector();

    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (v9)
  {
    v10 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    v5 = objc_opt_respondsToSelector();

    v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  v15 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v16 = objc_opt_respondsToSelector();

  v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v17 = [v11 markedTextRange];
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      v19 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v20 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v21 = [v20 markedTextRange];
      v12 = [v19 attributedTextInRange:v21];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_13;
  }

  if (!v17)
  {
    goto LABEL_12;
  }

  v22 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v23 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v24 = [v23 markedTextRange];
  v25 = [v22 textInRange:v24];

  if (v25)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25];
    v11 = v25;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)tintColor
{
  v2 = [(UIKBInputDelegateManager *)self delegateAsResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 tintColor];
  }

  else
  {
    v4 = [v2 _responderForEditing];
    if (!v4)
    {
      goto LABEL_9;
    }

    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v4 nextResponder];

      v4 = v3;
    }

    while (v3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 tintColor];
    }

    else
    {
LABEL_9:
      v3 = 0;
    }
  }

  return v3;
}

- (id)_textSelectingContainer
{
  if ([(UIKBInputDelegateManager *)self hasAsyncCapableInputDelegate])
  {
    v3 = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  }

  else
  {
    v4 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v3 = [v4 _textSelectingContainer];
  }

  return v3;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  return v8;
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [v8 textRangeFromPosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [v8 comparePosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = [v7 baseWritingDirectionForPosition:v6 inDirection:a4];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v10 = a4;
  v6 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v6)
  {
    v7 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v8)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v7 = ;
  }

  v9 = v7;
  [v7 setBaseWritingDirection:a3 forRange:v10];
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v8)
  {
    v9 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v10)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v9 = ;
  }

  v11 = v9;
  v12 = [v9 offsetFromPosition:v6 toPosition:v7];

  return v12;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v7)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    v6 = ;
  }

  v8 = v6;
  [v6 caretRectForPosition:v4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_moveUp:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = v8;
    if (v4)
    {
      [v8 extendInLayoutDirection:4];
    }

    else
    {
      [v8 moveInLayoutDirection:4];
    }

    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v9)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [v10 _moveUp:v4 withHistory:v6];
LABEL_9:

  return v11;
}

- (id)_moveDown:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = v8;
    if (v4)
    {
      [v8 extendInLayoutDirection:5];
    }

    else
    {
      [v8 moveInLayoutDirection:5];
    }

    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v9)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [v10 _moveDown:v4 withHistory:v6];
LABEL_9:

  return v11;
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = v8;
    if (v4)
    {
      [v8 extendInLayoutDirection:3];
    }

    else
    {
      [v8 moveInLayoutDirection:3];
    }

    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v9)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [v10 _moveLeft:v4 withHistory:v6];
LABEL_9:

  return v11;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = v8;
    if (v4)
    {
      [v8 extendInLayoutDirection:2];
    }

    else
    {
      [v8 moveInLayoutDirection:2];
    }

    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v9)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [v10 _moveRight:v4 withHistory:v6];
LABEL_9:

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:1 byGranularity:1];
    }

    else
    {
      [v8 moveInStorageDirection:1 byGranularity:1];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToStartOfWord:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:1 byGranularity:1];
    }

    else
    {
      [v11 moveInDirection:1 byGranularity:1];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:1 byGranularity:3];
    }

    else
    {
      [v8 moveInStorageDirection:1 byGranularity:3];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToStartOfParagraph:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:1 byGranularity:3];
    }

    else
    {
      [v11 moveInDirection:1 byGranularity:3];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:1 byGranularity:4];
    }

    else
    {
      [v8 moveInStorageDirection:1 byGranularity:4];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToStartOfLine:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:1 byGranularity:4];
    }

    else
    {
      [v11 moveInDirection:1 byGranularity:4];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:1 byGranularity:5];
    }

    else
    {
      [v8 moveInStorageDirection:1 byGranularity:5];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToStartOfDocument:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:1 byGranularity:5];
    }

    else
    {
      [v11 moveInDirection:1 byGranularity:5];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:0 byGranularity:1];
    }

    else
    {
      [v8 moveInStorageDirection:0 byGranularity:1];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToEndOfWord:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:0 byGranularity:1];
    }

    else
    {
      [v11 moveInDirection:0 byGranularity:1];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:0 byGranularity:3];
    }

    else
    {
      [v8 moveInStorageDirection:0 byGranularity:3];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToEndOfParagraph:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:0 byGranularity:3];
    }

    else
    {
      [v11 moveInDirection:0 byGranularity:3];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:0 byGranularity:4];
    }

    else
    {
      [v8 moveInStorageDirection:0 byGranularity:4];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToEndOfLine:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:0 byGranularity:4];
    }

    else
    {
      [v11 moveInDirection:0 byGranularity:4];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v9 = v8;
    if (v4)
    {
      [v8 extendInStorageDirection:0 byGranularity:5];
    }

    else
    {
      [v8 moveInStorageDirection:0 byGranularity:5];
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v9 = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [v9 _moveToEndOfDocument:v4 withHistory:v6];
      goto LABEL_11;
    }

    v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v9 = v11;
    if (v4)
    {
      [v11 extendInDirection:0 byGranularity:5];
    }

    else
    {
      [v11 moveInDirection:0 byGranularity:5];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)insertSupplementalItem:(id)a3 candidate:(id)a4 replacementRange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (!v11)
  {
    v11 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (v11)
    {
      v16 = [(UIKBInputDelegateManager *)self delegateAsResponder];
      v17 = [v16 conformsToProtocol:&unk_1EFE8B2D0];

      if (v17)
      {
        v11 = [(UIKBInputDelegateManager *)self delegateAsResponder];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    if (v11)
    {
      v13 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v13 textWillChange:v11];

      v14 = [v9 candidate];
      [v11 _insertSupplementalItem:v8 forString:v14 replacementRange:v10];

      v15 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v15 textSuggestionDidChange:v11];
    }

    else
    {
      v15 = [v9 candidate];
      [0 _insertSupplementalItem:v8 forString:v15 replacementRange:v10];
    }

    v18 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v18 syncDocumentStateToInputDelegate];
  }

  return v12 & 1;
}

- (BOOL)insertTextSuggestion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  if (!v6)
  {
    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    if (!v6)
    {
      v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
      if (!v6)
      {
        v7 = [(UIKBInputDelegateManager *)self delegateAsResponder];
        if (!v7)
        {
          goto LABEL_8;
        }

        v22 = [(UIKBInputDelegateManager *)self delegateAsResponder];
        v23 = [v22 conformsToProtocol:&unk_1EFE8B2D0];

        if (!v23)
        {
          v7 = 0;
          goto LABEL_8;
        }

        v6 = [(UIKBInputDelegateManager *)self delegateAsResponder];
      }
    }
  }

  v7 = v6;
  if ((v6 == 0) | isKindOfClass & 1)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  v9 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v9 textWillChange:v7];

  v8 = 0;
LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    [v7 insertTextSuggestion:v4 completionHandler:&__block_literal_global_1076];
LABEL_33:
    v13 = 1;
    goto LABEL_34;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (!v10)
    {
      v14 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

      if (v14)
      {
        v15 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
        [v15 insertTextSuggestion:v4];
      }

      else
      {
        [v7 insertTextSuggestion:v4];
      }

      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
      v12 = [objc_alloc(getBEAutoFillTextSuggestionClass()) _initWithUIKitTextSuggestion:v11];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2050000000;
        v24 = getBETextSuggestionClass_softClass;
        v33 = getBETextSuggestionClass_softClass;
        if (!getBETextSuggestionClass_softClass)
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __getBETextSuggestionClass_block_invoke;
          v29[3] = &unk_1E70F2F20;
          v29[4] = &v30;
          __getBETextSuggestionClass_block_invoke(v29);
          v24 = v31[3];
        }

        v25 = v24;
        _Block_object_dispose(&v30, 8);
        v12 = [[v24 alloc] _initWithUIKitTextSuggestion:v4];
        goto LABEL_32;
      }

      v11 = v4;
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      v17 = [v11 username];

      if (v17)
      {
        v18 = [v11 username];
        [v16 setObject:v18 forKeyedSubscript:@"username"];
      }

      v19 = [v11 password];

      if (v19)
      {
        v20 = [v11 password];
        [v16 setObject:v20 forKeyedSubscript:@"password"];
      }

      v21 = [UIAutoFillTextSuggestion autoFillSuggestionWithContents:v16];
      v12 = [objc_alloc(getBEAutoFillTextSuggestionClass()) _initWithUIKitTextSuggestion:v21];
    }

LABEL_32:
    v26 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [v26 insertTextSuggestion:v12];

    goto LABEL_33;
  }

  v13 = 0;
LABEL_34:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isSecureTextEntry])
  {
    [v7 _forceObscureAllText];
  }

  if ((v8 & 1) == 0)
  {
    v27 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v27 textSuggestionDidChange:v7];
  }

  return v13;
}

void __49__UIKBInputDelegateManager_insertTextSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 count])
  {
    v3 = _UIKeyboardImplLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Uninserted AutoFill types: %@", &v4, 0xCu);
    }
  }
}

- (void)insertAttributedText:(id)a3
{
  v26 = a3;
  v4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v5 = [v4 keyboardState];
  v6 = [v5 documentState];
  v7 = [v6 selectedText];
  v8 = [v7 length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  v9 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v10 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v12 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [v12 insertAttributedText:v26];
    goto LABEL_10;
  }

  if (v9 != v10)
  {
    v13 = [(UIKBInputDelegateManager *)self textInputDelegate];

    if (!v13)
    {
      v12 = [v26 string];
      goto LABEL_8;
    }
  }

  v12 = [v26 string];
  if (!v10)
  {
LABEL_8:
    v14 = v9;
    goto LABEL_9;
  }

  v14 = v10;
LABEL_9:
  [v14 insertText:v12];
LABEL_10:

  v15 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v15 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  v16 = [v26 length];
  if (v16)
  {
    v17 = v16;
    v18 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v19 = [v26 string];
    v20 = [v19 substringWithRange:{0, v17}];
    [v18 updateKeyboardStateForInsertion:v20];
  }

  v21 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v22 = [v21 _textInputSource];

  if (v22 != 2)
  {
    v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v24 = [v23 _textInputSessionAnalytics];
    v25 = [v26 string];
    [v24 didInsertText:v25 relativeRangeBefore:{0, v8}];
  }
}

- (void)insertDictationResult:(id)a3
{
  v4 = a3;
  v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 insertDictationResult:v4];
  }

  else
  {
    v5 = [v4 firstObject];

    v6 = [v5 text];
    [v7 insertText:v6];

    v4 = v5;
  }
}

- (BOOL)requiresKeyEvents
{
  v3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v5 = [v4 requiresKeyEvents];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleKeyWebEvent:(id)a3
{
  v7 = a3;
  v4 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [v6 handleKeyWebEvent:v7];
  }
}

- (void)handleKeyWebEvent:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v8)
  {
    v9 = [[UIKeyEvent alloc] initWithWebEvent:v6];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v10 = getBEKeyEntryClass_softClass;
    v33 = getBEKeyEntryClass_softClass;
    if (!getBEKeyEntryClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getBEKeyEntryClass_block_invoke;
      v28 = &unk_1E70F2F20;
      v29 = &v30;
      __getBEKeyEntryClass_block_invoke(buf);
      v10 = v31[3];
    }

    v11 = v10;
    _Block_object_dispose(&v30, 8);
    v12 = [[v10 alloc] _initWithUIKitKeyEvent:v9];
    v13 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke;
    v23[3] = &unk_1E7109458;
    v24 = v7;
    [v13 handleKeyEntry:v12 withCompletionHandler:v23];

    goto LABEL_7;
  }

  v14 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v14)
  {
    v9 = [[UIKeyEvent alloc] initWithWebEvent:v6];
    v15 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke_2;
    v21[3] = &unk_1E7109480;
    v22 = v7;
    [v15 handleAsyncKeyEvent:v9 withCompletionHandler:v21];

LABEL_7:
    goto LABEL_8;
  }

  v16 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "webkey event shouldn't be handled here", buf, 2u);
      }
    }

    else
    {
      v18 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke_1087;
      v19[3] = &unk_1E71094A8;
      v20 = v7;
      [v18 handleKeyWebEvent:v6 withCompletionHandler:v19];
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }

LABEL_8:
}

void __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 _uikitKeyEvent];
  v5 = [v6 webEvent];
  (*(v4 + 16))(v4, v5, a3);
}

void __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 webEvent];
  (*(v4 + 16))(v4, v5, a3);
}

- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self selectableDelegate];
  [v8 _setMarkedText:v7 selectedRange:{location, length}];
}

- (void)_moveCurrentSelection:(int)a3
{
  v3 = *&a3;
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    v9 = v6;
    [v6 moveByOffset:v3];
    goto LABEL_8;
  }

  v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v7)
  {
    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  v8 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (v8)
  {
    v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  v9 = [(UIKBInputDelegateManager *)self textInputDelegate];
  [v9 _moveCurrentSelection:v3];
LABEL_8:
}

- (void)_deleteBackwardAndNotify:(BOOL)a3 reinsertText:(BOOL)a4 overrideOriginalContextBeforeInputWith:(id)a5
{
  v46 = a3;
  v7 = a5;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v11 = [v10 documentState];
    v12 = [v11 contextBeforeInput];
    v9 = [v12 copy];
  }

  v13 = [v9 length];
  v14 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v15 = [v14 documentState];
  v16 = [v15 markedText];
  v48 = [v16 length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  v17 = [(UIKBInputDelegateManager *)self legacyInputDelegate];

  v49 = v13;
  v50 = v9;
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v20 = v19;
    if (a4)
    {
      v51 = 0;
      [v19 _expandSelectionToBackwardDeletionClusterWithReinsertionOut:&v51];
      v18 = v51;
    }

    else
    {
      [v19 _expandSelectionToBackwardDeletionClusterWithReinsertionOut:0];
      v18 = 0;
    }
  }

  v21 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v22 = [v21 keyboardState];
  v23 = [v22 documentState];
  v24 = [v23 selectedText];
  v25 = [v24 copy];

  v47 = [v25 length];
  v26 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v27 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v28 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  v29 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v30 = v29;
  if (v29)
  {
    goto LABEL_13;
  }

  if (v28)
  {
    v29 = v28;
LABEL_13:
    [v29 deleteInDirection:1 toGranularity:0];
    goto LABEL_14;
  }

  if ((v26 == v27 || ([(UIKBInputDelegateManager *)self textInputDelegate], v44 = objc_claimAutoreleasedReturnValue(), v44, v44)) && v27)
  {
    [v27 _deleteBackwardAndNotify:v46];
    if (!v18)
    {
      goto LABEL_15;
    }

    [v27 insertText:v18];
  }

  else
  {
    [v26 _deleteBackwardAndNotify:v46];
  }

LABEL_14:

LABEL_15:
  v31 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v31 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  v32 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v33 = [v32 documentState];
  v34 = [v33 contextBeforeInput];
  v35 = [v34 length];

  v36 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v37 = [v36 documentState];
  v38 = [v37 markedText];
  v39 = [v38 length];

  if (v49 == v35 && v48 == v39)
  {
    v40 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [v40 updateKeyboardStateForDeletion];
  }

  v41 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v42 = [v41 documentState];
  v43 = [v42 markedText];

  if (!v43)
  {
    if (v47)
    {
      [UIKBAnalyticsDispatcher didDeleteBackwardText:v25];
    }

    else if (v49)
    {
      v45 = [v50 substringFromIndex:{objc_msgSend(v50, "_rangeOfBackwardDeletionClusterAtIndex:", v49 - 1)}];
      [UIKBAnalyticsDispatcher didDeleteBackwardText:v45];
    }
  }
}

- (void)_deleteBackwardWhileOverridingContextAndNotifyAtEnd:(BOOL)a3 deletionCount:(unint64_t)a4 reinsertTextInLoop:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v10 = [v9 documentState];
  v11 = [v10 copy];

  v12 = a4 - v7;
  if (a4 != v7)
  {
    do
    {
      v13 = [v11 contextBeforeInput];
      [(UIKBInputDelegateManager *)self _deleteBackwardAndNotify:0 reinsertText:v5 overrideOriginalContextBeforeInputWith:v13];

      v16 = [v11 documentStateAfterDeletingBackward];

      v14 = v16;
      v11 = v16;
      --v12;
    }

    while (v12);
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = v11;
  if (v7)
  {
LABEL_4:
    v17 = v14;
    v15 = [v14 contextBeforeInput];
    [(UIKBInputDelegateManager *)self _deleteBackwardAndNotify:1 reinsertText:0 overrideOriginalContextBeforeInputWith:v15];

    v14 = v17;
  }

LABEL_5:
}

- (void)_deleteByWord
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v7 = ;
      [v7 _deleteByWord];
      goto LABEL_6;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = v4;
  [v4 deleteInDirection:1 toGranularity:1];
LABEL_6:
}

- (void)_deleteForwardByWord
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v7 = ;
      [v7 _deleteForwardByWord];
      goto LABEL_6;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = v4;
  [v4 deleteInDirection:0 toGranularity:1];
LABEL_6:
}

- (void)_deleteToStartOfLine
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v7 = ;
      [v7 _deleteToStartOfLine];
      goto LABEL_6;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = v4;
  [v4 deleteInDirection:1 toGranularity:4];
LABEL_6:
}

- (void)_deleteToEndOfLine
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v7 = ;
      [v7 _deleteToEndOfLine];
      goto LABEL_6;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = v4;
  [v4 deleteInDirection:0 toGranularity:4];
LABEL_6:
}

- (void)_deleteToEndOfParagraph
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v6)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      v7 = ;
      [v7 _deleteToEndOfParagraph];
      goto LABEL_6;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = v4;
  [v4 deleteInDirection:0 toGranularity:3];
LABEL_6:
}

- (BOOL)_deleteForwardAndNotify:(BOOL)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke;
  aBlock[3] = &unk_1E7103900;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5 || ([(UIKBInputDelegateManager *)self asyncInputDelegate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || ([(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) || ([(UIKBInputDelegateManager *)self textInputDelegate], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v4[2](v4);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyboardStateDelegate];
  v6 = [*(a1 + 32) keyboardStateDelegate];
  v7 = [v6 keyboardState];
  v8 = [v7 documentState];
  v9 = [v8 documentStateAfterDeletingForward];
  [v5 setDocumentState:v9];

  [*(a1 + 32) setInsideKeyInputDelegateCall:1];
  v12 = [*(a1 + 32) textInputDelegate];
  v10 = [*(a1 + 32) selectableDelegate];
  v4[2](v4);

  v11 = [*(a1 + 32) keyboardStateDelegate];
  [v11 updateTextInputKeyboardSource];

  [*(a1 + 32) setInsideKeyInputDelegateCall:0];
}

void __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) webInputDelegate];
  [v1 deleteInDirection:0 toGranularity:0];
}

void __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) asyncInputDelegate];
  [v1 deleteInDirection:0 toGranularity:0];
}

void __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) asyncWebKitInteractionDelegate];
  [v2 _deleteForwardAndNotify:*(a1 + 40)];
}

void __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) textInputDelegate];
  [v2 _deleteForwardAndNotify:*(a1 + 40)];
}

- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete
{
  v2 = [(UIKBInputDelegateManager *)self selectableDelegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 _textLengthToDeleteBeforeSelectedRangeForSmartDelete];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__content
{
  v2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v3 = [v2 _proxyTextInput];

  return v3;
}

- (id)_textRangeFromNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v6 = [v5 _textRangeFromNSRange:{location, length}];

  return v6;
}

- (void)_setSelectionToPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self textInputDelegate];
  [v5 _setSelectionToPosition:v4];
}

- (BOOL)_selectionAtDocumentStart
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v5 = [v4 isSelectionAtDocumentStart];
  }

  else
  {
    v6 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v6)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v5 = [v4 selectionAtDocumentStart];
    }

    else
    {
      v4 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v5 = [v4 _selectionAtDocumentStart];
    }
  }

  v7 = v5;

  return v7;
}

- (void)applyAutocorrection:(id)a3 toString:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v11)
  {
    v12 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E70FDA40;
    v13 = &v20;
    v20 = v10;
    [v12 replaceText:v8 withText:v9 options:0 completionHandler:v19];
  }

  else
  {
    v14 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v14)
    {
      v12 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_2;
      v17[3] = &unk_1E70FDA40;
      v13 = &v18;
      v18 = v10;
      [v12 replaceText:v8 withText:v9 options:0 withCompletionHandler:v17];
    }

    else
    {
      v12 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E70FDA68;
      v13 = &v16;
      v16 = v10;
      [v12 applyAutocorrection:v8 toString:v9 withCompletionHandler:v15];
    }
  }
}

void __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    [v3 rect];
    (*(v2 + 16))(v2);
  }
}

void __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    [v3 rect];
    (*(v2 + 16))(v2);
  }
}

uint64_t __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_3(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    [a2 firstRect];
    v3 = *(v2 + 16);

    return v3(v2);
  }

  return result;
}

- (void)applyAutocorrection:(id)a3 toString:(id)a4 shouldUnderline:(BOOL)a5 withCompletionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v13)
  {
    v14 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E70FDA40;
    v25 = v12;
    [v14 replaceText:v11 withText:v10 options:v7 completionHandler:v24];

    v15 = v25;
  }

  else
  {
    v16 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v16)
    {
      v17 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_2;
      v22[3] = &unk_1E70FDA40;
      v23 = v12;
      [v17 replaceText:v11 withText:v10 options:v7 withCompletionHandler:v22];

      v15 = v23;
    }

    else
    {
      v18 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v18)
      {
        [(UIKBInputDelegateManager *)self applyAutocorrection:v10 toString:v11 withCompletionHandler:v12];
        goto LABEL_8;
      }

      v19 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_3;
      v20[3] = &unk_1E70FDA68;
      v21 = v12;
      [v19 applyAutocorrection:v10 toString:v11 shouldUnderline:v7 withCompletionHandler:v20];

      v15 = v21;
    }
  }

LABEL_8:
}

void __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    [v3 rect];
    (*(v2 + 16))(v2);
  }
}

void __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    [v3 rect];
    (*(v2 + 16))(v2);
  }
}

uint64_t __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_3(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    [a2 firstRect];
    v3 = *(v2 + 16);

    return v3(v2);
  }

  return result;
}

- (BOOL)shouldSuppressUpdateCandidateView
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v5)
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      if (objc_opt_respondsToSelector())
      {
        v7 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        goto LABEL_7;
      }

LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v6 = v4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_7:
  v8 = v7;
  v9 = [v7 shouldSuppressUpdateCandidateView];

LABEL_11:
  return v9;
}

- (id)_rangeOfText:(id)a3 endingAtPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [v8 _rangeOfText:v7 endingAtPosition:v6];

  return v9;
}

- (BOOL)_range:(id)a3 intersectsRange:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [v8 _range:v7 intersectsRange:v6];

  return v9;
}

- (void)requestDocumentContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!v8)
  {
    v14 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v14)
    {
      v15 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v16 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v16)
      {
        goto LABEL_10;
      }

      v15 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v17 = v15;
    [v15 requestDocumentContext:v6 completionHandler:v7];

    goto LABEL_10;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v9 = getBETextDocumentRequestClass_softClass;
  v27 = getBETextDocumentRequestClass_softClass;
  if (!getBETextDocumentRequestClass_softClass)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __getBETextDocumentRequestClass_block_invoke;
    v23[3] = &unk_1E70F2F20;
    v23[4] = &v24;
    __getBETextDocumentRequestClass_block_invoke(v23);
    v9 = v25[3];
  }

  v10 = v9;
  _Block_object_dispose(&v24, 8);
  v11 = [[v9 alloc] _initWithUIKitDocumentRequest:v6];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__UIKBInputDelegateManager_requestDocumentContext_completionHandler___block_invoke;
  v21 = &unk_1E71094D0;
  v22 = v7;
  v12 = _Block_copy(&v18);
  v13 = [(UIKBInputDelegateManager *)self webInputDelegate:v18];
  [v13 requestDocumentContext:v11 completionHandler:v12];

LABEL_10:
}

void __69__UIKBInputDelegateManager_requestDocumentContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _uikitDocumentContext];
  (*(*(a1 + 32) + 16))();
}

- (void)requestTextContextForAutocorrectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__UIKBInputDelegateManager_requestTextContextForAutocorrectionWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E71094D0;
    v11 = v4;
    v6 = _Block_copy(aBlock);
    v7 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [v7 requestTextContextForAutocorrectionWithCompletionHandler:v6];
  }

  else
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v8)
    {
      v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [v9 requestTextContextForAutocorrectionWithCompletionHandler:v4];
    }
  }
}

void __85__UIKBInputDelegateManager_requestTextContextForAutocorrectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _uikitDocumentContext];
  (*(*(a1 + 32) + 16))();
}

- (void)adjustSelection:(id)a3 completionHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [v8 adjustSelectionByRange:var0 completionHandler:{var1, v10}];
  }

  else
  {
    v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v9)
    {
      v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [v8 adjustSelection:var0 completionHandler:{var1, v10}];
    }

    else
    {
      v8 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      [v8 adjustSelectionWithDelta:var0 completionHandler:{var1, v10}];
    }
  }
}

- (void)requestTextRectsForString:(id)a3 withCompletionHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = v8;
    [v8 requestTextRectsForString:v11 withCompletionHandler:v6];
    goto LABEL_6;
  }

  v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v9)
  {
    v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = objc_opt_new();
  v6[2](v6, v10);
LABEL_6:
}

- (CGRect)textFirstRect
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v6)
      {
        v9 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v13 = *(MEMORY[0x1E695F050] + 16);
        v15 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_8;
      }

      v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = v4;
  [v4 textFirstRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_8:
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)textLastRect
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v3)
  {
    v4 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v5)
    {
      v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v6 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!v6)
      {
        v9 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v13 = *(MEMORY[0x1E695F050] + 16);
        v15 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_8;
      }

      v4 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = v4;
  [v4 textLastRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_8:
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)callKeyboardWillDismiss
{
  v3 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [v5 keyboardWillDismiss];
  }

  return v4 & 1;
}

- (void)insertText:(id)a3 updateInputSource:(BOOL)a4
{
  v4 = a4;
  v51 = a3;
  v6 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v7 = [v6 keyboardState];
  v8 = [v7 documentState];
  v9 = [v8 selectedText];
  v10 = [v9 copy];

  v11 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v12 = [v11 keyboardState];
  v13 = [v12 documentState];
  v14 = [v13 selectedText];
  v15 = [v14 length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  v16 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v17 = [(UIKBInputDelegateManager *)self selectableDelegate];
  v18 = [(UIKBInputDelegateManager *)self privateKeyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = [v18 insertFilteredText:v51];
    v21 = v20;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((v16 == v17 || ([(UIKBInputDelegateManager *)self textInputDelegate], v22 = objc_claimAutoreleasedReturnValue(), v22, v22)) && v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v16;
    }

    [v23 insertText:v51];
    v21 = [v51 length];
    v19 = 0;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v24 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v24 updateTextInputKeyboardSource];

LABEL_11:
  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  if (v21 && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v26 = [v51 substringWithRange:{v19, v21}];
    [v25 updateKeyboardStateForInsertion:v26];
  }

  v27 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  if ([v27 _textInputSource] == 2)
  {
    v28 = 0;
  }

  else
  {
    v29 = +[UIKBAnalyticsDispatcher sharedInstance];
    if ([v29 nextCandidateReplacementSource] == 2)
    {
      v28 = 1;
    }

    else
    {
      v30 = +[UIKBAnalyticsDispatcher sharedInstance];
      v28 = [v30 nextCandidateReplacementSource] == 1;
    }
  }

  v31 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  if ([v31 _textInputSource] == 5)
  {
    if (!+[UIKeyboard inputUIOOP])
    {

      goto LABEL_27;
    }

    v32 = +[UIKeyboard isInputSystemUI];
  }

  else
  {
    v32 = 0;
  }

  if (v28 || v32)
  {
LABEL_27:
    v33 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v34 = [v33 _textInputSessionAnalytics];
    [v34 didInsertText:v51 relativeRangeBefore:0 selectedTextBefore:v15 withLanguage:{v10, 0}];
  }

  v35 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v35 nextCandidateReplacementSource] == 3)
  {
LABEL_35:

LABEL_36:
    v39 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v39 setNextCandidateReplacementPostCandidateInsertedText:v51];

    goto LABEL_37;
  }

  v36 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v36 nextCandidateReplacementSource] == 4)
  {
LABEL_34:

    goto LABEL_35;
  }

  v37 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v37 nextCandidateReplacementSource] == 5)
  {
LABEL_33:

    goto LABEL_34;
  }

  v38 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v38 nextCandidateReplacementSource] == 7)
  {

    goto LABEL_33;
  }

  v49 = +[UIKBAnalyticsDispatcher sharedInstance];
  v50 = [v49 nextCandidateReplacementSource];

  if (v50 == 6)
  {
    goto LABEL_36;
  }

LABEL_37:
  v40 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v40 nextCandidateReplacementSource] == 9)
  {

LABEL_40:
    v43 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v43 setNextCandidateReplacementInsertedText:v51];

    v44 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v44 setNextCandidateReplacementPostCandidateInsertedText:&stru_1EFB14550];

    v45 = +[UIKBAnalyticsDispatcher sharedInstance];
    v46 = [v45 nextCandidateReplacementSource];

    v47 = +[UIKBAnalyticsDispatcher sharedInstance];
    v48 = v47;
    if (v46 == 9)
    {
      [v47 setAnalyticsShouldCallDidKeyPress:0];
    }

    else
    {
      [v47 setAnalyticsShouldCallDidKeyPressForDeleteKey:0];
    }

    goto LABEL_44;
  }

  v41 = +[UIKBAnalyticsDispatcher sharedInstance];
  v42 = [v41 nextCandidateReplacementSource];

  if (v42 == 10)
  {
    goto LABEL_40;
  }

LABEL_44:
}

- (void)insertTextAfterSelection:(id)a3
{
  v15 = a3;
  v4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v6 = [v5 keyboardState];
  v7 = [v6 documentState];
  v8 = [v7 documentStateAfterInsertingTextAfterSelection:v15];
  [v4 setDocumentState:v8];

  v9 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v9 clearInputForMarkedText];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  v10 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v11 = [(UIKBInputDelegateManager *)self selectableDelegate];
  if ((v10 == v11 || ([(UIKBInputDelegateManager *)self textInputDelegate], v12 = objc_claimAutoreleasedReturnValue(), v12, v12)) && v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  [v13 insertText:v15];
  v14 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v14 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  -[UIKBInputDelegateManager _moveCurrentSelection:](self, "_moveCurrentSelection:", -[v15 length]);
}

- (void)insertText:(id)a3 withEnumeratedAnimationStyle:(int64_t)a4
{
  v23 = a3;
  v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v11 = [v10 selectedTextRange];

      v12 = [v11 end];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v16 = [v11 start];
        v17 = v16;
        if (v16)
        {
          v14 = v16;
        }

        else
        {
          v18 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v14 = [v18 endOfDocument];
        }
      }

      v19 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v20 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v15 = [v19 textStylingAtPosition:v14 inDirection:{objc_msgSend(v20, "selectionAffinity")}];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23 attributes:v15];
    v22 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [v22 _insertAttributedText:v21 withAnimation:a4 completion:0];
  }

  else
  {
    [(UIKBInputDelegateManager *)self insertText:v23];
  }
}

- (void)unmarkText:(id)a3
{
  v4 = a3;
  v5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v5 setShouldIgnoreTextInputChanges:1];

  v6 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v7 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  v8 = [v7 keyboardState];
  v9 = [v8 documentState];
  v10 = [v9 documentStateAfterSettingMarkedText:v4 selectedRange:{objc_msgSend(v4, "length"), 0}];
  [v6 setDocumentState:v10];

  v11 = [(UIKBInputDelegateManager *)self selectableDelegate];
  [v11 _setMarkedText:v4 selectedRange:{objc_msgSend(v4, "length"), 0}];

  [(UIKBInputDelegateManager *)self unmarkText];
  v12 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v12 setShouldIgnoreTextInputChanges:0];
}

- (void)handleClearWithInsertBeforeAdvance:(id)a3
{
  v14 = a3;
  v4 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v5 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v6 = [v5 beginningOfDocument];
  v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = [v7 endOfDocument];
  v9 = [v4 textRangeFromPosition:v6 toPosition:v8];

  v10 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v11 = [v10 textInRange:v9];
  v12 = [v11 length];

  if ([(UIKBInputDelegateManager *)self callShouldReplaceExtendedRange:v12 withText:v14 includeMarkedText:1])
  {
    v13 = [(UIKBInputDelegateManager *)self textInputDelegate];
    [v13 replaceRange:v9 withText:v14];
  }
}

- (BOOL)callShouldReplaceExtendedRange:(int64_t)a3 withText:(id)a4 includeMarkedText:(BOOL)a5
{
  v5 = a5;
  v97[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v10 = [v9 selectedTextRange];

  v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v95 = [v11 markedTextRange];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 ranges];
    if ([v12 count])
    {
      [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v13 = v93 = v8;
      v14 = objc_opt_respondsToSelector();

      v8 = v93;
      if (v14)
      {
        v15 = [v10 ranges];
        v16 = v15;
        if (v5)
        {
          objc_opt_class();
          v17 = v95;
          v18 = v16;
          if (objc_opt_isKindOfClass())
          {
            v19 = [v95 ranges];
            v20 = [v19 count];

            v18 = v16;
            if (v20)
            {
              v18 = [v95 ranges];
            }
          }

          if (![v18 count])
          {
            v91 = MEMORY[0x1E696B098];
            v21 = objc_opt_class();
            v22 = [(UIKBInputDelegateManager *)self textInputDelegate];
            v23 = [v21 rangeForTextRange:v95 document:v22];
            v25 = [v91 valueWithRange:{v23, v24}];
            v97[0] = v25;
            v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];

            v18 = v92;
          }

          if (![v18 count])
          {
LABEL_52:
            v75 = v16;

            v18 = v75;
            goto LABEL_56;
          }
        }

        else
        {
          [v15 count];
          v18 = v16;
          v17 = v95;
          if (![v16 count])
          {
            goto LABEL_56;
          }
        }

        v71 = v16;
        v72 = [v18 firstObject];
        [v72 rangeValue];
        v74 = v73;

        if (v74)
        {
          v16 = v71;
          goto LABEL_56;
        }

        v16 = v71;
        if (v5)
        {
          goto LABEL_52;
        }

LABEL_56:
        if ([v18 count])
        {
          v96 = v16;
          v76 = [v18 lastObject];
          v77 = [v76 rangeValue];

          if (v77 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v78 = [v18 lastObject];
            v79 = [v78 rangeValue];
            v81 = v80;

            if ((a3 & 0x8000000000000000) == 0)
            {
              v82 = [v18 lastObject];
              v83 = [v82 rangeValue];

              if (v83 < a3)
              {
                a3 = v83;
              }

              v79 -= a3;
            }

            v84 = [v18 subarrayWithRange:{0, objc_msgSend(v18, "count") - 1}];

            v85 = [MEMORY[0x1E696B098] valueWithRange:{v79, a3 + v81}];
            v18 = [v84 arrayByAddingObject:v85];
          }

          v16 = v96;
        }

        v86 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
        v87 = objc_opt_respondsToSelector();

        if (v87)
        {
          v88 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
          v89 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
          v54 = [v88 keyboardInput:v89 shouldReplaceTextInRanges:v18 replacementText:v93];
        }

        else
        {
          v54 = 1;
        }

        v8 = v93;
        goto LABEL_68;
      }
    }

    else
    {
    }
  }

  v26 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v27 = objc_opt_respondsToSelector();

  if ((v27 & 1) == 0)
  {
    v35 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v36 = objc_opt_respondsToSelector();

    if ((v36 & 1) == 0)
    {
      v54 = 1;
      v17 = v95;
      goto LABEL_68;
    }

    v37 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v38 = v37;
    if (v5)
    {
      v39 = [v37 markedTextRange];

      if ([v39 isEmpty])
      {
        v40 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v41 = [v40 selectedTextRange];

        v39 = v41;
      }
    }

    else
    {
      v39 = [v37 selectedTextRange];

      [v39 isEmpty];
    }

    v64 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v65 = [v39 start];
    v66 = [v64 positionFromPosition:v65 offset:-a3];

    if (v66)
    {
      v67 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v68 = [v39 end];
      v69 = [v67 textRangeFromPosition:v66 toPosition:v68];

      if (!v69)
      {
        v54 = 1;
        goto LABEL_54;
      }

      v70 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v54 = [v70 shouldChangeTextInRange:v69 replacementText:v8];

      v39 = v69;
    }

    else
    {
      v54 = 1;
    }

LABEL_54:
    v17 = v95;

    goto LABEL_68;
  }

  v94 = v10;
  v28 = v8;
  v29 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    v32 = [v31 selectionRange];
    v34 = v33;
  }

  else
  {
    v42 = objc_opt_class();
    v31 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v43 = [v31 selectedTextRange];
    v44 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v32 = [v42 rangeForTextRange:v43 document:v44];
    v34 = v45;
  }

  if (v5)
  {
    v46 = objc_opt_class();
    v47 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v48 = [v47 markedTextRange];
    v49 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v50 = [v46 rangeForTextRange:v48 document:v49];
    v52 = v51;

    v53 = v34;
    v34 = v52;
  }

  else
  {
    v53 = 0;
    v50 = v32;
  }

  v8 = v28;
  if (v34)
  {
    v55 = v50;
  }

  else
  {
    v55 = v32;
  }

  if (v34)
  {
    v53 = v34;
  }

  v56 = v53 + a3;
  if (v55 >= a3)
  {
    v57 = a3;
  }

  else
  {
    v57 = v55;
  }

  v58 = v55 - v57;
  v59 = v57 + v53;
  if (a3 >= 0)
  {
    v56 = v59;
  }

  else
  {
    v58 = v55;
  }

  if (v55 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v60 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v60 = v58;
  }

  if (v55 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v61 = v53;
  }

  else
  {
    v61 = v56;
  }

  v62 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v63 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v54 = [v62 keyboardInput:v63 shouldReplaceTextInRange:v60 replacementText:{v61, v28}];

  v10 = v94;
  v17 = v95;
LABEL_68:

  return v54;
}

- (BOOL)callShouldDeleteBackwardWithCount:(unint64_t)a3
{
  v5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v5 setShouldIgnoreTextInputChanges:1];

  v6 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (a3 >= 2)
    {
      v8 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v8 _extendCurrentSelection:-a3];

      v9 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v10 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v11 = [v9 keyboardInputShouldDelete:v10];

      v12 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v12 _setCaretSelectionAtEndOfSelection];

      v13 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v13 syncDocumentStateToInputDelegate];
LABEL_16:

      goto LABEL_17;
    }

    v13 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v26 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v27 = [v13 keyboardInputShouldDelete:v26];
LABEL_15:
    v11 = v27;

    goto LABEL_16;
  }

  v14 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v13 = [(UIKBInputDelegateManager *)self selectedTextRange];
    if ([v13 isEmpty])
    {
      v16 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v17 = [v13 start];
      v18 = [(UIKBInputDelegateManager *)self beginningOfDocument];
      v19 = [v16 comparePosition:v17 toPosition:v18];

      if (v19)
      {
        v20 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v21 = [v13 start];
        v22 = [v20 positionFromPosition:v21 offset:-1];

        if (v22)
        {
          v23 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v24 = [v13 end];
          v25 = [v23 textRangeFromPosition:v22 toPosition:v24];

          v13 = v23;
        }

        else
        {
          v25 = 0;
        }

        v13 = v25;
      }
    }

    if (!v13)
    {
      v11 = 1;
      goto LABEL_16;
    }

    v26 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v27 = [v26 shouldChangeTextInRange:v13 replacementText:&stru_1EFB14550];
    goto LABEL_15;
  }

  v11 = 1;
LABEL_17:
  v28 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v28 setShouldIgnoreTextInputChanges:0];

  return v11;
}

- (void)addTextAlternatives:(id)a3
{
  v17 = a3;
  v4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (v4)
  {
    v5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    [v5 addTextAlternatives:v17];
  }

  v6 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v6)
  {
    v7 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    v9 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (v10)
    {
      v11 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      v9 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v13 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (v13)
      {
        v14 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        v15 = objc_opt_respondsToSelector();

        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

        v9 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        v9 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      }
    }
  }

  v16 = v9;
  [v9 addTextAlternatives:v17];

LABEL_14:
}

- (CGRect)visibleTextRect
{
  v3 = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  if (!v3 || (v4 = v3, [(UIKBInputDelegateManager *)self asyncCapableInputDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0))
  {
    v25 = [(UIKBInputDelegateManager *)self textInputDelegate];
    if (v25 && (v26 = v25, [(UIKBInputDelegateManager *)self textInputDelegate], v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, v26, (isKindOfClass & 1) != 0))
    {
      v19 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [v19 visibleTextRect];
    }

    else
    {
      [(UIKBInputDelegateManager *)self selectionClipRect];
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      if (!CGRectIsNull(v37))
      {
        goto LABEL_12;
      }

      v19 = [(UIKBInputDelegateManager *)self textInputView];
      [v19 bounds];
    }

    x = v29;
    y = v30;
    width = v31;
    height = v32;
    goto LABEL_11;
  }

  v7 = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  [v7 unobscuredContentRect];
  x = v8;
  y = v10;
  width = v12;
  height = v14;

  v16 = [(UIKBInputDelegateManager *)self textInteractionAssistant];
  v17 = [v16 view];
  v18 = [v17 isEditing];

  if (v18)
  {
    v19 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v20 = [(UIKBInputDelegateManager *)self textInputView];
    [v19 subtractKeyboardFrameFromRect:v20 inView:{x, y, width, height}];
    x = v21;
    y = v22;
    width = v23;
    height = v24;

LABEL_11:
  }

LABEL_12:
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

+ (_NSRange)rangeForTextRange:(id)a3 document:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v7 = [v5 beginningOfDocument];
    v8 = [v6 start];
    v4 = [v5 offsetFromPosition:v7 toPosition:v8];

    v9 = [v6 start];
    v10 = [v6 end];

    v11 = [v5 offsetFromPosition:v9 toPosition:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = v4;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)shouldDeleteForward
{
  v3 = [(UIKBInputDelegateManager *)self selectedTextRange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 ranges];
    if ([v4 count])
    {
      v5 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [v3 ranges];
        if ([v7 count] && (objc_msgSend(v7, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "rangeValue"), v8, v9 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v37 = [v7 lastObject];
          v38 = [v37 rangeValue];
          v40 = v39;

          v11 = v7;
          if (!v40)
          {
            v41 = [(UIKBInputDelegateManager *)self textInputDelegate];
            v42 = [v3 end];
            v43 = [(UIKBInputDelegateManager *)self endOfDocument];
            v44 = [v41 comparePosition:v42 toPosition:v43];

            v11 = v7;
            if (v44)
            {
              v45 = [v7 subarrayWithRange:{0, objc_msgSend(v7, "count") - 1}];

              v46 = [MEMORY[0x1E696B098] valueWithRange:{v38, 1}];
              v11 = [v45 arrayByAddingObject:v46];
            }
          }

          v47 = [v11 lastObject];
          [v47 rangeValue];
          v49 = v48;

          if (v49)
          {
            v50 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
            v51 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
            LOBYTE(v10) = [v50 keyboardInput:v51 shouldReplaceTextInRanges:v11 replacementText:&stru_1EFB14550];
          }

          else
          {
            LOBYTE(v10) = 1;
          }
        }

        else
        {
          LOBYTE(v10) = 1;
          v11 = v7;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  v12 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    v25 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v7 = [(UIKBInputDelegateManager *)self selectedTextRange];
      if ([v7 isEmpty])
      {
        v27 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v28 = [v7 end];
        v29 = [(UIKBInputDelegateManager *)self endOfDocument];
        v30 = [v27 comparePosition:v28 toPosition:v29];

        if (v30)
        {
          v31 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v32 = [v7 end];
          v33 = [v31 positionFromPosition:v32 offset:1];

          if (v33)
          {
            v34 = [(UIKBInputDelegateManager *)self textInputDelegate];
            v35 = [v7 start];
            v36 = [v34 textRangeFromPosition:v35 toPosition:v33];

            v7 = v34;
          }

          else
          {
            v36 = 0;
          }

          v7 = v36;
        }
      }

      if (!v7)
      {
        LOBYTE(v10) = 1;
        goto LABEL_30;
      }

      v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v24 = [v11 shouldChangeTextInRange:v7 replacementText:&stru_1EFB14550];
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  v14 = objc_opt_class();
  v15 = [(UIKBInputDelegateManager *)self selectedTextRange];
  v16 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v17 = [v14 rangeForTextRange:v15 document:v16];
  v10 = v18;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    LOBYTE(v10) = 1;
    goto LABEL_31;
  }

  if (v10 || (-[UIKBInputDelegateManager textInputDelegate](self, "textInputDelegate"), v19 = objc_claimAutoreleasedReturnValue(), -[UIKBInputDelegateManager selectedTextRange](self, "selectedTextRange"), v20 = objc_claimAutoreleasedReturnValue(), [v20 end], v21 = objc_claimAutoreleasedReturnValue(), -[UIKBInputDelegateManager endOfDocument](self, "endOfDocument"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v19, "comparePosition:toPosition:", v21, v22), v22, v21, v20, v19, v10 = 1, v23))
  {
    v7 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v11 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v24 = [v7 keyboardInput:v11 shouldReplaceTextInRange:v17 replacementText:{v10, &stru_1EFB14550}];
LABEL_28:
    LOBYTE(v10) = v24;
LABEL_29:

LABEL_30:
  }

LABEL_31:

  return v10;
}

- (BOOL)selectionIsEndOfWord
{
  v3 = [(UIKBInputDelegateManager *)self selectedTextRange];
  v4 = v3;
  if (v3 && ([v3 _isRanged] & 1) == 0)
  {
    v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v7 = [v4 start];
    v8 = [v6 _rangeOfEnclosingWord:v7];

    if (v8)
    {
      v9 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v10 = [v4 end];
      v11 = [v8 end];
      if ([v9 comparePosition:v10 toPosition:v11])
      {
        v5 = 0;
      }

      else
      {
        v12 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v13 = [v12 textInRange:v8];
        v5 = [v13 length] != 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collapseSelectionAndAdjustByOffset:(int64_t)a3
{
  v5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v5 setShouldIgnoreTextInputChanges:1];

  if (![(UIKBInputDelegateManager *)self hasAsyncCapableInputDelegate])
  {
    v9 = [(UIKBInputDelegateManager *)self selectedTextRange];
    v10 = [v9 end];

    if (a3 && v10)
    {
      v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v12 = [v11 positionFromPosition:v10 offset:a3];

      if (v12)
      {
        v13 = v12;

        v10 = v13;
      }
    }

    else if (!v10)
    {
      goto LABEL_17;
    }

    v14 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v15 = [v14 textRangeFromPosition:v10 toPosition:v10];

    if (v15)
    {
      [(UIKBInputDelegateManager *)self setSelectedTextRange:v15];
      v16 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [v16 syncDocumentStateToInputDelegate];
    }

    goto LABEL_17;
  }

  v6 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    v17 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v8 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      v19 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v20 = objc_opt_respondsToSelector();

      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v10 = v8;
  [v8 moveByOffset:a3];
LABEL_17:

LABEL_18:
  v21 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [v21 setShouldIgnoreTextInputChanges:0];
}

- (void)moveSelectionToEndOfWord
{
  v17 = [(UIKBInputDelegateManager *)self selectedTextRange];
  if (v17)
  {
    v3 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v4 = [v17 end];
    v5 = [v3 _rangeOfEnclosingWord:v4];

    if (v5)
    {
      v6 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v7 = [v17 end];
      v8 = [v5 end];
      v9 = [v6 comparePosition:v7 toPosition:v8];

      if (v9 == -1)
      {
        v10 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [v10 setShouldIgnoreTextInputChanges:1];

        v11 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v12 = [v5 end];
        v13 = [v5 end];
        v14 = [v11 textRangeFromPosition:v12 toPosition:v13];
        [(UIKBInputDelegateManager *)self setSelectedTextRange:v14];

        v15 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [v15 syncDocumentStateToInputDelegate];

        v16 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [v16 setShouldIgnoreTextInputChanges:0];
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (BOOL)selectionIsWord
{
  v3 = [(UIKBInputDelegateManager *)self selectedTextRange];
  v4 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v5 = [v3 start];
  v6 = [(UIKBInputDelegateManager *)self beginningOfDocument];
  if ([v4 comparePosition:v5 toPosition:v6])
  {
    v7 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v8 = [v7 tokenizer];
    v9 = [v3 start];
    v10 = [v8 isPosition:v9 atBoundary:1 inDirection:1];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v13 = [v3 end];
  v14 = [(UIKBInputDelegateManager *)self endOfDocument];
  if ([v12 comparePosition:v13 toPosition:v14])
  {
    v15 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v16 = [v15 tokenizer];
    v17 = [v3 end];
    v11 = [v16 isPosition:v17 atBoundary:1 inDirection:0];
  }

  else
  {
    v11 = 1;
  }

LABEL_9:
  return v11;
}

- (void)shiftKeyStateChangedFrom:(int)a3 to:(int)a4
{
  v7 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (v7)
  {
    if (a3 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = a3 == 1;
    }

    if (a4 == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = a4 == 1;
    }

    if (v8 != v9)
    {
      v18 = [(UIKBInputDelegateManager *)self webInputDelegate];
      [v18 shiftKeyStateChangedFromState:v8 toState:v9];
LABEL_27:
    }
  }

  else
  {
    v10 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!v10)
    {
      v13 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
        return;
      }

      v15 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      if (a3 == 3)
      {
        v16 = 0x10000;
      }

      else
      {
        v16 = (a3 == 1) << 17;
      }

      if (a4 == 3)
      {
        v17 = 0x10000;
      }

      else
      {
        v17 = (a4 == 1) << 17;
      }

      v18 = v15;
      [v15 modifierFlagsDidChangeFrom:v16 to:v17];
      goto LABEL_27;
    }

    if (a3 == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = a3 == 1;
    }

    if (a4 == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = a4 == 1;
    }

    if (v11 != v12)
    {
      v18 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [v18 shiftKeyStateChangedFrom:v11 to:v12];
      goto LABEL_27;
    }
  }
}

- (UIKeyboardImplStateProtocol)keyboardStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardStateDelegate);

  return WeakRetained;
}

@end