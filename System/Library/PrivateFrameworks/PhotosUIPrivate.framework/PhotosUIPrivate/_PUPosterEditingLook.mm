@interface _PUPosterEditingLook
- (NSString)description;
- (_PUPosterEditingLook)initWithIdentifier:(id)identifier displayName:(id)name;
- (_PUPosterEditingLook)initWithIdentifier:(id)identifier displayName:(id)name pu_timeAppearance:(unint64_t)appearance pu_timeFontIdentifier:(id)fontIdentifier pu_timeFontColor:(id)color;
@end

@implementation _PUPosterEditingLook

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(_PUPosterEditingLook *)self identifier];
  displayName = [(_PUPosterEditingLook *)self displayName];
  pu_timeAppearance = [(_PUPosterEditingLook *)self pu_timeAppearance];
  pu_timeFontIdentifier = [(_PUPosterEditingLook *)self pu_timeFontIdentifier];
  pu_timeFontColor = [(_PUPosterEditingLook *)self pu_timeFontColor];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier = %@, displayName = %@, timeAppearance = %lu, fontIdentifier = %@, fontColor = %@>", v4, self, identifier, displayName, pu_timeAppearance, pu_timeFontIdentifier, pu_timeFontColor];;

  return v10;
}

- (_PUPosterEditingLook)initWithIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = _PUPosterEditingLook;
  v8 = [(_PUPosterEditingLook *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;
  }

  return v8;
}

- (_PUPosterEditingLook)initWithIdentifier:(id)identifier displayName:(id)name pu_timeAppearance:(unint64_t)appearance pu_timeFontIdentifier:(id)fontIdentifier pu_timeFontColor:(id)color
{
  fontIdentifierCopy = fontIdentifier;
  colorCopy = color;
  v15 = [(_PUPosterEditingLook *)self initWithIdentifier:identifier displayName:name];
  v16 = v15;
  if (v15)
  {
    v15->_pu_timeAppearance = appearance;
    objc_storeStrong(&v15->_pu_timeFontIdentifier, fontIdentifier);
    objc_storeStrong(&v16->_pu_timeFontColor, color);
  }

  return v16;
}

@end