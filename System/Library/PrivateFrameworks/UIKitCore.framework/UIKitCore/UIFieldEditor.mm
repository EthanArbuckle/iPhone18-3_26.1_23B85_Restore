@interface UIFieldEditor
+ (id)excludedElementsForHTML;
- (BOOL)_clearOnEditIfNeeded;
- (BOOL)_hasDictationPlaceholder;
- (BOOL)_mightHaveSelection;
- (BOOL)_shouldObscureInput;
- (BOOL)hasText;
- (BOOL)isEditing;
- (BOOL)isFirstResponder;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)setUpClippingWithMaskForBounds:(CGRect)bounds contentFrame:(CGRect)frame;
- (BOOL)textInput:(id)input shouldChangeCharactersInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textInput:(id)input shouldChangeCharactersInRanges:(id)ranges replacementText:(id)text;
- (BOOL)textInputShouldExtendCaretHeight:(id)height;
- (CGPoint)autoscrollContentOffset;
- (CGPoint)textContainerOrigin;
- (CGPoint)textContainerOriginForTextAlignment:(int64_t)alignment;
- (CGRect)_responderExternalTouchRectForWindow:(id)window;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)contentFrameForView:(id)view;
- (CGRect)firstRectForRange:(id)range;
- (CGRect)frameForDictationResultPlaceholder:(id)placeholder;
- (CGRect)layoutManager:(id)manager boundingBoxForControlGlyphAtIndex:(unint64_t)index forTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)characterIndex;
- (CGRect)visibleRect;
- (CGSize)minSize;
- (NSDictionary)markedTextStyle;
- (NSDictionary)typingAttributes;
- (NSLayoutManager)layoutManager;
- (UIEdgeInsets)_contentInsetsFromFonts;
- (UIEdgeInsets)_fullContentInsetsFromFonts;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)textContainerInset;
- (UIFieldEditor)initWithTextField:(id)field;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIView)textInputView;
- (_NSRange)_unobscuredSecureRange;
- (_NSRange)insertFilteredText:(id)text;
- (_NSRange)markedRange;
- (_NSRange)selectionRange;
- (_NSRange)textInput:(id)input willChangeSelectionFromCharacterRange:(_NSRange)range toCharacterRange:(_NSRange)characterRange;
- (double)_passcodeStyleAlpha;
- (id)_responderForBecomeFirstResponder;
- (id)_textCanvasView;
- (id)_textContainer;
- (id)_textInputController;
- (id)_textInputTraits;
- (id)_textLayoutController;
- (id)_textSelectingContainer;
- (id)_textStorage;
- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction;
- (id)attributedSubstringForMarkedRange;
- (id)attributedText;
- (id)attributedTextInRange:(id)range;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)font;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)insertDictationResultPlaceholder;
- (id)insertTextPlaceholderWithSize:(CGSize)size;
- (id)layoutManager:(id)manager effectiveCUICatalogForTextEffect:(id)effect;
- (id)linkTextAttributes;
- (id)metadataDictionariesForDictationResults;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position;
- (id)replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection;
- (id)selectionRanges;
- (id)selectionRectsForRange:(id)range;
- (id)text;
- (id)textColor;
- (id)textColorForCaretSelection;
- (id)textField;
- (id)textInRange:(id)range;
- (id)textInput:(id)input willChangeSelectionFromCharacterRanges:(id)ranges toCharacterRanges:(id)characterRanges;
- (id)textInputTraits;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)undoManager;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)layoutManager:(id)manager shouldUseAction:(int64_t)action forControlCharacterAtIndex:(unint64_t)index;
- (int64_t)nonEditingLinebreakMode;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (unint64_t)layoutManager:(id)manager shouldGenerateGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range;
- (void)_applyCorrectTextContainerSize;
- (void)_applyCorrectTextContainerSize:(id)size;
- (void)_cancelObscureAllTextTimer;
- (void)_deactivateSelectionView;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_ephemerallyUnobscureCharacterAtIndex:(unint64_t)index;
- (void)_ephemerallyUnobscureTextInRange:(_NSRange)range;
- (void)_handleObscuredTextAfterActivationChange;
- (void)_handleObscuredTextInputIfNecessaryWithEditingBlock:(id)block;
- (void)_invalidateAfterObscuredRangeChangeIfNeeded;
- (void)_obscureAllText;
- (void)_performWhileSuppressingDelegateNotifications:(id)notifications;
- (void)_resetTypingAttributes;
- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_setAttributedTextInRange:(_NSRange)range replacementText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText;
- (void)_setNeedsInvalidateAfterObscuredRangeChange;
- (void)_setTextInRange:(_NSRange)range replacementText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText;
- (void)_setValue:(id)value forTextAttribute:(id)attribute;
- (void)_textStorageDidProcessEditing:(id)editing;
- (void)_tvUpdateTextColor;
- (void)_unobscureAllText;
- (void)_unobscureTextInRange:(_NSRange)range settingTimerToReobscure:(BOOL)reobscure;
- (void)_updateLayoutManagerStyleEffectConfiguration;
- (void)_updateTextSelectionFromBehavior;
- (void)activateEditor;
- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range;
- (void)beginSelectionChange;
- (void)clearText;
- (void)deactivateEditorDiscardingEdits:(BOOL)edits;
- (void)dealloc;
- (void)deleteBackward;
- (void)endSelectionChange;
- (void)initializeTypingAttributes;
- (void)insertAttributedText:(id)text;
- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier;
- (void)keyboardInputChangedSelection:(id)selection;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)layoutSubviews;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)removeTextPlaceholder:(id)placeholder;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)selectAll;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setAttributedText:(id)text;
- (void)setAttributedText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setConstrainedFrameSize:(CGSize)size;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDisplaySecureEditsUsingPlainText:(BOOL)text;
- (void)setInputDelegate:(id)delegate;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setMarkedTextStyle:(id)style;
- (void)setNeedsDisplayInRect:(CGRect)rect avoidAdditionalLayout:(BOOL)layout;
- (void)setNonEditingLinebreakMode:(int64_t)mode;
- (void)setPadding:(UIEdgeInsets)padding;
- (void)setScrollXOffset:(int)offset scrollYOffset:(int)yOffset adjustForPurpleCaret:(BOOL)caret;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setSelectedTextRange:(id)range;
- (void)setSelection:(_NSRange)selection;
- (void)setSelectionRanges:(id)ranges;
- (void)setText:(id)text;
- (void)setText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText;
- (void)setTextContainer:(id)container;
- (void)setTypingAttributes:(id)attributes;
- (void)startAutoscroll:(CGPoint)autoscroll;
- (void)textInput:(id)input prepareAttributedTextForInsertion:(id)insertion;
- (void)textInputDidChange:(id)change;
- (void)textInputDidChangeSelection:(id)selection;
- (void)traitCollectionDidChange:(id)change;
- (void)unmarkText;
- (void)updateAutoscroll:(id)autoscroll;
@end

@implementation UIFieldEditor

- (UITextInteractionAssistant)interactionAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  interactionAssistant = [WeakRetained interactionAssistant];

  return interactionAssistant;
}

- (id)_textInputController
{
  textInputController = self->__textInputController;
  if (!textInputController)
  {
    _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
    textInputController = [(_UITextLayoutControllerBase *)_textLayoutController textInputController];
    v6 = self->__textInputController;
    self->__textInputController = textInputController;

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
    textLayoutController = [v4 textLayoutController];
    objc_storeWeak(&self->__textLayoutController, textLayoutController);

    v6 = objc_loadWeakRetained(&self->__textLayoutController);
    LODWORD(textLayoutController) = [v6 canAccessLayoutManager];

    if (textLayoutController)
    {
      v7 = objc_loadWeakRetained(&self->__textLayoutController);
      [v7 setLayoutManagerDelegate:self];
    }

    _textContainer = [(UIFieldEditor *)self _textContainer];
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
    _textContainer = [v4 _textContainer];

    objc_storeWeak(&self->__textContainer, _textContainer);
    [_textContainer setTextView:self];
    [_textContainer setLineFragmentPadding:0.0];
    [(UIFieldEditor *)self _applyCorrectTextContainerSize:_textContainer];
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
    _textCanvasView = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    _textCanvasView = [v6 _textCanvasView];
  }

  return _textCanvasView;
}

- (BOOL)_mightHaveSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  isFirstResponder = [WeakRetained isFirstResponder];

  return isFirstResponder;
}

- (UITextPosition)beginningOfDocument
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  beginningOfDocument = [_textInputController beginningOfDocument];

  return beginningOfDocument;
}

- (UITextRange)markedTextRange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  markedTextRange = [_textInputController markedTextRange];

  return markedTextRange;
}

- (void)_unobscureAllText
{
  [(UIFieldEditor *)self _cancelObscureAllTextTimer];
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  documentRange = [_textLayoutController documentRange];
  [_textLayoutController setUnobscuredRange:documentRange];

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
  _textInputController = [(UIFieldEditor *)self _textInputController];
  _hasDictationPlaceholder = [_textInputController _hasDictationPlaceholder];

  return _hasDictationPlaceholder;
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
    _textStorage = [(UIFieldEditor *)self _textStorage];
    string = [_textStorage string];
    v7 = [string rangeOfCharacterFromSet:v4];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      font = [_textStorage font];
      p_contentInsetsFromFonts->top = [UILabel _insetsForAttributedString:_textStorage withDefaultFont:font inView:self];
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
    textStorage = [WeakRetained textStorage];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _textStorage = textStorage;
      if (!_textStorage)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_textField);
      _textStorage = [v7 _textStorage];

      if (!_textStorage)
      {
LABEL_7:

        textStorage = self->__textStorage;
        goto LABEL_8;
      }
    }

    objc_storeStrong(&self->__textStorage, _textStorage);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__textStorageDidProcessEditing_ name:*off_1E70ECAC0 object:_textStorage];

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
    _textContainer = [(UIFieldEditor *)self _textContainer];
  }
}

- (CGPoint)textContainerOrigin
{
  _textStorage = [(UIFieldEditor *)self _textStorage];
  if ([_textStorage length])
  {
    _ui_resolvedTextAlignment = [_textStorage _ui_resolvedTextAlignment];
  }

  else
  {
    typingAttributes = [(UIFieldEditor *)self typingAttributes];
    v6 = [typingAttributes objectForKeyedSubscript:*off_1E70EC988];
    _ui_resolvedTextAlignment = [v6 _ui_resolvedTextAlignment];
  }

  [(UIFieldEditor *)self textContainerOriginForTextAlignment:_ui_resolvedTextAlignment];
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
  _textInputController = [(UIFieldEditor *)self _textInputController];
  typingAttributes = [_textInputController typingAttributes];
  _textContainer = [(UIFieldEditor *)self _textContainer];
  [_textContainer setAttributesForExtraLineFragment:typingAttributes];

  typingAttributes2 = [_textInputController typingAttributes];

  return typingAttributes2;
}

- (BOOL)_shouldObscureInput
{
  _textInputTraits = [(UIFieldEditor *)self _textInputTraits];
  if ([_textInputTraits isSecureTextEntry] && (objc_msgSend(_textInputTraits, "displaySecureTextUsingPlainText") & 1) == 0)
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
    textInputTraits = v3;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    textInputTraits = [v6 textInputTraits];
  }

  return textInputTraits;
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
    layer = [(UIView *)self layer];
    [layer setMask:0];

    LOBYTE(v28) = 1;
    [(UIView *)self setClipsToBounds:1];
    goto LABEL_11;
  }

  v14 = *v3;
  v15 = v3[1];
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  _textContainer = [(UIFieldEditor *)self _textContainer];
  [_textLayoutController ensureLayoutForTextContainer:_textContainer];

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
    interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
    [interactionAssistant setNeedsSelectionDisplayUpdate];
  }

  [(UIScrollView *)self contentOffset];
  v38 = v37 - (v31 - v9);
  if (v38 > 0.0)
  {
    [(UIFieldEditor *)self setContentOffset:?];
    if ((v28 & 1) == 0)
    {
      layer2 = [(UIView *)self layer];
      mask = [layer2 mask];
      [mask position];
      v42 = v41;
      v44 = v43;

      layer3 = [(UIView *)self layer];
      mask2 = [layer3 mask];
      [mask2 setPosition:{v42 - v38, v44}];
    }
  }
}

- (UITextRange)selectedTextRange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  selectedTextRange = [_textInputController selectedTextRange];

  return selectedTextRange;
}

- (void)_invalidateAfterObscuredRangeChangeIfNeeded
{
  feFlags = self->_feFlags;
  if ((feFlags & 0x40) != 0)
  {
    *&self->_feFlags = feFlags & 0xFFBF;
    _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
    documentRange = [_textLayoutController documentRange];
    [_textLayoutController invalidateLayoutForRange:documentRange];
    _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
    [_textCanvasView setNeedsDisplay];

    interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
    [interactionAssistant updateDisplayedSelection];
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
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  [_textLayoutController setUnobscuredRange:0];

  [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
}

- (_NSRange)selectionRange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  selectedRange = [_textInputController selectedRange];
  v5 = v4;

  v6 = selectedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)text
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  beginningOfDocument = [(UIFieldEditor *)self beginningOfDocument];
  endOfDocument = [(UIFieldEditor *)self endOfDocument];
  v6 = [(UIFieldEditor *)self textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
  v7 = [_textInputController textInRange:v6];

  return v7;
}

- (UITextPosition)endOfDocument
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  endOfDocument = [_textInputController endOfDocument];

  return endOfDocument;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  font = [WeakRetained font];
  v4 = font;
  if (font)
  {
    v5 = font;
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
  _cuiStyleEffectConfiguration = [WeakRetained _cuiStyleEffectConfiguration];
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  [_textLayoutController setStyleEffectConfiguration:_cuiStyleEffectConfiguration];
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
      _textStorage = [(UIFieldEditor *)self _textStorage];
      v6 = [_textStorage copy];
      originalAttributedString = self->_originalAttributedString;
      self->_originalAttributedString = v6;

      defaultAttributes = [_textStorage defaultAttributes];
      v9 = [defaultAttributes copy];
      originalDefaultAttributes = self->_originalDefaultAttributes;
      self->_originalDefaultAttributes = v9;

      v11 = objc_loadWeakRetained(&self->_textField);
      _textCanvasView = [v11 _textCanvasView];
      objc_storeWeak(&self->_contentView, _textCanvasView);

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
      _textInputSource = [v17 _textInputSource];

      v19 = objc_loadWeakRetained(&self->_textField);
      isFirstResponder = [v19 isFirstResponder];

      if (isFirstResponder && (_textInputSource != 3 || !+[UIScribbleInteraction isScribbleEnabled]))
      {
        [(UIFieldEditor *)self _updateTextSelectionFromBehavior];
      }

      [(UIFieldEditor *)self _applyCorrectTextContainerSize];
      v21 = objc_loadWeakRetained(&self->_textField);
      if ([v21 isFirstResponder])
      {
        _textStorage2 = [(UIFieldEditor *)self _textStorage];
        v23 = [_textStorage2 length];

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
  textColor = [WeakRetained textColor];
  v4 = textColor;
  if (textColor)
  {
    v5 = textColor;
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
  interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
  [interactionAssistant setSelectionDisplayVisible:0];

  interactionAssistant2 = [(UIFieldEditor *)self interactionAssistant];
  [interactionAssistant2 deactivateSelection];
}

- (void)_resetTypingAttributes
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setTypingAttributes:0];
  [_textInputController _invalidateEmptyStringAttributes];
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
  _textInputController = [(UIFieldEditor *)self _textInputController];
  inputDelegate = [_textInputController inputDelegate];

  return inputDelegate;
}

- (UITextInputTokenizer)tokenizer
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  tokenizer = [_textInputController tokenizer];

  return tokenizer;
}

- (id)metadataDictionariesForDictationResults
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  metadataDictionariesForDictationResults = [_textInputController metadataDictionariesForDictationResults];

  return metadataDictionariesForDictationResults;
}

- (BOOL)isFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  isFirstResponder = [WeakRetained isFirstResponder];

  return isFirstResponder;
}

- (BOOL)hasText
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  hasText = [_textInputController hasText];

  return hasText;
}

- (_NSRange)markedRange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  markedRange = [_textInputController markedRange];
  v5 = v4;

  v6 = markedRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  if (notify)
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

- (UIFieldEditor)initWithTextField:(id)field
{
  fieldCopy = field;
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
    v7 = objc_storeWeak(&v6->_textField, fieldCopy);
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
    _autoScrollAssistant = [(UIScrollView *)v6 _autoScrollAssistant];
    [_autoScrollAssistant setAllowedDirections:6];
  }

  return v6;
}

- (void)dealloc
{
  if (self->__textStorage)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*off_1E70ECAC0 object:self->__textStorage];
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
  _textContainer = [(UIFieldEditor *)self _textContainer];
  textLayoutManager = [_textContainer textLayoutManager];

  if (textLayoutManager)
  {
    layoutManager = 0;
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

    _textContainer2 = [(UIFieldEditor *)self _textContainer];
    layoutManager = [_textContainer2 layoutManager];
  }

  return layoutManager;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  [(UIView *)self traitCollection];

  v10.receiver = self;
  v10.super_class = UIFieldEditor;
  [(UIScrollView *)&v10 traitCollectionDidChange:changeCopy];
  _textContainer = [(UIFieldEditor *)self _textContainer];
  textLayoutManager = [_textContainer textLayoutManager];

  if (textLayoutManager)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    keyboardType = [WeakRetained keyboardType];
    v9 = (keyboardType > 0xB) | ((0x6CFu >> keyboardType) & 1);

    if (v9 != [textLayoutManager resolvesNaturalAlignmentWithBaseWritingDirection])
    {
      [textLayoutManager setResolvesNaturalAlignmentWithBaseWritingDirection:v9];
    }
  }
}

- (void)_textStorageDidProcessEditing:(id)editing
{
  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
    [_textLayoutController setUnobscuredRange:0];

    [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
  }

  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplay];

  _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
  [_textCanvasView setNeedsDisplay];

  *&self->_feFlags &= ~0x100u;
}

- (void)_applyCorrectTextContainerSize:(id)size
{
  sizeCopy = size;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  if (WeakRetained)
  {
    _textCanvasView2 = objc_loadWeakRetained(&self->_contentView);
    [_textCanvasView2 bounds];
    v7 = v6;
    v8 = 40000.0;
LABEL_5:

    goto LABEL_6;
  }

  _textCanvasView = [(UIFieldEditor *)self _textCanvasView];

  if (_textCanvasView)
  {
    _textCanvasView2 = [(UIFieldEditor *)self _textCanvasView];
    [_textCanvasView2 bounds];
    v8 = v10;
    v7 = v11;
    goto LABEL_5;
  }

  v8 = 40000.0;
  v7 = 40000.0;
LABEL_6:
  [sizeCopy size];
  v13 = sizeCopy;
  if (v8 != v14 || v7 != v12)
  {
    [sizeCopy setSize:{v8, v7}];
    v16 = objc_loadWeakRetained(&self->__textLayoutController);
    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->__textLayoutController);
      [v17 updateLayoutForSizeChangeOfTextContainer:sizeCopy];
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
    v13 = sizeCopy;
    if (!IsNull)
    {
      [(UIFieldEditor *)self textContainerUsageDidChangeToSize:v23, v25];
      v27 = objc_loadWeakRetained(&self->_contentView);
      [v27 setNeedsDisplay];

      v13 = sizeCopy;
    }
  }
}

- (BOOL)setUpClippingWithMaskForBounds:(CGRect)bounds contentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = bounds.size.width;
  v9 = bounds.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  clipsToBounds = [WeakRetained clipsToBounds];

  if (clipsToBounds)
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
    layer = [(UIView *)self layer];
    mask = [layer mask];

    if (mask)
    {
      [mask frame];
    }

    else
    {
      mask = [MEMORY[0x1E69794A0] layer];
      layer2 = [(UIView *)self layer];
      [layer2 setMask:mask];

      [mask frame];
      if (!mask)
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
      disableActions = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:1];
      if (v36 != v45 || v35 != v46)
      {
        v48 = [UIBezierPath bezierPathWithRect:0.0, 0.0, v36, v35, *&v49, *&v50];
        [mask setPath:{objc_msgSend(v48, "CGPath")}];
      }

      [mask setFrame:{v29, v34, v36, v35, *&v49, *&v50}];
      [MEMORY[0x1E6979518] setDisableActions:disableActions];
    }

    goto LABEL_12;
  }

  return !v37;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  inputCopy = input;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_textField);
    v13 = [v12 keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_textField);
    v14 = [v13 keyboardInput:inputCopy shouldReplaceTextInRange:location replacementText:{length, textCopy}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  deleteCopy = delete;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 keyboardInputShouldDelete:deleteCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)keyboardInputChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_textField);
    v8 = [v7 keyboardInputChanged:changedCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)keyboardInputChangedSelection:(id)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_textField);
    [v6 keyboardInputChangedSelection:selectionCopy];
  }
}

- (void)textInputDidChange:(id)change
{
  if (*&self->_feFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    [WeakRetained fieldEditorDidChange:self];
  }
}

- (void)textInputDidChangeSelection:(id)selection
{
  selectionCopy = selection;
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

- (_NSRange)textInput:(id)input willChangeSelectionFromCharacterRange:(_NSRange)range toCharacterRange:(_NSRange)characterRange
{
  length = characterRange.length;
  location = characterRange.location;
  v7 = range.length;
  v8 = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v11 = [WeakRetained fieldEditor:self willChangeSelectionFromCharacterRange:v8 toCharacterRange:{v7, location, length}];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)textInput:(id)input willChangeSelectionFromCharacterRanges:(id)ranges toCharacterRanges:(id)characterRanges
{
  characterRangesCopy = characterRanges;
  rangesCopy = ranges;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v10 = [WeakRetained fieldEditor:self willChangeSelectionFromCharacterRanges:rangesCopy toCharacterRanges:characterRangesCopy];

  return v10;
}

- (BOOL)textInput:(id)input shouldChangeCharactersInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696B098];
  textCopy = text;
  inputCopy = input;
  v12 = [v9 valueWithRange:{location, length}];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(length) = [(UIFieldEditor *)self textInput:inputCopy shouldChangeCharactersInRanges:v13 replacementText:textCopy];

  return length;
}

- (BOOL)textInput:(id)input shouldChangeCharactersInRanges:(id)ranges replacementText:(id)text
{
  textCopy = text;
  rangesCopy = ranges;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  LOBYTE(self) = [WeakRetained fieldEditor:self shouldInsertText:textCopy replacingRanges:rangesCopy];

  return self;
}

- (void)textInput:(id)input prepareAttributedTextForInsertion:(id)insertion
{
  insertionCopy = insertion;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  mutableString = [insertionCopy mutableString];

  [WeakRetained _sanitizeText:mutableString];
}

- (BOOL)textInputShouldExtendCaretHeight:(id)height
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  LOBYTE(selfCopy) = [WeakRetained fieldEditorShouldExtendCaretHeight:selfCopy];

  return selfCopy;
}

- (void)setPadding:(UIEdgeInsets)padding
{
  self->_padding = padding;
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

- (CGRect)_responderExternalTouchRectForWindow:(id)window
{
  windowCopy = window;
  interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
  dynamicCaretView = [interactionAssistant dynamicCaretView];

  if (dynamicCaretView)
  {
    [dynamicCaretView bounds];
    [windowCopy convertRect:dynamicCaretView fromView:?];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UIFieldEditor;
    [(UIView *)&v19 _responderExternalTouchRectForWindow:windowCopy];
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)textInputTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textField);
    selfCopy = [v5 textInputTraits];
  }

  else
  {
    selfCopy = self;
    [(UIFieldEditor *)selfCopy setToDefaultValues];
  }

  return selfCopy;
}

- (id)textColorForCaretSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textField);
    textColor = [v5 textColor];
  }

  else
  {
    textColor = +[UIColor blackColor];
  }

  return textColor;
}

- (void)startAutoscroll:(CGPoint)autoscroll
{
  y = autoscroll.y;
  x = autoscroll.x;
  if (!self->_autoscroll)
  {
    v6 = objc_alloc_init(UIAutoscroll);
    autoscroll = self->_autoscroll;
    self->_autoscroll = v6;
  }

  selfCopy = self;
  [(UIFieldEditor *)selfCopy _selectionClipRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)selfCopy contentSize];
  v17 = v16;
  scrollXOffset = [(UIFieldEditor *)selfCopy scrollXOffset];
  if (scrollXOffset >= 1)
  {
    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    if (x < CGRectGetMinX(v23) + 16.0)
    {
      v19 = 1;
LABEL_9:
      [(UIAutoscroll *)self->_autoscroll startAutoscroll:selfCopy scrollContainer:selfCopy point:v19 directions:x repeatInterval:y, 0.075];
      goto LABEL_13;
    }
  }

  v20 = v17 - v13;
  if (scrollXOffset < v20)
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
    [(UIFieldEditor *)selfCopy autoscrollWillNotStart];
  }

  [(UIFieldEditor *)selfCopy cancelAutoscroll];
LABEL_13:
}

- (void)updateAutoscroll:(id)autoscroll
{
  autoscrollCopy = autoscroll;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_textField), [v6 interactionAssistant], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    [(UIFieldEditor *)self cancelAutoscroll];
    goto LABEL_24;
  }

  scrollXOffset = [(UIFieldEditor *)self scrollXOffset];
  scrollYOffset = [(UIFieldEditor *)self scrollYOffset];
  if ([autoscrollCopy count] > 4)
  {
    v10 = 10;
  }

  else
  {
    v10 = (1.0 / (6 - [autoscrollCopy count]) * 10.0);
  }

  directions = [autoscrollCopy directions];
  v12 = directions;
  if (directions)
  {
    if (scrollXOffset > 0)
    {
      v13 = 0;
      scrollXOffset = (scrollXOffset - v10);
      goto LABEL_16;
    }

    v13 = 0;
    if ((directions & 0xFFFFFFFE) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((directions & 2) == 0)
    {
      v13 = 0;
      if (!directions)
      {
        goto LABEL_22;
      }

LABEL_16:
      [(UIFieldEditor *)self setScrollXOffset:scrollXOffset scrollYOffset:scrollYOffset adjustForPurpleCaret:v13];
      [v7 setAutoscrolled:1];
      interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
      activeSelection = [interactionAssistant activeSelection];

      textInputView = [(UIFieldEditor *)self textInputView];
      [v7 autoscrollUntransformedExtentPoint];
      [textInputView convertPoint:0 fromView:?];
      v22 = v21;
      v24 = v23;

      selectedRange = [activeSelection selectedRange];
      isEmpty = [selectedRange isEmpty];

      if (isEmpty)
      {
        [activeSelection setSelectionWithPoint:{v22, v24}];
        [activeSelection commit];
      }

      else
      {
        selectedRange2 = [activeSelection selectedRange];

        if (selectedRange2)
        {
          interactionAssistant2 = [(UIFieldEditor *)self interactionAssistant];
          [interactionAssistant2 updateSelectionWithPoint:{v22, v24}];

          interactionAssistant3 = [(UIFieldEditor *)self interactionAssistant];
          [interactionAssistant3 updateDisplayedSelection];
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
    if (v17 - v16 > scrollXOffset)
    {
      scrollXOffset = (v10 + scrollXOffset);
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

- (CGRect)contentFrameForView:(id)view
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
    visualStyle = [v6 visualStyle];
    defaultTextColorForKeyboardAppearance = [visualStyle defaultTextColorForKeyboardAppearance];
    [(UIFieldEditor *)self setTextColor:defaultTextColorForKeyboardAppearance];
  }
}

- (void)deactivateEditorDiscardingEdits:(BOOL)edits
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_contentView);

    if (v7)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"UITextSelectionDidScroll" object:self];

      if (edits)
      {
        _textStorage = [(UIFieldEditor *)self _textStorage];
        [_textStorage setDefaultAttributes:self->_originalDefaultAttributes];

        _textStorage2 = [(UIFieldEditor *)self _textStorage];
        [_textStorage2 setAttributedString:self->_originalAttributedString];
      }

      originalAttributedString = self->_originalAttributedString;
      self->_originalAttributedString = 0;

      originalDefaultAttributes = self->_originalDefaultAttributes;
      self->_originalDefaultAttributes = 0;

      [(UIFieldEditor *)self _cancelObscureAllTextTimer];
      [(UIFieldEditor *)self _deactivateSelectionView];
      [(UIFieldEditor *)self _resetTypingAttributes];
      _inputController = [(UIFieldEditor *)self _inputController];
      [_inputController didEndEditing];

      [(UIFieldEditor *)self _handleObscuredTextAfterActivationChange];
      v14 = objc_loadWeakRetained(&self->_contentView);
      [v14 setUserInteractionEnabled:0];

      objc_storeWeak(&self->_contentView, 0);

      [(UIFieldEditor *)self _applyCorrectTextContainerSize];
    }
  }
}

- (void)_setValue:(id)value forTextAttribute:(id)attribute
{
  attributeCopy = attribute;
  valueCopy = value;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  typingAttributes = [_textInputController typingAttributes];
  v9 = [typingAttributes mutableCopy];

  [v9 setObject:valueCopy forKey:attributeCopy];
  [_textInputController setTypingAttributes:v9];
  _textStorage = [(UIFieldEditor *)self _textStorage];
  [_textStorage beginEditing];
  [_textStorage addAttribute:attributeCopy value:valueCopy range:{0, objc_msgSend(_textStorage, "length")}];

  [_textStorage endEditing];
}

- (_NSRange)_unobscuredSecureRange
{
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  unobscuredRange = [_textLayoutController unobscuredRange];
  v4 = [_textLayoutController characterRangeForTextRange:unobscuredRange];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)layoutManager:(id)manager effectiveCUICatalogForTextEffect:(id)effect
{
  effectCopy = effect;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  _cuiCatalog = [WeakRetained _cuiCatalog];

  LODWORD(WeakRetained) = [_cuiCatalog hasStylePresetWithName:effectCopy];
  if (WeakRetained)
  {
    v8 = _cuiCatalog;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setTypingAttributes:(id)attributes
{
  attributesCopy = attributes;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setTypingAttributes:attributesCopy];

  _textContainer = [(UIFieldEditor *)self _textContainer];
  [_textContainer setAttributesForExtraLineFragment:attributesCopy];

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
  keyboardType = [WeakRetained keyboardType];
  if (keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0)
  {

    v7 = objc_loadWeakRetained(&self->_textField);
    textAlignment = [v7 textAlignment];
  }

  else
  {

    v7 = objc_loadWeakRetained(&self->_textField);
    textAlignment = [v7 _currentTextAlignment];
  }

  [v3 setAlignment:textAlignment];

  v9 = objc_loadWeakRetained(&self->_textField);
  [v3 setLineBreakMode:{objc_msgSend(v9, "_lineBreakMode")}];

  v14[0] = *off_1E70EC918;
  font = [(UIFieldEditor *)self font];
  v15[0] = font;
  v14[1] = *off_1E70EC920;
  textColor = [(UIFieldEditor *)self textColor];
  v14[2] = *off_1E70EC988;
  v15[1] = textColor;
  v15[2] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setTypingAttributes:v12];
}

- (void)_setTextInRange:(_NSRange)range replacementText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText
{
  afterTextCopy = afterText;
  length = range.length;
  location = range.location;
  textCopy = text;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  typingAttributes = [_textInputController typingAttributes];

  v11 = objc_alloc(MEMORY[0x1E696AD40]);
  if (textCopy)
  {
    v12 = textCopy;
  }

  else
  {
    v12 = &stru_1EFB14550;
  }

  v13 = [v11 initWithString:v12 attributes:typingAttributes];

  [(UIFieldEditor *)self _setAttributedTextInRange:location replacementText:length andSetCaretSelectionAfterText:v13, afterTextCopy];
  [(UIFieldEditor *)self scrollSelectionToVisible:0];
}

- (void)setText:(id)text
{
  textCopy = text;
  text = [(UIFieldEditor *)self text];
  -[UIFieldEditor _setTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [text length], textCopy, 1);
}

- (void)setText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText
{
  afterTextCopy = afterText;
  textCopy = text;
  text = [(UIFieldEditor *)self text];
  -[UIFieldEditor _setTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [text length], textCopy, afterTextCopy);
}

- (void)addTextAlternativesDisplayStyle:(int64_t)style toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  v8 = [_textLayoutController textRangeForCharacterRange:{location, length}];
  v9 = *off_1E70ECA00;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [_textLayoutController addAnnotationAttribute:v9 value:v10 forRange:v8];

  [_textLayoutController boundingRectForCharacterRange:{location, length}];
  [(UIView *)self setNeedsDisplayInRect:?];
}

- (void)_setAttributedTextInRange:(_NSRange)range replacementText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText
{
  afterTextCopy = afterText;
  length = range.length;
  location = range.location;
  textCopy = text;
  attributedText = [(UIFieldEditor *)self attributedText];
  v11 = [attributedText attributedSubstringFromRange:{location, length}];
  v12 = [v11 isEqual:textCopy];

  if ((v12 & 1) == 0)
  {
    if (location)
    {
      v13 = 0;
    }

    else
    {
      _textStorage = [(UIFieldEditor *)self _textStorage];
      v13 = length == [_textStorage length];
    }

    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v16 = WeakRetained;
    if (WeakRetained)
    {
      selfCopy = WeakRetained;
    }

    else
    {
      selfCopy = self;
    }

    v18 = selfCopy;

    inputDelegate = [(UIFieldEditor *)self inputDelegate];
    [inputDelegate textWillChange:v18];
    _textStorage2 = [(UIFieldEditor *)self _textStorage];
    v21 = [_textStorage2 length];
    if (!v13)
    {

      if (v21 < location + length)
      {
        goto LABEL_14;
      }

      _textStorage3 = [(UIFieldEditor *)self _textStorage];
      v23 = [_textStorage3 length];

      _textStorage2 = [(UIFieldEditor *)self _textStorage];
      v24 = [_textStorage2 length];
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
    _textInputController = [(UIFieldEditor *)self _textInputController];
    _textStorage4 = [(UIFieldEditor *)self _textStorage];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __89__UIFieldEditor__setAttributedTextInRange_replacementText_andSetCaretSelectionAfterText___block_invoke;
    v36[3] = &unk_1E7126120;
    v38 = location;
    v39 = length;
    v27 = textCopy;
    v37 = v27;
    [_textStorage4 coordinateEditing:v36];

    if (v27)
    {
      if (!afterTextCopy)
      {
LABEL_17:
        [inputDelegate textDidChange:v18];
        v29 = *off_1E70EC9F8;
        v30 = [v27 length];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __89__UIFieldEditor__setAttributedTextInRange_replacementText_andSetCaretSelectionAfterText___block_invoke_2;
        v31[3] = &unk_1E7126148;
        v34 = location;
        v35 = length;
        textCopy = v27;
        v32 = textCopy;
        selfCopy2 = self;
        [textCopy enumerateAttribute:v29 inRange:0 options:v30 usingBlock:{0, v31}];

        goto LABEL_18;
      }
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
      if (!afterTextCopy)
      {
        goto LABEL_17;
      }
    }

    _textStorage5 = [(UIFieldEditor *)self _textStorage];
    [_textInputController setSelectedRange:{objc_msgSend(_textStorage5, "length"), 0}];

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
  _textInputController = [(UIFieldEditor *)self _textInputController];
  filteredAttributedText = [_textInputController filteredAttributedText];

  return filteredAttributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  attributedText = [(UIFieldEditor *)self attributedText];
  -[UIFieldEditor _setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [attributedText length], textCopy, 1);
}

- (void)setAttributedText:(id)text andSetCaretSelectionAfterText:(BOOL)afterText
{
  afterTextCopy = afterText;
  textCopy = text;
  attributedText = [(UIFieldEditor *)self attributedText];
  -[UIFieldEditor _setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:](self, "_setAttributedTextInRange:replacementText:andSetCaretSelectionAfterText:", 0, [attributedText length], textCopy, afterTextCopy);
}

- (void)setScrollXOffset:(int)offset scrollYOffset:(int)yOffset adjustForPurpleCaret:(BOOL)caret
{
  [(UIFieldEditor *)self setContentOffset:offset, yOffset];

  [(UIView *)self setNeedsDisplay];
}

- (void)setSelection:(_NSRange)selection
{
  length = selection.length;
  location = selection.location;
  WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);
  v6 = [WeakRetained textRangeForCharacterRange:{location, length}];
  [(UIFieldEditor *)self setSelectedTextRange:v6];
}

- (id)selectionRanges
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  selectedRanges = [_textInputController selectedRanges];

  return selectedRanges;
}

- (void)setSelectionRanges:(id)ranges
{
  v16[1] = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  if (![rangesCopy count])
  {
    selectionRanges = [(UIFieldEditor *)self selectionRanges];
    lastObject = [selectionRanges lastObject];
    if (lastObject)
    {
      selectionRanges2 = [(UIFieldEditor *)self selectionRanges];
      lastObject2 = [selectionRanges2 lastObject];
      rangeValue = [lastObject2 rangeValue];
      v11 = v10;
    }

    else
    {
      rangeValue = 0;
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue + v11, 0}];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

    rangesCopy = v13;
  }

  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setSelectedRanges:rangesCopy];

  interactionAssistant = [(UIFieldEditor *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];
}

- (void)_performWhileSuppressingDelegateNotifications:(id)notifications
{
  notificationsCopy = notifications;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController _performWhileSuppressingDelegateNotifications:notificationsCopy];
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

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  _scrollAnimationEndedAction = [(UIFieldEditor *)self _scrollAnimationEndedAction];
  if (_scrollAnimationEndedAction)
  {
    v7 = _scrollAnimationEndedAction;
    [(UIFieldEditor *)self _setScrollAnimationEndedAction:0];
    v7[2](v7, finishedCopy);
    _scrollAnimationEndedAction = v7;
  }
}

- (void)_scrollRangeToVisible:(_NSRange)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  location = visible.location;
  v30 = [(UIFieldEditor *)self _textLayoutController:visible.location];
  documentRange = [v30 documentRange];
  [v30 ensureLayoutForRange:documentRange];

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
  textInputView = [(UIFieldEditor *)self textInputView];
  [(UIView *)self convertRect:textInputView fromView:x, y, width, height];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(UIScrollView *)self scrollRectToVisible:animatedCopy animated:v23, v25, v27, v29];
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  -[UIFieldEditor _scrollRangeToVisible:animated:](self, "_scrollRangeToVisible:animated:", [_textInputController selectedRange], 0, visibleCopy);
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  if ((*&self->_feFlags & 0x80) == 0)
  {
    animatedCopy = animated;
    y = offset.y;
    x = offset.x;
    [(UIScrollView *)self contentOffset];
    if (x != v9 || y != v8)
    {
      v11.receiver = self;
      v11.super_class = UIFieldEditor;
      [(UIScrollView *)&v11 setContentOffset:animatedCopy animated:x, y];
    }
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  if ((*&self->_feFlags & 0x80) == 0)
  {
    y = offset.y;
    x = offset.x;
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
  _textInputController = [(UIFieldEditor *)self _textInputController];
  undoManager = [_textInputController undoManager];

  return undoManager;
}

- (int64_t)nonEditingLinebreakMode
{
  _textStorage = [(UIFieldEditor *)self _textStorage];
  lineBreakMode = [_textStorage lineBreakMode];

  return lineBreakMode;
}

- (void)setNonEditingLinebreakMode:(int64_t)mode
{
  _textStorage = [(UIFieldEditor *)self _textStorage];
  [_textStorage setLineBreakMode:mode];
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
    _textInputController = [(UIFieldEditor *)self _textInputController];
    if ([_textInputController hasText])
    {
      [_textInputController clearText];
    }

    *&self->_feFlags &= ~0x20u;
  }

  return (*&feFlags >> 5) & 1;
}

- (void)_handleObscuredTextInputIfNecessaryWithEditingBlock:(id)block
{
  blockCopy = block;
  if (![(UIFieldEditor *)self _shouldObscureInput])
  {
    _textInputController = [(UIFieldEditor *)self _textInputController];
    blockCopy[2](blockCopy, _textInputController);

    goto LABEL_8;
  }

  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  [_textLayoutController resetFontForExtraBulletRendering];

  [(UIFieldEditor *)self _cancelObscureAllTextTimer];
  _textInputController2 = [(UIFieldEditor *)self _textInputController];
  selectedRange = [_textInputController2 selectedRange];
  v9 = v8;

  _textInputController3 = [(UIFieldEditor *)self _textInputController];
  blockCopy[2](blockCopy, _textInputController3);

  _textInputController4 = [(UIFieldEditor *)self _textInputController];
  selectedRange2 = [_textInputController4 selectedRange];

  if (![(UIFieldEditor *)self _shouldObscureNextInput])
  {
    _textInputController = [(UIFieldEditor *)self _textStorage];
    v19.length = [_textInputController length];
    v18.location = selectedRange + v9;
    v18.length = selectedRange2 - (selectedRange + v9);
    v19.location = 0;
    v13 = NSIntersectionRange(v18, v19);
    if (v13.length)
    {
      if ([(UIFieldEditor *)self isFirstResponder])
      {
        string = [_textInputController string];
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(string, v13.length + v13.location - 1);

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

- (_NSRange)insertFilteredText:(id)text
{
  textCopy = text;
  v5 = [textCopy isEqualToString:@"\n"];
  if ((*&self->_feFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    v7 = [WeakRetained fieldEditor:self shouldReplaceWithText:textCopy];

    if (v7)
    {
      text = [(UIFieldEditor *)self text];
      -[UIFieldEditor setSelection:](self, "setSelection:", 0, [text length]);
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
    _shouldResignOnEditingDidEndOnExit = [v12 _shouldResignOnEditingDidEndOnExit];

    if (_shouldResignOnEditingDidEndOnExit)
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
    v17 = textCopy;
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

- (void)_unobscureTextInRange:(_NSRange)range settingTimerToReobscure:(BOOL)reobscure
{
  reobscureCopy = reobscure;
  length = range.length;
  location = range.location;
  _textStorage = [(UIFieldEditor *)self _textStorage];
  v16.length = [_textStorage length];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);

  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  v10 = [_textLayoutController textRangeForCharacterRange:{v9.location, v9.length}];
  [_textLayoutController setUnobscuredRange:v10];
  [_textLayoutController invalidateLayoutForRange:v10];
  if (reobscureCopy)
  {
    [(UIFieldEditor *)self _cancelObscureAllTextTimer];
    v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__obscureAllText selector:0 userInfo:0 repeats:2.0];
    obscureAllTextTimer = self->_obscureAllTextTimer;
    self->_obscureAllTextTimer = v11;
  }

  [(UIFieldEditor *)self _setNeedsInvalidateAfterObscuredRangeChange];
}

- (void)_ephemerallyUnobscureCharacterAtIndex:(unint64_t)index
{
  _textStorage = [(UIFieldEditor *)self _textStorage];
  if ([_textStorage length])
  {
    string = [_textStorage string];
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(string, index);

    if (RangeOfComposedCharactersAtIndex.length >= 1)
    {
      [(UIFieldEditor *)self _unobscureTextInRange:RangeOfComposedCharactersAtIndex.location settingTimerToReobscure:RangeOfComposedCharactersAtIndex.length, 1];
    }
  }
}

- (void)_ephemerallyUnobscureTextInRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    _textStorage = [(UIFieldEditor *)self _textStorage];
    if ([_textStorage length])
    {
      [(UIFieldEditor *)self _unobscureTextInRange:location settingTimerToReobscure:length, 1];
    }
  }
}

- (void)deleteBackward
{
  if (![(UIFieldEditor *)self _clearOnEditIfNeeded])
  {
    _textInputController = [(UIFieldEditor *)self _textInputController];
    [_textInputController deleteBackward];

    _textStorage = [(UIFieldEditor *)self _textStorage];
    v5 = [_textStorage length];

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

- (id)textInRange:(id)range
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController textInRange:rangeCopy];

  return v6;
}

- (void)insertAttributedText:(id)text
{
  textCopy = text;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController insertAttributedText:textCopy];
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController attributedTextInRange:rangeCopy];

  return v6;
}

- (void)replaceRange:(id)range withText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController replaceRange:rangeCopy withText:textCopy];
}

- (id)replaceRange:(id)range withAttributedText:(id)text updatingSelection:(BOOL)selection
{
  selectionCopy = selection;
  textCopy = text;
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v11 = [_textInputController replaceRange:rangeCopy withAttributedText:textCopy updatingSelection:selectionCopy];

  return v11;
}

- (void)replaceRangeWithTextWithoutClosingTyping:(id)typing replacementText:(id)text
{
  typingCopy = typing;
  textCopy = text;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__UIFieldEditor_replaceRangeWithTextWithoutClosingTyping_replacementText___block_invoke;
  v10[3] = &unk_1E7126198;
  v11 = typingCopy;
  v12 = textCopy;
  v8 = textCopy;
  v9 = typingCopy;
  [(UIFieldEditor *)self _handleObscuredTextInputIfNecessaryWithEditingBlock:v10];
}

- (void)clearText
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController clearText];
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  _isPasscodeStyle = [WeakRetained _isPasscodeStyle];

  if (_isPasscodeStyle)
  {
    _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
    v8 = [rangeCopy end];

    _textInputController2 = [_textLayoutController emptyTextRangeAtPosition:v8];

    _textInputController = [(UIFieldEditor *)self _textInputController];
    [_textInputController setSelectedTextRange:_textInputController2];

    if ([(UIFieldEditor *)self _shouldObscureInput])
    {
      [(UIFieldEditor *)self _obscureAllText];
    }

    rangeCopy = [(UIFieldEditor *)self interactionAssistant];
    [rangeCopy selectionChanged];
  }

  else
  {
    _textInputController2 = [(UIFieldEditor *)self _textInputController];
    [_textInputController2 setSelectedTextRange:rangeCopy];
  }
}

- (NSDictionary)markedTextStyle
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  markedTextStyle = [_textInputController markedTextStyle];

  return markedTextStyle;
}

- (void)setMarkedTextStyle:(id)style
{
  styleCopy = style;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setMarkedTextStyle:styleCopy];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  markedTextRange = [(UIFieldEditor *)self markedTextRange];
  if (!markedTextRange || (v9 = markedTextRange, -[UIFieldEditor markedTextRange](self, "markedTextRange"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEmpty], v10, v9, v11))
  {
    [(UIFieldEditor *)self _clearOnEditIfNeeded];
  }

  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setMarkedText:textCopy selectedRange:{location, length}];

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setAttributedMarkedText:textCopy selectedRange:{location, length}];

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {

    [(UIFieldEditor *)self _obscureAllText];
  }
}

- (void)unmarkText
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController unmarkText];
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v9 = [_textInputController textRangeFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v8 = [_textInputController positionFromPosition:positionCopy offset:offset];

  return v8;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v10 = [_textInputController positionFromPosition:positionCopy inDirection:direction offset:offset];

  return v10;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v9 = [_textInputController comparePosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v9 = [_textInputController offsetFromPosition:positionCopy toPosition:toPositionCopy];

  return v9;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v8 = [_textInputController positionWithinRange:rangeCopy farthestInDirection:direction];

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v8 = [_textInputController characterRangeByExtendingPosition:positionCopy inDirection:direction];

  return v8;
}

- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction
{
  y = point.y;
  x = point.x;
  positionCopy = position;
  extentCopy = extent;
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  v14 = [_textLayoutController _visualSelectionRangeForExtent:extentCopy forPoint:positionCopy fromPosition:direction inDirection:{x, y}];

  return v14;
}

- (void)setInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setInputDelegate:delegateCopy];
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v8 = [_textInputController baseWritingDirectionForPosition:positionCopy inDirection:direction];

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController setBaseWritingDirection:direction forRange:rangeCopy];

  _textStorage = [(UIFieldEditor *)self _textStorage];
  if (![_textStorage length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_textField);
    _shouldIgnoreBaseWritingDirectionChanges = [WeakRetained _shouldIgnoreBaseWritingDirectionChanges];

    if (_shouldIgnoreBaseWritingDirectionChanges)
    {
      _textInputController2 = [(UIFieldEditor *)self _textInputController];
      [_textInputController2 _updateEmptyStringAttributes];
    }

    else
    {
      [_textStorage setDefaultBaseWritingDirection:direction];
    }
  }
}

- (CGRect)firstRectForRange:(id)range
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController firstRectForRange:rangeCopy];
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

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController caretRectForPosition:positionCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
    unobscuredRange = [_textLayoutController unobscuredRange];
    isEmpty = [unobscuredRange isEmpty];

    if (isEmpty)
    {
      font = [(UIFieldEditor *)self font];
      [font lineHeight];
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

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController selectionRectsForRange:rangeCopy];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController closestPositionToPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v9 = [_textInputController closestPositionToPoint:rangeCopy withinRange:{x, y}];

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController characterRangeAtPoint:{x, y}];

  return v6;
}

- (BOOL)isEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  isFirstResponder = [WeakRetained isFirstResponder];

  return isFirstResponder;
}

- (void)insertDictationResult:(id)result withCorrectionIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__UIFieldEditor_insertDictationResult_withCorrectionIdentifier___block_invoke;
  v10[3] = &unk_1E7126198;
  v11 = resultCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = resultCopy;
  [(UIFieldEditor *)self _handleObscuredTextInputIfNecessaryWithEditingBlock:v10];
}

- (id)insertDictationResultPlaceholder
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  insertDictationResultPlaceholder = [_textInputController insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (CGRect)frameForDictationResultPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController frameForDictationResultPlaceholder:placeholderCopy];
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

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  resultCopy = result;
  placeholderCopy = placeholder;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController removeDictationResultPlaceholder:placeholderCopy willInsertResult:resultCopy];
}

- (id)insertTextPlaceholderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v6 = [_textInputController insertTextPlaceholderWithSize:{width, height}];

  return v6;
}

- (void)removeTextPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController removeTextPlaceholder:placeholderCopy];
}

- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position
{
  positionCopy = position;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  v8 = [_textInputController rangeWithTextAlternatives:alternatives atPosition:positionCopy];

  return v8;
}

- (void)beginSelectionChange
{
  *&self->_feFlags |= 0x10u;
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController beginSelectionChange];
}

- (void)endSelectionChange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  [_textInputController endSelectionChange];

  *&self->_feFlags &= ~0x10u;
}

- (unint64_t)layoutManager:(id)manager shouldGenerateGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range
{
  managerCopy = manager;
  fontCopy = font;
  _textInputTraits = [(UIFieldEditor *)self _textInputTraits];
  if ([_textInputTraits isSecureTextEntry])
  {
    if (([_textInputTraits displaySecureEditsUsingPlainText] & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_textField), v17 = objc_msgSend(WeakRetained, "_shouldUnobscureTextWithContentCover"), WeakRetained, v17))
    {
      v30 = fontCopy;
      glyphsCopy2 = glyphs;
      propertiesCopy2 = properties;
      indexesCopy2 = indexes;
      obscuredSecureLength = self->_obscuredSecureLength;
      v22 = managerCopy;
      textStorage = [managerCopy textStorage];
      v24 = [textStorage length] - self->_obscuredSecureLength;
LABEL_7:

      indexes = indexesCopy2;
      properties = propertiesCopy2;
      glyphs = glyphsCopy2;
      fontCopy = v30;
      managerCopy = v22;
      goto LABEL_9;
    }
  }

  if ([(UIFieldEditor *)self _shouldObscureInput])
  {
    v22 = managerCopy;
    v30 = fontCopy;
    glyphsCopy2 = glyphs;
    propertiesCopy2 = properties;
    indexesCopy2 = indexes;
    textStorage = [(UIFieldEditor *)self _textLayoutController];
    unobscuredRange = [textStorage unobscuredRange];
    obscuredSecureLength = [textStorage characterRangeForTextRange:unobscuredRange];
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
    v27 = [managerCopy _generateBulletGlyphs:glyphs properties:properties characterIndexes:indexes font:fontCopy forGlyphRange:range.location unobscuredRange:{range.length, obscuredSecureLength, v24}];
    if (v27 >= 1)
    {
      _textInputController = [(UIFieldEditor *)self _textInputController];
      [_textInputController _selectionGeometryChanged];
    }
  }

  return v27;
}

- (int64_t)layoutManager:(id)manager shouldUseAction:(int64_t)action forControlCharacterAtIndex:(unint64_t)index
{
  managerCopy = manager;
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  unobscuredRange = [_textLayoutController unobscuredRange];
  v11 = [_textLayoutController characterRangeForTextRange:unobscuredRange];
  v13 = v12;

  if (action == 1)
  {
    if (index < v11 || index - v11 >= v13)
    {
      controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
      textStorage = [managerCopy textStorage];
      string = [textStorage string];
      v17 = [controlCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", index)}];

      if (v17)
      {
        action = 1;
      }

      else
      {
        action = 2;
      }
    }

    else
    {
      action = 1;
    }
  }

  return action;
}

- (CGRect)layoutManager:(id)manager boundingBoxForControlGlyphAtIndex:(unint64_t)index forTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)characterIndex
{
  managerCopy = manager;
  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  unobscuredRange = [_textLayoutController unobscuredRange];
  v13 = [_textLayoutController characterRangeForTextRange:unobscuredRange];
  v15 = v14;

  [managerCopy _boundingBoxForBulletAtCharIndex:characterIndex inUnobscuredRange:{v13, v15}];
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

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  if (container)
  {
    [manager _completeBulletRenderingForTextContainer:container];
  }
}

- (void)setTextContainer:(id)container
{
  containerCopy = container;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  WeakRetained = objc_loadWeakRetained(&self->__textContainer);

  if (has_internal_diagnostics)
  {
    if (WeakRetained != containerCopy)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "unexpected different text container", buf, 2u);
      }
    }
  }

  else if (WeakRetained != containerCopy)
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
  _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
  [_textCanvasView bounds];
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

- (CGPoint)textContainerOriginForTextAlignment:(int64_t)alignment
{
  WeakRetained = objc_loadWeakRetained(&self->__textLayoutController);

  if (!WeakRetained)
  {
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    goto LABEL_18;
  }

  superview = [(UIView *)self superview];
  if (superview && (v3 = objc_loadWeakRetained(&self->_textField), [v3 _tvHasFloatingFieldEditor]))
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

    if (!superview)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (alignment == 2)
  {
    _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
    [_textCanvasView bounds];
    Width = CGRectGetWidth(v32);
    _textContainer = [(UIFieldEditor *)self _textContainer];
    [_textContainer size];
    v9 = Width - v20;
    goto LABEL_12;
  }

  if (alignment == 1)
  {
    _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
    [_textCanvasView bounds];
    v16 = CGRectGetWidth(v31);
    _textContainer = [(UIFieldEditor *)self _textContainer];
    [_textContainer size];
    v9 = (v16 - v18) * 0.5;
LABEL_12:
  }

  _textLayoutController = [(UIFieldEditor *)self _textLayoutController];
  [_textLayoutController baselineOffsetForFirstGlyph];
  v23 = v22;

  UIRoundToViewScale(self);
  v25 = v8 + v24 - v23;
  [(UIFieldEditor *)self _contentInsetsFromFonts];
  v28 = v27;
  v10 = v9 - v29;
  if (alignment == 2)
  {
    v10 = v9 + v26;
  }

  if (alignment == 1)
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

- (void)setConstrainedFrameSize:(CGSize)size
{
  self->_desiredContentWidth = ceil(size.width);
  _textCanvasView = [(UIFieldEditor *)self _textCanvasView];
  [_textCanvasView setNeedsLayout];

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

- (void)setNeedsDisplayInRect:(CGRect)rect avoidAdditionalLayout:(BOOL)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsDisplayInRect:{x, y, width, height}];
}

- (id)linkTextAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);
  linkTextAttributes = [WeakRetained linkTextAttributes];

  return linkTextAttributes;
}

- (id)attributedSubstringForMarkedRange
{
  _textInputController = [(UIFieldEditor *)self _textInputController];
  attributedSubstringForMarkedRange = [_textInputController attributedSubstringForMarkedRange];

  return attributedSubstringForMarkedRange;
}

- (void)setSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  _textInputTraits = [(UIFieldEditor *)self _textInputTraits];
  [_textInputTraits setSecureTextEntry:entryCopy];

  _shouldObscureInput = [(UIFieldEditor *)self _shouldObscureInput];
  feFlags = self->_feFlags;
  if (_shouldObscureInput)
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

- (void)setDisplaySecureEditsUsingPlainText:(BOOL)text
{
  textCopy = text;
  _textInputTraits = [(UIFieldEditor *)self _textInputTraits];
  [_textInputTraits setDisplaySecureEditsUsingPlainText:textCopy];

  if (textCopy)
  {
    _textStorage = [(UIFieldEditor *)self _textStorage];
    self->_obscuredSecureLength = [_textStorage length];
  }

  else
  {
    *&self->_feFlags &= ~0x20u;
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() instancesRespondToSelector:selector])
  {
    _textInputTraits = [(UIFieldEditor *)self _textInputTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIFieldEditor;
    _textInputTraits = [(UIFieldEditor *)&v7 forwardingTargetForSelector:selector];
  }

  return _textInputTraits;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = UIFieldEditor;
  if ([(UIFieldEditor *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [objc_opt_class() instancesRespondToSelector:selector];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
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