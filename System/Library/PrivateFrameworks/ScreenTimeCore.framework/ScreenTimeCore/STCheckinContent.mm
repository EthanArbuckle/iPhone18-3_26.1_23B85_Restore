@interface STCheckinContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCheckinContent:(id)content;
- (NSString)description;
- (STCheckinContent)initWithCoder:(id)coder;
- (STCheckinContent)initWithUserID:(id)d deviceID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCheckinContent

- (STCheckinContent)initWithUserID:(id)d deviceID:(id)iD
{
  v13.receiver = self;
  v13.super_class = STCheckinContent;
  iDCopy = iD;
  dCopy = d;
  v7 = [(STCheckinContent *)&v13 init];
  v8 = [dCopy copy];

  userID = v7->_userID;
  v7->_userID = v8;

  v10 = [iDCopy copy];
  deviceID = v7->_deviceID;
  v7->_deviceID = v10;

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  userID = [(STCheckinContent *)self userID];
  deviceID = [(STCheckinContent *)self deviceID];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { User: %@, Device: %@, Type: %ld }>", v3, userID, deviceID, [objc_opt_class() contentType]);

  return v6;
}

- (STCheckinContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];

  v7 = [(STCheckinContent *)self initWithUserID:v5 deviceID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userID = [(STCheckinContent *)self userID];
  [coderCopy encodeObject:userID forKey:@"userID"];

  deviceID = [(STCheckinContent *)self deviceID];
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  userID = self->_userID;
  deviceID = self->_deviceID;

  return [v4 initWithUserID:userID deviceID:deviceID];
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
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCheckinContent *)self isEqualToCheckinContent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCheckinContent:(id)content
{
  contentCopy = content;
  if (contentCopy == self)
  {
    v9 = 1;
  }

  else
  {
    userID = [(STCheckinContent *)self userID];
    userID2 = [(STCheckinContent *)contentCopy userID];
    if ([userID isEqualToUserID:userID2])
    {
      deviceID = [(STCheckinContent *)self deviceID];
      deviceID2 = [(STCheckinContent *)contentCopy deviceID];
      v9 = [deviceID isEqualToDeviceID:deviceID2];
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
  userID = [(STCheckinContent *)self userID];
  v4 = [userID hash];
  deviceID = [(STCheckinContent *)self deviceID];
  v6 = [deviceID hash];

  return v6 ^ v4;
}

@end