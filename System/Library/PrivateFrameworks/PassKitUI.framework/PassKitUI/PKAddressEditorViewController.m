@interface PKAddressEditorViewController
- (PKAddressEditorViewController)initWithContact:(id)a3 requiredKeys:(id)a4 highlightedKeys:(id)a5 errors:(id)a6 style:(int64_t)a7;
- (PKAddressEditorViewController)initWithContact:(id)a3 style:(int64_t)a4;
- (PKAddressEditorViewControllerDelegate)delegate;
- (PKAddressTextField)countryTextField;
- (PKAddressTextField)familyNameTextField;
- (PKAddressTextField)givenNameTextField;
- (PKAddressTextField)phoneticFamilyNameTextField;
- (PKAddressTextField)phoneticGivenNameTextField;
- (PKAddressTextField)street1TextField;
- (PKAddressTextField)street2TextField;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_fieldIndexForNameComponent:(unint64_t)a3;
- (unint64_t)_nameComponentForFieldIndex:(unint64_t)a3;
- (void)_checkFormatOfAddressTextField:(id)a3;
- (void)_presentCountryPickerIfEditable;
- (void)_presentPickerForAddressTextField:(id)a3;
- (void)_updateUniqueAddressField:(id)a3 withNewString:(id)a4;
- (void)_updateWithPostalAddress:(id)a3;
- (void)_validateAddressRequirements;
- (void)addressTextField:(id)a3 didEndEditing:(id)a4;
- (void)addressTextField:(id)a3 textDidChange:(id)a4;
- (void)assignErrorToField:(id)a3;
- (void)cancel;
- (void)completer:(id)a3 didFailWithError:(id)a4;
- (void)completerDidUpdateResults:(id)a3;
- (void)countryPicker:(id)a3 didPickCountryCode:(id)a4;
- (void)donePressed;
- (void)recomputeEditingFields;
- (void)setContactFormatValidator:(id)a3;
- (void)setReadOnly:(BOOL)a3;
- (void)textDidChange:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PKAddressEditorViewController

- (PKAddressEditorViewController)initWithContact:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKAddressEditorViewController *)self initWithStyle:0];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 givenName];
      originalGivenName = v7->_originalGivenName;
      v7->_originalGivenName = v8;

      v10 = [v6 familyName];
      originalFamilyName = v7->_originalFamilyName;
      v7->_originalFamilyName = v10;

      v12 = [(NSString *)v7->_originalGivenName copy];
      givenName = v7->_givenName;
      v7->_givenName = v12;

      v14 = [(NSString *)v7->_originalFamilyName copy];
      familyName = v7->_familyName;
      v7->_familyName = v14;

      v16 = [v6 nameComponents];
      v17 = [v16 phoneticRepresentation];
      v18 = [v17 givenName];
      originalPhoneticGivenName = v7->_originalPhoneticGivenName;
      v7->_originalPhoneticGivenName = v18;

      v20 = [v6 nameComponents];
      v21 = [v20 phoneticRepresentation];
      v22 = [v21 familyName];
      originalPhoneticFamilyName = v7->_originalPhoneticFamilyName;
      v7->_originalPhoneticFamilyName = v22;

      v24 = [(NSString *)v7->_originalPhoneticGivenName copy];
      phoneticGivenName = v7->_phoneticGivenName;
      v7->_phoneticGivenName = v24;

      v26 = [(NSString *)v7->_originalPhoneticFamilyName copy];
      phoneticFamilyName = v7->_phoneticFamilyName;
      v7->_phoneticFamilyName = v26;

      v28 = MEMORY[0x1E695CD80];
      v29 = objc_alloc_init(MEMORY[0x1E695CD58]);
      v7->_displayGivenNameFirst = [v28 nameOrderForContact:v29] == 1;
    }

    v30 = [v6 postalAddresses];
    v31 = [v30 count];

    if (v31)
    {
      v32 = [v6 postalAddresses];
      v33 = [v32 firstObject];

      v34 = [v6 postalAddresses];
      v35 = [v34 firstObject];
      v36 = [v35 value];
      v37 = [v36 mutableCopy];
      originalAddress = v7->_originalAddress;
      v7->_originalAddress = v37;

      v39 = [v33 value];
      v40 = [v39 mutableCopy];
      inputAddress = v7->_inputAddress;
      v7->_inputAddress = v40;

      v42 = [v33 label];
      inputLabel = v7->_inputLabel;
      v7->_inputLabel = v42;
    }

    else
    {
      v44 = objc_alloc_init(MEMORY[0x1E695CF30]);
      v45 = v7->_inputAddress;
      v7->_inputAddress = v44;
    }

    if (![(NSString *)v7->_inputLabel length])
    {
      objc_storeStrong(&v7->_inputLabel, *MEMORY[0x1E695CB60]);
    }

    v46 = [MEMORY[0x1E695DF58] currentLocale];
    v47 = [(CNMutablePostalAddress *)v7->_inputAddress ISOCountryCode];
    v48 = [v47 length];

    if (v48 == 2)
    {
      [(CNMutablePostalAddress *)v7->_inputAddress ISOCountryCode];
    }

    else
    {
      PKCurrentRegion();
    }
    v49 = ;
    v50 = [v46 displayNameForKey:*MEMORY[0x1E695D978] value:v49];
    v51 = v7->_originalAddress;
    if (v51)
    {
      v52 = [(CNMutablePostalAddress *)v51 country];
      originalCountry = v7->_originalCountry;
      v7->_originalCountry = v52;

      v54 = v7->_originalAddress;
      v55 = [v50 copy];
      [(CNMutablePostalAddress *)v54 setCountry:v55];

      v56 = v7->_originalAddress;
      v57 = [v49 copy];
      [(CNMutablePostalAddress *)v56 setISOCountryCode:v57];
    }

    [(CNMutablePostalAddress *)v7->_inputAddress setCountry:v50];
    [(CNMutablePostalAddress *)v7->_inputAddress setISOCountryCode:v49];
    v58 = objc_alloc_init(MEMORY[0x1E696F250]);
    searchCompleter = v7->_searchCompleter;
    v7->_searchCompleter = v58;

    [(MKLocalSearchCompleter *)v7->_searchCompleter setDelegate:v7];
    [(MKLocalSearchCompleter *)v7->_searchCompleter setResultTypes:2];
    v60 = [(NSString *)v7->_givenName length];
    v61 = 1;
    if (!v60)
    {
      v61 = [(NSString *)v7->_familyName length]!= 0;
    }

    v7->_preselectedNameField = v61;
    highlightedFieldKeys = v7->_highlightedFieldKeys;
    v63 = MEMORY[0x1E695E0F0];
    v7->_highlightedFieldKeys = MEMORY[0x1E695E0F0];

    requiredFieldKeys = v7->_requiredFieldKeys;
    v7->_requiredFieldKeys = v63;

    v7->_style = a4;
    v7->_countryIsEditable = 1;
    v7->_isEditingBlankField = 0;
    v65 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v7 action:sel_donePressed];
    [v65 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    v66 = [(PKAddressEditorViewController *)v7 navigationItem];
    [v66 setRightBarButtonItem:v65];

    [(PKAddressEditorViewController *)v7 recomputeEditingFields];
  }

  return v7;
}

- (PKAddressEditorViewController)initWithContact:(id)a3 requiredKeys:(id)a4 highlightedKeys:(id)a5 errors:(id)a6 style:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PKAddressEditorViewController *)self initWithContact:a3 style:a7];
  if (v15)
  {
    v16 = [v13 copy];
    highlightedFieldKeys = v15->_highlightedFieldKeys;
    v15->_highlightedFieldKeys = v16;

    v18 = [v12 copy];
    requiredFieldKeys = v15->_requiredFieldKeys;
    v15->_requiredFieldKeys = v18;

    v15->_displayPhoneticName = [(NSArray *)v15->_requiredFieldKeys containsObject:*MEMORY[0x1E69BB7D0]];
    v20 = [v14 copy];
    errors = v15->_errors;
    v15->_errors = v20;

    [(PKAddressEditorViewController *)v15 recomputeEditingFields];
  }

  return v15;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKAddressEditorViewController;
  [(PKAddressEditorViewController *)&v5 viewDidLoad];
  v3 = [(PKAddressEditorViewController *)self tableView];
  [v3 setContentInsetAdjustmentBehavior:0];
  [v3 setKeyboardDismissMode:1];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setEstimatedRowHeight:44.0];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9418]];
  [(PKAddressEditorViewController *)self _validateAddressRequirements];
}

- (void)willMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKAddressEditorViewController;
  [(PKAddressEditorViewController *)&v9 willMoveToParentViewController:a3];
  v4 = [(PKAddressEditorViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    v8 = [(PKAddressEditorViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v7 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKAddressEditorViewController;
  [(PKAddressEditorViewController *)&v7 viewWillAppear:a3];
  v4 = [(PKAddressEditorViewController *)self tableView];
  [v4 beginUpdates];

  v5 = [(PKAddressEditorViewController *)self tableView];
  [v5 endUpdates];

  v6 = [(PKAddressEditorViewController *)self tableView];
  [v6 contentSize];
  [(PKAddressEditorViewController *)self setPreferredContentSize:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKAddressEditorViewController;
  [(PKAddressEditorViewController *)&v6 viewDidAppear:a3];
  if (self->_presentedCountrySelector)
  {
    self->_presentedCountrySelector = 0;
    previouslySelectedField = self->_previouslySelectedField;
    if (previouslySelectedField)
    {
      v5 = previouslySelectedField;
    }

    else
    {
      v5 = self->_firstTextFieldForName;
      if (!v5)
      {
        return;
      }
    }

    [(PKAddressTextField *)v5 becomeFirstResponder];
    [(PKAddressTextField *)v5 resignFirstResponder];
  }

  else if (!self->_preselectedNameField && !self->_readOnly)
  {
    [(PKAddressTextField *)self->_firstTextFieldForName becomeFirstResponder];
    self->_preselectedNameField = 1;
  }
}

- (void)donePressed
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_requirementsMet)
  {
    v3 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:self->_inputLabel value:self->_inputAddress];
    v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    if ([(NSString *)self->_givenName length])
    {
      givenName = self->_givenName;
    }

    else
    {
      givenName = 0;
    }

    [v4 setGivenName:givenName];
    if ([(NSString *)self->_familyName length])
    {
      familyName = self->_familyName;
    }

    else
    {
      familyName = 0;
    }

    [v4 setFamilyName:familyName];
    if ([(NSString *)self->_phoneticGivenName length]|| [(NSString *)self->_phoneticFamilyName length])
    {
      v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      if ([(NSString *)self->_phoneticGivenName length])
      {
        phoneticGivenName = self->_phoneticGivenName;
      }

      else
      {
        phoneticGivenName = 0;
      }

      [v7 setGivenName:phoneticGivenName];
      if ([(NSString *)self->_phoneticFamilyName length])
      {
        phoneticFamilyName = self->_phoneticFamilyName;
      }

      else
      {
        phoneticFamilyName = 0;
      }

      [v7 setFamilyName:phoneticFamilyName];
    }

    else
    {
      v7 = 0;
    }

    [v4 setPhoneticRepresentation:v7];
    v10 = MEMORY[0x1E695CD58];
    v14[0] = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = [v10 pkContactWithNameComponents:v4 postalAddresses:v11 emailAddresses:0 phoneNumbers:0];

    v13 = [(PKAddressEditorViewController *)self delegate];
    [v13 addressEditorViewController:self selectedContact:v12];
  }
}

- (void)cancel
{
  v3 = [(PKAddressEditorViewController *)self delegate];
  [v3 addressEditorViewControllerDidCancel:self];
}

- (void)recomputeEditingFields
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CF68];
  v4 = [(CNMutablePostalAddress *)self->_inputAddress ISOCountryCode];
  v5 = [v4 lowercaseString];
  v6 = [v3 specificationForCountry:v5];
  addressFormatter = self->_addressFormatter;
  self->_addressFormatter = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *MEMORY[0x1E69BB7C0];
  if (![(NSArray *)self->_requiredFieldKeys containsObject:*MEMORY[0x1E69BB7C0]]&& !self->_displayPhoneticName)
  {
    goto LABEL_27;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69B9318]);
  v11 = objc_alloc_init(MEMORY[0x1E69B9318]);
  if (!self->_displayPhoneticName)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v12 = objc_alloc_init(MEMORY[0x1E69B9318]);
  if (!self->_displayPhoneticName)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = objc_alloc_init(MEMORY[0x1E69B9318]);
LABEL_8:
  [v10 setKey:v9];
  [v10 setIndex:{-[PKAddressEditorViewController _fieldIndexForNameComponent:](self, "_fieldIndexForNameComponent:", 0)}];
  [(PKAddressEditorViewController *)self assignErrorToField:v10];
  [v11 setKey:v9];
  [v11 setIndex:{-[PKAddressEditorViewController _fieldIndexForNameComponent:](self, "_fieldIndexForNameComponent:", 1)}];
  [(PKAddressEditorViewController *)self assignErrorToField:v11];
  if (self->_displayPhoneticName)
  {
    v14 = *MEMORY[0x1E69BB7D0];
    [v12 setKey:*MEMORY[0x1E69BB7D0]];
    [v12 setIndex:{-[PKAddressEditorViewController _fieldIndexForNameComponent:](self, "_fieldIndexForNameComponent:", 2)}];
    [(PKAddressEditorViewController *)self assignErrorToField:v12];
    [v13 setKey:v14];
    [v13 setIndex:{-[PKAddressEditorViewController _fieldIndexForNameComponent:](self, "_fieldIndexForNameComponent:", 3)}];
    [(PKAddressEditorViewController *)self assignErrorToField:v13];
  }

  if (self->_displayGivenNameFirst)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  [v8 safelyAddObject:v15];
  if (self->_displayPhoneticName)
  {
    if (self->_displayGivenNameFirst)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    [v8 safelyAddObject:v16];
  }

  if (self->_displayGivenNameFirst)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  [v8 safelyAddObject:v17];
  if (self->_displayPhoneticName)
  {
    if (self->_displayGivenNameFirst)
    {
      v18 = v13;
    }

    else
    {
      v18 = v12;
    }

    [v8 safelyAddObject:v18];
  }

LABEL_27:
  v43 = v8;
  v19 = objc_alloc_init(MEMORY[0x1E695CF30]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(CNPostalAddressFormattingSpecification *)self->_addressFormatter editingFieldArrangement];
  v39 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v39)
  {
    v38 = *v49;
    v20 = *MEMORY[0x1E695CC30];
    v21 = *MEMORY[0x1E695CC08];
    v42 = *MEMORY[0x1E695CC10];
    do
    {
      v22 = 0;
      do
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v22;
        v23 = *(*(&v48 + 1) + 8 * v22);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v41 = v23;
        v24 = [v41 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v45;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v41);
              }

              v28 = *(*(&v44 + 1) + 8 * i);
              v29 = objc_alloc_init(MEMORY[0x1E69B9318]);
              [v29 setKey:v28];
              [v29 setIndex:0];
              [v43 addObject:v29];
              [(PKAddressEditorViewController *)self assignErrorToField:v29];
              if ([v28 isEqualToString:v20])
              {
                v30 = objc_alloc_init(MEMORY[0x1E69B9318]);
                [v30 setKey:v20];
                [v30 setIndex:1];
                [v43 addObject:v30];
                [(PKAddressEditorViewController *)self assignErrorToField:v30];
              }

              if (([v28 isEqualToString:v21] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", v42))
              {
                v31 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:v21];
                [(CNMutablePostalAddress *)v19 setValue:v31 forKey:v21];

                v28 = v42;
              }

              v32 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:v28];
              [(CNMutablePostalAddress *)v19 setValue:v32 forKey:v28];
            }

            v25 = [v41 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v25);
        }

        v22 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v39);
  }

  inputAddress = self->_inputAddress;
  self->_inputAddress = v19;
  v34 = v19;

  v35 = [v43 copy];
  editingFields = self->_editingFields;
  self->_editingFields = v35;
}

- (void)assignErrorToField:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 key];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v36 = self;
  obj = self->_errors;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = v6;
  v8 = *v46;
  v9 = *MEMORY[0x1E69BC090];
  v41 = *MEMORY[0x1E69BC0A0];
  v39 = *MEMORY[0x1E69BC088];
  v40 = *MEMORY[0x1E69BC080];
  v10 = *MEMORY[0x1E695CC10];
  v37 = v4;
  v38 = *MEMORY[0x1E695CC08];
  v43 = v5;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v45 + 1) + 8 * i);
      v13 = [v12 domain];
      if (![v13 isEqualToString:v9])
      {
        goto LABEL_18;
      }

      if ([v12 code] == 1)
      {

LABEL_11:
        v16 = [v12 userInfo];
        v13 = [v16 objectForKey:v41];

        v17 = [v12 userInfo];
        v18 = [v17 objectForKey:v40];

        v19 = [v12 userInfo];
        v20 = [v19 PKBoolForKey:v39];

        if ([v13 isEqualToString:v10])
        {
          v21 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Error for ISO Country Code was supplied, displaying as Country", buf, 2u);
          }

          v22 = v38;
          v13 = v22;
        }

        v5 = v43;
        if ([v13 isEqualToString:v43] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", v43))
        {
          v4 = v37;
          [v37 setError:v12];
          v23 = *MEMORY[0x1E69BB7C0];
          if (([v43 isEqualToString:*MEMORY[0x1E69BB7C0]] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", *MEMORY[0x1E69BB7D0]))
          {
            v24 = -[PKAddressEditorViewController _nameComponentForFieldIndex:](v36, "_nameComponentForFieldIndex:", [v37 index]);
            if ([v43 isEqualToString:v23])
            {
              if (v24)
              {
                if (v24 == 1)
                {
                  v25 = &OBJC_IVAR___PKAddressEditorViewController__originalFamilyName;
                  goto LABEL_40;
                }

LABEL_32:
                v26 = 0;
LABEL_33:
                v5 = v43;
LABEL_41:
                [v4 setInvalidText:v26];
LABEL_42:

                [v4 setFormatIsInvalid:v20];
                goto LABEL_43;
              }

              v25 = &OBJC_IVAR___PKAddressEditorViewController__originalGivenName;
            }

            else
            {
              if (![v43 isEqualToString:*MEMORY[0x1E69BB7D0]])
              {
                goto LABEL_32;
              }

              if (v24 == 2)
              {
                v25 = &OBJC_IVAR___PKAddressEditorViewController__originalPhoneticGivenName;
              }

              else
              {
                if (v24 != 3)
                {
                  goto LABEL_32;
                }

                v25 = &OBJC_IVAR___PKAddressEditorViewController__originalPhoneticFamilyName;
              }
            }

LABEL_40:
            v5 = v43;
            v26 = *(&v36->super.super.super.super.isa + *v25);
            goto LABEL_41;
          }

          originalAddress = v36->_originalAddress;
          v28 = [v37 key];
          v26 = [(CNMutablePostalAddress *)originalAddress valueForKey:v28];

          if (!v26 || ![v26 length] || (objc_msgSend(v26, "isEqualToString:", @"\n") & 1) != 0)
          {
            [v37 setInvalidText:&stru_1F3BD7330];
            v5 = v43;
            goto LABEL_42;
          }

          v29 = [v37 key];
          v30 = [v29 isEqualToString:*MEMORY[0x1E695CC30]];

          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v32 = [v26 componentsSeparatedByCharactersInSet:v31];

          if (![v37 index] && objc_msgSend(v32, "count"))
          {
            v35 = [v32 firstObject];
            goto LABEL_53;
          }

          if ([v37 index] == 1 && objc_msgSend(v32, "count") >= 2)
          {
            v33 = [v32 firstObject];
            v34 = [v32 pk_arrayByRemovingObject:v33];

            v35 = [v34 componentsJoinedByString:@"\n"];
            v32 = v34;
            v4 = v37;
LABEL_53:

            v5 = v43;
            if ([v4 index] == 1 && (!v35 || !objc_msgSend(v35, "length")))
            {
LABEL_56:
              v20 = 0;
            }
          }

          else
          {

            v35 = 0;
            v5 = v43;
            if ([v37 index] == 1)
            {
              goto LABEL_56;
            }
          }

          v26 = v35;
          goto LABEL_41;
        }

LABEL_18:
        continue;
      }

      v14 = [v12 code];

      v15 = v14 == 2;
      v5 = v43;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v7 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    v4 = v37;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_43:
}

- (void)setContactFormatValidator:(id)a3
{
  v5 = a3;
  if (self->_contactFormatValidator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contactFormatValidator, a3);
    v5 = v6;
  }
}

- (void)_updateWithPostalAddress:(id)a3
{
  objc_storeStrong(&self->_inputAddress, a3);
  v5 = a3;
  v6 = [(PKAddressEditorViewController *)self tableView];
  [v6 beginUpdates];

  v7 = [(PKAddressEditorViewController *)self tableView];
  v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

  [v7 reloadSections:v8 withRowAnimation:100];
  v9 = [(PKAddressEditorViewController *)self tableView];
  [v9 endUpdates];
}

- (void)_presentCountryPickerIfEditable
{
  if ([(PKAddressEditorViewController *)self _canChangeCountry]&& !self->_presentedCountrySelector)
  {
    self->_presentedCountrySelector = 1;
    v4 = [[PKCountryPickerViewController alloc] initWithStyle:self->_style];
    [(PKCountryPickerViewController *)v4 setDelegate:self];
    v3 = [(PKAddressEditorViewController *)self navigationController];
    [v3 pushViewController:v4 animated:1];
  }
}

- (void)_presentPickerForAddressTextField:(id)a3
{
  v4 = a3;
  v5 = [v4 contactFieldConfiguration];
  if ([v5 type] == 2)
  {
    v6 = v5;
    v7 = [v4 text];
    v8 = [v6 pickerItems];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__69;
    v25 = __Block_byref_object_dispose__69;
    v26 = 0;
    if (v7)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67__PKAddressEditorViewController__presentPickerForAddressTextField___block_invoke;
      v18[3] = &unk_1E8025AC0;
      v19 = v7;
      v20 = &v21;
      [v8 enumerateObjectsUsingBlock:v18];
    }

    v9 = [v6 pickerItems];
    v10 = v22[5];
    v11 = [v4 isInvalid];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKAddressEditorViewController__presentPickerForAddressTextField___block_invoke_2;
    v15[3] = &unk_1E8025AE8;
    v16 = v4;
    v17 = self;
    v12 = [_TtC9PassKitUI31PKAddressFieldPickerViewHosting loadViewControllerWithAllowedValues:v9 selectedValue:v10 isValid:v11 ^ 1u onCommit:v15];

    v13 = [(PKAddressEditorViewController *)self navigationController];
    [v13 pushViewController:v12 animated:1];

    _Block_object_dispose(&v21, 8);
  }
}

void __67__PKAddressEditorViewController__presentPickerForAddressTextField___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isValueAccepted:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __67__PKAddressEditorViewController__presentPickerForAddressTextField___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = [a2 submissionValue];
  [*(a1 + 32) setText:v9];
  v3 = *(*(a1 + 40) + 1096);
  v4 = [*(a1 + 32) addressField];
  v5 = [v4 key];
  [v3 setValue:v9 forKey:v5];

  [*(a1 + 40) addressTextField:*(a1 + 32) textDidChange:v9];
  v6 = [*(a1 + 40) tableView];
  [v6 reloadData];

  v7 = [*(a1 + 40) navigationController];
  v8 = [v7 popViewControllerAnimated:1];
}

- (unint64_t)_nameComponentForFieldIndex:(unint64_t)a3
{
  result = 0;
  displayPhoneticName = self->_displayPhoneticName;
  displayGivenNameFirst = self->_displayGivenNameFirst;
  v7 = !displayGivenNameFirst && displayPhoneticName + 1;
  v8 = displayGivenNameFirst && displayPhoneticName + 1;
  if (v7 != a3)
  {
    if (v8 == a3)
    {
      result = 1;
    }

    else
    {
      result = 4;
    }

    if (v8 != a3 && displayPhoneticName)
    {
      if (v7 + 1 == a3)
      {
        return 2;
      }

      else if (v8 + 1 == a3)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

- (int64_t)_fieldIndexForNameComponent:(unint64_t)a3
{
  displayPhoneticName = self->_displayPhoneticName;
  v4 = !self->_displayGivenNameFirst && displayPhoneticName + 1;
  v5 = self->_displayGivenNameFirst && displayPhoneticName + 1;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 2)
  {
    v6 = v4 + 1;
  }

  if (a3 == 3)
  {
    v6 = v5 + 1;
  }

  if (self->_displayPhoneticName)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 == 1)
  {
    v7 = v5;
  }

  if (a3)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (void)_validateAddressRequirements
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v3 = self->_requiredFieldKeys;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v55 objects:v61 count:16];
  v5 = MEMORY[0x1E69BB7C0];
  v6 = MEMORY[0x1E69BB7D0];
  if (!v4)
  {
    v16 = 1;
    goto LABEL_21;
  }

  v7 = v4;
  v8 = *v56;
  v9 = *MEMORY[0x1E69BB7C0];
  v10 = *MEMORY[0x1E69BB7D0];
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v56 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v55 + 1) + 8 * i);
      if ([v12 isEqualToString:v9])
      {
        if ([(NSString *)self->_givenName length])
        {
          continue;
        }

        v13 = 1072;
LABEL_12:
        if (![*(&self->super.super.super.super.isa + v13) length])
        {
          goto LABEL_18;
        }

        continue;
      }

      if ([v12 isEqualToString:v10])
      {
        if ([(NSString *)self->_phoneticGivenName length])
        {
          continue;
        }

        v13 = 1088;
        goto LABEL_12;
      }

      v14 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:v12];
      v15 = [v14 length];

      if (!v15)
      {
LABEL_18:
        v16 = 0;
        goto LABEL_19;
      }
    }

    v7 = [(NSArray *)v3 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v16 = 1;
LABEL_19:
  v6 = MEMORY[0x1E69BB7D0];
  v5 = MEMORY[0x1E69BB7C0];
LABEL_21:

  v17 = 1096;
  v18 = [(CNMutablePostalAddress *)self->_inputAddress ISOCountryCode];
  v19 = PKContactFormatRequiredPostalAddressKeysForCountryCode();

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:*(*(&v51 + 1) + 8 * j)];
        v26 = [v25 length];

        if (!v26)
        {
          v16 = 0;
          goto LABEL_31;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

    v16 = 1;
  }

LABEL_31:
  v43 = v20;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = self->_editingFields;
  v46 = [(NSArray *)v27 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v46)
  {
    goto LABEL_52;
  }

  v28 = *v48;
  v29 = *v5;
  v44 = *v5;
  v45 = *v6;
  while (2)
  {
    v30 = 0;
    while (2)
    {
      if (*v48 != v28)
      {
        objc_enumerationMutation(v27);
      }

      if ((v16 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_52;
      }

      v31 = *(*(&v47 + 1) + 8 * v30);
      v32 = [v31 key];
      v33 = [v31 error];

      if (!v33)
      {
        goto LABEL_47;
      }

      if ([v32 isEqualToString:v29])
      {
        if ([(NSString *)self->_originalGivenName isEqualToString:self->_givenName])
        {
          v34 = &OBJC_IVAR___PKAddressEditorViewController__originalFamilyName;
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      if ([v32 isEqualToString:v45])
      {
        if ([(NSString *)self->_originalPhoneticGivenName isEqualToString:self->_phoneticGivenName])
        {
          v34 = &OBJC_IVAR___PKAddressEditorViewController__originalPhoneticFamilyName;
LABEL_44:
          if ([*(&self->super.super.super.super.isa + *v34) isEqualToString:*(&self->super.super.super.super.isa + v34[2])])
          {
            goto LABEL_45;
          }
        }

LABEL_47:
        v16 = [v31 formatIsInvalid] ^ 1;
      }

      else
      {
        v35 = [*(&self->super.super.super.super.isa + v17) valueForKey:v32];
        [v31 invalidText];
        v36 = v28;
        v37 = v27;
        v39 = v38 = v17;
        v40 = [v35 isEqualToString:v39];

        v17 = v38;
        v27 = v37;
        v28 = v36;
        v29 = v44;

        if ((v40 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        v16 = 0;
      }

      if (v46 != ++v30)
      {
        continue;
      }

      break;
    }

    v46 = [(NSArray *)v27 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_52:

  self->_requirementsMet = v16;
  v41 = [(PKAddressEditorViewController *)self navigationItem];
  v42 = [v41 rightBarButtonItem];
  [v42 setEnabled:v16];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"field"];
  if (!v7)
  {
    v7 = [[PKAddressEditorTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"field"];
  }

  v8 = [(PKAddressEditorTableViewCell *)v7 stackView];
  v9 = -[NSArray objectAtIndex:](self->_editingFields, "objectAtIndex:", [v6 row]);
  v10 = [v9 key];
  v11 = [v6 row];

  v12 = [(CNMutablePostalAddress *)self->_inputAddress ISOCountryCode];
  v105 = *MEMORY[0x1E69BB7C0];
  v103 = v12;
  if ([v10 isEqualToString:?])
  {
    if (v11 != [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:0])
    {
      if (v11 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:1])
      {
        v13 = [(PKContactFormatValidator *)self->_contactFormatValidator contactFieldConfigurationForFamilyNameForCountryCode:v12];
LABEL_10:
        v14 = v13;
LABEL_15:
        v107 = 0;
        goto LABEL_16;
      }

      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if ([v10 isEqualToString:*MEMORY[0x1E69BB7D0]])
  {
    if (v11 != [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:2])
    {
      if (v11 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:3])
      {
        v13 = [(PKContactFormatValidator *)self->_contactFormatValidator contactFieldConfigurationForPhoneticFamilyNameForCountryCode:v12];
        goto LABEL_10;
      }

LABEL_38:
      v107 = 0;
      v14 = 0;
      goto LABEL_16;
    }

LABEL_9:
    v13 = [(PKContactFormatValidator *)self->_contactFormatValidator contactFieldConfigurationForGivenNameForCountryCode:v12];
    goto LABEL_10;
  }

  v14 = [(PKContactFormatValidator *)self->_contactFormatValidator contactFieldConfigurationForPostalField:v10 forCountryCode:v12];
  v15 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:v10];
  v16 = v15;
  if (!v15 || (v107 = v15, v17 = [v15 length], v16 = v107, !v17) || (v18 = objc_msgSend(v107, "isEqualToString:", @"\n"), v16 = v107, (v18 & 1) != 0))
  {

    goto LABEL_15;
  }

  if ([v10 isEqualToString:*MEMORY[0x1E695CC30]])
  {
    v43 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v44 = [v107 componentsSeparatedByCharactersInSet:v43];

    if ([v9 index] || !objc_msgSend(v44, "count"))
    {
      if ([v9 index] == 1 && objc_msgSend(v44, "count") >= 2)
      {
        v45 = [v44 firstObject];
        [v44 pk_arrayByRemovingObject:v45];
        v47 = v46 = v14;

        v48 = [v47 componentsJoinedByString:@"\n"];
        v44 = v47;
        v14 = v46;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = [v44 firstObject];
    }

    v107 = v48;
  }

LABEL_16:
  v19 = [v9 key];
  v100 = *MEMORY[0x1E695CC08];
  v104 = v10;
  if ([v19 isEqualToString:?])
  {
    v101 = [(PKAddressEditorViewController *)self _canChangeCountry];
  }

  else
  {
    v101 = 0;
  }

  v106 = [v14 type];
  v20 = [PKAddressTextField alloc];
  v21 = [(PKAddressTextField *)v20 initWithFrame:self->_style style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PKAddressTextField *)v21 setDelegate:self];
  [(PKAddressTextField *)v21 setAddressDelegate:self];
  [(PKAddressTextField *)v21 setAutocapitalizationType:1];
  [(PKAddressTextField *)v21 setAddressField:v9];
  [(PKAddressTextField *)v21 setContactFieldConfiguration:v14];
  [(PKAddressTextField *)v21 setEnabled:!self->_readOnly];
  v22 = [MEMORY[0x1E69DC888] clearColor];
  [(PKAddressTextField *)v21 setBackgroundColor:v22];

  [(PKAddressTextField *)v21 setAutocorrectionType:1];
  [(PKAddressTextField *)v21 addTarget:self action:sel_textDidChange_ forControlEvents:0x20000];
  v23 = [v9 key];
  v24 = [v23 isEqualToString:v105];

  v102 = v14;
  if (v24)
  {
    if (v11 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:0])
    {
      v25 = &OBJC_IVAR___PKAddressEditorViewController__givenName;
      v26 = &OBJC_IVAR___PKAddressEditorViewController__givenNameTextField;
      v27 = MEMORY[0x1E69DE4C8];
      v28 = @"IN_APP_PAYMENT_OPTIONS_ENTER_NEW_GIVENNAME_TITLE";
    }

    else
    {
      if (v11 != [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:1])
      {
        goto LABEL_28;
      }

      v25 = &OBJC_IVAR___PKAddressEditorViewController__familyName;
      v26 = &OBJC_IVAR___PKAddressEditorViewController__familyNameTextField;
      v27 = MEMORY[0x1E69DE4B0];
      v28 = @"IN_APP_PAYMENT_OPTIONS_ENTER_NEW_FAMILYNAME_TITLE";
    }

    v33 = PKLocalizedPaymentString(&v28->isa);
    [(PKAddressTextField *)v21 setPlaceholder:v33];

    [(PKAddressTextField *)v21 setTextContentType:*v27];
    [(PKAddressTextField *)v21 setText:*(&self->super.super.super.super.isa + *v25)];
    objc_storeWeak((&self->super.super.super.super.isa + *v26), v21);
LABEL_28:
    if (!v11)
    {
      objc_storeStrong(&self->_firstTextFieldForName, v21);
    }

    goto LABEL_71;
  }

  v29 = [v9 key];
  v30 = [v29 isEqualToString:*MEMORY[0x1E69BB7D0]];

  if (v30)
  {
    if (v11 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:2])
    {
      v31 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_17.isa);
      [(PKAddressTextField *)v21 setPlaceholder:v31];

      v32 = &OBJC_IVAR___PKAddressEditorViewController__phoneticGivenName;
    }

    else
    {
      if (v11 != [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:3])
      {
        goto LABEL_71;
      }

      v39 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_18.isa);
      [(PKAddressTextField *)v21 setPlaceholder:v39];

      v32 = &OBJC_IVAR___PKAddressEditorViewController__phoneticFamilyName;
    }

    [(PKAddressTextField *)v21 setText:*(&self->super.super.super.super.isa + *v32)];
    objc_storeWeak((&self->super.super.super.super.isa + v32[26]), v21);
  }

  else
  {
    addressFormatter = self->_addressFormatter;
    v35 = [v9 key];
    v36 = [(CNPostalAddressFormattingSpecification *)addressFormatter localizedPlaceholderForKey:v35];
    [(PKAddressTextField *)v21 setPlaceholder:v36];

    [(PKAddressTextField *)v21 setText:v107];
    v37 = v106 == 2 || v101;
    if (v37 == 1)
    {
      if (self->_style == 2)
      {
        v38 = PKBridgeTableViewCellAccessoryColor();
      }

      else
      {
        v38 = 0;
      }

      v40 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v41 = PKUISmallChevronImage();
      v42 = [v40 initWithImage:v41];

      if (v38)
      {
        [v42 setTintColor:v38];
      }

      else
      {
        v49 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [v42 setTintColor:v49];
      }

      [(PKAddressTextField *)v21 setRightViewMode:3];
      [(PKAddressTextField *)v21 setRightView:v42];
      if (v101)
      {
        objc_storeWeak(&self->_countryTextField, v21);
      }
    }

    v50 = [v9 key];
    v51 = [v50 isEqualToString:*MEMORY[0x1E695CC30]];

    if (v51)
    {
      if ([v9 index])
      {
        [(PKAddressTextField *)v21 setTextContentType:*MEMORY[0x1E69DE548]];
        objc_storeWeak(&self->_street2TextField, v21);
        v52 = PKLocalizedPaymentString(&cfstr_StreetAddressS.isa);
        [(PKAddressTextField *)v21 setPlaceholder:v52];
      }

      else
      {
        [(PKAddressTextField *)v21 setTextContentType:*MEMORY[0x1E69DE540]];
        objc_storeWeak(&self->_street1TextField, v21);
      }
    }

    highlightedFieldKeys = self->_highlightedFieldKeys;
    v54 = [v9 key];
    if ([(NSArray *)highlightedFieldKeys containsObject:v54])
    {
      v55 = [v9 index];

      if (!v55)
      {
        v108 = *MEMORY[0x1E69DB650];
        v56 = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
        v57 = [v56 colorWithAlphaComponent:0.7];
        v109[0] = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];

        v59 = objc_alloc(MEMORY[0x1E696AAB0]);
        v60 = [(PKAddressTextField *)v21 placeholder];
        v61 = [v59 initWithString:v60 attributes:v58];

        [(PKAddressTextField *)v21 setAttributedPlaceholder:v61];
      }
    }

    else
    {
    }

    v62 = [v9 key];
    v63 = [v62 isEqualToString:*MEMORY[0x1E695CC40]];

    if (v63)
    {
      v64 = MEMORY[0x1E69DE550];
    }

    else
    {
      v65 = [v9 key];
      v66 = [v65 isEqualToString:*MEMORY[0x1E695CC00]];

      if (v66)
      {
        v64 = MEMORY[0x1E69DE3F8];
      }

      else
      {
        v67 = [v9 key];
        v68 = [v67 isEqualToString:*MEMORY[0x1E695CC28]];

        if (v68)
        {
          v64 = MEMORY[0x1E69DE408];
        }

        else
        {
          v69 = [v9 key];
          v70 = [v69 isEqualToString:*MEMORY[0x1E695CC18]];

          if (!v70)
          {
            goto LABEL_71;
          }

          v64 = MEMORY[0x1E69DE530];
        }
      }
    }

    [(PKAddressTextField *)v21 setTextContentType:*v64];
  }

LABEL_71:
  v71 = [v9 invalidText];
  if (!v71)
  {
    goto LABEL_78;
  }

  v72 = v71;
  v73 = [v9 invalidText];
  v74 = [(PKAddressTextField *)v21 text];
  if (([v73 isEqualToString:v74] & 1) == 0)
  {
    v78 = [v9 invalidText];
    if ([v78 length])
    {
    }

    else
    {
      v99 = v8;
      v91 = [(PKAddressTextField *)v21 text];
      if (!v91)
      {

        goto LABEL_73;
      }

      v92 = v91;
      v93 = [(PKAddressTextField *)v21 text];
      v98 = [v93 length];

      v8 = v99;
      if (!v98)
      {
        goto LABEL_74;
      }
    }

LABEL_78:
    [(PKAddressTextField *)v21 setIsInvalid:0 showErrorGlyph:0];
    v79 = v106 == 2 || v101;
    if (v79 != 1)
    {
      goto LABEL_99;
    }

    [(PKAddressTextField *)v21 setRightViewMode:3];
    goto LABEL_97;
  }

LABEL_73:

LABEL_74:
  v75 = [v9 index];
  v76 = [v9 key];
  if ([v76 isEqualToString:v105])
  {
    v77 = 1;
  }

  else
  {
    v80 = [v9 key];
    v81 = [v80 isEqualToString:*MEMORY[0x1E69BB7D0]];

    if (v75)
    {
      v77 = v81;
    }

    else
    {
      v77 = 1;
    }
  }

  [(PKAddressTextField *)v21 setIsInvalid:1 showErrorGlyph:v77];
  v82 = [v9 key];
  if ([v82 isEqualToString:v100])
  {
  }

  else
  {
    v83 = [v9 key];
    v84 = [v83 isEqualToString:*MEMORY[0x1E695CC10]];

    if (!v84)
    {
      goto LABEL_97;
    }
  }

  originalCountry = self->_originalCountry;
  if (originalCountry && ([(CNMutablePostalAddress *)self->_inputAddress country], v86 = objc_claimAutoreleasedReturnValue(), v87 = [(NSString *)originalCountry isEqualToString:v86], v86, !v87))
  {
    v88 = v21;
    v89 = 1;
    v90 = v77;
  }

  else
  {
    v88 = v21;
    v89 = 0;
    v90 = 0;
  }

  [(PKAddressTextField *)v88 setIsInvalid:v89 showErrorGlyph:v90];
LABEL_97:
  if (v106 == 2)
  {
    [(PKAddressTextField *)v21 setSecureTextEntry:1];
    [(PKAddressTextField *)v21 setDisplaySecureTextUsingPlainText:1];
  }

LABEL_99:
  [v8 addArrangedSubview:v21];
  if (self->_style == 2)
  {
    v94 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v94, v21);

    v95 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v95, v7);
  }

  v96 = [v9 key];
  [(PKAddressEditorTableViewCell *)v7 setAccessibilityIdentifier:v96];

  return v7;
}

- (void)setReadOnly:(BOOL)a3
{
  self->_readOnly = a3;
  v3 = [(PKAddressEditorViewController *)self tableView];
  [v3 reloadData];
}

- (void)textDidChange:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 text];
    [(PKAddressEditorViewController *)self addressTextField:v5 textDidChange:v4];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_countryTextField);

  if (WeakRetained == v9)
  {
    [v9 resignFirstResponder];
    [(PKAddressEditorViewController *)self _presentCountryPickerIfEditable];
  }

  else
  {
    v6 = [v9 contactFieldConfiguration];
    v7 = [v6 type];

    if (v7 == 2)
    {
      [v9 resignFirstResponder];
      [(PKAddressEditorViewController *)self _presentPickerForAddressTextField:v9];
    }

    else
    {
      objc_storeStrong(&self->_currentlySelectedField, a3);
      v8 = [(PKAddressTextField *)self->_currentlySelectedField text];
      self->_isEditingBlankField = [v8 length] == 0;
    }
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_countryTextField);

  v5 = v11;
  if (WeakRetained != v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 contactFieldConfiguration];
    v8 = [v7 type];

    if (v8 != 2)
    {
      objc_storeStrong(&self->_previouslySelectedField, self->_currentlySelectedField);
      currentlySelectedField = self->_currentlySelectedField;
      self->_currentlySelectedField = 0;

      self->_isEditingBlankField = 0;
      if (v6)
      {
        v10 = [v6 text];
        [(PKAddressEditorViewController *)self addressTextField:v6 didEndEditing:v10];
      }
    }

    v5 = v11;
  }
}

- (void)addressTextField:(id)a3 textDidChange:(id)a4
{
  v23 = a4;
  v6 = a3;
  v7 = [v6 addressField];
  v8 = [v7 key];
  [(PKAddressEditorViewController *)self _updateUniqueAddressField:v7 withNewString:v23];
  if ([v8 isEqualToString:*MEMORY[0x1E695CC30]])
  {
    searchCompleter = self->_searchCompleter;
    v10 = [(CNMutablePostalAddress *)self->_inputAddress street];
    [(MKLocalSearchCompleter *)searchCompleter setQueryFragment:v10];
  }

  v11 = [v7 invalidText];
  v12 = [v11 isEqualToString:v23];

  v13 = [v7 index];
  if (![v8 isEqualToString:*MEMORY[0x1E69BB7C0]])
  {
    if (![v8 isEqualToString:*MEMORY[0x1E69BB7D0]])
    {
      [v6 setIsInvalid:v12 showErrorGlyph:v12];
      goto LABEL_27;
    }

    if (v13 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:2])
    {
      if ((v12 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_25;
      }

      v15 = &OBJC_IVAR___PKAddressEditorViewController__originalPhoneticFamilyName;
    }

    else
    {
      v20 = [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:3];
      v17 = v13 == v20;
      v18 = (v13 != v20) & v12;
      if (!v17 || ((v12 ^ 1) & 1) != 0)
      {
        goto LABEL_25;
      }

      v15 = &OBJC_IVAR___PKAddressEditorViewController__originalPhoneticGivenName;
    }

    v18 = [*(&self->super.super.super.super.isa + *v15) isEqualToString:*(&self->super.super.super.super.isa + v15[2])];
LABEL_25:
    v19 = &OBJC_IVAR___PKAddressEditorViewController__phoneticGivenNameTextField;
    goto LABEL_26;
  }

  if (v13 == [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:0])
  {
    if ((v12 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_18;
    }

    v14 = &OBJC_IVAR___PKAddressEditorViewController__originalFamilyName;
  }

  else
  {
    v16 = [(PKAddressEditorViewController *)self _fieldIndexForNameComponent:1];
    v17 = v13 == v16;
    v18 = (v13 != v16) & v12;
    if (!v17 || ((v12 ^ 1) & 1) != 0)
    {
      goto LABEL_18;
    }

    v14 = &OBJC_IVAR___PKAddressEditorViewController__originalGivenName;
  }

  v18 = [*(&self->super.super.super.super.isa + *v14) isEqualToString:*(&self->super.super.super.super.isa + v14[2])];
LABEL_18:
  v19 = &OBJC_IVAR___PKAddressEditorViewController__givenNameTextField;
LABEL_26:
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.isa + *v19));
  [WeakRetained setIsInvalid:v18 showErrorGlyph:v18];

  v22 = objc_loadWeakRetained((&self->super.super.super.super.isa + v19[1]));
  [v22 setIsInvalid:v18 showErrorGlyph:v18];

LABEL_27:
  [(PKAddressEditorViewController *)self _checkFormatOfAddressTextField:v6];

  [(PKAddressEditorViewController *)self _validateAddressRequirements];
}

- (void)addressTextField:(id)a3 didEndEditing:(id)a4
{
  [(PKAddressEditorViewController *)self _checkFormatOfAddressTextField:a3, a4];

  [(PKAddressEditorViewController *)self _validateAddressRequirements];
}

- (void)_checkFormatOfAddressTextField:(id)a3
{
  v28 = a3;
  v4 = [v28 addressField];
  v5 = [v4 key];
  v6 = [(CNMutablePostalAddress *)self->_inputAddress ISOCountryCode];
  if ([v5 isEqualToString:*MEMORY[0x1E69BB7C0]])
  {
    v7 = -[PKAddressEditorViewController _nameComponentForFieldIndex:](self, "_nameComponentForFieldIndex:", [v4 index]);
    if (v7 == 1)
    {
      contactFormatValidator = self->_contactFormatValidator;
      if (contactFormatValidator)
      {
        v9 = [(PKContactFormatValidator *)contactFormatValidator isFamilyName:self->_familyName validFormatForCountryCode:v6];
        goto LABEL_22;
      }
    }

    else if (!v7)
    {
      v8 = self->_contactFormatValidator;
      if (v8)
      {
        v9 = [(PKContactFormatValidator *)v8 isGivenName:self->_givenName validFormatForCountryCode:v6];
LABEL_22:
        v14 = (v9 ^ 1u);
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E69BB7D0]])
  {
    v10 = -[PKAddressEditorViewController _nameComponentForFieldIndex:](self, "_nameComponentForFieldIndex:", [v4 index]);
    if (v10 == 3)
    {
      v27 = self->_contactFormatValidator;
      if (v27)
      {
        v9 = [(PKContactFormatValidator *)v27 isPhoneticFamilyName:self->_phoneticFamilyName validFormatForCountryCode:v6];
        goto LABEL_22;
      }
    }

    else if (v10 == 2)
    {
      v11 = self->_contactFormatValidator;
      if (v11)
      {
        v9 = [(PKContactFormatValidator *)v11 isPhoneticGivenName:self->_phoneticGivenName validFormatForCountryCode:v6];
        goto LABEL_22;
      }
    }

LABEL_23:
    v14 = 0;
LABEL_24:
    [v4 setFormatIsInvalid:v14];
    if (!self->_isEditingBlankField)
    {
      [v28 setIsInvalid:v14 showErrorGlyph:v14];
    }

    goto LABEL_26;
  }

  v12 = *MEMORY[0x1E695CC30];
  v13 = [v5 isEqualToString:*MEMORY[0x1E695CC30]];
  v14 = self->_contactFormatValidator;
  if (!v13)
  {
    if (v14)
    {
      v26 = [(CNMutablePostalAddress *)self->_inputAddress valueForKey:v5];
      v14 = ([(PKContactFormatValidator *)v14 isPostalAddressFieldEntry:v26 validForPostalFieldKey:v5 forCountryCode:v6]^ 1);
    }

    goto LABEL_24;
  }

  if (v14)
  {
    v15 = [(CNMutablePostalAddress *)self->_inputAddress street];
    v14 = ([(PKContactFormatValidator *)v14 isPostalAddressFieldEntry:v15 validForPostalFieldKey:v12 forCountryCode:v6]^ 1);
  }

  WeakRetained = objc_loadWeakRetained(&self->_street2TextField);
  v17 = [WeakRetained text];
  v18 = [v17 length] != 0;

  v19 = objc_loadWeakRetained(&self->_street1TextField);
  v20 = [v19 addressField];
  [v20 setFormatIsInvalid:v14];

  v21 = objc_loadWeakRetained(&self->_street2TextField);
  v22 = [v21 addressField];
  [v22 setFormatIsInvalid:v18 & v14];

  if (!self->_isEditingBlankField)
  {
    v23 = objc_loadWeakRetained(&self->_street1TextField);
    [v23 setIsInvalid:v14 showErrorGlyph:v14];

    v24 = objc_loadWeakRetained(&self->_street2TextField);
    [v24 setIsInvalid:v18 & v14 showErrorGlyph:v18 & v14];
  }

LABEL_26:
}

- (void)_updateUniqueAddressField:(id)a3 withNewString:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  if ([v8 isEqualToString:*MEMORY[0x1E69BB7C0]])
  {
    v9 = -[PKAddressEditorViewController _nameComponentForFieldIndex:](self, "_nameComponentForFieldIndex:", [v6 index]);
    if (v9 == 1)
    {
      v10 = 1072;
      goto LABEL_15;
    }

    if (!v9)
    {
      v10 = 1064;
LABEL_15:
      objc_storeStrong((&self->super.super.super.super.isa + v10), a4);
    }
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E69BB7D0]])
  {
    v11 = -[PKAddressEditorViewController _nameComponentForFieldIndex:](self, "_nameComponentForFieldIndex:", [v6 index]);
    if (v11 == 3)
    {
      v10 = 1088;
      goto LABEL_15;
    }

    if (v11 == 2)
    {
      v10 = 1080;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = [v8 isEqualToString:*MEMORY[0x1E695CC30]];
    inputAddress = self->_inputAddress;
    if (v12)
    {
      v14 = [(CNMutablePostalAddress *)inputAddress street];
      v15 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v16 = [v14 componentsSeparatedByCharactersInSet:v15];
      v17 = [v16 mutableCopy];

      if ([v6 index] == 1)
      {
        v18 = [v17 count] - 1;
        v21[0] = v7;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
        [v17 replaceObjectsInRange:1 withObjectsFromArray:{v18, v19}];
      }

      else
      {
        [v17 replaceObjectAtIndex:0 withObject:v7];
      }

      v20 = [v17 componentsJoinedByString:@"\n"];
      [(CNMutablePostalAddress *)self->_inputAddress setStreet:v20];
    }

    else
    {
      [(CNMutablePostalAddress *)inputAddress setValue:v7 forKey:v8];
    }
  }
}

- (void)completerDidUpdateResults:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = [(PKAddressTextField *)self->_currentlySelectedField inputDelegate];
  v21 = v4;
  v5 = [v4 results];
  v6 = [v5 pk_objectsPassingTest:&__block_literal_global_251];

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 mapItem];
          v16 = [v15 description];
          *buf = 138412290;
          v27 = v16;
          _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Search completion item map item: %@", buf, 0xCu);
        }

        v17 = MEMORY[0x1E69DD158];
        v18 = [v13 title];
        v19 = [v17 textSuggestionWithInputText:v18];

        [v7 addObject:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  [v20 setSuggestions:v7];
}

BOOL __59__PKAddressEditorViewController_completerDidUpdateResults___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 >= 3)
  {
    *a4 = 1;
  }

  return [a2 _type] == 2;
}

- (void)completer:(id)a3 didFailWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Failed completion", &v9, 2u);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }
}

- (void)countryPicker:(id)a3 didPickCountryCode:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = PKLocalizedStringForCountryCode();

  v8 = 1096;
  [(CNMutablePostalAddress *)self->_inputAddress setCountry:v7];
  [(CNMutablePostalAddress *)self->_inputAddress setISOCountryCode:v5];
  [(PKAddressEditorViewController *)self recomputeEditingFields];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = self;
  obj = self->_editingFields;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    v12 = *MEMORY[0x1E695CC08];
    v13 = *MEMORY[0x1E695CC10];
    v40 = v7;
    v41 = v5;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = v8;
        v16 = *(*(&v50 + 1) + 8 * i);
        v17 = [v16 key];
        if ([v17 isEqualToString:v12])
        {

LABEL_12:
          v45 = [MEMORY[0x1E695DF58] currentLocale];
          [MEMORY[0x1E695DF58] ISOCountryCodes];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v44 = v49 = 0u;
          v20 = [v44 countByEnumeratingWithState:&v46 objects:v54 count:16];
          v21 = v43;
          if (v20)
          {
            v22 = v20;
            v23 = *v47;
            v24 = *MEMORY[0x1E695D978];
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v47 != v23)
                {
                  objc_enumerationMutation(v44);
                }

                v26 = *(*(&v46 + 1) + 8 * j);
                v27 = [v45 displayNameForKey:v24 value:v26];
                v28 = [*(&v21->super.super.super.super.isa + v15) country];
                if ([v28 compare:v27 options:129])
                {
                }

                else
                {
                  v29 = [*(&v21->super.super.super.super.isa + v15) ISOCountryCode];
                  v30 = [v29 compare:v26 options:129];

                  v21 = v43;
                  if (!v30)
                  {
                    [v16 setFormatIsInvalid:0];
                    v31 = [v16 error];
                    v32 = [(PKAddressEditorViewController *)v43 errors];
                    v33 = [v32 pk_arrayByRemovingObject:v31];
                    [(PKAddressEditorViewController *)v43 setErrors:v33];

                    [v16 setError:0];
                    v34 = [*(&v43->super.super.super.super.isa + v15) country];
                    originalCountry = v43->_originalCountry;
                    v43->_originalCountry = v34;

                    goto LABEL_24;
                  }
                }
              }

              v22 = [v44 countByEnumeratingWithState:&v46 objects:v54 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v7 = v40;
          v5 = v41;
          goto LABEL_25;
        }

        v18 = [v16 key];
        v19 = [v18 isEqualToString:v13];

        if (v19)
        {
          goto LABEL_12;
        }

        v8 = v15;
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      v7 = v40;
      v5 = v41;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  [(PKAddressEditorViewController *)v43 _validateAddressRequirements];
  previouslySelectedField = v43->_previouslySelectedField;
  v43->_previouslySelectedField = 0;

  v37 = [(PKAddressEditorViewController *)v43 tableView];
  [v37 reloadData];

  v38 = [(PKAddressEditorViewController *)v43 navigationController];
  v39 = [v38 popViewControllerAnimated:1];
}

- (PKAddressEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKAddressTextField)givenNameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_givenNameTextField);

  return WeakRetained;
}

- (PKAddressTextField)familyNameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_familyNameTextField);

  return WeakRetained;
}

- (PKAddressTextField)phoneticGivenNameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_phoneticGivenNameTextField);

  return WeakRetained;
}

- (PKAddressTextField)phoneticFamilyNameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_phoneticFamilyNameTextField);

  return WeakRetained;
}

- (PKAddressTextField)street1TextField
{
  WeakRetained = objc_loadWeakRetained(&self->_street1TextField);

  return WeakRetained;
}

- (PKAddressTextField)street2TextField
{
  WeakRetained = objc_loadWeakRetained(&self->_street2TextField);

  return WeakRetained;
}

- (PKAddressTextField)countryTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_countryTextField);

  return WeakRetained;
}

@end