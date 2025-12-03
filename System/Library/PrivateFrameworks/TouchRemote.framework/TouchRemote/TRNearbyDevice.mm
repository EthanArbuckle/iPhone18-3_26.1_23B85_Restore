@interface TRNearbyDevice
- (NSUUID)identifier;
- (TRNearbyDevice)init;
- (TRNearbyDevice)initWithRepresentedDevice:(id)device supportedService:(unint64_t)service;
- (id)description;
@end

@implementation TRNearbyDevice

- (TRNearbyDevice)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"-init is not a valid initializer for the class %@", v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (TRNearbyDevice)initWithRepresentedDevice:(id)device supportedService:(unint64_t)service
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = TRNearbyDevice;
  v8 = [(TRNearbyDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_representedDevice, device);
    v9->_supportedService = service;
  }

  return v9;
}

- (NSUUID)identifier
{
  representedDevice = [(TRNearbyDevice *)self representedDevice];
  identifier = [representedDevice identifier];

  return identifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(TRNearbyDevice *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@:%p> Identifier: (%@)", v4, self, identifier];

  return v6;
}

@end