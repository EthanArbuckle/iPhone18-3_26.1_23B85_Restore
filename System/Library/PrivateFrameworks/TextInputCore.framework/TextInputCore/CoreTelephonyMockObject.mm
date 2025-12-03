@interface CoreTelephonyMockObject
- (CoreTelephonyMockObject)initWithCellularEid:(id)eid cellularImei:(id)imei;
- (id)retrieveDeviceIdentifier:(int64_t)identifier;
@end

@implementation CoreTelephonyMockObject

- (id)retrieveDeviceIdentifier:(int64_t)identifier
{
  v3 = 16;
  if (!identifier)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

- (CoreTelephonyMockObject)initWithCellularEid:(id)eid cellularImei:(id)imei
{
  eidCopy = eid;
  imeiCopy = imei;
  v12.receiver = self;
  v12.super_class = CoreTelephonyMockObject;
  v9 = [(CoreTelephonyMockObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cellularEid, eid);
    objc_storeStrong(&v10->_cellularImei, imei);
  }

  return v10;
}

@end