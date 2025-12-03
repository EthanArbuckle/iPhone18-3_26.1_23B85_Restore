@interface PSPortalSource
- (BOOL)isEqual:(id)equal;
- (PSPortalSource)initWithCoder:(id)coder;
- (PSPortalSource)initWithSourceContextID:(unsigned int)d sourceLayerRenderID:(unint64_t)iD;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPortalSource

- (PSPortalSource)initWithSourceContextID:(unsigned int)d sourceLayerRenderID:(unint64_t)iD
{
  v7.receiver = self;
  v7.super_class = PSPortalSource;
  result = [(PSPortalSource *)&v7 init];
  if (result)
  {
    result->_sourceContextID = d;
    result->_sourceLayerRenderID = iD;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_sourceContextID == self->_sourceContextID && equalCopy->_sourceLayerRenderID == self->_sourceLayerRenderID;
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

- (PSPortalSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PSPortalSource;
  v5 = [(PSPortalSource *)&v7 init];
  if (v5)
  {
    v5->_sourceContextID = [coderCopy decodeInt32ForKey:@"sourceContextID"];
    v5->_sourceLayerRenderID = [coderCopy decodeInt64ForKey:@"sourceLayerRenderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceContextID = self->_sourceContextID;
  coderCopy = coder;
  [coderCopy encodeInt32:sourceContextID forKey:@"sourceContextID"];
  [coderCopy encodeInt64:self->_sourceLayerRenderID forKey:@"sourceLayerRenderID"];
}

@end