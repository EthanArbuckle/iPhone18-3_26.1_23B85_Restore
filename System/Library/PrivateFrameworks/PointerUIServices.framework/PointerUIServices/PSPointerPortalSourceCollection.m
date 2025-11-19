@interface PSPointerPortalSourceCollection
- (BOOL)isEqual:(id)a3;
- (PSPointerPortalSourceCollection)initWithCoder:(id)a3;
- (PSPointerPortalSourceCollection)initWithPointerPortalSource:(id)a3 overlayEffectPortalSource:(id)a4 samplingMatchMoveSource:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSPointerPortalSourceCollection

- (PSPointerPortalSourceCollection)initWithPointerPortalSource:(id)a3 overlayEffectPortalSource:(id)a4 samplingMatchMoveSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PSPointerPortalSourceCollection;
  v11 = [(PSPointerPortalSourceCollection *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    pointerPortalSource = v11->_pointerPortalSource;
    v11->_pointerPortalSource = v12;

    v14 = [v9 copy];
    overlayEffectPortalSource = v11->_overlayEffectPortalSource;
    v11->_overlayEffectPortalSource = v14;

    v16 = [v10 copy];
    samplingMatchMoveSource = v11->_samplingMatchMoveSource;
    v11->_samplingMatchMoveSource = v16;
  }

  return v11;
}

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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (pointerPortalSource = v4->_pointerPortalSource, v6 = self->_pointerPortalSource, BSEqualObjects()) && (overlayEffectPortalSource = v4->_overlayEffectPortalSource, v8 = self->_overlayEffectPortalSource, BSEqualObjects()))
    {
      samplingMatchMoveSource = v4->_samplingMatchMoveSource;
      v10 = self->_samplingMatchMoveSource;
      v11 = BSEqualObjects();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PSPortalSource *)self->_pointerPortalSource hash];
  v4 = [(PSPortalSource *)self->_overlayEffectPortalSource hash]^ v3;
  return v4 ^ [(PSMatchMoveSource *)self->_samplingMatchMoveSource hash];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", -[PSPointerPortalSourceCollection sourceContextID](self, "sourceContextID")];
  [v3 appendString:v4 withName:@"sourceContextID"];

  v5 = [v3 appendObject:self->_pointerPortalSource withName:@"pointerPortalSource"];
  v6 = [v3 appendObject:self->_overlayEffectPortalSource withName:@"overlayEffectPortalSource"];
  v7 = [v3 appendObject:self->_samplingMatchMoveSource withName:@"samplingMatchMoveSource"];
  v8 = [v3 appendBool:self->_shouldBeInvalidatedIfPointerLeavesDisplay withName:@"shouldInvalidateIfPointerLeavesDisplay" ifEqualTo:1];
  v9 = [v3 build];

  return v9;
}

- (PSPointerPortalSourceCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pointerPortalSource"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overlayEffectPortalSource"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"samplingMatchMoveSource"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    self = [(PSPointerPortalSourceCollection *)self initWithPointerPortalSource:v5 overlayEffectPortalSource:v6 samplingMatchMoveSource:v7];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  overlayEffectPortalSource = self->_overlayEffectPortalSource;
  v5 = a3;
  [v5 encodeObject:overlayEffectPortalSource forKey:@"overlayEffectPortalSource"];
  [v5 encodeObject:self->_pointerPortalSource forKey:@"pointerPortalSource"];
  [v5 encodeObject:self->_samplingMatchMoveSource forKey:@"samplingMatchMoveSource"];
}

@end