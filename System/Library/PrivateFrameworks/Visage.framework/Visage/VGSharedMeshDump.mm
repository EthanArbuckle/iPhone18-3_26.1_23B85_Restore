@interface VGSharedMeshDump
- (VGSharedMeshDump)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGSharedMeshDump

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  meshPositions = self->_meshPositions;
  v5 = NSStringFromSelector(sel_meshPositions);
  [coderCopy encodeObject:meshPositions forKey:v5];

  meshUVs = self->_meshUVs;
  v7 = NSStringFromSelector(sel_meshUVs);
  [coderCopy encodeObject:meshUVs forKey:v7];

  meshTriangleIndices = self->_meshTriangleIndices;
  v9 = NSStringFromSelector(sel_meshTriangleIndices);
  [coderCopy encodeObject:meshTriangleIndices forKey:v9];
}

- (VGSharedMeshDump)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = VGSharedMeshDump;
  v5 = [(VGSharedMeshDump *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_meshPositions);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    meshPositions = v5->_meshPositions;
    v5->_meshPositions = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_meshUVs);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    meshUVs = v5->_meshUVs;
    v5->_meshUVs = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_meshTriangleIndices);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    meshTriangleIndices = v5->_meshTriangleIndices;
    v5->_meshTriangleIndices = v16;

    v18 = v5;
  }

  return v5;
}

@end