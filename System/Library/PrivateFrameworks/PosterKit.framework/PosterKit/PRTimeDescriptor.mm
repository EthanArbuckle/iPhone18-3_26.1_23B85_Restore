@interface PRTimeDescriptor
- (BOOL)isEqual:(id)a3;
- (PRTimeDescriptor)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRTimeDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && [(UIFont *)self->_font isEqual:v4->_font])
  {
    v6 = [(UIColor *)self->_color isEqual:v5->_color];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  font = self->_font;
  v5 = a3;
  [v5 encodeObject:font forKey:@"_font"];
  [v5 encodeObject:self->_color forKey:@"_color"];
}

- (PRTimeDescriptor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRTimeDescriptor *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_font"];
    font = v5->_font;
    v5->_font = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_color"];
    color = v5->_color;
    v5->_color = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PRTimeDescriptor);
  objc_storeStrong(&v4->_font, self->_font);
  objc_storeStrong(&v4->_color, self->_color);
  return v4;
}

@end