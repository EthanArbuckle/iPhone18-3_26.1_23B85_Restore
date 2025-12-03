@interface WFTagField
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)tokenizeFreeTextFromRange:(_NSRange)range;
- (NSString)placeholder;
- (UIButton)plusButton;
- (WFTagField)initWithFrame:(CGRect)frame showsAddButton:(BOOL)button;
- (WFTagFieldDelegate)delegate;
- (WFTagTextView)textView;
- (WFTextScrollView)scrollView;
- (_NSRange)selectedRange;
- (id)containingViewController;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (int64_t)textAlignment;
- (void)insertTag:(id)tag;
- (void)layoutSubviews;
- (void)selectTag;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholder:(id)placeholder;
- (void)setTags:(id)tags;
- (void)setTextAlignment:(int64_t)alignment;
- (void)tagPicker:(id)picker didSelectTags:(id)tags;
- (void)tagPickerDidCancel:(id)cancel;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
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

- (void)tagPickerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)tagPicker:(id)picker didSelectTags:(id)tags
{
  v18 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  presentingViewController = [picker presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = tagsCopy;
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
  textView = [(WFTagField *)self textView];
  attributedText = [textView attributedText];
  v5 = WFSerializedTagStringFromAttributedText(attributedText);
  [(WFTagField *)self setTags:v5];

  [(WFTagField *)self updateEditableState];
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    tags = [(WFTagField *)self tags];
    updateBlock[2](updateBlock, tags);
  }
}

- (void)insertTag:(id)tag
{
  tagCopy = tag;
  v22 = [(WFValueTextAttachment *)[WFTagTextAttachment alloc] initWithData:0 ofType:0];
  [(WFValueTextAttachment *)v22 setStringValue:tagCopy];

  textView = [(WFTagField *)self textView];
  textStorage = [textView textStorage];
  v7 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v22];
  [textStorage insertAttributedString:v7 atIndex:{-[WFTagField selectedRange](self, "selectedRange")}];

  textView2 = [(WFTagField *)self textView];
  textStorage2 = [textView2 textStorage];
  textView3 = [(WFTagField *)self textView];
  typingAttributes = [textView3 typingAttributes];
  [textStorage2 addAttributes:typingAttributes range:{-[WFTagField selectedRange](self, "selectedRange"), 1}];

  selectedRange = [(WFTagField *)self selectedRange];
  textView4 = [(WFTagField *)self textView];
  [textView4 setSelectedRange:{selectedRange + 1, 0}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = *MEMORY[0x277D77218];
  textView5 = [(WFTagField *)self textView];
  [defaultCenter postNotificationName:v15 object:textView5];

  scrollView = [(WFTagField *)self scrollView];
  textView6 = [(WFTagField *)self textView];
  textView7 = [(WFTagField *)self textView];
  selectedTextRange = [textView7 selectedTextRange];
  v21 = [selectedTextRange end];
  [textView6 caretRectForPosition:v21];
  [scrollView scrollRectToVisible:0 animated:?];

  [(WFTagField *)self updateTags];
}

- (void)selectTag
{
  textView = [(WFTagField *)self textView];
  selectedRange = [textView selectedRange];
  [(WFTagField *)self tokenizeFreeTextFromRange:selectedRange, v5];

  textView2 = [(WFTagField *)self textView];
  [textView2 resignFirstResponder];

  v7 = [WFTagPickerViewController alloc];
  fieldTitle = [(WFTagField *)self fieldTitle];
  suggestedTags = [(WFTagField *)self suggestedTags];
  v15 = [(WFTagPickerViewController *)v7 initWithTitle:fieldTitle tags:suggestedTags];

  [(WFTagPickerViewController *)v15 setDelegate:self];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  [v10 setModalPresentationStyle:7];
  containingViewController = [(WFTagField *)self containingViewController];
  [containingViewController presentViewController:v10 animated:1 completion:0];

  popoverPresentationController = [v10 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:3];
  plusButton = [(WFTagField *)self plusButton];
  [popoverPresentationController setSourceView:plusButton];

  plusButton2 = [(WFTagField *)self plusButton];
  [plusButton2 bounds];
  [popoverPresentationController setSourceRect:?];
}

- (id)containingViewController
{
  delegate = [(WFTagField *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFTagField *)self delegate];
    v6 = [delegate2 viewControllerContainingTagField:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  attributedText = [changeCopy attributedText];
  v6 = [attributedText length];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  attributedText2 = [changeCopy attributedText];
  v8 = *MEMORY[0x277D74060];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__WFTagField_textViewDidChange___block_invoke;
  v9[3] = &unk_279EDBE58;
  v9[4] = &v10;
  [attributedText2 enumerateAttribute:v8 inRange:0 options:v6 usingBlock:{0, v9}];

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

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v12 = [textCopy rangeOfCharacterFromSet:newlineCharacterSet options:0];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(WFTagField *)self tokenizeFreeTextFromRange:location, length])
    {
      [viewCopy resignFirstResponder];
    }

    goto LABEL_8;
  }

  [viewCopy selectedRange];
  v13 = MEMORY[0x277D74060];
  if (!v14 && ![textCopy length])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    LOBYTE(v29) = 0;
    attributedText = [viewCopy attributedText];
    v16 = *v13;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke;
    v32[3] = &unk_279EDBE58;
    v32[4] = &v26;
    [attributedText enumerateAttribute:v16 inRange:location options:length usingBlock:{0, v32}];

    if (*(v27 + 24) == 1)
    {
      [viewCopy setSelectedRange:{location, length}];
      _Block_object_dispose(&v26, 8);
LABEL_8:
      v17 = 0;
      goto LABEL_16;
    }

    _Block_object_dispose(&v26, 8);
  }

  textView = [(WFTagField *)self textView];
  attributedText2 = [textView attributedText];
  v20 = [attributedText2 length];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v30 = 0;
  v31 = 0;
  v29 = "";
  textView2 = [(WFTagField *)self textView];
  attributedText3 = [textView2 attributedText];
  v23 = *v13;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__WFTagField_textView_shouldChangeTextInRange_replacementText___block_invoke_2;
  v25[3] = &unk_279EDBE58;
  v25[4] = &v26;
  [attributedText3 enumerateAttribute:v23 inRange:0 options:v20 usingBlock:{0, v25}];

  v17 = ![textCopy length] || -[WFTagField allowsTextEntry](self, "allowsTextEntry") && location >= v27[5] + v27[4];
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

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  textView = [(WFTagField *)self textView];
  [textView updateTextAttachments];

  selectedRange = [(WFTagField *)self selectedRange];
  selectedRange2 = [selectionCopy selectedRange];
  [(WFTagField *)self setSelectedRange:selectedRange2, v7];
  selectedRange3 = [(WFTagField *)self selectedRange];
  selectedTextRange = [selectionCopy selectedTextRange];
  v10 = selectedTextRange;
  if (selectedRange3 >= selectedRange)
  {
    [selectedTextRange end];
  }

  else
  {
    [selectedTextRange start];
  }
  v11 = ;

  [selectionCopy caretRectForPosition:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  scrollView = [(WFTagField *)self scrollView];
  [scrollView scrollRectToVisible:0 animated:{v13, v15, v17, v19}];
}

- (void)textViewDidEndEditing:(id)editing
{
  textView = [(WFTagField *)self textView];
  selectedRange = [textView selectedRange];
  [(WFTagField *)self tokenizeFreeTextFromRange:selectedRange, v5];
}

- (BOOL)tokenizeFreeTextFromRange:(_NSRange)range
{
  location = range.location;
  v5 = [(WFTagField *)self textView:range.location];
  attributedText = [v5 attributedText];
  v7 = [attributedText length];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v34 = 0;
  v35 = 0;
  v33 = "";
  textView = [(WFTagField *)self textView];
  attributedText2 = [textView attributedText];
  v10 = *MEMORY[0x277D74060];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__WFTagField_tokenizeFreeTextFromRange___block_invoke;
  v29[3] = &unk_279EDBE58;
  v29[4] = &v30;
  [attributedText2 enumerateAttribute:v10 inRange:0 options:v7 usingBlock:{0, v29}];

  if (location <= v31[5] + v31[4])
  {
    v17 = 0;
  }

  else
  {
    textView2 = [(WFTagField *)self textView];
    attributedText3 = [textView2 attributedText];
    v13 = [attributedText3 mutableCopy];

    v14 = v31[5] + v31[4];
    v16 = v7 - v14;
    v15 = v7 == v14;
    v17 = v7 != v14;
    if (!v15)
    {
      v18 = [(WFValueTextAttachment *)[WFTagTextAttachment alloc] initWithData:0 ofType:0];
      v19 = [v13 attributedSubstringFromRange:{v14, v16}];
      string = [v19 string];
      [(WFValueTextAttachment *)v18 setStringValue:string];

      v21 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v18];
      [v13 replaceCharactersInRange:v14 withAttributedString:{v16, v21}];

      textView3 = [(WFTagField *)self textView];
      typingAttributes = [textView3 typingAttributes];
      [v13 addAttributes:typingAttributes range:{0, objc_msgSend(v13, "length")}];

      textView4 = [(WFTagField *)self textView];
      [textView4 setAttributedText:v13];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      textView5 = [(WFTagField *)self textView];
      [defaultCenter postNotificationName:*MEMORY[0x277D77218] object:textView5];

      textView6 = [(WFTagField *)self textView];
      [textView6 updateTextAttachments];

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
      tags = [(WFTagField *)self tags];
      v3 = [tags length] != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  textView = [(WFTagField *)self textView];
  [textView setEditable:v3];

  textView2 = [(WFTagField *)self textView];
  [textView2 setSelectable:v3];

  isEditable = [(WFTagField *)self isEditable];
  plusButton = [(WFTagField *)self plusButton];
  [plusButton setEnabled:isEditable];

  scrollView = [(WFTagField *)self scrollView];
  [scrollView setUserInteractionEnabled:v3];
}

- (void)setTextAlignment:(int64_t)alignment
{
  textView = [(WFTagField *)self textView];
  [textView setTextAlignment:alignment];
}

- (int64_t)textAlignment
{
  textView = [(WFTagField *)self textView];
  textAlignment = [textView textAlignment];

  return textAlignment;
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  textView = [(WFTagField *)self textView];
  [textView setKeyboardAppearance:appearance];
}

- (int64_t)keyboardAppearance
{
  textView = [(WFTagField *)self textView];
  keyboardAppearance = [textView keyboardAppearance];

  return keyboardAppearance;
}

- (void)setKeyboardType:(int64_t)type
{
  textView = [(WFTagField *)self textView];
  [textView setKeyboardType:type];
}

- (int64_t)keyboardType
{
  textView = [(WFTagField *)self textView];
  keyboardType = [textView keyboardType];

  return keyboardType;
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  textView = [(WFTagField *)self textView];
  [textView setPlaceholder:placeholderCopy];
}

- (NSString)placeholder
{
  textView = [(WFTagField *)self textView];
  placeholder = [textView placeholder];

  return placeholder;
}

- (void)setTags:(id)tags
{
  tagsCopy = tags;
  v5 = [tagsCopy copy];
  tags = self->_tags;
  self->_tags = v5;

  textView = [(WFTagField *)self textView];
  typingAttributes = [textView typingAttributes];
  v9 = WFAttributedTextFromSerializedTagString(tagsCopy, typingAttributes);

  textView2 = [(WFTagField *)self textView];
  [textView2 setAttributedText:v9];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *MEMORY[0x277D77218];
  textView3 = [(WFTagField *)self textView];
  [defaultCenter postNotificationName:v12 object:textView3];

  textView4 = [(WFTagField *)self textView];
  [textView4 updateTextAttachments];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = WFTagField;
  [(WFTagField *)&v17 layoutSubviews];
  [(WFTagField *)self bounds];
  v4 = v3;
  plusButton = [(WFTagField *)self plusButton];
  v6 = 35.0;
  if (!plusButton)
  {
    v6 = 0.0;
  }

  v7 = v4 - v6;
  [(WFTagField *)self bounds];
  v9 = v8;
  scrollView = [(WFTagField *)self scrollView];
  [scrollView setFrame:{0.0, 0.0, v7, v9}];

  scrollView2 = [(WFTagField *)self scrollView];
  [scrollView2 bounds];
  v13 = v12 + 5.0;
  [(WFTagField *)self bounds];
  v15 = v14;
  plusButton2 = [(WFTagField *)self plusButton];
  [plusButton2 setFrame:{v13, 0.0, 30.0, v15}];
}

- (WFTagField)initWithFrame:(CGRect)frame showsAddButton:(BOOL)button
{
  buttonCopy = button;
  v15.receiver = self;
  v15.super_class = WFTagField;
  v5 = [(WFTagField *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(WFTagTextView);
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(WFTagTextView *)v6 setFont:v7];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFTagTextView *)v6 setBackgroundColor:clearColor];

    [(WFTagField *)v5 setTextView:v6];
    v9 = [objc_alloc(MEMORY[0x277D7D538]) initWithTextView:v6];
    [v9 setTextViewDelegate:v5];
    [(WFTagField *)v5 addSubview:v9];
    [(WFTagField *)v5 setScrollView:v9];
    if (buttonCopy)
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