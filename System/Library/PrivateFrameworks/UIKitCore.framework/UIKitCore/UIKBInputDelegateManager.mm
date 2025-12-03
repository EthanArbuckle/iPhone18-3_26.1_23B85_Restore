@interface UIKBInputDelegateManager
+ (BOOL)isAsyncTextInputEnabled;
+ (_NSRange)rangeForTextRange:(id)range document:(id)document;
- (BOOL)_deleteForwardAndNotify:(BOOL)notify;
- (BOOL)_hasMarkedText;
- (BOOL)_range:(id)_range intersectsRange:(id)range;
- (BOOL)_selectionAtDocumentStart;
- (BOOL)callKeyboardWillDismiss;
- (BOOL)callShouldDeleteBackwardWithCount:(unint64_t)count;
- (BOOL)callShouldReplaceExtendedRange:(int64_t)range withText:(id)text includeMarkedText:(BOOL)markedText;
- (BOOL)canHandleInputDelegateCommandAction:(unint64_t)action;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)continuousSpellCheckingEnabled;
- (BOOL)delegateRespondsToSelector:(SEL)selector;
- (BOOL)hasAsyncCapableInputDelegate;
- (BOOL)hasMarkedText;
- (BOOL)hasText;
- (BOOL)insertSupplementalItem:(id)item candidate:(id)candidate replacementRange:(id)range;
- (BOOL)insertTextSuggestion:(id)suggestion;
- (BOOL)requiresKeyEvents;
- (BOOL)selectionIsEndOfWord;
- (BOOL)selectionIsWord;
- (BOOL)shouldDeleteForward;
- (BOOL)shouldSuppressUpdateCandidateView;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)selectionClipRect;
- (CGRect)textFirstRect;
- (CGRect)textLastRect;
- (CGRect)visibleTextRect;
- (SEL)selectorForCommand:(unint64_t)command;
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
- (id)_adjustedTextRange:(id)range givenRange:(_NSRange)givenRange contextBeforeLength:(unint64_t)length relativeToDocument:(id)document;
- (id)_moveDown:(BOOL)down withHistory:(id)history;
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveUp:(BOOL)up withHistory:(id)history;
- (id)_rangeOfText:(id)text endingAtPosition:(id)position;
- (id)_textRangeFromNSRange:(_NSRange)range;
- (id)_textSelectingContainer;
- (id)asyncCapableInputDelegate;
- (id)asyncWebKitInteractionDelegate;
- (id)attributedMarkedText;
- (id)beginningOfDocument;
- (id)delegateAsResponder;
- (id)delegateRespectingForwardingDelegate:(BOOL)delegate;
- (id)endOfDocument;
- (id)inputSystemSourceSession;
- (id)markedText;
- (id)markedTextRange;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)privateInputDelegate;
- (id)privateInputDelegateRespectingForwardingDelegate:(BOOL)delegate;
- (id)privateKeyInputDelegate;
- (id)selectedText;
- (id)selectedTextRange;
- (id)selectionRectsForRange:(id)range;
- (id)textInRange:(id)range;
- (id)textInputDelegate;
- (id)textInputView;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)tintColor;
- (id)webInputDelegate;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (unint64_t)_textLengthToDeleteBeforeSelectedRangeForSmartDelete;
- (unint64_t)removeAnnotation:(id)annotation removalRangeLength:(unint64_t)length forAnnotationRange:(_NSRange)range contextBeforeLength:(int64_t)beforeLength;
- (unint64_t)replaceAnnotationRange:(_NSRange)range contextBeforeLength:(int64_t)length withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange;
- (unsigned)_characterBeforeCaretSelection;
- (void)_deleteBackwardAndNotify:(BOOL)notify reinsertText:(BOOL)text overrideOriginalContextBeforeInputWith:(id)with;
- (void)_deleteBackwardWhileOverridingContextAndNotifyAtEnd:(BOOL)end deletionCount:(unint64_t)count reinsertTextInLoop:(BOOL)loop;
- (void)_deleteByWord;
- (void)_deleteForwardByWord;
- (void)_deleteToEndOfLine;
- (void)_deleteToEndOfParagraph;
- (void)_deleteToStartOfLine;
- (void)_firstResponderDidChange:(id)change;
- (void)_moveCurrentSelection:(int)selection;
- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_setSelectionToPosition:(id)position;
- (void)addTextAlternatives:(id)alternatives;
- (void)adjustSelection:(id)selection completionHandler:(id)handler;
- (void)applyAutocorrection:(id)autocorrection toString:(id)string shouldUnderline:(BOOL)underline withCompletionHandler:(id)handler;
- (void)applyAutocorrection:(id)autocorrection toString:(id)string withCompletionHandler:(id)handler;
- (void)changedSelection;
- (void)clearDelegate;
- (void)clearForwardingInputDelegateAndResign:(BOOL)resign;
- (void)collapseSelectionAndAdjustByOffset:(int64_t)offset;
- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement;
- (void)handleClearWithInsertBeforeAdvance:(id)advance;
- (void)handleKeyWebEvent:(id)event;
- (void)handleKeyWebEvent:(id)event withCompletionHandler:(id)handler;
- (void)insertAttributedText:(id)text;
- (void)insertDictationResult:(id)result;
- (void)insertText:(id)text;
- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style;
- (void)insertText:(id)text updateInputSource:(BOOL)source;
- (void)insertText:(id)text withEnumeratedAnimationStyle:(int64_t)style;
- (void)insertTextAfterSelection:(id)selection;
- (void)moveSelectionToEndOfWord;
- (void)replaceRange:(id)range oldText:(id)text withAttributedText:(id)attributedText forReplaceAction:(int)action;
- (void)replaceRange:(id)range oldText:(id)text withText:(id)withText forReplaceAction:(int)action;
- (void)replaceRange:(id)range withText:(id)text;
- (void)requestDocumentContext:(id)context completionHandler:(id)handler;
- (void)requestTextContextForAutocorrectionWithCompletionHandler:(id)handler;
- (void)requestTextRectsForString:(id)string withCompletionHandler:(id)handler;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setForwardingInputDelegate:(id)delegate;
- (void)setSelectedTextRange:(id)range;
- (void)setupResponderChangeListeners;
- (void)shiftKeyStateChangedFrom:(int)from to:(int)to;
- (void)storeDelegateConformance;
- (void)transposeCharacters;
- (void)unmarkText;
- (void)unmarkText:(id)text;
- (void)updateRespectForwardingInputDelegateFlagInDestination;
- (void)updateSelectableInputDelegateIfNecessary;
@end

@implementation UIKBInputDelegateManager

- (BOOL)_hasMarkedText
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    markedTextRange = webInputDelegate2;
    hasMarkedText = [webInputDelegate2 hasMarkedText];
    goto LABEL_8;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (asyncWebKitInteractionDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  markedTextRange = [textInputDelegate markedTextRange];

  if (markedTextRange)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v12 = [textInputDelegate2 textInRange:markedTextRange];
    hasMarkedText = [v12 length] != 0;
  }

  else
  {
    hasMarkedText = 0;
  }

LABEL_8:

  return hasMarkedText;
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
  asyncCapableInputDelegate = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  v3 = asyncCapableInputDelegate != 0;

  return v3;
}

- (id)textInputView
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
      {
        [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        [(UIKBInputDelegateManager *)self textInputDelegate];
      }
      webInputDelegate2 = ;
    }
  }

  v7 = webInputDelegate2;
  textInputView = [webInputDelegate2 textInputView];

  return textInputView;
}

- (id)delegateAsResponder
{
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([keyInputDelegate window], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "screen"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_userInterfaceIdiom"), v5, v4, v6 == 3))
  {
    firstResponder = keyInputDelegate;
  }

  else
  {
    keyWindow = [UIApp keyWindow];
    firstResponder = [keyWindow firstResponder];
    forwardingInputDelegate = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

    if (forwardingInputDelegate)
    {
      forwardingInputDelegate2 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

      firstResponder = forwardingInputDelegate2;
    }

    if (firstResponder)
    {
      v11 = 1;
    }

    else
    {
      v11 = keyInputDelegate == 0;
    }

    if (!v11)
    {
      firstResponder = keyInputDelegate;
    }
  }

  return firstResponder;
}

- (void)updateSelectableInputDelegateIfNecessary
{
  self->m_firstResponderAdoptsTextInput = 0;
  v3 = +[UIWindow _applicationKeyWindow];
  firstResponder = [v3 firstResponder];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [firstResponder conformsToProtocol:&unk_1EFE8B2D0])
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
    keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    keyInputDelegate = 0;
  }

  return keyInputDelegate;
}

- (UIKeyInput)forwardingInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);

  return WeakRetained;
}

- (id)asyncCapableInputDelegate
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = webInputDelegate;
  if (webInputDelegate)
  {
    v5 = webInputDelegate;
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v7 = asyncInputDelegate;
    if (asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = asyncInputDelegate;
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v5 = asyncWebKitInteractionDelegate;
  }

  return v5;
}

- (id)beginningOfDocument
{
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  beginningOfDocument = [textInputDelegate beginningOfDocument];

  return beginningOfDocument;
}

- (id)endOfDocument
{
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  endOfDocument = [textInputDelegate endOfDocument];

  return endOfDocument;
}

- (UITextInputTraits)textInputTraits
{
  v3 = +[UIKeyboard usesInputSystemUI];
  v4 = [(UIKBInputDelegateManager *)self privateInputDelegateRespectingForwardingDelegate:!v3];
  v5 = v4;
  if (v4)
  {
    textInputTraits = [v4 textInputTraits];
    v7 = [UITextInputTraits traitsByAdoptingTraits:textInputTraits];

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
    keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    keyInputDelegate = 0;
  }

  return keyInputDelegate;
}

- (UITextInteractionAssistant)textInteractionAssistant
{
  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];

  if (privateInputDelegate)
  {
    [(UIKBInputDelegateManager *)self privateInputDelegate];
  }

  else
  {
    [(UIKBInputDelegateManager *)self textInputDelegate];
  }
  v4 = ;
  interactionAssistant = [v4 interactionAssistant];

  return interactionAssistant;
}

- (id)markedText
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
        markedTextRange = [textInputDelegate markedTextRange];
        if (markedTextRange)
        {
          textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
          textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
          markedTextRange2 = [textInputDelegate3 markedTextRange];
          markedText = [textInputDelegate2 textInRange:markedTextRange2];
        }

        else
        {
          markedText = 0;
        }

        goto LABEL_8;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  textInputDelegate = webInputDelegate2;
  markedText = [webInputDelegate2 markedText];
LABEL_8:

  return markedText;
}

- (id)selectedTextRange
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v6 = webInputDelegate2;
  selectedTextRange = [webInputDelegate2 selectedTextRange];

  return selectedTextRange;
}

- (UIView)automaticallySelectedOverlay
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    keyInputDelegate = webInputDelegate2;
    unscaledView = [webInputDelegate2 unscaledView];
    goto LABEL_6;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    unscaledView = [keyInputDelegate2 automaticallySelectedOverlay];
  }

  else
  {
    unscaledView = 0;
  }

LABEL_6:

  return unscaledView;
}

- (id)inputSystemSourceSession
{
  if ((self->m_delegateConformanceType & 0x80) != 0 || ([(UIKBInputDelegateManager *)self forwardingInputDelegate], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (m_originalDelegateConformanceType = self->m_originalDelegateConformanceType, v3, (m_originalDelegateConformanceType & 0x80) != 0))
  {
    v6 = [(UIKBInputDelegateManager *)self delegateRespectingForwardingDelegate:0];
    _rtiSourceSession = [v6 _rtiSourceSession];
  }

  else
  {
    _rtiSourceSession = 0;
  }

  return _rtiSourceSession;
}

- (void)changedSelection
{
  legacyInputDelegate = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  if (legacyInputDelegate)
  {
    v4 = legacyInputDelegate;
    legacyInputDelegate2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      legacyInputDelegate3 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      legacyInputDelegate4 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      [legacyInputDelegate3 keyboardInputChangedSelection:legacyInputDelegate4];
    }
  }
}

- (void)storeDelegateConformance
{
  v33 = *MEMORY[0x1E69E9840];
  self->m_delegateConformanceType = 0;
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = [keyInputDelegate conformsToProtocol:&unk_1EFE8B2D0];

  if (v4)
  {
    self->m_delegateConformanceType |= 2uLL;
  }

  keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v6 = [keyInputDelegate2 conformsToProtocol:&unk_1EFE8E9A0];

  if (v6)
  {
    self->m_delegateConformanceType |= 4uLL;
  }

  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    keyInputDelegate3 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v8 = [keyInputDelegate3 conformsToProtocol:&unk_1F016C7B0];

    if (v8)
    {
      self->m_delegateConformanceType |= 0x720uLL;
      v9 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        keyInputDelegate4 = [(UIKBInputDelegateManager *)self keyInputDelegate];
        v31 = 138412290;
        v32 = keyInputDelegate4;
        _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Delegate: %@, conforms to UIAsyncTextInputClient", &v31, 0xCu);
      }
    }

    keyInputDelegate5 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    v11 = [keyInputDelegate5 conformsToProtocol:&unk_1F016C810];

    if (v11)
    {
      self->m_delegateConformanceType |= 0x920uLL;
      v12 = _UIKeyboardImplLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        keyInputDelegate6 = [(UIKBInputDelegateManager *)self keyInputDelegate];
        v31 = 138412290;
        v32 = keyInputDelegate6;
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "Delegate: %@, conforms to BETextInput", &v31, 0xCu);
      }
    }
  }

  keyInputDelegate7 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v14 = [keyInputDelegate7 conformsToProtocol:&unk_1F016CC30];

  if (v14)
  {
    self->m_delegateConformanceType |= 8uLL;
  }

  keyInputDelegate8 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v16 = [keyInputDelegate8 conformsToProtocol:&unk_1EFE8A940];

  if (v16)
  {
    self->m_delegateConformanceType |= 1uLL;
  }

  keyInputDelegate9 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v18 = [keyInputDelegate9 conformsToProtocol:&unk_1EFEB5DC8];

  m_delegateConformanceType = self->m_delegateConformanceType;
  if (v18)
  {
    m_delegateConformanceType |= 0x10uLL;
    self->m_delegateConformanceType = m_delegateConformanceType;
  }

  if ((m_delegateConformanceType & 4) != 0)
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      self->m_delegateConformanceType |= 0x20uLL;
    }
  }

  keyInputDelegate10 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v23 = [keyInputDelegate10 conformsToProtocol:&unk_1EFE8A188];

  if (v23)
  {
    self->m_delegateConformanceType |= 0x40uLL;
  }

  keyInputDelegate11 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    self->m_delegateConformanceType |= 0x80uLL;
  }

  keyInputDelegate12 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    keyInputDelegate13 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    requiresKeyEvents = [keyInputDelegate13 requiresKeyEvents];

    if (requiresKeyEvents)
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
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  hasText = [keyInputDelegate hasText];

  return hasText;
}

- (unsigned)_characterBeforeCaretSelection
{
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  _characterBeforeCaretSelection = [textInputDelegate _characterBeforeCaretSelection];

  return _characterBeforeCaretSelection;
}

- (UIKeyboardInput)legacyInputDelegate
{
  if ((self->m_delegateConformanceType & 0x40) != 0)
  {
    keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    keyInputDelegate = 0;
  }

  return keyInputDelegate;
}

- (id)markedTextRange
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v6 = webInputDelegate2;
  markedTextRange = [webInputDelegate2 markedTextRange];

  return markedTextRange;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel_updateSelectableInputDelegateIfNecessary name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
}

- (UITextSelectionDisplayInteraction)selectionDisplayInteraction
{
  delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
  _responderForEditing = [delegateAsResponder _responderForEditing];
  _selectionDisplayInteraction = [_responderForEditing _selectionDisplayInteraction];

  return _selectionDisplayInteraction;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  selectableDelegate = self->_selectableDelegate;
  self->_selectableDelegate = 0;

  objc_storeStrong(&self->_keyInputDelegate, delegate);
  [(UIKBInputDelegateManager *)self storeDelegateConformance];
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  interactionAssistant = [textInputDelegate interactionAssistant];

  externalInteractions = [interactionAssistant externalInteractions];

  if (externalInteractions)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v10 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:textInputDelegate2];
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
  forwardingInputDelegate = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

  if (forwardingInputDelegate)
  {
    forwardingInputDelegate2 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];
    [forwardingInputDelegate2 resignFirstResponder];

    [(UIKBInputDelegateManager *)self setForwardingInputDelegate:0];
  }
}

- (void)setForwardingInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_forwardingInputDelegate, delegateCopy);
  v5 = [delegateCopy conformsToProtocol:&unk_1F016CC30];

  self->_forwardingInputDelegateConformsToWKInteraction = v5;
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_forwardingInputDelegate);
    self->_forwardingInputDelegateConformsToAsyncTextInputClient = [WeakRetained conformsToProtocol:&unk_1F016C7B0];

    v7 = objc_loadWeakRetained(&self->_forwardingInputDelegate);
    self->_forwardingInputDelegateConformsToBETextInput = [v7 conformsToProtocol:&unk_1F016C810];
  }

  [(UIKBInputDelegateManager *)self setShouldRespectForwardingInputDelegate:delegateCopy != 0];
  self->m_originalDelegateConformanceType = self->m_delegateConformanceType;
  [(UIKBInputDelegateManager *)self storeDelegateConformance];
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate didChangeForwardingInputDelegate:delegateCopy];

  [(UIKBInputDelegateManager *)self updateRespectForwardingInputDelegateFlagInDestination];
}

- (void)clearForwardingInputDelegateAndResign:(BOOL)resign
{
  resignCopy = resign;
  forwardingInputDelegate = [(UIKBInputDelegateManager *)self forwardingInputDelegate];

  if (forwardingInputDelegate)
  {
    if (resignCopy)
    {
      forwardingInputDelegate2 = [(UIKBInputDelegateManager *)self forwardingInputDelegate];
      [forwardingInputDelegate2 resignFirstResponder];
    }

    [(UIKBInputDelegateManager *)self setForwardingInputDelegate:0];
    self->m_originalDelegateConformanceType = 0;
  }
}

- (void)updateRespectForwardingInputDelegateFlagInDestination
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    inputSystemSourceSession = [(UIKBInputDelegateManager *)self inputSystemSourceSession];
    if (inputSystemSourceSession)
    {
      v6 = inputSystemSourceSession;
      textOperations = [inputSystemSourceSession textOperations];
      [textOperations setCustomInfoType:0x1EFB7C8B0];
      v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBInputDelegateManager shouldRespectForwardingInputDelegate](self, "shouldRespectForwardingInputDelegate")}];
      [textOperations setCustomInfo:v5];

      [v6 flushOperations];
      inputSystemSourceSession = v6;
    }
  }
}

- (id)delegateRespectingForwardingDelegate:(BOOL)delegate
{
  if (delegate && [(UIKBInputDelegateManager *)self shouldRespectForwardingInputDelegate])
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
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    keyInputDelegate = webInputDelegate2;
    [webInputDelegate2 selectionClipRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    goto LABEL_6;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    [keyInputDelegate2 _selectionClipRect];
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

- (id)privateInputDelegateRespectingForwardingDelegate:(BOOL)delegate
{
  if ((self->m_delegateConformanceType & 4) != 0)
  {
    v5 = [(UIKBInputDelegateManager *)self delegateRespectingForwardingDelegate:delegate, v3];
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
    keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  }

  else
  {
    keyInputDelegate = 0;
  }

  return keyInputDelegate;
}

- (UITextInteractionSelectableInputDelegate)selectableDelegate
{
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (textInputDelegate)
  {
    delegateAsResponder = textInputDelegate;
    selectableDelegate = self->_selectableDelegate;
    if (selectableDelegate)
    {
      textInput = [(UITextInteractionSelectableInputDelegate *)selectableDelegate textInput];

      v7 = self->_selectableDelegate;
      if (textInput == delegateAsResponder)
      {
LABEL_7:
        v12 = v7;
LABEL_11:
        v13 = v12;

        delegateAsResponder = v13;
        goto LABEL_13;
      }

      if (v7)
      {
        goto LABEL_13;
      }
    }

    interactionAssistant = [delegateAsResponder interactionAssistant];
    externalInteractions = [interactionAssistant externalInteractions];

    if (!externalInteractions)
    {
      goto LABEL_13;
    }

    v10 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:delegateAsResponder];
    v11 = self->_selectableDelegate;
    self->_selectableDelegate = v10;

    v7 = self->_selectableDelegate;
    goto LABEL_7;
  }

  if (self->m_firstResponderAdoptsTextInput)
  {
    delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (!delegateAsResponder)
    {
      goto LABEL_13;
    }

    v12 = [UITextInteractionSelectableInputDelegate selectableInputDelegateWithTextInput:delegateAsResponder];
    goto LABEL_11;
  }

  delegateAsResponder = 0;
LABEL_13:

  return delegateAsResponder;
}

- (BOOL)canHandleInputDelegateCommandAction:(unint64_t)action
{
  v4 = [(UIKBInputDelegateManager *)self selectorForCommand:action];
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
      {
        asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        v9 = [asyncWebKitInteractionDelegate2 canPerformAction:v4 withSender:0];
        goto LABEL_6;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    }
  }

  asyncWebKitInteractionDelegate2 = webInputDelegate2;
  v9 = objc_opt_respondsToSelector();
LABEL_6:
  v10 = v9;

  return v10 & 1;
}

- (SEL)selectorForCommand:(unint64_t)command
{
  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (asyncInputDelegate)
  {
    v6 = 1;
  }

  else
  {
    webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
    v6 = webInputDelegate != 0;
  }

  if (command <= 2)
  {
    if (command)
    {
      if (command == 1)
      {
        v9 = &selRef_deleteInDirection_toGranularity_;
        v10 = &selRef__deleteForwardAndNotify_;
      }

      else
      {
        if (command != 2)
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

  else if (command > 4)
  {
    if (command == 5)
    {
      v9 = &selRef_deleteInDirection_toGranularity_;
      v10 = &selRef__deleteToEndOfLine;
    }

    else
    {
      if (command != 6)
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
    if (command == 3)
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (asyncInputDelegate)
  {
  }

  else
  {
    webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (!webInputDelegate)
    {
      delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
      v13 = [delegateAsResponder canPerformAction:action withSender:senderCopy];
      goto LABEL_13;
    }
  }

  if (sel_isEqual(action, sel__moveUp_withHistory_) || sel_isEqual(action, sel__moveDown_withHistory_) || sel_isEqual(action, sel__moveLeft_withHistory_) || sel_isEqual(action, sel__moveRight_withHistory_))
  {
    delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (![delegateAsResponder canPerformAction:sel_moveInLayoutDirection_ withSender:senderCopy])
    {
      v13 = 0;
      goto LABEL_13;
    }

    delegateAsResponder2 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    v11 = delegateAsResponder2;
    v12 = sel_extendInLayoutDirection_;
  }

  else
  {
    if (!sel_isEqual(action, sel__moveToStartOfWord_withHistory_) && !sel_isEqual(action, sel__moveToStartOfLine_withHistory_) && !sel_isEqual(action, sel__moveToStartOfParagraph_withHistory_) && !sel_isEqual(action, sel__moveToStartOfDocument_withHistory_) && !sel_isEqual(action, sel__moveToEndOfWord_withHistory_) && !sel_isEqual(action, sel__moveToEndOfParagraph_withHistory_) && !sel_isEqual(action, sel__moveToEndOfLine_withHistory_) && !sel_isEqual(action, sel__moveToEndOfDocument_withHistory_))
    {
      v13 = 0;
      goto LABEL_14;
    }

    delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if ([delegateAsResponder canPerformAction:sel_moveInStorageDirection_byGranularity_ withSender:senderCopy])
    {
      v13 = 1;
      goto LABEL_13;
    }

    delegateAsResponder2 = [(UIKBInputDelegateManager *)self delegateAsResponder];
    v11 = delegateAsResponder2;
    v12 = sel_extendInStorageDirection_byGranularity_;
  }

  v13 = [delegateAsResponder2 canPerformAction:v12 withSender:senderCopy];

LABEL_13:
LABEL_14:

  return v13;
}

- (BOOL)delegateRespondsToSelector:(SEL)selector
{
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)_firstResponderDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  if ([object _isApplicationKeyWindow])
  {
    self->m_firstResponderAdoptsTextInput = 0;
    userInfo = [changeCopy userInfo];
    v6 = [userInfo objectForKey:@"UIWindowFirstResponderUserInfoKey"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 conformsToProtocol:&unk_1EFE8B2D0])
    {
      self->m_firstResponderAdoptsTextInput = 1;
    }
  }
}

- (BOOL)continuousSpellCheckingEnabled
{
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
  continuousSpellCheckingEnabled = [keyInputDelegate2 continuousSpellCheckingEnabled];

  return continuousSpellCheckingEnabled;
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    [keyInputDelegate2 setContinuousSpellCheckingEnabled:enabledCopy];
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  if (os_variant_has_internal_diagnostics())
  {
    v6 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "inserting text", v7, 2u);
    }
  }

  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  -[UIKBInputDelegateManager insertText:updateInputSource:](self, "insertText:updateInputSource:", textCopy, [privateInputDelegate _textInputSource] != 3);
}

- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style
{
  textCopy = text;
  alternativesCopy = alternatives;
  if (os_variant_has_internal_diagnostics())
  {
    v24 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "inserting text", v25, 2u);
    }
  }

  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v11 = objc_opt_respondsToSelector();

  webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  v13 = objc_opt_respondsToSelector();

  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v15 = objc_opt_respondsToSelector();

  if ((v11 | v13) & 1) != 0 || (v15)
  {
    [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
    if ((v11 | v13))
    {
      textInputDelegate2 = [[off_1E70ECBA0 alloc] initWithPrimaryString:textCopy alternativeStrings:alternativesCopy isLowConfidence:style == 1];
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
      v20 = [[v18 alloc] _initWithNSTextAlternatives:textInputDelegate2];
      webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];
      v22 = webInputDelegate3;
      if (v13)
      {
        [webInputDelegate3 insertTextAlternatives:v20];
      }

      else if (v11)
      {
        [webInputDelegate3 insertText:textCopy textAlternatives:v20 style:style];
      }
    }

    else
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [textInputDelegate2 insertText:textCopy alternatives:alternativesCopy style:style];
    }

    keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate updateTextInputKeyboardSource];

    [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
    keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate2 updateKeyboardStateForInsertion:textCopy];
  }

  else
  {
    keyboardStateDelegate2 = [off_1E70ECBA0 attributedText:textCopy withAlternativeTexts:alternativesCopy style:style];
    [(UIKBInputDelegateManager *)self insertAttributedText:keyboardStateDelegate2];
  }
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v8 = webInputDelegate2;
  v9 = [webInputDelegate2 textInRange:rangeCopy];

  return v9;
}

- (void)replaceRange:(id)range withText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  [textInputDelegate replaceRange:rangeCopy withText:textCopy];
}

- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement
{
  textCopy = text;
  replacementCopy = replacement;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    [textInputDelegate2 correctedTypedText:textCopy rangeOfReplacement:replacementCopy];
  }
}

- (void)replaceRange:(id)range oldText:(id)text withText:(id)withText forReplaceAction:(int)action
{
  rangeCopy = range;
  textCopy = text;
  withTextCopy = withText;
  if (os_variant_has_internal_diagnostics())
  {
    v55 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_DEFAULT, "replacing text", buf, 2u);
    }
  }

  if (action > 1)
  {
    if (action == 2)
    {
      textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      beginningOfDocument = [textInputDelegate2 beginningOfDocument];
      textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
      endOfDocument = [textInputDelegate3 endOfDocument];
      selectedText = [textInputDelegate textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

      textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v27 = [textInputDelegate4 textInRange:selectedText];
      v28 = [v27 length];

      if (![(UIKBInputDelegateManager *)self callShouldReplaceExtendedRange:v28 withText:withTextCopy includeMarkedText:1])
      {
LABEL_32:

        goto LABEL_40;
      }

      textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [textInputDelegate5 replaceRange:selectedText withText:withTextCopy];
LABEL_30:

      goto LABEL_32;
    }

    if (action != 3 || !withTextCopy)
    {
      goto LABEL_40;
    }

    webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (webInputDelegate)
    {
      if (![textCopy length])
      {
        goto LABEL_48;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    }

    else
    {
      asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

      if (asyncInputDelegate)
      {
        if (![textCopy length])
        {
          goto LABEL_48;
        }

        webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      }

      else
      {
        asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

        if (!asyncWebKitInteractionDelegate)
        {
          if (!rangeCopy || ([rangeCopy isEmpty] & 1) != 0)
          {
            goto LABEL_48;
          }

          textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v51 = objc_opt_respondsToSelector();

          if (v51)
          {
            textInputDelegate7 = [(UIKBInputDelegateManager *)self textInputDelegate];
            [textInputDelegate7 replaceRangeWithTextWithoutClosingTyping:rangeCopy replacementText:withTextCopy];
          }

          else
          {
            textInputDelegate7 = [(UIKBInputDelegateManager *)self selectableDelegate];
            [textInputDelegate7 replaceRange:rangeCopy withText:withTextCopy];
          }

          keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
          [keyboardStateDelegate updateKeyboardStateForReplacingText:textCopy withText:withTextCopy];
          goto LABEL_39;
        }

        if (![textCopy length])
        {
          goto LABEL_48;
        }

        webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }
    }

    keyboardStateDelegate = webInputDelegate2;
    [webInputDelegate2 replaceDictatedText:textCopy withText:withTextCopy];
    goto LABEL_39;
  }

  if (!action)
  {
    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    if (asyncInputDelegate2 || ([(UIKBInputDelegateManager *)self webInputDelegate], (asyncInputDelegate2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      textInputDelegate8 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        keyboardStateDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
        [keyboardStateDelegate replaceRangeWithTextWithoutClosingTyping:rangeCopy replacementText:withTextCopy];
        goto LABEL_39;
      }
    }

    keyboardStateDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
    [keyboardStateDelegate replaceRange:rangeCopy withText:withTextCopy];
LABEL_39:

    goto LABEL_40;
  }

  if (action == 1)
  {
    webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (webInputDelegate3)
    {
      webInputDelegate4 = [(UIKBInputDelegateManager *)self webInputDelegate];
      selectedText = [webInputDelegate4 selectedText];

      if ([selectedText length])
      {
        textInputDelegate5 = [(UIKBInputDelegateManager *)self webInputDelegate];
        [textInputDelegate5 replaceSelectedText:selectedText withText:withTextCopy];
        goto LABEL_30;
      }

LABEL_31:
      [(UIKBInputDelegateManager *)self insertText:withTextCopy];
      goto LABEL_32;
    }

    asyncInputDelegate3 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate3)
    {
      asyncInputDelegate4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      selectedText = [asyncInputDelegate4 selectedText];

      if (![selectedText length])
      {
        goto LABEL_31;
      }

      asyncInputDelegate5 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_29:
      textInputDelegate5 = asyncInputDelegate5;
      [asyncInputDelegate5 replaceText:selectedText withText:withTextCopy];
      goto LABEL_30;
    }

    asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

    if (asyncWebKitInteractionDelegate2)
    {
      asyncWebKitInteractionDelegate3 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      selectedText = [asyncWebKitInteractionDelegate3 selectedText];

      if (![selectedText length])
      {
        goto LABEL_31;
      }

      asyncInputDelegate5 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      goto LABEL_29;
    }

    textInputDelegate9 = [(UIKBInputDelegateManager *)self textInputDelegate];
    selectedText = [textInputDelegate9 selectedTextRange];

    if (selectedText)
    {
      if (![selectedText isEmpty] || (-[UIKBInputDelegateManager textInputDelegate](self, "textInputDelegate"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(selectedText, "end"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "_rangeOfEnclosingWord:", v40), v41 = objc_claimAutoreleasedReturnValue(), selectedText, v40, v39, (selectedText = v41) != 0))
      {
        keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [keyboardStateDelegate2 setShouldIgnoreTextInputChanges:1];

        textInputDelegate10 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v44 = [textInputDelegate10 textInRange:selectedText];

        selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
        [selectableDelegate replaceRange:selectedText withText:withTextCopy];

        keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        keyboardState = [keyboardStateDelegate4 keyboardState];
        documentState = [keyboardState documentState];
        v49 = [documentState documentStateAfterReplacingText:v44 withText:withTextCopy];
        if (v49)
        {
          [keyboardStateDelegate3 setDocumentState:v49];
        }

        else
        {
          v57 = MEMORY[0x1E69D9590];
          textInputDelegate11 = [(UIKBInputDelegateManager *)self textInputDelegate];
          [v57 documentStateOfDocument:textInputDelegate11];
          v53 = v58 = v44;
          [keyboardStateDelegate3 setDocumentState:v53];

          v44 = v58;
        }

        keyboardStateDelegate5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [keyboardStateDelegate5 setShouldIgnoreTextInputChanges:0];

        goto LABEL_32;
      }
    }

LABEL_48:
    [(UIKBInputDelegateManager *)self insertText:withTextCopy];
  }

LABEL_40:
}

- (void)replaceRange:(id)range oldText:(id)text withAttributedText:(id)attributedText forReplaceAction:(int)action
{
  rangeCopy = range;
  attributedTextCopy = attributedText;
  if (os_variant_has_internal_diagnostics())
  {
    v18 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "replacing text", v19, 2u);
    }

    if (action)
    {
      goto LABEL_9;
    }
  }

  else if (action)
  {
    goto LABEL_9;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  if (asyncInputDelegate || ([(UIKBInputDelegateManager *)self webInputDelegate], (asyncInputDelegate = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      goto LABEL_8;
    }
  }

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self selectableDelegate];
LABEL_8:
    v15 = textInputDelegate2;
    [textInputDelegate2 replaceRange:rangeCopy withAttributedText:attributedTextCopy];
  }

LABEL_9:
}

- (id)_adjustedTextRange:(id)range givenRange:(_NSRange)givenRange contextBeforeLength:(unint64_t)length relativeToDocument:(id)document
{
  length = givenRange.length;
  location = givenRange.location;
  documentCopy = document;
  v11 = documentCopy;
  v12 = 0;
  if (range && documentCopy)
  {
    start = [range start];
    v14 = [v11 positionFromPosition:start offset:location - length];

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

- (unint64_t)replaceAnnotationRange:(_NSRange)range contextBeforeLength:(int64_t)length withAnnotatedString:(id)string relativeReplacementRange:(_NSRange)replacementRange
{
  length = replacementRange.length;
  location = replacementRange.location;
  v9 = range.length;
  v10 = range.location;
  stringCopy = string;
  v13 = v10 - length;
  if (_os_feature_enabled_impl())
  {
    webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
      [webInputDelegate2 replaceSelectionOffset:v10 - length length:v9 withAnnotatedString:stringCopy relativeReplacementRange:{location, length}];
LABEL_25:
      v27 = 1;
      goto LABEL_26;
    }
  }

  webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!webInputDelegate3)
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_17:
        keyboardStateDelegate3 = asyncInputDelegate2;
        [asyncInputDelegate2 replaceSelectionOffset:v10 - length length:v9 withAnnotatedString:stringCopy relativeReplacementRange:{0x7FFFFFFFFFFFFFFFLL, length}];
LABEL_24:

        goto LABEL_25;
      }

      keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate textWillChange:webInputDelegate2];

      asyncInputDelegate3 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
        v39 = objc_opt_respondsToSelector();

        if ((v39 & 1) == 0)
        {
          v27 = 0;
          goto LABEL_27;
        }

        textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
        markedTextRange = [textInputDelegate2 markedTextRange];
        v42 = markedTextRange;
        if (markedTextRange)
        {
          webInputDelegate2 = markedTextRange;
        }

        else
        {
          textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
          webInputDelegate2 = [textInputDelegate3 selectedTextRange];
        }

        textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v24 = [(UIKBInputDelegateManager *)self _adjustedTextRange:webInputDelegate2 givenRange:v10 contextBeforeLength:v9 relativeToDocument:length, textInputDelegate4];

        if (v24)
        {
          textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
          [textInputDelegate5 replaceRange:v24 withAnnotatedString:stringCopy relativeReplacementRange:{location, length}];

          v27 = 1;
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        goto LABEL_17;
      }

      keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate2 textWillChange:webInputDelegate2];

      asyncInputDelegate3 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v44 = asyncInputDelegate3;
    [asyncInputDelegate3 replaceSelectionOffset:v13 length:v9 withAnnotatedString:stringCopy relativeReplacementRange:{location, length}];

    keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate3 textDidChange:webInputDelegate2];
    goto LABEL_24;
  }

  keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  webInputDelegate2 = [keyboardStateDelegate4 documentState];

  contextBeforeInput = [webInputDelegate2 contextBeforeInput];
  [contextBeforeInput length];

  contextBeforeInput2 = [webInputDelegate2 contextBeforeInput];
  v21 = [contextBeforeInput2 length];

  if (v10 + v9 > v21)
  {
    contextBeforeInput3 = [webInputDelegate2 contextBeforeInput];
    v9 = [contextBeforeInput3 length] - v10;
  }

  contextBeforeInput4 = [webInputDelegate2 contextBeforeInput];
  v24 = [contextBeforeInput4 substringWithRange:{v10, v9}];

  string = [stringCopy string];
  v26 = [v24 isEqualToString:string];

  if ((v26 & 1) == 0)
  {
    webInputDelegate4 = [(UIKBInputDelegateManager *)self webInputDelegate];
    string2 = [stringCopy string];
    [webInputDelegate4 replaceDictatedText:v24 withText:string2];

    keyboardStateDelegate5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    string3 = [stringCopy string];
    [keyboardStateDelegate5 updateKeyboardStateForReplacingText:v24 withText:string3];

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

- (unint64_t)removeAnnotation:(id)annotation removalRangeLength:(unint64_t)length forAnnotationRange:(_NSRange)range contextBeforeLength:(int64_t)beforeLength
{
  length = range.length;
  location = range.location;
  annotationCopy = annotation;
  if (_os_feature_enabled_impl())
  {
    webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_10:
      selectedTextRange = webInputDelegate2;
      [webInputDelegate2 removeAnnotation:annotationCopy forSelectionOffset:location - beforeLength length:length];
      v16 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!webInputDelegate3)
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      goto LABEL_10;
    }

    asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

    if (asyncWebKitInteractionDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      goto LABEL_10;
    }

    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      markedTextRange = [textInputDelegate2 markedTextRange];
      v26 = markedTextRange;
      if (markedTextRange)
      {
        selectedTextRange = markedTextRange;
      }

      else
      {
        textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
        selectedTextRange = [textInputDelegate3 selectedTextRange];
      }

      textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v29 = [(UIKBInputDelegateManager *)self _adjustedTextRange:selectedTextRange givenRange:location contextBeforeLength:length relativeToDocument:beforeLength, textInputDelegate4];

      if (v29)
      {
        textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
        [textInputDelegate5 removeAnnotation:annotationCopy forRange:v29];

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
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [webInputDelegate2 transposeCharactersAroundSelection];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [webInputDelegate2 transposeCharacters];
    }

    else
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [webInputDelegate2 _transpose];
    }
  }
}

- (id)selectedText
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        goto LABEL_8;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = webInputDelegate2;
  asyncWebKitInteractionDelegate = [webInputDelegate2 selectedText];

LABEL_8:

  return asyncWebKitInteractionDelegate;
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 setSelectedTextRange:rangeCopy];
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v10 = webInputDelegate2;
  [webInputDelegate2 _setAttributedMarkedText:textCopy selectedRange:{location, length}];
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v8 = webInputDelegate2;
  v9 = [webInputDelegate2 selectionRectsForRange:rangeCopy];

  return v9;
}

- (BOOL)hasMarkedText
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    v7 = webInputDelegate2;
    hasMarkedText = [webInputDelegate2 hasMarkedText];

    return hasMarkedText;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (asyncWebKitInteractionDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  return 0;
}

- (void)unmarkText
{
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  [selectableDelegate _unmarkText];

  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate2 keyboardState];
  documentState = [keyboardState documentState];
  documentStateAfterUnmarkingText = [documentState documentStateAfterUnmarkingText];
  [keyboardStateDelegate setDocumentState:documentStateAfterUnmarkingText];

  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate3 clearInputForMarkedText];
}

- (id)attributedMarkedText
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v5 = objc_opt_respondsToSelector();

    webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    textInputDelegate2 = webInputDelegate3;
    if (v5)
    {
      attributedMarkedText = [webInputDelegate3 attributedMarkedText];
LABEL_13:

      goto LABEL_14;
    }

    markedText = [webInputDelegate3 markedText];

    if (markedText)
    {
      attributedMarkedText = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:markedText];
      textInputDelegate2 = markedText;
      goto LABEL_13;
    }

    textInputDelegate2 = 0;
LABEL_12:
    attributedMarkedText = 0;
    goto LABEL_13;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v5 = objc_opt_respondsToSelector();

    webInputDelegate3 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (asyncWebKitInteractionDelegate)
  {
    asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    v5 = objc_opt_respondsToSelector();

    webInputDelegate3 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v16 = objc_opt_respondsToSelector();

  textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  markedTextRange = [textInputDelegate2 markedTextRange];
  v18 = markedTextRange;
  if (v16)
  {
    if (markedTextRange)
    {
      textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
      textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
      markedTextRange2 = [textInputDelegate4 markedTextRange];
      attributedMarkedText = [textInputDelegate3 attributedTextInRange:markedTextRange2];
    }

    else
    {
      attributedMarkedText = 0;
    }

    goto LABEL_13;
  }

  if (!markedTextRange)
  {
    goto LABEL_12;
  }

  textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
  textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
  markedTextRange3 = [textInputDelegate6 markedTextRange];
  v25 = [textInputDelegate5 textInRange:markedTextRange3];

  if (v25)
  {
    attributedMarkedText = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25];
    textInputDelegate2 = v25;
    goto LABEL_13;
  }

  attributedMarkedText = 0;
LABEL_14:

  return attributedMarkedText;
}

- (id)tintColor
{
  delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tintColor = [delegateAsResponder tintColor];
  }

  else
  {
    _responderForEditing = [delegateAsResponder _responderForEditing];
    if (!_responderForEditing)
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

      tintColor = [_responderForEditing nextResponder];

      _responderForEditing = tintColor;
    }

    while (tintColor);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tintColor = [_responderForEditing tintColor];
    }

    else
    {
LABEL_9:
      tintColor = 0;
    }
  }

  return tintColor;
}

- (id)_textSelectingContainer
{
  if ([(UIKBInputDelegateManager *)self hasAsyncCapableInputDelegate])
  {
    asyncCapableInputDelegate = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  }

  else
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    asyncCapableInputDelegate = [textInputDelegate _textSelectingContainer];
  }

  return asyncCapableInputDelegate;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = [textInputDelegate positionFromPosition:positionCopy offset:offset];

  return v8;
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [textInputDelegate textRangeFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [textInputDelegate comparePosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v8 = [textInputDelegate baseWritingDirectionForPosition:positionCopy inDirection:direction];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v9 = webInputDelegate2;
  [webInputDelegate2 setBaseWritingDirection:direction forRange:rangeCopy];
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v11 = webInputDelegate2;
  v12 = [webInputDelegate2 offsetFromPosition:positionCopy toPosition:toPositionCopy];

  return v12;
}

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      [(UIKBInputDelegateManager *)self textInputDelegate];
    }
    webInputDelegate2 = ;
  }

  v8 = webInputDelegate2;
  [webInputDelegate2 caretRectForPosition:positionCopy];
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

- (id)_moveUp:(BOOL)up withHistory:(id)history
{
  upCopy = up;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    selectableDelegate = webInputDelegate2;
    if (upCopy)
    {
      [webInputDelegate2 extendInLayoutDirection:4];
    }

    else
    {
      [webInputDelegate2 moveInLayoutDirection:4];
    }

    v11 = 0;
    goto LABEL_9;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [selectableDelegate _moveUp:upCopy withHistory:historyCopy];
LABEL_9:

  return v11;
}

- (id)_moveDown:(BOOL)down withHistory:(id)history
{
  downCopy = down;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    selectableDelegate = webInputDelegate2;
    if (downCopy)
    {
      [webInputDelegate2 extendInLayoutDirection:5];
    }

    else
    {
      [webInputDelegate2 moveInLayoutDirection:5];
    }

    v11 = 0;
    goto LABEL_9;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [selectableDelegate _moveDown:downCopy withHistory:historyCopy];
LABEL_9:

  return v11;
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  leftCopy = left;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    selectableDelegate = webInputDelegate2;
    if (leftCopy)
    {
      [webInputDelegate2 extendInLayoutDirection:3];
    }

    else
    {
      [webInputDelegate2 moveInLayoutDirection:3];
    }

    v11 = 0;
    goto LABEL_9;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [selectableDelegate _moveLeft:leftCopy withHistory:historyCopy];
LABEL_9:

  return v11;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  rightCopy = right;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    selectableDelegate = webInputDelegate2;
    if (rightCopy)
    {
      [webInputDelegate2 extendInLayoutDirection:2];
    }

    else
    {
      [webInputDelegate2 moveInLayoutDirection:2];
    }

    v11 = 0;
    goto LABEL_9;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  v11 = [selectableDelegate _moveRight:rightCopy withHistory:historyCopy];
LABEL_9:

  return v11;
}

- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (wordCopy)
    {
      [webInputDelegate2 extendInStorageDirection:1 byGranularity:1];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:1 byGranularity:1];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToStartOfWord:wordCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (wordCopy)
    {
      [asyncInputDelegate2 extendInDirection:1 byGranularity:1];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:1 byGranularity:1];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (paragraphCopy)
    {
      [webInputDelegate2 extendInStorageDirection:1 byGranularity:3];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:1 byGranularity:3];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToStartOfParagraph:paragraphCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (paragraphCopy)
    {
      [asyncInputDelegate2 extendInDirection:1 byGranularity:3];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:1 byGranularity:3];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (lineCopy)
    {
      [webInputDelegate2 extendInStorageDirection:1 byGranularity:4];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:1 byGranularity:4];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToStartOfLine:lineCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (lineCopy)
    {
      [asyncInputDelegate2 extendInDirection:1 byGranularity:4];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:1 byGranularity:4];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (documentCopy)
    {
      [webInputDelegate2 extendInStorageDirection:1 byGranularity:5];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:1 byGranularity:5];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToStartOfDocument:documentCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (documentCopy)
    {
      [asyncInputDelegate2 extendInDirection:1 byGranularity:5];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:1 byGranularity:5];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (wordCopy)
    {
      [webInputDelegate2 extendInStorageDirection:0 byGranularity:1];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:0 byGranularity:1];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToEndOfWord:wordCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (wordCopy)
    {
      [asyncInputDelegate2 extendInDirection:0 byGranularity:1];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:0 byGranularity:1];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (paragraphCopy)
    {
      [webInputDelegate2 extendInStorageDirection:0 byGranularity:3];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:0 byGranularity:3];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToEndOfParagraph:paragraphCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (paragraphCopy)
    {
      [asyncInputDelegate2 extendInDirection:0 byGranularity:3];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:0 byGranularity:3];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (lineCopy)
    {
      [webInputDelegate2 extendInStorageDirection:0 byGranularity:4];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:0 byGranularity:4];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToEndOfLine:lineCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (lineCopy)
    {
      [asyncInputDelegate2 extendInDirection:0 byGranularity:4];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:0 byGranularity:4];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  historyCopy = history;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    selectableDelegate = webInputDelegate2;
    if (documentCopy)
    {
      [webInputDelegate2 extendInStorageDirection:0 byGranularity:5];
    }

    else
    {
      [webInputDelegate2 moveInStorageDirection:0 byGranularity:5];
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
      v12 = [selectableDelegate _moveToEndOfDocument:documentCopy withHistory:historyCopy];
      goto LABEL_11;
    }

    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    selectableDelegate = asyncInputDelegate2;
    if (documentCopy)
    {
      [asyncInputDelegate2 extendInDirection:0 byGranularity:5];
    }

    else
    {
      [asyncInputDelegate2 moveInDirection:0 byGranularity:5];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)insertSupplementalItem:(id)item candidate:(id)candidate replacementRange:(id)range
{
  itemCopy = item;
  candidateCopy = candidate;
  rangeCopy = range;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (!textInputDelegate)
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self delegateAsResponder];
    if (textInputDelegate)
    {
      delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
      v17 = [delegateAsResponder conformsToProtocol:&unk_1EFE8B2D0];

      if (v17)
      {
        textInputDelegate = [(UIKBInputDelegateManager *)self delegateAsResponder];
      }

      else
      {
        textInputDelegate = 0;
      }
    }
  }

  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    if (textInputDelegate)
    {
      keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate textWillChange:textInputDelegate];

      candidate = [candidateCopy candidate];
      [textInputDelegate _insertSupplementalItem:itemCopy forString:candidate replacementRange:rangeCopy];

      keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate2 textSuggestionDidChange:textInputDelegate];
    }

    else
    {
      keyboardStateDelegate2 = [candidateCopy candidate];
      [0 _insertSupplementalItem:itemCopy forString:keyboardStateDelegate2 replacementRange:rangeCopy];
    }

    keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate3 syncDocumentStateToInputDelegate];
  }

  return v12 & 1;
}

- (BOOL)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
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

  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  if (!webInputDelegate)
  {
    webInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    if (!webInputDelegate)
    {
      webInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
      if (!webInputDelegate)
      {
        delegateAsResponder = [(UIKBInputDelegateManager *)self delegateAsResponder];
        if (!delegateAsResponder)
        {
          goto LABEL_8;
        }

        delegateAsResponder2 = [(UIKBInputDelegateManager *)self delegateAsResponder];
        v23 = [delegateAsResponder2 conformsToProtocol:&unk_1EFE8B2D0];

        if (!v23)
        {
          delegateAsResponder = 0;
          goto LABEL_8;
        }

        webInputDelegate = [(UIKBInputDelegateManager *)self delegateAsResponder];
      }
    }
  }

  delegateAsResponder = webInputDelegate;
  if ((webInputDelegate == 0) | isKindOfClass & 1)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate textWillChange:delegateAsResponder];

  v8 = 0;
LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    [delegateAsResponder insertTextSuggestion:suggestionCopy completionHandler:&__block_literal_global_1076];
LABEL_33:
    v13 = 1;
    goto LABEL_34;
  }

  if (objc_opt_respondsToSelector())
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];

    if (!webInputDelegate2)
    {
      asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

      if (asyncInputDelegate)
      {
        asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
        [asyncInputDelegate2 insertTextSuggestion:suggestionCopy];
      }

      else
      {
        [delegateAsResponder insertTextSuggestion:suggestionCopy];
      }

      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = suggestionCopy;
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
        v12 = [[v24 alloc] _initWithUIKitTextSuggestion:suggestionCopy];
        goto LABEL_32;
      }

      v11 = suggestionCopy;
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      username = [v11 username];

      if (username)
      {
        username2 = [v11 username];
        [v16 setObject:username2 forKeyedSubscript:@"username"];
      }

      password = [v11 password];

      if (password)
      {
        password2 = [v11 password];
        [v16 setObject:password2 forKeyedSubscript:@"password"];
      }

      v21 = [UIAutoFillTextSuggestion autoFillSuggestionWithContents:v16];
      v12 = [objc_alloc(getBEAutoFillTextSuggestionClass()) _initWithUIKitTextSuggestion:v21];
    }

LABEL_32:
    webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [webInputDelegate3 insertTextSuggestion:v12];

    goto LABEL_33;
  }

  v13 = 0;
LABEL_34:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [delegateAsResponder isSecureTextEntry])
  {
    [delegateAsResponder _forceObscureAllText];
  }

  if ((v8 & 1) == 0)
  {
    keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate2 textSuggestionDidChange:delegateAsResponder];
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

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];
  v8 = [selectedText length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  LOBYTE(selectedText) = objc_opt_respondsToSelector();

  if (selectedText)
  {
    privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [privateInputDelegate2 insertAttributedText:textCopy];
    goto LABEL_10;
  }

  if (keyInputDelegate != selectableDelegate)
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];

    if (!textInputDelegate)
    {
      privateInputDelegate2 = [textCopy string];
      goto LABEL_8;
    }
  }

  privateInputDelegate2 = [textCopy string];
  if (!selectableDelegate)
  {
LABEL_8:
    v14 = keyInputDelegate;
    goto LABEL_9;
  }

  v14 = selectableDelegate;
LABEL_9:
  [v14 insertText:privateInputDelegate2];
LABEL_10:

  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate2 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  v16 = [textCopy length];
  if (v16)
  {
    v17 = v16;
    keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    string = [textCopy string];
    v20 = [string substringWithRange:{0, v17}];
    [keyboardStateDelegate3 updateKeyboardStateForInsertion:v20];
  }

  privateInputDelegate3 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  _textInputSource = [privateInputDelegate3 _textInputSource];

  if (_textInputSource != 2)
  {
    v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v23 _textInputSessionAnalytics];
    string2 = [textCopy string];
    [_textInputSessionAnalytics didInsertText:string2 relativeRangeBefore:{0, v8}];
  }
}

- (void)insertDictationResult:(id)result
{
  resultCopy = result;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    [textInputDelegate insertDictationResult:resultCopy];
  }

  else
  {
    firstObject = [resultCopy firstObject];

    text = [firstObject text];
    [textInputDelegate insertText:text];

    resultCopy = firstObject;
  }
}

- (BOOL)requiresKeyEvents
{
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    keyInputDelegate2 = [(UIKBInputDelegateManager *)self keyInputDelegate];
    requiresKeyEvents = [keyInputDelegate2 requiresKeyEvents];
  }

  else
  {
    requiresKeyEvents = 0;
  }

  return requiresKeyEvents;
}

- (void)handleKeyWebEvent:(id)event
{
  eventCopy = event;
  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [privateInputDelegate2 handleKeyWebEvent:eventCopy];
  }
}

- (void)handleKeyWebEvent:(id)event withCompletionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    v9 = [[UIKeyEvent alloc] initWithWebEvent:eventCopy];
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
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke;
    v23[3] = &unk_1E7109458;
    v24 = handlerCopy;
    [webInputDelegate2 handleKeyEntry:v12 withCompletionHandler:v23];

    goto LABEL_7;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    v9 = [[UIKeyEvent alloc] initWithWebEvent:eventCopy];
    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke_2;
    v21[3] = &unk_1E7109480;
    v22 = handlerCopy;
    [asyncInputDelegate2 handleAsyncKeyEvent:v9 withCompletionHandler:v21];

LABEL_7:
    goto LABEL_8;
  }

  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
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
      privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__UIKBInputDelegateManager_handleKeyWebEvent_withCompletionHandler___block_invoke_1087;
      v19[3] = &unk_1E71094A8;
      v20 = handlerCopy;
      [privateInputDelegate2 handleKeyWebEvent:eventCopy withCompletionHandler:v19];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, eventCopy, 0);
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

- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  [selectableDelegate _setMarkedText:textCopy selectedRange:{location, length}];
}

- (void)_moveCurrentSelection:(int)selection
{
  v3 = *&selection;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_7:
    textInputDelegate = webInputDelegate2;
    [webInputDelegate2 moveByOffset:v3];
    goto LABEL_8;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_7;
  }

  asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

  if (asyncWebKitInteractionDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    goto LABEL_7;
  }

  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  [textInputDelegate _moveCurrentSelection:v3];
LABEL_8:
}

- (void)_deleteBackwardAndNotify:(BOOL)notify reinsertText:(BOOL)text overrideOriginalContextBeforeInputWith:(id)with
{
  notifyCopy = notify;
  withCopy = with;
  v8 = withCopy;
  if (withCopy)
  {
    v9 = withCopy;
  }

  else
  {
    keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    documentState = [keyboardStateDelegate documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    v9 = [contextBeforeInput copy];
  }

  v13 = [v9 length];
  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  documentState2 = [keyboardStateDelegate2 documentState];
  markedText = [documentState2 markedText];
  v48 = [markedText length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  legacyInputDelegate = [(UIKBInputDelegateManager *)self legacyInputDelegate];

  v49 = v13;
  v50 = v9;
  if (legacyInputDelegate)
  {
    v18 = 0;
  }

  else
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    v20 = textInputDelegate;
    if (text)
    {
      v51 = 0;
      [textInputDelegate _expandSelectionToBackwardDeletionClusterWithReinsertionOut:&v51];
      v18 = v51;
    }

    else
    {
      [textInputDelegate _expandSelectionToBackwardDeletionClusterWithReinsertionOut:0];
      v18 = 0;
    }
  }

  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate3 keyboardState];
  documentState3 = [keyboardState documentState];
  selectedText = [documentState3 selectedText];
  v25 = [selectedText copy];

  v47 = [v25 length];
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v30 = webInputDelegate;
  if (webInputDelegate)
  {
    goto LABEL_13;
  }

  if (asyncInputDelegate)
  {
    webInputDelegate = asyncInputDelegate;
LABEL_13:
    [webInputDelegate deleteInDirection:1 toGranularity:0];
    goto LABEL_14;
  }

  if ((keyInputDelegate == selectableDelegate || ([(UIKBInputDelegateManager *)self textInputDelegate], v44 = objc_claimAutoreleasedReturnValue(), v44, v44)) && selectableDelegate)
  {
    [selectableDelegate _deleteBackwardAndNotify:notifyCopy];
    if (!v18)
    {
      goto LABEL_15;
    }

    [selectableDelegate insertText:v18];
  }

  else
  {
    [keyInputDelegate _deleteBackwardAndNotify:notifyCopy];
  }

LABEL_14:

LABEL_15:
  keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate4 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  keyboardStateDelegate5 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  documentState4 = [keyboardStateDelegate5 documentState];
  contextBeforeInput2 = [documentState4 contextBeforeInput];
  v35 = [contextBeforeInput2 length];

  keyboardStateDelegate6 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  documentState5 = [keyboardStateDelegate6 documentState];
  markedText2 = [documentState5 markedText];
  v39 = [markedText2 length];

  if (v49 == v35 && v48 == v39)
  {
    keyboardStateDelegate7 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    [keyboardStateDelegate7 updateKeyboardStateForDeletion];
  }

  keyboardStateDelegate8 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  documentState6 = [keyboardStateDelegate8 documentState];
  markedText3 = [documentState6 markedText];

  if (!markedText3)
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

- (void)_deleteBackwardWhileOverridingContextAndNotifyAtEnd:(BOOL)end deletionCount:(unint64_t)count reinsertTextInLoop:(BOOL)loop
{
  loopCopy = loop;
  endCopy = end;
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  documentState = [keyboardStateDelegate documentState];
  v11 = [documentState copy];

  v12 = count - endCopy;
  if (count != endCopy)
  {
    do
    {
      contextBeforeInput = [v11 contextBeforeInput];
      [(UIKBInputDelegateManager *)self _deleteBackwardAndNotify:0 reinsertText:loopCopy overrideOriginalContextBeforeInputWith:contextBeforeInput];

      documentStateAfterDeletingBackward = [v11 documentStateAfterDeletingBackward];

      v14 = documentStateAfterDeletingBackward;
      v11 = documentStateAfterDeletingBackward;
      --v12;
    }

    while (v12);
    if ((endCopy & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = v11;
  if (endCopy)
  {
LABEL_4:
    v17 = v14;
    contextBeforeInput2 = [v14 contextBeforeInput];
    [(UIKBInputDelegateManager *)self _deleteBackwardAndNotify:1 reinsertText:0 overrideOriginalContextBeforeInputWith:contextBeforeInput2];

    v14 = v17;
  }

LABEL_5:
}

- (void)_deleteByWord
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
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

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 deleteInDirection:1 toGranularity:1];
LABEL_6:
}

- (void)_deleteForwardByWord
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
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

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 deleteInDirection:0 toGranularity:1];
LABEL_6:
}

- (void)_deleteToStartOfLine
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
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

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 deleteInDirection:1 toGranularity:4];
LABEL_6:
}

- (void)_deleteToEndOfLine
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
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

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 deleteInDirection:0 toGranularity:4];
LABEL_6:
}

- (void)_deleteToEndOfParagraph
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
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

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 deleteInDirection:0 toGranularity:3];
LABEL_6:
}

- (BOOL)_deleteForwardAndNotify:(BOOL)notify
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__UIKBInputDelegateManager__deleteForwardAndNotify___block_invoke;
  aBlock[3] = &unk_1E7103900;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate || ([(UIKBInputDelegateManager *)self asyncInputDelegate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || ([(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) || ([(UIKBInputDelegateManager *)self textInputDelegate], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
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
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  if (selectableDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _textLengthToDeleteBeforeSelectedRangeForSmartDelete = [selectableDelegate _textLengthToDeleteBeforeSelectedRangeForSmartDelete];
  }

  else
  {
    _textLengthToDeleteBeforeSelectedRangeForSmartDelete = 0;
  }

  return _textLengthToDeleteBeforeSelectedRangeForSmartDelete;
}

- (id)__content
{
  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  _proxyTextInput = [privateInputDelegate _proxyTextInput];

  return _proxyTextInput;
}

- (id)_textRangeFromNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v6 = [textInputDelegate _textRangeFromNSRange:{location, length}];

  return v6;
}

- (void)_setSelectionToPosition:(id)position
{
  positionCopy = position;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  [textInputDelegate _setSelectionToPosition:positionCopy];
}

- (BOOL)_selectionAtDocumentStart
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    isSelectionAtDocumentStart = [webInputDelegate2 isSelectionAtDocumentStart];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      isSelectionAtDocumentStart = [webInputDelegate2 selectionAtDocumentStart];
    }

    else
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      isSelectionAtDocumentStart = [webInputDelegate2 _selectionAtDocumentStart];
    }
  }

  v7 = isSelectionAtDocumentStart;

  return v7;
}

- (void)applyAutocorrection:(id)autocorrection toString:(id)string withCompletionHandler:(id)handler
{
  autocorrectionCopy = autocorrection;
  stringCopy = string;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E70FDA40;
    v13 = &v20;
    v20 = handlerCopy;
    [webInputDelegate2 replaceText:autocorrectionCopy withText:stringCopy options:0 completionHandler:v19];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_2;
      v17[3] = &unk_1E70FDA40;
      v13 = &v18;
      v18 = handlerCopy;
      [webInputDelegate2 replaceText:autocorrectionCopy withText:stringCopy options:0 withCompletionHandler:v17];
    }

    else
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__UIKBInputDelegateManager_applyAutocorrection_toString_withCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E70FDA68;
      v13 = &v16;
      v16 = handlerCopy;
      [webInputDelegate2 applyAutocorrection:autocorrectionCopy toString:stringCopy withCompletionHandler:v15];
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

- (void)applyAutocorrection:(id)autocorrection toString:(id)string shouldUnderline:(BOOL)underline withCompletionHandler:(id)handler
{
  underlineCopy = underline;
  autocorrectionCopy = autocorrection;
  stringCopy = string;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E70FDA40;
    v25 = handlerCopy;
    [webInputDelegate2 replaceText:stringCopy withText:autocorrectionCopy options:underlineCopy completionHandler:v24];

    v15 = v25;
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_2;
      v22[3] = &unk_1E70FDA40;
      v23 = handlerCopy;
      [asyncInputDelegate2 replaceText:stringCopy withText:autocorrectionCopy options:underlineCopy withCompletionHandler:v22];

      v15 = v23;
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        [(UIKBInputDelegateManager *)self applyAutocorrection:autocorrectionCopy toString:stringCopy withCompletionHandler:handlerCopy];
        goto LABEL_8;
      }

      asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__UIKBInputDelegateManager_applyAutocorrection_toString_shouldUnderline_withCompletionHandler___block_invoke_3;
      v20[3] = &unk_1E70FDA68;
      v21 = handlerCopy;
      [asyncWebKitInteractionDelegate2 applyAutocorrection:autocorrectionCopy toString:stringCopy shouldUnderline:underlineCopy withCompletionHandler:v20];

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
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      if (objc_opt_respondsToSelector())
      {
        asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        goto LABEL_7;
      }

LABEL_10:
      shouldSuppressUpdateCandidateView = 0;
      goto LABEL_11;
    }

    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
  }

  asyncWebKitInteractionDelegate = webInputDelegate2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
LABEL_7:
  v8 = asyncWebKitInteractionDelegate2;
  shouldSuppressUpdateCandidateView = [asyncWebKitInteractionDelegate2 shouldSuppressUpdateCandidateView];

LABEL_11:
  return shouldSuppressUpdateCandidateView;
}

- (id)_rangeOfText:(id)text endingAtPosition:(id)position
{
  positionCopy = position;
  textCopy = text;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [textInputDelegate _rangeOfText:textCopy endingAtPosition:positionCopy];

  return v9;
}

- (BOOL)_range:(id)_range intersectsRange:(id)range
{
  if (!_range || !range)
  {
    return 0;
  }

  rangeCopy = range;
  _rangeCopy = _range;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v9 = [textInputDelegate _range:_rangeCopy intersectsRange:rangeCopy];

  return v9;
}

- (void)requestDocumentContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (!webInputDelegate)
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        goto LABEL_10;
      }

      asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }

    v17 = asyncInputDelegate2;
    [asyncInputDelegate2 requestDocumentContext:contextCopy completionHandler:handlerCopy];

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
  v11 = [[v9 alloc] _initWithUIKitDocumentRequest:contextCopy];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__UIKBInputDelegateManager_requestDocumentContext_completionHandler___block_invoke;
  v21 = &unk_1E71094D0;
  v22 = handlerCopy;
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

- (void)requestTextContextForAutocorrectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__UIKBInputDelegateManager_requestTextContextForAutocorrectionWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E71094D0;
    v11 = handlerCopy;
    v6 = _Block_copy(aBlock);
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [webInputDelegate2 requestTextContextForAutocorrectionWithCompletionHandler:v6];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [asyncInputDelegate2 requestTextContextForAutocorrectionWithCompletionHandler:handlerCopy];
    }
  }
}

void __85__UIKBInputDelegateManager_requestTextContextForAutocorrectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _uikitDocumentContext];
  (*(*(a1 + 32) + 16))();
}

- (void)adjustSelection:(id)selection completionHandler:(id)handler
{
  var1 = selection.var1;
  var0 = selection.var0;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [webInputDelegate2 adjustSelectionByRange:var0 completionHandler:{var1, handlerCopy}];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [webInputDelegate2 adjustSelection:var0 completionHandler:{var1, handlerCopy}];
    }

    else
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      [webInputDelegate2 adjustSelectionWithDelta:var0 completionHandler:{var1, handlerCopy}];
    }
  }
}

- (void)requestTextRectsForString:(id)string withCompletionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
LABEL_5:
    v10 = webInputDelegate2;
    [webInputDelegate2 requestTextRectsForString:stringCopy withCompletionHandler:handlerCopy];
    goto LABEL_6;
  }

  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    goto LABEL_5;
  }

  v10 = objc_opt_new();
  handlerCopy[2](handlerCopy, v10);
LABEL_6:
}

- (CGRect)textFirstRect
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        v9 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v13 = *(MEMORY[0x1E695F050] + 16);
        v15 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_8;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 textFirstRect];
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
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (!asyncWebKitInteractionDelegate)
      {
        v9 = *MEMORY[0x1E695F050];
        v11 = *(MEMORY[0x1E695F050] + 8);
        v13 = *(MEMORY[0x1E695F050] + 16);
        v15 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_8;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v7 = webInputDelegate2;
  [webInputDelegate2 textLastRect];
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
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    [webInputDelegate2 keyboardWillDismiss];
  }

  return v4 & 1;
}

- (void)insertText:(id)text updateInputSource:(BOOL)source
{
  sourceCopy = source;
  textCopy = text;
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];
  v10 = [selectedText copy];

  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState2 = [keyboardStateDelegate2 keyboardState];
  documentState2 = [keyboardState2 documentState];
  selectedText2 = [documentState2 selectedText];
  v15 = [selectedText2 length];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  privateKeyInputDelegate = [(UIKBInputDelegateManager *)self privateKeyInputDelegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = [privateKeyInputDelegate insertFilteredText:textCopy];
    v21 = v20;
    if (!sourceCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((keyInputDelegate == selectableDelegate || ([(UIKBInputDelegateManager *)self textInputDelegate], v22 = objc_claimAutoreleasedReturnValue(), v22, v22)) && selectableDelegate)
    {
      v23 = selectableDelegate;
    }

    else
    {
      v23 = keyInputDelegate;
    }

    [v23 insertText:textCopy];
    v21 = [textCopy length];
    v19 = 0;
    if (!sourceCopy)
    {
      goto LABEL_11;
    }
  }

  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate3 updateTextInputKeyboardSource];

LABEL_11:
  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  if (v21 && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    v26 = [textCopy substringWithRange:{v19, v21}];
    [keyboardStateDelegate4 updateKeyboardStateForInsertion:v26];
  }

  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  if ([privateInputDelegate _textInputSource] == 2)
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

  privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
  if ([privateInputDelegate2 _textInputSource] == 5)
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
    _textInputSessionAnalytics = [v33 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didInsertText:textCopy relativeRangeBefore:0 selectedTextBefore:v15 withLanguage:{v10, 0}];
  }

  v35 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v35 nextCandidateReplacementSource] == 3)
  {
LABEL_35:

LABEL_36:
    v39 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v39 setNextCandidateReplacementPostCandidateInsertedText:textCopy];

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
  nextCandidateReplacementSource = [v49 nextCandidateReplacementSource];

  if (nextCandidateReplacementSource == 6)
  {
    goto LABEL_36;
  }

LABEL_37:
  v40 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v40 nextCandidateReplacementSource] == 9)
  {

LABEL_40:
    v43 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v43 setNextCandidateReplacementInsertedText:textCopy];

    v44 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v44 setNextCandidateReplacementPostCandidateInsertedText:&stru_1EFB14550];

    v45 = +[UIKBAnalyticsDispatcher sharedInstance];
    nextCandidateReplacementSource2 = [v45 nextCandidateReplacementSource];

    v47 = +[UIKBAnalyticsDispatcher sharedInstance];
    v48 = v47;
    if (nextCandidateReplacementSource2 == 9)
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
  nextCandidateReplacementSource3 = [v41 nextCandidateReplacementSource];

  if (nextCandidateReplacementSource3 == 10)
  {
    goto LABEL_40;
  }

LABEL_44:
}

- (void)insertTextAfterSelection:(id)selection
{
  selectionCopy = selection;
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate2 keyboardState];
  documentState = [keyboardState documentState];
  v8 = [documentState documentStateAfterInsertingTextAfterSelection:selectionCopy];
  [keyboardStateDelegate setDocumentState:v8];

  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate3 clearInputForMarkedText];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:1];
  keyInputDelegate = [(UIKBInputDelegateManager *)self keyInputDelegate];
  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  if ((keyInputDelegate == selectableDelegate || ([(UIKBInputDelegateManager *)self textInputDelegate], v12 = objc_claimAutoreleasedReturnValue(), v12, v12)) && selectableDelegate)
  {
    v13 = selectableDelegate;
  }

  else
  {
    v13 = keyInputDelegate;
  }

  [v13 insertText:selectionCopy];
  keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate4 updateTextInputKeyboardSource];

  [(UIKBInputDelegateManager *)self setInsideKeyInputDelegateCall:0];
  -[UIKBInputDelegateManager _moveCurrentSelection:](self, "_moveCurrentSelection:", -[selectionCopy length]);
}

- (void)insertText:(id)text withEnumeratedAnimationStyle:(int64_t)style
{
  textCopy = text;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
      selectedTextRange = [textInputDelegate3 selectedTextRange];

      v12 = [selectedTextRange end];
      v13 = v12;
      if (v12)
      {
        endOfDocument = v12;
      }

      else
      {
        start = [selectedTextRange start];
        v17 = start;
        if (start)
        {
          endOfDocument = start;
        }

        else
        {
          textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
          endOfDocument = [textInputDelegate4 endOfDocument];
        }
      }

      textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
      textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v15 = [textInputDelegate5 textStylingAtPosition:endOfDocument inDirection:{objc_msgSend(textInputDelegate6, "selectionAffinity")}];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy attributes:v15];
    privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
    [privateInputDelegate _insertAttributedText:v21 withAnimation:style completion:0];
  }

  else
  {
    [(UIKBInputDelegateManager *)self insertText:textCopy];
  }
}

- (void)unmarkText:(id)text
{
  textCopy = text;
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate setShouldIgnoreTextInputChanges:1];

  keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate3 keyboardState];
  documentState = [keyboardState documentState];
  v10 = [documentState documentStateAfterSettingMarkedText:textCopy selectedRange:{objc_msgSend(textCopy, "length"), 0}];
  [keyboardStateDelegate2 setDocumentState:v10];

  selectableDelegate = [(UIKBInputDelegateManager *)self selectableDelegate];
  [selectableDelegate _setMarkedText:textCopy selectedRange:{objc_msgSend(textCopy, "length"), 0}];

  [(UIKBInputDelegateManager *)self unmarkText];
  keyboardStateDelegate4 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate4 setShouldIgnoreTextInputChanges:0];
}

- (void)handleClearWithInsertBeforeAdvance:(id)advance
{
  advanceCopy = advance;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  beginningOfDocument = [textInputDelegate2 beginningOfDocument];
  textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
  endOfDocument = [textInputDelegate3 endOfDocument];
  v9 = [textInputDelegate textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v11 = [textInputDelegate4 textInRange:v9];
  v12 = [v11 length];

  if ([(UIKBInputDelegateManager *)self callShouldReplaceExtendedRange:v12 withText:advanceCopy includeMarkedText:1])
  {
    textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
    [textInputDelegate5 replaceRange:v9 withText:advanceCopy];
  }
}

- (BOOL)callShouldReplaceExtendedRange:(int64_t)range withText:(id)text includeMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  v97[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  selectedTextRange = [textInputDelegate selectedTextRange];

  textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
  markedTextRange = [textInputDelegate2 markedTextRange];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ranges = [selectedTextRange ranges];
    if ([ranges count])
    {
      [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v13 = v93 = textCopy;
      v14 = objc_opt_respondsToSelector();

      textCopy = v93;
      if (v14)
      {
        ranges2 = [selectedTextRange ranges];
        v16 = ranges2;
        if (markedTextCopy)
        {
          objc_opt_class();
          v17 = markedTextRange;
          ranges4 = v16;
          if (objc_opt_isKindOfClass())
          {
            ranges3 = [markedTextRange ranges];
            v20 = [ranges3 count];

            ranges4 = v16;
            if (v20)
            {
              ranges4 = [markedTextRange ranges];
            }
          }

          if (![ranges4 count])
          {
            v91 = MEMORY[0x1E696B098];
            v21 = objc_opt_class();
            textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
            v23 = [v21 rangeForTextRange:markedTextRange document:textInputDelegate3];
            v25 = [v91 valueWithRange:{v23, v24}];
            v97[0] = v25;
            v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];

            ranges4 = v92;
          }

          if (![ranges4 count])
          {
LABEL_52:
            v75 = v16;

            ranges4 = v75;
            goto LABEL_56;
          }
        }

        else
        {
          [ranges2 count];
          ranges4 = v16;
          v17 = markedTextRange;
          if (![v16 count])
          {
            goto LABEL_56;
          }
        }

        v71 = v16;
        firstObject = [ranges4 firstObject];
        [firstObject rangeValue];
        v74 = v73;

        if (v74)
        {
          v16 = v71;
          goto LABEL_56;
        }

        v16 = v71;
        if (markedTextCopy)
        {
          goto LABEL_52;
        }

LABEL_56:
        if ([ranges4 count])
        {
          v96 = v16;
          lastObject = [ranges4 lastObject];
          rangeValue = [lastObject rangeValue];

          if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
          {
            lastObject2 = [ranges4 lastObject];
            rangeValue2 = [lastObject2 rangeValue];
            v81 = v80;

            if ((range & 0x8000000000000000) == 0)
            {
              lastObject3 = [ranges4 lastObject];
              rangeValue3 = [lastObject3 rangeValue];

              if (rangeValue3 < range)
              {
                range = rangeValue3;
              }

              rangeValue2 -= range;
            }

            v84 = [ranges4 subarrayWithRange:{0, objc_msgSend(ranges4, "count") - 1}];

            v85 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue2, range + v81}];
            ranges4 = [v84 arrayByAddingObject:v85];
          }

          v16 = v96;
        }

        legacyInputDelegate = [(UIKBInputDelegateManager *)self legacyInputDelegate];
        v87 = objc_opt_respondsToSelector();

        if (v87)
        {
          legacyInputDelegate2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
          legacyInputDelegate3 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
          v54 = [legacyInputDelegate2 keyboardInput:legacyInputDelegate3 shouldReplaceTextInRanges:ranges4 replacementText:v93];
        }

        else
        {
          v54 = 1;
        }

        textCopy = v93;
        goto LABEL_68;
      }
    }

    else
    {
    }
  }

  legacyInputDelegate4 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v27 = objc_opt_respondsToSelector();

  if ((v27 & 1) == 0)
  {
    textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v36 = objc_opt_respondsToSelector();

    if ((v36 & 1) == 0)
    {
      v54 = 1;
      v17 = markedTextRange;
      goto LABEL_68;
    }

    textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v38 = textInputDelegate5;
    if (markedTextCopy)
    {
      markedTextRange2 = [textInputDelegate5 markedTextRange];

      if ([markedTextRange2 isEmpty])
      {
        textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
        selectedTextRange2 = [textInputDelegate6 selectedTextRange];

        markedTextRange2 = selectedTextRange2;
      }
    }

    else
    {
      markedTextRange2 = [textInputDelegate5 selectedTextRange];

      [markedTextRange2 isEmpty];
    }

    textInputDelegate7 = [(UIKBInputDelegateManager *)self textInputDelegate];
    start = [markedTextRange2 start];
    v66 = [textInputDelegate7 positionFromPosition:start offset:-range];

    if (v66)
    {
      textInputDelegate8 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v68 = [markedTextRange2 end];
      v69 = [textInputDelegate8 textRangeFromPosition:v66 toPosition:v68];

      if (!v69)
      {
        v54 = 1;
        goto LABEL_54;
      }

      textInputDelegate9 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v54 = [textInputDelegate9 shouldChangeTextInRange:v69 replacementText:textCopy];

      markedTextRange2 = v69;
    }

    else
    {
      v54 = 1;
    }

LABEL_54:
    v17 = markedTextRange;

    goto LABEL_68;
  }

  v94 = selectedTextRange;
  v28 = textCopy;
  privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
    selectionRange = [privateInputDelegate2 selectionRange];
    v34 = v33;
  }

  else
  {
    v42 = objc_opt_class();
    privateInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    selectedTextRange3 = [privateInputDelegate2 selectedTextRange];
    textInputDelegate10 = [(UIKBInputDelegateManager *)self textInputDelegate];
    selectionRange = [v42 rangeForTextRange:selectedTextRange3 document:textInputDelegate10];
    v34 = v45;
  }

  if (markedTextCopy)
  {
    v46 = objc_opt_class();
    textInputDelegate11 = [(UIKBInputDelegateManager *)self textInputDelegate];
    markedTextRange3 = [textInputDelegate11 markedTextRange];
    textInputDelegate12 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v50 = [v46 rangeForTextRange:markedTextRange3 document:textInputDelegate12];
    v52 = v51;

    v53 = v34;
    v34 = v52;
  }

  else
  {
    v53 = 0;
    v50 = selectionRange;
  }

  textCopy = v28;
  if (v34)
  {
    v55 = v50;
  }

  else
  {
    v55 = selectionRange;
  }

  if (v34)
  {
    v53 = v34;
  }

  v56 = v53 + range;
  if (v55 >= range)
  {
    rangeCopy = range;
  }

  else
  {
    rangeCopy = v55;
  }

  v58 = v55 - rangeCopy;
  v59 = rangeCopy + v53;
  if (range >= 0)
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

  legacyInputDelegate5 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  legacyInputDelegate6 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v54 = [legacyInputDelegate5 keyboardInput:legacyInputDelegate6 shouldReplaceTextInRange:v60 replacementText:{v61, v28}];

  selectedTextRange = v94;
  v17 = markedTextRange;
LABEL_68:

  return v54;
}

- (BOOL)callShouldDeleteBackwardWithCount:(unint64_t)count
{
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate setShouldIgnoreTextInputChanges:1];

  legacyInputDelegate = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (count >= 2)
    {
      textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
      [textInputDelegate _extendCurrentSelection:-count];

      legacyInputDelegate2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      legacyInputDelegate3 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v11 = [legacyInputDelegate2 keyboardInputShouldDelete:legacyInputDelegate3];

      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [textInputDelegate2 _setCaretSelectionAtEndOfSelection];

      keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate2 syncDocumentStateToInputDelegate];
LABEL_16:

      goto LABEL_17;
    }

    keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    legacyInputDelegate4 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v27 = [keyboardStateDelegate2 keyboardInputShouldDelete:legacyInputDelegate4];
LABEL_15:
    v11 = v27;

    goto LABEL_16;
  }

  textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self selectedTextRange];
    if ([keyboardStateDelegate2 isEmpty])
    {
      textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
      start = [keyboardStateDelegate2 start];
      beginningOfDocument = [(UIKBInputDelegateManager *)self beginningOfDocument];
      v19 = [textInputDelegate4 comparePosition:start toPosition:beginningOfDocument];

      if (v19)
      {
        textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
        start2 = [keyboardStateDelegate2 start];
        v22 = [textInputDelegate5 positionFromPosition:start2 offset:-1];

        if (v22)
        {
          textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v24 = [keyboardStateDelegate2 end];
          v25 = [textInputDelegate6 textRangeFromPosition:v22 toPosition:v24];

          keyboardStateDelegate2 = textInputDelegate6;
        }

        else
        {
          v25 = 0;
        }

        keyboardStateDelegate2 = v25;
      }
    }

    if (!keyboardStateDelegate2)
    {
      v11 = 1;
      goto LABEL_16;
    }

    legacyInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v27 = [legacyInputDelegate4 shouldChangeTextInRange:keyboardStateDelegate2 replacementText:&stru_1EFB14550];
    goto LABEL_15;
  }

  v11 = 1;
LABEL_17:
  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate3 setShouldIgnoreTextInputChanges:0];

  return v11;
}

- (void)addTextAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

  if (asyncInputDelegate)
  {
    asyncInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    [asyncInputDelegate2 addTextAlternatives:alternativesCopy];
  }

  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    webInputDelegate3 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate3 = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (asyncInputDelegate3)
    {
      asyncInputDelegate4 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      webInputDelegate3 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];

      if (asyncWebKitInteractionDelegate)
      {
        asyncWebKitInteractionDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
        v15 = objc_opt_respondsToSelector();

        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

        webInputDelegate3 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      }

      else
      {
        webInputDelegate3 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      }
    }
  }

  v16 = webInputDelegate3;
  [webInputDelegate3 addTextAlternatives:alternativesCopy];

LABEL_14:
}

- (CGRect)visibleTextRect
{
  asyncCapableInputDelegate = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  if (!asyncCapableInputDelegate || (v4 = asyncCapableInputDelegate, [(UIKBInputDelegateManager *)self asyncCapableInputDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0))
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    if (textInputDelegate && (v26 = textInputDelegate, [(UIKBInputDelegateManager *)self textInputDelegate], v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, v26, (isKindOfClass & 1) != 0))
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      [textInputDelegate2 visibleTextRect];
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

      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputView];
      [textInputDelegate2 bounds];
    }

    x = v29;
    y = v30;
    width = v31;
    height = v32;
    goto LABEL_11;
  }

  asyncCapableInputDelegate2 = [(UIKBInputDelegateManager *)self asyncCapableInputDelegate];
  [asyncCapableInputDelegate2 unobscuredContentRect];
  x = v8;
  y = v10;
  width = v12;
  height = v14;

  textInteractionAssistant = [(UIKBInputDelegateManager *)self textInteractionAssistant];
  view = [textInteractionAssistant view];
  isEditing = [view isEditing];

  if (isEditing)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
    textInputView = [(UIKBInputDelegateManager *)self textInputView];
    [textInputDelegate2 subtractKeyboardFrameFromRect:textInputView inView:{x, y, width, height}];
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

+ (_NSRange)rangeForTextRange:(id)range document:(id)document
{
  rangeCopy = range;
  if (range)
  {
    documentCopy = document;
    v6 = rangeCopy;
    beginningOfDocument = [documentCopy beginningOfDocument];
    start = [v6 start];
    rangeCopy = [documentCopy offsetFromPosition:beginningOfDocument toPosition:start];

    start2 = [v6 start];
    v10 = [v6 end];

    v11 = [documentCopy offsetFromPosition:start2 toPosition:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = rangeCopy;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)shouldDeleteForward
{
  selectedTextRange = [(UIKBInputDelegateManager *)self selectedTextRange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ranges = [selectedTextRange ranges];
    if ([ranges count])
    {
      legacyInputDelegate = [(UIKBInputDelegateManager *)self legacyInputDelegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        ranges2 = [selectedTextRange ranges];
        if ([ranges2 count] && (objc_msgSend(ranges2, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "rangeValue"), v8, v9 != 0x7FFFFFFFFFFFFFFFLL))
        {
          lastObject = [ranges2 lastObject];
          rangeValue = [lastObject rangeValue];
          v40 = v39;

          textInputDelegate6 = ranges2;
          if (!v40)
          {
            textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
            v42 = [selectedTextRange end];
            endOfDocument = [(UIKBInputDelegateManager *)self endOfDocument];
            v44 = [textInputDelegate comparePosition:v42 toPosition:endOfDocument];

            textInputDelegate6 = ranges2;
            if (v44)
            {
              v45 = [ranges2 subarrayWithRange:{0, objc_msgSend(ranges2, "count") - 1}];

              v46 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, 1}];
              textInputDelegate6 = [v45 arrayByAddingObject:v46];
            }
          }

          lastObject2 = [textInputDelegate6 lastObject];
          [lastObject2 rangeValue];
          v49 = v48;

          if (v49)
          {
            legacyInputDelegate2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
            legacyInputDelegate3 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
            LOBYTE(v10) = [legacyInputDelegate2 keyboardInput:legacyInputDelegate3 shouldReplaceTextInRanges:textInputDelegate6 replacementText:&stru_1EFB14550];
          }

          else
          {
            LOBYTE(v10) = 1;
          }
        }

        else
        {
          LOBYTE(v10) = 1;
          textInputDelegate6 = ranges2;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  legacyInputDelegate4 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      ranges2 = [(UIKBInputDelegateManager *)self selectedTextRange];
      if ([ranges2 isEmpty])
      {
        textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v28 = [ranges2 end];
        endOfDocument2 = [(UIKBInputDelegateManager *)self endOfDocument];
        v30 = [textInputDelegate3 comparePosition:v28 toPosition:endOfDocument2];

        if (v30)
        {
          textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
          v32 = [ranges2 end];
          v33 = [textInputDelegate4 positionFromPosition:v32 offset:1];

          if (v33)
          {
            textInputDelegate5 = [(UIKBInputDelegateManager *)self textInputDelegate];
            start = [ranges2 start];
            v36 = [textInputDelegate5 textRangeFromPosition:start toPosition:v33];

            ranges2 = textInputDelegate5;
          }

          else
          {
            v36 = 0;
          }

          ranges2 = v36;
        }
      }

      if (!ranges2)
      {
        LOBYTE(v10) = 1;
        goto LABEL_30;
      }

      textInputDelegate6 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v24 = [textInputDelegate6 shouldChangeTextInRange:ranges2 replacementText:&stru_1EFB14550];
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  v14 = objc_opt_class();
  selectedTextRange2 = [(UIKBInputDelegateManager *)self selectedTextRange];
  textInputDelegate7 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v17 = [v14 rangeForTextRange:selectedTextRange2 document:textInputDelegate7];
  v10 = v18;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    LOBYTE(v10) = 1;
    goto LABEL_31;
  }

  if (v10 || (-[UIKBInputDelegateManager textInputDelegate](self, "textInputDelegate"), v19 = objc_claimAutoreleasedReturnValue(), -[UIKBInputDelegateManager selectedTextRange](self, "selectedTextRange"), v20 = objc_claimAutoreleasedReturnValue(), [v20 end], v21 = objc_claimAutoreleasedReturnValue(), -[UIKBInputDelegateManager endOfDocument](self, "endOfDocument"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v19, "comparePosition:toPosition:", v21, v22), v22, v21, v20, v19, v10 = 1, v23))
  {
    ranges2 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    textInputDelegate6 = [(UIKBInputDelegateManager *)self legacyInputDelegate];
    v24 = [ranges2 keyboardInput:textInputDelegate6 shouldReplaceTextInRange:v17 replacementText:{v10, &stru_1EFB14550}];
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
  selectedTextRange = [(UIKBInputDelegateManager *)self selectedTextRange];
  v4 = selectedTextRange;
  if (selectedTextRange && ([selectedTextRange _isRanged] & 1) == 0)
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    start = [v4 start];
    v8 = [textInputDelegate _rangeOfEnclosingWord:start];

    if (v8)
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v10 = [v4 end];
      v11 = [v8 end];
      if ([textInputDelegate2 comparePosition:v10 toPosition:v11])
      {
        v5 = 0;
      }

      else
      {
        textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v13 = [textInputDelegate3 textInRange:v8];
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

- (void)collapseSelectionAndAdjustByOffset:(int64_t)offset
{
  keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate setShouldIgnoreTextInputChanges:1];

  if (![(UIKBInputDelegateManager *)self hasAsyncCapableInputDelegate])
  {
    selectedTextRange = [(UIKBInputDelegateManager *)self selectedTextRange];
    v10 = [selectedTextRange end];

    if (offset && v10)
    {
      textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
      v12 = [textInputDelegate positionFromPosition:v10 offset:offset];

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

    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    v15 = [textInputDelegate2 textRangeFromPosition:v10 toPosition:v10];

    if (v15)
    {
      [(UIKBInputDelegateManager *)self setSelectedTextRange:v15];
      keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
      [keyboardStateDelegate2 syncDocumentStateToInputDelegate];
    }

    goto LABEL_17;
  }

  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
    }

    else
    {
      asyncWebKitInteractionDelegate = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
      v20 = objc_opt_respondsToSelector();

      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncWebKitInteractionDelegate];
    }
  }

  v10 = webInputDelegate2;
  [webInputDelegate2 moveByOffset:offset];
LABEL_17:

LABEL_18:
  keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
  [keyboardStateDelegate3 setShouldIgnoreTextInputChanges:0];
}

- (void)moveSelectionToEndOfWord
{
  selectedTextRange = [(UIKBInputDelegateManager *)self selectedTextRange];
  if (selectedTextRange)
  {
    textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
    v4 = [selectedTextRange end];
    v5 = [textInputDelegate _rangeOfEnclosingWord:v4];

    if (v5)
    {
      textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
      v7 = [selectedTextRange end];
      v8 = [v5 end];
      v9 = [textInputDelegate2 comparePosition:v7 toPosition:v8];

      if (v9 == -1)
      {
        keyboardStateDelegate = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [keyboardStateDelegate setShouldIgnoreTextInputChanges:1];

        textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
        v12 = [v5 end];
        v13 = [v5 end];
        v14 = [textInputDelegate3 textRangeFromPosition:v12 toPosition:v13];
        [(UIKBInputDelegateManager *)self setSelectedTextRange:v14];

        keyboardStateDelegate2 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [keyboardStateDelegate2 syncDocumentStateToInputDelegate];

        keyboardStateDelegate3 = [(UIKBInputDelegateManager *)self keyboardStateDelegate];
        [keyboardStateDelegate3 setShouldIgnoreTextInputChanges:0];
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
  selectedTextRange = [(UIKBInputDelegateManager *)self selectedTextRange];
  textInputDelegate = [(UIKBInputDelegateManager *)self textInputDelegate];
  start = [selectedTextRange start];
  beginningOfDocument = [(UIKBInputDelegateManager *)self beginningOfDocument];
  if ([textInputDelegate comparePosition:start toPosition:beginningOfDocument])
  {
    textInputDelegate2 = [(UIKBInputDelegateManager *)self textInputDelegate];
    tokenizer = [textInputDelegate2 tokenizer];
    start2 = [selectedTextRange start];
    v10 = [tokenizer isPosition:start2 atBoundary:1 inDirection:1];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  textInputDelegate3 = [(UIKBInputDelegateManager *)self textInputDelegate];
  v13 = [selectedTextRange end];
  endOfDocument = [(UIKBInputDelegateManager *)self endOfDocument];
  if ([textInputDelegate3 comparePosition:v13 toPosition:endOfDocument])
  {
    textInputDelegate4 = [(UIKBInputDelegateManager *)self textInputDelegate];
    tokenizer2 = [textInputDelegate4 tokenizer];
    v17 = [selectedTextRange end];
    v11 = [tokenizer2 isPosition:v17 atBoundary:1 inDirection:0];
  }

  else
  {
    v11 = 1;
  }

LABEL_9:
  return v11;
}

- (void)shiftKeyStateChangedFrom:(int)from to:(int)to
{
  webInputDelegate = [(UIKBInputDelegateManager *)self webInputDelegate];

  if (webInputDelegate)
  {
    if (from == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = from == 1;
    }

    if (to == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = to == 1;
    }

    if (v8 != v9)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self webInputDelegate];
      [webInputDelegate2 shiftKeyStateChangedFromState:v8 toState:v9];
LABEL_27:
    }
  }

  else
  {
    asyncInputDelegate = [(UIKBInputDelegateManager *)self asyncInputDelegate];

    if (!asyncInputDelegate)
    {
      privateInputDelegate = [(UIKBInputDelegateManager *)self privateInputDelegate];
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
        return;
      }

      privateInputDelegate2 = [(UIKBInputDelegateManager *)self privateInputDelegate];
      if (from == 3)
      {
        v16 = 0x10000;
      }

      else
      {
        v16 = (from == 1) << 17;
      }

      if (to == 3)
      {
        v17 = 0x10000;
      }

      else
      {
        v17 = (to == 1) << 17;
      }

      webInputDelegate2 = privateInputDelegate2;
      [privateInputDelegate2 modifierFlagsDidChangeFrom:v16 to:v17];
      goto LABEL_27;
    }

    if (from == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = from == 1;
    }

    if (to == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = to == 1;
    }

    if (v11 != v12)
    {
      webInputDelegate2 = [(UIKBInputDelegateManager *)self asyncInputDelegate];
      [webInputDelegate2 shiftKeyStateChangedFrom:v11 to:v12];
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