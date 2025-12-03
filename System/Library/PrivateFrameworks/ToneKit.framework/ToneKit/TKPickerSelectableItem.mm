@interface TKPickerSelectableItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKPickerSelectableItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      v13 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        v18.receiver = self;
        v18.super_class = TKPickerSelectableItem;
        if (![(TKPickerRowItem *)&v18 isEqual:v7])
        {
          goto LABEL_27;
        }

        text = v7->_text;
        v9 = self->_text;
        v10 = text;
        v11 = v10;
        if (!(v9 | v10))
        {
          goto LABEL_14;
        }

        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        if (v9 == v10)
        {
LABEL_14:
        }

        else
        {
          v12 = [(NSString *)v9 isEqualToString:v10];

          if (!v12)
          {
            goto LABEL_27;
          }
        }

        if (self->_shouldTintText != v7->_shouldTintText)
        {
          goto LABEL_27;
        }

        detailText = v7->_detailText;
        v9 = self->_detailText;
        v15 = detailText;
        v11 = v15;
        if (!(v9 | v15))
        {
          goto LABEL_23;
        }

        if (v9 && v15)
        {
          if (v9 != v15)
          {
            v16 = [(NSString *)v9 isEqualToString:v15];

            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_23:

LABEL_24:
          if (self->_showsCheckmark == v7->_showsCheckmark && self->_showsDisclosureIndicator == v7->_showsDisclosureIndicator)
          {
            v13 = self->_shouldPreventSelection == v7->_shouldPreventSelection;
LABEL_28:

            goto LABEL_29;
          }

LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }

LABEL_22:

        goto LABEL_27;
      }

      v13 = 0;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TKPickerSelectableItem;
    v13 = [(TKPickerRowItem *)&v19 isEqual:equalCopy];
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v8.receiver = self;
    v8.super_class = TKPickerSelectableItem;
    v5 = [(TKPickerRowItem *)&v8 hash];
    v6 = [(NSString *)self->_text hash]^ v5 ^ self->_shouldTintText;
    return v6 ^ [(NSString *)self->_detailText hash]^ self->_showsCheckmark ^ self->_showsDisclosureIndicator ^ self->_shouldPreventSelection;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TKPickerSelectableItem;
    return [(TKPickerRowItem *)&v9 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  stringCopy = string;
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"section" withIntegerValue:[(TKPickerItem *)self section] toString:stringCopy];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"row" withIntegerValue:[(TKPickerRowItem *)self row] toString:stringCopy];
  if ([(TKPickerSelectableItem *)self conformsToProtocol:&unk_282E619B8])
  {
    numberOfChildren = [(TKPickerSelectableItem *)self numberOfChildren];
    if (numberOfChildren >= 1)
    {
      [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"numberOfChildren" withIntegerValue:numberOfChildren toString:stringCopy];
    }
  }

  text = [(TKPickerSelectableItem *)self text];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"text" withStringValue:text toString:stringCopy];

  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"shouldTintText" withBoolValue:[(TKPickerSelectableItem *)self shouldTintText] toString:stringCopy];
  detailText = [(TKPickerSelectableItem *)self detailText];
  if (detailText)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"detailText" withStringValue:detailText toString:stringCopy];
  }

  if ([(TKPickerSelectableItem *)self showsCheckmark])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"showsCheckmark" withBoolValue:1 toString:stringCopy];
  }

  if ([(TKPickerSelectableItem *)self showsDisclosureIndicator])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"showsDisclosureIndicator" withBoolValue:1 toString:stringCopy];
  }

  if ([(TKPickerSelectableItem *)self shouldPreventSelection])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"shouldPreventSelection" withBoolValue:1 toString:stringCopy];
  }
}

@end