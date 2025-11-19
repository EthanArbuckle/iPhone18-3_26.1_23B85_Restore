@interface WFTagField
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)tokenizeFreeTextFromRange:(_NSRange)a3;
- (NSString)placeholder;
- (UIButton)plusButton;
- (WFTagField)initWithFrame:(CGRect)a3 showsAddButton:(BOOL)a4;
- (WFTagFieldDelegate)delegate;
- (WFTagTextView)textView;
- (WFTextScrollView)scrollView;
- (_NSRange)selectedRange;
- (id)containingViewController;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (int64_t)textAlignment;
- (void)insertTag:(id)a3;
- (void)layoutSubviews;
- (void)selectTag;
- (void)setKeyboardAppearance:(int64_t)a3;
- (void)setKeyboardType:(int64_t)a3;
- (void)setPlaceholder:(id)a3;
- (void)setTags:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)tagPicker:(id)a3 didSelectTags:(id)a4;
- (void)tagPickerDidCancel:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)updateEditableState;
- (void)updateTags;
@end

@implementation WFTagField

- (_NSRange)selectedRange
{
  p_selectedRange = &self->_selectedRange;
  location = self->_selectedRange.location;
  length = p_selectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (UIButton)plusButton
{
  WeakRetained = objc_loadWeakRetained(&self->_plusButton);

  return WeakRetained;
}

- (WFTextScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (WFTagTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (WFTagFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tagPickerDidCancel:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)tagPicker:(id)a3 didSelectTags:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(WFTagField *)self insertTag:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)updateTags
{
  v3 = [(WFTagField *)self textView];
  v4 = [v3 attributedText];
  v5 = WFSerializedTagStringFromAttributedText(v4);
  [(WFTagField *)self setTags:v5];

  [(WFTagField *)self updateEditableState];
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    v7 = [(WFTagField *)self tags];
    updateBlock[2](updateBlock, v7);
  }
}

- (void)insertTag:(id)a3
{
  v4 = a3;
  v22 = [(WFValueTextAttachment *)[WFTagTextAttachment alloc] initWithData:0 ofType:0];
  [(WFValueTextAttachment *)v22 setStringValue:v4];

  v5 = [(WFTagField *)self textView];
  v6 = [v5 textStorage];
  v7 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v22];
  [v6 insertAttributedString:v7 atIndex:{-[WFTagField selectedRange](self, "selectedRange")}];

  v8 = [(WFTagField *)self textView];
  v9 = [v8 textStorage];
  v10 = [(WFTagField *)self textView];
  v11 = [v10 typingAttributes];
  [v9 addAttributes:v11 range:{-[WFTagField selectedRange](self, "selectedRange"), 1}];

  v12 = [(WFTagField *)self selectedRange];
  v13 = [(WFTagField *)self textView];
  [v13 setSelectedRange:{v12 + 1, 0}];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = *MEMORY[0x277D77218];
  v16 = [(WFTagField *)self textView];
  [v14 postNotificationName:v15 object:v16];

  v17 = [(WFTagField *)self scrollView];
  v18 = [(WFTagField *)self textView];
  v19 = [(WFTagField *)self textView];
  v20 = [v19 selectedTextRange];
  v21 = [v20 end];
  [v18 caretRectForPosition:v21];
  [v17 scrollRectToVisible:0 animated:?];

  [(WFTagField *)self updateTags];
}

- (void)selectTag
{
  v3 = [(WFTagField *)self textView];
  v4 = [v3 selectedRange];
  [(WFTagField *)self tokenizeFreeTextFromRange:v4, v5];

  v6 = [(WFTagField *)self textView];
  [v6 resignFirstResponder];

  v7 = [WFTagPickerViewController alloc];
  v8 = [(WFTagField *)self fieldTitle];
  v9 = [(WFTagField *)self suggestedTags];
  v15 = [(WFTagPickerViewController *)v7 initWithTitle:v8 tags:v9];

  [(WFTagPickerViewController *)v15 setDelegate:self];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  [v10 setModalPresentationStyle:7];
  v11 = [(WFTagField *)self containingViewController];
  [v11 presentViewController:v10 animated:1 completion:0];

  v12 = [v10 popoverPresentationController];
  [v12 setPermittedArrowDirections:3];
  v13 = [(WFTagField *)self plusButton];
  [v12 setSourceView:v13];

  v14 = [(WFTagField *)self plusButton];
  [v14 bounds];
  [v12 setSourceRect:?];
}

- (id)containingViewController
{
  v3 = [(WFTagField *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFTagField *)self delegate];
    v6 = [v5 viewControllerContainingTagField:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 attributedText];
  v6 = [v5 length];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  v7 = [v4 attributedText];
  v8 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__WFTagField_textViewDidChange___block_invoke;
  v9[3] = &unk_279EDBE58;
  v9[4] = &v10;
  [v7 enumerateAttribute:v8 inRange:0 options:v6 usingBlock:{0, v9}];

  if (v6 == v11[5] + v11[4])
  {
    [(WFTagField *)self updateTags];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __32__WFTagField_textViewDidChange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *(*(result + 32) + 8);
    if ((a3 + a4) > *(v4 + 40) + *(v4 + 32))
    {
      *(v4 + 32) = a3;
      *(v4 + 40) = a4;
    }
  }

  return result;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v12 = [v10 rangeOfCharacterFromSet:v11 options:0];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(WFTagField *)self tokenizeFreeTextFromRange:location, length])
    {
      [v9 resignFirstResponder];
    }

    goto LABEL_8;
  }

  [v9 selectedRange];
  v13 = MEMORY[0x277D74060];
  if (!v14 && ![v10 length])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    LOBYTE(v29) = 0;
    v15 = [v9 attributedText];
    v16 = *v13;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke;
    v32[3] = &unk_279EDBE58;
    v32[4] = &v26;
    [v15 enumerateAttribute:v16 inRange:location options:length usingBlock:{0, v32}];

    if (*(v27 + 24) == 1)
    {
      [v9 setSelectedRange:{location, length}];
      _Block_object_dispose(&v26, 8);
LABEL_8:
      v17 = 0;
      goto LABEL_16;
    }

    _Block_object_dispose(&v26, 8);
  }

  v18 = [(WFTagField *)self textView];
  v19 = [v18 attributedText];
  v20 = [v19 length];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v30 = 0;
  v31 = 0;
  v29 = "";
  v21 = [(WFTagField *)self textView];
  v22 = [v21 attributedText];
  v23 = *v13;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke_2;
  v25[3] = &unk_279EDBE58;
  v25[4] = &v26;
  [v22 enumerateAttribute:v23 inRange:0 options:v20 usingBlock:{0, v25}];

  v17 = ![v10 length] || -[WFTagField allowsTextEntry](self, "allowsTextEntry") && location >= v27[5] + v27[4];
  _Block_object_dispose(&v26, 8);
LABEL_16:

  return v17;
}

uint64_t __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2 != 0;
  *a5 = *(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *(*(result + 32) + 8);
    if ((a3 + a4) > *(v4 + 40) + *(v4 + 32))
    {
      *(v4 + 32) = a3;
      *(v4 + 40) = a4;
    }
  }

  return result;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v21 = a3;
  v4 = [(WFTagField *)self textView];
  [v4 updateTextAttachments];

  v5 = [(WFTagField *)self selectedRange];
  v6 = [v21 selectedRange];
  [(WFTagField *)self setSelectedRange:v6, v7];
  v8 = [(WFTagField *)self selectedRange];
  v9 = [v21 selectedTextRange];
  v10 = v9;
  if (v8 >= v5)
  {
    [v9 end];
  }

  else
  {
    [v9 start];
  }
  v11 = ;

  [v21 caretRectForPosition:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(WFTagField *)self scrollView];
  [v20 scrollRectToVisible:0 animated:{v13, v15, v17, v19}];
}

- (void)textViewDidEndEditing:(id)a3
{
  v6 = [(WFTagField *)self textView];
  v4 = [v6 selectedRange];
  [(WFTagField *)self tokenizeFreeTextFromRange:v4, v5];
}

- (BOOL)tokenizeFreeTextFromRange:(_NSRange)a3
{
  location = a3.location;
  v5 = [(WFTagField *)self textView:a3.location];
  v6 = [v5 attributedText];
  v7 = [v6 length];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v34 = 0;
  v35 = 0;
  v33 = "";
  v8 = [(WFTagField *)self textView];
  v9 = [v8 attributedText];
  v10 = *MEMORY[0x277D74060];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__WFTagField_tokenizeFreeTextFromRange___block_invoke;
  v29[3] = &unk_279EDBE58;
  v29[4] = &v30;
  [v9 enumerateAttribute:v10 inRange:0 options:v7 usingBlock:{0, v29}];

  if (location <= v31[5] + v31[4])
  {
    v17 = 0;
  }

  else
  {
    v11 = [(WFTagField *)self textView];
    v12 = [v11 attributedText];
    v13 = [v12 mutableCopy];

    v14 = v31[5] + v31[4];
    v16 = v7 - v14;
    v15 = v7 == v14;
    v17 = v7 != v14;
    if (!v15)
    {
      v18 = [(WFValueTextAttachment *)[WFTagTextAttachment alloc] initWithData:0 ofType:0];
      v19 = [v13 attributedSubstringFromRange:{v14, v16}];
      v20 = [v19 string];
      [(WFValueTextAttachment *)v18 setStringValue:v20];

      v21 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v18];
      [v13 replaceCharactersInRange:v14 withAttributedString:{v16, v21}];

      v22 = [(WFTagField *)self textView];
      v23 = [v22 typingAttributes];
      [v13 addAttributes:v23 range:{0, objc_msgSend(v13, "length")}];

      v24 = [(WFTagField *)self textView];
      [v24 setAttributedText:v13];

      v25 = [MEMORY[0x277CCAB98] defaultCenter];
      v26 = [(WFTagField *)self textView];
      [v25 postNotificationName:*MEMORY[0x277D77218] object:v26];

      v27 = [(WFTagField *)self textView];
      [v27 updateTextAttachments];

      [(WFTagField *)self updateTags];
    }
  }

  _Block_object_dispose(&v30, 8);
  return v17;
}

uint64_t __40__WFTagField_tokenizeFreeTextFromRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *(*(result + 32) + 8);
    if ((a3 + a4) > *(v4 + 40) + *(v4 + 32))
    {
      *(v4 + 32) = a3;
      *(v4 + 40) = a4;
    }
  }

  return result;
}

- (void)updateEditableState
{
  if ([(WFTagField *)self isEditable])
  {
    if ([(WFTagField *)self allowsTextEntry])
    {
      v3 = 1;
    }

    else
    {
      v4 = [(WFTagField *)self tags];
      v3 = [v4 length] != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = [(WFTagField *)self textView];
  [v5 setEditable:v3];

  v6 = [(WFTagField *)self textView];
  [v6 setSelectable:v3];

  v7 = [(WFTagField *)self isEditable];
  v8 = [(WFTagField *)self plusButton];
  [v8 setEnabled:v7];

  v9 = [(WFTagField *)self scrollView];
  [v9 setUserInteractionEnabled:v3];
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = [(WFTagField *)self textView];
  [v4 setTextAlignment:a3];
}

- (int64_t)textAlignment
{
  v2 = [(WFTagField *)self textView];
  v3 = [v2 textAlignment];

  return v3;
}

- (void)setKeyboardAppearance:(int64_t)a3
{
  v4 = [(WFTagField *)self textView];
  [v4 setKeyboardAppearance:a3];
}

- (int64_t)keyboardAppearance
{
  v2 = [(WFTagField *)self textView];
  v3 = [v2 keyboardAppearance];

  return v3;
}

- (void)setKeyboardType:(int64_t)a3
{
  v4 = [(WFTagField *)self textView];
  [v4 setKeyboardType:a3];
}

- (int64_t)keyboardType
{
  v2 = [(WFTagField *)self textView];
  v3 = [v2 keyboardType];

  return v3;
}

- (void)setPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [(WFTagField *)self textView];
  [v5 setPlaceholder:v4];
}

- (NSString)placeholder
{
  v2 = [(WFTagField *)self textView];
  v3 = [v2 placeholder];

  return v3;
}

- (void)setTags:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  tags = self->_tags;
  self->_tags = v5;

  v7 = [(WFTagField *)self textView];
  v8 = [v7 typingAttributes];
  v9 = WFAttributedTextFromSerializedTagString(v4, v8);

  v10 = [(WFTagField *)self textView];
  [v10 setAttributedText:v9];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *MEMORY[0x277D77218];
  v13 = [(WFTagField *)self textView];
  [v11 postNotificationName:v12 object:v13];

  v14 = [(WFTagField *)self textView];
  [v14 updateTextAttachments];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = WFTagField;
  [(WFTagField *)&v17 layoutSubviews];
  [(WFTagField *)self bounds];
  v4 = v3;
  v5 = [(WFTagField *)self plusButton];
  v6 = 35.0;
  if (!v5)
  {
    v6 = 0.0;
  }

  v7 = v4 - v6;
  [(WFTagField *)self bounds];
  v9 = v8;
  v10 = [(WFTagField *)self scrollView];
  [v10 setFrame:{0.0, 0.0, v7, v9}];

  v11 = [(WFTagField *)self scrollView];
  [v11 bounds];
  v13 = v12 + 5.0;
  [(WFTagField *)self bounds];
  v15 = v14;
  v16 = [(WFTagField *)self plusButton];
  [v16 setFrame:{v13, 0.0, 30.0, v15}];
}

- (WFTagField)initWithFrame:(CGRect)a3 showsAddButton:(BOOL)a4
{
  v4 = a4;
  v15.receiver = self;
  v15.super_class = WFTagField;
  v5 = [(WFTagField *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(WFTagTextView);
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(WFTagTextView *)v6 setFont:v7];

    v8 = [MEMORY[0x277D75348] clearColor];
    [(WFTagTextView *)v6 setBackgroundColor:v8];

    [(WFTagField *)v5 setTextView:v6];
    v9 = [objc_alloc(MEMORY[0x277D7D538]) initWithTextView:v6];
    [v9 setTextViewDelegate:v5];
    [(WFTagField *)v5 addSubview:v9];
    [(WFTagField *)v5 setScrollView:v9];
    if (v4)
    {
      v10 = [MEMORY[0x277D75220] buttonWithType:1];
      v11 = WFLocalizedString(@"Add Tag");
      [v10 setAccessibilityLabel:v11];

      v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle"];
      [v10 setImage:v12 forState:0];

      [v10 addTarget:v5 action:sel_selectTag forControlEvents:64];
      [(WFTagField *)v5 addSubview:v10];
      [(WFTagField *)v5 setPlusButton:v10];
    }

    [(WFTagField *)v5 updateEditableState];
    v13 = v5;
  }

  return v5;
}

@end