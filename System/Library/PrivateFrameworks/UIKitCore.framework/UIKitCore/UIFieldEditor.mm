@interface UIFieldEditor
+ (id)excludedElementsForHTML;
- (BOOL)_clearOnEditIfNeeded;
- (BOOL)_hasDictationPlaceholder;
- (BOOL)_mightHaveSelection;
- (BOOL)_shouldObscureInput;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isFirstResponder;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)setUpClippingWithMaskForBounds:(CGRect)a3 contentFrame:(CGRect)a4;
- (BOOL)textInput:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textInput:(id)a3 shouldChangeCharactersInRanges:(id)a4 replacementText:(id)a5;
- (BOOL)textInputShouldExtendCaretHeight:(id)a3;
- (CGPoint)autoscrollContentOffset;
- (CGPoint)textContainerOrigin;
- (CGPoint)textContainerOriginForTextAlignment:(int64_t)a3;
- (CGRect)_responderExternalTouchRectForWindow:(id)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)contentFrameForView:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)frameForDictationResultPlaceholder:(id)a3;
- (CGRect)layoutManager:(id)a3 boundingBoxForControlGlyphAtIndex:(unint64_t)a4 forTextContainer:(id)a5 proposedLineFragment:(CGRect)a6 glyphPosition:(CGPoint)a7 characterIndex:(unint64_t)a8;
- (CGRect)visibleRect;
- (CGSize)minSize;
- (NSDictionary)markedTextStyle;
- (NSDictionary)typingAttributes;
- (NSLayoutManager)layoutManager;
- (UIEdgeInsets)_contentInsetsFromFonts;
- (UIEdgeInsets)_fullContentInsetsFromFonts;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)textContainerInset;
- (UIFieldEditor)initWithTextField:(id)a3;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIView)textInputView;
- (_NSRange)_unobscuredSecureRange;
- (_NSRange)insertFilteredText:(id)a3;
- (_NSRange)markedRange;
- (_NSRange)selectionRange;
- (_NSRange)textInput:(id)a3 willChangeSelectionFromCharacterRange:(_NSRange)a4 toCharacterRange:(_NSRange)a5;
- (double)_passcodeStyleAlpha;
- (id)_responderForBecomeFirstResponder;
- (id)_textCanvasView;
- (id)_textContainer;
- (id)_textInputController;
- (id)_textInputTraits;
- (id)_textLayoutController;
- (id)_textSelectingContainer;
- (id)_textStorage;
- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6;
- (id)attributedSubstringForMarkedRange;
- (id)attributedText;
- (id)attributedTextInRange:(id)a3;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)font;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)a3;
- (id)layoutManager:(id)a3 effectiveCUICatalogForTextEffect:(id)a4;
- (id)linkTextAttributes;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4;
- (id)replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5;
- (id)selectionRanges;
- (id)selectionRectsForRange:(id)a3;
- (id)text;
- (id)textColor;
- (id)textColorForCaretSelection;
- (id)textField;
- (id)textInRange:(id)a3;
- (id)textInput:(id)a3 willChangeSelectionFromCharacterRanges:(id)a4 toCharacterRanges:(id)a5;
- (id)textInputTraits;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)undoManager;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)layoutManager:(id)a3 shouldUseAction:(int64_t)a4 forControlCharacterAtIndex:(unint64_t)a5;
- (int64_t)nonEditingLinebreakMode;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (unint64_t)layoutManager:(id)a3 shouldGenerateGlyphs:(const unsigned __int16 *)a4 properties:(const int64_t *)a5 characterIndexes:(const unint64_t *)a6 font:(id)a7 forGlyphRange:(_NSRange)a8;
- (void)_applyCorrectTextContainerSize;
- (void)_applyCorrectTextContainerSize:(id)a3;
- (void)_cancelObscureAllTextTimer;
- (void)_deactivateSelectionView;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_ephemerallyUnobscureCharacterAtIndex:(unint64_t)a3;
- (void)_ephemerallyUnobscureTextInRange:(_NSRange)a3;
- (void)_handleObscuredTextAfterActivationChange;
- (void)_handleObscuredTextInputIfNecessaryWithEditingBlock:(id)a3;
- (void)_invalidateAfterObscuredRangeChangeIfNeeded;
- (void)_obscureAllText;
- (void)_performWhileSuppressingDelegateNotifications:(id)a3;
- (void)_resetTypingAttributes;
- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_setAttributedTextInRange:(_NSRange)a3 replacementText:(id)a4 andSetCaretSelectionAfterText:(BOOL)a5;
- (void)_setNeedsInvalidateAfterObscuredRangeChange;
- (void)_setTextInRange:(_NSRange)a3 replacementText:(id)a4 andSetCaretSelectionAfterText:(BOOL)a5;
- (void)_setValue:(id)a3 forTextAttribute:(id)a4;
- (void)_textStorageDidProcessEditing:(id)a3;
- (void)_tvUpdateTextColor;
- (void)_unobscureAllText;
- (void)_unobscureTextInRange:(_NSRange)a3 settingTimerToReobscure:(BOOL)a4;
- (void)_updateLayoutManagerStyleEffectConfiguration;
- (void)_updateTextSelectionFromBehavior;
- (void)activateEditor;
- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4;
- (void)beginSelectionChange;
- (void)clearText;
- (void)deactivateEditorDiscardingEdits:(BOOL)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)endSelectionChange;
- (void)initializeTypingAttributes;
- (void)insertAttributedText:(id)a3;
- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4;
- (void)keyboardInputChangedSelection:(id)a3;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)removeTextPlaceholder:(id)a3;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)selectAll;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setAttributedText:(id)a3;
- (void)setAttributedText:(id)a3 andSetCaretSelectionAfterText:(BOOL)a4;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setConstrainedFrameSize:(CGSize)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDisplaySecureEditsUsingPlainText:(BOOL)a3;
- (void)setInputDelegate:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setMarkedTextStyle:(id)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3 avoidAdditionalLayout:(BOOL)a4;
- (void)setNonEditingLinebreakMode:(int64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setScrollXOffset:(int)a3 scrollYOffset:(int)a4 adjustForPurpleCaret:(BOOL)a5;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelection:(_NSRange)a3;
- (void)setSelectionRanges:(id)a3;
- (void)setText:(id)a3;
- (void)setText:(id)a3 andSetCaretSelectionAfterText:(BOOL)a4;
- (void)setTextContainer:(id)a3;
- (void)setTypingAttributes:(id)a3;
- (void)startAutoscroll:(CGPoint)a3;
- (void)textInput:(id)a3 prepareAttributedTextForInsertion:(id)a4;
- (void)textInputDidChange:(id)a3;
- (void)textInputDidChangeSelection:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unmarkText;
- (void)updateAutoscroll:(id)a3;
@end

@implementation UIFieldEditor

- (UITextInteractionAssistant)interactionAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained interactionAssistant];

  return v3;
}

- (id)_textInputController
{
  textInputController = self->__textInputController;
  if (!textInputController)
  {
    v4 = [(UIFieldEditor *)self _textLayoutController];
    v5 = [(_UITextLayoutControllerBase *)v4 textInputController];
    v6 = self->__textInputController;
    self->__textInputController = v5;

    [(UITextInputController *)self->__textInputController setDelegate:self];
    textInputController = self->__textInputController;
  }

  return textInputController;
}

- (id)_textLayoutController
{
  WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_textField);
    v5 = [v4 textLayoutController];
    objc_storeWeak(&self->__textLayoutController, v5);

    v6 = objc_loadWeakRetained(&self->__textLayoutController);
    LODWORD(v5) = [v6 canAccessLayoutManager];

    if (v5)
    {
      v7 = objc_loadWeakRetained(&self->__textLayoutController);
      [v7 setLayoutManagerDelegate:self];
    }

    v8 = [(UIFieldEditor *)self _textContainer];
  }

  v9 = objc_loadWeakRetained(&self->__textLayoutController);

  return v9;
}

- (id)_textContainer
{
  WeakRetained = objc_loadWeakRetained(&self->__textContainer);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_textField);
    v5 = [v4 _textContainer];

    objc_storeWeak(&self->__textContainer, v5);
    [v5 setTextView:self];
    [v5 setLineFragmentPadding:0.0];
    [(UIFieldEditor *)self _applyCorrectTextContainerSize:v5];
  }

  v6 = objc_loadWeakRetained(&self->__textContainer);

  return v6;
}

- (id)_textCanvasView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    v5 = [v6 _textCanvasView];
  }

  return v5;
}

- (BOOL)_mightHaveSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained isFirstResponder];

  return v3;
}

- (UITextPosition)beginningOfDocument
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 beginningOfDocument];

  return v3;
}

- (UITextRange)markedTextRange
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 markedTextRange];

  return v3;
}

- (void)_unobscureAllText
{
  [(UIFieldEditor *)self _cancelObscureAllTextTimer];
  v4 = [(UIFieldEditor *)self _textLayoutController];
  v3 = [v4 documentRange];
  [v4 setUnobscuredRange:v3];

  [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
}

- (void)_cancelObscureAllTextTimer
{
  obscureAllTextTimer = self->_obscureAllTextTimer;
  if (obscureAllTextTimer)
  {
    [(NSTimer *)obscureAllTextTimer invalidate];
    v4 = self->_obscureAllTextTimer;
    self->_obscureAllTextTimer = 0;
  }
}

- (void)_setNeedsInvalidateAfterObscuredRangeChange
{
  feFlags = self->_feFlags;
  if ((feFlags & 0x40) == 0)
  {
    *&self->_feFlags = feFlags | 0x40;
    [(UIScrollView *)self setNeedsLayout];
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    [WeakRetained setNeedsLayout];
  }
}

- (BOOL)_hasDictationPlaceholder
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 _hasDictationPlaceholder];

  return v3;
}

- (UIView)textInputView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIEdgeInsets)_contentInsetsFromFonts
{
  [(UIFieldEditor *)self _fullContentInsetsFromFonts];
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_fullContentInsetsFromFonts
{
  if ((*&self->_feFlags & 0x100) == 0)
  {
    p_contentInsetsFromFonts = &self->_contentInsetsFromFonts;
    *&self->_contentInsetsFromFonts.top = 0u;
    *&self->_contentInsetsFromFonts.bottom = 0u;
    v4 = +[UILabel _tooBigChars];
    v5 = [(UIFieldEditor *)self _textStorage];
    v6 = [v5 string];
    v7 = [v6 rangeOfCharacterFromSet:v4];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v5 font];
      p_contentInsetsFromFonts->top = [UILabel _insetsForAttributedString:v5 withDefaultFont:v8 inView:self];
      p_contentInsetsFromFonts->left = v9;
      p_contentInsetsFromFonts->bottom = v10;
      p_contentInsetsFromFonts->right = v11;

      *&self->_feFlags |= 0x100u;
    }
  }

  top = self->_contentInsetsFromFonts.top;
  left = self->_contentInsetsFromFonts.left;
  bottom = self->_contentInsetsFromFonts.bottom;
  right = self->_contentInsetsFromFonts.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_textStorage
{
  textStorage = self->__textStorage;
  if (!textStorage)
  {
    WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);
    v5 = [WeakRetained textStorage];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_textField);
      v6 = [v7 _textStorage];

      if (!v6)
      {
LABEL_7:

        textStorage = self->__textStorage;
        goto LABEL_8;
      }
    }

    objc_storeStrong(&self->__textStorage, v6);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel__textStorageDidProcessEditing_ name:*off_1E70ECAC0 object:v6];

    goto LABEL_7;
  }

LABEL_8:

  return textStorage;
}

- (void)_applyCorrectTextContainerSize
{
  WeakRetained = objc_loadWeakRetained(&self->__textContainer);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->__textContainer);
    [(UIFieldEditor *)self _applyCorrectTextContainerSize:v5];
  }

  else
  {
    v4 = [(UIFieldEditor *)self _textContainer];
  }
}

- (CGPoint)textContainerOrigin
{
  v3 = [(UIFieldEditor *)self _textStorage];
  if ([v3 length])
  {
    v4 = [v3 _ui_resolvedTextAlignment];
  }

  else
  {
    v5 = [(UIFieldEditor *)self typingAttributes];
    v6 = [v5 objectForKeyedSubscript:*off_1E70EC988];
    v4 = [v6 _ui_resolvedTextAlignment];
  }

  [(UIFieldEditor *)self textContainerOriginForTextAlignment:v4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (NSDictionary)typingAttributes
{
  v3 = [(UIFieldEditor *)self _textInputController];
  v4 = [v3 typingAttributes];
  v5 = [(UIFieldEditor *)self _textContainer];
  [v5 setAttributesForExtraLineFragment:v4];

  v6 = [v3 typingAttributes];

  return v6;
}

- (BOOL)_shouldObscureInput
{
  v3 = [(UIFieldEditor *)self _textInputTraits];
  if ([v3 isSecureTextEntry] && (objc_msgSend(v3, "displaySecureTextUsingPlainText") & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v4 = [WeakRetained _shouldUnobscureTextWithContentCover] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_textInputTraits
{
  v3 = self->__textInputController;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  [(UITextInputController *)v3 takeTraitsFrom:WeakRetained];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    v5 = [v6 textInputTraits];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3 = MEMORY[0x1E695F058];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIFieldEditor *)self _invalidateAfterObscuredRangeChangeIfNeeded];
  v48.origin.x = v5;
  v48.origin.y = v7;
  v48.size.width = v9;
  v48.size.height = v11;
  if (CGRectIsEmpty(v48))
  {
    v12 = v3[2];
    v13 = v3[3];
LABEL_10:
    v30 = [(UIView *)self layer];
    [v30 setMask:0];

    LOBYTE(v28) = 1;
    [(UIView *)self setClipsToBounds:1];
    goto LABEL_11;
  }

  v14 = *v3;
  v15 = v3[1];
  v16 = [(UIFieldEditor *)self _textLayoutController];
  v17 = [(UIFieldEditor *)self _textContainer];
  [v16 ensureLayoutForTextContainer:v17];

  WeakRetained = objc_loadWeakRetained(&self->_textField);
  [WeakRetained _padding];
  v20 = v19 + self->_desiredContentWidth;
  v21 = objc_loadWeakRetained(&self->_textField);
  [v21 _padding];
  v23 = v20 + v22;

  v12 = fmax(v23, v9);
  [(UIFieldEditor *)self _contentInsetsFromFonts];
  if (v25 == 0.0 && v24 == 0.0 && v27 == 0.0 && v26 == 0.0)
  {
    v28 = 1;
    v13 = v11;
  }

  else
  {
    v14 = v14 + v25;
    v15 = v15 + v24;
    v12 = v12 - (v25 + v27);
    v13 = v11 - (v24 + v26);
    v28 = ![(UIFieldEditor *)self setUpClippingWithMaskForBounds:v5 contentFrame:v7, v9, v11, v14, v15, v12, v13];
  }

  v29 = objc_loadWeakRetained(&self->_contentView);
  [v29 setFrame:{v14, v15, v12, v13}];

  if (v28)
  {
    goto LABEL_10;
  }

LABEL_11:
  v31 = fmax(v9, v12);
  v32 = fmax(v11, v13);
  [(UIScrollView *)self contentSize];
  if (v34 != v31 || v33 != v32)
  {
    [(UIScrollView *)self setContentSize:v31, v32];
    v36 = [(UIFieldEditor *)self interactionAssistant];
    [v36 setNeedsSelectionDisplayUpdate];
  }

  [(UIScrollView *)self contentOffset];
  v38 = v37 - (v31 - v9);
  if (v38 > 0.0)
  {
    [(UIFieldEditor *)self setContentOffset:?];
    if ((v28 & 1) == 0)
    {
      v39 = [(UIView *)self layer];
      v40 = [v39 mask];
      [v40 position];
      v42 = v41;
      v44 = v43;

      v46 = [(UIView *)self layer];
      v45 = [v46 mask];
      [v45 setPosition:{v42 - v38, v44}];
    }
  }
}

- (UITextRange)selectedTextRange
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 selectedTextRange];

  return v3;
}

- (void)_invalidateAfterObscuredRangeChangeIfNeeded
{
  feFlags = self->_feFlags;
  if ((feFlags & 0x40) != 0)
  {
    *&self->_feFlags = feFlags & 0xFFBF;
    v8 = [(UIFieldEditor *)self _textLayoutController];
    v5 = [v8 documentRange];
    [v8 invalidateLayoutForRange:v5];
    v6 = [(UIFieldEditor *)self _textCanvasView];
    [v6 setNeedsDisplay];

    v7 = [(UIFieldEditor *)self interactionAssistant];
    [v7 updateDisplayedSelection];
  }
}

- (id)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (void)_obscureAllText
{
  [(UIFieldEditor *)self _cancelObscureAllTextTimer];
  v3 = [(UIFieldEditor *)self _textLayoutController];
  [v3 setUnobscuredRange:0];

  [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
}

- (_NSRange)selectionRange
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 selectedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)text
{
  v3 = [(UIFieldEditor *)self _textInputController];
  v4 = [(UIFieldEditor *)self beginningOfDocument];
  v5 = [(UIFieldEditor *)self endOfDocument];
  v6 = [(UIFieldEditor *)self textRangeFromPosition:v4 toPosition:v5];
  v7 = [v3 textInRange:v6];

  return v7;
}

- (UITextPosition)endOfDocument
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 endOfDocument];

  return v3;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    [off_1E70ECC18 systemMinimumFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:?];
  }

  v6 = v5;

  return v6;
}

- (void)_updateLayoutManagerStyleEffectConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained _cuiStyleEffectConfiguration];
  v4 = [(UIFieldEditor *)self _textLayoutController];
  [v4 setStyleEffectConfiguration:v3];
}

- (void)_updateTextSelectionFromBehavior
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__UIFieldEditor__updateTextSelectionFromBehavior__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)activateEditor
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_contentView);

    if (!v5)
    {
      v24 = [(UIFieldEditor *)self _textStorage];
      v6 = [v24 copy];
      originalAttributedString = self->_originalAttributedString;
      self->_originalAttributedString = v6;

      v8 = [v24 defaultAttributes];
      v9 = [v8 copy];
      originalDefaultAttributes = self->_originalDefaultAttributes;
      self->_originalDefaultAttributes = v9;

      v11 = objc_loadWeakRetained(&self->_textField);
      v12 = [v11 _textCanvasView];
      objc_storeWeak(&self->_contentView, v12);

      v13 = objc_loadWeakRetained(&self->_contentView);
      [(UIView *)self addSubview:v13];

      if ([(UIFieldEditor *)self _shouldObscureInput])
      {
        v14 = 32;
      }

      else
      {
        v14 = 0;
      }

      *&self->_feFlags = *&self->_feFlags & 0xFFDF | v14;
      [(UIFieldEditor *)self _cancelObscureAllTextTimer];
      [(UIFieldEditor *)self _deactivateSelectionView];
      [(UIFieldEditor *)self _resetTypingAttributes];
      [(UIFieldEditor *)self _handleObscuredTextAfterActivationChange];
      v15 = objc_loadWeakRetained(&self->_contentView);
      self->_cachedUserInteractionEnabled = [v15 isUserInteractionEnabled];

      v16 = objc_loadWeakRetained(&self->_contentView);
      [v16 setUserInteractionEnabled:1];

      v17 = objc_loadWeakRetained(&self->_textField);
      v18 = [v17 _textInputSource];

      v19 = objc_loadWeakRetained(&self->_textField);
      v20 = [v19 isFirstResponder];

      if (v20 && (v18 != 3 || !+[UIScribbleInteraction isScribbleEnabled]))
      {
        [(UIFieldEditor *)self _updateTextSelectionFromBehavior];
      }

      [(UIFieldEditor *)self _applyCorrectTextContainerSize];
      v21 = objc_loadWeakRetained(&self->_textField);
      if ([v21 isFirstResponder])
      {
        v22 = [(UIFieldEditor *)self _textStorage];
        v23 = [v22 length];

        if (!v23)
        {
          [(UIFieldEditor *)self initializeTypingAttributes];
        }
      }

      else
      {
      }

      [(UIFieldEditor *)self _updateLayoutManagerStyleEffectConfiguration];
      [(UIView *)self layoutIfNeeded];
      [(UIFieldEditor *)self scrollSelectionToVisible:1];
    }
  }
}

void __49__UIFieldEditor__updateTextSelectionFromBehavior__block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) _textInputTraits];
  v2 = [*(a1 + 32) text];
  v3 = [v2 length];

  v4 = [v12 textSelectionBehavior];
  if ((v4 - 2) < 2)
  {
    v7 = *(a1 + 32);
    v8 = [v7 beginningOfDocument];
    v9 = [*(a1 + 32) endOfDocument];
    v10 = [v7 textRangeFromPosition:v8 toPosition:v9];

    v11 = *(a1 + 32);
    if (v10)
    {
      [v11 setSelectedTextRange:v10];
    }

    else
    {
      [v11 setSelection:{0, v3}];
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = *(a1 + 32);
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3;
  }

  [v5 setSelection:{v6, 0}];
LABEL_11:
}

- (id)textColor
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained textColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  v6 = v5;

  return v6;
}

- (void)_deactivateSelectionView
{
  v3 = [(UIFieldEditor *)self interactionAssistant];
  [v3 setSelectionDisplayVisible:0];

  v4 = [(UIFieldEditor *)self interactionAssistant];
  [v4 deactivateSelection];
}

- (void)_resetTypingAttributes
{
  v2 = [(UIFieldEditor *)self _textInputController];
  [v2 setTypingAttributes:0];
  [v2 _invalidateEmptyStringAttributes];
}

- (void)_handleObscuredTextAfterActivationChange
{
  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }

  else
  {

    [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
  }
}

- (UITextInputDelegate)inputDelegate
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 inputDelegate];

  return v3;
}

- (UITextInputTokenizer)tokenizer
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 tokenizer];

  return v3;
}

- (id)metadataDictionariesForDictationResults
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 metadataDictionariesForDictationResults];

  return v3;
}

- (BOOL)isFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained isFirstResponder];

  return v3;
}

- (BOOL)hasText
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 hasText];

  return v3;
}

- (_NSRange)markedRange
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 markedRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  if (a3)
  {

    [(UIFieldEditor *)self deleteBackward];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__UIFieldEditor_UITextInputAdditions___deleteBackwardAndNotify___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [(UIFieldEditor *)self _performWhileSuppressingDelegateNotifications:v5];
  }
}

- (UIFieldEditor)initWithTextField:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UIFieldEditor;
  v5 = [(UIScrollView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIScrollView *)v5 setScrollEnabled:0];
    [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v6 setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v6 _setAutomaticContentOffsetAdjustmentEnabled:0];
    v6->_active = 0;
    v7 = objc_storeWeak(&v6->_textField, v4);
    *&v6->_feFlags = *&v6->_feFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v6->_textField);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&v6->_feFlags = *&v6->_feFlags & 0xFFFD | v9;

    v10 = objc_loadWeakRetained(&v6->_textField);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&v6->_feFlags = *&v6->_feFlags & 0xFFFB | v11;

    v12 = objc_loadWeakRetained(&v6->_textField);
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *&v6->_feFlags = *&v6->_feFlags & 0xFFF7 | v13;

    [(UIView *)v6 setOpaque:0];
    v14 = [(UIScrollView *)v6 _autoScrollAssistant];
    [v14 setAllowedDirections:6];
  }

  return v6;
}

- (void)dealloc
{
  if (self->__textStorage)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*off_1E70ECAC0 object:self->__textStorage];
  }

  [(NSTimer *)self->_obscureAllTextTimer invalidate];
  obscureAllTextTimer = self->_obscureAllTextTimer;
  self->_obscureAllTextTimer = 0;

  v5.receiver = self;
  v5.super_class = UIFieldEditor;
  [(UIScrollView *)&v5 dealloc];
}

- (NSLayoutManager)layoutManager
{
  v3 = [(UIFieldEditor *)self _textContainer];
  v4 = [v3 textLayoutManager];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "UIFieldEditor.layoutManager should no longer be accessed", buf, 2u);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &layoutManager___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UIFieldEditor.layoutManager should no longer be accessed", v10, 2u);
      }
    }

    v7 = [(UIFieldEditor *)self _textContainer];
    v5 = [v7 layoutManager];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  [(UIView *)self traitCollection];

  v10.receiver = self;
  v10.super_class = UIFieldEditor;
  [(UIScrollView *)&v10 traitCollectionDidChange:v4];
  v5 = [(UIFieldEditor *)self _textContainer];
  v6 = [v5 textLayoutManager];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v8 = [WeakRetained keyboardType];
    v9 = (v8 > 0xB) | ((0x6CFu >> v8) & 1);

    if (v9 != [v6 resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [v6 setResolvesNaturalAlignmentWithBaseWritingDirection:v9];
    }
  }
}

- (void)_textStorageDidProcessEditing:(id)a3
{
  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    v4 = [(UIFieldEditor *)self _textLayoutController];
    [v4 setUnobscuredRange:0];

    [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
  }

  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplay];

  v6 = [(UIFieldEditor *)self _textCanvasView];
  [v6 setNeedsDisplay];

  *&self->_feFlags &= ~0x100u;
}

- (void)_applyCorrectTextContainerSize:(id)a3
{
  v28 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_contentView);
    [v5 bounds];
    v7 = v6;
    v8 = 40000.0;
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(UIFieldEditor *)self _textCanvasView];

  if (v9)
  {
    v5 = [(UIFieldEditor *)self _textCanvasView];
    [v5 bounds];
    v8 = v10;
    v7 = v11;
    goto LABEL_5;
  }

  v8 = 40000.0;
  v7 = 40000.0;
LABEL_6:
  [v28 size];
  v13 = v28;
  if (v8 != v14 || v7 != v12)
  {
    [v28 setSize:{v8, v7}];
    v16 = objc_loadWeakRetained(&self->__textLayoutController);
    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->__textLayoutController);
      [v17 updateLayoutForSizeChangeOfTextContainer:v28];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v19 = *MEMORY[0x1E695F050];
      v21 = *(MEMORY[0x1E695F050] + 8);
      v23 = *(MEMORY[0x1E695F050] + 16);
      v25 = *(MEMORY[0x1E695F050] + 24);
    }

    v30.origin.x = v19;
    v30.origin.y = v21;
    v30.size.width = v23;
    v30.size.height = v25;
    IsNull = CGRectIsNull(v30);
    v13 = v28;
    if (!IsNull)
    {
      [(UIFieldEditor *)self textContainerUsageDidChangeToSize:v23, v25];
      v27 = objc_loadWeakRetained(&self->_contentView);
      [v27 setNeedsDisplay];

      v13 = v28;
    }
  }
}

- (BOOL)setUpClippingWithMaskForBounds:(CGRect)a3 contentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.width;
  v9 = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v12 = [WeakRetained clipsToBounds];

  if (v12)
  {
    return 0;
  }

  v14 = objc_loadWeakRetained(&self->_textField);
  [v14 bounds];
  v49 = x;
  v50 = width;
  v15 = v9;
  v17 = v16;
  v19 = v18;
  v20 = v8;
  v21 = height;
  v22 = y;
  v24 = v23;
  v26 = v25;
  v27 = objc_loadWeakRetained(&self->_textField);
  v28 = v17;
  v29 = v15;
  [(UIView *)self convertRect:v27 fromView:v28, v19, v24, v26];
  v31 = v30;
  v33 = v32;

  v51.origin.x = v15;
  v51.origin.y = v31;
  v34 = v22;
  v35 = v21;
  v36 = v20;
  v51.size.width = v20;
  v51.size.height = v33;
  v53.origin.x = v49;
  v53.size.width = v50;
  v53.origin.y = v34;
  v53.size.height = v35;
  v37 = CGRectContainsRect(v51, v53);
  if (!v37)
  {
    [(UIView *)self setClipsToBounds:0];
    v38 = [(UIView *)self layer];
    v39 = [v38 mask];

    if (v39)
    {
      [v39 frame];
    }

    else
    {
      v39 = [MEMORY[0x1E69794A0] layer];
      v44 = [(UIView *)self layer];
      [v44 setMask:v39];

      [v39 frame];
      if (!v39)
      {
LABEL_12:

        return !v37;
      }
    }

    v54.origin.x = v40;
    v54.origin.y = v41;
    v45 = v42;
    v46 = v43;
    v52.origin.x = v29;
    v52.origin.y = v34;
    v52.size.width = v36;
    v52.size.height = v35;
    v54.size.width = v45;
    v54.size.height = v46;
    if (!CGRectEqualToRect(v52, v54))
    {
      v47 = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      if (v36 != v45 || v35 != v46)
      {
        v48 = [UIBezierPath bezierPathWithRect:0.0, 0.0, v36, v35, *&v49, *&v50];
        [v39 setPath:{objc_msgSend(v48, "CGPath")}];
      }

      [v39 setFrame:{v29, v34, v36, v35, *&v49, *&v50}];
      [MEMORY[0x1E6979518] setDisableActions:v47];
    }

    goto LABEL_12;
  }

  return !v37;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_textField);
    v13 = [v12 keyboardInput:v8 shouldInsertText:v9 isMarkedText:v5];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_textField);
    v14 = [v13 keyboardInput:v9 shouldReplaceTextInRange:location replacementText:{length, v10}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 keyboardInputShouldDelete:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 keyboardInputChanged:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    [v6 keyboardInputChangedSelection:v7];
  }
}

- (void)textInputDidChange:(id)a3
{
  if (*&self->_feFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    [WeakRetained fieldEditorDidChange:self];
  }
}

- (void)textInputDidChangeSelection:(id)a3
{
  v5 = a3;
  if ((*&self->_feFlags & 0x10) == 0 && ![(UIAutoscroll *)self->_autoscroll active])
  {
    [(UIFieldEditor *)self scrollSelectionToVisible:0];
  }

  if ((*&self->_feFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    [WeakRetained fieldEditorDidChangeSelection:self];
  }
}

- (_NSRange)textInput:(id)a3 willChangeSelectionFromCharacterRange:(_NSRange)a4 toCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v11 = [WeakRetained fieldEditor:self willChangeSelectionFromCharacterRange:v8 toCharacterRange:{v7, location, length}];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)textInput:(id)a3 willChangeSelectionFromCharacterRanges:(id)a4 toCharacterRanges:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v10 = [WeakRetained fieldEditor:self willChangeSelectionFromCharacterRanges:v8 toCharacterRanges:v7];

  return v10;
}

- (BOOL)textInput:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  v10 = a5;
  v11 = a3;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UIFieldEditor *)self textInput:v11 shouldChangeCharactersInRanges:v13 replacementText:v10];

  return length;
}

- (BOOL)textInput:(id)a3 shouldChangeCharactersInRanges:(id)a4 replacementText:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  LOBYTE(self) = [WeakRetained fieldEditor:self shouldInsertText:v7 replacingRanges:v8];

  return self;
}

- (void)textInput:(id)a3 prepareAttributedTextForInsertion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = [v5 mutableString];

  [WeakRetained _sanitizeText:v6];
}

- (BOOL)textInputShouldExtendCaretHeight:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  LOBYTE(v3) = [WeakRetained fieldEditorShouldExtendCaretHeight:v3];

  return v3;
}

- (void)setPadding:(UIEdgeInsets)a3
{
  self->_padding = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplay];
}

- (void)selectAll
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  [WeakRetained selectAll];
}

- (id)_responderForBecomeFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (CGRect)_responderExternalTouchRectForWindow:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self interactionAssistant];
  v6 = [v5 dynamicCaretView];

  if (v6)
  {
    [v6 bounds];
    [v4 convertRect:v6 fromView:?];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UIFieldEditor;
    [(UIView *)&v19 _responderExternalTouchRectForWindow:v4];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_textSelectingContainer
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

- (id)textInputTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textField);
    v6 = [v5 textInputTraits];
  }

  else
  {
    v6 = self;
    [(UIFieldEditor *)v6 setToDefaultValues];
  }

  return v6;
}

- (id)textColorForCaretSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textField);
    v6 = [v5 textColor];
  }

  else
  {
    v6 = +[UIColor blackColor];
  }

  return v6;
}

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_autoscroll)
  {
    v6 = objc_alloc_init(UIAutoscroll);
    autoscroll = self->_autoscroll;
    self->_autoscroll = v6;
  }

  v21 = self;
  [(UIFieldEditor *)v21 _selectionClipRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)v21 contentSize];
  v17 = v16;
  v18 = [(UIFieldEditor *)v21 scrollXOffset];
  if (v18 >= 1)
  {
    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    if (x < CGRectGetMinX(v23) + 16.0)
    {
      v19 = 1;
LABEL_9:
      [(UIAutoscroll *)self->_autoscroll startAutoscroll:v21 scrollContainer:v21 point:v19 directions:x repeatInterval:y, 0.075];
      goto LABEL_13;
    }
  }

  v20 = v17 - v13;
  if (v18 < v20)
  {
    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    if (x > CGRectGetMaxX(v24) + -16.0)
    {
      v19 = 2;
      goto LABEL_9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIFieldEditor *)v21 autoscrollWillNotStart];
  }

  [(UIFieldEditor *)v21 cancelAutoscroll];
LABEL_13:
}

- (void)updateAutoscroll:(id)a3
{
  v30 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_textField), [v6 interactionAssistant], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    [(UIFieldEditor *)self cancelAutoscroll];
    goto LABEL_24;
  }

  v8 = [(UIFieldEditor *)self scrollXOffset];
  v9 = [(UIFieldEditor *)self scrollYOffset];
  if ([v30 count] > 4)
  {
    v10 = 10;
  }

  else
  {
    v10 = (1.0 / (6 - [v30 count]) * 10.0);
  }

  v11 = [v30 directions];
  v12 = v11;
  if (v11)
  {
    if (v8 > 0)
    {
      v13 = 0;
      v8 = (v8 - v10);
      goto LABEL_16;
    }

    v13 = 0;
    if ((v11 & 0xFFFFFFFE) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v11 & 2) == 0)
    {
      v13 = 0;
      if (!v11)
      {
        goto LABEL_22;
      }

LABEL_16:
      [(UIFieldEditor *)self setScrollXOffset:v8 scrollYOffset:v9 adjustForPurpleCaret:v13];
      [v7 setAutoscrolled:1];
      v18 = [(UIFieldEditor *)self interactionAssistant];
      v19 = [v18 activeSelection];

      v20 = [(UIFieldEditor *)self textInputView];
      [v7 autoscrollUntransformedExtentPoint];
      [v20 convertPoint:0 fromView:?];
      v22 = v21;
      v24 = v23;

      v25 = [v19 selectedRange];
      v26 = [v25 isEmpty];

      if (v26)
      {
        [v19 setSelectionWithPoint:{v22, v24}];
        [v19 commit];
      }

      else
      {
        v27 = [v19 selectedRange];

        if (v27)
        {
          v28 = [(UIFieldEditor *)self interactionAssistant];
          [v28 updateSelectionWithPoint:{v22, v24}];

          v29 = [(UIFieldEditor *)self interactionAssistant];
          [v29 updateDisplayedSelection];
        }
      }

      goto LABEL_23;
    }

    v14 = objc_loadWeakRetained(&self->_textField);
    [v14 bounds];
    [v14 editingRectForBounds:?];
    v16 = v15;

    [(UIScrollView *)self contentSize];
    v13 = 1;
    if (v17 - v16 > v8)
    {
      v8 = (v10 + v8);
      goto LABEL_16;
    }

    if ((v12 & 0xFFFFFFFC) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  [(UIFieldEditor *)self cancelAutoscroll];
LABEL_23:

LABEL_24:
}

- (CGRect)contentFrameForView:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_tvUpdateTextColor
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    v4 = [v6 visualStyle];
    v5 = [v4 defaultTextColorForKeyboardAppearance];
    [(UIFieldEditor *)self setTextColor:v5];
  }
}

- (void)deactivateEditorDiscardingEdits:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_contentView);

    if (v7)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"UITextSelectionDidScroll" object:self];

      if (a3)
      {
        v9 = [(UIFieldEditor *)self _textStorage];
        [v9 setDefaultAttributes:self->_originalDefaultAttributes];

        v10 = [(UIFieldEditor *)self _textStorage];
        [v10 setAttributedString:self->_originalAttributedString];
      }

      originalAttributedString = self->_originalAttributedString;
      self->_originalAttributedString = 0;

      originalDefaultAttributes = self->_originalDefaultAttributes;
      self->_originalDefaultAttributes = 0;

      [(UIFieldEditor *)self _cancelObscureAllTextTimer];
      [(UIFieldEditor *)self _deactivateSelectionView];
      [(UIFieldEditor *)self _resetTypingAttributes];
      v13 = [(UIFieldEditor *)self _inputController];
      [v13 didEndEditing];

      [(UIFieldEditor *)self _handleObscuredTextAfterActivationChange];
      v14 = objc_loadWeakRetained(&self->_contentView);
      [v14 setUserInteractionEnabled:0];

      objc_storeWeak(&self->_contentView, 0);

      [(UIFieldEditor *)self _applyCorrectTextContainerSize];
    }
  }
}

- (void)_setValue:(id)a3 forTextAttribute:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(UIFieldEditor *)self _textInputController];
  v8 = [v11 typingAttributes];
  v9 = [v8 mutableCopy];

  [v9 setObject:v7 forKey:v6];
  [v11 setTypingAttributes:v9];
  v10 = [(UIFieldEditor *)self _textStorage];
  [v10 beginEditing];
  [v10 addAttribute:v6 value:v7 range:{0, objc_msgSend(v10, "length")}];

  [v10 endEditing];
}

- (_NSRange)_unobscuredSecureRange
{
  v2 = [(UIFieldEditor *)self _textLayoutController];
  v3 = [v2 unobscuredRange];
  v4 = [v2 characterRangeForTextRange:v3];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)layoutManager:(id)a3 effectiveCUICatalogForTextEffect:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v7 = [WeakRetained _cuiCatalog];

  LODWORD(WeakRetained) = [v7 hasStylePresetWithName:v5];
  if (WeakRetained)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTypingAttributes:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 setTypingAttributes:v4];

  v6 = [(UIFieldEditor *)self _textContainer];
  [v6 setAttributesForExtraLineFragment:v4];

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (void)initializeTypingAttributes
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = [WeakRetained keyboardType];
  if (v5 > 0xB || ((1 << v5) & 0x930) == 0)
  {

    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 textAlignment];
  }

  else
  {

    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 _currentTextAlignment];
  }

  [v3 setAlignment:v8];

  v9 = objc_loadWeakRetained(&self->_textField);
  [v3 setLineBreakMode:{objc_msgSend(v9, "_lineBreakMode")}];

  v14[0] = *off_1E70EC918;
  v10 = [(UIFieldEditor *)self font];
  v15[0] = v10;
  v14[1] = *off_1E70EC920;
  v11 = [(UIFieldEditor *)self textColor];
  v14[2] = *off_1E70EC988;
  v15[1] = v11;
  v15[2] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13 = [(UIFieldEditor *)self _textInputController];
  [v13 setTypingAttributes:v12];
}

- (void)_setTextInRange:(_NSRange)a3 replacementText:(id)a4 andSetCaretSelectionAfterText:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(UIFieldEditor *)self _textInputController];
  v14 = [v10 typingAttributes];

  v11 = objc_alloc(MEMORY[0x1E696AD40]);
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &stru_1EFB14550;
  }

  v13 = [v11 initWithString:v12 attributes:v14];

  [(UIFieldEditor *)self _setAttributedTextInRange:location replacementText:length andSetCaretSelectionAfterText:v13, v5];
  [(UIFieldEditor *)self scrollSelectionToVisible:0];
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self text];
  -[UIFieldEditor _setTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [v5 length], v4, 1);
}

- (void)setText:(id)a3 andSetCaretSelectionAfterText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIFieldEditor *)self text];
  -[UIFieldEditor _setTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [v7 length], v6, v4);
}

- (void)addTextAlternativesDisplayStyle:(int64_t)a3 toRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = [(UIFieldEditor *)self _textLayoutController];
  v8 = [v11 textRangeForCharacterRange:{location, length}];
  v9 = *off_1E70ECA00;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v11 addAnnotationAttribute:v9 value:v10 forRange:v8];

  [v11 boundingRectForCharacterRange:{location, length}];
  [(UIView *)self setNeedsDisplayInRect:?];
}

- (void)_setAttributedTextInRange:(_NSRange)a3 replacementText:(id)a4 andSetCaretSelectionAfterText:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(UIFieldEditor *)self attributedText];
  v11 = [v10 attributedSubstringFromRange:{location, length}];
  v12 = [v11 isEqual:v9];

  if ((v12 & 1) == 0)
  {
    if (location)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(UIFieldEditor *)self _textStorage];
      v13 = length == [v14 length];
    }

    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v16 = WeakRetained;
    if (WeakRetained)
    {
      v17 = WeakRetained;
    }

    else
    {
      v17 = self;
    }

    v18 = v17;

    v19 = [(UIFieldEditor *)self inputDelegate];
    [v19 textWillChange:v18];
    v20 = [(UIFieldEditor *)self _textStorage];
    v21 = [v20 length];
    if (!v13)
    {

      if (v21 < location + length)
      {
        goto LABEL_14;
      }

      v22 = [(UIFieldEditor *)self _textStorage];
      v23 = [v22 length];

      v20 = [(UIFieldEditor *)self _textStorage];
      v24 = [v20 length];
      if (v23 > location)
      {
        v21 = v24 - location;
      }

      else
      {
        location = v24;
        v21 = 0;
      }
    }

    length = v21;
LABEL_14:
    v25 = [(UIFieldEditor *)self _textInputController];
    v26 = [(UIFieldEditor *)self _textStorage];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __89__UIFieldEditor__setAttributedTextInRange_replacementText_andSetCaretSelectionAfterText___block_invoke;
    v36[3] = &unk_1E7126120;
    v38 = location;
    v39 = length;
    v27 = v9;
    v37 = v27;
    [v26 coordinateEditing:v36];

    if (v27)
    {
      if (!v5)
      {
LABEL_17:
        [v19 textDidChange:v18];
        v29 = *off_1E70EC9F8;
        v30 = [v27 length];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __89__UIFieldEditor__setAttributedTextInRange_replacementText_andSetCaretSelectionAfterText___block_invoke_2;
        v31[3] = &unk_1E7126148;
        v34 = location;
        v35 = length;
        v9 = v27;
        v32 = v9;
        v33 = self;
        [v9 enumerateAttribute:v29 inRange:0 options:v30 usingBlock:{0, v31}];

        goto LABEL_18;
      }
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    v28 = [(UIFieldEditor *)self _textStorage];
    [v25 setSelectedRange:{objc_msgSend(v28, "length"), 0}];

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __89__UIFieldEditor__setAttributedTextInRange_replacementText_andSetCaretSelectionAfterText___block_invoke_2(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 48);
    v4 = *(result + 32);
    v5 = a2;
    v6 = [v4 length];
    v7 = [v5 isLowConfidence];

    v8 = *(v2 + 40);

    return [v8 addTextAlternativesDisplayStyle:v7 toRange:{v3, v6}];
  }

  return result;
}

- (id)attributedText
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 filteredAttributedText];

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self attributedText];
  -[UIFieldEditor _setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [v5 length], v4, 1);
}

- (void)setAttributedText:(id)a3 andSetCaretSelectionAfterText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIFieldEditor *)self attributedText];
  -[UIFieldEditor _setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [v7 length], v6, v4);
}

- (void)setScrollXOffset:(int)a3 scrollYOffset:(int)a4 adjustForPurpleCaret:(BOOL)a5
{
  [(UIFieldEditor *)self setContentOffset:a3, a4];

  [(UIView *)self setNeedsDisplay];
}

- (void)setSelection:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];
  [(UIFieldEditor *)self setSelectedTextRange:v6];
}

- (id)selectionRanges
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 selectedRanges];

  return v3;
}

- (void)setSelectionRanges:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v5 = [(UIFieldEditor *)self selectionRanges];
    v6 = [v5 lastObject];
    if (v6)
    {
      v7 = [(UIFieldEditor *)self selectionRanges];
      v8 = [v7 lastObject];
      v9 = [v8 rangeValue];
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696B098] valueWithRange:{v9 + v11, 0}];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    v4 = v13;
  }

  v14 = [(UIFieldEditor *)self _textInputController];
  [v14 setSelectedRanges:v4];

  v15 = [(UIFieldEditor *)self interactionAssistant];
  [v15 setNeedsSelectionDisplayUpdate];
}

- (void)_performWhileSuppressingDelegateNotifications:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 _performWhileSuppressingDelegateNotifications:v4];
}

+ (id)excludedElementsForHTML
{
  if (qword_1ED499D98 != -1)
  {
    dispatch_once(&qword_1ED499D98, &__block_literal_global_619);
  }

  v3 = _MergedGlobals_9_14;

  return v3;
}

void __40__UIFieldEditor_excludedElementsForHTML__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"P", @"STYLE", @"HTML", @"APPLET", @"OBJECT", @"BASEFONT", @"CENTER", @"DIR", @"FONT", @"ISINDEX", @"MENU", @"S", @"XML", @"BODY", @"HEAD", @"META", 0}];
  v1 = _MergedGlobals_9_14;
  _MergedGlobals_9_14 = v0;
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(UIFieldEditor *)self _scrollAnimationEndedAction];
  if (v6)
  {
    v7 = v6;
    [(UIFieldEditor *)self _setScrollAnimationEndedAction:0];
    v7[2](v7, v4);
    v6 = v7;
  }
}

- (void)_scrollRangeToVisible:(_NSRange)a3 animated:(BOOL)a4
{
  v4 = a4;
  location = a3.location;
  v30 = [(UIFieldEditor *)self _textLayoutController:a3.location];
  v7 = [v30 documentRange];
  [v30 ensureLayoutForRange:v7];

  [(UIView *)self layoutBelowIfNeeded];
  v8 = [v30 positionWithOffset:location affinity:0];
  [(UIFieldEditor *)self caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v32.origin.x = v10;
  v32.origin.y = v12;
  v32.size.width = v14;
  v32.size.height = v16;
  v33 = CGRectInset(v32, -fmax(10.0 - v14, 0.0), 0.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v21 = [(UIFieldEditor *)self textInputView];
  [(UIView *)self convertRect:v21 fromView:x, y, width, height];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(UIScrollView *)self scrollRectToVisible:v4 animated:v23, v25, v27, v29];
}

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  -[UIFieldEditor _scrollRangeToVisible:animated:](self, "_scrollRangeToVisible:animated:", [v5 selectedRange], 0, v3);
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  if ((*&self->_feFlags & 0x80) == 0)
  {
    v4 = a4;
    y = a3.y;
    x = a3.x;
    [(UIScrollView *)self contentOffset];
    if (x != v9 || y != v8)
    {
      v11.receiver = self;
      v11.super_class = UIFieldEditor;
      [(UIScrollView *)&v11 setContentOffset:v4 animated:x, y];
    }
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  if ((*&self->_feFlags & 0x80) == 0)
  {
    y = a3.y;
    x = a3.x;
    [(UIScrollView *)self contentOffset];
    if (x != v7 || y != v6)
    {
      v9.receiver = self;
      v9.super_class = UIFieldEditor;
      [(UIScrollView *)&v9 setContentOffset:x, y];
    }
  }
}

- (id)undoManager
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 undoManager];

  return v3;
}

- (int64_t)nonEditingLinebreakMode
{
  v2 = [(UIFieldEditor *)self _textStorage];
  v3 = [v2 lineBreakMode];

  return v3;
}

- (void)setNonEditingLinebreakMode:(int64_t)a3
{
  v4 = [(UIFieldEditor *)self _textStorage];
  [v4 setLineBreakMode:a3];
}

- (double)_passcodeStyleAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  [WeakRetained _passcodeStyleAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)_clearOnEditIfNeeded
{
  feFlags = self->_feFlags;
  if ((*&feFlags & 0x20) != 0)
  {
    v4 = [(UIFieldEditor *)self _textInputController];
    if ([v4 hasText])
    {
      [v4 clearText];
    }

    *&self->_feFlags &= ~0x20u;
  }

  return (*&feFlags >> 5) & 1;
}

- (void)_handleObscuredTextInputIfNecessaryWithEditingBlock:(id)a3
{
  v4 = a3;
  if (![(UIFieldEditor *)self _shouldObscureInput])
  {
    v16 = [(UIFieldEditor *)self _textInputController];
    v4[2](v4, v16);

    goto LABEL_8;
  }

  v5 = [(UIFieldEditor *)self _textLayoutController];
  [v5 resetFontForExtraBulletRendering];

  [(UIFieldEditor *)self _cancelObscureAllTextTimer];
  v6 = [(UIFieldEditor *)self _textInputController];
  v7 = [v6 selectedRange];
  v9 = v8;

  v10 = [(UIFieldEditor *)self _textInputController];
  v4[2](v4, v10);

  v11 = [(UIFieldEditor *)self _textInputController];
  v12 = [v11 selectedRange];

  if (![(UIFieldEditor *)self _shouldObscureNextInput])
  {
    v16 = [(UIFieldEditor *)self _textStorage];
    v19.length = [v16 length];
    v18.location = v7 + v9;
    v18.length = v12 - (v7 + v9);
    v19.location = 0;
    v13 = NSIntersectionRange(v18, v19);
    if (v13.length)
    {
      if ([(UIFieldEditor *)self isFirstResponder])
      {
        v14 = [v16 string];
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v14, v13.length + v13.location - 1);

        if (RangeOfComposedCharactersAtIndex.length)
        {
          [(UIFieldEditor *)self _unobscureTextInRange:RangeOfComposedCharactersAtIndex.location settingTimerToReobscure:RangeOfComposedCharactersAtIndex.length, 1];
LABEL_8:

          return;
        }
      }
    }
  }

  [(UIFieldEditor *)self _obscureAllText];
  if ([(UIFieldEditor *)self _shouldObscureNextInput])
  {

    [(UIFieldEditor *)self set_shouldObscureNextInput:0];
  }
}

- (_NSRange)insertFilteredText:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:@"\n"];
  if ((*&self->_feFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v7 = [WeakRetained fieldEditor:self shouldReplaceWithText:v4];

    if (v7)
    {
      v8 = [(UIFieldEditor *)self text];
      -[UIFieldEditor setSelection:](self, "setSelection:", 0, [v8 length]);
    }
  }

  if (v5)
  {
    v9 = objc_loadWeakRetained(&self->_textField);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_textField);
      [v11 _sendActionsForEvents:0x80000 withEvent:0];
    }

    v12 = objc_loadWeakRetained(&self->_textField);
    v13 = [v12 _shouldResignOnEditingDidEndOnExit];

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_textField);
      [v14 resignFirstResponder];
    }

    v15 = 0;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [(UIFieldEditor *)self _clearOnEditIfNeeded];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __36__UIFieldEditor_insertFilteredText___block_invoke;
    v20[3] = &unk_1E7126170;
    v17 = v4;
    v21 = v17;
    [(UIFieldEditor *)self _handleObscuredTextInputIfNecessaryWithEditingBlock:v20];
    v15 = [v17 length];

    v16 = 0;
  }

  v18 = v16;
  v19 = v15;
  result.length = v19;
  result.location = v18;
  return result;
}

- (void)_unobscureTextInRange:(_NSRange)a3 settingTimerToReobscure:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v8 = [(UIFieldEditor *)self _textStorage];
  v16.length = [v8 length];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);

  v13 = [(UIFieldEditor *)self _textLayoutController];
  v10 = [v13 textRangeForCharacterRange:{v9.location, v9.length}];
  [v13 setUnobscuredRange:v10];
  [v13 invalidateLayoutForRange:v10];
  if (v4)
  {
    [(UIFieldEditor *)self _cancelObscureAllTextTimer];
    v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__obscureAllText selector:0 userInfo:0 repeats:2.0];
    obscureAllTextTimer = self->_obscureAllTextTimer;
    self->_obscureAllTextTimer = v11;
  }

  [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
}

- (void)_ephemerallyUnobscureCharacterAtIndex:(unint64_t)a3
{
  v7 = [(UIFieldEditor *)self _textStorage];
  if ([v7 length])
  {
    v5 = [v7 string];
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v5, a3);

    if (RangeOfComposedCharactersAtIndex.length >= 1)
    {
      [(UIFieldEditor *)self _unobscureTextInRange:RangeOfComposedCharactersAtIndex.location settingTimerToReobscure:RangeOfComposedCharactersAtIndex.length, 1];
    }
  }
}

- (void)_ephemerallyUnobscureTextInRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = [(UIFieldEditor *)self _textStorage];
    if ([v6 length])
    {
      [(UIFieldEditor *)self _unobscureTextInRange:location settingTimerToReobscure:length, 1];
    }
  }
}

- (void)deleteBackward
{
  if (![(UIFieldEditor *)self _clearOnEditIfNeeded])
  {
    v3 = [(UIFieldEditor *)self _textInputController];
    [v3 deleteBackward];

    v4 = [(UIFieldEditor *)self _textStorage];
    v5 = [v4 length];

    if (!v5)
    {
      [(UIFieldEditor *)self initializeTypingAttributes];
    }
  }

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 textInRange:v4];

  return v6;
}

- (void)insertAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 insertAttributedText:v4];
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 attributedTextInRange:v4];

  return v6;
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIFieldEditor *)self _textInputController];
  [v8 replaceRange:v7 withText:v6];
}

- (id)replaceRange:(id)a3 withAttributedText:(id)a4 updatingSelection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(UIFieldEditor *)self _textInputController];
  v11 = [v10 replaceRange:v9 withAttributedText:v8 updatingSelection:v5];

  return v11;
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)a3 replacementText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__UIFieldEditor_replaceRangeWithTextWithoutClosingTyping_replacementText___block_invoke;
  v10[3] = &unk_1E7126198;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(UIFieldEditor *)self _handleObscuredTextInputIfNecessaryWithEditingBlock:v10];
}

- (void)clearText
{
  v2 = [(UIFieldEditor *)self _textInputController];
  [v2 clearText];
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = [WeakRetained _isPasscodeStyle];

  if (v6)
  {
    v7 = [(UIFieldEditor *)self _textLayoutController];
    v8 = [v4 end];

    v10 = [v7 emptyTextRangeAtPosition:v8];

    v9 = [(UIFieldEditor *)self _textInputController];
    [v9 setSelectedTextRange:v10];

    if ([(UIFieldEditor *)self _shouldObscureInput])
    {
      [(UIFieldEditor *)self _obscureAllText];
    }

    v4 = [(UIFieldEditor *)self interactionAssistant];
    [v4 selectionChanged];
  }

  else
  {
    v10 = [(UIFieldEditor *)self _textInputController];
    [v10 setSelectedTextRange:v4];
  }
}

- (NSDictionary)markedTextStyle
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 markedTextStyle];

  return v3;
}

- (void)setMarkedTextStyle:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 setMarkedTextStyle:v4];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UIFieldEditor *)self markedTextRange];
  if (!v8 || (v9 = v8, -[UIFieldEditor markedTextRange](self, "markedTextRange"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEmpty], v10, v9, v11))
  {
    [(UIFieldEditor *)self _clearOnEditIfNeeded];
  }

  v12 = [(UIFieldEditor *)self _textInputController];
  [v12 setMarkedText:v7 selectedRange:{location, length}];

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(UIFieldEditor *)self _textInputController];
  [v8 setAttributedMarkedText:v7 selectedRange:{location, length}];

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (void)unmarkText
{
  v2 = [(UIFieldEditor *)self _textInputController];
  [v2 unmarkText];
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIFieldEditor *)self _textInputController];
  v9 = [v8 textRangeFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIFieldEditor *)self _textInputController];
  v8 = [v7 positionFromPosition:v6 offset:a4];

  return v8;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v9 = [(UIFieldEditor *)self _textInputController];
  v10 = [v9 positionFromPosition:v8 inDirection:a4 offset:a5];

  return v10;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIFieldEditor *)self _textInputController];
  v9 = [v8 comparePosition:v7 toPosition:v6];

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIFieldEditor *)self _textInputController];
  v9 = [v8 offsetFromPosition:v7 toPosition:v6];

  return v9;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIFieldEditor *)self _textInputController];
  v8 = [v7 positionWithinRange:v6 farthestInDirection:a4];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIFieldEditor *)self _textInputController];
  v8 = [v7 characterRangeByExtendingPosition:v6 inDirection:a4];

  return v8;
}

- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a3;
  v13 = [(UIFieldEditor *)self _textLayoutController];
  v14 = [v13 _visualSelectionRangeForExtent:v12 forPoint:v11 fromPosition:a6 inDirection:{x, y}];

  return v14;
}

- (void)setInputDelegate:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 setInputDelegate:v4];
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIFieldEditor *)self _textInputController];
  v8 = [v7 baseWritingDirectionForPosition:v6 inDirection:a4];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = [(UIFieldEditor *)self _textInputController];
  [v7 setBaseWritingDirection:a3 forRange:v6];

  v11 = [(UIFieldEditor *)self _textStorage];
  if (![v11 length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v9 = [WeakRetained _shouldIgnoreBaseWritingDirectionChanges];

    if (v9)
    {
      v10 = [(UIFieldEditor *)self _textInputController];
      [v10 _updateEmptyStringAttributes];
    }

    else
    {
      [v11 setDefaultBaseWritingDirection:a3];
    }
  }
}

- (CGRect)firstRectForRange:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 firstRectForRange:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 caretRectForPosition:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    v14 = [(UIFieldEditor *)self _textLayoutController];
    v15 = [v14 unobscuredRange];
    v16 = [v15 isEmpty];

    if (v16)
    {
      v17 = [(UIFieldEditor *)self font];
      [v17 lineHeight];
      v13 = v18;
    }
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 selectionRectsForRange:v4];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 closestPositionToPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIFieldEditor *)self _textInputController];
  v9 = [v8 closestPositionToPoint:v7 withinRange:{x, y}];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 characterRangeAtPoint:{x, y}];

  return v6;
}

- (BOOL)isEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained isFirstResponder];

  return v3;
}

- (void)insertDictationResult:(id)a3 withCorrectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__UIFieldEditor_insertDictationResult_withCorrectionIdentifier___block_invoke;
  v10[3] = &unk_1E7126198;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(UIFieldEditor *)self _handleObscuredTextInputIfNecessaryWithEditingBlock:v10];
}

- (id)insertDictationResultPlaceholder
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 insertDictationResultPlaceholder];

  return v3;
}

- (CGRect)frameForDictationResultPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 frameForDictationResultPlaceholder:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIFieldEditor *)self _textInputController];
  [v7 removeDictationResultPlaceholder:v6 willInsertResult:v4];
}

- (id)insertTextPlaceholderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIFieldEditor *)self _textInputController];
  v6 = [v5 insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(UIFieldEditor *)self _textInputController];
  [v5 removeTextPlaceholder:v4];
}

- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = [(UIFieldEditor *)self _textInputController];
  v8 = [v7 rangeWithTextAlternatives:a3 atPosition:v6];

  return v8;
}

- (void)beginSelectionChange
{
  *&self->_feFlags |= 0x10u;
  v2 = [(UIFieldEditor *)self _textInputController];
  [v2 beginSelectionChange];
}

- (void)endSelectionChange
{
  v3 = [(UIFieldEditor *)self _textInputController];
  [v3 endSelectionChange];

  *&self->_feFlags &= ~0x10u;
}

- (unint64_t)layoutManager:(id)a3 shouldGenerateGlyphs:(const unsigned __int16 *)a4 properties:(const int64_t *)a5 characterIndexes:(const unint64_t *)a6 font:(id)a7 forGlyphRange:(_NSRange)a8
{
  v13 = a3;
  v14 = a7;
  v15 = [(UIFieldEditor *)self _textInputTraits];
  if ([v15 isSecureTextEntry])
  {
    if (([v15 displaySecureEditsUsingPlainText] & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_textField), v17 = objc_msgSend(WeakRetained, "_shouldUnobscureTextWithContentCover"), WeakRetained, v17))
    {
      v30 = v14;
      v18 = a4;
      v19 = a5;
      v20 = a6;
      obscuredSecureLength = self->_obscuredSecureLength;
      v22 = v13;
      v23 = [v13 textStorage];
      v24 = [v23 length] - self->_obscuredSecureLength;
LABEL_7:

      a6 = v20;
      a5 = v19;
      a4 = v18;
      v14 = v30;
      v13 = v22;
      goto LABEL_9;
    }
  }

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    v22 = v13;
    v30 = v14;
    v18 = a4;
    v19 = a5;
    v20 = a6;
    v23 = [(UIFieldEditor *)self _textLayoutController];
    v25 = [v23 unobscuredRange];
    obscuredSecureLength = [v23 characterRangeForTextRange:v25];
    v24 = v26;

    goto LABEL_7;
  }

  v24 = 0;
  obscuredSecureLength = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
  if (obscuredSecureLength == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
  }

  else
  {
    v27 = [v13 _generateBulletGlyphs:a4 properties:a5 characterIndexes:a6 font:v14 forGlyphRange:a8.location unobscuredRange:{a8.length, obscuredSecureLength, v24}];
    if (v27 >= 1)
    {
      v28 = [(UIFieldEditor *)self _textInputController];
      [v28 _selectionGeometryChanged];
    }
  }

  return v27;
}

- (int64_t)layoutManager:(id)a3 shouldUseAction:(int64_t)a4 forControlCharacterAtIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [(UIFieldEditor *)self _textLayoutController];
  v10 = [v9 unobscuredRange];
  v11 = [v9 characterRangeForTextRange:v10];
  v13 = v12;

  if (a4 == 1)
  {
    if (a5 < v11 || a5 - v11 >= v13)
    {
      v14 = [MEMORY[0x1E696AB08] controlCharacterSet];
      v15 = [v8 textStorage];
      v16 = [v15 string];
      v17 = [v14 characterIsMember:{objc_msgSend(v16, "characterAtIndex:", a5)}];

      if (v17)
      {
        a4 = 1;
      }

      else
      {
        a4 = 2;
      }
    }

    else
    {
      a4 = 1;
    }
  }

  return a4;
}

- (CGRect)layoutManager:(id)a3 boundingBoxForControlGlyphAtIndex:(unint64_t)a4 forTextContainer:(id)a5 proposedLineFragment:(CGRect)a6 glyphPosition:(CGPoint)a7 characterIndex:(unint64_t)a8
{
  v10 = a3;
  v11 = [(UIFieldEditor *)self _textLayoutController];
  v12 = [v11 unobscuredRange];
  v13 = [v11 characterRangeForTextRange:v12];
  v15 = v14;

  [v10 _boundingBoxForBulletAtCharIndex:a8 inUnobscuredRange:{v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  if (a4)
  {
    [a3 _completeBulletRenderingForTextContainer:a4];
  }
}

- (void)setTextContainer:(id)a3
{
  v4 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  WeakRetained = objc_loadWeakRetained(&self->__textContainer);

  if (has_internal_diagnostics)
  {
    if (WeakRetained != v4)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "unexpected different text container", buf, 2u);
      }
    }
  }

  else if (WeakRetained != v4)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setTextContainer____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "unexpected different text container", v10, 2u);
    }
  }
}

- (CGRect)visibleRect
{
  v2 = [(UIFieldEditor *)self _textCanvasView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)textContainerOriginForTextAlignment:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);

  if (!WeakRetained)
  {
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    goto LABEL_18;
  }

  v7 = [(UIView *)self superview];
  if (v7 && (v3 = objc_loadWeakRetained(&self->_textField), [v3 _tvHasFloatingFieldEditor]))
  {
    v9 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_textField);
    [v12 _originForTextFieldLabel:0];
    v9 = v13;
    v8 = v14;

    if (!v7)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (a3 == 2)
  {
    v15 = [(UIFieldEditor *)self _textCanvasView];
    [v15 bounds];
    Width = CGRectGetWidth(v32);
    v17 = [(UIFieldEditor *)self _textContainer];
    [v17 size];
    v9 = Width - v20;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v15 = [(UIFieldEditor *)self _textCanvasView];
    [v15 bounds];
    v16 = CGRectGetWidth(v31);
    v17 = [(UIFieldEditor *)self _textContainer];
    [v17 size];
    v9 = (v16 - v18) * 0.5;
LABEL_12:
  }

  v21 = [(UIFieldEditor *)self _textLayoutController];
  [v21 baselineOffsetForFirstGlyph];
  v23 = v22;

  UIRoundToViewScale(self);
  v25 = v8 + v24 - v23;
  [(UIFieldEditor *)self _contentInsetsFromFonts];
  v28 = v27;
  v10 = v9 - v29;
  if (a3 == 2)
  {
    v10 = v9 + v26;
  }

  if (a3 == 1)
  {
    v10 = v9;
  }

  v11 = v25 - v28;
LABEL_18:
  result.y = v11;
  result.x = v10;
  return result;
}

- (UIEdgeInsets)textContainerInset
{
  [(UIFieldEditor *)self textContainerOriginForTextAlignment:0];
  v3 = v2;
  v5 = v4;
  v6 = v3;
  v7 = v5;
  result.right = v3;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)setConstrainedFrameSize:(CGSize)a3
{
  self->_desiredContentWidth = ceil(a3.width);
  v4 = [(UIFieldEditor *)self _textCanvasView];
  [v4 setNeedsLayout];

  [(UIScrollView *)self setNeedsLayout];
}

- (CGSize)minSize
{
  [(UIView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setNeedsDisplayInRect:(CGRect)a3 avoidAdditionalLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplayInRect:{x, y, width, height}];
}

- (id)linkTextAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v3 = [WeakRetained linkTextAttributes];

  return v3;
}

- (id)attributedSubstringForMarkedRange
{
  v2 = [(UIFieldEditor *)self _textInputController];
  v3 = [v2 attributedSubstringForMarkedRange];

  return v3;
}

- (void)setSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIFieldEditor *)self _textInputTraits];
  [v5 setSecureTextEntry:v3];

  v6 = [(UIFieldEditor *)self _shouldObscureInput];
  feFlags = self->_feFlags;
  if (v6)
  {
    *&self->_feFlags = feFlags | 0x20;
    [(UIFieldEditor *)self _obscureAllText];
  }

  else
  {
    *&self->_feFlags = feFlags & 0xFFDF;
    [(UIFieldEditor *)self _unobscureAllText];
  }

  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplay];

  [(UIScrollView *)self setNeedsLayout];
}

- (void)setDisplaySecureEditsUsingPlainText:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIFieldEditor *)self _textInputTraits];
  [v5 setDisplaySecureEditsUsingPlainText:v3];

  if (v3)
  {
    v6 = [(UIFieldEditor *)self _textStorage];
    self->_obscuredSecureLength = [v6 length];
  }

  else
  {
    *&self->_feFlags &= ~0x20u;
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(UIFieldEditor *)self _textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIFieldEditor;
    v5 = [(UIFieldEditor *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = UIFieldEditor;
  if ([(UIFieldEditor *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [objc_opt_class() instancesRespondToSelector:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  return v4;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)autoscrollContentOffset
{
  x = self->_autoscrollContentOffset.x;
  y = self->_autoscrollContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end