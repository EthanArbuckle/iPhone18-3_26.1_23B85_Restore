@interface WFSlotTemplateTypingTextView
- (CGRect)accessibilityFrame;
- (CGRect)caretRectForPosition:(id)position;
- (WFSlotTemplateTypingTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)selectionRectsForRange:(id)range;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)paste:(id)paste;
- (void)wf_applyEmojiOverrideFont;
- (void)wf_replaceRange:(_NSRange)range withAttributedText:(id)text;
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
  emojiOverrideFont = [(WFSlotTemplateTypingTextView *)self emojiOverrideFont];
  if (emojiOverrideFont)
  {
    v6 = emojiOverrideFont;
    typingAttributes = [(WFSlotTemplateTypingTextView *)self typingAttributes];
    v5 = [typingAttributes mutableCopy];

    [v5 setValue:v6 forKey:*MEMORY[0x1E69DB648]];
    [(WFSlotTemplateTypingTextView *)self setTypingAttributes:v5];

    emojiOverrideFont = v6;
  }
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
  delegate = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFSlotTemplateTypingTextView *)self delegate];
    selectedRange = [(WFSlotTemplateTypingTextView *)self selectedRange];
    v10 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__WFSlotTemplateTypingTextView_paste___block_invoke;
    v12[3] = &unk_1E83086D8;
    v13 = pasteCopy;
    selfCopy = self;
    [delegate2 slotTemplateTypingTextViewDidPaste:self pasteRange:selectedRange withOriginalBlock:{v10, v12}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v11 paste:pasteCopy];
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

- (void)copy:(id)copy
{
  copyCopy = copy;
  delegate = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFSlotTemplateTypingTextView *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__WFSlotTemplateTypingTextView_copy___block_invoke;
    v9[3] = &unk_1E83086D8;
    v10 = copyCopy;
    selfCopy = self;
    [delegate2 slotTemplateTypingTextViewDidCopy:self withOriginalBlock:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v8 copy:copyCopy];
  }
}

id __37__WFSlotTemplateTypingTextView_copy___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = WFSlotTemplateTypingTextView;
  return objc_msgSendSuper2(&v3, sel_copy_, v1);
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  delegate = [(WFSlotTemplateTypingTextView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFSlotTemplateTypingTextView *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__WFSlotTemplateTypingTextView_cut___block_invoke;
    v9[3] = &unk_1E83086D8;
    v10 = cutCopy;
    selfCopy = self;
    [delegate2 slotTemplateTypingTextViewDidCut:self withOriginalBlock:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFSlotTemplateTypingTextView;
    [(WFSlotTemplateTypingTextView *)&v8 cut:cutCopy];
  }
}

id __36__WFSlotTemplateTypingTextView_cut___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = WFSlotTemplateTypingTextView;
  return objc_msgSendSuper2(&v3, sel_cut_, v1);
}

- (void)wf_replaceRange:(_NSRange)range withAttributedText:(id)text
{
  length = range.length;
  location = range.location;
  v7 = range.location + range.length;
  textCopy = text;
  attributedText = [(WFSlotTemplateTypingTextView *)self attributedText];
  v10 = [attributedText length];

  v11 = length;
  if (v7 > v10)
  {
    attributedText2 = [(WFSlotTemplateTypingTextView *)self attributedText];
    v11 = [attributedText2 length] - location;
  }

  undoManager = [(WFSlotTemplateTypingTextView *)self undoManager];
  v14 = [undoManager prepareWithInvocationTarget:self];
  v15 = [textCopy length];
  attributedText3 = [(WFSlotTemplateTypingTextView *)self attributedText];
  v17 = [attributedText3 attributedSubstringFromRange:{location, v11}];
  [v14 wf_replaceRange:location withAttributedText:{v15, v17}];

  v23 = [textCopy mutableCopy];
  typingAttributes = [(WFSlotTemplateTypingTextView *)self typingAttributes];
  [v23 addAttributes:typingAttributes range:{0, objc_msgSend(textCopy, "length")}];

  textStorage = [(WFSlotTemplateTypingTextView *)self textStorage];
  [textStorage replaceCharactersInRange:location withAttributedString:{length, v23}];

  v20 = [textCopy length];
  [(WFSlotTemplateTypingTextView *)self setSelectedRange:v20 + location, 0];
  delegate = [(WFSlotTemplateTypingTextView *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate textViewDidChange:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69DE750] object:self];
}

- (void)insertText:(id)text
{
  textCopy = text;
  if ([(WFSlotTemplateTypingTextView *)self clearsZeroWhenTyping])
  {
    text = [(WFSlotTemplateTypingTextView *)self text];
    v6 = [text isEqualToString:@"0"];

    if (v6)
    {
      [(WFSlotTemplateTypingTextView *)self deleteBackward];
    }
  }

  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
  v7.receiver = self;
  v7.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v7 insertText:textCopy];

  [(WFSlotTemplateTypingTextView *)self wf_applyEmojiOverrideFont];
}

- (void)deleteBackward
{
  delegate = [(WFSlotTemplateTypingTextView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFSlotTemplateTypingTextView *)self delegate];
    [delegate2 slotTemplateTypingTextViewDidDelete:self];
  }

  v6.receiver = self;
  v6.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v6 deleteBackward];
}

- (id)selectionRectsForRange:(id)range
{
  v6.receiver = self;
  v6.super_class = WFSlotTemplateTypingTextView;
  v3 = [(WFSlotTemplateTypingTextView *)&v6 selectionRectsForRange:range];
  v4 = [v3 if_map:&__block_literal_global_1201];

  return v4;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3.receiver = self;
  v3.super_class = WFSlotTemplateTypingTextView;
  [(WFSlotTemplateTypingTextView *)&v3 caretRectForPosition:position];
  return CGRectInset(v4, 0.0, 5.0);
}

- (WFSlotTemplateTypingTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateTypingTextView;
  v4 = [(WFSlotTemplateTypingTextView *)&v8 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end