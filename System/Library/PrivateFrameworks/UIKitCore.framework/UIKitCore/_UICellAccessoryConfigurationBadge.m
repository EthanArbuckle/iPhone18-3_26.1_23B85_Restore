@interface _UICellAccessoryConfigurationBadge
- (BOOL)isEqual:(id)a3;
- (_UICellAccessoryConfigurationBadge)initWithCoder:(id)a3;
- (_UICellAccessoryConfigurationBadge)initWithText:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICellAccessoryConfigurationBadge

- (_UICellAccessoryConfigurationBadge)initWithText:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICellAccessoryConfiguration.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"text != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UICellAccessoryConfigurationBadge;
  v6 = [(_UICellAccessoryConfiguration *)&v13 init];
  if (v6)
  {
    v7 = [v5 copy];
    text = v6->_text;
    v6->_text = v7;

    [(_UICellAccessoryConfiguration *)v6 setUsesDefaultLayoutWidth:0];
    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    font = v6->_font;
    v6->_font = v9;

    v6->_adjustsFontForContentSizeCategory = 1;
  }

  return v6;
}

- (_UICellAccessoryConfigurationBadge)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = _UICellAccessoryConfigurationBadge;
    v6 = [(_UICellAccessoryConfiguration *)&v11 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_text, v5);
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
      font = v7->_font;
      v7->_font = v8;

      v7->_adjustsFontForContentSizeCategory = [v4 decodeBoolForKey:@"adjustsFontForContentSizeCategory"];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationBadge;
  v4 = a3;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_text forKey:{@"text", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_font forKey:@"font"];
  [v4 encodeBool:self->_adjustsFontForContentSizeCategory forKey:@"adjustsFontForContentSizeCategory"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UICellAccessoryConfigurationBadge;
  v4 = [(_UICellAccessoryConfiguration *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 5);
    *(v4 + 5) = v5;

    objc_storeStrong(v4 + 6, self->_font);
    *(v4 + 32) = self->_adjustsFontForContentSizeCategory;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UICellAccessoryConfigurationBadge;
  if ([(_UICellAccessoryConfiguration *)&v18 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[5];
    v7 = self->_text;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_17;
      }

      v11 = [(UIFont *)v7 isEqual:v8];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = v5[6];
    v7 = self->_font;
    v14 = v13;
    v9 = v14;
    if (v7 == v14)
    {

      goto LABEL_21;
    }

    if (v7)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = [(UIFont *)v7 isEqual:v14];

      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_21:
      v12 = self->_adjustsFontForContentSizeCategory == *(v5 + 32);
      goto LABEL_22;
    }

LABEL_17:

LABEL_18:
    v12 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = _UICellAccessoryConfigurationBadge;
  v3 = [(_UICellAccessoryConfiguration *)&v6 hash];
  v4 = [(NSString *)self->_text hash]^ v3;
  return v4 ^ [(UIFont *)self->_font hash]^ self->_adjustsFontForContentSizeCategory;
}

@end