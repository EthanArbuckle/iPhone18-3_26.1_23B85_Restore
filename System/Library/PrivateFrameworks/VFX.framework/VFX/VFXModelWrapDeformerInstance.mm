@interface VFXModelWrapDeformerInstance
- (unint64_t)updateWithContext:(id)context;
- (void)dealloc;
@end

@implementation VFXModelWrapDeformerInstance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformerInstance;
  [(VFXModelWrapDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)context
{
  v6 = objc_msgSend__currentFrameHash(context, a2, context, v3);
  if (self->_currentFrameHash == v6)
  {
    return 0;
  }

  self->_currentFrameHash = v6;
  v11 = objc_msgSend__currentRenderContext(context, v7, v8, v9);
  v15 = objc_msgSend_resourceComputeEncoder(v11, v12, v13, v14);
  if (self->_isLegacySingleLayerDeformer)
  {
    v16 = sub_1AF1B9B04(self->_legacyDrivingNode);
    v84 = v16[1];
    v86 = *v16;
    v88 = v16[3];
    v90 = v16[2];
    v100 = *sub_1AF1B9B04(self->_deformedNode);
    v101 = __invert_f4(v100);
    v18 = 0;
    v92 = v86;
    v93 = v84;
    v94 = v90;
    v95 = v88;
    do
    {
      *(&v96 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101.columns[0], COERCE_FLOAT(*(&v92 + v18))), v101.columns[1], *(&v92 + v18), 1), v101.columns[2], *(&v92 + v18), 2), v101.columns[3], *(&v92 + v18), 3);
      v18 += 16;
    }

    while (v18 != 64);
    v19 = v97;
    v20 = v98;
    v21 = v99;
    p_vertexCount = &self->_legacyUniforms.vertexCount;
    *&self->_anon_114[12] = v96;
    *&self->_anon_114[28] = v19;
    *&self->_anon_114[44] = v20;
    *&self->_anon_114[60] = v21;
    objc_msgSend_setBytes_length_atIndex_(v15, v17, &self->_legacyUniforms, 80, 0);
    v26 = objc_msgSend_dependency0PositionBuffer(context, v23, v24, v25);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v27, v26, 0, 1);
    v31 = objc_msgSend_dstPositionBuffer(context, v28, v29, v30);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v32, v31, 0, 11);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v33, self->_pointIndicesBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v34, self->_barycentricCoordsBuffer, 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v35, self->_legacyOffsetsOrTransformsBuffer, 0, 6);
    if (self->_bindingMode == 1)
    {
      v39 = objc_msgSend_srcPositionBuffer(context, v36, v37, v38);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v40, v39, 0, 10);
    }
  }

  else
  {
    v41 = sub_1AF1B9B04(self->_innerLayerNode);
    v80 = v41[1];
    v81 = *v41;
    v82 = v41[3];
    v83 = v41[2];
    v42 = sub_1AF1B9B04(self->_outerLayerNode);
    v85 = v42[1];
    v87 = *v42;
    v89 = v42[3];
    v91 = v42[2];
    v102 = *sub_1AF1B9B04(self->_deformedNode);
    v103 = __invert_f4(v102);
    v44 = 0;
    v92 = v81;
    v93 = v80;
    v94 = v83;
    v95 = v82;
    do
    {
      *(&v96 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], COERCE_FLOAT(*(&v92 + v44))), v103.columns[1], *(&v92 + v44), 1), v103.columns[2], *(&v92 + v44), 2), v103.columns[3], *(&v92 + v44), 3);
      v44 += 16;
    }

    while (v44 != 64);
    v45 = 0;
    v46 = v97;
    v47 = v98;
    v48 = v99;
    *&self->_anon_14[12] = v96;
    *&self->_anon_14[28] = v46;
    *&self->_anon_14[44] = v47;
    *&self->_anon_14[60] = v48;
    v92 = v87;
    v93 = v85;
    v94 = v91;
    v95 = v89;
    do
    {
      *(&v96 + v45) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], COERCE_FLOAT(*(&v92 + v45))), v103.columns[1], *(&v92 + v45), 1), v103.columns[2], *(&v92 + v45), 2), v103.columns[3], *(&v92 + v45), 3);
      v45 += 16;
    }

    while (v45 != 64);
    p_vertexCount = &self->_uniforms.vertexCount;
    v49 = v97;
    v50 = v98;
    v51 = v99;
    *&self->_anon_14[76] = v96;
    *&self->_anon_14[92] = v49;
    *&self->_anon_14[108] = v50;
    *&self->_anon_14[124] = v51;
    objc_msgSend_setBytes_length_atIndex_(v15, v43, &self->_uniforms, 144, 0);
    v55 = objc_msgSend_dependency0PositionBuffer(context, v52, v53, v54);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v56, v55, 0, 1);
    v60 = objc_msgSend_dependency1PositionBuffer(context, v57, v58, v59);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v61, v60, 0, 2);
    v65 = objc_msgSend_dstPositionBuffer(context, v62, v63, v64);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v66, v65, 0, 11);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v67, self->_pointIndicesBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v68, self->_barycentricCoordsBuffer, 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v15, v69, self->_innerLayerInfluencesBuffer, 0, 5);
    if (self->_bindingMode == 1)
    {
      v71 = objc_msgSend_srcPositionBuffer(context, v36, v70, v38);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v72, v71, 0, 10);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v73, self->_innerBindingSpaceVectorsBuffer, 0, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v74, self->_outerBindingSpaceVectorsBuffer, 0, 9);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v75, self->_innerBindingOffsetsBuffer, 0, 6);
      objc_msgSend_setBuffer_offset_atIndex_(v15, v76, self->_outerBindingOffsetsBuffer, 0, 7, v80, v81, v82, v83);
    }
  }

  v77 = *p_vertexCount;
  v96 = 0uLL;
  *&v97 = 0;
  *(&v97 + 1) = v77;
  v98 = vdupq_n_s64(1uLL);
  objc_msgSend_setStageInRegion_(v15, v36, &v96, v38, v80, v81, v82, v83);
  v78 = sub_1AFDE323C(self->_computePipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v15, v79, v78, *p_vertexCount);
  return 1;
}

@end