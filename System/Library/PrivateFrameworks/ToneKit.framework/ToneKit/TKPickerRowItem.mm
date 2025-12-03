@interface TKPickerRowItem
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKPickerRowItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
        v10.receiver = self;
        v10.super_class = TKPickerRowItem;
        v8 = [(TKPickerItem *)&v10 isEqual:v7]&& self->_row == v7->_row && self->_wantsIndentedLayout == v7->_wantsIndentedLayout;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TKPickerRowItem;
    v8 = [(TKPickerItem *)&v11 isEqual:equalCopy];
  }

  return v8;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v6.receiver = self;
    v6.super_class = TKPickerRowItem;
    return self->_row ^ [(TKPickerItem *)&v6 hash]^ self->_wantsIndentedLayout;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TKPickerRowItem;
    return [(TKPickerItem *)&v7 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  stringCopy = string;
  v5.receiver = self;
  v5.super_class = TKPickerRowItem;
  [(TKPickerItem *)&v5 _appendDescriptionOfAttributesToString:stringCopy];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"row" withIntegerValue:self->_row toString:stringCopy];
  if (self->_wantsIndentedLayout)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"wantsIndentedLayout" withBoolValue:1 toString:stringCopy];
  }
}

@end