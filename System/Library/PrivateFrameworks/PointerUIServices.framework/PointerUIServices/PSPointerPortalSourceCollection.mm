@interface PSPointerPortalSourceCollection
- (BOOL)isEqual:(id)equal;
- (PSPointerPortalSourceCollection)initWithCoder:(id)coder;
- (PSPointerPortalSourceCollection)initWithPointerPortalSource:(id)source overlayEffectPortalSource:(id)portalSource samplingMatchMoveSource:(id)moveSource;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPointerPortalSourceCollection

- (PSPointerPortalSourceCollection)initWithPointerPortalSource:(id)source overlayEffectPortalSource:(id)portalSource samplingMatchMoveSource:(id)moveSource
{
  sourceCopy = source;
  portalSourceCopy = portalSource;
  moveSourceCopy = moveSource;
  v19.receiver = self;
  v19.super_class = PSPointerPortalSourceCollection;
  v11 = [(PSPointerPortalSourceCollection *)&v19 init];
  if (v11)
  {
    v12 = [sourceCopy copy];
    pointerPortalSource = v11->_pointerPortalSource;
    v11->_pointerPortalSource = v12;

    v14 = [portalSourceCopy copy];
    overlayEffectPortalSource = v11->_overlayEffectPortalSource;
    v11->_overlayEffectPortalSource = v14;

    v16 = [moveSourceCopy copy];
    samplingMatchMoveSource = v11->_samplingMatchMoveSource;
    v11->_samplingMatchMoveSource = v16;
  }

  return v11;
}

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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (pointerPortalSource = equalCopy->_pointerPortalSource, v6 = self->_pointerPortalSource, BSEqualObjects()) && (overlayEffectPortalSource = equalCopy->_overlayEffectPortalSource, v8 = self->_overlayEffectPortalSource, BSEqualObjects()))
    {
      samplingMatchMoveSource = equalCopy->_samplingMatchMoveSource;
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
  build = [v3 build];

  return build;
}

- (PSPointerPortalSourceCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointerPortalSource"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overlayEffectPortalSource"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"samplingMatchMoveSource"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(PSPointerPortalSourceCollection *)self initWithPointerPortalSource:v5 overlayEffectPortalSource:v6 samplingMatchMoveSource:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  overlayEffectPortalSource = self->_overlayEffectPortalSource;
  coderCopy = coder;
  [coderCopy encodeObject:overlayEffectPortalSource forKey:@"overlayEffectPortalSource"];
  [coderCopy encodeObject:self->_pointerPortalSource forKey:@"pointerPortalSource"];
  [coderCopy encodeObject:self->_samplingMatchMoveSource forKey:@"samplingMatchMoveSource"];
}

@end