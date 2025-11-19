@interface TPSDeviceCapability
- (TPSDeviceCapability)initWithDictionary:(id)a3;
- (id)debugDescription;
@end

@implementation TPSDeviceCapability

- (TPSDeviceCapability)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TPSDeviceCapability;
  v5 = [(TPSCapability *)&v7 initWithDictionary:v4];
  if (v5)
  {
    v5->_type = [v4 TPSSafeIntegerForKey:@"type"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = TPSDeviceCapability;
  v4 = [(TPSCapability *)&v7 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"; %@ = %ld", @"type", -[TPSDeviceCapability type](self, "type")];

  return v5;
}

@end