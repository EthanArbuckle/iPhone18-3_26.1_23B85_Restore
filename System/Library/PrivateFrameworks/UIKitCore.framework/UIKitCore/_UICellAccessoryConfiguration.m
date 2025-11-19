@interface _UICellAccessoryConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)_identifier;
- (_UICellAccessoryConfiguration)init;
- (_UICellAccessoryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_systemType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICellAccessoryConfiguration

- (_UICellAccessoryConfiguration)init
{
  v9.receiver = self;
  v9.super_class = _UICellAccessoryConfiguration;
  v3 = [(_UICellAccessoryConfiguration *)&v9 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 handleFailureInMethod:a2 object:v3 file:@"_UICellAccessoryConfiguration.m" lineNumber:24 description:{@"%@ is an abstract base class and should not be instantiated directly.", v8}];
    }

    v3->_usesDefaultLayoutWidth = 1;
  }

  return v3;
}

- (int64_t)_systemType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSString)_identifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1EFB14550;
}

- (_UICellAccessoryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UICellAccessoryConfiguration;
  v5 = [(_UICellAccessoryConfiguration *)&v11 init];
  if (v5)
  {
    v5->_usesDefaultLayoutWidth = [v4 decodeBoolForKey:@"usesDefaultLayoutWidth"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  usesDefaultLayoutWidth = self->_usesDefaultLayoutWidth;
  v5 = a3;
  [v5 encodeBool:usesDefaultLayoutWidth forKey:@"usesDefaultLayoutWidth"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_usesDefaultLayoutWidth;
    objc_storeStrong((v4 + 16), self->_tintColor);
    objc_storeStrong(v5 + 3, self->_backgroundColor);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (self->_usesDefaultLayoutWidth != v6->_usesDefaultLayoutWidth)
        {
          LOBYTE(v12) = 0;
LABEL_20:

          goto LABEL_21;
        }

        tintColor = v6->_tintColor;
        v9 = self->_tintColor;
        v10 = tintColor;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          LOBYTE(v12) = 0;
          if (!v9 || !v10)
          {
LABEL_19:

            goto LABEL_20;
          }

          v12 = [(UIColor *)v9 isEqual:v10];

          if (!v12)
          {
            goto LABEL_20;
          }
        }

        backgroundColor = self->_backgroundColor;
        v14 = v7->_backgroundColor;
        v9 = backgroundColor;
        v15 = v14;
        v11 = v15;
        if (v9 == v15)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v15)
          {
            LOBYTE(v12) = [(UIColor *)v9 isEqual:v15];
          }
        }

        goto LABEL_19;
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_21:

  return v12;
}

@end