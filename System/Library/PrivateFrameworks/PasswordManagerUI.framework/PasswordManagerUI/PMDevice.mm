@interface PMDevice
- (PMDevice)init;
- (PMDevice)initWithDeviceName:(id)a3 operatingSystemName:(id)a4 operatingSystemVersion:(id)a5 deviceImageSymbolName:(id)a6;
@end

@implementation PMDevice

- (PMDevice)initWithDeviceName:(id)a3 operatingSystemName:(id)a4 operatingSystemVersion:(id)a5 deviceImageSymbolName:(id)a6
{
  v7 = sub_21CB855C4();
  v9 = v8;
  v10 = sub_21CB855C4();
  v12 = v11;
  v13 = sub_21CB855C4();
  v15 = v14;
  v16 = sub_21CB855C4();
  v17 = (self + OBJC_IVAR___PMDevice_deviceName);
  *v17 = v7;
  v17[1] = v9;
  v18 = (self + OBJC_IVAR___PMDevice_operatingSystemName);
  *v18 = v10;
  v18[1] = v12;
  v19 = (self + OBJC_IVAR___PMDevice_operatingSystemVersion);
  *v19 = v13;
  v19[1] = v15;
  v20 = (self + OBJC_IVAR___PMDevice_deviceImageSymbolName);
  *v20 = v16;
  v20[1] = v21;
  v23.receiver = self;
  v23.super_class = PMDevice;
  return [(PMDevice *)&v23 init];
}

- (PMDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end