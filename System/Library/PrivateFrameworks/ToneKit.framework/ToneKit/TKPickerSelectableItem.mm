@interface TKPickerSelectableItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)a3;
@end

@implementation TKPickerSelectableItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6)
  {
    if (self == v4)
    {
      v13 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
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
    v13 = [(TKPickerRowItem *)&v19 isEqual:v4];
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
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

- (void)_appendDescriptionOfAttributesToString:(id)a3
{
  v7 = a3;
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"section" withIntegerValue:[(TKPickerItem *)self section] toString:v7];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"row" withIntegerValue:[(TKPickerRowItem *)self row] toString:v7];
  if ([(TKPickerSelectableItem *)self conformsToProtocol:&unk_282E619B8])
  {
    v4 = [(TKPickerSelectableItem *)self numberOfChildren];
    if (v4 >= 1)
    {
      [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"numberOfChildren" withIntegerValue:v4 toString:v7];
    }
  }

  v5 = [(TKPickerSelectableItem *)self text];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"text" withStringValue:v5 toString:v7];

  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"shouldTintText" withBoolValue:[(TKPickerSelectableItem *)self shouldTintText] toString:v7];
  v6 = [(TKPickerSelectableItem *)self detailText];
  if (v6)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"detailText" withStringValue:v6 toString:v7];
  }

  if ([(TKPickerSelectableItem *)self showsCheckmark])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"showsCheckmark" withBoolValue:1 toString:v7];
  }

  if ([(TKPickerSelectableItem *)self showsDisclosureIndicator])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"showsDisclosureIndicator" withBoolValue:1 toString:v7];
  }

  if ([(TKPickerSelectableItem *)self shouldPreventSelection])
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"shouldPreventSelection" withBoolValue:1 toString:v7];
  }
}

@end