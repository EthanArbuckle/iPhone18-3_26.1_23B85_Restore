@interface TKPickerRowItem
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)a3;
@end

@implementation TKPickerRowItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6)
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
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
    v8 = [(TKPickerItem *)&v11 isEqual:v4];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
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

- (void)_appendDescriptionOfAttributesToString:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TKPickerRowItem;
  [(TKPickerItem *)&v5 _appendDescriptionOfAttributesToString:v4];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"row" withIntegerValue:self->_row toString:v4];
  if (self->_wantsIndentedLayout)
  {
    [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"wantsIndentedLayout" withBoolValue:1 toString:v4];
  }
}

@end