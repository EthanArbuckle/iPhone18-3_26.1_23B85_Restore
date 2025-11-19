@interface _UIActivityItemCustomizationGroup
- (BOOL)isEqual:(id)a3;
- (_UIActivityItemCustomizationGroup)initWithBSXPCCoder:(id)a3;
- (_UIActivityItemCustomizationGroup)initWithCoder:(id)a3;
- (id)_initGroupWithName:(id)a3 identifier:(id)a4 customizations:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityItemCustomizationGroup

- (id)_initGroupWithName:(id)a3 identifier:(id)a4 customizations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _UIActivityItemCustomizationGroup;
  v11 = [(_UIActivityItemCustomizationGroup *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [v10 copy];
    customizations = v11->_customizations;
    v11->_customizations = v16;

    v18 = v11;
  }

  return v11;
}

- (_UIActivityItemCustomizationGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIActivityItemCustomizationGroup;
  v5 = [(_UIActivityItemCustomizationGroup *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customizations"];
    customizations = v5->_customizations;
    v5->_customizations = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityItemCustomizationGroup *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(_UIActivityItemCustomizationGroup *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(_UIActivityItemCustomizationGroup *)self customizations];
  [v4 encodeObject:v7 forKey:@"customizations"];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityItemCustomizationGroup *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(_UIActivityItemCustomizationGroup *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(_UIActivityItemCustomizationGroup *)self customizations];
  [v4 encodeCollection:v7 forKey:@"customizations"];
}

- (_UIActivityItemCustomizationGroup)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = objc_opt_class();
  v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"customizations"];

  v9 = [(_UIActivityItemCustomizationGroup *)self _initGroupWithName:v5 identifier:v6 customizations:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UIActivityItemCustomizationGroup *)v5 name];
      v7 = [(_UIActivityItemCustomizationGroup *)self name];
      v8 = v6;
      v9 = v7;
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

      v13 = [(_UIActivityItemCustomizationGroup *)v5 identifier];
      v14 = [(_UIActivityItemCustomizationGroup *)self identifier];
      v15 = v13;
      v16 = v14;
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

      v19 = [(_UIActivityItemCustomizationGroup *)v5 customizations];
      v20 = [(_UIActivityItemCustomizationGroup *)self customizations];
      v21 = v19;
      v22 = v20;
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