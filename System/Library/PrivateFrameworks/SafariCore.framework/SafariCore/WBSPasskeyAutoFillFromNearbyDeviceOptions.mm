@interface WBSPasskeyAutoFillFromNearbyDeviceOptions
- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithCoder:(id)coder;
- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithOperationUUID:(id)d;
@end

@implementation WBSPasskeyAutoFillFromNearbyDeviceOptions

- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithOperationUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = WBSPasskeyAutoFillFromNearbyDeviceOptions;
  v6 = [(WBSPasskeyAutoFillFromNearbyDeviceOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationUUID, d);
    v8 = v7;
  }

  return v7;
}

- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationUUID"];

  v6 = [(WBSPasskeyAutoFillFromNearbyDeviceOptions *)self initWithOperationUUID:v5];
  return v6;
}

@end