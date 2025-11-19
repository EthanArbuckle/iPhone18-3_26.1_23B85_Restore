@interface PSMatchMoveSource
- (BOOL)isEqual:(id)a3;
- (PSMatchMoveSource)initWithCoder:(id)a3;
- (PSMatchMoveSource)initWithSourceContextID:(unsigned int)a3 sourceLayerRenderID:(unint64_t)a4;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSMatchMoveSource

- (PSMatchMoveSource)initWithSourceContextID:(unsigned int)a3 sourceLayerRenderID:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PSMatchMoveSource;
  result = [(PSMatchMoveSource *)&v7 init];
  if (result)
  {
    result->_sourceContextID = a3;
    result->_sourceLayerRenderID = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_sourceContextID == self->_sourceContextID && v4->_sourceLayerRenderID == self->_sourceLayerRenderID;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p <0x%x -> 0x%llx>", v5, self, self->_sourceContextID, self->_sourceLayerRenderID];;

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p <0x%x -> 0x%llx> shouldInvalidateIfPointerLeavesDisplay: %d>", v5, self, self->_sourceContextID, self->_sourceLayerRenderID, self->_shouldBeInvalidatedIfPointerLeavesDisplay];;

  return v6;
}

- (PSMatchMoveSource)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PSMatchMoveSource;
  v5 = [(PSMatchMoveSource *)&v7 init];
  if (v5)
  {
    v5->_sourceContextID = [v4 decodeInt32ForKey:@"sourceContextID"];
    v5->_sourceLayerRenderID = [v4 decodeInt64ForKey:@"sourceLayerRenderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceContextID = self->_sourceContextID;
  v5 = a3;
  [v5 encodeInt32:sourceContextID forKey:@"sourceContextID"];
  [v5 encodeInt64:self->_sourceLayerRenderID forKey:@"sourceLayerRenderID"];
}

@end