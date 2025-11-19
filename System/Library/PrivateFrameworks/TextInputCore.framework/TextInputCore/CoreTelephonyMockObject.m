@interface CoreTelephonyMockObject
- (CoreTelephonyMockObject)initWithCellularEid:(id)a3 cellularImei:(id)a4;
- (id)retrieveDeviceIdentifier:(int64_t)a3;
@end

@implementation CoreTelephonyMockObject

- (id)retrieveDeviceIdentifier:(int64_t)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

- (CoreTelephonyMockObject)initWithCellularEid:(id)a3 cellularImei:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CoreTelephonyMockObject;
  v9 = [(CoreTelephonyMockObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cellularEid, a3);
    objc_storeStrong(&v10->_cellularImei, a4);
  }

  return v10;
}

@end