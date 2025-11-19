@interface REAccessoryDescription
- (BOOL)isEqual:(id)a3;
- (REAccessoryDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REAccessoryDescription

- (REAccessoryDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = REAccessoryDescription;
  v5 = [(REAccessoryDescription *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v6;

    v8 = [v4 decodeObjectForKey:@"_textProvider"];
    textProvider = v5->_textProvider;
    v5->_textProvider = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  backgroundColor = self->_backgroundColor;
  v5 = a3;
  [v5 encodeObject:backgroundColor forKey:@"_backgroundColor"];
  [v5 encodeObject:self->_textProvider forKey:@"_textProvider"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[REAccessoryDescription allocWithZone:?]];
  objc_storeStrong(&v4->_backgroundColor, self->_backgroundColor);
  objc_storeStrong(&v4->_textProvider, self->_textProvider);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[2];
    v7 = self->_textProvider;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(CLKTextProvider *)v7 isEqual:v6];
    }

    v10 = v5[1];
    v11 = self->_backgroundColor;
    v12 = v11;
    if (v11 != v10)
    {
      v9 &= [(UIColor *)v11 isEqual:v10];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REAccessoryDescription;
    LOBYTE(v9) = [(REAccessoryDescription *)&v14 isEqual:v4];
  }

  return v9;
}

@end