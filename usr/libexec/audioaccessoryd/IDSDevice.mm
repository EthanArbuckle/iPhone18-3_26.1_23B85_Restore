@interface IDSDevice
- (id)cpDescription;
- (id)deviceTypeToString;
@end

@implementation IDSDevice

- (id)cpDescription
{
  name = [(IDSDevice *)self name];
  uniqueID = [(IDSDevice *)self uniqueID];
  v5 = uniqueID;
  if (uniqueID)
  {
    v6 = uniqueID;
  }

  else
  {
    v6 = @"unknown ID";
  }

  nsuuid = [(IDSDevice *)self nsuuid];
  v8 = [NSString stringWithFormat:@"%@ (%@), BT: (%@)", name, v6, nsuuid];

  return v8;
}

- (id)deviceTypeToString
{
  deviceType = [(IDSDevice *)self deviceType];
  if (deviceType > 8)
  {
    return @"NotDefined";
  }

  else
  {
    return *(&off_1002BB390 + deviceType);
  }
}

@end