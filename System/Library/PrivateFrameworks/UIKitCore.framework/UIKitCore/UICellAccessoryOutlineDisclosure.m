@interface UICellAccessoryOutlineDisclosure
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UICellAccessoryOutlineDisclosure)init;
- (UICellAccessoryOutlineDisclosure)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UICellAccessoryOutlineDisclosure

- (UICellAccessoryOutlineDisclosure)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryOutlineDisclosure;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setReservedLayoutWidth:0.0];
  }

  return v3;
}

- (UICellAccessoryOutlineDisclosure)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UICellAccessoryOutlineDisclosure;
  v5 = [(UICellAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customImage"];
    customImage = v5->__customImage;
    v5->__customImage = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryOutlineDisclosure;
  v4 = a3;
  [(UICellAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_style forKey:{@"style", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->__customImage forKey:@"customImage"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = UICellAccessoryOutlineDisclosure;
  v4 = [(UICellAccessory *)&v9 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[7] = self->_style;
    v6 = [self->_actionHandler copy];
    v7 = v5[8];
    v5[8] = v6;

    objc_storeStrong(v5 + 9, self->__customImage);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UICellAccessoryOutlineDisclosure;
  if ([(UICellAccessory *)&v14 isEqual:v4])
  {
    v5 = v4;
    v6 = v5;
    if (self->_style == *(v5 + 7) && self->_actionHandler == *(v5 + 8))
    {
      v9 = *(v5 + 9);
      v10 = self->__customImage;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v7 = 1;
      }

      else
      {
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v7 = 0;
        }

        else
        {
          v7 = [(UIImage *)v10 isEqual:v11];
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICellAccessoryOutlineDisclosure;
  if ([(UICellAccessory *)&v7 _canDirectlyUpdateExistingAccessoryViewFrom:v4])
  {
    v5 = self->_style == v4[7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end