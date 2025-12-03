@interface TKPickerItem
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributeNamed:(id)named withBoolValue:(BOOL)value toString:(id)string;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKPickerItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_section == equalCopy->_section;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TKPickerItem;
    v7 = [(TKPickerItem *)&v9 isEqual:equalCopy];
  }

  return v7;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
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

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  stringCopy = string;
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"section" withIntegerValue:[(TKPickerItem *)self section] toString:stringCopy];
  if ([(TKPickerItem *)self conformsToProtocol:&unk_282E619B8])
  {
    numberOfChildren = [(TKPickerItem *)self numberOfChildren];
    if (numberOfChildren >= 1)
    {
      [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"numberOfChildren" withIntegerValue:numberOfChildren toString:stringCopy];
    }
  }
}

- (void)_appendDescriptionOfAttributeNamed:(id)named withBoolValue:(BOOL)value toString:(id)string
{
  v5 = @"NO";
  if (value)
  {
    v5 = @"YES";
  }

  [string appendFormat:@"; %@ = %@", named, v5];
}

@end