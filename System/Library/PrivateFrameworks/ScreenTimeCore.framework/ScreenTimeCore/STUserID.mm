@interface STUserID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserID:(id)d;
- (STUserID)initWithCoder:(id)coder;
- (STUserID)initWithDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUserID

- (STUserID)initWithDSID:(id)d
{
  v8.receiver = self;
  v8.super_class = STUserID;
  dCopy = d;
  v4 = [(STUserID *)&v8 init];
  v5 = [dCopy copy];

  dsid = v4->_dsid;
  v4->_dsid = v5;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dsid = [(STUserID *)self dsid];
  v6 = [v3 stringWithFormat:@"<%@ { DSID: %@ }>", v4, dsid];

  return v6;
}

- (STUserID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];

  v6 = [(STUserID *)self initWithDSID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dsid = [(STUserID *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"dsid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dsid = self->_dsid;

  return [v4 initWithDSID:dsid];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STUserID *)self isEqualToUserID:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToUserID:(id)d
{
  if (d == self)
  {
    return 1;
  }

  dCopy = d;
  dsid = [(STUserID *)self dsid];
  dsid2 = [dCopy dsid];

  LOBYTE(dCopy) = [dsid isEqualToNumber:dsid2];
  return dCopy;
}

- (unint64_t)hash
{
  dsid = [(STUserID *)self dsid];
  v3 = [dsid hash];

  return v3;
}

@end