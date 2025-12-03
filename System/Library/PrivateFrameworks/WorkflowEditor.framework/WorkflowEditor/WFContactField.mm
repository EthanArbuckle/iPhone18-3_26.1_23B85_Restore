@interface WFContactField
- (BOOL)text:(id)text containsMatchesForProperties:(id)properties;
- (BOOL)text:(id)text containsMatchesForProperty:(int)property;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (NSSet)supportedPersonProperties;
- (NSString)placeholder;
- (NSString)textContentType;
- (UIButton)plusButton;
- (WFContactField)initWithFrame:(CGRect)frame;
- (WFContactFieldDelegate)delegate;
- (WFContactTextView)textView;
- (WFTextScrollView)scrollView;
- (_NSRange)selectedRange;
- (id)containingViewController;
- (id)typingAttributes;
- (int64_t)keyboardAppearance;
- (int64_t)keyboardType;
- (int64_t)textAlignment;
- (int64_t)tokenizeFreeTextFromRange:(_NSRange)range freeTextModificationBlock:(id *)block;
- (unint64_t)numberOfValuesForProperties:(id)properties inContact:(id)contact;
- (void)chooseMultivalueIndexIfNecessaryForContact:(id)contact sender:(id)sender;
- (void)deleteFreeText:(id)text replacementRange:(_NSRange)range newValue:(id)value;
- (void)insertContact:(id)contact;
- (void)layoutSubviews;
- (void)presentContactSelectionActionSheetForText:(id)text attributedText:(id)attributedText replacementRange:(_NSRange)range;
- (void)selectContact;
- (void)setAllowsTextEntry:(BOOL)entry;
- (void)setEntries:(id)entries;
- (void)setKeyboardAppearance:(int64_t)appearance;
- (void)setKeyboardType:(int64_t)type;
- (void)setPlaceholder:(id)placeholder;
- (void)setSupportedPersonProperties:(id)properties;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextContentType:(id)type;
- (void)showContactPicker;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)tintColorDidChange;
- (void)tokenizeFreeText:(id)text replacementRange:(_NSRange)range newValue:(id)value;
- (void)updateContactsFromTextField:(BOOL)field;
- (void)updateEditableState;
@end

@implementation WFContactField

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

- (WFContactTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (WFContactFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = WFContactField;
  [(WFContactField *)&v5 tintColorDidChange];
  typingAttributes = [(WFContactField *)self typingAttributes];
  textView = [(WFContactField *)self textView];
  [textView setTypingAttributes:typingAttributes];
}

- (id)typingAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  tintColor = [(WFContactField *)self tintColor];
  v8[1] = tintColor;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
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
    v36 = 0;
    v17 = [(WFContactField *)self tokenizeFreeTextFromRange:location freeTextModificationBlock:length, &v36];
    v18 = v36;
    v19 = v18;
    if (v17 == 1)
    {
      if (v18)
      {
        (*(v18 + 2))(v18);
      }
    }

    else
    {
      [viewCopy resignFirstResponder];
    }

    goto LABEL_11;
  }

  [viewCopy selectedRange];
  v13 = MEMORY[0x277D74060];
  if (!v14 && ![textCopy length])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    LOBYTE(v32) = 0;
    attributedText = [viewCopy attributedText];
    v16 = *v13;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__WFContactField_textView_shouldChangeTextInRange_replacementText___block_invoke;
    v35[3] = &unk_279EDBE58;
    v35[4] = &v29;
    [attributedText enumerateAttribute:v16 inRange:location options:length usingBlock:{0, v35}];

    if (*(v30 + 24) == 1)
    {
      [viewCopy setSelectedRange:{location, length}];
      _Block_object_dispose(&v29, 8);
LABEL_11:
      v20 = 0;
      goto LABEL_19;
    }

    _Block_object_dispose(&v29, 8);
  }

  textView = [(WFContactField *)self textView];
  attributedText2 = [textView attributedText];
  v23 = [attributedText2 length];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v33 = 0;
  v34 = 0;
  v32 = "";
  textView2 = [(WFContactField *)self textView];
  attributedText3 = [textView2 attributedText];
  v26 = *v13;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __67__WFContactField_textView_shouldChangeTextInRange_replacementText___block_invoke_2;
  v28[3] = &unk_279EDBE58;
  v28[4] = &v29;
  [attributedText3 enumerateAttribute:v26 inRange:0 options:v23 usingBlock:{0, v28}];

  v20 = ![textCopy length] || -[WFContactField allowsTextEntry](self, "allowsTextEntry") && location >= v30[5] + v30[4];
  _Block_object_dispose(&v29, 8);
LABEL_19:

  return v20;
}

uint64_t __67__WFContactField_textView_shouldChangeTextInRange_replacementText___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2 != 0;
  *a5 = *(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __67__WFContactField_textView_shouldChangeTextInRange_replacementText___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
  textView = [(WFContactField *)self textView];
  [textView updateTextAttachments];

  selectedRange = [selectionCopy selectedRange];
  v8 = v7;

  [(WFContactField *)self setSelectedRange:selectedRange, v8];
}

- (void)textViewDidEndEditing:(id)editing
{
  v14[1] = *MEMORY[0x277D85DE8];
  textView = [(WFContactField *)self textView];
  selectedRange = [textView selectedRange];
  v12 = 0;
  v7 = [(WFContactField *)self tokenizeFreeTextFromRange:selectedRange freeTextModificationBlock:v6, &v12];
  v8 = v12;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = @"WFContactFieldTokenizationResultNotificationTokenizationResultKey";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [defaultCenter postNotificationName:@"WFContactFieldTokenizationResultNotification" object:self userInfo:v11];

  if (v8)
  {
    v8[2](v8);
  }
}

- (unint64_t)numberOfValuesForProperties:(id)properties inContact:(id)contact
{
  v20 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  contactCopy = contact;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [propertiesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v12 = [contactCopy valueForPropertyID:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "intValue")}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 count];
        }

        else
        {
          v13 = v12 != 0;
        }

        v9 += v13;
      }

      v8 = [propertiesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)text:(id)text containsMatchesForProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  propertiesCopy = properties;
  v8 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        if (-[WFContactField text:containsMatchesForProperty:](self, "text:containsMatchesForProperty:", textCopy, [*(*(&v14 + 1) + 8 * i) intValue]))
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [propertiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)text:(id)text containsMatchesForProperty:(int)property
{
  textCopy = text;
  switch(property)
  {
    case 3:
      v6 = [MEMORY[0x277CFC4B0] stringContainsPhoneNumbers:textCopy];
      break;
    case 22:
      v6 = [MEMORY[0x277CFC570] stringContainsURLs:textCopy];
      break;
    case 4:
      v6 = [MEMORY[0x277CFC3B0] stringContainsEmailAddresses:textCopy];
      break;
    default:
      v7 = 0;
      goto LABEL_9;
  }

  v7 = v6;
LABEL_9:

  return v7;
}

- (void)chooseMultivalueIndexIfNecessaryForContact:(id)contact sender:(id)sender
{
  contactCopy = contact;
  senderCopy = sender;
  supportedPersonProperties = [(WFContactField *)self supportedPersonProperties];
  v9 = [(WFContactField *)self numberOfValuesForProperties:supportedPersonProperties inContact:contactCopy];

  if (v9 > 1)
  {
    v10 = objc_opt_new();
    contactPicker = self->_contactPicker;
    self->_contactPicker = v10;

    supportedPersonProperties2 = [(WFContactField *)self supportedPersonProperties];
    [(WFContactPickerCoordinator *)self->_contactPicker setSupportedPersonProperties:supportedPersonProperties2];

    containingViewController = [(WFContactField *)self containingViewController];
    [(WFContactPickerCoordinator *)self->_contactPicker setPresentingViewController:containingViewController];

    v14 = MEMORY[0x277D7D500];
    plusButton = [(WFContactField *)self plusButton];
    plusButton2 = [(WFContactField *)self plusButton];
    [plusButton2 bounds];
    v17 = [v14 sourceWithView:plusButton rect:?];
    [(WFContactPickerCoordinator *)self->_contactPicker setPresentationSource:v17];

    objc_initWeak(&location, self);
    v18 = self->_contactPicker;
    contact = [contactCopy contact];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__WFContactField_chooseMultivalueIndexIfNecessaryForContact_sender___block_invoke;
    v20[3] = &unk_279EDC260;
    objc_copyWeak(&v21, &location);
    [(WFContactPickerCoordinator *)v18 presentHandlePickerForContact:contact completionHandler:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(WFContactField *)self insertContact:contactCopy];
  }
}

void __68__WFContactField_chooseMultivalueIndexIfNecessaryForContact_sender___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained insertContact:v4];
  }

  [WeakRetained setContactPicker:0];
}

- (void)presentContactSelectionActionSheetForText:(id)text attributedText:(id)attributedText replacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v88 = *MEMORY[0x277D85DE8];
  textCopy = text;
  attributedTextCopy = attributedText;
  supportedPersonProperties = [(WFContactField *)self supportedPersonProperties];
  requiredKeysToFetch = [MEMORY[0x277CFC278] requiredKeysToFetch];
  descriptorForRequiredKeys = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v13 = [requiredKeysToFetch arrayByAddingObject:descriptorForRequiredKeys];

  v14 = textCopy;
  v15 = v13;
  v16 = objc_opt_new();
  v17 = [v16 contactsWithName:textCopy keysToFetch:v13];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke;
  v85[3] = &unk_279EDBEA8;
  v85[4] = self;
  v18 = supportedPersonProperties;
  v86 = v18;
  v19 = [v17 if_objectsPassingTest:v85];

  v60 = v15;
  if ([v18 containsObject:&unk_2883869B0] && (objc_msgSend(v18, "containsObject:", &unk_2883869C8) & 1) != 0)
  {
    v20 = length;
    v21 = location;
    v22 = @"a phone number or email address";
LABEL_8:
    v23 = WFLocalizedString(v22);
    goto LABEL_9;
  }

  v20 = length;
  if ([v18 containsObject:&unk_2883869B0])
  {
    v21 = location;
    v22 = @"an email address";
    goto LABEL_8;
  }

  v21 = location;
  if ([v18 containsObject:&unk_2883869C8])
  {
    v22 = @"a phone number";
    goto LABEL_8;
  }

  v23 = 0;
LABEL_9:
  v24 = [MEMORY[0x277CFC218] alertWithPreferredStyle:1];
  v25 = MEMORY[0x277D7D500];
  plusButton = [(WFContactField *)self plusButton];
  v27 = [v25 sourceWithView:plusButton];
  [v24 setPresentationSource:v27];

  v28 = MEMORY[0x277CCACA8];
  v29 = WFLocalizedString(@"“%1$@” doesn’t look like %2$@. Did you mean to add a contact?");
  v57 = v23;
  v30 = [v28 localizedStringWithFormat:v29, v14, v23];
  [v24 setMessage:v30];

  v31 = 0x277CFC000uLL;
  v32 = [MEMORY[0x277CFC220] cancelButtonWithHandler:0];
  [v24 addButton:v32];

  v58 = v19;
  v59 = v18;
  selfCopy = self;
  if ([v19 count])
  {
    v62 = v24;
    v63 = v14;
    v33 = v21;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v19;
    v34 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v82;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v82 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v81 + 1) + 8 * i);
          v39 = MEMORY[0x277CFC510];
          formattedName = [v38 formattedName];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke_233;
          v75[3] = &unk_279EDBED0;
          v75[4] = self;
          v76 = attributedTextCopy;
          v79 = v33;
          v80 = v20;
          v77 = v63;
          v78 = v38;
          v41 = [v39 buttonWithTitle:formattedName style:0 handler:v75];
          [v62 addButton:v41];
        }

        v35 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v35);
    }

    v21 = v33;
    v14 = v63;
    v42 = attributedTextCopy;
    v43 = v62;
    v31 = 0x277CFC000;
  }

  else
  {
    v44 = MEMORY[0x277CFC220];
    v45 = WFLocalizedString(@"Search Contacts");
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke_2;
    v70[3] = &unk_279EDBE80;
    v70[4] = self;
    v42 = attributedTextCopy;
    v71 = attributedTextCopy;
    v73 = v21;
    v74 = v20;
    v72 = v14;
    v46 = [v44 buttonWithTitle:v45 style:0 handler:v70];
    [v24 addButton:v46];

    v43 = v24;
  }

  v47 = *(v31 + 544);
  v48 = MEMORY[0x277CCACA8];
  v49 = WFLocalizedString(@"Use “%@” Anyway");
  v50 = [v48 localizedStringWithFormat:v49, v14];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke_3;
  v65[3] = &unk_279EDBE80;
  v65[4] = selfCopy;
  v66 = v42;
  v68 = v21;
  v69 = v20;
  v67 = v14;
  v51 = v14;
  v52 = v42;
  v53 = [v47 buttonWithTitle:v50 style:0 handler:v65];
  [v43 addButton:v53];

  containingViewController = [(WFContactField *)selfCopy containingViewController];
  v55 = WFUserInterfaceFromViewController();
  [v55 presentAlert:v43];
}

void __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke_233(uint64_t a1)
{
  [*(a1 + 32) deleteFreeText:*(a1 + 40) replacementRange:*(a1 + 64) newValue:{*(a1 + 72), *(a1 + 48)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = [v2 plusButton];
  [v2 chooseMultivalueIndexIfNecessaryForContact:v3 sender:v4];
}

uint64_t __92__WFContactField_presentContactSelectionActionSheetForText_attributedText_replacementRange___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showContactPicker];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 deleteFreeText:v3 replacementRange:v4 newValue:{v6, v5}];
}

- (void)tokenizeFreeText:(id)text replacementRange:(_NSRange)range newValue:(id)value
{
  length = range.length;
  location = range.location;
  valueCopy = value;
  textCopy = text;
  v19 = [(WFValueTextAttachment *)[WFContactTextAttachment alloc] initWithData:0 ofType:0];
  [(WFValueTextAttachment *)v19 setStringValue:valueCopy];

  v11 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v19];
  [textCopy replaceCharactersInRange:location withAttributedString:{length, v11}];

  textView = [(WFContactField *)self textView];
  typingAttributes = [textView typingAttributes];
  [textCopy addAttributes:typingAttributes range:{0, objc_msgSend(textCopy, "length")}];

  textView2 = [(WFContactField *)self textView];
  [textView2 setAttributedText:textCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = *MEMORY[0x277D77218];
  textView3 = [(WFContactField *)self textView];
  [defaultCenter postNotificationName:v16 object:textView3];

  textView4 = [(WFContactField *)self textView];
  [textView4 updateTextAttachments];

  [(WFContactField *)self updateContactsFromTextField:0];
}

- (void)deleteFreeText:(id)text replacementRange:(_NSRange)range newValue:(id)value
{
  length = range.length;
  location = range.location;
  textCopy = text;
  [textCopy deleteCharactersInRange:{location, length}];
  textView = [(WFContactField *)self textView];
  [textView setAttributedText:textCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277D77218];
  textView2 = [(WFContactField *)self textView];
  [defaultCenter postNotificationName:v11 object:textView2];

  textView3 = [(WFContactField *)self textView];
  [textView3 updateTextAttachments];

  [(WFContactField *)self updateContactsFromTextField:0];
}

- (int64_t)tokenizeFreeTextFromRange:(_NSRange)range freeTextModificationBlock:(id *)block
{
  v6 = [(WFContactField *)self textView:range.location];
  attributedText = [v6 attributedText];
  v8 = [attributedText length];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v34 = 0;
  v35 = 0;
  v33 = "";
  textView = [(WFContactField *)self textView];
  attributedText2 = [textView attributedText];
  v11 = *MEMORY[0x277D74060];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __70__WFContactField_tokenizeFreeTextFromRange_freeTextModificationBlock___block_invoke;
  v29[3] = &unk_279EDBE58;
  v29[4] = &v30;
  [attributedText2 enumerateAttribute:v11 inRange:0 options:v8 usingBlock:{0, v29}];

  textView2 = [(WFContactField *)self textView];
  attributedText3 = [textView2 attributedText];
  v14 = [attributedText3 mutableCopy];

  v16 = v31[4];
  v15 = v31[5];
  v17 = v15 + v16;
  v18 = v8 - (v15 + v16);
  if (v8 != v15 + v16)
  {
    v20 = [v14 attributedSubstringFromRange:{v15 + v16, v8 - (v15 + v16)}];
    string = [v20 string];

    supportedPersonProperties = [(WFContactField *)self supportedPersonProperties];
    if ((-[WFContactField allowsTextEntry](self, "allowsTextEntry") || ([MEMORY[0x277D75418] currentDevice], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v24 == 1)) && !-[WFContactField text:containsMatchesForProperties:](self, "text:containsMatchesForProperties:", string, supportedPersonProperties))
    {
      if (!block)
      {
        v19 = 2;
        goto LABEL_13;
      }

      v25 = v28;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__WFContactField_tokenizeFreeTextFromRange_freeTextModificationBlock___block_invoke_2;
      v28[3] = &unk_279EDBE80;
      v28[4] = self;
      v28[5] = string;
      v28[6] = v14;
      v28[7] = v17;
      v28[8] = v18;
      v19 = 2;
    }

    else
    {
      if (!block)
      {
        v19 = 1;
        goto LABEL_13;
      }

      v25 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__WFContactField_tokenizeFreeTextFromRange_freeTextModificationBlock___block_invoke_3;
      v27[3] = &unk_279EDBE80;
      v27[4] = self;
      v27[5] = v14;
      v27[7] = v17;
      v27[8] = v18;
      v27[6] = string;
      v19 = 1;
    }

    *block = _Block_copy(v25);

LABEL_13:
    goto LABEL_14;
  }

  v19 = 0;
LABEL_14:

  _Block_object_dispose(&v30, 8);
  return v19;
}

uint64_t __70__WFContactField_tokenizeFreeTextFromRange_freeTextModificationBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

- (void)insertContact:(id)contact
{
  contactCopy = contact;
  v22 = [(WFValueTextAttachment *)[WFContactTextAttachment alloc] initWithData:0 ofType:0];
  [(WFContactTextAttachment *)v22 setValue:contactCopy];

  textView = [(WFContactField *)self textView];
  textStorage = [textView textStorage];
  v7 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v22];
  [textStorage insertAttributedString:v7 atIndex:{-[WFContactField selectedRange](self, "selectedRange")}];

  textView2 = [(WFContactField *)self textView];
  textStorage2 = [textView2 textStorage];
  textView3 = [(WFContactField *)self textView];
  typingAttributes = [textView3 typingAttributes];
  [textStorage2 addAttributes:typingAttributes range:{-[WFContactField selectedRange](self, "selectedRange"), 1}];

  selectedRange = [(WFContactField *)self selectedRange];
  textView4 = [(WFContactField *)self textView];
  [textView4 setSelectedRange:{selectedRange + 1, 0}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = *MEMORY[0x277D77218];
  textView5 = [(WFContactField *)self textView];
  [defaultCenter postNotificationName:v15 object:textView5];

  scrollView = [(WFContactField *)self scrollView];
  textView6 = [(WFContactField *)self textView];
  textView7 = [(WFContactField *)self textView];
  selectedTextRange = [textView7 selectedTextRange];
  v21 = [selectedTextRange end];
  [textView6 caretRectForPosition:v21];
  [scrollView scrollRectToVisible:0 animated:?];

  [(WFContactField *)self updateContactsFromTextField:0];
}

- (void)showContactPicker
{
  v3 = objc_opt_new();
  contactPicker = self->_contactPicker;
  self->_contactPicker = v3;

  supportedPersonProperties = [(WFContactField *)self supportedPersonProperties];
  [(WFContactPickerCoordinator *)self->_contactPicker setSupportedPersonProperties:supportedPersonProperties];

  containingViewController = [(WFContactField *)self containingViewController];
  [(WFContactPickerCoordinator *)self->_contactPicker setPresentingViewController:containingViewController];

  v7 = MEMORY[0x277D7D500];
  plusButton = [(WFContactField *)self plusButton];
  plusButton2 = [(WFContactField *)self plusButton];
  [plusButton2 bounds];
  v10 = [v7 sourceWithView:plusButton rect:?];
  [(WFContactPickerCoordinator *)self->_contactPicker setPresentationSource:v10];

  objc_initWeak(&location, self);
  v11 = self->_contactPicker;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__WFContactField_showContactPicker__block_invoke;
  v12[3] = &unk_279EDC260;
  objc_copyWeak(&v13, &location);
  [(WFContactPickerCoordinator *)v11 presentContactPickerWithCompletionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __35__WFContactField_showContactPicker__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained insertContact:v4];
  }

  [WeakRetained setContactPicker:0];
}

- (void)selectContact
{
  textView = [(WFContactField *)self textView];
  selectedRange = [textView selectedRange];
  v8 = 0;
  v6 = [(WFContactField *)self tokenizeFreeTextFromRange:selectedRange freeTextModificationBlock:v5, &v8];
  v7 = v8;

  if (v7)
  {
    v7[2](v7);
  }

  if (v6 != 2)
  {
    [(WFContactField *)self showContactPicker];
  }
}

- (id)containingViewController
{
  delegate = [(WFContactField *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFContactField *)self delegate];
    v6 = [delegate2 viewControllerContainingContactField:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateContactsFromTextField:(BOOL)field
{
  fieldCopy = field;
  textView = [(WFContactField *)self textView];
  attributedText = [textView attributedText];
  v11 = WFContactEntriesFromAttributedString(attributedText);

  entries = [(WFContactField *)self entries];
  LOBYTE(attributedText) = [v11 isEqualToArray:entries];

  if ((attributedText & 1) == 0)
  {
    if (fieldCopy)
    {
      v8 = [v11 copy];
      entries = self->_entries;
      self->_entries = v8;
    }

    else
    {
      [(WFContactField *)self setEntries:v11];
    }

    updateBlock = self->_updateBlock;
    if (updateBlock)
    {
      updateBlock[2](updateBlock, self->_entries);
    }
  }

  [(WFContactField *)self updateEditableState];
}

- (void)updateEditableState
{
  if ([(WFContactField *)self isEditable])
  {
    if ([(WFContactField *)self allowsTextEntry])
    {
      v3 = 1;
    }

    else
    {
      entries = [(WFContactField *)self entries];
      v3 = [entries count] != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  textView = [(WFContactField *)self textView];
  [textView setEditable:v3];

  textView2 = [(WFContactField *)self textView];
  [textView2 setSelectable:v3];

  isEditable = [(WFContactField *)self isEditable];
  plusButton = [(WFContactField *)self plusButton];
  [plusButton setEnabled:isEditable];

  scrollView = [(WFContactField *)self scrollView];
  [scrollView setUserInteractionEnabled:v3];
}

- (void)setAllowsTextEntry:(BOOL)entry
{
  entryCopy = entry;
  self->_allowsTextEntry = entry;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained setAllowsTextEntry:entryCopy];

  [(WFContactField *)self updateEditableState];
}

- (void)setSupportedPersonProperties:(id)properties
{
  propertiesCopy = properties;
  textView = [(WFContactField *)self textView];
  [textView setSupportedPersonProperties:propertiesCopy];
}

- (NSSet)supportedPersonProperties
{
  textView = [(WFContactField *)self textView];
  supportedPersonProperties = [textView supportedPersonProperties];

  return supportedPersonProperties;
}

- (void)setTextContentType:(id)type
{
  typeCopy = type;
  textView = [(WFContactField *)self textView];
  [textView setTextContentType:typeCopy];
}

- (NSString)textContentType
{
  textView = [(WFContactField *)self textView];
  textContentType = [textView textContentType];

  return textContentType;
}

- (void)setTextAlignment:(int64_t)alignment
{
  textView = [(WFContactField *)self textView];
  [textView setTextAlignment:alignment];
}

- (int64_t)textAlignment
{
  textView = [(WFContactField *)self textView];
  textAlignment = [textView textAlignment];

  return textAlignment;
}

- (void)setKeyboardAppearance:(int64_t)appearance
{
  textView = [(WFContactField *)self textView];
  [textView setKeyboardAppearance:appearance];
}

- (int64_t)keyboardAppearance
{
  textView = [(WFContactField *)self textView];
  keyboardAppearance = [textView keyboardAppearance];

  return keyboardAppearance;
}

- (void)setKeyboardType:(int64_t)type
{
  textView = [(WFContactField *)self textView];
  [textView setKeyboardType:type];
}

- (int64_t)keyboardType
{
  textView = [(WFContactField *)self textView];
  keyboardType = [textView keyboardType];

  return keyboardType;
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  textView = [(WFContactField *)self textView];
  [textView setPlaceholder:placeholderCopy];
}

- (NSString)placeholder
{
  textView = [(WFContactField *)self textView];
  placeholder = [textView placeholder];

  return placeholder;
}

- (void)setEntries:(id)entries
{
  v4 = [entries copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(&self->_entries, v6);

  entries = self->_entries;
  textView = [(WFContactField *)self textView];
  typingAttributes = [textView typingAttributes];
  v10 = WFAttributedStringFromContactEntries(entries, typingAttributes, 1);
  textView2 = [(WFContactField *)self textView];
  [textView2 setAttributedText:v10];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = *MEMORY[0x277D77218];
  textView3 = [(WFContactField *)self textView];
  [defaultCenter postNotificationName:v13 object:textView3];

  textView4 = [(WFContactField *)self textView];
  [textView4 updateTextAttachments];

  [(WFContactField *)self updateEditableState];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = WFContactField;
  [(WFContactField *)&v16 layoutSubviews];
  mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
  shouldReverseLayoutDirection = [mEMORY[0x277CFC248] shouldReverseLayoutDirection];

  v5 = 0.0;
  if (shouldReverseLayoutDirection)
  {
    v6 = 35.0;
  }

  else
  {
    v6 = 0.0;
  }

  [(WFContactField *)self bounds];
  v8 = v7 + -35.0;
  [(WFContactField *)self bounds];
  v10 = v9;
  scrollView = [(WFContactField *)self scrollView];
  [scrollView setFrame:{v6, 0.0, v8, v10}];

  if ((shouldReverseLayoutDirection & 1) == 0)
  {
    scrollView = [(WFContactField *)self scrollView];
    [scrollView bounds];
    v5 = v12 + 5.0;
  }

  [(WFContactField *)self bounds];
  v14 = v13;
  plusButton = [(WFContactField *)self plusButton];
  [plusButton setFrame:{v5, 0.0, 30.0, v14}];

  if ((shouldReverseLayoutDirection & 1) == 0)
  {
  }
}

- (WFContactField)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = WFContactField;
  v3 = [(WFContactField *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(WFContactTextView);
    typingAttributes = [(WFContactField *)v3 typingAttributes];
    [(WFContactTextView *)v4 setTypingAttributes:typingAttributes];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFContactTextView *)v4 setBackgroundColor:clearColor];

    [(WFContactTextView *)v4 setAutocapitalizationType:[(WFContactField *)v3 autocapitalizationType]];
    textContainer = [(WFContactTextView *)v4 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    entries = v3->_entries;
    v3->_entries = MEMORY[0x277CBEBF8];

    [(WFContactField *)v3 setTextView:v4];
    v9 = [objc_alloc(MEMORY[0x277D7D538]) initWithTextView:v4];
    [v9 setTextViewDelegate:v3];
    [(WFContactField *)v3 addSubview:v9];
    [(WFContactField *)v3 setScrollView:v9];
    v10 = [MEMORY[0x277D75220] buttonWithType:1];
    v11 = WFLocalizedString(@"Add Contact");
    [v10 setAccessibilityLabel:v11];

    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle"];
    [v10 setImage:v12 forState:0];

    [v10 addTarget:v3 action:sel_selectContact forControlEvents:64];
    [(WFContactField *)v3 addSubview:v10];
    [(WFContactField *)v3 setPlusButton:v10];
    [(WFContactField *)v3 updateEditableState];
    v13 = v3;
  }

  return v3;
}

@end