@interface VFXMeshElement
+ (id)_optimizedmodelElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index;
+ (id)meshElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index;
+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (id)meshElementWithMeshElementRef:(id *)ref;
+ (id)modelElementWithMDLSubmesh:(id)submesh;
- (NSData)data;
- (NSString)description;
- (VFXMeshElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (VFXMeshElement)initWithCoder:(id)coder;
- (VFXMeshElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (VFXMeshElement)initWithMeshElement:(const void *)element;
- (VFXWorld)world;
- (_NSRange)primitiveRange;
- (__CFXMeshElement)meshElement;
- (__CFXWorld)worldRef;
- (unint64_t)indexCount;
- (void)_optimizeTriangleIndices;
- (void)_printData;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateIndexes:(id)indexes;
- (void)removeWorldReference:(id)reference;
- (void)setMaximumPointScreenSpaceRadius:(float)radius;
- (void)setMinimumPointScreenSpaceRadius:(float)radius;
- (void)setPointSize:(float)size;
- (void)setPrimitiveRange:(_NSRange)range;
- (void)setPrimitiveRanges:(id)ranges;
- (void)setWorld:(id)world;
@end

@implementation VFXMeshElement

- (VFXMeshElement)initWithMeshElement:(const void *)element
{
  v26.receiver = self;
  v26.super_class = VFXMeshElement;
  v4 = [(VFXMeshElement *)&v26 init];
  __asm { FMOV            V0.2S, #1.0 }

  *&v4->_pointSize = _D0;
  v4->_maximumPointScreenSpaceRadius = 1.0;
  if (element)
  {
    sub_1AF16CDFC(element, v4);
    v25 = 0;
    v4->_meshElement = CFRetain(element);
    v4->_elementData = sub_1AF1A73C0(element, &v25);
    v4->_primitiveType = sub_1AF1A7034(element);
    v4->_primitiveCount = sub_1AF1A7674(element);
    v4->_indicesChannelCount = sub_1AF1A7634(element);
    v4->_interleavedIndicesChannels = sub_1AF1A763C(element);
    v24 = 0;
    v10 = sub_1AF1A745C(element, &v24);
    if (v10)
    {
      v11 = v10;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = objc_msgSend_initWithCapacity_(v12, v13, v24, v14);
      if (v24)
      {
        v17 = 0;
        v18 = (v11 + 8);
        do
        {
          v19 = *v18;
          if (*(v18 - 1) == -1)
          {
            v20 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v15, 0x7FFFFFFFFFFFFFFFLL, v19);
          }

          else
          {
            v20 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v15, *(v18 - 1), v19);
          }

          objc_msgSend_addObject_(v16, v21, v20, v22);
          ++v17;
          v18 += 2;
        }

        while (v17 < v24);
      }

      v4->_primitiveRanges = v16;
    }

    v4->_bytesPerIndex = v25;
    v4->_pointSize = sub_1AF1A7644(element);
    v4->_minimumPointScreenSpaceRadius = sub_1AF1A7654(element);
    v4->_maximumPointScreenSpaceRadius = sub_1AF1A7664(element);
  }

  return v4;
}

- (void)dealloc
{
  meshElement = self->_meshElement;
  if (meshElement)
  {
    sub_1AF16CDFC(meshElement, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_meshElement, v5);
  }

  v6.receiver = self;
  v6.super_class = VFXMeshElement;
  [(VFXMeshElement *)&v6 dealloc];
}

- (void)enumerateIndexes:(id)indexes
{
  v6 = objc_msgSend_indexCount(self, a2, indexes, v3);
  v10 = objc_msgSend_data(self, v7, v8, v9);
  v14 = objc_msgSend_bytes(v10, v11, v12, v13);
  v18 = objc_msgSend_bytesPerIndex(self, v15, v16, v17);
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          (*(indexes + 2))(indexes, i, *(v14 + 4 * i));
        }
      }
    }

    else if (v18 == 8 && v6)
    {
      for (j = 0; j != v6; ++j)
      {
        (*(indexes + 2))(indexes, j, *(v14 + 8 * j));
      }
    }
  }

  else if (v18 == 1)
  {
    if (v6)
    {
      for (k = 0; k != v6; ++k)
      {
        (*(indexes + 2))(indexes, k, *(v14 + k));
      }
    }
  }

  else if (v18 == 2 && v6)
  {
    for (m = 0; m != v6; ++m)
    {
      (*(indexes + 2))(indexes, m, *(v14 + 2 * m));
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  primitiveType = self->_primitiveType;
  primitiveCount = self->_primitiveCount;
  if (primitiveType > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7A7E938[primitiveType];
  }

  indicesChannelCount = self->_indicesChannelCount;
  v10 = sub_1AF288ADC(self->_bytesPerIndex, 1, 0);
  v11 = sub_1AF2883D8(v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"<%@: %p | %u x %@, %u channels, %@ indices>", v13, v5, self, primitiveCount, v8, indicesChannelCount, v11);
}

+ (id)meshElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  channelsCopy = channels;
  v14 = objc_alloc(objc_opt_class());
  v16 = objc_msgSend_initWithBuffer_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v14, v15, buffer, type, count, channelCount, channelsCopy, index);

  return v16;
}

- (VFXMeshElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v17.receiver = self;
  v17.super_class = VFXMeshElement;
  v14 = [(VFXMeshElement *)&v17 init];
  if (v14)
  {
    if (type == 4)
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6070(v15);
      }
    }

    v14->_mtlBuffer = buffer;
    v14->_primitiveType = type;
    v14->_primitiveCount = count;
    v14->_indicesChannelCount = channelCount;
    v14->_interleavedIndicesChannels = channels;
    v14->_bytesPerIndex = index;
  }

  return v14;
}

- (VFXMeshElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v28.receiver = self;
  v28.super_class = VFXMeshElement;
  v17 = [(VFXMeshElement *)&v28 init];
  if (!v17)
  {
    return v17;
  }

  if (type != 4)
  {
LABEL_18:
    v17->_elementData = objc_msgSend_copy(data, v14, v15, v16);
    v17->_primitiveType = type;
    v17->_primitiveCount = count;
    v17->_indicesChannelCount = channelCount;
    v17->_interleavedIndicesChannels = channels;
    v17->_bytesPerIndex = index;
    return v17;
  }

  if (objc_msgSend_length(data, v14, v15, v16) < (index * count))
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF60B4(v18);
    }
  }

  if (count < 1)
  {
LABEL_17:
    v23 = objc_msgSend_length(data, v14, v15, v16);
    data = objc_msgSend_subdataWithRange_(data, v24, index * count, v23 - index * count);
    type = 0;
    goto LABEL_18;
  }

  v19 = 0;
  type = 4;
  countCopy = count;
  while (1)
  {
    v21 = objc_msgSend_bytes(data, v14, v15, v16);
    if (index != 4)
    {
      break;
    }

    v22 = *(v21 + v19);
LABEL_14:
    if (v22 <= 2)
    {
      v26 = sub_1AF0D5194();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6138(v22, v26);
      }

      goto LABEL_24;
    }

    if (v22 != 3)
    {
      goto LABEL_18;
    }

    v19 += index;
    if (!--countCopy)
    {
      goto LABEL_17;
    }
  }

  if (index == 2)
  {
    v22 = *(v21 + v19);
    goto LABEL_14;
  }

  if (index == 1)
  {
    v22 = *(v21 + v19);
    goto LABEL_14;
  }

  v27 = sub_1AF0D5194();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF61B0(index, v27);
  }

LABEL_24:

  return 0;
}

+ (id)meshElementWithMeshElementRef:(id *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithMeshElement_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  channelsCopy = channels;
  v14 = [self alloc];
  v16 = objc_msgSend_initWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v14, v15, data, type, count, channelCount, channelsCopy, index);

  return v16;
}

+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index
{
  v10 = [self alloc];
  v12 = objc_msgSend_initWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v10, v11, data, type, count, 1, 1, index);

  return v12;
}

- (NSData)data
{
  result = self->_elementData;
  if (!result)
  {
    result = self->_mtlBuffer;
    if (result)
    {
      v6 = MEMORY[0x1E695DEF0];
      v7 = objc_msgSend_contents(result, a2, v2, v3);
      v12 = objc_msgSend_length(self->_mtlBuffer, v8, v9, v10);

      return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v6, v11, v7, v12, 0);
    }
  }

  return result;
}

- (void)_printData
{
  v4 = objc_msgSend_meshElement(self, a2, v2, v3);

  sub_1AF1AADF4(v4);
}

- (unint64_t)indexCount
{
  v4 = objc_msgSend_meshElement(self, a2, v2, v3);

  return sub_1AF1A70CC(v4);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E41CC;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E422C;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (_NSRange)primitiveRange
{
  if (objc_msgSend_count(self->_primitiveRanges, a2, v2, v3) == 1)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(self->_primitiveRanges, v5, 0, v6);

    v11 = objc_msgSend_rangeValue(v7, v8, v9, v10);
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0;
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (void)setPrimitiveRange:(_NSRange)range
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], a2, range.location, range.length);
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v8, 1);
  objc_msgSend_setPrimitiveRanges_(self, v6, v5, v7);
}

- (void)setPrimitiveRanges:(id)ranges
{
  primitiveRanges = self->_primitiveRanges;
  if (primitiveRanges != ranges)
  {
    v15[8] = v3;
    v15[9] = v4;

    v11 = objc_msgSend_count(ranges, v8, v9, v10);
    if (v11)
    {
      v11 = objc_msgSend_copy(ranges, v12, v13, v14);
    }

    self->_primitiveRanges = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2E4498;
    v15[3] = &unk_1E7A7E220;
    v15[4] = self;
    v15[5] = ranges;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v15);
  }
}

- (void)setPointSize:(float)size
{
  if (self->_pointSize != size)
  {
    v7 = v3;
    v8 = v4;
    self->_pointSize = size;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E460C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    sizeCopy = size;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setMinimumPointScreenSpaceRadius:(float)radius
{
  if (self->_minimumPointScreenSpaceRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_minimumPointScreenSpaceRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E46B8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setMaximumPointScreenSpaceRadius:(float)radius
{
  if (self->_maximumPointScreenSpaceRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_maximumPointScreenSpaceRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E4764;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (__CFXMeshElement)meshElement
{
  result = self->_meshElement;
  if (!result)
  {
    v4 = sub_1AF1A6834();
    self->_meshElement = v4;
    mtlBuffer = self->_mtlBuffer;
    primitiveType = self->_primitiveType;
    primitiveCount = self->_primitiveCount;
    interleavedIndicesChannels = self->_interleavedIndicesChannels;
    if (mtlBuffer)
    {
      sub_1AF1A69F0(v4, primitiveType, primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, mtlBuffer, self->_bytesPerIndex);
    }

    else
    {
      sub_1AF1A6928(v4, primitiveType, primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, self->_elementData, self->_bytesPerIndex);
    }

    sub_1AF2E44A4(self->_meshElement, self->_primitiveRanges, v9, v10);
    result = self->_meshElement;
    if (result)
    {
      sub_1AF16CDFC(result, self);
      return self->_meshElement;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_elementData)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = objc_msgSend_options(coder, v5, v6, v7), v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"VFXWorldExportCompressMeshElements", v10), objc_msgSend_BOOLValue(v11, v12, v13, v14)))
    {
      elementData = self->_elementData;
      if (!self->_primitiveType)
      {
        elementData = objc_msgSend_vfx_indexedDataEncodingTrianglePairsWithBytesPerIndex_(elementData, v5, self->_bytesPerIndex, v15);
      }

      v17 = objc_msgSend_vfx_indexedDataEncodingHighWatermarkWithBytesPerIndex_(elementData, v5, self->_bytesPerIndex, v15);
      v20 = objc_msgSend_vfx_compressedDataUsingCompressionAlgorithm_(v17, v18, 774, v19);
      objc_msgSend_encodeObject_forKey_(coder, v21, v20, @"compressedElementData");
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(coder, v5, self->_elementData, @"elementData");
    }
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeInteger_forKey_(coder, v22, self->_primitiveCount, @"primitiveCount");
  if (objc_msgSend_count(self->_primitiveRanges, v23, v24, v25) == 1)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(self->_primitiveRanges, v26, 0, v27);
    v32 = objc_msgSend_rangeValue(v28, v29, v30, v31);
    v34 = v33;
    objc_msgSend_encodeInteger_forKey_(coder, v33, v32, @"primitiveRangeLocation");
    objc_msgSend_encodeInteger_forKey_(coder, v35, v34, @"primitiveRangeLength");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v26, self->_indicesChannelCount, @"indicesChannelCount");
  objc_msgSend_encodeBool_forKey_(coder, v36, self->_interleavedIndicesChannels, @"interleavedIndicesChannels");
  objc_msgSend_encodeInteger_forKey_(coder, v37, self->_bytesPerIndex, @"bytesPerIndex");
  *&v38 = self->_pointSize;
  objc_msgSend_encodeFloat_forKey_(coder, v39, @"ptSize", v40, v38);
  *&v41 = self->_minimumPointScreenSpaceRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"minimumPointScreenSpaceRadius", v43, v41);
  *&v46 = self->_maximumPointScreenSpaceRadius;

  objc_msgSend_encodeFloat_forKey_(coder, v44, @"maximumPointScreenSpaceRadius", v45, v46);
}

- (VFXMeshElement)initWithCoder:(id)coder
{
  v58.receiver = self;
  v58.super_class = VFXMeshElement;
  v7 = [(VFXMeshElement *)&v58 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v7->_primitiveType = objc_msgSend_decodeIntegerForKey_(coder, v11, @"primitiveType", v12);
    v7->_primitiveCount = objc_msgSend_decodeIntegerForKey_(coder, v13, @"primitiveCount", v14);
    if (objc_msgSend_containsValueForKey_(coder, v15, @"primitiveRangeLocation", v16) && objc_msgSend_containsValueForKey_(coder, v17, @"primitiveRangeLength", v18))
    {
      v19 = objc_msgSend_decodeIntegerForKey_(coder, v17, @"primitiveRangeLocation", v18);
      v22 = objc_msgSend_decodeIntegerForKey_(coder, v20, @"primitiveRangeLength", v21);
      v57 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v23, v19, v22);
      v24 = objc_alloc(MEMORY[0x1E695DEC8]);
      v7->_primitiveRanges = objc_msgSend_initWithObjects_count_(v24, v25, &v57, 1);
    }

    if (objc_msgSend_containsValueForKey_(coder, v17, @"indicesChannelCount", v18) && objc_msgSend_containsValueForKey_(coder, v26, @"interleavedIndicesChannels", v27))
    {
      v7->_indicesChannelCount = objc_msgSend_decodeIntegerForKey_(coder, v26, @"indicesChannelCount", v27);
      v7->_interleavedIndicesChannels = objc_msgSend_decodeBoolForKey_(coder, v28, @"interleavedIndicesChannels", v29);
    }

    else
    {
      v7->_indicesChannelCount = 1;
      v7->_interleavedIndicesChannels = 1;
    }

    v7->_bytesPerIndex = objc_msgSend_decodeIntegerForKey_(coder, v26, @"bytesPerIndex", v27);
    if (objc_msgSend_containsValueForKey_(coder, v30, @"ptSize", v31))
    {
      objc_msgSend_decodeFloatForKey_(coder, v32, @"pointSize", v33);
      v7->_pointSize = v34;
      objc_msgSend_decodeFloatForKey_(coder, v35, @"minimumPointScreenSpaceRadius", v36);
      v7->_minimumPointScreenSpaceRadius = v37;
      objc_msgSend_decodeFloatForKey_(coder, v38, @"maximumPointScreenSpaceRadius", v39);
      v7->_maximumPointScreenSpaceRadius = v40;
    }

    v41 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v42, v41, @"compressedElementData");
    if (v43)
    {
      v46 = objc_msgSend_vfx_uncompressedDataUsingCompressionAlgorithm_(v43, v44, 774, v45);
      v49 = objc_msgSend_vfx_indexedDataDecodingHighWatermarkWithBytesPerIndex_(v46, v47, v7->_bytesPerIndex, v48);
      if (!v7->_primitiveType)
      {
        v49 = objc_msgSend_vfx_indexedDataDecodingTrianglePairsWithBytesPerIndex_(v49, v50, v7->_bytesPerIndex, v51);
      }
    }

    else
    {
      v52 = objc_opt_class();
      v49 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v53, v52, @"elementData");
    }

    v7->_elementData = v49;
    objc_msgSend_setImmediateMode_(VFXTransaction, v54, v8, v55);
  }

  return v7;
}

+ (id)_optimizedmodelElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index
{
  if (type)
  {
    v10 = objc_opt_class();
    dataCopy = data;
    typeCopy = type;
  }

  else
  {
    v14 = sub_1AF1ABE4C(data, count, index);
    v10 = objc_opt_class();
    dataCopy = v14;
    typeCopy = 0;
  }

  return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(v10, v11, dataCopy, typeCopy, count, index);
}

- (void)_optimizeTriangleIndices
{
  if (!self->_primitiveType)
  {
    v6 = v2;
    v7 = v3;
    sub_1AF1AC1B0(self->_meshElement);
    v5 = 0;
    self->_elementData = sub_1AF1A73C0(self->_meshElement, &v5);
    self->_primitiveType = sub_1AF1A7034(self->_meshElement);
    self->_primitiveCount = sub_1AF1A7674(self->_meshElement);
    self->_bytesPerIndex = v5;
  }
}

+ (id)modelElementWithMDLSubmesh:(id)submesh
{
  v6 = objc_msgSend_faceIndexing(submesh, a2, submesh, v3);
  v10 = objc_msgSend_geometryType(submesh, v7, v8, v9);
  if (!v6)
  {
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v19 = objc_msgSend_indexCount(submesh, v11, v12, v13) - 2;
          v15 = 1;
          goto LABEL_23;
        case 4:
          v19 = objc_msgSend_indexCount(submesh, v11, v12, v13) >> 2;
          break;
        case 5:
          v20 = objc_msgSend_topology(submesh, v11, v12, v13);
          v19 = objc_msgSend_faceCount(v20, v21, v22, v23);
          break;
        default:
LABEL_17:
          v24 = sub_1AF0D5194();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF6A30(v24, v11, v12);
          }

          goto LABEL_19;
      }

      v15 = 4;
    }

    else
    {
      if (!v10)
      {
LABEL_19:
        v19 = objc_msgSend_indexCount(submesh, v11, v12, v13);
        v15 = 3;
        goto LABEL_23;
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v15 = 0;
          v19 = objc_msgSend_indexCount(submesh, v11, v12, v13) / 3uLL;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v19 = objc_msgSend_indexCount(submesh, v11, v12, v13) >> 1;
      v15 = 2;
    }

LABEL_23:
    v25 = objc_msgSend_indexType(submesh, v16, v17, v18) >> 3;
    v29 = objc_msgSend_indexBuffer(submesh, v26, v27, v28);
    v33 = objc_msgSend_map(v29, v30, v31, v32);
    v37 = objc_msgSend_bytes(v33, v34, v35, v36);
    v41 = objc_msgSend_indexBuffer(submesh, v38, v39, v40);
    v45 = objc_msgSend_length(v41, v42, v43, v44);
    if (objc_msgSend_geometryType(submesh, v46, v47, v48) == 4)
    {
      v52 = objc_alloc(MEMORY[0x1E695DF88]);
      v55 = objc_msgSend_initWithCapacity_(v52, v53, v45 + v25 * v19, v54);
      objc_msgSend_setLength_(v55, v56, v25 * v19, v57);
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          if (v25 > 3)
          {
            if (v25 == 4)
            {
              *(objc_msgSend_mutableBytes(v55, v58, v59, v60) + 4 * i) = 4;
            }

            else if (v25 == 8)
            {
              *(objc_msgSend_mutableBytes(v55, v58, v59, v60) + 8 * i) = 4;
            }
          }

          else if (v25 == 1)
          {
            *(objc_msgSend_mutableBytes(v55, v58, v59, v60) + i) = 4;
          }

          else if (v25 == 2)
          {
            *(objc_msgSend_mutableBytes(v55, v58, v59, v60) + 2 * i) = 4;
          }
        }
      }

      objc_msgSend_appendBytes_length_(v55, v58, v37, v45);
      v62 = v55;
    }

    else
    {
      if (objc_msgSend_geometryType(submesh, v49, v50, v51) != 5)
      {
        v95 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v63, v37, v45);
        return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(self, v96, v95, v15, v19, v25);
      }

      v66 = objc_msgSend_topology(submesh, v63, v64, v65);
      v70 = objc_msgSend_faceTopology(v66, v67, v68, v69);
      v74 = objc_msgSend_map(v70, v71, v72, v73);
      v78 = objc_msgSend_bytes(v74, v75, v76, v77);
      v79 = objc_alloc(MEMORY[0x1E695DF88]);
      v82 = objc_msgSend_initWithCapacity_(v79, v80, v45 + v25 * v19, v81);
      objc_msgSend_setLength_(v82, v83, v25 * v19, v84);
      if (v19)
      {
        for (j = 0; j != v19; ++j)
        {
          if (v25 > 3)
          {
            if (v25 == 4)
            {
              v92 = *(v78 + j);
              *(objc_msgSend_mutableBytes(v82, v85, v86, v87) + 4 * j) = v92;
            }

            else if (v25 == 8)
            {
              v90 = *(v78 + j);
              *(objc_msgSend_mutableBytes(v82, v85, v86, v87) + 8 * j) = v90;
            }
          }

          else if (v25 == 1)
          {
            v91 = *(v78 + j);
            *(objc_msgSend_mutableBytes(v82, v85, v86, v87) + j) = v91;
          }

          else if (v25 == 2)
          {
            v89 = *(v78 + j);
            *(objc_msgSend_mutableBytes(v82, v85, v86, v87) + 2 * j) = v89;
          }
        }
      }

      objc_msgSend_appendBytes_length_(v82, v85, v37, v45);
      v62 = v82;
    }

    v93 = v62;
    return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(self, v94, v93, v15, v19, v25);
  }

  if (v10 != 5)
  {
    return 0;
  }

  return sub_1AF2F6074(submesh, v11, v12, v13);
}

@end