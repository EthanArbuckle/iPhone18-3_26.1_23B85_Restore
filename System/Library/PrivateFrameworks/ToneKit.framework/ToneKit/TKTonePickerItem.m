@interface TKTonePickerItem
- (BOOL)isEqual:(id)a3;
- (TKTonePickerSectionItem)parentSectionItem;
- (id)childItemAtIndex:(int64_t)a3;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)a3;
@end

@implementation TKTonePickerItem

- (id)childItemAtIndex:(int64_t)a3
{
  if ([(NSArray *)self->_childrenToneClassicsPickerItems count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_childrenToneClassicsPickerItems objectAtIndex:a3];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6)
  {
    if (self == v4)
    {
      v14 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
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
    v14 = [(TKPickerSelectableItem *)&v20 isEqual:v4];
  }

LABEL_33:

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
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

- (void)_appendDescriptionOfAttributesToString:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TKTonePickerItem;
  [(TKPickerSelectableItem *)&v6 _appendDescriptionOfAttributesToString:v4];
  v5 = [(TKTonePickerItem *)self itemKind]- 1;
  if (v5 <= 3)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"itemKind" withStringValue:off_278316850[v5] toString:v4];
  }
}

- (TKTonePickerSectionItem)parentSectionItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSectionItem);

  return WeakRetained;
}

@end