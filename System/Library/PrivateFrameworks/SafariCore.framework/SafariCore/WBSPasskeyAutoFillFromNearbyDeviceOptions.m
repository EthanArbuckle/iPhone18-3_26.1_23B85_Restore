@interface WBSPasskeyAutoFillFromNearbyDeviceOptions
- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithCoder:(id)a3;
- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithOperationUUID:(id)a3;
@end

@implementation WBSPasskeyAutoFillFromNearbyDeviceOptions

- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithOperationUUID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSPasskeyAutoFillFromNearbyDeviceOptions;
  v6 = [(WBSPasskeyAutoFillFromNearbyDeviceOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationUUID, a3);
    v8 = v7;
  }

  return v7;
}

- (WBSPasskeyAutoFillFromNearbyDeviceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationUUID"];

  v6 = [(WBSPasskeyAutoFillFromNearbyDeviceOptions *)self initWithOperationUUID:v5];
  return v6;
}

@end