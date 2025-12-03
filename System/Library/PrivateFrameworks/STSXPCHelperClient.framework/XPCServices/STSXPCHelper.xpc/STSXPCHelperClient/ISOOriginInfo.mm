@interface ISOOriginInfo
- (ISOOriginInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISOOriginInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ISOOriginInfo allocWithZone:](ISOOriginInfo init];
  v6 = v5;
  if (self)
  {
    v5->_category = self->_category;
    v5->_type = self->_type;
    details = self->_details;
  }

  else
  {
    details = 0;
    v5->_category = 0;
    v5->_type = 0;
  }

  v8 = details;
  v9 = [(NSDictionary *)v8 copyWithZone:zone];
  v10 = v6->_details;
  v6->_details = v9;

  return v6;
}

- (ISOOriginInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(ISOOriginInfo);
  v5->_category = [coderCopy decodeIntegerForKey:@"cat"];
  v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [NSSet setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"details"];

  details = v5->_details;
  v5->_details = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    category = self->_category;
    coderCopy = coder;
    [coderCopy encodeInteger:category forKey:@"cat"];
    [coderCopy encodeInteger:self->_type forKey:@"type"];
    details = self->_details;
  }

  else
  {
    coderCopy2 = coder;
    [coderCopy2 encodeInteger:0 forKey:@"cat"];
    [coderCopy2 encodeInteger:0 forKey:@"type"];
    details = 0;
  }

  [coder encodeObject:details forKey:@"details"];
}

@end