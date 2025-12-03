@interface _UIActivityItemCustomizationGroup
- (BOOL)isEqual:(id)equal;
- (_UIActivityItemCustomizationGroup)initWithBSXPCCoder:(id)coder;
- (_UIActivityItemCustomizationGroup)initWithCoder:(id)coder;
- (id)_initGroupWithName:(id)name identifier:(id)identifier customizations:(id)customizations;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityItemCustomizationGroup

- (id)_initGroupWithName:(id)name identifier:(id)identifier customizations:(id)customizations
{
  nameCopy = name;
  identifierCopy = identifier;
  customizationsCopy = customizations;
  v20.receiver = self;
  v20.super_class = _UIActivityItemCustomizationGroup;
  v11 = [(_UIActivityItemCustomizationGroup *)&v20 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [customizationsCopy copy];
    customizations = v11->_customizations;
    v11->_customizations = v16;

    v18 = v11;
  }

  return v11;
}

- (_UIActivityItemCustomizationGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIActivityItemCustomizationGroup;
  v5 = [(_UIActivityItemCustomizationGroup *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customizations"];
    customizations = v5->_customizations;
    v5->_customizations = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(_UIActivityItemCustomizationGroup *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(_UIActivityItemCustomizationGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  customizations = [(_UIActivityItemCustomizationGroup *)self customizations];
  [coderCopy encodeObject:customizations forKey:@"customizations"];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  name = [(_UIActivityItemCustomizationGroup *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(_UIActivityItemCustomizationGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  customizations = [(_UIActivityItemCustomizationGroup *)self customizations];
  [coderCopy encodeCollection:customizations forKey:@"customizations"];
}

- (_UIActivityItemCustomizationGroup)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"customizations"];

  v9 = [(_UIActivityItemCustomizationGroup *)self _initGroupWithName:v5 identifier:v6 customizations:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(_UIActivityItemCustomizationGroup *)v5 name];
      name2 = [(_UIActivityItemCustomizationGroup *)self name];
      v8 = name;
      v9 = name2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_24;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      identifier = [(_UIActivityItemCustomizationGroup *)v5 identifier];
      identifier2 = [(_UIActivityItemCustomizationGroup *)self identifier];
      v15 = identifier;
      v16 = identifier2;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v23 = v16;
          v21 = v15;
LABEL_23:

          goto LABEL_24;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          v12 = 0;
LABEL_24:

          goto LABEL_25;
        }
      }

      customizations = [(_UIActivityItemCustomizationGroup *)v5 customizations];
      customizations2 = [(_UIActivityItemCustomizationGroup *)self customizations];
      v21 = customizations;
      v22 = customizations2;
      v23 = v22;
      if (v21 == v22)
      {
        v12 = 1;
      }

      else if ((v21 != 0) == (v22 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v21 isEqual:v22];
      }

      goto LABEL_23;
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

@end