@interface WFContactTextView
- (NSString)placeholder;
- (WFContactTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)attributesByAddingTintColorToAttributes:(id)a3;
- (id)attributesForPasting;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)paste:(id)a3;
- (void)pasteAttributedString:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)tintColorDidChange;
- (void)updateTextAttachments;
- (void)updateTextContainerInsets;
@end

@implementation WFContactTextView

- (void)paste:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75810] generalPasteboard];
  v35[0] = @"is.workflow.my.contactfield";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v7 = [v5 containsPasteboardTypes:v6];

  if (v7)
  {
    v8 = [v5 valueForPasteboardType:@"is.workflow.my.contactfield"];
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:0];
    v10 = [objc_alloc(MEMORY[0x277D7C2A8]) initWithSerializedRepresentation:v9 variableProvider:0 parameter:0];
    v11 = [v10 parameterStates];
    v12 = [(WFContactTextView *)self attributesForPasting];
    v13 = WFAttributedStringFromContactEntries(v11, v12, [(WFContactTextView *)self allowsTextEntry]);

    [(WFContactTextView *)self pasteAttributedString:v13];
    goto LABEL_16;
  }

  v14 = [v5 string];
  if (![v14 containsString:{@", "}] || !-[WFContactTextView allowsTextEntry](self, "allowsTextEntry"))
  {

    goto LABEL_15;
  }

  v15 = [(WFContactTextView *)self supportedPersonProperties];
  v16 = [v15 containsObject:&unk_288386980];

  if (!v16)
  {
LABEL_15:
    v29.receiver = self;
    v29.super_class = WFContactTextView;
    [(WFContactTextView *)&v29 paste:v4];
    goto LABEL_16;
  }

  v28 = self;
  v17 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = [v5 string];
  v19 = [v18 componentsSeparatedByString:{@", "}];

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

  v27 = [(WFContactTextView *)v28 attributesForPasting];
  [v17 addAttributes:v27 range:{0, objc_msgSend(v17, "length")}];

  [(WFContactTextView *)v28 pasteAttributedString:v17];
LABEL_16:
}

- (void)pasteAttributedString:(id)a3
{
  v4 = a3;
  v5 = [(WFContactTextView *)self textStorage];
  v6 = [(WFContactTextView *)self selectedRange];
  [v5 replaceCharactersInRange:v6 withAttributedString:{v7, v4}];

  v8 = [(WFContactTextView *)self selectedRange];
  v9 = [v4 length];

  [(WFContactTextView *)self setSelectedRange:v8 + v9, 0];
  [(WFContactTextView *)self updateTextAttachments];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:*MEMORY[0x277D77218] object:self];

  v11 = [(WFContactTextView *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [(WFContactTextView *)self delegate];
    [v12 textViewDidChange:self];
  }

  v13 = [(WFContactTextView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(WFContactTextView *)self delegate];
    [v15 textViewDidChangeSelection:self];
  }
}

- (id)attributesForPasting
{
  v3 = [(WFContactTextView *)self selectedRange];
  v4 = [(WFContactTextView *)self textStorage];
  v5 = [v4 length];

  if (v3 >= v5)
  {
    v6 = [(WFContactTextView *)self typingAttributes];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v6 = [(WFContactTextView *)self textStorage];
    v7 = [v6 attributesAtIndex:-[WFContactTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];
    v8 = [v7 mutableCopy];
  }

  [v8 removeObjectForKey:*MEMORY[0x277D74060]];

  return v8;
}

- (void)copy:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFContactTextView *)self attributedText];
  v6 = [(WFContactTextView *)self selectedRange];
  v8 = [v5 attributedSubstringFromRange:{v6, v7}];

  v9 = WFContactStateFromAttributedString(v8);
  v10 = [v9 value];
  v11 = [v10 count];

  if (v11)
  {
    v12 = MEMORY[0x277CCAC58];
    v13 = [v9 serializedRepresentation];
    v14 = [v12 dataWithPropertyList:v13 format:200 options:0 error:0];

    v15 = [*MEMORY[0x277CE1EB0] identifier];
    v22[0] = v15;
    v16 = [(WFValueTextAttachment *)WFContactTextAttachment humanReadableStringFromValueTextAttributedString:v8];
    v22[1] = @"is.workflow.my.contactfield";
    v23[0] = v16;
    v23[1] = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v18 = [MEMORY[0x277D75810] generalPasteboard];
    v21 = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v18 setItems:v19];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WFContactTextView;
    [(WFContactTextView *)&v20 copy:v4];
  }
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(WFContactTextView *)self attributedText];
  v6 = [(WFContactTextView *)self selectedRange];
  v8 = [v5 attributedSubstringFromRange:{v6, v7}];

  v9 = WFContactStateFromAttributedString(v8);
  v10 = [v9 value];
  v11 = [v10 count];

  if (!v11)
  {
    v15.receiver = self;
    v15.super_class = WFContactTextView;
    [(WFContactTextView *)&v15 cut:v4];
    goto LABEL_5;
  }

  [(WFContactTextView *)self copy:v4];

  [(WFContactTextView *)self deleteBackward];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:*MEMORY[0x277D77218] object:self];

  v13 = [(WFContactTextView *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v4 = [(WFContactTextView *)self delegate];
    [v4 textViewDidChange:self];
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
  v3 = [(WFContactTextView *)self textStorage];
  v4 = *MEMORY[0x277D74060];
  v5 = [(WFContactTextView *)self textStorage];
  v6 = [v5 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__WFContactTextView_updateTextAttachments__block_invoke;
  v7[3] = &unk_279EDBAD8;
  v7[4] = self;
  [v3 enumerateAttribute:v4 inRange:0 options:v6 usingBlock:{0, v7}];
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

- (id)attributesByAddingTintColorToAttributes:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(WFContactTextView *)self tintColor];
  [v4 setObject:v5 forKey:*MEMORY[0x277D740C0]];

  return v4;
}

- (void)setFont:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFContactTextView;
  [(WFContactTextView *)&v6 setFont:a3];
  v4 = [(WFContactTextView *)self placeholder];

  if (v4)
  {
    v5 = [(WFContactTextView *)self placeholder];
    [(WFContactTextView *)self setPlaceholder:v5];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = WFContactTextView;
  [(WFContactTextView *)&v6 setTextAlignment:a3];
  v4 = [(WFContactTextView *)self placeholder];

  if (v4)
  {
    v5 = [(WFContactTextView *)self placeholder];
    [(WFContactTextView *)self setPlaceholder:v5];
  }
}

- (NSString)placeholder
{
  v2 = [(WFContactTextView *)self attributedPlaceholder];
  v3 = [v2 string];

  return v3;
}

- (void)setPlaceholder:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74248];
  v5 = a3;
  v6 = [v4 defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setAlignment:{-[WFContactTextView textAlignment](self, "textAlignment")}];
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_288374A58;
  }

  v16[0] = *MEMORY[0x277D740C0];
  v10 = [MEMORY[0x277D75348] placeholderTextColor];
  v11 = *MEMORY[0x277D74118];
  v17[0] = v10;
  v17[1] = v7;
  v12 = *MEMORY[0x277D740A8];
  v16[1] = v11;
  v16[2] = v12;
  v13 = [(WFContactTextView *)self font];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v15 = [v8 initWithString:v9 attributes:v14];

  [(WFContactTextView *)self setAttributedPlaceholder:v15];
  [(WFContactTextView *)self setNeedsLayout];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 setText:a3];
  [(WFContactTextView *)self updateTextContainerInsets];
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 setAttributedText:a3];
  [(WFContactTextView *)self updateTextContainerInsets];
}

- (void)updateTextContainerInsets
{
  v8 = -4;
  v3 = [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
  v4 = [(WFContactTextView *)self attributedText];
  v5 = [v4 string];
  v6 = [v5 rangeOfString:v3 options:0];

  v7 = 8.0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 12.0;
  }

  [(WFContactTextView *)self setTextContainerInset:v7, 0.0, 8.0, 0.0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D77218] object:self];

  v4.receiver = self;
  v4.super_class = WFContactTextView;
  [(WFContactTextView *)&v4 dealloc];
}

- (WFContactTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFContactTextView;
  v4 = [(WFContactTextView *)&v9 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(WFContactTextView *)v4 setScrollEnabled:1];
    [(WFContactTextView *)v5 setShowsHorizontalScrollIndicator:1];
    [(WFContactTextView *)v5 setShowsVerticalScrollIndicator:0];
    [(WFContactTextView *)v5 setScrollsToTop:0];
    [(WFContactTextView *)v5 updateTextContainerInsets];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel_textDidChange_ name:*MEMORY[0x277D77218] object:v5];

    v7 = v5;
  }

  return v5;
}

@end