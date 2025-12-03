@interface WFSlotTemplateView
+ (double)heightForWidth:(double)width withContents:(id)contents horizontalPadding:(double)padding font:(id)font unpopulatedFont:(id)unpopulatedFont alignment:(int64_t)alignment useCase:(unint64_t)case;
+ (id)paragraphStyleWithAlignment:(int64_t)alignment;
- (BOOL)extendSlotBackgroundOffEdges;
- (BOOL)shouldPresentMenuAboveView;
- (BOOL)shouldRecognizeTapOnTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier;
- (BOOL)startEditingHighlightedSlot;
- (BOOL)textAttachmentInteraction:(id)interaction shouldRecognizeTapOnTextAttachment:(id)attachment inCharacterRange:(_NSRange)range;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CGRect)presentedMenuTargetedPreviewSlotFrame;
- (CGRect)sourceRectForSlot:(id)slot;
- (CGRect)sourceRectForSlotWithIdentifier:(id)identifier;
- (NSArray)accessibilityElements;
- (NSParagraphStyle)paragraphStyle;
- (NSString)suffixString;
- (UIButton)disclosureButton;
- (UIButton)outputButton;
- (UIColor)disabledSlotBackgroundColor;
- (UIColor)disabledSlotTitleColor;
- (UIColor)suffixColor;
- (UIColor)textColor;
- (UIFont)font;
- (UIFont)suffixFont;
- (UIFont)unpopulatedFont;
- (WFSlotIdentifier)selectedSlotIdentifier;
- (WFSlotTemplateView)initWithUseCase:(unint64_t)case;
- (WFSlotTemplateViewDelegate)delegate;
- (double)heightForWidth:(double)width;
- (double)singleLineHeight;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)attachmentAtPoint:(CGPoint)point characterRange:(_NSRange *)range;
- (id)configureMenuAtLocation:(CGPoint)location wasTriggeredByTap:(BOOL)tap;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)createTemporaryTargetPreviewViewForSlotFrame:(CGRect)frame;
- (id)firstSlotIdentifier;
- (id)highlightedSlot;
- (id)highlightedSlotIdentifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)lastSlotIdentifier;
- (id)selectedSlot;
- (id)slotAfterSlotIdentifier:(id)identifier;
- (id)slotAtPoint:(CGPoint)point;
- (id)slotBeforeSlotIdentifier:(id)identifier;
- (id)slotIdentifierBeforeSlot:(id)slot inContents:(id)contents;
- (id)slotIdentifierForAttachmentInteraction:(id)interaction characterRange:(_NSRange)range;
- (id)slotWithIdentifier:(id)identifier;
- (id)typingParagraphStyleForParagraphStyle:(id)style;
- (int64_t)accessibilityElementCount;
- (int64_t)textAlignment;
- (void)_deselectSlotAndNotifyDelegate:(BOOL)delegate completionHandler:(id)handler;
- (void)_selectSlot:(id)slot notifyDelegate:(BOOL)delegate;
- (void)beginEditingFirstEmptySlot;
- (void)beginTypingInSlotWithIdentifier:(id)identifier atPosition:(int64_t)position;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didTapDisclosureArrow;
- (void)didTapOutputButton;
- (void)didTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier;
- (void)drawRect:(CGRect)rect;
- (void)endTyping;
- (void)handleTabInSlotTemplateTypingTextView:(id)view isBacktab:(BOOL)backtab withOriginalBlock:(id)block;
- (void)handleTabIsBacktab:(BOOL)backtab;
- (void)handleTouch:(id)touch withPhase:(unint64_t)phase;
- (void)handleTouchWithPhase:(unint64_t)phase atLocation:(CGPoint)location;
- (void)highlightSlotWithIdentifier:(id)identifier;
- (void)invalidateDisplay;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)positionTypingAboveSlot:(id)slot;
- (void)presentedMenuDidDismiss;
- (void)resetTextView;
- (void)selectSlotWithIdentifier:(id)identifier;
- (void)setBounds:(CGRect)bounds;
- (void)setContents:(id)contents animated:(BOOL)animated;
- (void)setDisabledSlotTitleColor:(id)color backgroundColor:(id)backgroundColor animated:(BOOL)animated;
- (void)setDisclosureArrowIsOpen:(BOOL)open;
- (void)setExclusionRects:(id)rects;
- (void)setExtendSlotBackgroundOffEdges:(BOOL)edges;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setHorizontalPadding:(double)padding;
- (void)setOutputButtonIsOpen:(BOOL)open;
- (void)setParagraphStyle:(id)style;
- (void)setShowsDisclosureArrow:(BOOL)arrow;
- (void)setShowsOutputButton:(BOOL)button;
- (void)setSuffixColor:(id)color;
- (void)setSuffixFont:(id)font;
- (void)setSuffixString:(id)string;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)setUnpopulatedFont:(id)font;
- (void)setupTextEntry;
- (void)slotTemplateStorageDidInvalidateDisplay:(id)display;
- (void)slotTemplateTypingTextViewDidCopy:(id)copy withOriginalBlock:(id)block;
- (void)slotTemplateTypingTextViewDidCut:(id)cut withOriginalBlock:(id)block;
- (void)slotTemplateTypingTextViewDidDelete:(id)delete;
- (void)slotTemplateTypingTextViewDidPaste:(id)paste pasteRange:(_NSRange)range withOriginalBlock:(id)block;
- (void)slotTextAttachmentNeedsDisplay:(id)display;
- (void)textAttachmentInteraction:(id)interaction didTapTextAttachment:(id)attachment inCharacterRange:(_NSRange)range;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)typingTextViewDidChange;
- (void)typingTextViewDidEndEditing;
- (void)unhighlightSlot;
- (void)updateAccessibilityElements;
- (void)updateDisclosureButtonPosition;
- (void)updateDisclosureButtonTransformAnimated:(BOOL)animated;
- (void)updateExclusionRectsWithBounds:(CGRect)bounds;
- (void)updateOutputButtonPosition;
- (void)updateOutputButtonTransformAnimated:(BOOL)animated;
- (void)updateTintColorInTextStorage;
- (void)updateTypingFont;
- (void)updateTypingParagraphStyle;
- (void)updateTypingSuffixFont;
- (void)updateTypingTextContainerSize;
- (void)updateTypingTextContents:(id)contents;
- (void)updateTypingUnpopulatedFont;
- (void)updateVariableAttachmentAppearanceInContents;
@end

@implementation WFSlotTemplateView

- (CGRect)presentedMenuTargetedPreviewSlotFrame
{
  x = self->_presentedMenuTargetedPreviewSlotFrame.origin.x;
  y = self->_presentedMenuTargetedPreviewSlotFrame.origin.y;
  width = self->_presentedMenuTargetedPreviewSlotFrame.size.width;
  height = self->_presentedMenuTargetedPreviewSlotFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIButton)outputButton
{
  WeakRetained = objc_loadWeakRetained(&self->_outputButton);

  return WeakRetained;
}

- (UIButton)disclosureButton
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureButton);

  return WeakRetained;
}

- (WFSlotTemplateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)startEditingHighlightedSlot
{
  highlightedSlot = [(WFSlotTemplateView *)self highlightedSlot];
  v4 = highlightedSlot;
  if (highlightedSlot)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__WFSlotTemplateView_startEditingHighlightedSlot__block_invoke;
    v6[3] = &unk_1E83086D8;
    v6[4] = self;
    v7 = highlightedSlot;
    [(WFSlotTemplateView *)self _deselectSlotAndNotifyDelegate:1 completionHandler:v6];
  }

  return v4 != 0;
}

- (void)handleTabIsBacktab:(BOOL)backtab
{
  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  v6 = typingSlotIdentifier;
  if (typingSlotIdentifier)
  {
    v11 = typingSlotIdentifier;
  }

  else
  {
    highlightedSlotIdentifier = [(WFSlotTemplateView *)self highlightedSlotIdentifier];
    v8 = highlightedSlotIdentifier;
    if (highlightedSlotIdentifier)
    {
      selectedSlotIdentifier = highlightedSlotIdentifier;
    }

    else
    {
      selectedSlotIdentifier = [(WFSlotTemplateView *)self selectedSlotIdentifier];
    }

    v11 = selectedSlotIdentifier;
  }

  if (backtab)
  {
    [(WFSlotTemplateView *)self slotBeforeSlotIdentifier:v11];
  }

  else
  {
    [(WFSlotTemplateView *)self slotAfterSlotIdentifier:v11];
  }
  v10 = ;
  if (v10)
  {
    [(WFSlotTemplateView *)self highlightSlotWithIdentifier:v10];
  }
}

- (void)updateAccessibilityElements
{
  [(WFSlotTemplateView *)self frame];
  if (CGRectEqualToRect(v19, *MEMORY[0x1E695F058]))
  {

    [(WFSlotTemplateView *)self setAccessibilityElements:0];
  }

  else
  {
    textStorage = [(WFSlotTemplateView *)self textStorage];
    layoutManager = [(WFSlotTemplateView *)self layoutManager];
    selectedSlots = [textStorage selectedSlots];
    v6 = objc_opt_new();
    v7 = [textStorage length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke;
    v12[3] = &unk_1E83079B0;
    v13 = layoutManager;
    selfCopy = self;
    v15 = v6;
    v16 = textStorage;
    v17 = selectedSlots;
    v8 = selectedSlots;
    v9 = textStorage;
    v10 = v6;
    v11 = layoutManager;
    [v9 enumerateContentInRange:0 usingBlock:{v7, v12}];
    [(WFSlotTemplateView *)self setAccessibilityElements:v10];
  }
}

void __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v42 = 0;
  v43 = &v42;
  v45 = &unk_1C843E1FB;
  v44 = 0x4010000000;
  v8 = *(MEMORY[0x1E695F058] + 16);
  v46 = *MEMORY[0x1E695F058];
  v47 = v8;
  v9 = [a1[4] glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
  v10 = a1[4];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke_2;
  v41[3] = &unk_1E8307938;
  v41[4] = &v42;
  [v10 enumerateInsetEnclosingRectsForGlyphRange:v9 usingBlock:{v11, v41}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
    v13 = [a1[5] typingSlotIdentifier];
    v14 = [v12 identifier];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      v16 = a1[6];
      v17 = [a1[5] typingTextView];
      [v16 addObject:v17];
LABEL_19:

      goto LABEL_20;
    }

    v23 = objc_opt_new();
    v24 = [a1[7] attributedSubstringFromRange:{a3, a4}];
    v25 = [v24 length];
    v26 = *MEMORY[0x1E69DB5F8];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke_3;
    v37 = &unk_1E8307988;
    v38 = a1[5];
    v27 = v23;
    v39 = v27;
    v28 = v24;
    v40 = v28;
    [v28 enumerateAttribute:v26 inRange:0 options:v25 usingBlock:{0, &v34}];
    if ([a1[5] isEnabled] && objc_msgSend(v12, "isEnabled"))
    {
      v20 = [a1[8] containsObject:v12];
      v19 = 0;
    }

    else
    {
      v20 = 0;
      v19 = 1;
    }

    v22 = *MEMORY[0x1E69DD9B8];
    v29 = v40;
    v30 = v27;

    v12 = v30;
LABEL_14:
    v17 = [objc_alloc(MEMORY[0x1E69DC608]) initWithAccessibilityContainer:a1[5]];
    [v17 setIsAccessibilityElement:1];
    [v17 setAccessibilityFrameInContainerSpace:{v43[4], v43[5], v43[6], v43[7]}];
    [v17 setAccessibilityLabel:v12];
    v31 = *MEMORY[0x1E69DDA08];
    if (!v20)
    {
      v31 = 0;
    }

    v32 = v31 | v22;
    v33 = *MEMORY[0x1E69DD9F0];
    if (!v19)
    {
      v33 = 0;
    }

    [v17 setAccessibilityTraits:v32 | v33];
    [a1[6] addObject:v17];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
    v12 = 0;
    v21 = MEMORY[0x1E69DD9E8];
    goto LABEL_8;
  }

  v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:v18];

  if ([v12 length])
  {
    v19 = 0;
    v20 = 0;
    v21 = MEMORY[0x1E69DDA18];
LABEL_8:
    v22 = *v21;
    goto LABEL_14;
  }

LABEL_20:

  _Block_object_dispose(&v42, 8);
}

uint64_t __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke_2(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(result + 32) + 8);
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  *a2 = 1;
  return result;
}

void __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v17 = v7;
  if (v7)
  {
    v8 = [v7 accessibilityLabel];
    v9 = v17;
    if (!v8)
    {
      goto LABEL_9;
    }

    v10 = [*(a1 + 32) textStorage];
    v11 = [v10 disclosureAttachment];
    if (v11 == v17)
    {
    }

    else
    {
      v12 = [*(a1 + 32) textStorage];
      v13 = [v12 outputButtonAttachment];

      v9 = v17;
      if (v13 == v17)
      {
        goto LABEL_9;
      }

      v14 = *(a1 + 40);
      v8 = [v17 accessibilityLabel];
      [v14 appendString:v8];
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v8 = [*(a1 + 48) attributedSubstringFromRange:{a3, a4}];
    v16 = [v8 string];
    [v15 appendString:v16];
  }

  v9 = v17;
LABEL_9:
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  accessibilityElements = [(WFSlotTemplateView *)self accessibilityElements];
  v5 = [accessibilityElements objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)accessibilityElementCount
{
  accessibilityElements = [(WFSlotTemplateView *)self accessibilityElements];
  v3 = [accessibilityElements count];

  return v3;
}

- (NSArray)accessibilityElements
{
  accessibilityElements = self->_accessibilityElements;
  if (!accessibilityElements)
  {
    [(WFSlotTemplateView *)self updateAccessibilityElements];
    accessibilityElements = self->_accessibilityElements;
  }

  return accessibilityElements;
}

- (void)typingTextViewDidEndEditing
{
  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  typingSlotIdentifier = self->_typingSlotIdentifier;
  self->_typingSlotIdentifier = 0;

  [typingTextView setHidden:1];
  [(WFSlotTemplateView *)self resetTextView];
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier];
  if (v5)
  {
    textStorage = [(WFSlotTemplateView *)self textStorage];
    [textStorage didEndTypingInSlot:v5];
  }

  [(WFSlotTemplateView *)self updateAccessibilityElements];
  [(WFSlotTemplateView *)self accessibilityShiftFocusBackToView];
  delegate = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate slotTemplateView:self didEndTypingInSlotWithIdentifier:typingSlotIdentifier];
  }
}

- (void)typingTextViewDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  attributedText = [typingTextView attributedText];
  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  if (typingSlotIdentifier)
  {
    v6 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier];
    v7 = [v6 copy];
    [v7 populateWithAttributedString:attributedText];
    textStorage = [(WFSlotTemplateView *)self textStorage];
    contents = [textStorage contents];
    v10 = [contents mutableCopy];

    [v10 replaceObjectAtIndex:objc_msgSend(v10 withObject:{"indexOfObject:", v6), v7}];
    [(WFSlotTemplateView *)self setContents:v10 animated:0];
    delegate = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate slotTemplateView:self didChangeText:attributedText forSlotWithIdentifier:typingSlotIdentifier];
    }

    layoutManager = [(WFSlotTemplateView *)self layoutManager];
    numberOfLaidLines = [layoutManager numberOfLaidLines];

    if (numberOfLaidLines != [(WFSlotTemplateView *)self lastLayoutManagerLineCount])
    {
      [(WFSlotTemplateView *)self setLastLayoutManagerLineCount:numberOfLaidLines];
      if (objc_opt_respondsToSelector())
      {
        [delegate slotTemplateViewDidInvalidateSize:self];
      }
    }
  }

  else
  {
    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315138;
      v16 = "[WFSlotTemplateView typingTextViewDidChange]";
      _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_FAULT, "%s Received text view change notification while there is no slot with an active typing session.", &v15, 0xCu);
    }
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [textCopy rangeOfCharacterFromSet:newlineCharacterSet];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (-[WFSlotTemplateView typingTextView](self, "typingTextView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 typingAllowsMultipleLines], v13, (v14 & 1) != 0))
  {
    delegate = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      attributedText = [viewCopy attributedText];
      v17 = [attributedText mutableCopy];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_opt_new();
      }

      v21 = v19;

      [v21 replaceCharactersInRange:location withString:{length, textCopy}];
      typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
      v20 = [delegate slotTemplateView:self shouldChangeText:v21 forSlotWithIdentifier:typingSlotIdentifier];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    [viewCopy resignFirstResponder];
    v20 = 0;
  }

  return v20;
}

- (void)resetTextView
{
  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView setClearsZeroWhenTyping:0];
  [typingTextView setAttributedText:0];
  [typingTextView setInputView:0];
  [typingTextView setInputAccessoryView:0];
  [typingTextView setAutocapitalizationType:2];
  [typingTextView setAutocorrectionType:0];
  [typingTextView setSpellCheckingType:0];
  [typingTextView setSmartQuotesType:0];
  [typingTextView setSmartDashesType:0];
  [typingTextView setSmartInsertDeleteType:0];
  [typingTextView setKeyboardType:0];
  [typingTextView setKeyboardAppearance:0];
  [typingTextView setReturnKeyType:0];
  [typingTextView setEnablesReturnKeyAutomatically:0];
  [typingTextView setSecureTextEntry:0];
  [typingTextView setTextContentType:0];
  [typingTextView setPasswordRules:0];
}

- (void)endTyping
{
  typingTextView = [(WFSlotTemplateView *)self typingTextView];

  if (typingTextView)
  {
    typingTextView2 = [(WFSlotTemplateView *)self typingTextView];
    isFirstResponder = [typingTextView2 isFirstResponder];

    if (isFirstResponder)
    {
      typingTextView3 = [(WFSlotTemplateView *)self typingTextView];
      [typingTextView3 resignFirstResponder];
    }

    else
    {

      [(WFSlotTemplateView *)self typingTextViewDidEndEditing];
    }
  }
}

- (void)positionTypingAboveSlot:(id)slot
{
  slotCopy = slot;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v5 = objc_opt_new();
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__WFSlotTemplateView_positionTypingAboveSlot___block_invoke;
  v13[3] = &unk_1E8307960;
  v15 = v17;
  v16 = v19;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  [layoutManager enumerateEnclosingRectsForSlot:slotCopy includeInsideSpacing:0 insetForBackground:0 usingBlock:v13];

  v8 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__WFSlotTemplateView_positionTypingAboveSlot___block_invoke_2;
  v10[3] = &unk_1E83085B0;
  v10[4] = self;
  v9 = v7;
  v11 = v9;
  v12 = v19;
  [v8 performWithoutAnimation:v10];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __46__WFSlotTemplateView_positionTypingAboveSlot___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = CGRectGetMinY(*&a2);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v11 = (MinY + CGRectGetMaxY(v22)) * 0.5 - *(*(*(a1 + 56) + 8) + 24);
  v12 = a2 + a4;
  v13 = [*(a1 + 32) typingTextContainer];
  [v13 size];
  v15 = v14 - v12;

  v16 = *(a1 + 40);
  v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, v11, a2, 5.0}];
  [v16 addObject:v17];

  v18 = *(a1 + 40);
  v19 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v12, v11, v15, 5.0}];
  [v18 addObject:v19];
}

void __46__WFSlotTemplateView_positionTypingAboveSlot___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) typingTextContainer];
  [v3 setExclusionPaths:v2];

  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = [*(a1 + 32) typingTextView];
  [v5 setTextContainerInset:{v4, 0.0, 0.0, 0.0}];
}

- (void)beginTypingInSlotWithIdentifier:(id)identifier atPosition:(int64_t)position
{
  identifierCopy = identifier;
  v7 = [(WFSlotTemplateView *)self slotWithIdentifier:identifierCopy];
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1767 description:@"Must be slot with that identifier"];
  }

  typingTextView = [(WFSlotTemplateView *)self typingTextView];

  if (!typingTextView)
  {
    [(WFSlotTemplateView *)self setupTextEntry];
  }

  v9 = [identifierCopy copy];
  typingSlotIdentifier = self->_typingSlotIdentifier;
  self->_typingSlotIdentifier = v9;

  typingTextView2 = [(WFSlotTemplateView *)self typingTextView];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  [(WFSlotTemplateView *)self resetTextView];
  [(WFSlotTemplateView *)self updateTypingTextContents:identifierCopy];
  [(WFSlotTemplateView *)self positionTypingAboveSlot:v7];
  [typingTextView2 setReturnKeyType:9];
  typingTextView3 = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView3 setTypingAllowsMultipleLines:0];

  delegate = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = 0;
    [delegate slotTemplateView:self willBeginTypingInSlotWithIdentifier:identifierCopy usingTextEntry:typingTextView2 allowMultipleLines:&v20];
    if (v20 == 1)
    {
      [typingTextView2 setReturnKeyType:0];
      typingTextView4 = [(WFSlotTemplateView *)self typingTextView];
      [typingTextView4 setTypingAllowsMultipleLines:1];
    }
  }

  textStorage = [(WFSlotTemplateView *)self textStorage];
  [textStorage didBeginTypingInSlot:v7];

  [typingTextView2 setHidden:0];
  [typingTextView2 becomeFirstResponder];
  if ([v7 userInputInsertionIndex] == -1)
  {
    userInputInsertionIndex = [typingTextStorage length];
  }

  else
  {
    userInputInsertionIndex = [v7 userInputInsertionIndex];
  }

  [typingTextView2 setSelectedRange:{userInputInsertionIndex, 0}];
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  -[WFSlotTemplateView setLastLayoutManagerLineCount:](self, "setLastLayoutManagerLineCount:", [layoutManager numberOfLaidLines]);
}

- (void)beginEditingFirstEmptySlot
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];

  v5 = [contents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
LABEL_11:

    goto LABEL_13;
  }

  v6 = v5;
  v7 = *v14;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v14 != v7)
    {
      objc_enumerationMutation(contents);
    }

    v9 = *(*(&v13 + 1) + 8 * v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v9;
    if (![v10 isPopulated])
    {
      break;
    }

LABEL_9:
    if (v6 == ++v8)
    {
      v6 = [contents countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  identifier = [v10 identifier];

  if (identifier)
  {
    goto LABEL_15;
  }

LABEL_13:
  firstSlotIdentifier = [(WFSlotTemplateView *)self firstSlotIdentifier];
  if (firstSlotIdentifier)
  {
    identifier = firstSlotIdentifier;
LABEL_15:
    [(WFSlotTemplateView *)self highlightSlotWithIdentifier:identifier];
    [(WFSlotTemplateView *)self startEditingHighlightedSlot];
  }
}

- (id)lastSlotIdentifier
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];
  reverseObjectEnumerator = [contents reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  identifier = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (identifier)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != identifier; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v9 identifier];
          goto LABEL_11;
        }
      }

      identifier = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (identifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return identifier;
}

- (id)firstSlotIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];

  identifier = [contents countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (identifier)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != identifier; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(contents);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v7 identifier];
          goto LABEL_11;
        }
      }

      identifier = [contents countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (identifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return identifier;
}

- (void)updateTypingTextContents:(id)contents
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:contents];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1693 description:@"Must be slot with that identifier"];
  }

  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  string = [typingTextStorage string];
  contentAttributedString = [v5 contentAttributedString];
  string2 = [contentAttributedString string];
  v11 = [string isEqualToString:string2];

  if ((v11 & 1) == 0)
  {
    textColor = [(WFSlotTemplateView *)self textColor];
    [typingTextStorage setTextColor:textColor];

    v26[0] = *MEMORY[0x1E69DB648];
    font = [(WFSlotTemplateView *)self font];
    v27[0] = font;
    v26[1] = *MEMORY[0x1E69DB650];
    textColor2 = [typingTextStorage textColor];
    v27[1] = textColor2;
    v26[2] = *MEMORY[0x1E69DB688];
    paragraphStyle = [(WFSlotTemplateView *)self paragraphStyle];
    v16 = [(WFSlotTemplateView *)self typingParagraphStyleForParagraphStyle:paragraphStyle];
    v27[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [typingTextView setTypingAttributes:v17];

    font2 = [(WFSlotTemplateView *)self font];
    [typingTextView setEmojiOverrideFont:font2];

    contentAttributedString2 = [v5 contentAttributedString];
    v20 = [contentAttributedString2 mutableCopy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = v22;

    typingAttributes = [typingTextView typingAttributes];
    [v23 addAttributes:typingAttributes range:{0, objc_msgSend(v23, "length")}];

    [typingTextStorage setAttributedString:v23];
  }
}

- (double)singleLineHeight
{
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  v4 = [layoutManager glyphRangeForCharacterRange:0 actualCharacterRange:{1, 0}];

  layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
  [layoutManager2 lineFragmentRectForGlyphAtIndex:v4 effectiveRange:0];
  v7 = v6;

  return v7;
}

- (double)heightForWidth:(double)width
{
  cachedHeightsByWidths = [(WFSlotTemplateView *)self cachedHeightsByWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v7 = [cachedHeightsByWidths objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v10 = getWFEditorLogObject();
    v11 = os_signpost_id_generate(v10);

    v12 = getWFEditorLogObject();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C830A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SlotTemplateCalculateSize", "", buf, 2u);
    }

    textContainer = [(WFSlotTemplateView *)self textContainer];
    layoutManager = [(WFSlotTemplateView *)self layoutManager];
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
    [layoutManager wf_calculateIntrinsicHeightForWidth:textContainer textContainer:width];
    v9 = v16;
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    cachedHeightsByWidths2 = [(WFSlotTemplateView *)self cachedHeightsByWidths];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    [cachedHeightsByWidths2 setObject:v17 forKeyedSubscript:v19];

    v20 = getWFEditorLogObject();
    v21 = v20;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C830A000, v21, OS_SIGNPOST_INTERVAL_END, v11, "SlotTemplateCalculateSize", "", v23, 2u);
    }
  }

  return v9;
}

- (void)textAttachmentInteraction:(id)interaction didTapTextAttachment:(id)attachment inCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  v9 = [(WFSlotTemplateView *)self slotIdentifierForAttachmentInteraction:interaction characterRange:location, length];
  if (v9)
  {
    [(WFSlotTemplateView *)self didTapTextAttachment:attachmentCopy inSlotWithIdentifier:v9];
  }
}

- (BOOL)textAttachmentInteraction:(id)interaction shouldRecognizeTapOnTextAttachment:(id)attachment inCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  v10 = [(WFSlotTemplateView *)self slotIdentifierForAttachmentInteraction:interaction characterRange:location, length];
  if (v10)
  {
    v11 = [(WFSlotTemplateView *)self shouldRecognizeTapOnTextAttachment:attachmentCopy inSlotWithIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)slotIdentifierForAttachmentInteraction:(id)interaction characterRange:(_NSRange)range
{
  interactionCopy = interaction;
  typingAttachmentInteraction = [(WFSlotTemplateView *)self typingAttachmentInteraction];

  if (typingAttachmentInteraction == interactionCopy)
  {
    typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  }

  else
  {
    typingSlotIdentifier = 0;
  }

  return typingSlotIdentifier;
}

- (void)didTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  delegate = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate slotTemplateView:self didTapTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy];
  }
}

- (BOOL)shouldRecognizeTapOnTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  v8 = [(WFSlotTemplateView *)self slotWithIdentifier:identifierCopy];
  if (-[WFSlotTemplateView isEnabled](self, "isEnabled") && [v8 isEnabled])
  {
    delegate = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate slotTemplateView:self shouldTapTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)handleTabInSlotTemplateTypingTextView:(id)view isBacktab:(BOOL)backtab withOriginalBlock:(id)block
{
  blockCopy = block;
  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  if (typingSlotIdentifier && (-[WFSlotTemplateView typingTextView](self, "typingTextView"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 typingAllowsMultipleLines], v9, !v10))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__WFSlotTemplateView_handleTabInSlotTemplateTypingTextView_isBacktab_withOriginalBlock___block_invoke;
    v11[3] = &unk_1E83084B8;
    v11[4] = self;
    backtabCopy = backtab;
    [(WFSlotTemplateView *)self _deselectSlotAndNotifyDelegate:1 completionHandler:v11];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)slotTemplateTypingTextViewDidPaste:(id)paste pasteRange:(_NSRange)range withOriginalBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  delegate = [(WFSlotTemplateView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateView:self typingDidPasteWithRange:location originalBlock:{length, blockCopy}];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)slotTemplateTypingTextViewDidCopy:(id)copy withOriginalBlock:(id)block
{
  blockCopy = block;
  delegate = [(WFSlotTemplateView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateView:self typingDidCopyWithOriginalBlock:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)slotTemplateTypingTextViewDidCut:(id)cut withOriginalBlock:(id)block
{
  blockCopy = block;
  delegate = [(WFSlotTemplateView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateView:self typingDidCutWithOriginalBlock:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)slotTemplateTypingTextViewDidDelete:(id)delete
{
  selectedSlot = [(WFSlotTemplateView *)self selectedSlot];
  isPopulated = [selectedSlot isPopulated];

  if ((isPopulated & 1) == 0)
  {
    delegate = [(WFSlotTemplateView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WFSlotTemplateView *)self delegate];
      selectedSlotIdentifier = [(WFSlotTemplateView *)self selectedSlotIdentifier];
      [delegate2 slotTemplateView:self deletePressedOnSlotWithIdentifier:selectedSlotIdentifier allowResettingValue:0];
    }
  }
}

- (void)slotTemplateStorageDidInvalidateDisplay:(id)display
{
  [(WFSlotTemplateView *)self invalidateDisplay];

  [(WFSlotTemplateView *)self updateAccessibilityElements];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v6 tintColorDidChange];
  delegate = [(WFSlotTemplateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateViewTintColorDidChange:self];
  }

  [(WFSlotTemplateView *)self updateTintColorInTextStorage];
}

- (void)updateTintColorInTextStorage
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__WFSlotTemplateView_updateTintColorInTextStorage__block_invoke;
  v2[3] = &unk_1E83086B0;
  v2[4] = self;
  [(WFSlotTemplateView *)self performFadeTransition:v2];
}

void __50__WFSlotTemplateView_updateTintColorInTextStorage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tintAdjustmentMode];
  v3 = [*(a1 + 32) textStorage];
  [v3 beginEditing];

  v4 = [*(a1 + 32) isEnabled];
  if (v2 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(a1 + 32) textStorage];
  [v6 setEnabled:v5];

  v7 = [*(a1 + 32) tintColor];
  v8 = [*(a1 + 32) textStorage];
  [v8 setTintColor:v7];

  [*(a1 + 32) updateVariableAttachmentAppearanceInContents];
  v9 = [*(a1 + 32) textStorage];
  [v9 endEditing];
}

- (CGRect)sourceRectForSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1413 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_1C843E1FB;
  v6 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  v23 = v6;
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__WFSlotTemplateView_sourceRectForSlot___block_invoke;
  v17[3] = &unk_1E8307938;
  v17[4] = &v18;
  [layoutManager enumerateEnclosingRectsForSlot:slotCopy includeInsideSpacing:1 insetForBackground:1 usingBlock:v17];

  v8 = v19[4];
  v9 = v19[5];
  v10 = v19[6];
  v11 = v19[7];
  _Block_object_dispose(&v18, 8);

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

uint64_t __40__WFSlotTemplateView_sourceRectForSlot___block_invoke(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(result + 32) + 8);
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  *a2 = 1;
  return result;
}

- (CGRect)sourceRectForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1407 description:{@"Invalid parameter not satisfying: %@", @"slotIdentifier"}];
  }

  v6 = [(WFSlotTemplateView *)self slotWithIdentifier:identifierCopy];
  [(WFSlotTemplateView *)self sourceRectForSlot:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)slotAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  textContainer = [(WFSlotTemplateView *)self textContainer];
  v8 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{x, y}];

  v24 = 0;
  v25 = 0;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  v10 = [textStorage slotAtCharacterIndex:v8 effectiveRange:&v24 effectiveContentRange:0];

  if (v10)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
    v12 = [layoutManager2 glyphRangeForCharacterRange:v24 actualCharacterRange:{v25, 0}];
    v14 = v13;

    layoutManager3 = [(WFSlotTemplateView *)self layoutManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __34__WFSlotTemplateView_slotAtPoint___block_invoke;
    v19[3] = &unk_1E8307910;
    *&v19[5] = x;
    *&v19[6] = y;
    v19[4] = &v20;
    [layoutManager3 enumerateInsetEnclosingRectsForGlyphRange:v12 usingBlock:{v14, v19}];

    if (*(v21 + 24))
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __34__WFSlotTemplateView_slotAtPoint___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  result = CGRectContainsPoint(*&a3, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a2 = 1;
  }

  return result;
}

- (id)attachmentAtPoint:(CGPoint)point characterRange:(_NSRange *)range
{
  y = point.y;
  x = point.x;
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  textContainer = [(WFSlotTemplateView *)self textContainer];
  v10 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{x, y}];

  layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
  textContainer2 = [(WFSlotTemplateView *)self textContainer];
  v13 = [layoutManager2 glyphIndexForPoint:textContainer2 inTextContainer:{x, y}];

  textStorage = [(WFSlotTemplateView *)self textStorage];
  v15 = [textStorage length];

  v16 = 0;
  if (v10 < v15)
  {
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    v16 = [textStorage2 attribute:*MEMORY[0x1E69DB5F8] atIndex:v10 effectiveRange:0];

    if (v16 && (-[WFSlotTemplateView layoutManager](self, "layoutManager"), v18 = objc_claimAutoreleasedReturnValue(), -[WFSlotTemplateView textContainer](self, "textContainer"), v19 = objc_claimAutoreleasedReturnValue(), [v18 boundingRectForGlyphRange:v13 inTextContainer:{1, v19}], v21 = v20, v23 = v22, v25 = v24, v27 = v26, v19, v18, v31.origin.x = v21, v31.origin.y = v23, v31.size.width = v25, v31.size.height = v27, v30.x = x, v30.y = y, CGRectContainsPoint(v31, v30)))
    {
      if (range)
      {
        range->location = v10;
        range->length = 1;
      }
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  cancelledCopy = cancelled;
  [(WFSlotTemplateView *)&v8 touchesCancelled:cancelledCopy withEvent:event];
  anyObject = [cancelledCopy anyObject];

  [(WFSlotTemplateView *)self handleTouch:anyObject withPhase:3];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  endedCopy = ended;
  [(WFSlotTemplateView *)&v8 touchesEnded:endedCopy withEvent:event];
  anyObject = [endedCopy anyObject];

  [(WFSlotTemplateView *)self handleTouch:anyObject withPhase:2];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  movedCopy = moved;
  [(WFSlotTemplateView *)&v8 touchesMoved:movedCopy withEvent:event];
  anyObject = [movedCopy anyObject];

  [(WFSlotTemplateView *)self handleTouch:anyObject withPhase:1];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  beganCopy = began;
  [(WFSlotTemplateView *)&v8 touchesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  [(WFSlotTemplateView *)self handleTouch:anyObject withPhase:0];
}

- (void)handleTouch:(id)touch withPhase:(unint64_t)phase
{
  [touch locationInView:self];

  [(WFSlotTemplateView *)self handleTouchWithPhase:phase atLocation:?];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = WFSlotTemplateView;
  v8 = [(WFSlotTemplateView *)&v25 hitTest:eventCopy withEvent:x, y];
  outputButton = [(WFSlotTemplateView *)self outputButton];

  if (v8 != outputButton)
  {
    disclosureButton = [(WFSlotTemplateView *)self disclosureButton];

    if (v8 != disclosureButton)
    {
      typingTextView = [(WFSlotTemplateView *)self typingTextView];
      v12 = typingTextView;
      if (v8 == typingTextView)
      {
        typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];

        if (typingSlotIdentifier)
        {
          typingSlotIdentifier2 = [(WFSlotTemplateView *)self typingSlotIdentifier];
          v14 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier2];
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0;
          if (!v14 || (-[WFSlotTemplateView layoutManager](self, "layoutManager"), v16 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __40__WFSlotTemplateView_hitTest_withEvent___block_invoke, v20[3] = &unk_1E8307910, *&v20[5] = x, *&v20[6] = y, v20[4] = &v21, [v16 enumerateEnclosingRectsForSlot:v14 includeInsideSpacing:1 insetForBackground:0 usingBlock:v20], v16, (v22[3] & 1) == 0))
          {
            selfCopy = self;

            v8 = selfCopy;
          }

          _Block_object_dispose(&v21, 8);
          goto LABEL_12;
        }
      }

      else
      {
      }

      typingSlotIdentifier2 = [(WFSlotTemplateView *)self slotAtPoint:x, y];
      if (typingSlotIdentifier2)
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = v8;
      v8 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

LABEL_14:
  v18 = v8;

  return v8;
}

BOOL __40__WFSlotTemplateView_hitTest_withEvent___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  result = CGRectContainsPoint(*&a3, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a2 = 1;
  }

  return result;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v8 = MEMORY[0x1E696AD88];
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  defaultCenter = [v8 defaultCenter];
  [defaultCenter postNotificationName:@"WFSlotContextMenuInteractionWillEndNotification" object:0];

  [(WFSlotTemplateView *)self presentedMenuDidDismiss];
  v13.receiver = self;
  v13.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v13 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  [(WFSlotTemplateView *)self menuWillPresent];
  v11.receiver = self;
  v11.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v11 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
}

- (id)createTemporaryTargetPreviewViewForSlotFrame:(CGRect)frame
{
  v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [systemBlueColor colorWithAlphaComponent:0.01];
  [v4 setBackgroundColor:v6];

  layer = [v4 layer];
  [layer setCornerRadius:10.0];

  [(WFSlotTemplateView *)self addSubview:v4];
  v8 = dispatch_time(0, 400000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WFSlotTemplateView_createTemporaryTargetPreviewViewForSlotFrame___block_invoke;
  block[3] = &unk_1E83086B0;
  v9 = v4;
  v12 = v9;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  [(WFSlotTemplateView *)self presentedMenuTargetedPreviewSlotFrame:interaction];
  if (CGRectIsNull(v18))
  {
    v6 = 0;
  }

  else
  {
    [(WFSlotTemplateView *)self presentedMenuTargetedPreviewSlotFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(WFSlotTemplateView *)self setPresentedMenuTargetedPreviewSlotFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v15 = [(WFSlotTemplateView *)self createTemporaryTargetPreviewViewForSlotFrame:v8, v10, v12, v14];
    v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v15];
  }

  return v6;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  identifier = [configuration identifier];
  v7 = [(WFSlotTemplateView *)self slotWithIdentifier:identifier];
  [(WFSlotTemplateView *)self sourceRectForSlot:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(WFSlotTemplateView *)self createTemporaryTargetPreviewViewForSlotFrame:?];
  [(WFSlotTemplateView *)self setPresentedMenuTargetedPreviewSlotFrame:v9, v11, v13, v15];
  v17 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v16];

  return v17;
}

- (BOOL)shouldPresentMenuAboveView
{
  [(WFSlotTemplateView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(WFSlotTemplateView *)self window];
  [(WFSlotTemplateView *)self convertRect:window toView:v4, v6, v8, v10];
  v13 = v12;

  window2 = [(WFSlotTemplateView *)self window];
  [window2 frame];
  LOBYTE(window) = v13 > v15 * 0.5;

  return window;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  date = [MEMORY[0x1E695DF00] date];
  touchDownTimestamp = [(WFSlotTemplateView *)self touchDownTimestamp];
  [date timeIntervalSinceDate:touchDownTimestamp];
  v10 = v9;

  touchDownTimestamp2 = [(WFSlotTemplateView *)self touchDownTimestamp];
  v13 = v10 < 0.140000001 || touchDownTimestamp2 == 0;

  [(WFSlotTemplateView *)self setTouchDownTimestamp:0];
  v32.receiver = self;
  v32.super_class = WFSlotTemplateView;
  v14 = [(WFSlotTemplateView *)&v32 hitTest:0 withEvent:x, y];
  disclosureButton = [(WFSlotTemplateView *)self disclosureButton];

  if (v14 == disclosureButton)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __76__WFSlotTemplateView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v31[3] = &unk_1E83086B0;
    v31[4] = self;
    v25 = MEMORY[0x1E69E96A0];
    v26 = v31;
LABEL_16:
    dispatch_async(v25, v26);
    v23 = 0;
    goto LABEL_19;
  }

  outputButton = [(WFSlotTemplateView *)self outputButton];

  if (v14 == outputButton)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__WFSlotTemplateView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    v25 = MEMORY[0x1E69E96A0];
    v26 = block;
    goto LABEL_16;
  }

  v17 = [(WFSlotTemplateView *)self slotAtPoint:x, y];
  if (v17)
  {
    v18 = [(WFSlotTemplateView *)self configureMenuAtLocation:v13 wasTriggeredByTap:x, y];
    shouldDisplayInFixedOrder = [v18 shouldDisplayInFixedOrder];
    v20 = MEMORY[0x1E69DC8D8];
    identifier = [v17 identifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__WFSlotTemplateView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
    v28[3] = &unk_1E83078E8;
    v29 = v18;
    v22 = v18;
    v23 = [v20 configurationWithIdentifier:identifier previewProvider:0 actionProvider:v28];

    if (shouldDisplayInFixedOrder)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    [v23 setPreferredMenuElementOrder:v24];
  }

  else
  {
    v23 = 0;
  }

LABEL_19:

  return v23;
}

- (void)handleTouchWithPhase:(unint64_t)phase atLocation:(CGPoint)location
{
  v10 = [(WFSlotTemplateView *)self slotAtPoint:location.x, location.y];
  identifier = [v10 identifier];
  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
  v8 = [identifier isEqual:typingSlotIdentifier];

  if (v8)
  {
    goto LABEL_14;
  }

  if (phase == 1)
  {
    if (v10 && [v10 isEnabled])
    {
      identifier2 = [v10 identifier];
      [(WFSlotTemplateView *)self highlightSlotWithIdentifier:identifier2];
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (phase)
  {
    if ((phase & 0xFFFFFFFFFFFFFFFELL) != 2 || [(WFSlotTemplateView *)self menuIsPresented])
    {
      goto LABEL_14;
    }

LABEL_13:
    [(WFSlotTemplateView *)self unhighlightSlot];
    goto LABEL_14;
  }

  if (v10 && [v10 isEnabled])
  {
    identifier2 = [MEMORY[0x1E695DF00] date];
    [(WFSlotTemplateView *)self setTouchDownTimestamp:identifier2];
LABEL_10:
  }

LABEL_14:

  MEMORY[0x1EEE66BB8]();
}

- (void)drawRect:(CGRect)rect
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v31 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  textContainer = [(WFSlotTemplateView *)self textContainer];
  v14 = [layoutManager glyphRangeForBoundingRect:textContainer inTextContainer:{v6, v8, v10, v12}];
  v16 = v15;

  layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  [layoutManager2 drawBackgroundForGlyphRange:v14 atPoint:v16];

  layoutManager3 = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  [layoutManager3 drawGlyphsForGlyphRange:v14 atPoint:v16];

  if ([(WFSlotTemplateView *)self debugMode])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    typingTextContainer = [(WFSlotTemplateView *)self typingTextContainer];
    exclusionPaths = [typingTextContainer exclusionPaths];

    v22 = [exclusionPaths countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        v25 = 0;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(exclusionPaths);
          }

          CGContextAddPath(CurrentContext, [*(*(&v27 + 1) + 8 * v25) CGPath]);
          redColor = [MEMORY[0x1E69DC888] redColor];
          CGContextSetFillColorWithColor(CurrentContext, [redColor CGColor]);

          CGContextFillPath(CurrentContext);
          ++v25;
        }

        while (v23 != v25);
        v23 = [exclusionPaths countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

- (void)updateTypingTextContainerSize
{
  [(WFSlotTemplateView *)self bounds];
  v4 = v3;
  typingTextContainer = [(WFSlotTemplateView *)self typingTextContainer];
  [typingTextContainer setSize:{v4, 1.79769313e308}];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v18 layoutSubviews];
  [(WFSlotTemplateView *)self bounds];
  v4 = v3;
  textContainer = [(WFSlotTemplateView *)self textContainer];
  [textContainer setSize:{v4, 1.79769313e308}];

  [(WFSlotTemplateView *)self updateTypingTextContainerSize];
  [(WFSlotTemplateView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView setFrame:{v7, v9, v11, v13}];

  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];

  if (typingSlotIdentifier)
  {
    typingSlotIdentifier2 = [(WFSlotTemplateView *)self typingSlotIdentifier];
    v17 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier2];

    if (v17)
    {
      [(WFSlotTemplateView *)self positionTypingAboveSlot:v17];
    }
  }

  [(WFSlotTemplateView *)self updateAccessibilityElements];
  [(WFSlotTemplateView *)self updateDisclosureButtonPosition];
  [(WFSlotTemplateView *)self updateOutputButtonPosition];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v4 traitCollectionDidChange:change];
  [(WFSlotTemplateView *)self bounds];
  [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(WFSlotTemplateView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(WFSlotTemplateView *)self invalidateDisplay];
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(WFSlotTemplateView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(WFSlotTemplateView *)self invalidateDisplay];
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
  }
}

- (void)presentedMenuDidDismiss
{
  [(WFSlotTemplateView *)self setMenuIsPresented:0];
  [(WFSlotTemplateView *)self unhighlightSlot];
  delegate = [(WFSlotTemplateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 menuDidDismissInSlotTemplateView:self];
  }
}

- (id)configureMenuAtLocation:(CGPoint)location wasTriggeredByTap:(BOOL)tap
{
  tapCopy = tap;
  y = location.y;
  x = location.x;
  v8 = [(WFSlotTemplateView *)self slotAtPoint:?];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_15;
  }

  if (!tapCopy)
  {
    goto LABEL_8;
  }

  v9 = [(WFSlotTemplateView *)self attachmentAtPoint:0 characterRange:x, y];
  if (!v9 || ([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[WFSlotTemplateView shouldRecognizeTapOnTextAttachment:inSlotWithIdentifier:](self, "shouldRecognizeTapOnTextAttachment:inSlotWithIdentifier:", v9, v10), v10, !v11))
  {

LABEL_8:
    v14 = !tapCopy;
    delegate = [(WFSlotTemplateView *)self delegate];
    identifier = [v8 identifier];
    v13 = [delegate slotTemplateView:self menuForSlotIdentifier:identifier style:!tapCopy];

    if (v14 || v13)
    {
      if (v13)
      {
        identifier2 = [v8 identifier];
        [(WFSlotTemplateView *)self highlightSlotWithIdentifier:identifier2];
      }

      v12 = v13;
      v13 = v12;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__WFSlotTemplateView_configureMenuAtLocation_wasTriggeredByTap___block_invoke_2;
      v19[3] = &unk_1E83086D8;
      v19[4] = self;
      v20 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v19);

      v12 = 0;
    }

    goto LABEL_14;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WFSlotTemplateView_configureMenuAtLocation_wasTriggeredByTap___block_invoke;
  block[3] = &unk_1E8308600;
  block[4] = self;
  v22 = v9;
  v23 = v8;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

void __64__WFSlotTemplateView_configureMenuAtLocation_wasTriggeredByTap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identifier];
  [v1 didTapTextAttachment:v2 inSlotWithIdentifier:v3];
}

- (void)_deselectSlotAndNotifyDelegate:(BOOL)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  selectedSlot = [(WFSlotTemplateView *)self selectedSlot];
  v8 = selectedSlot;
  if (selectedSlot)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __71__WFSlotTemplateView__deselectSlotAndNotifyDelegate_completionHandler___block_invoke;
    v15 = &unk_1E83086D8;
    selfCopy = self;
    v9 = selectedSlot;
    v17 = v9;
    [(WFSlotTemplateView *)self performFadeTransition:&v12];
    [(WFSlotTemplateView *)self accessibilityShiftFocusBackToView:v12];
    delegate = [(WFSlotTemplateView *)self delegate];
    if (delegateCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      identifier = [v9 identifier];
      [delegate slotTemplateView:self didDeselectSlotWithIdentifier:identifier completionHandler:handlerCopy];
    }

    else if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __71__WFSlotTemplateView__deselectSlotAndNotifyDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  [v2 didDeselectSlot:*(a1 + 40)];
}

- (void)_selectSlot:(id)slot notifyDelegate:(BOOL)delegate
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:851 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  textStorage = [(WFSlotTemplateView *)self textStorage];
  selectedSlots = [textStorage selectedSlots];
  v10 = [selectedSlots containsObject:slotCopy];

  if ((v10 & 1) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WFSlotTemplateView__selectSlot_notifyDelegate___block_invoke;
    v12[3] = &unk_1E8307F68;
    v13 = slotCopy;
    v14 = textStorage;
    selfCopy = self;
    delegateCopy = delegate;
    [(WFSlotTemplateView *)self _deselectSlotAndNotifyDelegate:1 completionHandler:v12];
  }
}

void __49__WFSlotTemplateView__selectSlot_notifyDelegate___block_invoke(uint64_t a1)
{
  v12 = *(a1 + 32);
  v2 = [*(a1 + 40) contents];
  v3 = [v2 containsObject:*(a1 + 32)];

  if ((v3 & 1) != 0 || (v4 = *(a1 + 48), [*(a1 + 32) identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "slotWithIdentifier:", v5), v6 = objc_claimAutoreleasedReturnValue(), v12, v5, (v12 = v6) != 0))
  {
    v7 = [*(a1 + 48) textStorage];
    [v7 didSelectSlot:v12];

    v8 = *(a1 + 56);
    v9 = [*(a1 + 48) delegate];
    if (v8 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = *(a1 + 48);
      v11 = [v12 identifier];
      [v9 slotTemplateView:v10 didSelectSlotWithIdentifier:v11];
    }
  }
}

- (void)selectSlotWithIdentifier:(id)identifier
{
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:identifier];
  v7 = v5;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:846 description:@"Must be slot with that identifier"];

    v5 = 0;
  }

  [(WFSlotTemplateView *)self _selectSlot:v5 notifyDelegate:0];
}

- (WFSlotIdentifier)selectedSlotIdentifier
{
  selectedSlot = [(WFSlotTemplateView *)self selectedSlot];
  identifier = [selectedSlot identifier];

  return identifier;
}

- (id)selectedSlot
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  selectedSlots = [textStorage selectedSlots];
  anyObject = [selectedSlots anyObject];

  return anyObject;
}

- (void)unhighlightSlot
{
  highlightedSlot = [(WFSlotTemplateView *)self highlightedSlot];
  v4 = highlightedSlot;
  if (highlightedSlot)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__WFSlotTemplateView_unhighlightSlot__block_invoke;
    v5[3] = &unk_1E83086D8;
    v5[4] = self;
    v6 = highlightedSlot;
    [(WFSlotTemplateView *)self performFadeTransition:v5];
  }
}

uint64_t __37__WFSlotTemplateView_unhighlightSlot__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  [v2 didUnhighlightSlot:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 updateVariableAttachmentAppearanceInContents];
}

- (void)highlightSlotWithIdentifier:(id)identifier
{
  v4 = [(WFSlotTemplateView *)self slotWithIdentifier:identifier];
  if (v4)
  {
    textStorage = [(WFSlotTemplateView *)self textStorage];
    highlightedSlots = [textStorage highlightedSlots];
    v7 = [highlightedSlots containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__WFSlotTemplateView_highlightSlotWithIdentifier___block_invoke;
      v8[3] = &unk_1E8308600;
      v8[4] = self;
      v9 = textStorage;
      v10 = v4;
      [(WFSlotTemplateView *)self performFadeTransition:v8];
    }
  }
}

uint64_t __50__WFSlotTemplateView_highlightSlotWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unhighlightSlot];
  [*(a1 + 40) didHighlightSlot:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 updateVariableAttachmentAppearanceInContents];
}

- (id)highlightedSlotIdentifier
{
  highlightedSlot = [(WFSlotTemplateView *)self highlightedSlot];
  identifier = [highlightedSlot identifier];

  return identifier;
}

- (id)highlightedSlot
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  highlightedSlots = [textStorage highlightedSlots];
  anyObject = [highlightedSlots anyObject];

  return anyObject;
}

- (id)slotIdentifierBeforeSlot:(id)slot inContents:(id)contents
{
  v22 = *MEMORY[0x1E69E9840];
  slotCopy = slot;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contentsCopy = contents;
  v7 = [contentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = 0;
  if (v7)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(contentsCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          identifier = [v12 identifier];
          v14 = [identifier isEqual:slotCopy];

          if (v14)
          {
            v8 = v8;

            v7 = v8;
            goto LABEL_13;
          }

          identifier2 = [v12 identifier];

          v8 = identifier2;
        }
      }

      v7 = [contentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)slotBeforeSlotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];
  v7 = contents;
  if (identifierCopy)
  {
    objectEnumerator = [contents objectEnumerator];
    identifier = [(WFSlotTemplateView *)self slotIdentifierBeforeSlot:identifierCopy inContents:objectEnumerator];
  }

  else
  {
    v10 = [contents if_objectsOfClass:objc_opt_class()];
    lastObject = [v10 lastObject];

    identifier = [lastObject identifier];
    textStorage = lastObject;
  }

  return identifier;
}

- (id)slotAfterSlotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];
  v7 = contents;
  if (identifierCopy)
  {
    reverseObjectEnumerator = [contents reverseObjectEnumerator];
    identifier = [(WFSlotTemplateView *)self slotIdentifierBeforeSlot:identifierCopy inContents:reverseObjectEnumerator];
  }

  else
  {
    v10 = [contents if_objectsOfClass:objc_opt_class()];
    firstObject = [v10 firstObject];

    identifier = [firstObject identifier];
    textStorage = firstObject;
  }

  return identifier;
}

- (id)slotWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];

  v7 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(contents);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          identifier = [v12 identifier];
          v14 = [identifier isEqual:identifierCopy];

          if (v14)
          {
            goto LABEL_12;
          }
        }
      }

      v8 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)setContents:(id)contents animated:(BOOL)animated
{
  animatedCopy = animated;
  contentsCopy = contents;
  v7 = getWFEditorLogObject();
  v8 = os_signpost_id_generate(v7);

  v9 = getWFEditorLogObject();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C830A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SlotTemplateSetContents", "", buf, 2u);
  }

  textStorage = [(WFSlotTemplateView *)self textStorage];
  contents = [textStorage contents];
  v13 = contentsCopy;
  v14 = contents;
  v15 = v14;
  if (v14 != v13)
  {
    if (v13 && v14)
    {
      v16 = [v13 isEqualToArray:v14];

      if (v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    textStorage = [(WFSlotTemplateView *)self selectedSlotIdentifier];
    highlightedSlotIdentifier = [(WFSlotTemplateView *)self highlightedSlotIdentifier];
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    [textStorage2 beginEditing];

    if (animatedCopy)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __43__WFSlotTemplateView_setContents_animated___block_invoke;
      v30 = &unk_1E83086D8;
      selfCopy = self;
      v32 = v13;
      [(WFSlotTemplateView *)self performFadeTransition:&v27];

      if (!textStorage)
      {
LABEL_17:
        if (highlightedSlotIdentifier)
        {
          v22 = [(WFSlotTemplateView *)self slotWithIdentifier:highlightedSlotIdentifier];

          if (v22)
          {
            [(WFSlotTemplateView *)self highlightSlotWithIdentifier:highlightedSlotIdentifier];
          }
        }

        [(WFSlotTemplateView *)self updateVariableAttachmentAppearanceInContents:v27];
        textStorage3 = [(WFSlotTemplateView *)self textStorage];
        [textStorage3 endEditing];

        [(WFSlotTemplateView *)self invalidateIntrinsicContentSize];
        typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];
        if (typingSlotIdentifier)
        {
          v24 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier];
          if (v24)
          {
            [(WFSlotTemplateView *)self updateTypingTextContents:typingSlotIdentifier];
            textStorage4 = [(WFSlotTemplateView *)self textStorage];
            [textStorage4 didBeginTypingInSlot:v24];

            [(WFSlotTemplateView *)self positionTypingAboveSlot:v24];
          }

          else
          {
            [(WFSlotTemplateView *)self endTyping];
          }
        }

        v26 = getWFEditorLogObject();
        v15 = v26;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C830A000, v15, OS_SIGNPOST_INTERVAL_END, v8, "SlotTemplateSetContents", "", buf, 2u);
        }

        goto LABEL_28;
      }
    }

    else
    {
      textStorage5 = [(WFSlotTemplateView *)self textStorage];
      [textStorage5 setContents:v13];

      if (!textStorage)
      {
        goto LABEL_17;
      }
    }

    selfCopy = [(WFSlotTemplateView *)self slotWithIdentifier:textStorage, v27, v28, v29, v30, selfCopy];

    if (selfCopy)
    {
      [(WFSlotTemplateView *)self selectSlotWithIdentifier:textStorage];
    }

    goto LABEL_17;
  }

  typingSlotIdentifier = v13;
  highlightedSlotIdentifier = v14;
LABEL_28:

LABEL_29:
}

void __43__WFSlotTemplateView_setContents_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setContents:v1];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v4 invalidateIntrinsicContentSize];
  cachedHeightsByWidths = [(WFSlotTemplateView *)self cachedHeightsByWidths];
  [cachedHeightsByWidths removeAllObjects];
}

- (void)invalidateDisplay
{
  [(WFSlotTemplateView *)self updateDisclosureButtonPosition];
  [(WFSlotTemplateView *)self setNeedsDisplay];

  [(WFSlotTemplateView *)self updateOutputButtonPosition];
}

- (void)updateOutputButtonTransformAnimated:(BOOL)animated
{
  v3 = 0.200000003;
  if (!animated)
  {
    v3 = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__WFSlotTemplateView_updateOutputButtonTransformAnimated___block_invoke;
  v4[3] = &unk_1E83086B0;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3];
}

void __58__WFSlotTemplateView_updateOutputButtonTransformAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) outputButtonIsOpen])
  {
    v2 = @"eye.fill";
  }

  else
  {
    v2 = @"eye";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v2];
  v3 = [*(a1 + 32) outputButton];
  [v3 setImage:v4 forState:0];
}

- (void)updateOutputButtonPosition
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  v4 = [textStorage length] - 1;

  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  v6 = [layoutManager glyphRangeForCharacterRange:v4 actualCharacterRange:{1, 0}];
  v8 = v7;

  layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
  textContainer = [(WFSlotTemplateView *)self textContainer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__WFSlotTemplateView_updateOutputButtonPosition__block_invoke;
  v11[3] = &unk_1E83081E0;
  v11[4] = self;
  [layoutManager2 enumerateEnclosingRectsForGlyphRange:v6 withinSelectedGlyphRange:v8 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, textContainer, v11}];
}

uint64_t __48__WFSlotTemplateView_updateOutputButtonPosition__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = [*(a1 + 32) outputButton];
  [v9 intrinsicContentSize];
  v11 = v10;
  v13 = v12;

  v14 = [*(a1 + 32) outputButton];
  [v14 setFrame:{a2 + 6.0, a3 + (a5 - v13) * 0.5, v11, v13}];

  v15 = *(a1 + 32);

  return [v15 updateOutputButtonTransformAnimated:0];
}

- (void)didTapOutputButton
{
  v3 = !self->_outputButtonIsOpen;
  self->_outputButtonIsOpen = v3;
  delegate = [(WFSlotTemplateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateView:self outputButtonDidChange:v3];
  }
}

- (void)setOutputButtonIsOpen:(BOOL)open
{
  if (self->_outputButtonIsOpen != open)
  {
    self->_outputButtonIsOpen = open;
    [(WFSlotTemplateView *)self updateOutputButtonTransformAnimated:0];
  }
}

- (void)setShowsOutputButton:(BOOL)button
{
  if (self->_showsOutputButton != button)
  {
    v21 = v3;
    v22 = v4;
    buttonCopy = button;
    self->_showsOutputButton = button;
    if (button)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      [v7 setBounds:{0.0, 0.0, 26.0, 20.0}];
      v8 = objc_opt_new();
      [v7 setImage:v8];
    }

    else
    {
      v7 = 0;
    }

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __43__WFSlotTemplateView_setShowsOutputButton___block_invoke;
    v18 = &unk_1E83086D8;
    selfCopy = self;
    v9 = v7;
    v20 = v9;
    [(WFSlotTemplateView *)self performFadeTransition:&v15];
    if (buttonCopy)
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"eye", v15, v16, v17, v18, selfCopy}];
      v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
      v12 = [v10 imageWithConfiguration:v11];

      v13 = [MEMORY[0x1E69DC738] systemButtonWithImage:v12 target:self action:sel_didTapOutputButton];
      [(WFSlotTemplateView *)self addSubview:v13];
      [(WFSlotTemplateView *)self setOutputButton:v13];
      [(WFSlotTemplateView *)self updateOutputButtonPosition];
    }

    else
    {
      v14 = [(WFSlotTemplateView *)self outputButton:v15];
      [v14 removeFromSuperview];

      [(WFSlotTemplateView *)self setOutputButton:0];
    }
  }
}

void __43__WFSlotTemplateView_setShowsOutputButton___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setOutputButtonAttachment:v1];
}

- (void)updateDisclosureButtonTransformAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(WFSlotTemplateView *)self traitCollection];
  v6 = [traitCollection layoutDirection] == 1;

  v7 = qword_1C841E350[v6];
  v8 = 0.400000006;
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __62__WFSlotTemplateView_updateDisclosureButtonTransformAnimated___block_invoke;
  v9[3] = &unk_1E8308580;
  if (!animatedCopy)
  {
    v8 = 0.0;
  }

  v9[4] = self;
  v9[5] = v7;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v9 usingSpringWithDamping:0 initialSpringVelocity:v8 options:0.0 animations:1.0 completion:0.0];
}

void __62__WFSlotTemplateView_updateDisclosureButtonTransformAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) disclosureArrowIsOpen];
  v3 = 0.0;
  if (v2)
  {
    v3 = *(a1 + 40);
  }

  CGAffineTransformMakeRotation(&v6, v3);
  v4 = [*(a1 + 32) disclosureButton];
  v5 = v6;
  [v4 setTransform:&v5];
}

- (void)updateDisclosureButtonPosition
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  v4 = [textStorage length] - 1;

  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  v6 = [layoutManager glyphRangeForCharacterRange:v4 actualCharacterRange:{1, 0}];
  v8 = v7;

  layoutManager2 = [(WFSlotTemplateView *)self layoutManager];
  textContainer = [(WFSlotTemplateView *)self textContainer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__WFSlotTemplateView_updateDisclosureButtonPosition__block_invoke;
  v11[3] = &unk_1E83081E0;
  v11[4] = self;
  [layoutManager2 enumerateEnclosingRectsForGlyphRange:v6 withinSelectedGlyphRange:v8 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, textContainer, v11}];
}

uint64_t __52__WFSlotTemplateView_updateDisclosureButtonPosition__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) showsOutputButton])
  {
    v2 = [*(a1 + 32) outputButton];
    [v2 intrinsicContentSize];
  }

  v3 = [*(a1 + 32) traitCollection];
  [v3 displayScale];

  v4 = [*(a1 + 32) disclosureButton];
  [v4 intrinsicContentSize];
  v6 = v5;
  v8 = v7;

  BSFloatRoundForScale();
  v10 = v9;
  BSFloatRoundForScale();
  v12 = v11;
  v13 = [*(a1 + 32) disclosureButton];
  [v13 setFrame:{v10, v12, v6, v8}];

  v14 = *(a1 + 32);

  return [v14 updateDisclosureButtonTransformAnimated:0];
}

- (void)didTapDisclosureArrow
{
  v3 = !self->_disclosureArrowIsOpen;
  self->_disclosureArrowIsOpen = v3;
  [(WFSlotTemplateView *)self updateDisclosureButtonTransformAnimated:1];
  delegate = [(WFSlotTemplateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFSlotTemplateView *)self delegate];
    [delegate2 slotTemplateView:self disclosureArrowDidChange:v3];
  }
}

- (void)setDisclosureArrowIsOpen:(BOOL)open
{
  if (self->_disclosureArrowIsOpen != open)
  {
    self->_disclosureArrowIsOpen = open;
    [(WFSlotTemplateView *)self updateDisclosureButtonTransformAnimated:1];
  }
}

- (void)setShowsDisclosureArrow:(BOOL)arrow
{
  if (self->_showsDisclosureArrow != arrow)
  {
    v28 = v3;
    v29 = v4;
    arrowCopy = arrow;
    self->_showsDisclosureArrow = arrow;
    if (arrow)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      [v7 setBounds:{0.0, 0.0, 26.0, 20.0}];
      v8 = objc_opt_new();
      platformImage = [v8 platformImage];
      [v7 setImage:platformImage];
    }

    else
    {
      v7 = 0;
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __46__WFSlotTemplateView_setShowsDisclosureArrow___block_invoke;
    v25 = &unk_1E83086D8;
    selfCopy = self;
    v10 = v7;
    v27 = v10;
    [(WFSlotTemplateView *)self performFadeTransition:&v22];
    if (arrowCopy)
    {
      v11 = [(WFSlotTemplateView *)self traitCollection:v22];
      layoutDirection = [v11 layoutDirection];

      v13 = @"chevron.right.circle";
      if (layoutDirection == 1)
      {
        v13 = @"chevron.left.circle";
      }

      v14 = MEMORY[0x1E69E0B68];
      v15 = v13;
      v16 = [v14 configurationWithPointSize:16.0];
      [v16 setWeight:4];
      v17 = [MEMORY[0x1E69E0B58] systemImageNamed:v15 configuration:v16 renderingMode:2];

      v18 = MEMORY[0x1E69DC738];
      platformImage2 = [v17 platformImage];
      v20 = [v18 systemButtonWithImage:platformImage2 target:self action:sel_didTapDisclosureArrow];

      [(WFSlotTemplateView *)self addSubview:v20];
      [(WFSlotTemplateView *)self setDisclosureButton:v20];
      [(WFSlotTemplateView *)self updateDisclosureButtonPosition];
    }

    else
    {
      v21 = [(WFSlotTemplateView *)self disclosureButton:v22];
      [v21 removeFromSuperview];

      [(WFSlotTemplateView *)self setDisclosureButton:0];
    }
  }
}

void __46__WFSlotTemplateView_setShowsDisclosureArrow___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setDisclosureAttachment:v1];
}

- (void)updateExclusionRectsWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  exclusionRects = [(WFSlotTemplateView *)self exclusionRects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__WFSlotTemplateView_updateExclusionRectsWithBounds___block_invoke;
  v14[3] = &unk_1E83078C0;
  v14[4] = self;
  *&v14[5] = x;
  *&v14[6] = y;
  *&v14[7] = width;
  *&v14[8] = height;
  v9 = [exclusionRects if_map:v14];
  textContainer = [(WFSlotTemplateView *)self textContainer];
  [textContainer setExclusionPaths:v9];

  typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];

  if (typingSlotIdentifier)
  {
    typingSlotIdentifier2 = [(WFSlotTemplateView *)self typingSlotIdentifier];
    v13 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier2];

    if (v13)
    {
      [(WFSlotTemplateView *)self positionTypingAboveSlot:v13];
    }
  }
}

uint64_t __53__WFSlotTemplateView_updateExclusionRectsWithBounds___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 traitCollection];
  v6 = [v5 layoutDirection] == 1;

  v7 = MEMORY[0x1E69DC728];
  [v4 resolvedRectWithViewBounds:v6 inRTL:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  return [v7 bezierPathWithRect:{v9, v11, v13, v15}];
}

- (void)setExclusionRects:(id)rects
{
  rectsCopy = rects;
  exclusionRects = self->_exclusionRects;
  v10 = rectsCopy;
  v6 = exclusionRects;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v10 isEqualToArray:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSArray *)v10 copy];
    v9 = self->_exclusionRects;
    self->_exclusionRects = v8;

    [(WFSlotTemplateView *)self invalidateDisplay];
    [(WFSlotTemplateView *)self invalidateIntrinsicContentSize];
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
  }

LABEL_9:
}

- (void)setExtendSlotBackgroundOffEdges:(BOOL)edges
{
  edgesCopy = edges;
  if ([(WFSlotTemplateView *)self extendSlotBackgroundOffEdges]!= edges)
  {
    layoutManager = [(WFSlotTemplateView *)self layoutManager];
    [layoutManager setExtendSlotBackgroundOffEdges:edgesCopy];

    [(WFSlotTemplateView *)self invalidateDisplay];
  }
}

- (BOOL)extendSlotBackgroundOffEdges
{
  layoutManager = [(WFSlotTemplateView *)self layoutManager];
  extendSlotBackgroundOffEdges = [layoutManager extendSlotBackgroundOffEdges];

  return extendSlotBackgroundOffEdges;
}

- (void)setDisabledSlotTitleColor:(id)color backgroundColor:(id)backgroundColor animated:(BOOL)animated
{
  animatedCopy = animated;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__WFSlotTemplateView_setDisabledSlotTitleColor_backgroundColor_animated___block_invoke;
  aBlock[3] = &unk_1E8308600;
  aBlock[4] = self;
  v15 = colorCopy;
  v16 = backgroundColorCopy;
  v10 = backgroundColorCopy;
  v11 = colorCopy;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (animatedCopy)
  {
    [(WFSlotTemplateView *)self performFadeTransition:v12];
  }

  else
  {
    (*(v12 + 2))(v12);
  }
}

void __73__WFSlotTemplateView_setDisabledSlotTitleColor_backgroundColor_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  [v2 setDisabledSlotTitleColor:*(a1 + 40) backgroundColor:*(a1 + 48)];
}

- (UIColor)disabledSlotBackgroundColor
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  disabledSlotBackgroundColor = [textStorage disabledSlotBackgroundColor];

  return disabledSlotBackgroundColor;
}

- (UIColor)disabledSlotTitleColor
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  disabledSlotTitleColor = [textStorage disabledSlotTitleColor];

  return disabledSlotTitleColor;
}

- (void)setHorizontalPadding:(double)padding
{
  if (self->_horizontalPadding != padding)
  {
    self->_horizontalPadding = padding;
    textContainer = [(WFSlotTemplateView *)self textContainer];
    [textContainer setLineFragmentPadding:padding];

    typingTextView = [(WFSlotTemplateView *)self typingTextView];
    textContainer2 = [typingTextView textContainer];
    [textContainer2 setLineFragmentPadding:padding];

    [(WFSlotTemplateView *)self updateTypingTextContainerSize];
    [(WFSlotTemplateView *)self updateAccessibilityElements];
    [(WFSlotTemplateView *)self invalidateIntrinsicContentSize];
    typingSlotIdentifier = [(WFSlotTemplateView *)self typingSlotIdentifier];

    if (typingSlotIdentifier)
    {
      typingSlotIdentifier2 = [(WFSlotTemplateView *)self typingSlotIdentifier];
      v11 = [(WFSlotTemplateView *)self slotWithIdentifier:typingSlotIdentifier2];

      v10 = v11;
      if (v11)
      {
        [(WFSlotTemplateView *)self positionTypingAboveSlot:v11];
        v10 = v11;
      }
    }
  }
}

- (id)typingParagraphStyleForParagraphStyle:(id)style
{
  paragraphStyle = [(WFSlotTemplateView *)self paragraphStyle];
  v4 = [paragraphStyle mutableCopy];

  [v4 setAlignment:4];

  return v4;
}

- (void)updateTypingParagraphStyle
{
  paragraphStyle = [(WFSlotTemplateView *)self paragraphStyle];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  [typingTextStorage setParagraphStyle:paragraphStyle];

  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  typingAttributes = [typingTextView typingAttributes];
  v6 = [typingAttributes mutableCopy];

  v7 = [(WFSlotTemplateView *)self typingParagraphStyleForParagraphStyle:paragraphStyle];
  [v6 setObject:v7 forKey:*MEMORY[0x1E69DB688]];

  typingTextView2 = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView2 setTypingAttributes:v6];
}

- (void)setSuffixString:(id)string
{
  stringCopy = string;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixString = [textStorage suffixString];
  v7 = [stringCopy isEqualToString:suffixString];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__WFSlotTemplateView_setSuffixString___block_invoke;
    v8[3] = &unk_1E83086D8;
    v8[4] = self;
    v9 = stringCopy;
    [(WFSlotTemplateView *)self performFadeTransition:v8];
  }
}

void __38__WFSlotTemplateView_setSuffixString___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setSuffixString:v1];
}

- (void)setSuffixColor:(id)color
{
  colorCopy = color;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixColor = [textStorage suffixColor];
  v10 = colorCopy;
  v7 = suffixColor;
  if (v7 == v10)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage = [(WFSlotTemplateView *)self textStorage];
    [textStorage setSuffixColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  textColor = [textStorage textColor];
  v10 = colorCopy;
  v7 = textColor;
  if (v7 == v10)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage = [(WFSlotTemplateView *)self textStorage];
    [textStorage setTextColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateTypingSuffixFont
{
  suffixFont = [(WFSlotTemplateView *)self suffixFont];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  [typingTextStorage setSuffixFont:suffixFont];
}

- (void)updateTypingUnpopulatedFont
{
  unpopulatedFont = [(WFSlotTemplateView *)self unpopulatedFont];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  [typingTextStorage setUnpopulatedFont:unpopulatedFont];
}

- (void)setSuffixFont:(id)font
{
  fontCopy = font;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixFont = [textStorage suffixFont];
  v10 = fontCopy;
  v7 = suffixFont;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    [textStorage2 setSuffixFont:v10];

    [(WFSlotTemplateView *)self updateTypingSuffixFont];
  }

LABEL_9:
}

- (void)setUnpopulatedFont:(id)font
{
  fontCopy = font;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  unpopulatedFont = [textStorage unpopulatedFont];
  v10 = fontCopy;
  v7 = unpopulatedFont;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    [textStorage2 setUnpopulatedFont:v10];

    [(WFSlotTemplateView *)self updateTypingUnpopulatedFont];
  }

LABEL_9:
}

- (void)slotTextAttachmentNeedsDisplay:(id)display
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  [textStorage beginEditing];

  textStorage2 = [(WFSlotTemplateView *)self textStorage];
  [textStorage2 endEditing];
}

- (void)updateVariableAttachmentAppearanceInContents
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  [textStorage beginEditing];

  textStorage2 = [(WFSlotTemplateView *)self textStorage];
  v5 = *MEMORY[0x1E69DB5F8];
  textStorage3 = [(WFSlotTemplateView *)self textStorage];
  v7 = [textStorage3 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__WFSlotTemplateView_updateVariableAttachmentAppearanceInContents__block_invoke;
  v9[3] = &unk_1E8307A08;
  v9[4] = self;
  [textStorage2 enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v9}];

  textStorage4 = [(WFSlotTemplateView *)self textStorage];
  [textStorage4 endEditing];
}

void __66__WFSlotTemplateView_updateVariableAttachmentAppearanceInContents__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v12;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [*(a1 + 32) font];
  [v4 setFont:v5];

  v6 = [*(a1 + 32) tintColor];
  [v4 setTintColor:v6];

  [v4 addObserver:*(a1 + 32)];
  v7 = [v4 containingSlotIdentifier];
  if (v7)
  {
    v8 = [*(a1 + 32) slotWithIdentifier:v7];
    if ([v8 standaloneTextAttachment])
    {
      v9 = [*(a1 + 32) highlightedSlotIdentifier];
      v10 = v7;
      if (v9 == v10)
      {
        v11 = 1;
      }

      else if (v9)
      {
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }

      [v4 setHighlighted:v11];
    }

    else
    {
      [v4 setHighlighted:0];
    }
  }

  else
  {
    [v4 setHighlighted:0];
  }
}

- (void)updateTypingFont
{
  font = [(WFSlotTemplateView *)self font];
  typingTextStorage = [(WFSlotTemplateView *)self typingTextStorage];
  [typingTextStorage setFont:font];

  typingTextView = [(WFSlotTemplateView *)self typingTextView];
  typingAttributes = [typingTextView typingAttributes];
  v6 = [typingAttributes mutableCopy];

  [v6 setObject:font forKey:*MEMORY[0x1E69DB648]];
  typingTextView2 = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView2 setTypingAttributes:v6];

  typingTextView3 = [(WFSlotTemplateView *)self typingTextView];
  [typingTextView3 setEmojiOverrideFont:font];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  font = [textStorage font];
  v10 = fontCopy;
  v7 = font;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    [textStorage2 setFont:v10];

    [(WFSlotTemplateView *)self updateTypingFont];
    [(WFSlotTemplateView *)self updateVariableAttachmentAppearanceInContents];
  }

LABEL_9:
}

- (void)setParagraphStyle:(id)style
{
  styleCopy = style;
  textStorage = [(WFSlotTemplateView *)self textStorage];
  paragraphStyle = [textStorage paragraphStyle];
  v10 = styleCopy;
  v7 = paragraphStyle;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    textStorage2 = [(WFSlotTemplateView *)self textStorage];
    [textStorage2 setParagraphStyle:v10];

    [(WFSlotTemplateView *)self updateTypingParagraphStyle];
  }

LABEL_9:
}

- (NSParagraphStyle)paragraphStyle
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  paragraphStyle = [textStorage paragraphStyle];

  return paragraphStyle;
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(WFSlotTemplateView *)self textAlignment]!= alignment)
  {
    v5 = [objc_opt_class() paragraphStyleWithAlignment:alignment];
    [(WFSlotTemplateView *)self setParagraphStyle:v5];
  }
}

- (int64_t)textAlignment
{
  paragraphStyle = [(WFSlotTemplateView *)self paragraphStyle];
  alignment = [paragraphStyle alignment];

  return alignment;
}

- (NSString)suffixString
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixString = [textStorage suffixString];

  return suffixString;
}

- (UIColor)suffixColor
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixColor = [textStorage suffixColor];

  return suffixColor;
}

- (UIColor)textColor
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  textColor = [textStorage textColor];

  return textColor;
}

- (UIFont)suffixFont
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  suffixFont = [textStorage suffixFont];

  return suffixFont;
}

- (UIFont)unpopulatedFont
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  unpopulatedFont = [textStorage unpopulatedFont];

  return unpopulatedFont;
}

- (UIFont)font
{
  textStorage = [(WFSlotTemplateView *)self textStorage];
  font = [textStorage font];

  return font;
}

- (void)setupTextEntry
{
  v3 = objc_alloc(MEMORY[0x1E69DB800]);
  [(WFSlotTemplateView *)self frame];
  obj = [v3 initWithSize:{v4, v5}];
  [(NSTextContainer *)self->_textContainer lineFragmentPadding];
  [obj setLineFragmentPadding:?];
  objc_storeStrong(&self->_typingTextContainer, obj);
  v6 = [[WFSlotTemplateLayoutManager alloc] initWithUseCase:[(WFSlotTemplateView *)self useCase]];
  [(WFSlotTemplateLayoutManager *)v6 setIsLayoutManagerForTextView:1];
  [(WFSlotTemplateLayoutManager *)v6 addTextContainer:obj];
  objc_storeStrong(&self->_typingLayoutManager, v6);
  v7 = [[WFSlotTemplateTextStorage alloc] initWithUseCase:[(WFSlotTemplateView *)self useCase]];
  [(WFSlotTemplateTextStorage *)v7 addLayoutManager:v6];
  objc_storeStrong(&self->_typingTextStorage, v7);
  v8 = [WFSlotTemplateTypingTextView alloc];
  [(WFSlotTemplateView *)self bounds];
  v9 = [(WFSlotTemplateTypingTextView *)v8 initWithFrame:obj textContainer:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(WFSlotTemplateTypingTextView *)v9 setBackgroundColor:clearColor];

  [(WFSlotTemplateTypingTextView *)v9 setAutoresizingMask:18];
  [(WFSlotTemplateTypingTextView *)v9 setScrollEnabled:0];
  [(WFSlotTemplateTypingTextView *)v9 setScrollsToTop:0];
  [(WFSlotTemplateTypingTextView *)v9 setDelegate:self];
  [(WFSlotTemplateTypingTextView *)v9 setHidden:1];
  if ([(WFSlotTemplateView *)self debugMode])
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    v12 = [redColor colorWithAlphaComponent:0.2];
    [(WFSlotTemplateTypingTextView *)v9 setBackgroundColor:v12];
  }

  [(WFSlotTemplateView *)self insertSubview:v9 atIndex:0];
  typingTextView = self->_typingTextView;
  self->_typingTextView = v9;
  v14 = v9;

  [(NSLayoutManager *)v6 wf_setControlView:v14];
  v15 = objc_alloc_init(WFTextAttachmentInteraction);
  [(WFTextAttachmentInteraction *)v15 setDelegate:self];
  [(WFTextAttachmentInteraction *)v15 setTextContainer:obj];
  [(WFSlotTemplateTypingTextView *)v14 addInteraction:v15];
  typingAttachmentInteraction = self->_typingAttachmentInteraction;
  self->_typingAttachmentInteraction = v15;

  [(WFSlotTemplateView *)self updateTypingFont];
  [(WFSlotTemplateView *)self updateTypingUnpopulatedFont];
  [(WFSlotTemplateView *)self updateTypingSuffixFont];
  [(WFSlotTemplateView *)self updateTypingParagraphStyle];
}

- (WFSlotTemplateView)initWithUseCase:(unint64_t)case
{
  v22.receiver = self;
  v22.super_class = WFSlotTemplateView;
  v4 = [(WFSlotTemplateView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(WFSlotTemplateView *)v4 setUseCase:case];
    [(WFSlotTemplateView *)v5 setContextMenuInteractionEnabled:1];
    [(WFSlotTemplateView *)v5 setShowsMenuAsPrimaryAction:1];
    [(WFSlotTemplateView *)v5 setEnabled:1];
    [(WFSlotTemplateView *)v5 setContentMode:5];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(WFSlotTemplateView *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc(MEMORY[0x1E69DB800]);
    v8 = [v7 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    textContainer = v5->_textContainer;
    v5->_textContainer = v8;
    v10 = v8;

    v11 = [[WFSlotTemplateLayoutManager alloc] initWithUseCase:case];
    [(WFSlotTemplateLayoutManager *)v11 addTextContainer:v10];
    [(NSLayoutManager *)v11 wf_setControlView:v5];
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v11;
    v13 = v11;

    v14 = [[WFSlotTemplateTextStorage alloc] initWithUseCase:case];
    [(WFSlotTemplateTextStorage *)v14 setDelegate:v5];
    [(WFSlotTemplateTextStorage *)v14 addLayoutManager:v13];
    textStorage = v5->_textStorage;
    v5->_textStorage = v14;
    v16 = v14;

    [(WFSlotTemplateView *)v5 updateTintColorInTextStorage];
    [(WFSlotTemplateView *)v5 setTextAlignment:4];
    v17 = objc_opt_new();
    cachedHeightsByWidths = v5->_cachedHeightsByWidths;
    v5->_cachedHeightsByWidths = v17;

    v19 = *(MEMORY[0x1E695F050] + 16);
    v5->_presentedMenuTargetedPreviewSlotFrame.origin = *MEMORY[0x1E695F050];
    v5->_presentedMenuTargetedPreviewSlotFrame.size = v19;
    v20 = v5;
  }

  return v5;
}

+ (double)heightForWidth:(double)width withContents:(id)contents horizontalPadding:(double)padding font:(id)font unpopulatedFont:(id)unpopulatedFont alignment:(int64_t)alignment useCase:(unint64_t)case
{
  unpopulatedFontCopy = unpopulatedFont;
  fontCopy = font;
  contentsCopy = contents;
  v19 = [self paragraphStyleWithAlignment:alignment];
  v20 = [[WFSlotTemplateTextStorage alloc] initWithUseCase:case];
  [(WFSlotTemplateTextStorage *)v20 setFont:fontCopy];

  [(WFSlotTemplateTextStorage *)v20 setUnpopulatedFont:unpopulatedFontCopy];
  [(WFSlotTemplateTextStorage *)v20 setParagraphStyle:v19];
  [(WFSlotTemplateTextStorage *)v20 setContents:contentsCopy];

  v21 = [[WFSlotTemplateLayoutManager alloc] initWithUseCase:case];
  [(WFSlotTemplateTextStorage *)v20 addLayoutManager:v21];
  v22 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{width, 1.79769313e308}];
  [v22 setLineFragmentPadding:padding];
  [(WFSlotTemplateLayoutManager *)v21 addTextContainer:v22];
  [(WFSlotTemplateLayoutManager *)v21 ensureLayoutForTextContainer:v22];
  [(WFSlotTemplateLayoutManager *)v21 usedRectForTextContainer:v22];
  v24 = v23;
  v25 = [(WFSlotTemplateLayoutManager *)v21 glyphRangeForTextContainer:v22];
  [(WFSlotTemplateLayoutManager *)v21 boundingRectForGlyphRange:v25 inTextContainer:v26, v22];
  v31.size.height = v28 - v27;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v31.size.width = v24;
  v34.size.width = width;
  v34.size.height = 1.79769313e308;
  v32 = CGRectIntersection(v31, v34);
  v33 = CGRectIntegral(v32);
  height = v33.size.height;

  return height;
}

+ (id)paragraphStyleWithAlignment:(int64_t)alignment
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setLineHeightMultiple:1.35000002];
  [v5 setAlignment:alignment];

  return v5;
}

@end