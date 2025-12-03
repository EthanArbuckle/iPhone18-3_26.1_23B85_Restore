@interface VFXModelDeformerInstanceWrapper
- (MTLComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)_currentTransforms;
- (unint64_t)_currentFrameHash;
- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function;
- (void)dealloc;
- (void)setStageInputOutputBuffersToComputeEncoder:(id)encoder;
- (void)setStageInputOutputBuffersToCurrentComputeEncoder;
@end

@implementation VFXModelDeformerInstanceWrapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXModelDeformerInstanceWrapper;
  [(VFXModelDeformerInstanceWrapper *)&v3 dealloc];
}

- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = objc_msgSend_stageInputAttributes(function, a2, descriptor, function);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v40, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_attributeIndex(v15, v9, v10, v11, v34, v35))
        {
          if (objc_msgSend_attributeIndex(v15, v16, v17, v11) == 3)
          {
            v20 = *&self->_stageInputOutputDescriptors.dstPositions.bufferAttributeOffset;
            v34 = *&self->_stageInputOutputDescriptors.dstPositions.isActive;
            v35 = v20;
            descriptorCopy6 = descriptor;
            v22 = 3;
          }

          else if (objc_msgSend_attributeIndex(v15, v18, v19, v11) == 1)
          {
            v26 = *&self->_stageInputOutputDescriptors.srcNormals.bufferAttributeOffset;
            v34 = *&self->_stageInputOutputDescriptors.srcNormals.isActive;
            v35 = v26;
            descriptorCopy6 = descriptor;
            v22 = 1;
          }

          else if (objc_msgSend_attributeIndex(v15, v24, v25, v11) == 4)
          {
            v29 = *&self->_stageInputOutputDescriptors.dstNormals.bufferAttributeOffset;
            v34 = *&self->_stageInputOutputDescriptors.dstNormals.isActive;
            v35 = v29;
            descriptorCopy6 = descriptor;
            v22 = 4;
          }

          else if (objc_msgSend_attributeIndex(v15, v27, v28, v11) == 2)
          {
            v32 = *&self->_stageInputOutputDescriptors.srcTangents.bufferAttributeOffset;
            v34 = *&self->_stageInputOutputDescriptors.srcTangents.isActive;
            v35 = v32;
            descriptorCopy6 = descriptor;
            v22 = 2;
          }

          else
          {
            if (objc_msgSend_attributeIndex(v15, v30, v31, v11) != 5)
            {
              continue;
            }

            v33 = *&self->_stageInputOutputDescriptors.dstTangents.bufferAttributeOffset;
            v34 = *&self->_stageInputOutputDescriptors.dstTangents.isActive;
            v35 = v33;
            descriptorCopy6 = descriptor;
            v22 = 5;
          }
        }

        else
        {
          v23 = *&self->_stageInputOutputDescriptors.srcPositions.bufferAttributeOffset;
          v34 = *&self->_stageInputOutputDescriptors.srcPositions.isActive;
          v35 = v23;
          descriptorCopy6 = descriptor;
          v22 = 0;
        }

        sub_1AF1E7700(descriptorCopy6, v22, &v34, v11);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v36, v40, 16);
    }

    while (v12);
  }
}

- (unint64_t)_currentFrameHash
{
  currentUpdateRenderContext = self->_stack->_currentUpdateRenderContext;
  v5 = objc_msgSend_engineContext(currentUpdateRenderContext, a2, v2, v3);
  v6 = sub_1AF1302C4(v5);
  v10 = objc_msgSend_currentFrameIndex(currentUpdateRenderContext, v7, v8, v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ currentUpdateRenderContext)));
  v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v6) ^ ((0xC6A4A7935BD1E995 * *&v6) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))));
  return (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
}

- (__n128)_currentTransforms
{
  v2 = *(self + 8);
  v3 = *(v2 + 560);
  *(a2 + 128) = *(v2 + 544);
  *(a2 + 144) = v3;
  v4 = *(v2 + 592);
  *(a2 + 160) = *(v2 + 576);
  *(a2 + 176) = v4;
  v5 = *(v2 + 496);
  *(a2 + 64) = *(v2 + 480);
  *(a2 + 80) = v5;
  v6 = *(v2 + 528);
  *(a2 + 96) = *(v2 + 512);
  *(a2 + 112) = v6;
  v7 = *(v2 + 432);
  *a2 = *(v2 + 416);
  *(a2 + 16) = v7;
  result = *(v2 + 448);
  v9 = *(v2 + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(self + 8);
  v3 = *(v2 + 688);
  *(a2 + 64) = *(v2 + 672);
  *(a2 + 80) = v3;
  *(a2 + 96) = *(v2 + 704);
  v4 = *(v2 + 624);
  *a2 = *(v2 + 608);
  *(a2 + 16) = v4;
  result = *(v2 + 656);
  *(a2 + 32) = *(v2 + 640);
  *(a2 + 48) = result;
  return result;
}

- (void)setStageInputOutputBuffersToComputeEncoder:(id)encoder
{
  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  }

  if (self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.dstPositions, 0, 13);
  }

  if (self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcNormals, 0, 11);
  }

  if (self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.dstNormals, 0, 14);
  }

  if (self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcTangents, 0, 12);
  }

  if (self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    dstTangents = self->_currentUpdateBuffers.dstTangents;

    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, dstTangents, 0, 15);
  }
}

- (void)setStageInputOutputBuffersToCurrentComputeEncoder
{
  currentUpdateComputeEncoder = self->_currentUpdateComputeEncoder;
  if (!currentUpdateComputeEncoder)
  {
    currentUpdateComputeEncoder = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = currentUpdateComputeEncoder;
  }

  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  }

  if (self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.dstPositions, 0, 13);
  }

  if (self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcNormals, 0, 11);
  }

  if (self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.dstNormals, 0, 14);
  }

  if (self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcTangents, 0, 12);
  }

  if (self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    v4 = self->_currentUpdateComputeEncoder;
    dstTangents = self->_currentUpdateBuffers.dstTangents;

    objc_msgSend_setBuffer_offset_atIndex_(v4, a2, dstTangents, 0, 15);
  }
}

- (MTLComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeEncoder;
  if (!result)
  {
    result = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = result;
  }

  return result;
}

@end