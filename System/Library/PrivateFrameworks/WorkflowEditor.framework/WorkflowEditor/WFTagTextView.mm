@interface WFTagTextView
- (NSString)placeholder;
- (WFTagTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)paste:(id)paste;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)updateTextAttachments;
- (void)updateTextContainerInsets;
@end

@implementation WFTagTextView

- (void)paste:(id)paste
{
  v29[1] = *MEMORY[0x277D85DE8];
  pasteCopy = paste;
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v29[0] = @"is.workflow.my.tagfield";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v7 = [generalPasteboard containsPasteboardTypes:v6];

  if (v7)
  {
    selectedRange = [(WFTagTextView *)self selectedRange];
    textStorage = [(WFTagTextView *)self textStorage];
    v10 = [textStorage length];

    if (selectedRange >= v10)
    {
      typingAttributes = [(WFTagTextView *)self typingAttributes];
      v13 = [typingAttributes mutableCopy];
    }

    else
    {
      typingAttributes = [(WFTagTextView *)self textStorage];
      v12 = [typingAttributes attributesAtIndex:-[WFTagTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];
      v13 = [v12 mutableCopy];
    }

    [v13 removeObjectForKey:*MEMORY[0x277D74060]];
    generalPasteboard2 = [MEMORY[0x277D75810] generalPasteboard];
    v15 = [generalPasteboard2 dataForPasteboardType:@"is.workflow.my.tagfield"];

    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
    v17 = WFAttributedTextFromSerializedTagString(v16, v13);
    textStorage2 = [(WFTagTextView *)self textStorage];
    selectedRange2 = [(WFTagTextView *)self selectedRange];
    [textStorage2 replaceCharactersInRange:selectedRange2 withAttributedString:{v20, v17}];

    -[WFTagTextView setSelectedRange:](self, "setSelectedRange:", -[WFTagTextView selectedRange](self, "selectedRange") + [v17 length], 0);
    [(WFTagTextView *)self updateTextAttachments];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D77218] object:self];

    delegate = [(WFTagTextView *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(WFTagTextView *)self delegate];
      [delegate2 textViewDidChange:self];
    }

    delegate3 = [(WFTagTextView *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate4 = [(WFTagTextView *)self delegate];
      [delegate4 textViewDidChangeSelection:self];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = WFTagTextView;
    [(WFTagTextView *)&v28 paste:pasteCopy];
  }
}

- (void)copy:(id)copy
{
  v18[2] = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  attributedText = [(WFTagTextView *)self attributedText];
  selectedRange = [(WFTagTextView *)self selectedRange];
  v8 = [attributedText attributedSubstringFromRange:{selectedRange, v7}];

  v9 = WFSerializedTagStringFromAttributedText(v8);
  if ([v9 length])
  {
    identifier = [*MEMORY[0x277CE1EB0] identifier];
    v17[0] = identifier;
    v11 = [(WFValueTextAttachment *)WFTagTextAttachment humanReadableStringFromValueTextAttributedString:v8];
    v17[1] = @"is.workflow.my.tagfield";
    v18[0] = v11;
    v18[1] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    v16 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [generalPasteboard setItems:v14];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WFTagTextView;
    [(WFTagTextView *)&v15 copy:copyCopy];
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  attributedText = [(WFTagTextView *)self attributedText];
  selectedRange = [(WFTagTextView *)self selectedRange];
  v8 = [attributedText attributedSubstringFromRange:{selectedRange, v7}];

  v9 = WFSerializedTagStringFromAttributedText(v8);
  if (![v9 length])
  {
    v13.receiver = self;
    v13.super_class = WFTagTextView;
    [(WFTagTextView *)&v13 cut:cutCopy];
    goto LABEL_5;
  }

  [(WFTagTextView *)self copy:cutCopy];

  [(WFTagTextView *)self deleteBackward];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D77218] object:self];

  delegate = [(WFTagTextView *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    cutCopy = [(WFTagTextView *)self delegate];
    [cutCopy textViewDidChange:self];
LABEL_5:
  }
}

- (void)updateTextAttachments
{
  textStorage = [(WFTagTextView *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  textStorage2 = [(WFTagTextView *)self textStorage];
  v6 = [textStorage2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WFTagTextView_updateTextAttachments__block_invoke;
  v7[3] = &unk_279EDBA90;
  v7[4] = self;
  [textStorage enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
}

void __38__WFTagTextView_updateTextAttachments__block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) textStorage];
    v8 = [v7 attributesAtIndex:a3 effectiveRange:0];
    v9 = [v8 mutableCopy];

    v10 = [*(a1 + 32) tintColor];
    [v9 setObject:v10 forKey:*MEMORY[0x277D740C0]];

    [v12 setAttributes:v9];
    v14.location = [*(a1 + 32) selectedRange];
    v15.location = a3;
    v15.length = a4;
    [v12 setSelected:{NSIntersectionRange(v14, v15).length == a4}];
    if ([v12 requiresRedraw])
    {
      v11 = [*(a1 + 32) textStorage];
      [v11 edited:1 range:a3 changeInLength:{a4, 0}];
    }
  }
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = WFTagTextView;
  [(WFTagTextView *)&v4 setText:text];
  [(WFTagTextView *)self updateTextContainerInsets];
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = WFTagTextView;
  [(WFTagTextView *)&v4 setAttributedText:text];
  [(WFTagTextView *)self updateTextContainerInsets];
}

- (void)updateTextContainerInsets
{
  v8 = -4;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  attributedText = [(WFTagTextView *)self attributedText];
  string = [attributedText string];
  v6 = [string rangeOfString:v3 options:0];

  v7 = 8.0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 12.0;
  }

  [(WFTagTextView *)self setTextContainerInset:v7, 0.0, 8.0, 0.0];
}

- (NSString)placeholder
{
  attributedPlaceholder = [(WFTagTextView *)self attributedPlaceholder];
  string = [attributedPlaceholder string];

  return string;
}

- (void)setFont:(id)font
{
  v6.receiver = self;
  v6.super_class = WFTagTextView;
  [(WFTagTextView *)&v6 setFont:font];
  placeholder = [(WFTagTextView *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(WFTagTextView *)self placeholder];
    [(WFTagTextView *)self setPlaceholder:placeholder2];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  v6.receiver = self;
  v6.super_class = WFTagTextView;
  [(WFTagTextView *)&v6 setTextAlignment:alignment];
  placeholder = [(WFTagTextView *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(WFTagTextView *)self placeholder];
    [(WFTagTextView *)self setPlaceholder:placeholder2];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74248];
  placeholderCopy = placeholder;
  defaultParagraphStyle = [v4 defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setAlignment:{-[WFTagTextView textAlignment](self, "textAlignment")}];
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  if (placeholderCopy)
  {
    v9 = placeholderCopy;
  }

  else
  {
    v9 = &stru_288374A58;
  }

  v16[0] = *MEMORY[0x277D740C0];
  placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
  v11 = *MEMORY[0x277D74118];
  v17[0] = placeholderTextColor;
  v17[1] = v7;
  v12 = *MEMORY[0x277D740A8];
  v16[1] = v11;
  v16[2] = v12;
  font = [(WFTagTextView *)self font];
  v17[2] = font;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v15 = [v8 initWithString:v9 attributes:v14];

  [(WFTagTextView *)self setAttributedPlaceholder:v15];
  [(WFTagTextView *)self setNeedsLayout];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77218] object:self];

  v4.receiver = self;
  v4.super_class = WFTagTextView;
  [(WFTagTextView *)&v4 dealloc];
}

- (WFTagTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = WFTagTextView;
  v4 = [(WFTagTextView *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(WFTagTextView *)v4 setScrollEnabled:1];
    [(WFTagTextView *)v5 setShowsHorizontalScrollIndicator:1];
    [(WFTagTextView *)v5 setShowsVerticalScrollIndicator:0];
    [(WFTagTextView *)v5 setScrollsToTop:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_textDidChange_ name:*MEMORY[0x277D77218] object:v5];

    v7 = v5;
  }

  return v5;
}

@end