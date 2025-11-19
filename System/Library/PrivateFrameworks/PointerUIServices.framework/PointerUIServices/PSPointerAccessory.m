@interface PSPointerAccessory
- (BOOL)isEqual:(id)a3;
- (PSPointerAccessory)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSPointerAccessory

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && (shape = v4->_shape, v6 = self->_shape, BSEqualObjects()) && (offset = v4->_offset, v8 = self->_offset, BSFloatEqualToFloat()) && (angle = v4->_angle, v10 = self->_angle, BSFloatEqualToFloat()) && v4->_orientationMatchesAngle == self->_orientationMatchesAngle;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __33__PSPointerAccessory_description__block_invoke;
  v11 = &unk_27839D7E0;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PSPointerAccessory" multilinePrefix:v4 block:&v8];

  v6 = [v5 build];

  return v6;
}

id __33__PSPointerAccessory_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"_shape"];
  v3 = [*(a1 + 32) appendFloat:@"_offset" withName:*(*(a1 + 40) + 24)];
  v4 = [*(a1 + 32) appendFloat:@"_angle" withName:*(*(a1 + 40) + 32)];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"_orientationMatchesAngle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 16), self->_shape);
  *(v4 + 24) = self->_offset;
  *(v4 + 32) = self->_angle;
  *(v4 + 8) = self->_orientationMatchesAngle;
  return v4;
}

- (PSPointerAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSPointerAccessory;
  v5 = [(PSPointerAccessory *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v6;

    [v4 decodeDoubleForKey:@"offset"];
    v5->_offset = v8;
    [v4 decodeDoubleForKey:@"angle"];
    v5->_angle = v9;
    v5->_orientationMatchesAngle = [v4 decodeBoolForKey:@"orientationMatchesAngle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shape = self->_shape;
  v5 = a3;
  [v5 encodeObject:shape forKey:@"shape"];
  [v5 encodeDouble:@"offset" forKey:self->_offset];
  [v5 encodeDouble:@"angle" forKey:self->_angle];
  [v5 encodeBool:self->_orientationMatchesAngle forKey:@"orientationMatchesAngle"];
}

@end