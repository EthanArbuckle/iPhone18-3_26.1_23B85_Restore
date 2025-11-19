@interface ISOOriginInfo
- (ISOOriginInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISOOriginInfo

- (id)copyWithZone:(_NSZone *)a3
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
  v9 = [(NSDictionary *)v8 copyWithZone:a3];
  v10 = v6->_details;
  v6->_details = v9;

  return v6;
}

- (ISOOriginInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISOOriginInfo);
  v5->_category = [v4 decodeIntegerForKey:@"cat"];
  v5->_type = [v4 decodeIntegerForKey:@"type"];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [NSSet setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"details"];

  details = v5->_details;
  v5->_details = v8;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    category = self->_category;
    v5 = a3;
    [v5 encodeInteger:category forKey:@"cat"];
    [v5 encodeInteger:self->_type forKey:@"type"];
    details = self->_details;
  }

  else
  {
    v7 = a3;
    [v7 encodeInteger:0 forKey:@"cat"];
    [v7 encodeInteger:0 forKey:@"type"];
    details = 0;
  }

  [a3 encodeObject:details forKey:@"details"];
}

@end