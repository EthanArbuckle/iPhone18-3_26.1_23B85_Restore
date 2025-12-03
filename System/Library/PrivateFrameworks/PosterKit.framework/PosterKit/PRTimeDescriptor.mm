@interface PRTimeDescriptor
- (BOOL)isEqual:(id)equal;
- (PRTimeDescriptor)initWithBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRTimeDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && [(UIFont *)self->_font isEqual:equalCopy->_font])
  {
    v6 = [(UIColor *)self->_color isEqual:v5->_color];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  font = self->_font;
  coderCopy = coder;
  [coderCopy encodeObject:font forKey:@"_font"];
  [coderCopy encodeObject:self->_color forKey:@"_color"];
}

- (PRTimeDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PRTimeDescriptor *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_font"];
    font = v5->_font;
    v5->_font = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_color"];
    color = v5->_color;
    v5->_color = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PRTimeDescriptor);
  objc_storeStrong(&v4->_font, self->_font);
  objc_storeStrong(&v4->_color, self->_color);
  return v4;
}

@end