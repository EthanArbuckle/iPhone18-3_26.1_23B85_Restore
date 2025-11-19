@interface TKPickerItem
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributeNamed:(id)a3 withBoolValue:(BOOL)a4 toString:(id)a5;
- (void)_appendDescriptionOfAttributesToString:(id)a3;
@end

@implementation TKPickerItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6)
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_section == v4->_section;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TKPickerItem;
    v7 = [(TKPickerItem *)&v9 isEqual:v4];
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
  {
    return self->_section;
  }

  v6.receiver = self;
  v6.super_class = TKPickerItem;
  return [(TKPickerItem *)&v6 hash];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [(TKPickerItem *)self _appendDescriptionOfAttributesToString:v6];
  [v6 appendString:@">"];

  return v6;
}

- (void)_appendDescriptionOfAttributesToString:(id)a3
{
  v5 = a3;
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"section" withIntegerValue:[(TKPickerItem *)self section] toString:v5];
  if ([(TKPickerItem *)self conformsToProtocol:&unk_282E619B8])
  {
    v4 = [(TKPickerItem *)self numberOfChildren];
    if (v4 >= 1)
    {
      [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"numberOfChildren" withIntegerValue:v4 toString:v5];
    }
  }
}

- (void)_appendDescriptionOfAttributeNamed:(id)a3 withBoolValue:(BOOL)a4 toString:(id)a5
{
  v5 = @"NO";
  if (a4)
  {
    v5 = @"YES";
  }

  [a5 appendFormat:@"; %@ = %@", a3, v5];
}

@end