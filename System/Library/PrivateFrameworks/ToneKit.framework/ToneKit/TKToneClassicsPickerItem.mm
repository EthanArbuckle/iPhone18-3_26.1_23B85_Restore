@interface TKToneClassicsPickerItem
- (BOOL)isEqual:(id)equal;
- (TKTonePickerItem)parentItem;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKToneClassicsPickerItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      v14 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        v16.receiver = self;
        v16.super_class = TKToneClassicsPickerItem;
        if ([(TKTonePickerItem *)&v16 isEqual:v7])
        {
          WeakRetained = objc_loadWeakRetained(&self->_parentItem);
          v9 = objc_loadWeakRetained(&v7->_parentItem);
          v10 = WeakRetained;
          v11 = v9;
          v12 = v11;
          if (!(v10 | v11))
          {
            goto LABEL_14;
          }

          if (v10 && v11)
          {
            if (v10 != v11)
            {
              v13 = [v10 isEqual:v11];

              if ((v13 & 1) == 0)
              {
                goto LABEL_17;
              }

LABEL_15:
              v14 = self->_classicToneIndex == v7->_classicToneIndex;
LABEL_18:

              goto LABEL_19;
            }

LABEL_14:

            goto LABEL_15;
          }
        }

LABEL_17:
        v14 = 0;
        goto LABEL_18;
      }

      v14 = 0;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TKToneClassicsPickerItem;
    v14 = [(TKTonePickerItem *)&v17 isEqual:equalCopy];
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v9.receiver = self;
    v9.super_class = TKToneClassicsPickerItem;
    v5 = [(TKTonePickerItem *)&v9 hash];
    WeakRetained = objc_loadWeakRetained(&self->_parentItem);
    v7 = [WeakRetained hash] ^ v5;

    return v7 ^ self->_classicToneIndex;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TKToneClassicsPickerItem;
    return [(TKTonePickerItem *)&v10 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  v5.receiver = self;
  v5.super_class = TKToneClassicsPickerItem;
  stringCopy = string;
  [(TKTonePickerItem *)&v5 _appendDescriptionOfAttributesToString:stringCopy];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"classicToneIndex" withIntegerValue:[(TKToneClassicsPickerItem *)self classicToneIndex:v5.receiver] toString:stringCopy];
}

- (TKTonePickerItem)parentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);

  return WeakRetained;
}

@end