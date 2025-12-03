@interface PKPaymentPreferenceContactSectionController
- (BOOL)_saveUpdatedContact:(id)contact contactKey:(id)key preference:(id)preference atIndex:(int64_t)index;
- (BOOL)editedTextFieldHasError:(id)error;
- (BOOL)hasSavedContact;
- (PKPaymentPreferenceContactSectionController)initWithContactPreference:(id)preference contactFormatValidator:(id)validator style:(int64_t)style preferencesChangedHandler:(id)handler;
- (PKPaymentPreferenceContactSectionControllerDelegate)contactDelegate;
- (id)addPreferenceItems;
- (id)appendNewSubPreference;
- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler;
- (void)deleteItem:(id)item forRow:(unint64_t)row;
- (void)didSelectItem:(id)item;
- (void)editItem:(id)item forRow:(unint64_t)row;
- (void)saveContact:(id)contact forItem:(id)item withContactKey:(id)key completion:(id)completion;
@end

@implementation PKPaymentPreferenceContactSectionController

- (PKPaymentPreferenceContactSectionController)initWithContactPreference:(id)preference contactFormatValidator:(id)validator style:(int64_t)style preferencesChangedHandler:(id)handler
{
  validatorCopy = validator;
  v15.receiver = self;
  v15.super_class = PKPaymentPreferenceContactSectionController;
  v12 = [(PKPaymentPreferenceSectionController *)&v15 initWithPreference:preference style:style preferencesChangedHandler:handler];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactFormatValidator, validator);
  }

  return v13;
}

- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler
{
  handlerCopy = handler;
  preferenceCopy = preference;
  v8 = [PKPaymentPreferenceContactOptionListItem alloc];
  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v10 = [(PKPaymentPreferenceOptionListItem *)v8 initWithPreference:preferenceCopy inSectionPreference:contactPreference hasErrorHandler:handlerCopy];

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
  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke;
  v21[3] = &unk_1E8010998;
  objc_copyWeak(&v22, &location);
  v5 = [(PKPaymentPreferenceAddListItem *)v3 initWithAddPreferenceType:0 forSectionPreference:contactPreference handler:v21];

  v6 = [PKPaymentPreferenceAddListItem alloc];
  contactPreference2 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PKPaymentPreferenceContactSectionController_addPreferenceItems__block_invoke_2;
  v19[3] = &unk_1E8010998;
  objc_copyWeak(&v20, &location);
  v8 = [(PKPaymentPreferenceAddListItem *)v6 initWithAddPreferenceType:1 forSectionPreference:contactPreference2 handler:v19];

  if ([(PKPaymentPreferenceSectionController *)self style]== 2)
  {
    v9 = PKBridgeButtonTextColor();
    [(PKPaymentPreferenceAddListItem *)v5 setButtonTextColor:v9];
    [(PKPaymentPreferenceAddListItem *)v8 setButtonTextColor:v9];
  }

  hasSavedContact = [(PKPaymentPreferenceContactSectionController *)self hasSavedContact];
  contactPreference3 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  contactKey = [contactPreference3 contactKey];

  if ([contactKey isEqualToString:*MEMORY[0x1E695C360]])
  {
    v26[0] = v5;
    v13 = v26;
    goto LABEL_10;
  }

  if (([contactKey isEqualToString:*MEMORY[0x1E695C330]] & 1) != 0 || objc_msgSend(contactKey, "isEqualToString:", *MEMORY[0x1E695C208]))
  {
    if (hasSavedContact)
    {
      v25[0] = v5;
      v25[1] = v8;
      v13 = v25;
      v14 = 2;
LABEL_11:
      addPreferenceItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:v14];
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
  addPreferenceItems = [(PKPaymentPreferenceSectionController *)&v18 addPreferenceItems];
LABEL_12:
  v16 = addPreferenceItems;

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

- (void)deleteItem:(id)item forRow:(unint64_t)row
{
  itemCopy = item;
  if (![itemCopy isOptionItem])
  {
    goto LABEL_14;
  }

  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  items = [(PKPaymentPreferenceSectionController *)self items];
  [items removeObjectAtIndex:row];

  preference = [itemCopy preference];
  defaultInstance = [MEMORY[0x1E69B8D00] defaultInstance];
  recentContact = [preference recentContact];
  [defaultInstance deleteRecent:recentContact];

  contactKey = [contactPreference contactKey];
  if ([contactKey isEqualToString:*MEMORY[0x1E695C360]] && !objc_msgSend(contactPreference, "type"))
  {
    defaults = [MEMORY[0x1E69B8CF8] defaults];
    [defaults deleteDefaultBillingAddress:preference];
    goto LABEL_7;
  }

  if ([preference contactSource] == 2)
  {
    defaults = [MEMORY[0x1E69B8CF8] defaults];
    [defaults deleteDefaultForContactKey:contactKey];
LABEL_7:
  }

  preferences = [contactPreference preferences];
  v14 = [preferences mutableCopy];

  selectedIndex = [contactPreference selectedIndex];
  if (selectedIndex >= [v14 count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 objectAtIndex:{objc_msgSend(contactPreference, "selectedIndex")}];
  }

  [v14 removeObjectAtIndex:row];
  contactPreference2 = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  [contactPreference2 setPreferences:v14];

  if (v16)
  {
    [contactPreference setSelectedIndex:{objc_msgSend(v14, "indexOfObject:", v16)}];
  }

  handler = [(PKPaymentPreferenceSectionController *)self handler];
  (handler)[2](handler, self, itemCopy);

LABEL_14:
}

- (void)editItem:(id)item forRow:(unint64_t)row
{
  itemCopy = item;
  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  v7 = itemCopy;
  contactKey = [contactPreference contactKey];
  v9 = *MEMORY[0x1E695C360];
  v10 = [contactKey isEqualToString:*MEMORY[0x1E695C360]];

  if (v10)
  {
    contactPreference2 = [v7 contactPreference];
    contactSource = [contactPreference2 contactSource];
    contactDelegate = [(PKPaymentPreferenceContactSectionController *)self contactDelegate];
    v14 = contactDelegate;
    if (contactSource == 1)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__PKPaymentPreferenceContactSectionController_editItem_forRow___block_invoke;
      v18[3] = &unk_1E8010A10;
      v18[4] = self;
      v19 = v7;
      [v14 presentMeCardAlertControllerWithContact:contactPreference2 contactKey:v9 handler:v18];
    }

    else
    {
      [contactDelegate showAddressEditorForContactItem:v7 inSectionController:self];
    }

    goto LABEL_9;
  }

  contactKey2 = [contactPreference contactKey];
  if ([contactKey2 isEqualToString:*MEMORY[0x1E695C208]])
  {

LABEL_8:
    contactPreference2 = [(PKPaymentPreferenceContactSectionController *)self contactDelegate];
    [contactPreference2 startInlineEditingForContactItem:v7 inSectionController:self];
LABEL_9:

    goto LABEL_10;
  }

  contactKey3 = [contactPreference contactKey];
  v17 = [contactKey3 isEqualToString:*MEMORY[0x1E695C330]];

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

- (BOOL)editedTextFieldHasError:(id)error
{
  text = [error text];
  if ([text length])
  {
    contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
    contactKey = [contactPreference contactKey];

    if ([contactKey isEqualToString:*MEMORY[0x1E695C330]])
    {
      v7 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:text];
      v8 = objc_alloc(MEMORY[0x1E695CF50]);
      digits = [v7 digits];
      v10 = [v8 initWithStringValue:digits];

      v11 = [(PKContactFormatValidator *)self->_contactFormatValidator phoneNumberIsValid:v10 forCountryCode:0]^ 1;
    }

    else if ([contactKey isEqualToString:*MEMORY[0x1E695C208]])
    {
      v11 = [(PKContactFormatValidator *)self->_contactFormatValidator emailAddressIsValid:text]^ 1;
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

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  delegate = [(PKPaymentPreferenceSectionController *)self delegate];
  if (![delegate collectionViewIsEditingForSectionController:self])
  {

    goto LABEL_5;
  }

  v6 = [itemCopy supportsSwipeActionType:1];

  if (!v6)
  {
LABEL_5:
    v7.receiver = self;
    v7.super_class = PKPaymentPreferenceContactSectionController;
    [(PKPaymentPreferenceSectionController *)&v7 didSelectItem:itemCopy];
    goto LABEL_6;
  }

  [(PKPaymentPreferenceContactSectionController *)self editItem:itemCopy forRow:0x7FFFFFFFFFFFFFFFLL];
LABEL_6:
}

- (id)appendNewSubPreference
{
  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  preferences = [contactPreference preferences];
  v4 = [preferences mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E695CD58]);
  [v5 setContactSource:3];
  preferences2 = [contactPreference preferences];
  lastObject = [preferences2 lastObject];
  isHideMyEmail = [lastObject isHideMyEmail];

  preferences3 = [contactPreference preferences];
  [v4 insertObject:v5 atIndex:{objc_msgSend(preferences3, "count") - isHideMyEmail}];

  [contactPreference setPreferences:v4];

  return v5;
}

- (void)saveContact:(id)contact forItem:(id)item withContactKey:(id)key completion:(id)completion
{
  contactCopy = contact;
  itemCopy = item;
  keyCopy = key;
  completionCopy = completion;
  if (itemCopy)
  {
    contactItems = [(PKPaymentPreferenceContactSectionController *)self contactItems];
    v14 = [contactItems indexOfObject:itemCopy];
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  contactPreference = [(PKPaymentPreferenceContactSectionController *)self contactPreference];
  if ([(PKPaymentPreferenceContactSectionController *)self _saveUpdatedContact:contactCopy contactKey:keyCopy preference:contactPreference atIndex:v14])
  {
    v16 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:contactCopy];
    items = [(PKPaymentPreferenceSectionController *)self items];
    v18 = items;
    if (itemCopy)
    {
      [items replaceObjectAtIndex:v14 withObject:v16];
    }

    else
    {
      if ([contactPreference selectedIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        contactItems2 = [(PKPaymentPreferenceContactSectionController *)self contactItems];
        v20 = [contactItems2 objectAtIndex:{objc_msgSend(contactPreference, "selectedIndex")}];
        v21 = [v20 copy];

        [v18 replaceObjectAtIndex:objc_msgSend(contactPreference withObject:{"selectedIndex"), v21}];
      }

      [v18 insertObject:v16 atIndex:0];
      [contactPreference setSelectedIndex:0];
    }

    if (completionCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    if (completionCopy)
    {
LABEL_13:
      completionCopy[2](completionCopy, v16);
    }
  }
}

- (BOOL)_saveUpdatedContact:(id)contact contactKey:(id)key preference:(id)preference atIndex:(int64_t)index
{
  contactCopy = contact;
  keyCopy = key;
  preferenceCopy = preference;
  v12 = preferenceCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    preferences = [preferenceCopy preferences];
    v13 = [preferences objectAtIndex:index];

    [contactCopy setContactSource:{objc_msgSend(v13, "contactSource")}];
  }

  preferences2 = [v12 preferences];
  v16 = [preferences2 mutableCopy];

  if (!v13)
  {
    goto LABEL_13;
  }

  if ([v13 contactSource] != 1)
  {
    if ([v13 contactSource] == 2)
    {
      recentContact = [v13 recentContact];

      if (recentContact)
      {
        defaultInstance = [MEMORY[0x1E69B8D00] defaultInstance];
        recentContact2 = [v13 recentContact];
        [defaultInstance deleteRecent:recentContact2];
      }

      if ([keyCopy isEqualToString:*MEMORY[0x1E695C208]])
      {
        defaults = [MEMORY[0x1E69B8CF8] defaults];
        [defaults setDefaultContactEmail:contactCopy];
      }

      else if ([keyCopy isEqualToString:*MEMORY[0x1E695C330]])
      {
        defaults = [MEMORY[0x1E69B8CF8] defaults];
        [defaults setDefaultContactPhone:contactCopy];
      }

      else
      {
        if ([v12 type] != 1)
        {
LABEL_27:
          defaultInstance2 = [MEMORY[0x1E69B8D00] defaultInstance];
          v30 = [defaultInstance2 saveContactToCoreRecents:contactCopy preference:v12];

          [contactCopy setRecentContact:v30];
          [v16 replaceObjectAtIndex:index withObject:contactCopy];

          goto LABEL_28;
        }

        defaults = [MEMORY[0x1E69B8CF8] defaults];
        [defaults setDefaultShippingAddress:contactCopy];
      }

      goto LABEL_27;
    }

LABEL_13:
    recentContact3 = [v13 recentContact];

    if (recentContact3)
    {
      defaultInstance3 = [MEMORY[0x1E69B8D00] defaultInstance];
      recentContact4 = [v13 recentContact];
      [defaultInstance3 deleteRecent:recentContact4];
    }

    defaultInstance4 = [MEMORY[0x1E69B8D00] defaultInstance];
    v25 = [defaultInstance4 saveContactToCoreRecents:contactCopy preference:v12];

    [contactCopy setContactSource:3];
    [contactCopy setRecentContact:v25];
    if (v13)
    {
      [v16 replaceObjectAtIndex:index withObject:contactCopy];
    }

    else
    {
      [v16 insertObject:contactCopy atIndex:0];
    }

    goto LABEL_28;
  }

  if (PKUpdateMeContact())
  {
    [v16 replaceObjectAtIndex:index withObject:contactCopy];
LABEL_28:
    v28 = 1;
    goto LABEL_29;
  }

  defaultInstance5 = [MEMORY[0x1E69B8D00] defaultInstance];
  v27 = [defaultInstance5 saveContactToCoreRecents:contactCopy preference:v12];

  [contactCopy setRecentContact:v27];
  [contactCopy setContactSource:3];
  [v16 addObject:contactCopy];
  if ([v12 selectedIndex] == index)
  {
    [v12 setSelectedIndex:{objc_msgSend(v16, "indexOfObject:", contactCopy)}];
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