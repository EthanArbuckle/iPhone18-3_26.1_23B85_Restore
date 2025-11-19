@interface PKPaymentPreferenceContactSectionController
- (BOOL)_saveUpdatedContact:(id)a3 contactKey:(id)a4 preference:(id)a5 atIndex:(int64_t)a6;
- (BOOL)editedTextFieldHasError:(id)a3;
- (BOOL)hasSavedContact;
- (PKPaymentPreferenceContactSectionController)initWithContactPreference:(id)a3 contactFormatValidator:(id)a4 style:(int64_t)a5 preferencesChangedHandler:(id)a6;
- (PKPaymentPreferenceContactSectionControllerDelegate)contactDelegate;
- (id)addPreferenceItems;
- (id)appendNewSubPreference;
- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4;
- (void)deleteItem:(id)a3 forRow:(unint64_t)a4;
- (void)didSelectItem:(id)a3;
- (void)editItem:(id)a3 forRow:(unint64_t)a4;
- (void)saveContact:(id)a3 forItem:(id)a4 withContactKey:(id)a5 completion:(id)a6;
@end

@implementation PKPaymentPreferenceContactSectionController

- (PKPaymentPreferenceContactSectionController)initWithContactPreference:(id)a3 contactFormatValidator:(id)a4 style:(int64_t)a5 preferencesChangedHandler:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PKPaymentPreferenceContactSectionController;
  v12 = [(PKPaymentPreferenceSectionController *)&v15 initWithPreference:a3 style:a5 preferencesChangedHandler:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactFormatValidator, a4);
  }

  return v13;
}

- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKPaymentPreferenceContactOptionListItem alloc];
  v9 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v10 = [(PKPaymentPreferenceOptionListItem *)v8 initWithPreference:v7 inSectionPreference:v9 hasErrorHandler:v6];

  return v10;
}

- (BOOL)hasSavedContact
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = objc_alloc(MEMORY[0x1E695CD78]);
  v4 = [v3 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[4] = &v13;
  v12 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKPaymentPreferenceContactSectionController_hasSavedContact__block_invoke;
  v11[3] = &unk_1E801C430;
  v5 = [v2 enumerateContactsWithFetchRequest:v4 error:&v12 usingBlock:v11];
  v6 = v12;
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v9 = *(v14 + 24);
  }

  else
  {
    NSLog(&cfstr_ErrorRetrievin.isa, v6);
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v9 & 1;
}

uint64_t __62__PKPaymentPreferenceContactSectionController_hasSavedContact__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (id)addPreferenceItems
{
  v26[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [PKPaymentPreferenceAddListItem alloc];
  v4 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke;
  v21[3] = &unk_1E8010998;
  objc_copyWeak(&v22, &location);
  v5 = [(PKPaymentPreferenceAddListItem *)v3 initWithAddPreferenceType:0 forSectionPreference:v4 handler:v21];

  v6 = [PKPaymentPreferenceAddListItem alloc];
  v7 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke_2;
  v19[3] = &unk_1E8010998;
  objc_copyWeak(&v20, &location);
  v8 = [(PKPaymentPreferenceAddListItem *)v6 initWithAddPreferenceType:1 forSectionPreference:v7 handler:v19];

  if ([(PKPaymentPreferenceSectionController *)self style]== 2)
  {
    v9 = PKBridgeButtonTextColor();
    [(PKPaymentPreferenceAddListItem *)v5 setButtonTextColor:v9];
    [(PKPaymentPreferenceAddListItem *)v8 setButtonTextColor:v9];
  }

  v10 = [(PKPaymentPreferenceContactSectionController *)self hasSavedContact];
  v11 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v12 = [v11 contactKey];

  if ([v12 isEqualToString:*MEMORY[0x1E695C360]])
  {
    v26[0] = v5;
    v13 = v26;
    goto LABEL_10;
  }

  if (([v12 isEqualToString:*MEMORY[0x1E695C330]] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E695C208]))
  {
    if (v10)
    {
      v25[0] = v5;
      v25[1] = v8;
      v13 = v25;
      v14 = 2;
LABEL_11:
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:v14];
      goto LABEL_12;
    }

    v24 = v5;
    v13 = &v24;
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = PKPaymentPreferenceContactSectionController;
  v15 = [(PKPaymentPreferenceSectionController *)&v18 addPreferenceItems];
LABEL_12:
  v16 = v15;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v16;
}

void __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained linkedSectionController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
  }

  v12 = v5;

  v6 = [v12 contactPreference];
  v7 = [v6 contactKey];
  v8 = [v7 isEqualToString:*MEMORY[0x1E695C360]];

  v9 = [v12 contactDelegate];
  v10 = v9;
  if (v8)
  {
    v11 = [v12 contactPreference];
    [v10 showAddressPickerForPreference:v11 inSectionController:v12];
  }

  else
  {
    [v9 startInlineEditingForContactItem:0 inSectionController:v12];
  }
}

void __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained linkedSectionController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
  }

  v8 = v5;

  v6 = [v8 contactDelegate];
  v7 = [v8 contactPreference];
  [v6 showContactsPickerForPreference:v7 inSectionController:v8];
}

- (void)deleteItem:(id)a3 forRow:(unint64_t)a4
{
  v19 = a3;
  if (![v19 isOptionItem])
  {
    goto LABEL_14;
  }

  v6 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v7 = [(PKPaymentPreferenceSectionController *)self items];
  [v7 removeObjectAtIndex:a4];

  v8 = [v19 preference];
  v9 = [MEMORY[0x1E69B8D00] defaultInstance];
  v10 = [v8 recentContact];
  [v9 deleteRecent:v10];

  v11 = [v6 contactKey];
  if ([v11 isEqualToString:*MEMORY[0x1E695C360]] && !objc_msgSend(v6, "type"))
  {
    v12 = [MEMORY[0x1E69B8CF8] defaults];
    [v12 deleteDefaultBillingAddress:v8];
    goto LABEL_7;
  }

  if ([v8 contactSource] == 2)
  {
    v12 = [MEMORY[0x1E69B8CF8] defaults];
    [v12 deleteDefaultForContactKey:v11];
LABEL_7:
  }

  v13 = [v6 preferences];
  v14 = [v13 mutableCopy];

  v15 = [v6 selectedIndex];
  if (v15 >= [v14 count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 objectAtIndex:{objc_msgSend(v6, "selectedIndex")}];
  }

  [v14 removeObjectAtIndex:a4];
  v17 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  [v17 setPreferences:v14];

  if (v16)
  {
    [v6 setSelectedIndex:{objc_msgSend(v14, "indexOfObject:", v16)}];
  }

  v18 = [(PKPaymentPreferenceSectionController *)self handler];
  (v18)[2](v18, self, v19);

LABEL_14:
}

- (void)editItem:(id)a3 forRow:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v7 = v5;
  v8 = [v6 contactKey];
  v9 = *MEMORY[0x1E695C360];
  v10 = [v8 isEqualToString:*MEMORY[0x1E695C360]];

  if (v10)
  {
    v11 = [v7 contactPreference];
    v12 = [v11 contactSource];
    v13 = [(PKPaymentPreferenceContactSectionController *)self contactDelegate];
    v14 = v13;
    if (v12 == 1)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__PKPaymentPreferenceContactSectionController_editItem_forRow___block_invoke;
      v18[3] = &unk_1E8010A10;
      v18[4] = self;
      v19 = v7;
      [v14 presentMeCardAlertControllerWithContact:v11 contactKey:v9 handler:v18];
    }

    else
    {
      [v13 showAddressEditorForContactItem:v7 inSectionController:self];
    }

    goto LABEL_9;
  }

  v15 = [v6 contactKey];
  if ([v15 isEqualToString:*MEMORY[0x1E695C208]])
  {

LABEL_8:
    v11 = [(PKPaymentPreferenceContactSectionController *)self contactDelegate];
    [v11 startInlineEditingForContactItem:v7 inSectionController:self];
LABEL_9:

    goto LABEL_10;
  }

  v16 = [v6 contactKey];
  v17 = [v16 isEqualToString:*MEMORY[0x1E695C330]];

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void __63__PKPaymentPreferenceContactSectionController_editItem_forRow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactDelegate];
  [v2 showAddressEditorForContactItem:*(a1 + 40) inSectionController:*(a1 + 32)];
}

- (BOOL)editedTextFieldHasError:(id)a3
{
  v4 = [a3 text];
  if ([v4 length])
  {
    v5 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
    v6 = [v5 contactKey];

    if ([v6 isEqualToString:*MEMORY[0x1E695C330]])
    {
      v7 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v4];
      v8 = objc_alloc(MEMORY[0x1E695CF50]);
      v9 = [v7 digits];
      v10 = [v8 initWithStringValue:v9];

      v11 = [(PKContactFormatValidator *)self->_contactFormatValidator phoneNumberIsValid:v10 forCountryCode:0]^ 1;
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E695C208]])
    {
      v11 = [(PKContactFormatValidator *)self->_contactFormatValidator emailAddressIsValid:v4]^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPreferenceSectionController *)self delegate];
  if (![v5 collectionViewIsEditingForSectionController:self])
  {

    goto LABEL_5;
  }

  v6 = [v4 supportsSwipeActionType:1];

  if (!v6)
  {
LABEL_5:
    v7.receiver = self;
    v7.super_class = PKPaymentPreferenceContactSectionController;
    [(PKPaymentPreferenceSectionController *)&v7 didSelectItem:v4];
    goto LABEL_6;
  }

  [(PKPaymentPreferenceContactSectionController *)self editItem:v4 forRow:0x7FFFFFFFFFFFFFFFLL];
LABEL_6:
}

- (id)appendNewSubPreference
{
  v2 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v3 = [v2 preferences];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E695CD58]);
  [v5 setContactSource:3];
  v6 = [v2 preferences];
  v7 = [v6 lastObject];
  v8 = [v7 isHideMyEmail];

  v9 = [v2 preferences];
  [v4 insertObject:v5 atIndex:{objc_msgSend(v9, "count") - v8}];

  [v2 setPreferences:v4];

  return v5;
}

- (void)saveContact:(id)a3 forItem:(id)a4 withContactKey:(id)a5 completion:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = [(PKPaymentPreferenceContactSectionController *)self contactItems];
    v14 = [v13 indexOfObject:v10];
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  if ([(PKPaymentPreferenceContactSectionController *)self _saveUpdatedContact:v22 contactKey:v11 preference:v15 atIndex:v14])
  {
    v16 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:v22];
    v17 = [(PKPaymentPreferenceSectionController *)self items];
    v18 = v17;
    if (v10)
    {
      [v17 replaceObjectAtIndex:v14 withObject:v16];
    }

    else
    {
      if ([v15 selectedIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [(PKPaymentPreferenceContactSectionController *)self contactItems];
        v20 = [v19 objectAtIndex:{objc_msgSend(v15, "selectedIndex")}];
        v21 = [v20 copy];

        [v18 replaceObjectAtIndex:objc_msgSend(v15 withObject:{"selectedIndex"), v21}];
      }

      [v18 insertObject:v16 atIndex:0];
      [v15 setSelectedIndex:0];
    }

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    if (v12)
    {
LABEL_13:
      v12[2](v12, v16);
    }
  }
}

- (BOOL)_saveUpdatedContact:(id)a3 contactKey:(id)a4 preference:(id)a5 atIndex:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v11 preferences];
    v13 = [v14 objectAtIndex:a6];

    [v9 setContactSource:{objc_msgSend(v13, "contactSource")}];
  }

  v15 = [v12 preferences];
  v16 = [v15 mutableCopy];

  if (!v13)
  {
    goto LABEL_13;
  }

  if ([v13 contactSource] != 1)
  {
    if ([v13 contactSource] == 2)
    {
      v17 = [v13 recentContact];

      if (v17)
      {
        v18 = [MEMORY[0x1E69B8D00] defaultInstance];
        v19 = [v13 recentContact];
        [v18 deleteRecent:v19];
      }

      if ([v10 isEqualToString:*MEMORY[0x1E695C208]])
      {
        v20 = [MEMORY[0x1E69B8CF8] defaults];
        [v20 setDefaultContactEmail:v9];
      }

      else if ([v10 isEqualToString:*MEMORY[0x1E695C330]])
      {
        v20 = [MEMORY[0x1E69B8CF8] defaults];
        [v20 setDefaultContactPhone:v9];
      }

      else
      {
        if ([v12 type] != 1)
        {
LABEL_27:
          v29 = [MEMORY[0x1E69B8D00] defaultInstance];
          v30 = [v29 saveContactToCoreRecents:v9 preference:v12];

          [v9 setRecentContact:v30];
          [v16 replaceObjectAtIndex:a6 withObject:v9];

          goto LABEL_28;
        }

        v20 = [MEMORY[0x1E69B8CF8] defaults];
        [v20 setDefaultShippingAddress:v9];
      }

      goto LABEL_27;
    }

LABEL_13:
    v21 = [v13 recentContact];

    if (v21)
    {
      v22 = [MEMORY[0x1E69B8D00] defaultInstance];
      v23 = [v13 recentContact];
      [v22 deleteRecent:v23];
    }

    v24 = [MEMORY[0x1E69B8D00] defaultInstance];
    v25 = [v24 saveContactToCoreRecents:v9 preference:v12];

    [v9 setContactSource:3];
    [v9 setRecentContact:v25];
    if (v13)
    {
      [v16 replaceObjectAtIndex:a6 withObject:v9];
    }

    else
    {
      [v16 insertObject:v9 atIndex:0];
    }

    goto LABEL_28;
  }

  if (PKUpdateMeContact())
  {
    [v16 replaceObjectAtIndex:a6 withObject:v9];
LABEL_28:
    v28 = 1;
    goto LABEL_29;
  }

  v26 = [MEMORY[0x1E69B8D00] defaultInstance];
  v27 = [v26 saveContactToCoreRecents:v9 preference:v12];

  [v9 setRecentContact:v27];
  [v9 setContactSource:3];
  [v16 addObject:v9];
  if ([v12 selectedIndex] == a6)
  {
    [v12 setSelectedIndex:{objc_msgSend(v16, "indexOfObject:", v9)}];
  }

  v28 = 0;
LABEL_29:
  v31 = [v16 copy];
  [v12 setPreferences:v31];

  return v28;
}

- (PKPaymentPreferenceContactSectionControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

@end