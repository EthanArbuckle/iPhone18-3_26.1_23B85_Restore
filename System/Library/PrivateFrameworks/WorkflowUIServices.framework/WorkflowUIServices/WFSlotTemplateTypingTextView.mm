@interface WFSlotTemplateTypingTextView
- (CGRect)accessibilityFrame;
- (CGRect)caretRectForPosition:(id)a3;
- (WFSlotTemplateTypingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)selectionRectsForRange:(id)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)paste:(id)a3;
- (void)wf_applyEmojiOverrideFont;
- (void)wf_replaceRange:(_NSRange)a3 withAttributedText:(id)a4;
@end

@implementation WFSlotTemplateTypingTextView

- (CGRect)accessibilityFrame
{
  [(WFSlotTemplateTypingTextView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(WFSlotTemplateTypingTextView *)self textContainerInset];

  [(WFSlotTemplateTypingTextView *)self convertRect:0 toView:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)wf_applyEmojiOverrideFont
{
  v3 = [(WFSlotTemplateTypingTextView *)self emojiOverrideFont];
  if (v3)
  {
    v6 = v3;
    v4 = [(WFSlotTemplateTypingTextView *)self typingAttributes];
    v5 = [v4 mutableCopy];

    [v5 setValue:v6 forKey:*MEMORY[0x1E69DB648]];
    [(WFSlotTemplateTypingTextView *)self setTypingAttributes:v5];

    v3 = v6;
  }
}

- (void)paste:(id)a3
{
  v4 = a3;
  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
  v5 = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFSlotTemplateTypingTextView *)self delegate];
    v8 = [(WFSlotTemplateTypingTextView *)self selectedRange];
    v10 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__WFSlotTemplateTypingTextView_paste___block_invoke;
    v12[3] = &unk_1E83086D8;
    v13 = v4;
    v14 = self;
    [v7 slotTemplateTypingTextViewDidPaste:self pasteRange:v8 withOriginalBlock:{v10, v12}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v11 paste:v4];
  }

  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
}

id __38__WFSlotTemplateTypingTextView_paste___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = WFSlotTemplateTypingTextView;
  return objc_msgSendSuper2(&v3, sel_paste_, v1);
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFSlotTemplateTypingTextView *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__WFSlotTemplateTypingTextView_copy___block_invoke;
    v9[3] = &unk_1E83086D8;
    v10 = v4;
    v11 = self;
    [v7 slotTemplateTypingTextViewDidCopy:self withOriginalBlock:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v8 copy:v4];
  }
}

id __37__WFSlotTemplateTypingTextView_copy___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = WFSlotTemplateTypingTextView;
  return objc_msgSendSuper2(&v3, sel_copy_, v1);
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFSlotTemplateTypingTextView *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__WFSlotTemplateTypingTextView_cut___block_invoke;
    v9[3] = &unk_1E83086D8;
    v10 = v4;
    v11 = self;
    [v7 slotTemplateTypingTextViewDidCut:self withOriginalBlock:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v8 cut:v4];
  }
}

id __36__WFSlotTemplateTypingTextView_cut___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = WFSlotTemplateTypingTextView;
  return objc_msgSendSuper2(&v3, sel_cut_, v1);
}

- (void)wf_replaceRange:(_NSRange)a3 withAttributedText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a3.location + a3.length;
  v8 = a4;
  v9 = [(WFSlotTemplateTypingTextView *)self attributedText];
  v10 = [v9 length];

  v11 = length;
  if (v7 > v10)
  {
    v12 = [(WFSlotTemplateTypingTextView *)self attributedText];
    v11 = [v12 length] - location;
  }

  v13 = [(WFSlotTemplateTypingTextView *)self undoManager];
  v14 = [v13 prepareWithInvocationTarget:self];
  v15 = [v8 length];
  v16 = [(WFSlotTemplateTypingTextView *)self attributedText];
  v17 = [v16 attributedSubstringFromRange:{location, v11}];
  [v14 wf_replaceRange:location withAttributedText:{v15, v17}];

  v23 = [v8 mutableCopy];
  v18 = [(WFSlotTemplateTypingTextView *)self typingAttributes];
  [v23 addAttributes:v18 range:{0, objc_msgSend(v8, "length")}];

  v19 = [(WFSlotTemplateTypingTextView *)self textStorage];
  [v19 replaceCharactersInRange:location withAttributedString:{length, v23}];

  v20 = [v8 length];
  [(WFSlotTemplateTypingTextView *)self setSelectedRange:v20 + location, 0];
  v21 = [(WFSlotTemplateTypingTextView *)self delegate];
  if (v21 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v21 textViewDidChange:self];
  }

  v22 = [MEMORY[0x1E696AD88] defaultCenter];
  [v22 postNotificationName:*MEMORY[0x1E69DE750] object:self];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  if ([(WFSlotTemplateTypingTextView *)self clearsZeroWhenTyping])
  {
    v5 = [(WFSlotTemplateTypingTextView *)self text];
    v6 = [v5 isEqualToString:@"0"];

    if (v6)
    {
      [(WFSlotTemplateTypingTextView *)self deleteBackward];
    }
  }

  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
  v7.receiver = self;
  v7.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v7 insertText:v4];

  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
}

- (void)deleteBackward
{
  v3 = [(WFSlotTemplateTypingTextView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFSlotTemplateTypingTextView *)self delegate];
    [v5 slotTemplateTypingTextViewDidDelete:self];
  }

  v6.receiver = self;
  v6.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v6 deleteBackward];
}

- (id)selectionRectsForRange:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSlotTemplateTypingTextView;
  v3 = [(WFSlotTemplateTypingTextView *)&v6 selectionRectsForRange:a3];
  v4 = [v3 if_map:&__block_literal_global_1201];

  return v4;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v3.receiver = self;
  v3.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v3 caretRectForPosition:a3];
  return CGRectInset(v4, 0.0, 5.0);
}

- (WFSlotTemplateTypingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateTypingTextView;
  v4 = [(WFSlotTemplateTypingTextView *)&v8 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end