@interface TRNearbyDevice
- (NSUUID)identifier;
- (TRNearbyDevice)init;
- (TRNearbyDevice)initWithRepresentedDevice:(id)a3 supportedService:(unint64_t)a4;
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

- (TRNearbyDevice)initWithRepresentedDevice:(id)a3 supportedService:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TRNearbyDevice;
  v8 = [(TRNearbyDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_representedDevice, a3);
    v9->_supportedService = a4;
  }

  return v9;
}

- (NSUUID)identifier
{
  v2 = [(TRNearbyDevice *)self representedDevice];
  v3 = [v2 identifier];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRNearbyDevice *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@:%p> Identifier: (%@)", v4, self, v5];

  return v6;
}

@end