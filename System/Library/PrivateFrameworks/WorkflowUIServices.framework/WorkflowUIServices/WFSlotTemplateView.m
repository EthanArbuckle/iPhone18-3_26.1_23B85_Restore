@interface WFSlotTemplateView
+ (double)heightForWidth:(double)a3 withContents:(id)a4 horizontalPadding:(double)a5 font:(id)a6 unpopulatedFont:(id)a7 alignment:(int64_t)a8 useCase:(unint64_t)a9;
+ (id)paragraphStyleWithAlignment:(int64_t)a3;
- (BOOL)extendSlotBackgroundOffEdges;
- (BOOL)shouldPresentMenuAboveView;
- (BOOL)shouldRecognizeTapOnTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4;
- (BOOL)startEditingHighlightedSlot;
- (BOOL)textAttachmentInteraction:(id)a3 shouldRecognizeTapOnTextAttachment:(id)a4 inCharacterRange:(_NSRange)a5;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGRect)presentedMenuTargetedPreviewSlotFrame;
- (CGRect)sourceRectForSlot:(id)a3;
- (CGRect)sourceRectForSlotWithIdentifier:(id)a3;
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
- (WFSlotTemplateView)initWithUseCase:(unint64_t)a3;
- (WFSlotTemplateViewDelegate)delegate;
- (double)heightForWidth:(double)a3;
- (double)singleLineHeight;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)attachmentAtPoint:(CGPoint)a3 characterRange:(_NSRange *)a4;
- (id)configureMenuAtLocation:(CGPoint)a3 wasTriggeredByTap:(BOOL)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)createTemporaryTargetPreviewViewForSlotFrame:(CGRect)a3;
- (id)firstSlotIdentifier;
- (id)highlightedSlot;
- (id)highlightedSlotIdentifier;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)lastSlotIdentifier;
- (id)selectedSlot;
- (id)slotAfterSlotIdentifier:(id)a3;
- (id)slotAtPoint:(CGPoint)a3;
- (id)slotBeforeSlotIdentifier:(id)a3;
- (id)slotIdentifierBeforeSlot:(id)a3 inContents:(id)a4;
- (id)slotIdentifierForAttachmentInteraction:(id)a3 characterRange:(_NSRange)a4;
- (id)slotWithIdentifier:(id)a3;
- (id)typingParagraphStyleForParagraphStyle:(id)a3;
- (int64_t)accessibilityElementCount;
- (int64_t)textAlignment;
- (void)_deselectSlotAndNotifyDelegate:(BOOL)a3 completionHandler:(id)a4;
- (void)_selectSlot:(id)a3 notifyDelegate:(BOOL)a4;
- (void)beginEditingFirstEmptySlot;
- (void)beginTypingInSlotWithIdentifier:(id)a3 atPosition:(int64_t)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didTapDisclosureArrow;
- (void)didTapOutputButton;
- (void)didTapTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4;
- (void)drawRect:(CGRect)a3;
- (void)endTyping;
- (void)handleTabInSlotTemplateTypingTextView:(id)a3 isBacktab:(BOOL)a4 withOriginalBlock:(id)a5;
- (void)handleTabIsBacktab:(BOOL)a3;
- (void)handleTouch:(id)a3 withPhase:(unint64_t)a4;
- (void)handleTouchWithPhase:(unint64_t)a3 atLocation:(CGPoint)a4;
- (void)highlightSlotWithIdentifier:(id)a3;
- (void)invalidateDisplay;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)positionTypingAboveSlot:(id)a3;
- (void)presentedMenuDidDismiss;
- (void)resetTextView;
- (void)selectSlotWithIdentifier:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContents:(id)a3 animated:(BOOL)a4;
- (void)setDisabledSlotTitleColor:(id)a3 backgroundColor:(id)a4 animated:(BOOL)a5;
- (void)setDisclosureArrowIsOpen:(BOOL)a3;
- (void)setExclusionRects:(id)a3;
- (void)setExtendSlotBackgroundOffEdges:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHorizontalPadding:(double)a3;
- (void)setOutputButtonIsOpen:(BOOL)a3;
- (void)setParagraphStyle:(id)a3;
- (void)setShowsDisclosureArrow:(BOOL)a3;
- (void)setShowsOutputButton:(BOOL)a3;
- (void)setSuffixColor:(id)a3;
- (void)setSuffixFont:(id)a3;
- (void)setSuffixString:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setUnpopulatedFont:(id)a3;
- (void)setupTextEntry;
- (void)slotTemplateStorageDidInvalidateDisplay:(id)a3;
- (void)slotTemplateTypingTextViewDidCopy:(id)a3 withOriginalBlock:(id)a4;
- (void)slotTemplateTypingTextViewDidCut:(id)a3 withOriginalBlock:(id)a4;
- (void)slotTemplateTypingTextViewDidDelete:(id)a3;
- (void)slotTemplateTypingTextViewDidPaste:(id)a3 pasteRange:(_NSRange)a4 withOriginalBlock:(id)a5;
- (void)slotTextAttachmentNeedsDisplay:(id)a3;
- (void)textAttachmentInteraction:(id)a3 didTapTextAttachment:(id)a4 inCharacterRange:(_NSRange)a5;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)typingTextViewDidChange;
- (void)typingTextViewDidEndEditing;
- (void)unhighlightSlot;
- (void)updateAccessibilityElements;
- (void)updateDisclosureButtonPosition;
- (void)updateDisclosureButtonTransformAnimated:(BOOL)a3;
- (void)updateExclusionRectsWithBounds:(CGRect)a3;
- (void)updateOutputButtonPosition;
- (void)updateOutputButtonTransformAnimated:(BOOL)a3;
- (void)updateTintColorInTextStorage;
- (void)updateTypingFont;
- (void)updateTypingParagraphStyle;
- (void)updateTypingSuffixFont;
- (void)updateTypingTextContainerSize;
- (void)updateTypingTextContents:(id)a3;
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
  v3 = [(WFSlotTemplateView *)self highlightedSlot];
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__WFSlotTemplateView_startEditingHighlightedSlot__block_invoke;
    v6[3] = &unk_1E83086D8;
    v6[4] = self;
    v7 = v3;
    [(WFSlotTemplateView *)self _deselectSlotAndNotifyDelegate:1 completionHandler:v6];
  }

  return v4 != 0;
}

- (void)handleTabIsBacktab:(BOOL)a3
{
  v5 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  v6 = v5;
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v7 = [(WFSlotTemplateView *)self highlightedSlotIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(WFSlotTemplateView *)self selectedSlotIdentifier];
    }

    v11 = v9;
  }

  if (a3)
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
    v3 = [(WFSlotTemplateView *)self textStorage];
    v4 = [(WFSlotTemplateView *)self layoutManager];
    v5 = [v3 selectedSlots];
    v6 = objc_opt_new();
    v7 = [v3 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WFSlotTemplateView_updateAccessibilityElements__block_invoke;
    v12[3] = &unk_1E83079B0;
    v13 = v4;
    v14 = self;
    v15 = v6;
    v16 = v3;
    v17 = v5;
    v8 = v5;
    v9 = v3;
    v10 = v6;
    v11 = v4;
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

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(WFSlotTemplateView *)self accessibilityElements];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(WFSlotTemplateView *)self accessibilityElements];
  v3 = [v2 count];

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
  v8 = [(WFSlotTemplateView *)self typingTextView];
  v3 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  typingSlotIdentifier = self->_typingSlotIdentifier;
  self->_typingSlotIdentifier = 0;

  [v8 setHidden:1];
  [(WFSlotTemplateView *)self resetTextView];
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:v3];
  if (v5)
  {
    v6 = [(WFSlotTemplateView *)self textStorage];
    [v6 didEndTypingInSlot:v5];
  }

  [(WFSlotTemplateView *)self updateAccessibilityElements];
  [(WFSlotTemplateView *)self accessibilityShiftFocusBackToView];
  v7 = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 slotTemplateView:self didEndTypingInSlotWithIdentifier:v3];
  }
}

- (void)typingTextViewDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(WFSlotTemplateView *)self typingTextView];
  v4 = [v3 attributedText];
  v5 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  if (v5)
  {
    v6 = [(WFSlotTemplateView *)self slotWithIdentifier:v5];
    v7 = [v6 copy];
    [v7 populateWithAttributedString:v4];
    v8 = [(WFSlotTemplateView *)self textStorage];
    v9 = [v8 contents];
    v10 = [v9 mutableCopy];

    [v10 replaceObjectAtIndex:objc_msgSend(v10 withObject:{"indexOfObject:", v6), v7}];
    [(WFSlotTemplateView *)self setContents:v10 animated:0];
    v11 = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 slotTemplateView:self didChangeText:v4 forSlotWithIdentifier:v5];
    }

    v12 = [(WFSlotTemplateView *)self layoutManager];
    v13 = [v12 numberOfLaidLines];

    if (v13 != [(WFSlotTemplateView *)self lastLayoutManagerLineCount])
    {
      [(WFSlotTemplateView *)self setLastLayoutManagerLineCount:v13];
      if (objc_opt_respondsToSelector())
      {
        [v11 slotTemplateViewDidInvalidateSize:self];
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

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v12 = [v10 rangeOfCharacterFromSet:v11];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (-[WFSlotTemplateView typingTextView](self, "typingTextView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 typingAllowsMultipleLines], v13, (v14 & 1) != 0))
  {
    v15 = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v9 attributedText];
      v17 = [v16 mutableCopy];
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

      [v21 replaceCharactersInRange:location withString:{length, v10}];
      v22 = [(WFSlotTemplateView *)self typingSlotIdentifier];
      v20 = [v15 slotTemplateView:self shouldChangeText:v21 forSlotWithIdentifier:v22];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    [v9 resignFirstResponder];
    v20 = 0;
  }

  return v20;
}

- (void)resetTextView
{
  v2 = [(WFSlotTemplateView *)self typingTextView];
  [v2 setClearsZeroWhenTyping:0];
  [v2 setAttributedText:0];
  [v2 setInputView:0];
  [v2 setInputAccessoryView:0];
  [v2 setAutocapitalizationType:2];
  [v2 setAutocorrectionType:0];
  [v2 setSpellCheckingType:0];
  [v2 setSmartQuotesType:0];
  [v2 setSmartDashesType:0];
  [v2 setSmartInsertDeleteType:0];
  [v2 setKeyboardType:0];
  [v2 setKeyboardAppearance:0];
  [v2 setReturnKeyType:0];
  [v2 setEnablesReturnKeyAutomatically:0];
  [v2 setSecureTextEntry:0];
  [v2 setTextContentType:0];
  [v2 setPasswordRules:0];
}

- (void)endTyping
{
  v3 = [(WFSlotTemplateView *)self typingTextView];

  if (v3)
  {
    v4 = [(WFSlotTemplateView *)self typingTextView];
    v5 = [v4 isFirstResponder];

    if (v5)
    {
      v6 = [(WFSlotTemplateView *)self typingTextView];
      [v6 resignFirstResponder];
    }

    else
    {

      [(WFSlotTemplateView *)self typingTextViewDidEndEditing];
    }
  }
}

- (void)positionTypingAboveSlot:(id)a3
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v5 = objc_opt_new();
  v6 = [(WFSlotTemplateView *)self layoutManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__WFSlotTemplateView_positionTypingAboveSlot___block_invoke;
  v13[3] = &unk_1E8307960;
  v15 = v17;
  v16 = v19;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  [v6 enumerateEnclosingRectsForSlot:v4 includeInsideSpacing:0 insetForBackground:0 usingBlock:v13];

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

- (void)beginTypingInSlotWithIdentifier:(id)a3 atPosition:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFSlotTemplateView *)self slotWithIdentifier:v6];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1767 description:@"Must be slot with that identifier"];
  }

  v8 = [(WFSlotTemplateView *)self typingTextView];

  if (!v8)
  {
    [(WFSlotTemplateView *)self setupTextEntry];
  }

  v9 = [v6 copy];
  typingSlotIdentifier = self->_typingSlotIdentifier;
  self->_typingSlotIdentifier = v9;

  v11 = [(WFSlotTemplateView *)self typingTextView];
  v12 = [(WFSlotTemplateView *)self typingTextStorage];
  [(WFSlotTemplateView *)self resetTextView];
  [(WFSlotTemplateView *)self updateTypingTextContents:v6];
  [(WFSlotTemplateView *)self positionTypingAboveSlot:v7];
  [v11 setReturnKeyType:9];
  v13 = [(WFSlotTemplateView *)self typingTextView];
  [v13 setTypingAllowsMultipleLines:0];

  v14 = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = 0;
    [v14 slotTemplateView:self willBeginTypingInSlotWithIdentifier:v6 usingTextEntry:v11 allowMultipleLines:&v20];
    if (v20 == 1)
    {
      [v11 setReturnKeyType:0];
      v15 = [(WFSlotTemplateView *)self typingTextView];
      [v15 setTypingAllowsMultipleLines:1];
    }
  }

  v16 = [(WFSlotTemplateView *)self textStorage];
  [v16 didBeginTypingInSlot:v7];

  [v11 setHidden:0];
  [v11 becomeFirstResponder];
  if ([v7 userInputInsertionIndex] == -1)
  {
    v17 = [v12 length];
  }

  else
  {
    v17 = [v7 userInputInsertionIndex];
  }

  [v11 setSelectedRange:{v17, 0}];
  v18 = [(WFSlotTemplateView *)self layoutManager];
  -[WFSlotTemplateView setLastLayoutManagerLineCount:](self, "setLastLayoutManagerLineCount:", [v18 numberOfLaidLines]);
}

- (void)beginEditingFirstEmptySlot
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WFSlotTemplateView *)self textStorage];
  v4 = [v3 contents];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  v11 = [v10 identifier];

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_13:
  v12 = [(WFSlotTemplateView *)self firstSlotIdentifier];
  if (v12)
  {
    v11 = v12;
LABEL_15:
    [(WFSlotTemplateView *)self highlightSlotWithIdentifier:v11];
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
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 contents];
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v9 identifier];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)firstSlotIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 contents];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [v7 identifier];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)updateTypingTextContents:(id)a3
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:a3];
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1693 description:@"Must be slot with that identifier"];
  }

  v6 = [(WFSlotTemplateView *)self typingTextView];
  v7 = [(WFSlotTemplateView *)self typingTextStorage];
  v8 = [v7 string];
  v9 = [v5 contentAttributedString];
  v10 = [v9 string];
  v11 = [v8 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [(WFSlotTemplateView *)self textColor];
    [v7 setTextColor:v12];

    v26[0] = *MEMORY[0x1E69DB648];
    v13 = [(WFSlotTemplateView *)self font];
    v27[0] = v13;
    v26[1] = *MEMORY[0x1E69DB650];
    v14 = [v7 textColor];
    v27[1] = v14;
    v26[2] = *MEMORY[0x1E69DB688];
    v15 = [(WFSlotTemplateView *)self paragraphStyle];
    v16 = [(WFSlotTemplateView *)self typingParagraphStyleForParagraphStyle:v15];
    v27[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v6 setTypingAttributes:v17];

    v18 = [(WFSlotTemplateView *)self font];
    [v6 setEmojiOverrideFont:v18];

    v19 = [v5 contentAttributedString];
    v20 = [v19 mutableCopy];
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

    v24 = [v6 typingAttributes];
    [v23 addAttributes:v24 range:{0, objc_msgSend(v23, "length")}];

    [v7 setAttributedString:v23];
  }
}

- (double)singleLineHeight
{
  v3 = [(WFSlotTemplateView *)self layoutManager];
  v4 = [v3 glyphRangeForCharacterRange:0 actualCharacterRange:{1, 0}];

  v5 = [(WFSlotTemplateView *)self layoutManager];
  [v5 lineFragmentRectForGlyphAtIndex:v4 effectiveRange:0];
  v7 = v6;

  return v7;
}

- (double)heightForWidth:(double)a3
{
  v5 = [(WFSlotTemplateView *)self cachedHeightsByWidths];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

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

    v14 = [(WFSlotTemplateView *)self textContainer];
    v15 = [(WFSlotTemplateView *)self layoutManager];
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
    [v15 wf_calculateIntrinsicHeightForWidth:v14 textContainer:a3];
    v9 = v16;
    [(WFSlotTemplateView *)self bounds];
    [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v18 = [(WFSlotTemplateView *)self cachedHeightsByWidths];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v18 setObject:v17 forKeyedSubscript:v19];

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

- (void)textAttachmentInteraction:(id)a3 didTapTextAttachment:(id)a4 inCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = a4;
  v9 = [(WFSlotTemplateView *)self slotIdentifierForAttachmentInteraction:a3 characterRange:location, length];
  if (v9)
  {
    [(WFSlotTemplateView *)self didTapTextAttachment:v10 inSlotWithIdentifier:v9];
  }
}

- (BOOL)textAttachmentInteraction:(id)a3 shouldRecognizeTapOnTextAttachment:(id)a4 inCharacterRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = [(WFSlotTemplateView *)self slotIdentifierForAttachmentInteraction:a3 characterRange:location, length];
  if (v10)
  {
    v11 = [(WFSlotTemplateView *)self shouldRecognizeTapOnTextAttachment:v9 inSlotWithIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)slotIdentifierForAttachmentInteraction:(id)a3 characterRange:(_NSRange)a4
{
  v5 = a3;
  v6 = [(WFSlotTemplateView *)self typingAttachmentInteraction];

  if (v6 == v5)
  {
    v7 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didTapTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(WFSlotTemplateView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 slotTemplateView:self didTapTextAttachment:v8 inSlotWithIdentifier:v6];
  }
}

- (BOOL)shouldRecognizeTapOnTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFSlotTemplateView *)self slotWithIdentifier:v7];
  if (-[WFSlotTemplateView isEnabled](self, "isEnabled") && [v8 isEnabled])
  {
    v9 = [(WFSlotTemplateView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 slotTemplateView:self shouldTapTextAttachment:v6 inSlotWithIdentifier:v7];
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

- (void)handleTabInSlotTemplateTypingTextView:(id)a3 isBacktab:(BOOL)a4 withOriginalBlock:(id)a5
{
  v7 = a5;
  v8 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  if (v8 && (-[WFSlotTemplateView typingTextView](self, "typingTextView"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 typingAllowsMultipleLines], v9, !v10))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__WFSlotTemplateView_handleTabInSlotTemplateTypingTextView_isBacktab_withOriginalBlock___block_invoke;
    v11[3] = &unk_1E83084B8;
    v11[4] = self;
    v12 = a4;
    [(WFSlotTemplateView *)self _deselectSlotAndNotifyDelegate:1 completionHandler:v11];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)slotTemplateTypingTextViewDidPaste:(id)a3 pasteRange:(_NSRange)a4 withOriginalBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v11 = a5;
  v8 = [(WFSlotTemplateView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WFSlotTemplateView *)self delegate];
    [v10 slotTemplateView:self typingDidPasteWithRange:location originalBlock:{length, v11}];
  }

  else
  {
    v11[2]();
  }
}

- (void)slotTemplateTypingTextViewDidCopy:(id)a3 withOriginalBlock:(id)a4
{
  v8 = a4;
  v5 = [(WFSlotTemplateView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFSlotTemplateView *)self delegate];
    [v7 slotTemplateView:self typingDidCopyWithOriginalBlock:v8];
  }

  else
  {
    v8[2]();
  }
}

- (void)slotTemplateTypingTextViewDidCut:(id)a3 withOriginalBlock:(id)a4
{
  v8 = a4;
  v5 = [(WFSlotTemplateView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFSlotTemplateView *)self delegate];
    [v7 slotTemplateView:self typingDidCutWithOriginalBlock:v8];
  }

  else
  {
    v8[2]();
  }
}

- (void)slotTemplateTypingTextViewDidDelete:(id)a3
{
  v4 = [(WFSlotTemplateView *)self selectedSlot];
  v5 = [v4 isPopulated];

  if ((v5 & 1) == 0)
  {
    v6 = [(WFSlotTemplateView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(WFSlotTemplateView *)self delegate];
      v8 = [(WFSlotTemplateView *)self selectedSlotIdentifier];
      [v9 slotTemplateView:self deletePressedOnSlotWithIdentifier:v8 allowResettingValue:0];
    }
  }
}

- (void)slotTemplateStorageDidInvalidateDisplay:(id)a3
{
  [(WFSlotTemplateView *)self invalidateDisplay];

  [(WFSlotTemplateView *)self updateAccessibilityElements];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v6 tintColorDidChange];
  v3 = [(WFSlotTemplateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFSlotTemplateView *)self delegate];
    [v5 slotTemplateViewTintColorDidChange:self];
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

- (CGRect)sourceRectForSlot:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1413 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_1C843E1FB;
  v6 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  v23 = v6;
  v7 = [(WFSlotTemplateView *)self layoutManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__WFSlotTemplateView_sourceRectForSlot___block_invoke;
  v17[3] = &unk_1E8307938;
  v17[4] = &v18;
  [v7 enumerateEnclosingRectsForSlot:v5 includeInsideSpacing:1 insetForBackground:1 usingBlock:v17];

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

- (CGRect)sourceRectForSlotWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:1407 description:{@"Invalid parameter not satisfying: %@", @"slotIdentifier"}];
  }

  v6 = [(WFSlotTemplateView *)self slotWithIdentifier:v5];
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

- (id)slotAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(WFSlotTemplateView *)self layoutManager];
  v7 = [(WFSlotTemplateView *)self textContainer];
  v8 = [v6 characterIndexForPoint:v7 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{x, y}];

  v24 = 0;
  v25 = 0;
  v9 = [(WFSlotTemplateView *)self textStorage];
  v10 = [v9 slotAtCharacterIndex:v8 effectiveRange:&v24 effectiveContentRange:0];

  if (v10)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = [(WFSlotTemplateView *)self layoutManager];
    v12 = [v11 glyphRangeForCharacterRange:v24 actualCharacterRange:{v25, 0}];
    v14 = v13;

    v15 = [(WFSlotTemplateView *)self layoutManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __34__WFSlotTemplateView_slotAtPoint___block_invoke;
    v19[3] = &unk_1E8307910;
    *&v19[5] = x;
    *&v19[6] = y;
    v19[4] = &v20;
    [v15 enumerateInsetEnclosingRectsForGlyphRange:v12 usingBlock:{v14, v19}];

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

- (id)attachmentAtPoint:(CGPoint)a3 characterRange:(_NSRange *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(WFSlotTemplateView *)self layoutManager];
  v9 = [(WFSlotTemplateView *)self textContainer];
  v10 = [v8 characterIndexForPoint:v9 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{x, y}];

  v11 = [(WFSlotTemplateView *)self layoutManager];
  v12 = [(WFSlotTemplateView *)self textContainer];
  v13 = [v11 glyphIndexForPoint:v12 inTextContainer:{x, y}];

  v14 = [(WFSlotTemplateView *)self textStorage];
  v15 = [v14 length];

  v16 = 0;
  if (v10 < v15)
  {
    v17 = [(WFSlotTemplateView *)self textStorage];
    v16 = [v17 attribute:*MEMORY[0x1E69DB5F8] atIndex:v10 effectiveRange:0];

    if (v16 && (-[WFSlotTemplateView layoutManager](self, "layoutManager"), v18 = objc_claimAutoreleasedReturnValue(), -[WFSlotTemplateView textContainer](self, "textContainer"), v19 = objc_claimAutoreleasedReturnValue(), [v18 boundingRectForGlyphRange:v13 inTextContainer:{1, v19}], v21 = v20, v23 = v22, v25 = v24, v27 = v26, v19, v18, v31.origin.x = v21, v31.origin.y = v23, v31.size.width = v25, v31.size.height = v27, v30.x = x, v30.y = y, CGRectContainsPoint(v31, v30)))
    {
      if (a4)
      {
        a4->location = v10;
        a4->length = 1;
      }
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  v6 = a3;
  [(WFSlotTemplateView *)&v8 touchesCancelled:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(WFSlotTemplateView *)self handleTouch:v7 withPhase:3];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  v6 = a3;
  [(WFSlotTemplateView *)&v8 touchesEnded:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(WFSlotTemplateView *)self handleTouch:v7 withPhase:2];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  v6 = a3;
  [(WFSlotTemplateView *)&v8 touchesMoved:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(WFSlotTemplateView *)self handleTouch:v7 withPhase:1];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateView;
  v6 = a3;
  [(WFSlotTemplateView *)&v8 touchesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(WFSlotTemplateView *)self handleTouch:v7 withPhase:0];
}

- (void)handleTouch:(id)a3 withPhase:(unint64_t)a4
{
  [a3 locationInView:self];

  [(WFSlotTemplateView *)self handleTouchWithPhase:a4 atLocation:?];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = WFSlotTemplateView;
  v8 = [(WFSlotTemplateView *)&v25 hitTest:v7 withEvent:x, y];
  v9 = [(WFSlotTemplateView *)self outputButton];

  if (v8 != v9)
  {
    v10 = [(WFSlotTemplateView *)self disclosureButton];

    if (v8 != v10)
    {
      v11 = [(WFSlotTemplateView *)self typingTextView];
      v12 = v11;
      if (v8 == v11)
      {
        v15 = [(WFSlotTemplateView *)self typingSlotIdentifier];

        if (v15)
        {
          v13 = [(WFSlotTemplateView *)self typingSlotIdentifier];
          v14 = [(WFSlotTemplateView *)self slotWithIdentifier:v13];
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0;
          if (!v14 || (-[WFSlotTemplateView layoutManager](self, "layoutManager"), v16 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __40__WFSlotTemplateView_hitTest_withEvent___block_invoke, v20[3] = &unk_1E8307910, *&v20[5] = x, *&v20[6] = y, v20[4] = &v21, [v16 enumerateEnclosingRectsForSlot:v14 includeInsideSpacing:1 insetForBackground:0 usingBlock:v20], v16, (v22[3] & 1) == 0))
          {
            v17 = self;

            v8 = v17;
          }

          _Block_object_dispose(&v21, 8);
          goto LABEL_12;
        }
      }

      else
      {
      }

      v13 = [(WFSlotTemplateView *)self slotAtPoint:x, y];
      if (v13)
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

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = MEMORY[0x1E696AD88];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultCenter];
  [v12 postNotificationName:@"WFSlotContextMenuInteractionWillEndNotification" object:0];

  [(WFSlotTemplateView *)self presentedMenuDidDismiss];
  v13.receiver = self;
  v13.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v13 contextMenuInteraction:v11 willEndForConfiguration:v10 animator:v9];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(WFSlotTemplateView *)self menuWillPresent];
  v11.receiver = self;
  v11.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v11 contextMenuInteraction:v10 willDisplayMenuForConfiguration:v9 animator:v8];
}

- (id)createTemporaryTargetPreviewViewForSlotFrame:(CGRect)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [v5 colorWithAlphaComponent:0.01];
  [v4 setBackgroundColor:v6];

  v7 = [v4 layer];
  [v7 setCornerRadius:10.0];

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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  [(WFSlotTemplateView *)self presentedMenuTargetedPreviewSlotFrame:a3];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = [a4 identifier];
  v7 = [(WFSlotTemplateView *)self slotWithIdentifier:v6];
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
  v11 = [(WFSlotTemplateView *)self window];
  [(WFSlotTemplateView *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;

  v14 = [(WFSlotTemplateView *)self window];
  [v14 frame];
  LOBYTE(v11) = v13 > v15 * 0.5;

  return v11;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(WFSlotTemplateView *)self touchDownTimestamp];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [(WFSlotTemplateView *)self touchDownTimestamp];
  v13 = v10 < 0.140000001 || v11 == 0;

  [(WFSlotTemplateView *)self setTouchDownTimestamp:0];
  v32.receiver = self;
  v32.super_class = WFSlotTemplateView;
  v14 = [(WFSlotTemplateView *)&v32 hitTest:0 withEvent:x, y];
  v15 = [(WFSlotTemplateView *)self disclosureButton];

  if (v14 == v15)
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

  v16 = [(WFSlotTemplateView *)self outputButton];

  if (v14 == v16)
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
    v19 = [v18 shouldDisplayInFixedOrder];
    v20 = MEMORY[0x1E69DC8D8];
    v21 = [v17 identifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__WFSlotTemplateView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
    v28[3] = &unk_1E83078E8;
    v29 = v18;
    v22 = v18;
    v23 = [v20 configurationWithIdentifier:v21 previewProvider:0 actionProvider:v28];

    if (v19)
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

- (void)handleTouchWithPhase:(unint64_t)a3 atLocation:(CGPoint)a4
{
  v10 = [(WFSlotTemplateView *)self slotAtPoint:a4.x, a4.y];
  v6 = [v10 identifier];
  v7 = [(WFSlotTemplateView *)self typingSlotIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    if (v10 && [v10 isEnabled])
    {
      v9 = [v10 identifier];
      [(WFSlotTemplateView *)self highlightSlotWithIdentifier:v9];
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a3)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2 || [(WFSlotTemplateView *)self menuIsPresented])
    {
      goto LABEL_14;
    }

LABEL_13:
    [(WFSlotTemplateView *)self unhighlightSlot];
    goto LABEL_14;
  }

  if (v10 && [v10 isEnabled])
  {
    v9 = [MEMORY[0x1E695DF00] date];
    [(WFSlotTemplateView *)self setTouchDownTimestamp:v9];
LABEL_10:
  }

LABEL_14:

  MEMORY[0x1EEE66BB8]();
}

- (void)drawRect:(CGRect)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v31 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(WFSlotTemplateView *)self textContainer];
  v14 = [v4 glyphRangeForBoundingRect:v13 inTextContainer:{v6, v8, v10, v12}];
  v16 = v15;

  v17 = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  [v17 drawBackgroundForGlyphRange:v14 atPoint:v16];

  v18 = [(WFSlotTemplateView *)self layoutManager];
  [(WFSlotTemplateView *)self bounds];
  [v18 drawGlyphsForGlyphRange:v14 atPoint:v16];

  if ([(WFSlotTemplateView *)self debugMode])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = [(WFSlotTemplateView *)self typingTextContainer];
    v21 = [v20 exclusionPaths];

    v22 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v21);
          }

          CGContextAddPath(CurrentContext, [*(*(&v27 + 1) + 8 * v25) CGPath]);
          v26 = [MEMORY[0x1E69DC888] redColor];
          CGContextSetFillColorWithColor(CurrentContext, [v26 CGColor]);

          CGContextFillPath(CurrentContext);
          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

- (void)updateTypingTextContainerSize
{
  [(WFSlotTemplateView *)self bounds];
  v4 = v3;
  v5 = [(WFSlotTemplateView *)self typingTextContainer];
  [v5 setSize:{v4, 1.79769313e308}];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v18 layoutSubviews];
  [(WFSlotTemplateView *)self bounds];
  v4 = v3;
  v5 = [(WFSlotTemplateView *)self textContainer];
  [v5 setSize:{v4, 1.79769313e308}];

  [(WFSlotTemplateView *)self updateTypingTextContainerSize];
  [(WFSlotTemplateView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(WFSlotTemplateView *)self typingTextView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(WFSlotTemplateView *)self typingSlotIdentifier];

  if (v15)
  {
    v16 = [(WFSlotTemplateView *)self typingSlotIdentifier];
    v17 = [(WFSlotTemplateView *)self slotWithIdentifier:v16];

    if (v17)
    {
      [(WFSlotTemplateView *)self positionTypingAboveSlot:v17];
    }
  }

  [(WFSlotTemplateView *)self updateAccessibilityElements];
  [(WFSlotTemplateView *)self updateDisclosureButtonPosition];
  [(WFSlotTemplateView *)self updateOutputButtonPosition];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFSlotTemplateView;
  [(WFSlotTemplateView *)&v4 traitCollectionDidChange:a3];
  [(WFSlotTemplateView *)self bounds];
  [(WFSlotTemplateView *)self updateExclusionRectsWithBounds:?];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(WFSlotTemplateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFSlotTemplateView *)self delegate];
    [v5 menuDidDismissInSlotTemplateView:self];
  }
}

- (id)configureMenuAtLocation:(CGPoint)a3 wasTriggeredByTap:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(WFSlotTemplateView *)self slotAtPoint:?];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v9 = [(WFSlotTemplateView *)self attachmentAtPoint:0 characterRange:x, y];
  if (!v9 || ([v8 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[WFSlotTemplateView shouldRecognizeTapOnTextAttachment:inSlotWithIdentifier:](self, "shouldRecognizeTapOnTextAttachment:inSlotWithIdentifier:", v9, v10), v10, !v11))
  {

LABEL_8:
    v14 = !v4;
    v15 = [(WFSlotTemplateView *)self delegate];
    v16 = [v8 identifier];
    v13 = [v15 slotTemplateView:self menuForSlotIdentifier:v16 style:!v4];

    if (v14 || v13)
    {
      if (v13)
      {
        v17 = [v8 identifier];
        [(WFSlotTemplateView *)self highlightSlotWithIdentifier:v17];
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

- (void)_deselectSlotAndNotifyDelegate:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(WFSlotTemplateView *)self selectedSlot];
  v8 = v7;
  if (v7)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __71__WFSlotTemplateView__deselectSlotAndNotifyDelegate_completionHandler___block_invoke;
    v15 = &unk_1E83086D8;
    v16 = self;
    v9 = v7;
    v17 = v9;
    [(WFSlotTemplateView *)self performFadeTransition:&v12];
    [(WFSlotTemplateView *)self accessibilityShiftFocusBackToView:v12];
    v10 = [(WFSlotTemplateView *)self delegate];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v9 identifier];
      [v10 slotTemplateView:self didDeselectSlotWithIdentifier:v11 completionHandler:v6];
    }

    else if (v6)
    {
      v6[2](v6);
    }
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

void __71__WFSlotTemplateView__deselectSlotAndNotifyDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  [v2 didDeselectSlot:*(a1 + 40)];
}

- (void)_selectSlot:(id)a3 notifyDelegate:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:851 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v8 = [(WFSlotTemplateView *)self textStorage];
  v9 = [v8 selectedSlots];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WFSlotTemplateView__selectSlot_notifyDelegate___block_invoke;
    v12[3] = &unk_1E8307F68;
    v13 = v7;
    v14 = v8;
    v15 = self;
    v16 = a4;
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

- (void)selectSlotWithIdentifier:(id)a3
{
  v5 = [(WFSlotTemplateView *)self slotWithIdentifier:a3];
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateView.m" lineNumber:846 description:@"Must be slot with that identifier"];

    v5 = 0;
  }

  [(WFSlotTemplateView *)self _selectSlot:v5 notifyDelegate:0];
}

- (WFSlotIdentifier)selectedSlotIdentifier
{
  v2 = [(WFSlotTemplateView *)self selectedSlot];
  v3 = [v2 identifier];

  return v3;
}

- (id)selectedSlot
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 selectedSlots];
  v4 = [v3 anyObject];

  return v4;
}

- (void)unhighlightSlot
{
  v3 = [(WFSlotTemplateView *)self highlightedSlot];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__WFSlotTemplateView_unhighlightSlot__block_invoke;
    v5[3] = &unk_1E83086D8;
    v5[4] = self;
    v6 = v3;
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

- (void)highlightSlotWithIdentifier:(id)a3
{
  v4 = [(WFSlotTemplateView *)self slotWithIdentifier:a3];
  if (v4)
  {
    v5 = [(WFSlotTemplateView *)self textStorage];
    v6 = [v5 highlightedSlots];
    v7 = [v6 containsObject:v4];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__WFSlotTemplateView_highlightSlotWithIdentifier___block_invoke;
      v8[3] = &unk_1E8308600;
      v8[4] = self;
      v9 = v5;
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
  v2 = [(WFSlotTemplateView *)self highlightedSlot];
  v3 = [v2 identifier];

  return v3;
}

- (id)highlightedSlot
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 highlightedSlots];
  v4 = [v3 anyObject];

  return v4;
}

- (id)slotIdentifierBeforeSlot:(id)a3 inContents:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 identifier];
          v14 = [v13 isEqual:v5];

          if (v14)
          {
            v8 = v8;

            v7 = v8;
            goto LABEL_13;
          }

          v15 = [v12 identifier];

          v8 = v15;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)slotBeforeSlotIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 contents];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 objectEnumerator];
    v9 = [(WFSlotTemplateView *)self slotIdentifierBeforeSlot:v4 inContents:v8];
  }

  else
  {
    v10 = [v6 if_objectsOfClass:objc_opt_class()];
    v11 = [v10 lastObject];

    v9 = [v11 identifier];
    v5 = v11;
  }

  return v9;
}

- (id)slotAfterSlotIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 contents];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 reverseObjectEnumerator];
    v9 = [(WFSlotTemplateView *)self slotIdentifierBeforeSlot:v4 inContents:v8];
  }

  else
  {
    v10 = [v6 if_objectsOfClass:objc_opt_class()];
    v11 = [v10 firstObject];

    v9 = [v11 identifier];
    v5 = v11;
  }

  return v9;
}

- (id)slotWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 contents];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 identifier];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)setContents:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = getWFEditorLogObject();
  v8 = os_signpost_id_generate(v7);

  v9 = getWFEditorLogObject();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C830A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SlotTemplateSetContents", "", buf, 2u);
  }

  v11 = [(WFSlotTemplateView *)self textStorage];
  v12 = [v11 contents];
  v13 = v6;
  v14 = v12;
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

    v11 = [(WFSlotTemplateView *)self selectedSlotIdentifier];
    v18 = [(WFSlotTemplateView *)self highlightedSlotIdentifier];
    v19 = [(WFSlotTemplateView *)self textStorage];
    [v19 beginEditing];

    if (v4)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __43__WFSlotTemplateView_setContents_animated___block_invoke;
      v30 = &unk_1E83086D8;
      v31 = self;
      v32 = v13;
      [(WFSlotTemplateView *)self performFadeTransition:&v27];

      if (!v11)
      {
LABEL_17:
        if (v18)
        {
          v22 = [(WFSlotTemplateView *)self slotWithIdentifier:v18];

          if (v22)
          {
            [(WFSlotTemplateView *)self highlightSlotWithIdentifier:v18];
          }
        }

        [(WFSlotTemplateView *)self updateVariableAttachmentAppearanceInContents:v27];
        v23 = [(WFSlotTemplateView *)self textStorage];
        [v23 endEditing];

        [(WFSlotTemplateView *)self invalidateIntrinsicContentSize];
        v17 = [(WFSlotTemplateView *)self typingSlotIdentifier];
        if (v17)
        {
          v24 = [(WFSlotTemplateView *)self slotWithIdentifier:v17];
          if (v24)
          {
            [(WFSlotTemplateView *)self updateTypingTextContents:v17];
            v25 = [(WFSlotTemplateView *)self textStorage];
            [v25 didBeginTypingInSlot:v24];

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
      v20 = [(WFSlotTemplateView *)self textStorage];
      [v20 setContents:v13];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v21 = [(WFSlotTemplateView *)self slotWithIdentifier:v11, v27, v28, v29, v30, v31];

    if (v21)
    {
      [(WFSlotTemplateView *)self selectSlotWithIdentifier:v11];
    }

    goto LABEL_17;
  }

  v17 = v13;
  v18 = v14;
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
  v3 = [(WFSlotTemplateView *)self cachedHeightsByWidths];
  [v3 removeAllObjects];
}

- (void)invalidateDisplay
{
  [(WFSlotTemplateView *)self updateDisclosureButtonPosition];
  [(WFSlotTemplateView *)self setNeedsDisplay];

  [(WFSlotTemplateView *)self updateOutputButtonPosition];
}

- (void)updateOutputButtonTransformAnimated:(BOOL)a3
{
  v3 = 0.200000003;
  if (!a3)
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
  v3 = [(WFSlotTemplateView *)self textStorage];
  v4 = [v3 length] - 1;

  v5 = [(WFSlotTemplateView *)self layoutManager];
  v6 = [v5 glyphRangeForCharacterRange:v4 actualCharacterRange:{1, 0}];
  v8 = v7;

  v9 = [(WFSlotTemplateView *)self layoutManager];
  v10 = [(WFSlotTemplateView *)self textContainer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__WFSlotTemplateView_updateOutputButtonPosition__block_invoke;
  v11[3] = &unk_1E83081E0;
  v11[4] = self;
  [v9 enumerateEnclosingRectsForGlyphRange:v6 withinSelectedGlyphRange:v8 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v10, v11}];
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
  v4 = [(WFSlotTemplateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFSlotTemplateView *)self delegate];
    [v6 slotTemplateView:self outputButtonDidChange:v3];
  }
}

- (void)setOutputButtonIsOpen:(BOOL)a3
{
  if (self->_outputButtonIsOpen != a3)
  {
    self->_outputButtonIsOpen = a3;
    [(WFSlotTemplateView *)self updateOutputButtonTransformAnimated:0];
  }
}

- (void)setShowsOutputButton:(BOOL)a3
{
  if (self->_showsOutputButton != a3)
  {
    v21 = v3;
    v22 = v4;
    v5 = a3;
    self->_showsOutputButton = a3;
    if (a3)
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
    v19 = self;
    v9 = v7;
    v20 = v9;
    [(WFSlotTemplateView *)self performFadeTransition:&v15];
    if (v5)
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"eye", v15, v16, v17, v18, v19}];
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

- (void)updateDisclosureButtonTransformAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFSlotTemplateView *)self traitCollection];
  v6 = [v5 layoutDirection] == 1;

  v7 = qword_1C841E350[v6];
  v8 = 0.400000006;
  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __62__WFSlotTemplateView_updateDisclosureButtonTransformAnimated___block_invoke;
  v9[3] = &unk_1E8308580;
  if (!v3)
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
  v3 = [(WFSlotTemplateView *)self textStorage];
  v4 = [v3 length] - 1;

  v5 = [(WFSlotTemplateView *)self layoutManager];
  v6 = [v5 glyphRangeForCharacterRange:v4 actualCharacterRange:{1, 0}];
  v8 = v7;

  v9 = [(WFSlotTemplateView *)self layoutManager];
  v10 = [(WFSlotTemplateView *)self textContainer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__WFSlotTemplateView_updateDisclosureButtonPosition__block_invoke;
  v11[3] = &unk_1E83081E0;
  v11[4] = self;
  [v9 enumerateEnclosingRectsForGlyphRange:v6 withinSelectedGlyphRange:v8 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v10, v11}];
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
  v4 = [(WFSlotTemplateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFSlotTemplateView *)self delegate];
    [v6 slotTemplateView:self disclosureArrowDidChange:v3];
  }
}

- (void)setDisclosureArrowIsOpen:(BOOL)a3
{
  if (self->_disclosureArrowIsOpen != a3)
  {
    self->_disclosureArrowIsOpen = a3;
    [(WFSlotTemplateView *)self updateDisclosureButtonTransformAnimated:1];
  }
}

- (void)setShowsDisclosureArrow:(BOOL)a3
{
  if (self->_showsDisclosureArrow != a3)
  {
    v28 = v3;
    v29 = v4;
    v5 = a3;
    self->_showsDisclosureArrow = a3;
    if (a3)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      [v7 setBounds:{0.0, 0.0, 26.0, 20.0}];
      v8 = objc_opt_new();
      v9 = [v8 platformImage];
      [v7 setImage:v9];
    }

    else
    {
      v7 = 0;
    }

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __46__WFSlotTemplateView_setShowsDisclosureArrow___block_invoke;
    v25 = &unk_1E83086D8;
    v26 = self;
    v10 = v7;
    v27 = v10;
    [(WFSlotTemplateView *)self performFadeTransition:&v22];
    if (v5)
    {
      v11 = [(WFSlotTemplateView *)self traitCollection:v22];
      v12 = [v11 layoutDirection];

      v13 = @"chevron.right.circle";
      if (v12 == 1)
      {
        v13 = @"chevron.left.circle";
      }

      v14 = MEMORY[0x1E69E0B68];
      v15 = v13;
      v16 = [v14 configurationWithPointSize:16.0];
      [v16 setWeight:4];
      v17 = [MEMORY[0x1E69E0B58] systemImageNamed:v15 configuration:v16 renderingMode:2];

      v18 = MEMORY[0x1E69DC738];
      v19 = [v17 platformImage];
      v20 = [v18 systemButtonWithImage:v19 target:self action:sel_didTapDisclosureArrow];

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

- (void)updateExclusionRectsWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(WFSlotTemplateView *)self exclusionRects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__WFSlotTemplateView_updateExclusionRectsWithBounds___block_invoke;
  v14[3] = &unk_1E83078C0;
  v14[4] = self;
  *&v14[5] = x;
  *&v14[6] = y;
  *&v14[7] = width;
  *&v14[8] = height;
  v9 = [v8 if_map:v14];
  v10 = [(WFSlotTemplateView *)self textContainer];
  [v10 setExclusionPaths:v9];

  v11 = [(WFSlotTemplateView *)self typingSlotIdentifier];

  if (v11)
  {
    v12 = [(WFSlotTemplateView *)self typingSlotIdentifier];
    v13 = [(WFSlotTemplateView *)self slotWithIdentifier:v12];

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

- (void)setExclusionRects:(id)a3
{
  v4 = a3;
  exclusionRects = self->_exclusionRects;
  v10 = v4;
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

- (void)setExtendSlotBackgroundOffEdges:(BOOL)a3
{
  v3 = a3;
  if ([(WFSlotTemplateView *)self extendSlotBackgroundOffEdges]!= a3)
  {
    v5 = [(WFSlotTemplateView *)self layoutManager];
    [v5 setExtendSlotBackgroundOffEdges:v3];

    [(WFSlotTemplateView *)self invalidateDisplay];
  }
}

- (BOOL)extendSlotBackgroundOffEdges
{
  v2 = [(WFSlotTemplateView *)self layoutManager];
  v3 = [v2 extendSlotBackgroundOffEdges];

  return v3;
}

- (void)setDisabledSlotTitleColor:(id)a3 backgroundColor:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__WFSlotTemplateView_setDisabledSlotTitleColor_backgroundColor_animated___block_invoke;
  aBlock[3] = &unk_1E8308600;
  aBlock[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v5)
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
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 disabledSlotBackgroundColor];

  return v3;
}

- (UIColor)disabledSlotTitleColor
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 disabledSlotTitleColor];

  return v3;
}

- (void)setHorizontalPadding:(double)a3
{
  if (self->_horizontalPadding != a3)
  {
    self->_horizontalPadding = a3;
    v5 = [(WFSlotTemplateView *)self textContainer];
    [v5 setLineFragmentPadding:a3];

    v6 = [(WFSlotTemplateView *)self typingTextView];
    v7 = [v6 textContainer];
    [v7 setLineFragmentPadding:a3];

    [(WFSlotTemplateView *)self updateTypingTextContainerSize];
    [(WFSlotTemplateView *)self updateAccessibilityElements];
    [(WFSlotTemplateView *)self invalidateIntrinsicContentSize];
    v8 = [(WFSlotTemplateView *)self typingSlotIdentifier];

    if (v8)
    {
      v9 = [(WFSlotTemplateView *)self typingSlotIdentifier];
      v11 = [(WFSlotTemplateView *)self slotWithIdentifier:v9];

      v10 = v11;
      if (v11)
      {
        [(WFSlotTemplateView *)self positionTypingAboveSlot:v11];
        v10 = v11;
      }
    }
  }
}

- (id)typingParagraphStyleForParagraphStyle:(id)a3
{
  v3 = [(WFSlotTemplateView *)self paragraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:4];

  return v4;
}

- (void)updateTypingParagraphStyle
{
  v9 = [(WFSlotTemplateView *)self paragraphStyle];
  v3 = [(WFSlotTemplateView *)self typingTextStorage];
  [v3 setParagraphStyle:v9];

  v4 = [(WFSlotTemplateView *)self typingTextView];
  v5 = [v4 typingAttributes];
  v6 = [v5 mutableCopy];

  v7 = [(WFSlotTemplateView *)self typingParagraphStyleForParagraphStyle:v9];
  [v6 setObject:v7 forKey:*MEMORY[0x1E69DB688]];

  v8 = [(WFSlotTemplateView *)self typingTextView];
  [v8 setTypingAttributes:v6];
}

- (void)setSuffixString:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 suffixString];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__WFSlotTemplateView_setSuffixString___block_invoke;
    v8[3] = &unk_1E83086D8;
    v8[4] = self;
    v9 = v4;
    [(WFSlotTemplateView *)self performFadeTransition:v8];
  }
}

void __38__WFSlotTemplateView_setSuffixString___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textStorage];
  [v2 setSuffixString:v1];
}

- (void)setSuffixColor:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 suffixColor];
  v10 = v4;
  v7 = v6;
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
    v5 = [(WFSlotTemplateView *)self textStorage];
    [v5 setSuffixColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 textColor];
  v10 = v4;
  v7 = v6;
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
    v5 = [(WFSlotTemplateView *)self textStorage];
    [v5 setTextColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)updateTypingSuffixFont
{
  v4 = [(WFSlotTemplateView *)self suffixFont];
  v3 = [(WFSlotTemplateView *)self typingTextStorage];
  [v3 setSuffixFont:v4];
}

- (void)updateTypingUnpopulatedFont
{
  v4 = [(WFSlotTemplateView *)self unpopulatedFont];
  v3 = [(WFSlotTemplateView *)self typingTextStorage];
  [v3 setUnpopulatedFont:v4];
}

- (void)setSuffixFont:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 suffixFont];
  v10 = v4;
  v7 = v6;
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
    v9 = [(WFSlotTemplateView *)self textStorage];
    [v9 setSuffixFont:v10];

    [(WFSlotTemplateView *)self updateTypingSuffixFont];
  }

LABEL_9:
}

- (void)setUnpopulatedFont:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 unpopulatedFont];
  v10 = v4;
  v7 = v6;
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
    v9 = [(WFSlotTemplateView *)self textStorage];
    [v9 setUnpopulatedFont:v10];

    [(WFSlotTemplateView *)self updateTypingUnpopulatedFont];
  }

LABEL_9:
}

- (void)slotTextAttachmentNeedsDisplay:(id)a3
{
  v4 = [(WFSlotTemplateView *)self textStorage];
  [v4 beginEditing];

  v5 = [(WFSlotTemplateView *)self textStorage];
  [v5 endEditing];
}

- (void)updateVariableAttachmentAppearanceInContents
{
  v3 = [(WFSlotTemplateView *)self textStorage];
  [v3 beginEditing];

  v4 = [(WFSlotTemplateView *)self textStorage];
  v5 = *MEMORY[0x1E69DB5F8];
  v6 = [(WFSlotTemplateView *)self textStorage];
  v7 = [v6 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__WFSlotTemplateView_updateVariableAttachmentAppearanceInContents__block_invoke;
  v9[3] = &unk_1E8307A08;
  v9[4] = self;
  [v4 enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v9}];

  v8 = [(WFSlotTemplateView *)self textStorage];
  [v8 endEditing];
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
  v9 = [(WFSlotTemplateView *)self font];
  v3 = [(WFSlotTemplateView *)self typingTextStorage];
  [v3 setFont:v9];

  v4 = [(WFSlotTemplateView *)self typingTextView];
  v5 = [v4 typingAttributes];
  v6 = [v5 mutableCopy];

  [v6 setObject:v9 forKey:*MEMORY[0x1E69DB648]];
  v7 = [(WFSlotTemplateView *)self typingTextView];
  [v7 setTypingAttributes:v6];

  v8 = [(WFSlotTemplateView *)self typingTextView];
  [v8 setEmojiOverrideFont:v9];
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 font];
  v10 = v4;
  v7 = v6;
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
    v9 = [(WFSlotTemplateView *)self textStorage];
    [v9 setFont:v10];

    [(WFSlotTemplateView *)self updateTypingFont];
    [(WFSlotTemplateView *)self updateVariableAttachmentAppearanceInContents];
  }

LABEL_9:
}

- (void)setParagraphStyle:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateView *)self textStorage];
  v6 = [v5 paragraphStyle];
  v10 = v4;
  v7 = v6;
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
    v9 = [(WFSlotTemplateView *)self textStorage];
    [v9 setParagraphStyle:v10];

    [(WFSlotTemplateView *)self updateTypingParagraphStyle];
  }

LABEL_9:
}

- (NSParagraphStyle)paragraphStyle
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 paragraphStyle];

  return v3;
}

- (void)setTextAlignment:(int64_t)a3
{
  if ([(WFSlotTemplateView *)self textAlignment]!= a3)
  {
    v5 = [objc_opt_class() paragraphStyleWithAlignment:a3];
    [(WFSlotTemplateView *)self setParagraphStyle:v5];
  }
}

- (int64_t)textAlignment
{
  v2 = [(WFSlotTemplateView *)self paragraphStyle];
  v3 = [v2 alignment];

  return v3;
}

- (NSString)suffixString
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 suffixString];

  return v3;
}

- (UIColor)suffixColor
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 suffixColor];

  return v3;
}

- (UIColor)textColor
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 textColor];

  return v3;
}

- (UIFont)suffixFont
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 suffixFont];

  return v3;
}

- (UIFont)unpopulatedFont
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 unpopulatedFont];

  return v3;
}

- (UIFont)font
{
  v2 = [(WFSlotTemplateView *)self textStorage];
  v3 = [v2 font];

  return v3;
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
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(WFSlotTemplateTypingTextView *)v9 setBackgroundColor:v10];

  [(WFSlotTemplateTypingTextView *)v9 setAutoresizingMask:18];
  [(WFSlotTemplateTypingTextView *)v9 setScrollEnabled:0];
  [(WFSlotTemplateTypingTextView *)v9 setScrollsToTop:0];
  [(WFSlotTemplateTypingTextView *)v9 setDelegate:self];
  [(WFSlotTemplateTypingTextView *)v9 setHidden:1];
  if ([(WFSlotTemplateView *)self debugMode])
  {
    v11 = [MEMORY[0x1E69DC888] redColor];
    v12 = [v11 colorWithAlphaComponent:0.2];
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

- (WFSlotTemplateView)initWithUseCase:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = WFSlotTemplateView;
  v4 = [(WFSlotTemplateView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(WFSlotTemplateView *)v4 setUseCase:a3];
    [(WFSlotTemplateView *)v5 setContextMenuInteractionEnabled:1];
    [(WFSlotTemplateView *)v5 setShowsMenuAsPrimaryAction:1];
    [(WFSlotTemplateView *)v5 setEnabled:1];
    [(WFSlotTemplateView *)v5 setContentMode:5];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(WFSlotTemplateView *)v5 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x1E69DB800]);
    v8 = [v7 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    textContainer = v5->_textContainer;
    v5->_textContainer = v8;
    v10 = v8;

    v11 = [[WFSlotTemplateLayoutManager alloc] initWithUseCase:a3];
    [(WFSlotTemplateLayoutManager *)v11 addTextContainer:v10];
    [(NSLayoutManager *)v11 wf_setControlView:v5];
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v11;
    v13 = v11;

    v14 = [[WFSlotTemplateTextStorage alloc] initWithUseCase:a3];
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

+ (double)heightForWidth:(double)a3 withContents:(id)a4 horizontalPadding:(double)a5 font:(id)a6 unpopulatedFont:(id)a7 alignment:(int64_t)a8 useCase:(unint64_t)a9
{
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = [a1 paragraphStyleWithAlignment:a8];
  v20 = [[WFSlotTemplateTextStorage alloc] initWithUseCase:a9];
  [(WFSlotTemplateTextStorage *)v20 setFont:v17];

  [(WFSlotTemplateTextStorage *)v20 setUnpopulatedFont:v16];
  [(WFSlotTemplateTextStorage *)v20 setParagraphStyle:v19];
  [(WFSlotTemplateTextStorage *)v20 setContents:v18];

  v21 = [[WFSlotTemplateLayoutManager alloc] initWithUseCase:a9];
  [(WFSlotTemplateTextStorage *)v20 addLayoutManager:v21];
  v22 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{a3, 1.79769313e308}];
  [v22 setLineFragmentPadding:a5];
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
  v34.size.width = a3;
  v34.size.height = 1.79769313e308;
  v32 = CGRectIntersection(v31, v34);
  v33 = CGRectIntegral(v32);
  height = v33.size.height;

  return height;
}

+ (id)paragraphStyleWithAlignment:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  [v5 setLineHeightMultiple:1.35000002];
  [v5 setAlignment:a3];

  return v5;
}

@end