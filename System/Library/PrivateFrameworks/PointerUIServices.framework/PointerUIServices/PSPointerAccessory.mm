@interface PSPointerAccessory
- (BOOL)isEqual:(id)equal;
- (PSPointerAccessory)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPointerAccessory

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && (shape = equalCopy->_shape, v6 = self->_shape, BSEqualObjects()) && (offset = equalCopy->_offset, v8 = self->_offset, BSFloatEqualToFloat()) && (angle = equalCopy->_angle, v10 = self->_angle, BSFloatEqualToFloat()) && equalCopy->_orientationMatchesAngle == self->_orientationMatchesAngle;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __33__PSPointerAccessory_description__block_invoke;
  v11 = &unk_27839D7E0;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PSPointerAccessory" multilinePrefix:activeMultilinePrefix block:&v8];

  build = [v5 build];

  return build;
}

id __33__PSPointerAccessory_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"_shape"];
  v3 = [*(a1 + 32) appendFloat:@"_offset" withName:*(*(a1 + 40) + 24)];
  v4 = [*(a1 + 32) appendFloat:@"_angle" withName:*(*(a1 + 40) + 32)];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"_orientationMatchesAngle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_shape);
  *(v4 + 24) = self->_offset;
  *(v4 + 32) = self->_angle;
  *(v4 + 8) = self->_orientationMatchesAngle;
  return v4;
}

- (PSPointerAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PSPointerAccessory;
  v5 = [(PSPointerAccessory *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
    shape = v5->_shape;
    v5->_shape = v6;

    [coderCopy decodeDoubleForKey:@"offset"];
    v5->_offset = v8;
    [coderCopy decodeDoubleForKey:@"angle"];
    v5->_angle = v9;
    v5->_orientationMatchesAngle = [coderCopy decodeBoolForKey:@"orientationMatchesAngle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shape = self->_shape;
  coderCopy = coder;
  [coderCopy encodeObject:shape forKey:@"shape"];
  [coderCopy encodeDouble:@"offset" forKey:self->_offset];
  [coderCopy encodeDouble:@"angle" forKey:self->_angle];
  [coderCopy encodeBool:self->_orientationMatchesAngle forKey:@"orientationMatchesAngle"];
}

@end