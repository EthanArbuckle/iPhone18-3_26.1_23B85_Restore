@interface WBSContactsEntry
+ (BOOL)_isContactsLabel:(id)label;
+ (BOOL)_isContactsProperty:(id)property;
+ (id)localizedWBSPropertyOrLabel:(id)label;
- (WBSContactsEntry)initWithContact:(id)contact;
- (id)fullName;
@end

@implementation WBSContactsEntry

- (WBSContactsEntry)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = WBSContactsEntry;
  v6 = [(WBSContactsEntry *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v8 = v7;
  }

  return v7;
}

+ (BOOL)_isContactsProperty:(id)property
{
  v3 = _isContactsProperty__onceToken;
  propertyCopy = property;
  if (v3 != -1)
  {
    +[WBSContactsEntry _isContactsProperty:];
  }

  v5 = [_isContactsProperty__contactsPropertySet containsObject:propertyCopy];

  return v5;
}

void __40__WBSContactsEntry__isContactsProperty___block_invoke()
{
  v9[11] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E695C1D0];
  v9[0] = *MEMORY[0x1E695C360];
  v9[1] = v1;
  v2 = *MEMORY[0x1E695C240];
  v9[2] = *MEMORY[0x1E695C208];
  v9[3] = v2;
  v3 = *MEMORY[0x1E695C2C8];
  v9[4] = *MEMORY[0x1E695C2B0];
  v9[5] = v3;
  v4 = *MEMORY[0x1E695C2F0];
  v9[6] = *MEMORY[0x1E695C230];
  v9[7] = v4;
  v5 = *MEMORY[0x1E695C330];
  v9[8] = *MEMORY[0x1E695C328];
  v9[9] = v5;
  v9[10] = *MEMORY[0x1E695C418];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:11];
  v7 = [v0 setWithArray:v6];
  v8 = _isContactsProperty__contactsPropertySet;
  _isContactsProperty__contactsPropertySet = v7;
}

+ (BOOL)_isContactsLabel:(id)label
{
  v3 = _isContactsLabel__onceToken;
  labelCopy = label;
  if (v3 != -1)
  {
    +[WBSContactsEntry _isContactsLabel:];
  }

  v5 = [_isContactsLabel__contactsLabelSet containsObject:labelCopy];

  return v5;
}

void __37__WBSContactsEntry__isContactsLabel___block_invoke()
{
  v9[11] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E695CBD0];
  v9[0] = *MEMORY[0x1E695CB60];
  v9[1] = v1;
  v2 = *MEMORY[0x1E695CB68];
  v9[2] = *MEMORY[0x1E695CBD8];
  v9[3] = v2;
  v3 = *MEMORY[0x1E695CBC0];
  v9[4] = *MEMORY[0x1E695CB90];
  v9[5] = v3;
  v4 = *MEMORY[0x1E695CB78];
  v9[6] = *MEMORY[0x1E695CB88];
  v9[7] = v4;
  v5 = *MEMORY[0x1E695CB98];
  v9[8] = *MEMORY[0x1E695CBB8];
  v9[9] = v5;
  v9[10] = *MEMORY[0x1E695CBA0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:11];
  v7 = [v0 setWithArray:v6];
  v8 = _isContactsLabel__contactsLabelSet;
  _isContactsLabel__contactsLabelSet = v7;
}

+ (id)localizedWBSPropertyOrLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy length])
  {
    if ([labelCopy isEqualToString:*MEMORY[0x1E69C8AD8]])
    {
      v5 = _WBSLocalizedString();
    }

    else
    {
      v6 = [WBSContactsHelper CNContactKeyFromWBSABKey:labelCopy];
      if ([v6 length])
      {
        if ([self _isContactsProperty:v6])
        {
          v7 = [MEMORY[0x1E695CD58] localizedStringForKey:v6];
        }

        else if ([self _isContactsLabel:v6])
        {
          v7 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v6];
        }

        else
        {
          v7 = v6;
        }

        v5 = v7;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fullName
{
  contact = self->_contact;
  if (contact)
  {
    v4 = [MEMORY[0x1E695CD80] stringFromContact:contact style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end