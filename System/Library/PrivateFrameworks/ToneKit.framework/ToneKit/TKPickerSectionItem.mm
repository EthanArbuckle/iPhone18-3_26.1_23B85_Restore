@interface TKPickerSectionItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKPickerSectionItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        v17.receiver = self;
        v17.super_class = TKPickerSectionItem;
        if (![(TKPickerItem *)&v17 isEqual:v7])
        {
          LOBYTE(v12) = 0;
LABEL_23:

          goto LABEL_24;
        }

        text = v7->_text;
        v9 = self->_text;
        v10 = text;
        v11 = v10;
        if (!(v9 | v10))
        {
          goto LABEL_15;
        }

        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        if (v9 == v10)
        {
LABEL_15:
        }

        else
        {
          v12 = [(NSString *)v9 isEqualToString:v10];

          if (!v12)
          {
            goto LABEL_23;
          }
        }

        footerText = self->_footerText;
        v14 = v7->_footerText;
        v9 = footerText;
        v15 = v14;
        v11 = v15;
        if (!(v9 | v15))
        {
          goto LABEL_21;
        }

        LOBYTE(v12) = 0;
        if (!v9 || !v15)
        {
          goto LABEL_22;
        }

        if (v9 == v15)
        {
LABEL_21:
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = [(NSString *)v9 isEqualToString:v15];
        }

LABEL_22:

        goto LABEL_23;
      }

      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TKPickerSectionItem;
    LOBYTE(v12) = [(TKPickerItem *)&v18 isEqual:equalCopy];
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v8.receiver = self;
    v8.super_class = TKPickerSectionItem;
    v5 = [(TKPickerItem *)&v8 hash];
    v6 = [(NSString *)self->_text hash]^ v5;
    return v6 ^ [(NSString *)self->_footerText hash];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TKPickerSectionItem;
    return [(TKPickerItem *)&v9 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  v7.receiver = self;
  v7.super_class = TKPickerSectionItem;
  stringCopy = string;
  [(TKPickerItem *)&v7 _appendDescriptionOfAttributesToString:stringCopy];
  v5 = [(TKPickerSectionItem *)self text:v7.receiver];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"text" withStringValue:v5 toString:stringCopy];

  footerText = [(TKPickerSectionItem *)self footerText];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"footerText" withStringValue:footerText toString:stringCopy];
}

@end