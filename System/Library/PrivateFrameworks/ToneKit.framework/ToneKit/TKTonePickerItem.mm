@interface TKTonePickerItem
- (BOOL)isEqual:(id)equal;
- (TKTonePickerSectionItem)parentSectionItem;
- (id)childItemAtIndex:(int64_t)index;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKTonePickerItem

- (id)childItemAtIndex:(int64_t)index
{
  if ([(NSArray *)self->_childrenToneClassicsPickerItems count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_childrenToneClassicsPickerItems objectAtIndex:index];
  }

  return v5;
}

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
        v19.receiver = self;
        v19.super_class = TKTonePickerItem;
        if (![(TKPickerSelectableItem *)&v19 isEqual:v7])
        {
          goto LABEL_31;
        }

        WeakRetained = objc_loadWeakRetained(&self->_parentSectionItem);
        v9 = objc_loadWeakRetained(&v7->_parentSectionItem);
        v10 = WeakRetained;
        v11 = v9;
        v12 = v11;
        if (!(v10 | v11))
        {
          goto LABEL_14;
        }

        if (!v10 || !v11)
        {

          goto LABEL_30;
        }

        if (v10 == v11)
        {
LABEL_14:
        }

        else
        {
          v13 = [v10 isEqual:v11];

          if ((v13 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        childrenToneClassicsPickerItems = v7->_childrenToneClassicsPickerItems;
        v10 = self->_childrenToneClassicsPickerItems;
        v16 = childrenToneClassicsPickerItems;
        v12 = v16;
        if (!(v10 | v16))
        {
          goto LABEL_21;
        }

        if (v10 && v16)
        {
          if (v10 != v16)
          {
            v17 = [v10 isEqual:v16];

            if (!v17)
            {
              goto LABEL_31;
            }

            goto LABEL_22;
          }

LABEL_21:

LABEL_22:
          if (self->_itemKind == v7->_itemKind && self->_needsRoomForCheckmark == v7->_needsRoomForCheckmark && self->_needsActivityIndicator == v7->_needsActivityIndicator && self->_needsSwitch == v7->_needsSwitch && self->_switchedOn == v7->_switchedOn && self->_needsDownloadProgress == v7->_needsDownloadProgress)
          {
            v14 = llroundf(self->_downloadProgress * 8388600.0) == llroundf(v7->_downloadProgress * 8388600.0);
LABEL_32:

            goto LABEL_33;
          }

LABEL_31:
          v14 = 0;
          goto LABEL_32;
        }

LABEL_30:

        goto LABEL_31;
      }

      v14 = 0;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TKTonePickerItem;
    v14 = [(TKPickerSelectableItem *)&v20 isEqual:equalCopy];
  }

LABEL_33:

  return v14;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v9.receiver = self;
    v9.super_class = TKTonePickerItem;
    v5 = [(TKPickerSelectableItem *)&v9 hash];
    WeakRetained = objc_loadWeakRetained(&self->_parentSectionItem);
    v7 = [WeakRetained hash] ^ v5;

    return v7 ^ self->_itemKind ^ [(NSArray *)self->_childrenToneClassicsPickerItems hash]^ self->_needsRoomForCheckmark ^ self->_needsActivityIndicator ^ self->_needsSwitch ^ self->_switchedOn ^ self->_needsDownloadProgress ^ llroundf(self->_downloadProgress * 8388600.0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TKTonePickerItem;
    return [(TKPickerSelectableItem *)&v10 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  stringCopy = string;
  v6.receiver = self;
  v6.super_class = TKTonePickerItem;
  [(TKPickerSelectableItem *)&v6 _appendDescriptionOfAttributesToString:stringCopy];
  v5 = [(TKTonePickerItem *)self itemKind]- 1;
  if (v5 <= 3)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"itemKind" withStringValue:off_278316850[v5] toString:stringCopy];
  }
}

- (TKTonePickerSectionItem)parentSectionItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSectionItem);

  return WeakRetained;
}

@end