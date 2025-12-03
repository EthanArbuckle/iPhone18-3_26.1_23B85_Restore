@interface WFContactTextView
- (NSString)placeholder;
- (WFContactTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)attributesByAddingTintColorToAttributes:(id)attributes;
- (id)attributesForPasting;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)paste:(id)paste;
- (void)pasteAttributedString:(id)string;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)tintColorDidChange;
- (void)updateTextAttachments;
- (void)updateTextContainerInsets;
@end

@implementation WFContactTextView

- (void)paste:(id)paste
{
  v35[1] = *MEMORY[0x277D85DE8];
  pasteCopy = paste;
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v35[0] = @"is.workflow.my.contactfield";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v7 = [generalPasteboard containsPasteboardTypes:v6];

  if (v7)
  {
    v8 = [generalPasteboard valueForPasteboardType:@"is.workflow.my.contactfield"];
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:0];
    v10 = [objc_alloc(MEMORY[0x277D7C2A8]) initWithSerializedRepresentation:v9 variableProvider:0 parameter:0];
    parameterStates = [v10 parameterStates];
    attributesForPasting = [(WFContactTextView *)self attributesForPasting];
    v13 = WFAttributedStringFromContactEntries(parameterStates, attributesForPasting, [(WFContactTextView *)self allowsTextEntry]);

    [(WFContactTextView *)self pasteAttributedString:v13];
    goto LABEL_16;
  }

  string = [generalPasteboard string];
  if (![string containsString:{@", "}] || !-[WFContactTextView allowsTextEntry](self, "allowsTextEntry"))
  {

    goto LABEL_15;
  }

  supportedPersonProperties = [(WFContactTextView *)self supportedPersonProperties];
  v16 = [supportedPersonProperties containsObject:&unk_288386980];

  if (!v16)
  {
LABEL_15:
    v29.receiver = self;
    v29.super_class = WFContactTextView;
    [(WFContactTextView *)&v29 paste:pasteCopy];
    goto LABEL_16;
  }

  selfCopy = self;
  v17 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  string2 = [generalPasteboard string];
  v19 = [string2 componentsSeparatedByString:{@", "}];

  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        v25 = [(WFValueTextAttachment *)[WFContactTextAttachment alloc] initWithData:0 ofType:0];
        [(WFValueTextAttachment *)v25 setStringValue:v24];
        v26 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v25];
        [v17 appendAttributedString:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  attributesForPasting2 = [(WFContactTextView *)selfCopy attributesForPasting];
  [v17 addAttributes:attributesForPasting2 range:{0, objc_msgSend(v17, "length")}];

  [(WFContactTextView *)selfCopy pasteAttributedString:v17];
LABEL_16:
}

- (void)pasteAttributedString:(id)string
{
  stringCopy = string;
  textStorage = [(WFContactTextView *)self textStorage];
  selectedRange = [(WFContactTextView *)self selectedRange];
  [textStorage replaceCharactersInRange:selectedRange withAttributedString:{v7, stringCopy}];

  selectedRange2 = [(WFContactTextView *)self selectedRange];
  v9 = [stringCopy length];

  [(WFContactTextView *)self setSelectedRange:selectedRange2 + v9, 0];
  [(WFContactTextView *)self updateTextAttachments];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D77218] object:self];

  delegate = [(WFContactTextView *)self delegate];
  LOBYTE(selectedRange2) = objc_opt_respondsToSelector();

  if (selectedRange2)
  {
    delegate2 = [(WFContactTextView *)self delegate];
    [delegate2 textViewDidChange:self];
  }

  delegate3 = [(WFContactTextView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate4 = [(WFContactTextView *)self delegate];
    [delegate4 textViewDidChangeSelection:self];
  }
}

- (id)attributesForPasting
{
  selectedRange = [(WFContactTextView *)self selectedRange];
  textStorage = [(WFContactTextView *)self textStorage];
  v5 = [textStorage length];

  if (selectedRange >= v5)
  {
    typingAttributes = [(WFContactTextView *)self typingAttributes];
    v8 = [typingAttributes mutableCopy];
  }

  else
  {
    typingAttributes = [(WFContactTextView *)self textStorage];
    v7 = [typingAttributes attributesAtIndex:-[WFContactTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];
    v8 = [v7 mutableCopy];
  }

  [v8 removeObjectForKey:*MEMORY[0x277D74060]];

  return v8;
}

- (void)copy:(id)copy
{
  v23[2] = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  attributedText = [(WFContactTextView *)self attributedText];
  selectedRange = [(WFContactTextView *)self selectedRange];
  v8 = [attributedText attributedSubstringFromRange:{selectedRange, v7}];

  v9 = WFContactStateFromAttributedString(v8);
  value = [v9 value];
  v11 = [value count];

  if (v11)
  {
    v12 = MEMORY[0x277CCAC58];
    serializedRepresentation = [v9 serializedRepresentation];
    v14 = [v12 dataWithPropertyList:serializedRepresentation format:200 options:0 error:0];

    identifier = [*MEMORY[0x277CE1EB0] identifier];
    v22[0] = identifier;
    v16 = [(WFValueTextAttachment *)WFContactTextAttachment humanReadableStringFromValueTextAttributedString:v8];
    v22[1] = @"is.workflow.my.contactfield";
    v23[0] = v16;
    v23[1] = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    v21 = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [generalPasteboard setItems:v19];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WFContactTextView;
    [(WFContactTextView *)&v20 copy:copyCopy];
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  attributedText = [(WFContactTextView *)self attributedText];
  selectedRange = [(WFContactTextView *)self selectedRange];
  v8 = [attributedText attributedSubstringFromRange:{selectedRange, v7}];

  v9 = WFContactStateFromAttributedString(v8);
  value = [v9 value];
  v11 = [value count];

  if (!v11)
  {
    v15.receiver = self;
    v15.super_class = WFContactTextView;
    [(WFContactTextView *)&v15 cut:cutCopy];
    goto LABEL_5;
  }

  [(WFContactTextView *)self copy:cutCopy];

  [(WFContactTextView *)self deleteBackward];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D77218] object:self];

  delegate = [(WFContactTextView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    cutCopy = [(WFContactTextView *)self delegate];
    [cutCopy textViewDidChange:self];
LABEL_5:
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WFContactTextView;
  [(WFContactTextView *)&v3 tintColorDidChange];
  [(WFContactTextView *)self updateTextAttachments];
}

- (void)updateTextAttachments
{
  textStorage = [(WFContactTextView *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  textStorage2 = [(WFContactTextView *)self textStorage];
  v6 = [textStorage2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__WFContactTextView_updateTextAttachments__block_invoke;
  v7[3] = &unk_279EDBAD8;
  v7[4] = self;
  [textStorage enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
}

void __42__WFContactTextView_updateTextAttachments__block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v7 textStorage];
    v9 = [v8 attributesAtIndex:a3 effectiveRange:0];
    v10 = [v7 attributesByAddingTintColorToAttributes:v9];

    [v12 setAttributes:v10];
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

- (id)attributesByAddingTintColorToAttributes:(id)attributes
{
  v4 = [attributes mutableCopy];
  tintColor = [(WFContactTextView *)self tintColor];
  [v4 setObject:tintColor forKey:*MEMORY[0x277D740C0]];

  return v4;
}

- (void)setFont:(id)font
{
  v6.receiver = self;
  v6.super_class = WFContactTextView;
  [(WFContactTextView *)&v6 setFont:font];
  placeholder = [(WFContactTextView *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(WFContactTextView *)self placeholder];
    [(WFContactTextView *)self setPlaceholder:placeholder2];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  v6.receiver = self;
  v6.super_class = WFContactTextView;
  [(WFContactTextView *)&v6 setTextAlignment:alignment];
  placeholder = [(WFContactTextView *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(WFContactTextView *)self placeholder];
    [(WFContactTextView *)self setPlaceholder:placeholder2];
  }
}

- (NSString)placeholder
{
  attributedPlaceholder = [(WFContactTextView *)self attributedPlaceholder];
  string = [attributedPlaceholder string];

  return string;
}

- (void)setPlaceholder:(id)placeholder
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74248];
  placeholderCopy = placeholder;
  defaultParagraphStyle = [v4 defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setAlignment:{-[WFContactTextView textAlignment](self, "textAlignment")}];
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
  font = [(WFContactTextView *)self font];
  v17[2] = font;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v15 = [v8 initWithString:v9 attributes:v14];

  [(WFContactTextView *)self setAttributedPlaceholder:v15];
  [(WFContactTextView *)self setNeedsLayout];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 setText:text];
  [(WFContactTextView *)self updateTextContainerInsets];
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 setAttributedText:text];
  [(WFContactTextView *)self updateTextContainerInsets];
}

- (void)updateTextContainerInsets
{
  v8 = -4;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  attributedText = [(WFContactTextView *)self attributedText];
  string = [attributedText string];
  v6 = [string rangeOfString:v3 options:0];

  v7 = 8.0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 12.0;
  }

  [(WFContactTextView *)self setTextContainerInset:v7, 0.0, 8.0, 0.0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77218] object:self];

  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 dealloc];
}

- (WFContactTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = WFContactTextView;
  v4 = [(WFContactTextView *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(WFContactTextView *)v4 setScrollEnabled:1];
    [(WFContactTextView *)v5 setShowsHorizontalScrollIndicator:1];
    [(WFContactTextView *)v5 setShowsVerticalScrollIndicator:0];
    [(WFContactTextView *)v5 setScrollsToTop:0];
    [(WFContactTextView *)v5 updateTextContainerInsets];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_textDidChange_ name:*MEMORY[0x277D77218] object:v5];

    v7 = v5;
  }

  return v5;
}

@end