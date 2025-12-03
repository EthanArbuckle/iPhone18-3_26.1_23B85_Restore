@interface TVRCKeyboardAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAttributes:(id)attributes;
- (TVRCKeyboardAttributes)initWithCoder:(id)coder;
- (id)_init;
- (void)applyToTextField:(id)field;
- (void)encodeWithCoder:(id)coder;
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

- (TVRCKeyboardAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(TVRCKeyboardAttributes *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rtiDataPayload"];
    rtiDataPayload = _init->_rtiDataPayload;
    _init->_rtiDataPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = _init->_title;
    _init->_title = v8;

    _init->_likelyPINEntry = [coderCopy decodeBoolForKey:@"likelyPINEntry"];
    _init->_secure = [coderCopy decodeBoolForKey:@"secure"];
    _init->_enablesReturnKeyAutomatically = [coderCopy decodeBoolForKey:@"enablesReturnKeyAutomatically"];
    _init->_keyboardType = [coderCopy decodeIntegerForKey:@"keyboardType"];
    _init->_returnKeyType = [coderCopy decodeIntegerForKey:@"returnKeyType"];
    _init->_autocapitalizationType = [coderCopy decodeIntegerForKey:@"autocapitalizationType"];
    _init->_autocorrectionType = [coderCopy decodeIntegerForKey:@"autocorrectionType"];
    _init->_spellCheckingType = [coderCopy decodeIntegerForKey:@"spellCheckingType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINEntryAttributes"];
    PINEntryAttributes = _init->_PINEntryAttributes;
    _init->_PINEntryAttributes = v10;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  rtiDataPayload = self->_rtiDataPayload;
  coderCopy = coder;
  [coderCopy encodeObject:rtiDataPayload forKey:@"rtiDataPayload"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeBool:self->_likelyPINEntry forKey:@"likelyPINEntry"];
  [coderCopy encodeBool:self->_secure forKey:@"secure"];
  [coderCopy encodeBool:self->_enablesReturnKeyAutomatically forKey:@"enablesReturnKeyAutomatically"];
  [coderCopy encodeInteger:self->_keyboardType forKey:@"keyboardType"];
  [coderCopy encodeInteger:self->_returnKeyType forKey:@"returnKeyType"];
  [coderCopy encodeInteger:self->_autocapitalizationType forKey:@"autocapitalizationType"];
  [coderCopy encodeInteger:self->_autocorrectionType forKey:@"autocorrectionType"];
  [coderCopy encodeInteger:self->_spellCheckingType forKey:@"spellCheckingType"];
  [coderCopy encodeObject:self->_PINEntryAttributes forKey:@"PINEntryAttributes"];
}

- (BOOL)isEqualToAttributes:(id)attributes
{
  attributesCopy = attributes;
  rtiDataPayload = self->_rtiDataPayload;
  if (!rtiDataPayload)
  {
    title = self->_title;
    if (!title)
    {
      goto LABEL_23;
    }

    if (!attributesCopy[2] || ![(NSString *)title isEqualToString:?])
    {
      goto LABEL_19;
    }

    if (self->_title)
    {
      if (!attributesCopy[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_23:
      if (attributesCopy[2])
      {
        goto LABEL_19;
      }
    }

    if (self->_likelyPINEntry == *(attributesCopy + 8) && self->_secure == *(attributesCopy + 9) && self->_enablesReturnKeyAutomatically == *(attributesCopy + 10) && self->_keyboardType == attributesCopy[6] && self->_returnKeyType == attributesCopy[7] && self->_autocapitalizationType == attributesCopy[8] && self->_autocorrectionType == attributesCopy[9])
    {
      v6 = self->_spellCheckingType == attributesCopy[10];
      goto LABEL_20;
    }

LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if (!attributesCopy)
  {
    goto LABEL_19;
  }

  v6 = [(RTIDataPayload *)rtiDataPayload isEqual:attributesCopy[5]];
LABEL_20:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TVRCKeyboardAttributes *)self isEqualToAttributes:equalCopy];

  return v5;
}

- (void)applyToTextField:(id)field
{
  v25 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  _rtiSourceSession = [fieldCopy _rtiSourceSession];
  v6 = _rtiSourceSession;
  if (!_rtiSourceSession || !self->_rtiDataPayload)
  {
    [fieldCopy setSecureTextEntry:self->_secure];
    [fieldCopy setEnablesReturnKeyAutomatically:self->_enablesReturnKeyAutomatically];
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
        [fieldCopy setKeyboardType:keyboardType];
        if ((self->_returnKeyType - 1) >= 0xB)
        {
          returnKeyType = 0;
        }

        else
        {
          returnKeyType = self->_returnKeyType;
        }

        [fieldCopy setReturnKeyType:returnKeyType];
        if ((self->_autocapitalizationType - 1) >= 3)
        {
          autocapitalizationType = 0;
        }

        else
        {
          autocapitalizationType = self->_autocapitalizationType;
        }

        [fieldCopy setAutocapitalizationType:autocapitalizationType];
        if (self->_autocorrectionType == 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        [fieldCopy setAutocorrectionType:v19];
        spellCheckingType = self->_spellCheckingType;
        if (spellCheckingType == 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = spellCheckingType == 1;
        }

        [fieldCopy setSpellCheckingType:v21];
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

  [_rtiSourceSession handleTextActionPayload:?];
  rtiDataPayload = self->_rtiDataPayload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_rtiDataPayload;
    documentTraits = [(RTIDataPayload *)v8 documentTraits];
    prompt = [documentTraits prompt];
    [fieldCopy setPlaceholder:prompt];

    v11 = _TVRCRemoteTextInputLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      documentTraits2 = [(RTIDataPayload *)v8 documentTraits];
      prompt2 = [documentTraits2 prompt];
      v23 = 138412290;
      v24 = prompt2;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Setting textfield prompt to '%@'", &v23, 0xCu);
    }
  }

LABEL_46:

  v22 = *MEMORY[0x277D85DE8];
}

@end