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
  v2 = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  v3 = [v2 contactKey];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695C360]];

  return v4;
}

- (BOOL)_isPhoneNumber
{
  v2 = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  v3 = [v2 contactKey];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695C330]];

  return v4;
}

- (BOOL)_isEmail
{
  v2 = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  v3 = [v2 contactKey];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695C208]];

  return v4;
}

- (BOOL)_isHideMyEmail
{
  v3 = [(PKPaymentPreferenceContactOptionListItem *)self _isEmail];
  if (v3)
  {
    v4 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v5 = [v4 isHideMyEmail];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)_inlineEditingConfiguration
{
  v11.receiver = self;
  v11.super_class = PKPaymentPreferenceContactOptionListItem;
  v3 = [(PKPaymentPreferenceOptionListItem *)&v11 _inlineEditingConfiguration];
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail])
  {
    v4 = 7;
LABEL_5:
    [v3 setKeyboardType:v4];
    goto LABEL_6;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    v4 = 5;
    goto LABEL_5;
  }

LABEL_6:
  v5 = [(PKPaymentPreferenceContactOptionListItem *)self contactSectionPreference];
  v6 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
  v7 = [v5 errorsForPreference:v6];
  if ([v7 count])
  {
    v8 = [v5 selectedIndex];
    if (v8 == [v5 indexOfContact:v6])
    {
      v9 = [v7 firstObject];
      [v3 setError:v9];
    }
  }

  return v3;
}

- (id)_text
{
  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPostalAddress])
  {
    v3 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v4 = [v3 pk_displayName];
LABEL_3:
    v5 = v4;
LABEL_6:

    goto LABEL_7;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    v6 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v7 = [v6 phoneNumbers];
    v3 = [v7 firstObject];

    v8 = [v3 value];
    v5 = [v8 pkFormattedStringValue];

    goto LABEL_6;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail])
  {
    v10 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v11 = [v10 emailAddresses];
    v3 = [v11 firstObject];

    v4 = [v3 value];
    goto LABEL_3;
  }

  v5 = 0;
LABEL_7:

  return v5;
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
    v3 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v4 = [v3 pkSingleLineFormattedContactAddress];
LABEL_9:

    goto LABEL_10;
  }

  if ([(PKPaymentPreferenceContactOptionListItem *)self _isEmail]|| [(PKPaymentPreferenceContactOptionListItem *)self _isPhoneNumber])
  {
    v5 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v4 = [v5 pk_displayName];

    if (![(PKPaymentPreferenceContactOptionListItem *)self _isHideMyEmail])
    {
      goto LABEL_10;
    }

    v3 = objc_alloc_init(MEMORY[0x1E69B88F0]);
    v6 = [v3 forwardingEmailForPrimaryAccount];
    v7 = v6;
    if (v6)
    {
      v8 = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsRow.isa, &stru_1F3BD5BF0.isa, v6);

      v4 = v8;
    }

    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:

  return v4;
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

    v5 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
    v6 = [v5 contactSource];

    if (v6 != 1)
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

  v3 = [(PKPaymentPreferenceContactOptionListItem *)self contactPreference];
  v4 = [v3 contactSource];

  if (v4 == 1)
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