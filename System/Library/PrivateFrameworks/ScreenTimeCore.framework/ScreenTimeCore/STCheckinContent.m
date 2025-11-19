@interface STCheckinContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCheckinContent:(id)a3;
- (NSString)description;
- (STCheckinContent)initWithCoder:(id)a3;
- (STCheckinContent)initWithUserID:(id)a3 deviceID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCheckinContent

- (STCheckinContent)initWithUserID:(id)a3 deviceID:(id)a4
{
  v13.receiver = self;
  v13.super_class = STCheckinContent;
  v5 = a4;
  v6 = a3;
  v7 = [(STCheckinContent *)&v13 init];
  v8 = [v6 copy];

  userID = v7->_userID;
  v7->_userID = v8;

  v10 = [v5 copy];
  deviceID = v7->_deviceID;
  v7->_deviceID = v10;

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(STCheckinContent *)self userID];
  v5 = [(STCheckinContent *)self deviceID];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { User: %@, Device: %@, Type: %ld }>", v3, v4, v5, [objc_opt_class() contentType]);

  return v6;
}

- (STCheckinContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];

  v7 = [(STCheckinContent *)self initWithUserID:v5 deviceID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STCheckinContent *)self userID];
  [v4 encodeObject:v5 forKey:@"userID"];

  v6 = [(STCheckinContent *)self deviceID];
  [v4 encodeObject:v6 forKey:@"deviceID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  userID = self->_userID;
  deviceID = self->_deviceID;

  return [v4 initWithUserID:userID deviceID:deviceID];
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
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCheckinContent *)self isEqualToCheckinContent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCheckinContent:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STCheckinContent *)self userID];
    v6 = [(STCheckinContent *)v4 userID];
    if ([v5 isEqualToUserID:v6])
    {
      v7 = [(STCheckinContent *)self deviceID];
      v8 = [(STCheckinContent *)v4 deviceID];
      v9 = [v7 isEqualToDeviceID:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(STCheckinContent *)self userID];
  v4 = [v3 hash];
  v5 = [(STCheckinContent *)self deviceID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end