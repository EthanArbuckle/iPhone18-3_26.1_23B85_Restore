@interface TVRCKeyboardAttributes
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttributes:(id)a3;
- (TVRCKeyboardAttributes)initWithCoder:(id)a3;
- (id)_init;
- (void)applyToTextField:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCKeyboardAttributes

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRCKeyboardAttributes;
  result = [(TVRCKeyboardAttributes *)&v3 init];
  if (result)
  {
    *(result + 8) = 2;
  }

  return result;
}

- (TVRCKeyboardAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TVRCKeyboardAttributes *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rtiDataPayload"];
    rtiDataPayload = v5->_rtiDataPayload;
    v5->_rtiDataPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_likelyPINEntry = [v4 decodeBoolForKey:@"likelyPINEntry"];
    v5->_secure = [v4 decodeBoolForKey:@"secure"];
    v5->_enablesReturnKeyAutomatically = [v4 decodeBoolForKey:@"enablesReturnKeyAutomatically"];
    v5->_keyboardType = [v4 decodeIntegerForKey:@"keyboardType"];
    v5->_returnKeyType = [v4 decodeIntegerForKey:@"returnKeyType"];
    v5->_autocapitalizationType = [v4 decodeIntegerForKey:@"autocapitalizationType"];
    v5->_autocorrectionType = [v4 decodeIntegerForKey:@"autocorrectionType"];
    v5->_spellCheckingType = [v4 decodeIntegerForKey:@"spellCheckingType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PINEntryAttributes"];
    PINEntryAttributes = v5->_PINEntryAttributes;
    v5->_PINEntryAttributes = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rtiDataPayload = self->_rtiDataPayload;
  v5 = a3;
  [v5 encodeObject:rtiDataPayload forKey:@"rtiDataPayload"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeBool:self->_likelyPINEntry forKey:@"likelyPINEntry"];
  [v5 encodeBool:self->_secure forKey:@"secure"];
  [v5 encodeBool:self->_enablesReturnKeyAutomatically forKey:@"enablesReturnKeyAutomatically"];
  [v5 encodeInteger:self->_keyboardType forKey:@"keyboardType"];
  [v5 encodeInteger:self->_returnKeyType forKey:@"returnKeyType"];
  [v5 encodeInteger:self->_autocapitalizationType forKey:@"autocapitalizationType"];
  [v5 encodeInteger:self->_autocorrectionType forKey:@"autocorrectionType"];
  [v5 encodeInteger:self->_spellCheckingType forKey:@"spellCheckingType"];
  [v5 encodeObject:self->_PINEntryAttributes forKey:@"PINEntryAttributes"];
}

- (BOOL)isEqualToAttributes:(id)a3
{
  v4 = a3;
  rtiDataPayload = self->_rtiDataPayload;
  if (!rtiDataPayload)
  {
    title = self->_title;
    if (!title)
    {
      goto LABEL_23;
    }

    if (!v4[2] || ![(NSString *)title isEqualToString:?])
    {
      goto LABEL_19;
    }

    if (self->_title)
    {
      if (!v4[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_23:
      if (v4[2])
      {
        goto LABEL_19;
      }
    }

    if (self->_likelyPINEntry == *(v4 + 8) && self->_secure == *(v4 + 9) && self->_enablesReturnKeyAutomatically == *(v4 + 10) && self->_keyboardType == v4[6] && self->_returnKeyType == v4[7] && self->_autocapitalizationType == v4[8] && self->_autocorrectionType == v4[9])
    {
      v6 = self->_spellCheckingType == v4[10];
      goto LABEL_20;
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = [(RTIDataPayload *)rtiDataPayload isEqual:v4[5]];
LABEL_20:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TVRCKeyboardAttributes *)self isEqualToAttributes:v4];

  return v5;
}

- (void)applyToTextField:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _rtiSourceSession];
  v6 = v5;
  if (!v5 || !self->_rtiDataPayload)
  {
    [v4 setSecureTextEntry:self->_secure];
    [v4 setEnablesReturnKeyAutomatically:self->_enablesReturnKeyAutomatically];
    keyboardType = self->_keyboardType;
    if (keyboardType > 6)
    {
      if (keyboardType > 8)
      {
        if (keyboardType != 9 && keyboardType != 10)
        {
          v16 = keyboardType == 11;
          keyboardType = 0;
          if (v16)
          {
            if (self->_likelyPINEntry)
            {
              keyboardType = 11;
            }

            else
            {
              keyboardType = 2;
            }
          }
        }

        goto LABEL_33;
      }

      if (keyboardType == 7 || (v16 = keyboardType == 8, keyboardType = 0, !v16))
      {
LABEL_33:
        [v4 setKeyboardType:keyboardType];
        if ((self->_returnKeyType - 1) >= 0xB)
        {
          returnKeyType = 0;
        }

        else
        {
          returnKeyType = self->_returnKeyType;
        }

        [v4 setReturnKeyType:returnKeyType];
        if ((self->_autocapitalizationType - 1) >= 3)
        {
          autocapitalizationType = 0;
        }

        else
        {
          autocapitalizationType = self->_autocapitalizationType;
        }

        [v4 setAutocapitalizationType:autocapitalizationType];
        if (self->_autocorrectionType == 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        [v4 setAutocorrectionType:v19];
        spellCheckingType = self->_spellCheckingType;
        if (spellCheckingType == 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = spellCheckingType == 1;
        }

        [v4 setSpellCheckingType:v21];
        goto LABEL_46;
      }
    }

    else
    {
      if (keyboardType <= 3)
      {
        if (keyboardType == 3)
        {
          v15 = self->_keyboardType;
        }

        else
        {
          v15 = 0;
        }

        if (keyboardType == 2)
        {
          v15 = 2;
        }

        if (keyboardType != 1)
        {
          keyboardType = v15;
        }

        goto LABEL_33;
      }

      if ((keyboardType - 4) >= 2)
      {
        if (keyboardType != 6)
        {
          keyboardType = 0;
        }

        goto LABEL_33;
      }
    }

    keyboardType = 2;
    goto LABEL_33;
  }

  [v5 handleTextActionPayload:?];
  rtiDataPayload = self->_rtiDataPayload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_rtiDataPayload;
    v9 = [(RTIDataPayload *)v8 documentTraits];
    v10 = [v9 prompt];
    [v4 setPlaceholder:v10];

    v11 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(RTIDataPayload *)v8 documentTraits];
      v13 = [v12 prompt];
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Setting textfield prompt to '%@'", &v23, 0xCu);
    }
  }

LABEL_46:

  v22 = *MEMORY[0x277D85DE8];
}

@end