@interface UICellAccessoryLabel
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryLabel)initWithCoder:(NSCoder *)coder;
- (UICellAccessoryLabel)initWithText:(NSString *)text;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICellAccessoryLabel

- (UICellAccessoryLabel)initWithText:(NSString *)text
{
  v5 = text;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:736 description:{@"Invalid parameter not satisfying: %@", @"text != nil"}];
  }

  v13.receiver = self;
  v13.super_class = UICellAccessoryLabel;
  v6 = [(UICellAccessory *)&v13 init];
  if (v6)
  {
    v7 = [(NSString *)v5 copy];
    v8 = v6->_text;
    v6->_text = v7;

    [(UICellAccessory *)v6 setReservedLayoutWidth:0.0];
    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    font = v6->_font;
    v6->_font = v9;

    v6->_adjustsFontForContentSizeCategory = 1;
  }

  return v6;
}

- (UICellAccessoryLabel)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = UICellAccessoryLabel;
    v6 = [(UICellAccessory *)&v11 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_text, v5);
      v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
      font = v7->_font;
      v7->_font = v8;

      v7->_adjustsFontForContentSizeCategory = [(NSCoder *)v4 decodeBoolForKey:@"adjustsFontForContentSizeCategory"];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryLabel;
  coderCopy = coder;
  [(UICellAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"text", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_font forKey:@"font"];
  [coderCopy encodeBool:self->_adjustsFontForContentSizeCategory forKey:@"adjustsFontForContentSizeCategory"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = UICellAccessoryLabel;
  v4 = [(UICellAccessory *)&v8 copyWithZone:zone];
  if (v4)
  {
    v5 = [(NSString *)self->_text copy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    objc_storeStrong(v4 + 9, self->_font);
    *(v4 + 56) = self->_adjustsFontForContentSizeCategory;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = UICellAccessoryLabel;
  if ([(UICellAccessory *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5[8];
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

    v13 = v5[9];
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
      v12 = self->_adjustsFontForContentSizeCategory == *(v5 + 56);
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

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from
{
  v4.receiver = self;
  v4.super_class = UICellAccessoryLabel;
  return [(UICellAccessory *)&v4 _canDirectlyUpdateExistingAccessoryViewFrom:from];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = UICellAccessoryLabel;
  v3 = [(UICellAccessory *)&v6 hash];
  v4 = [(NSString *)self->_text hash]^ v3;
  return v4 ^ [(UIFont *)self->_font hash]^ self->_adjustsFontForContentSizeCategory;
}

@end