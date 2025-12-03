@interface PRBeaconDescriptor
- (PRBeaconDescriptor)init;
- (PRBeaconDescriptor)initWithCoder:(id)coder;
- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRBeaconDescriptor

- (PRBeaconDescriptor)init
{
  [(PRBeaconDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor
{
  dCopy = d;
  majorCopy = major;
  minorCopy = minor;
  v15.receiver = self;
  v15.super_class = PRBeaconDescriptor;
  v12 = [(PRBeaconDescriptor *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_UUID, d);
    objc_storeStrong(p_isa + 2, major);
    objc_storeStrong(p_isa + 3, minor);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  UUID = self->_UUID;
  major = self->_major;
  minor = self->_minor;

  return [v4 _initWithUUID:UUID major:major minor:minor];
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_major forKey:@"major"];
  [coderCopy encodeObject:self->_minor forKey:@"minor"];
}

- (PRBeaconDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"major"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minor"];

  v8 = [(PRBeaconDescriptor *)self _initWithUUID:v5 major:v6 minor:v7];
  return v8;
}

@end