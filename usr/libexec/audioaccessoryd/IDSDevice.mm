@interface IDSDevice
- (id)cpDescription;
- (id)deviceTypeToString;
@end

@implementation IDSDevice

- (id)cpDescription
{
  v3 = [(IDSDevice *)self name];
  v4 = [(IDSDevice *)self uniqueID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unknown ID";
  }

  v7 = [(IDSDevice *)self nsuuid];
  v8 = [NSString stringWithFormat:@"%@ (%@), BT: (%@)", v3, v6, v7];

  return v8;
}

- (id)deviceTypeToString
{
  v2 = [(IDSDevice *)self deviceType];
  if (v2 > 8)
  {
    return @"NotDefined";
  }

  else
  {
    return *(&off_1002BB390 + v2);
  }
}

@end