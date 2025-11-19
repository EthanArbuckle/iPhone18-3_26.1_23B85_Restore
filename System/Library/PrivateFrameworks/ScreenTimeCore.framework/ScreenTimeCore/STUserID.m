@interface STUserID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserID:(id)a3;
- (STUserID)initWithCoder:(id)a3;
- (STUserID)initWithDSID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUserID

- (STUserID)initWithDSID:(id)a3
{
  v8.receiver = self;
  v8.super_class = STUserID;
  v3 = a3;
  v4 = [(STUserID *)&v8 init];
  v5 = [v3 copy];

  dsid = v4->_dsid;
  v4->_dsid = v5;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STUserID *)self dsid];
  v6 = [v3 stringWithFormat:@"<%@ { DSID: %@ }>", v4, v5];

  return v6;
}

- (STUserID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];

  v6 = [(STUserID *)self initWithDSID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STUserID *)self dsid];
  [v4 encodeObject:v5 forKey:@"dsid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  dsid = self->_dsid;

  return [v4 initWithDSID:dsid];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STUserID *)self isEqualToUserID:v4];
  }

  return v5;
}

- (BOOL)isEqualToUserID:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(STUserID *)self dsid];
  v6 = [v4 dsid];

  LOBYTE(v4) = [v5 isEqualToNumber:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(STUserID *)self dsid];
  v3 = [v2 hash];

  return v3;
}

@end