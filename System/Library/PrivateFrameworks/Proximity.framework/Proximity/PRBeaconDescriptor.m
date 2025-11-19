@interface PRBeaconDescriptor
- (PRBeaconDescriptor)init;
- (PRBeaconDescriptor)initWithCoder:(id)a3;
- (id)_initWithUUID:(id)a3 major:(id)a4 minor:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRBeaconDescriptor

- (PRBeaconDescriptor)init
{
  [(PRBeaconDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithUUID:(id)a3 major:(id)a4 minor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PRBeaconDescriptor;
  v12 = [(PRBeaconDescriptor *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_UUID, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  UUID = self->_UUID;
  major = self->_major;
  minor = self->_minor;

  return [v4 _initWithUUID:UUID major:major minor:minor];
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_major forKey:@"major"];
  [v5 encodeObject:self->_minor forKey:@"minor"];
}

- (PRBeaconDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"major"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minor"];

  v8 = [(PRBeaconDescriptor *)self _initWithUUID:v5 major:v6 minor:v7];
  return v8;
}

@end