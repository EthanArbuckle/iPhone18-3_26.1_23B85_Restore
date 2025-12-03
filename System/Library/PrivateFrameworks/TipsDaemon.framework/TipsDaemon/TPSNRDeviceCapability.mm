@interface TPSNRDeviceCapability
- (TPSNRDeviceCapability)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation TPSNRDeviceCapability

- (TPSNRDeviceCapability)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = TPSNRDeviceCapability;
  v5 = [(TPSCapability *)&v7 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v5->_type = [dictionaryCopy TPSSafeIntegerForKey:@"type"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = TPSNRDeviceCapability;
  v4 = [(TPSCapability *)&v7 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"; %@ = %ld", @"type", -[TPSNRDeviceCapability type](self, "type")];

  return v5;
}

@end