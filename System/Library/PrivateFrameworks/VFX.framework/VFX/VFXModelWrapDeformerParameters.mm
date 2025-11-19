@interface VFXModelWrapDeformerParameters
- (VFXModelWrapDeformerParameters)initWithCoder:(id)a3;
- (VFXModelWrapDeformerParameters)initWithDrivingNode:(__n128)a3 deformedNode:(__n128)a4 bindingMode:(__n128)a5 bindingTransform:(uint64_t)a6 drivingNodeUVChannel:(uint64_t)a7 deformedNodeUVChannel:(uint64_t)a8;
- (VFXModelWrapDeformerParameters)initWithInnerLayerNode:(__n128)a3 outerLayerNode:(__n128)a4 deformedNode:(__n128)a5 bindingMode:(uint64_t)a6 bindingTransform:(uint64_t)a7;
- (id)extraLayerMeshesWithDrivingMesh0:(__CFXMesh *)a3 drivingMesh1:(__CFXMesh *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initParametersIfNeededWithDrivingNodeRef:(__CFXNode *)a3 deformedNodeRef:(__CFXNode *)a4;
- (void)initParametersIfNeededWithInnerLayerNodeRef:(__CFXNode *)a3 outerLayerNodeRef:(__CFXNode *)a4 deformedNodeRef:(__CFXNode *)a5;
@end

@implementation VFXModelWrapDeformerParameters

- (VFXModelWrapDeformerParameters)initWithDrivingNode:(__n128)a3 deformedNode:(__n128)a4 bindingMode:(__n128)a5 bindingTransform:(uint64_t)a6 drivingNodeUVChannel:(uint64_t)a7 deformedNodeUVChannel:(uint64_t)a8
{
  v34.receiver = a1;
  v34.super_class = VFXModelWrapDeformerParameters;
  v16 = [(VFXModelWrapDeformerParameters *)&v34 init];
  v20 = v16;
  if (v16)
  {
    v16->_isLegacySingleLayerDeformer = 1;
    v16->_bindingMode = a9;
    *v16->_anon_a0 = a2;
    *&v16->_anon_a0[16] = a3;
    *&v16->_anon_a0[32] = a4;
    *&v16->_anon_a0[48] = a5;
    v16->_legacyDrivingNodeUVChannel = a10;
    v16->_legacyDeformedNodeUVChannel = a11;
    objc_msgSend_begin(VFXTransaction, v17, v18, v19);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v21, v22, v23, 0.0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1AF1DF56C;
    v33[3] = &unk_1E7A7C078;
    v33[4] = v20;
    v33[5] = a7;
    v33[6] = a8;
    objc_msgSend_enqueueCommandForObject_immediateTransactionBlock_(VFXTransaction, v24, a8, v33);
    objc_msgSend_commit(VFXTransaction, v25, v26, v27);
  }

  return v20;
}

- (VFXModelWrapDeformerParameters)initWithInnerLayerNode:(__n128)a3 outerLayerNode:(__n128)a4 deformedNode:(__n128)a5 bindingMode:(uint64_t)a6 bindingTransform:(uint64_t)a7
{
  v32.receiver = a1;
  v32.super_class = VFXModelWrapDeformerParameters;
  v14 = [(VFXModelWrapDeformerParameters *)&v32 init];
  v18 = v14;
  if (v14)
  {
    v14->_bindingMode = a10;
    *v14->_anon_a0 = a2;
    *&v14->_anon_a0[16] = a3;
    *&v14->_anon_a0[32] = a4;
    *&v14->_anon_a0[48] = a5;
    objc_msgSend_begin(VFXTransaction, v15, v16, v17);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v19, v20, v21, 0.0);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1AF1DF6C8;
    v31[3] = &unk_1E7A7C0A0;
    v31[4] = v18;
    v31[5] = a7;
    v31[6] = a8;
    v31[7] = a9;
    objc_msgSend_enqueueCommandForObject_immediateTransactionBlock_(VFXTransaction, v22, a9, v31);
    objc_msgSend_commit(VFXTransaction, v23, v24, v25);
  }

  return v18;
}

- (void)dealloc
{
  free(self->_bindingData.pointIndices);
  free(self->_bindingData.barycentricCoords);
  free(self->_bindingData.innerLayerInfluences);
  free(self->_bindingData.innerLayerTNBs);
  free(self->_bindingData.outerLayerTNBs);
  free(self->_bindingData.innerLayerOffsets);
  free(self->_bindingData.outerLayerOffsets);
  free(self->_bindingData.legacyOffsetsOrTransforms);
  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformerParameters;
  [(VFXModelWrapDeformerParameters *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt32_forKey_(a3, a2, self->_vertexCount, @"vertexCount");
  objc_msgSend_encodeInt32_forKey_(a3, v5, LODWORD(self->_bindingMode), @"bindingMode");
  objc_msgSend_encodeInt32_forKey_(a3, v6, LODWORD(self->_bindingData.pointIndicesStride), @"bindingPointIndicesStride");
  objc_msgSend_encodeInt32_forKey_(a3, v7, LODWORD(self->_bindingData.barycentricCoordsStride), @"bindingBarycentricCoordsStride");
  objc_msgSend_encodeInt32_forKey_(a3, v8, LODWORD(self->_bindingData.pointIndicesFormat), @"bindingPointIndicesFormat");
  objc_msgSend_encodeInt32_forKey_(a3, v9, LODWORD(self->_bindingData.barycentricCoordsFormat), @"bindingBarycentricCoordsFormat");
  objc_msgSend_encodeBytes_length_forKey_(a3, v10, self->_bindingData.pointIndices, self->_bindingData.pointIndicesStride * self->_vertexCount, @"bindingPointIndices");
  objc_msgSend_encodeBytes_length_forKey_(a3, v11, self->_bindingData.barycentricCoords, self->_bindingData.barycentricCoordsStride * self->_vertexCount, @"bindingBarycentricCoords");
  if (self->_isLegacySingleLayerDeformer)
  {
    objc_msgSend_encodeBool_forKey_(a3, v12, 1, @"isLegacySingleLayerDeformer");
    legacyOffsetsOrTransformsLength = self->_bindingData.legacyOffsetsOrTransformsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.legacyOffsetsOrTransformsLength;
    objc_msgSend_encodeBytes_length_forKey_(a3, v15, *(p_legacyOffsetsOrTransformsLength - 1), legacyOffsetsOrTransformsLength, @"bindingOffsetsOrTransforms");
    v17 = @"bindingOffsetsOrTransformsLength";
  }

  else
  {
    objc_msgSend_encodeBytes_length_forKey_(a3, v12, self->_bindingData.innerLayerInfluences, self->_bindingData.innerLayerInfluencesLength, @"bindingInnerLayerInfluences");
    objc_msgSend_encodeInt32_forKey_(a3, v18, LODWORD(self->_bindingData.innerLayerInfluencesLength), @"bindingInnerLayerInfluencesLength");
    if (self->_bindingMode != 1)
    {
      return;
    }

    objc_msgSend_encodeBytes_length_forKey_(a3, v19, self->_bindingData.innerLayerTNBs, self->_bindingData.tnbMatricesLength, @"bindingInnerTNBs");
    objc_msgSend_encodeBytes_length_forKey_(a3, v20, self->_bindingData.outerLayerTNBs, self->_bindingData.tnbMatricesLength, @"bindingOuterTNBs");
    objc_msgSend_encodeInt32_forKey_(a3, v21, LODWORD(self->_bindingData.tnbMatricesLength), @"bindingSpaceVectorsLength");
    offsetsLength = self->_bindingData.offsetsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.offsetsLength;
    objc_msgSend_encodeBytes_length_forKey_(a3, v23, *(p_legacyOffsetsOrTransformsLength - 2), offsetsLength, @"bindingInnerOffsets");
    objc_msgSend_encodeBytes_length_forKey_(a3, v24, *(p_legacyOffsetsOrTransformsLength - 1), *p_legacyOffsetsOrTransformsLength, @"bindingOuterOffsets");
    v17 = @"bindingOffsetsLength";
  }

  v25 = *p_legacyOffsetsOrTransformsLength;

  objc_msgSend_encodeInt32_forKey_(a3, v16, v25, v17);
}

- (VFXModelWrapDeformerParameters)initWithCoder:(id)a3
{
  v54.receiver = self;
  v54.super_class = VFXModelWrapDeformerParameters;
  v6 = [(VFXModelWrapDeformerParameters *)&v54 init];
  if (v6)
  {
    v6->_vertexCount = objc_msgSend_decodeInt32ForKey_(a3, v4, @"vertexCount", v5);
    v6->_bindingMode = objc_msgSend_decodeInt32ForKey_(a3, v7, @"bindingMode", v8);
    v6->_bindingData.pointIndicesStride = objc_msgSend_decodeInt32ForKey_(a3, v9, @"bindingPointIndicesStride", v10);
    v6->_bindingData.barycentricCoordsStride = objc_msgSend_decodeInt32ForKey_(a3, v11, @"bindingBarycentricCoordsStride", v12);
    v6->_bindingData.pointIndicesFormat = objc_msgSend_decodeIntegerForKey_(a3, v13, @"bindingPointIndicesFormat", v14);
    v6->_bindingData.barycentricCoordsFormat = objc_msgSend_decodeIntegerForKey_(a3, v15, @"bindingBarycentricCoordsFormat", v16);
    vertexCount = v6->_vertexCount;
    v18 = v6->_bindingData.pointIndicesStride * vertexCount;
    v19 = v6->_bindingData.barycentricCoordsStride * vertexCount;
    v6->_bindingData.pointIndices = malloc_type_malloc(v18, 0xBEB32C07uLL);
    v6->_bindingData.barycentricCoords = malloc_type_malloc(v19, 0x3421AD62uLL);
    __n = 0;
    v21 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v20, @"bindingPointIndices", &__n);
    if (__n == v18)
    {
      memcpy(v6->_bindingData.pointIndices, v21, v18);
    }

    v23 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v22, @"bindingBarycentricCoords", &__n);
    if (__n == v19)
    {
      memcpy(v6->_bindingData.barycentricCoords, v23, v19);
    }

    v26 = objc_msgSend_decodeBoolForKey_(a3, v24, @"isLegacySingleLayerDeformer", v25);
    v6->_isLegacySingleLayerDeformer = v26;
    if (v26)
    {
      v29 = objc_msgSend_decodeInt32ForKey_(a3, v27, @"bindingOffsetsOrTransformsLength", v28);
      v6->_bindingData.legacyOffsetsOrTransformsLength = v29;
      v6->_bindingData.legacyOffsetsOrTransforms = malloc_type_malloc(v29, 0x100004052888210uLL);
      __n = 0;
      v31 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v30, @"bindingOffsetsOrTransforms", &__n);
      v32 = __n;
      if (__n == v6->_bindingData.legacyOffsetsOrTransformsLength)
      {
        v33 = v31;
        legacyOffsetsOrTransforms = v6->_bindingData.legacyOffsetsOrTransforms;
LABEL_20:
        memcpy(legacyOffsetsOrTransforms, v33, v32);
      }
    }

    else
    {
      v35 = objc_msgSend_decodeInt32ForKey_(a3, v27, @"bindingInnerLayerInfluencesLength", v28);
      v6->_bindingData.innerLayerInfluencesLength = v35;
      v6->_bindingData.innerLayerInfluences = malloc_type_malloc(v35, 0x100004052888210uLL);
      __n = 0;
      v37 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v36, @"bindingInnerLayerInfluences", &__n);
      if (__n == v6->_bindingData.innerLayerInfluencesLength)
      {
        memcpy(v6->_bindingData.innerLayerInfluences, v37, __n);
      }

      if (v6->_bindingMode == 1)
      {
        v40 = objc_msgSend_decodeInt32ForKey_(a3, v38, @"bindingSpaceVectorsLength", v39);
        v6->_bindingData.tnbMatricesLength = v40;
        v6->_bindingData.innerLayerTNBs = malloc_type_malloc(v40, 0x100004052888210uLL);
        v6->_bindingData.outerLayerTNBs = malloc_type_malloc(v6->_bindingData.tnbMatricesLength, 0x100004052888210uLL);
        __n = 0;
        v42 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v41, @"bindingInnerTNBs", &__n);
        if (__n == v6->_bindingData.tnbMatricesLength)
        {
          memcpy(v6->_bindingData.innerLayerTNBs, v42, __n);
        }

        v44 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v43, @"bindingOuterTNBs", &__n);
        if (__n == v6->_bindingData.tnbMatricesLength)
        {
          memcpy(v6->_bindingData.outerLayerTNBs, v44, __n);
        }

        v47 = objc_msgSend_decodeInt32ForKey_(a3, v45, @"bindingOffsetsLength", v46);
        v6->_bindingData.offsetsLength = v47;
        v6->_bindingData.innerLayerOffsets = malloc_type_malloc(v47, 0x100004052888210uLL);
        v6->_bindingData.outerLayerOffsets = malloc_type_malloc(v6->_bindingData.offsetsLength, 0x100004052888210uLL);
        v49 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v48, @"bindingInnerOffsets", &__n);
        if (__n == v6->_bindingData.offsetsLength)
        {
          memcpy(v6->_bindingData.innerLayerOffsets, v49, __n);
        }

        v51 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v50, @"bindingOuterOffsets", &__n);
        v32 = __n;
        if (__n == v6->_bindingData.offsetsLength)
        {
          v33 = v51;
          legacyOffsetsOrTransforms = v6->_bindingData.outerLayerOffsets;
          goto LABEL_20;
        }
      }
    }
  }

  return v6;
}

- (void)initParametersIfNeededWithDrivingNodeRef:(__CFXNode *)a3 deformedNodeRef:(__CFXNode *)a4
{
  if (!self->_vertexCount)
  {
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.legacyOffsetsOrTransforms);
    v7 = sub_1AF1B75A0(a3);
    v8 = sub_1AF1B2C1C(v7);
    v9 = sub_1AF1B75A0(a4);
    v10 = sub_1AF1B2C1C(v9);
    v11 = sub_1AF1A4CE8(v8, 0);
    v12 = sub_1AF1A4CE8(v10, 0);
    v32 = sub_1AF1A4C6C(v8, 0, 0);
    v31 = sub_1AF1A4C6C(v10, 0, 0);
    v33 = v12;
    v13 = sub_1AF1AE6EC(v12);
    self->_vertexCount = v13;
    *&self->_bindingData.barycentricCoordsStride = xmmword_1AFE22040;
    v30 = malloc_type_malloc(4 * (v13 & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
    self->_bindingData.barycentricCoords = v30;
    v34 = v11;
    v14 = sub_1AF1AE6EC(v11) - 1;
    v15 = 1;
    if (v14 > 0xFF)
    {
      v15 = 2;
    }

    v16 = HIWORD(v14);
    if (HIWORD(v14))
    {
      v17 = 4;
    }

    else
    {
      v17 = v15;
    }

    v18 = 3 << (v14 > 0xFF);
    if (v16)
    {
      v18 = 12;
    }

    self->_bindingData.pointIndicesStride = v18;
    v19 = malloc_type_malloc(v18 * self->_vertexCount, 0x4316E93DuLL);
    self->_bindingData.pointIndices = v19;
    if (v17 == 1)
    {
      v21 = 0;
      v22 = 2;
      v20 = v19;
    }

    else
    {
      v20 = 0;
      if (v17 == 2)
      {
        v22 = 14;
        v21 = v19;
      }

      else
      {
        v21 = 0;
        v22 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v22;
    if (v16)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_1AF1A4604(v8, 3, self->_legacyDrivingNodeUVChannel, 0);
    if (!v24)
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1F6C(v25);
      }
    }

    v26 = sub_1AF1A4604(v10, 3, self->_legacyDeformedNodeUVChannel, 0);
    if (!v26)
    {
      v27 = sub_1AF0D5194();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1FF0(v27);
      }
    }

    v28 = sub_1AF1A4C6C(v8, 3, self->_legacyDrivingNodeUVChannel);
    v29 = sub_1AF1A4C6C(v10, 3, self->_legacyDeformedNodeUVChannel);
    sub_1AF1E1A04(self->_bindingMode, self->_vertexCount, v10, v8, v33, v34, v26, v24, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v31, v29, v32, v28, 0, v20, v21, v23, 0, v30, &self->_bindingData.legacyOffsetsOrTransforms, &self->_bindingData.legacyOffsetsOrTransformsLength);
  }
}

- (void)initParametersIfNeededWithInnerLayerNodeRef:(__CFXNode *)a3 outerLayerNodeRef:(__CFXNode *)a4 deformedNodeRef:(__CFXNode *)a5
{
  if (!self->_vertexCount)
  {
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.innerLayerInfluences);
    free(self->_bindingData.innerLayerTNBs);
    free(self->_bindingData.outerLayerTNBs);
    free(self->_bindingData.innerLayerOffsets);
    free(self->_bindingData.outerLayerOffsets);
    v9 = sub_1AF1B75A0(a3);
    v10 = sub_1AF1B2C1C(v9);
    v11 = sub_1AF1B75A0(a4);
    v12 = sub_1AF1B2C1C(v11);
    v13 = sub_1AF1B75A0(a5);
    v14 = sub_1AF1B2C1C(v13);
    v41 = sub_1AF1A4CE8(v10, 0);
    v40 = sub_1AF1A4CE8(v12, 0);
    v42 = v14;
    v15 = sub_1AF1A4CE8(v14, 0);
    v38 = sub_1AF1A4C6C(v10, 0, 0);
    v37 = sub_1AF1A4C6C(v12, 0, 0);
    v39 = v15;
    v16 = sub_1AF1AE6EC(v15);
    self->_vertexCount = v16;
    *&self->_bindingData.barycentricCoordsStride = xmmword_1AFE22050;
    v17 = malloc_type_malloc(8 * (v16 & 0x7FFFFFFF), 0x100004052888210uLL);
    v18 = 0;
    self->_bindingData.barycentricCoords = v17;
    v19 = 1;
    do
    {
      v20 = v19 & 1;
      if (v19)
      {
        v21 = v10;
      }

      else
      {
        v21 = v12;
      }

      v22 = sub_1AF1A4CE8(v21, 0);
      v23 = sub_1AF1AE6EC(v22);
      v19 = 0;
      if (v18 <= v23)
      {
        v18 = v23;
      }
    }

    while (v20);
    v24 = v18 - 1;
    v25 = (v18 - 1) > 0xFF;
    v26 = 1;
    if ((v18 - 1) > 0xFF)
    {
      v26 = 2;
    }

    v27 = HIWORD(v24);
    if (HIWORD(v24))
    {
      v28 = 4;
    }

    else
    {
      v28 = v26;
    }

    v29 = 3 << v25;
    if (v27)
    {
      v29 = 12;
    }

    self->_bindingData.pointIndicesStride = v29;
    v30 = malloc_type_malloc(v29 * self->_vertexCount, 0x9C621D7FuLL);
    self->_bindingData.pointIndices = v30;
    if (v28 == 1)
    {
      v32 = 0;
      v33 = 2;
      v31 = v30;
    }

    else
    {
      v31 = 0;
      if (v28 == 2)
      {
        v33 = 14;
        v32 = v30;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v33;
    if (v27)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = 4 * self->_vertexCount;
    self->_bindingData.innerLayerInfluencesLength = v35;
    v36 = malloc_type_malloc(v35, 0x100004052888210uLL);
    self->_bindingData.innerLayerInfluences = v36;
    sub_1AF1E26A8(self->_bindingMode, self->_vertexCount, v42, v10, v12, v39, v41, v40, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v38, v37, 1, v31, v32, v34, v17, 0, v36, &self->_bindingData.innerLayerTNBs, &self->_bindingData.outerLayerTNBs, &self->_bindingData.tnbMatricesLength, &self->_bindingData.innerLayerOffsets, &self->_bindingData.outerLayerOffsets, &self->_bindingData.offsetsLength);
  }
}

- (id)extraLayerMeshesWithDrivingMesh0:(__CFXMesh *)a3 drivingMesh1:(__CFXMesh *)a4
{
  v6 = sub_1AF1A4CE8(a3, 0);
  v7 = sub_1AF1A4CE8(a4, 0);
  v8 = sub_1AF1AE6EC(v6);
  v35 = a3;
  v34 = sub_1AF1A4C6C(a3, 0, 0);
  v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v9, 39, v10);
  v11 = *MEMORY[0x1E695E480];
  bytesDeallocator = *MEMORY[0x1E695E488];
  for (i = 1; i != 40; ++i)
  {
    v15 = malloc_type_malloc(12 * v8, 0x100004052888210uLL);
    if (v8 >= 1)
    {
      v16 = 0;
      v17 = i * 0.025;
      *&v17 = v17;
      v37 = vdupq_lane_s32(*&v17, 0);
      v18 = 2;
      v19 = 1;
      do
      {
        *v20.i64 = sub_1AF1AF084(v6, v16, v13, v14);
        v38 = v20;
        *v23.i64 = sub_1AF1AF084(v7, v16, v21, v22);
        v24 = vmlaq_f32(v38, vsubq_f32(v23, v38), v37);
        *&v15[4 * v18 - 8] = v24.i32[0];
        *&v15[4 * v18 - 4] = v24.i32[1];
        *&v15[4 * v18] = v24.i32[2];
        v16 = v19;
        v18 += 3;
      }

      while (v8 > v19++);
    }

    v26 = CFDataCreateWithBytesNoCopy(v11, v15, 12 * v8, bytesDeallocator);
    values = sub_1AF1ADBE4(v26, 0, v8, 3, 1);
    v27 = CFArrayCreate(v11, &values, 1, MEMORY[0x1E695E9C0]);
    v39 = v34;
    v28 = sub_1AF1A516C(v35, 0);
    v29 = sub_1AF27B22C(v27, v28, &v39);
    objc_msgSend_addObject_(v36, v30, v29, v31);
    CFRelease(v29);
    CFRelease(v27);
  }

  return v36;
}

@end