@interface VFXMTLSmoothNormalsDeformer
- (unint64_t)updateWithComputeContext:(id)a3 buffers:(id *)a4;
- (void)dealloc;
@end

@implementation VFXMTLSmoothNormalsDeformer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLSmoothNormalsDeformer;
  [(VFXMTLSmoothNormalsDeformer *)&v3 dealloc];
}

- (unint64_t)updateWithComputeContext:(id)a3 buffers:(id *)a4
{
  v7 = objc_msgSend_currentFrameHash(a3, a2, a3, a4);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  v12 = objc_msgSend_currentComputeEncoder(a3, v8, v9, v10);
  objc_msgSend_resetCache(v12, v13, v14, v15);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v16, a4->var1, 0, 0);
  var3 = a4->var3;
  v11 = 1;
  objc_msgSend_setBuffer_offset_atIndex_(v12, v18, var3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v19, self->_perVertexTrianglesOffsets, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v20, self->_perVertexTrianglesIndices, 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v12, v21, &self->_baseVertexCount, 4, 4);
  v22 = sub_1AFDE323C(self->_smoothNormalsPipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v12, v23, v22, self->_baseVertexCount);
  return v11;
}

@end