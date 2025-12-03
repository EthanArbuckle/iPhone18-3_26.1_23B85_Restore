@interface PKPaymentPreferenceContactOptionListItem
- (BOOL)_isEmail;
- (BOOL)_isHideMyEmail;
- (BOOL)_isPhoneNumber;
- (BOOL)_isPostalAddress;
- (BOOL)_supportsDeleteAction;
- (BOOL)_supportsEditAction;
- (BOOL)_supportsEditing;
- (BOOL)supportsInlineEditing;
- (id)_inlineEditingConfiguration;
- (id)_placeholderText;
- (id)_secondaryText;
- (id)_text;
- (id)defaultAccessories;
@end

@implementation PKPaymentPreferenceContactOptionListItem

- (BOOL)_isPostalAddress
{
  contactSectionPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  contactKey = [contactSectionPreference contactKey];
  v4 = [contactKey isEqualToString:*MEMORY[0x1E695C360]];

  return v4;
}

- (BOOL)_isPhoneNumber
{
  contactSectionPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  contactKey = [contactSectionPreference contactKey];
  v4 = [contactKey isEqualToString:*MEMORY[0x1E695C330]];

  return v4;
}

- (BOOL)_isEmail
{
  contactSectionPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  contactKey = [contactSectionPreference contactKey];
  v4 = [contactKey isEqualToString:*MEMORY[0x1E695C208]];

  return v4;
}

- (BOOL)_isHideMyEmail
{
  _isEmail = [(PKPaymentPreferenceContactOptionListItem *)self _isEmail];
  if (_isEmail)
  {
    contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    isHideMyEmail = [contactPreference isHideMyEmail];

    LOBYTE(_isEmail) = isHideMyEmail;
  }

  return _isEmail;
}

- (id)_inlineEditingConfiguration
{
  v11.receiver = self;
  v11.super_class = PKPaymentPreferenceContactOptionListItem;
  _inlineEditingConfiguration = [(PKPaymentPreferenceOptionListItem *)&v11 _inlineEditingConfiguration];
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail])
  {
    v4 = 7;
LABEL_5:
    [_inlineEditingConfiguration setKeyboardType:v4];
    goto LABEL_6;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    v4 = 5;
    goto LABEL_5;
  }

LABEL_6:
  contactSectionPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
  v7 = [contactSectionPreference errorsForPreference:contactPreference];
  if ([v7 count])
  {
    selectedIndex = [contactSectionPreference selectedIndex];
    if (selectedIndex == [contactSectionPreference indexOfContact:contactPreference])
    {
      firstObject = [v7 firstObject];
      [_inlineEditingConfiguration setError:firstObject];
    }
  }

  return _inlineEditingConfiguration;
}

- (id)_text
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress])
  {
    contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    pk_displayName = [contactPreference pk_displayName];
LABEL_3:
    pkFormattedStringValue = pk_displayName;
LABEL_6:

    goto LABEL_7;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    contactPreference2 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    phoneNumbers = [contactPreference2 phoneNumbers];
    contactPreference = [phoneNumbers firstObject];

    value = [contactPreference value];
    pkFormattedStringValue = [value pkFormattedStringValue];

    goto LABEL_6;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail])
  {
    contactPreference3 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    emailAddresses = [contactPreference3 emailAddresses];
    contactPreference = [emailAddresses firstObject];

    pk_displayName = [contactPreference value];
    goto LABEL_3;
  }

  pkFormattedStringValue = 0;
LABEL_7:

  return pkFormattedStringValue;
}

- (id)_placeholderText
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    v3 = @"SETTINGS_TRANSACTION_DEFAULTS_PHONE";
LABEL_5:
    v4 = PKLocalizedPaymentString(&v3->isa);
    goto LABEL_7;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail])
  {
    v3 = @"SETTINGS_TRANSACTION_DEFAULTS_EMAIL";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)_secondaryText
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress])
  {
    contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    pkSingleLineFormattedContactAddress = [contactPreference pkSingleLineFormattedContactAddress];
LABEL_9:

    goto LABEL_10;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail]|| [(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    contactPreference2 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    pkSingleLineFormattedContactAddress = [contactPreference2 pk_displayName];

    if (![(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
    {
      goto LABEL_10;
    }

    contactPreference = objc_alloc_init(MEMORY[0x1E69B88F0]);
    forwardingEmailForPrimaryAccount = [contactPreference forwardingEmailForPrimaryAccount];
    v7 = forwardingEmailForPrimaryAccount;
    if (forwardingEmailForPrimaryAccount)
    {
      v8 = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsRow.isa, &stru_1F3BD5BF0.isa, forwardingEmailForPrimaryAccount);

      pkSingleLineFormattedContactAddress = v8;
    }

    goto LABEL_9;
  }

  pkSingleLineFormattedContactAddress = 0;
LABEL_10:

  return pkSingleLineFormattedContactAddress;
}

- (id)defaultAccessories
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPaymentPreferenceContactOptionListItem *)self _supportsEditing])
  {
    if ([(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress])
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
      [v4 setDisplayedState:1];
      [v3 addObject:v4];
    }

    contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    contactSource = [contactPreference contactSource];

    if (contactSource != 1)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DC798]);
      [v3 addObject:v7];
    }
  }

  return v3;
}

- (BOOL)supportsInlineEditing
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
  {
    return 0;
  }

  else
  {
    return ![(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress];
  }
}

- (BOOL)_supportsDeleteAction
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
  {
    return 0;
  }

  contactPreference = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
  contactSource = [contactPreference contactSource];

  if (contactSource == 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = PKPaymentPreferenceContactOptionListItem;
  return [(PKPaymentPreferenceOptionListItem *)&v6 _supportsDeleteAction];
}

- (BOOL)_supportsEditing
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PKPaymentPreferenceContactOptionListItem;
  return [(PKPaymentPreferenceOptionListItem *)&v4 _supportsEditing];
}

- (BOOL)_supportsEditAction
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
  {
    return 0;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _supportsEditing])
  {

    return [(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PKPaymentPreferenceContactOptionListItem;
    return [(PKPaymentPreferenceOptionListItem *)&v4 _supportsEditAction];
  }
}

@end