@interface VFXMTLMeshElement
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation VFXMTLMeshElement

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 8) = *&self->_primitiveType;
  *(v4 + 3) = self->_instanceCount;
  *(v4 + 4) = self->_sharedIndexBufferOffset;
  *(v4 + 5) = self->_indexBuffer;
  *(v4 + 6) = self->_drawIndexedPrimitivesIndirectBuffer;
  *(v4 + 56) = *&self->_indexType;
  *(v4 + 9) = self->_effectiveIndexCount;
  return v4;
}

- (id)description
{
  primitiveType_low = LODWORD(self->_primitiveType);
  indexBuffer = self->_indexBuffer;
  drawIndexedPrimitivesIndirectBuffer = self->_drawIndexedPrimitivesIndirectBuffer;
  indexCount_low = LODWORD(self->_indexCount);
  effectiveIndexOffset_low = LODWORD(self->_effectiveIndexOffset);
  if (drawIndexedPrimitivesIndirectBuffer)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<VFXMTLMeshElement: %p | type: %d, index buffer: %@ (%d indices), indirect buffer: %@, effective count: %d, offset: %d>", v2, self, primitiveType_low, indexBuffer, indexCount_low, drawIndexedPrimitivesIndirectBuffer, LODWORD(self->_effectiveIndexCount), effectiveIndexOffset_low);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"<VFXMTLMeshElement: %p | type: %d, index buffer: %@ (%d indices), effective count: %d, offset: %d>", v2, self, primitiveType_low, indexBuffer, indexCount_low, LODWORD(self->_effectiveIndexCount), effectiveIndexOffset_low);
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 40);
    objc_setProperty_nonatomic(self, v3, 0, 48);
  }

  v4.receiver = self;
  v4.super_class = VFXMTLMeshElement;
  [(VFXMTLMeshElement *)&v4 dealloc];
}

@end