@interface VFXMTLBezierCurveDeformer
- (VFXMTLBezierCurveDeformer)initWithMeshlessGeometry:(__CFXGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context;
- (id)bufferForCommonProfileArgumentNamed:(id)named;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
@end

@implementation VFXMTLBezierCurveDeformer

- (VFXMTLBezierCurveDeformer)initWithMeshlessGeometry:(__CFXGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context
{
  v116 = *MEMORY[0x1E69E9840];
  v113.receiver = self;
  v113.super_class = VFXMTLBezierCurveDeformer;
  v10 = [(VFXMTLBezierCurveDeformer *)&v113 init:geometry];
  if (v10)
  {
    *v10->_anon_10 = sub_1AF15B34C(geometry);
    *&v10->_anon_10[16] = v11;
    *&v10->_anon_10[32] = v12;
    *&v10->_anon_10[48] = v13;
    v14 = sub_1AF15B364(geometry);
    v15 = sub_1AF21D644(v14);
    v16 = v15;
    v18 = v17;
    v19 = HIDWORD(v15);
    v112 = 0;
    v20 = sub_1AF21D658(v14, &v112);
    v10->_curveControlPointCount = v16;
    v10->_curveInfo.segmentCountLinear = v19;
    v10->_curveInfo.segmentCountQuadratic = v18;
    v21 = HIDWORD(v18);
    v10->_curveInfo.segmentCountCubic = WORD2(v18);
    v22 = v19 + 20;
    if (!v19)
    {
      v22 = 20;
    }

    v10->_curveInfo.segmentInfoOffsetLinear = 20;
    v23 = v22 + v18;
    v10->_curveInfo.segmentInfoOffsetQuadratic = v22;
    v24 = v21 == 0;
    if (v21)
    {
      LOWORD(v25) = (v23 + 15) & 0xFFF0;
    }

    else
    {
      v25 = (v22 + v18);
    }

    if (v24)
    {
      v26 = v22 + v18;
    }

    else
    {
      v26 = ((v23 + 15) & 0x7FFFFFFF0) + ((HIDWORD(v18) & 0x1FFFFFFF) << 10);
    }

    v10->_curveInfo.segmentInfoOffsetCubic = v25;
    v27 = v112;
    v28 = 2 * v112;
    v29 = (v26 + 1) & 0x1FFFFFFFFFELL;
    v10->_curveInfo.controlPointIndicesOffset = v29;
    v30 = (v29 + 2 * v27);
    v31 = malloc_type_malloc(v30, 0x100004077774924uLL);
    v32 = *&v10->_curveInfo.monotonicSubsegmentCountCubic;
    v31[4] = *&v10->_curveInfo.controlPointIndicesOffset;
    *v31 = v32;
    memcpy(v31 + v10->_curveInfo.controlPointIndicesOffset, v20, v28);
    sub_1AFDE8444(manager, v31, v30, 0);
    v10->_bezierCurveInfoBuffer = v33;
    free(v31);
    v37 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], v34, v35, v36);
    LODWORD(v28) = sub_1AF1F1A7C(30);
    LODWORD(v30) = sub_1AF1F1A7C(29);
    v41 = objc_msgSend_attributes(v37, v38, v39, v40);
    v44 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, 0, v43);
    objc_msgSend_setFormat_(v44, v45, 30, v46);
    objc_msgSend_setOffset_(v44, v47, 0, v48);
    objc_msgSend_setBufferIndex_(v44, v49, 18, v50);
    v54 = objc_msgSend_layouts(v37, v51, v52, v53);
    v58 = objc_msgSend_bufferIndex(v44, v55, v56, v57);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v54, v59, v58, v60);
    objc_msgSend_setStride_(v61, v62, v28, v63);
    objc_msgSend_setStepFunction_(v61, v64, 1, v65);
    v69 = objc_msgSend_attributes(v37, v66, v67, v68);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, 6, v71);
    objc_msgSend_setFormat_(v72, v73, 29, v74);
    objc_msgSend_setOffset_(v72, v75, 0, v76);
    objc_msgSend_setBufferIndex_(v72, v77, 19, v78);
    v82 = objc_msgSend_layouts(v37, v79, v80, v81);
    v86 = objc_msgSend_bufferIndex(v72, v83, v84, v85);
    v89 = objc_msgSend_objectAtIndexedSubscript_(v82, v87, v86, v88);
    objc_msgSend_setStride_(v89, v90, v30, v91);
    objc_msgSend_setStepFunction_(v89, v92, 1, v93);
    sub_1AFDE851C(manager, 4 * v30, 32);
    v10->_quadTexcoordsBuffer = v94;
    sub_1AFDE851C(manager, 4 * v28, 32);
    v10->_quadPositionsBuffer = v95;
    v96 = objc_alloc_init(VFXMTLMeshElement);
    sub_1AFDEA2A8(v96, 4);
    sub_1AFDEA4AC(v96, 0, 2);
    v97 = objc_alloc_init(VFXMTLMesh);
    v10->_quadMesh = v97;
    sub_1AFDEA024(v97, v37);
    v115 = *&v10->_quadPositionsBuffer;
    v99 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v98, &v115, 2);
    sub_1AFDEA1F4(v10->_quadMesh, v99);
    v114 = v96;
    v101 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v100, &v114, 1);
    sub_1AFDEA214(v10->_quadMesh, v101);

    v10->_buildQuadGeometryPipeline = objc_msgSend_computePipelineStateForKernel_(manager, v102, @"deformer_bezier_build_quad_geometry", v103);
    v10->_initBezierCurveInfoPipeline = objc_msgSend_computePipelineStateForKernel_(manager, v104, @"deformer_bezier_init_info", v105);
    if (v10->_curveInfo.segmentCountLinear)
    {
      v108 = objc_msgSend_computePipelineStateForKernel_(manager, v106, @"deformer_bezier_build_info_linear", v107);
    }

    else
    {
      v108 = 0;
    }

    v10->_buildBezierCurveInfoPipelineLinear = v108;
    if (v10->_curveInfo.segmentCountQuadratic)
    {
      v109 = objc_msgSend_computePipelineStateForKernel_(manager, v106, @"deformer_bezier_build_info_quadratic", v107);
    }

    else
    {
      v109 = 0;
    }

    v10->_buildBezierCurveInfoPipelineQuadratic = v109;
    if (v10->_curveInfo.segmentCountCubic)
    {
      v110 = objc_msgSend_computePipelineStateForKernel_(manager, v106, @"deformer_bezier_build_info_cubic", v107);
    }

    else
    {
      v110 = 0;
    }

    v10->_buildBezierCurveInfoPipelineCubic = v110;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBezierCurveDeformer;
  [(VFXMTLBezierCurveDeformer *)&v3 dealloc];
}

- (id)bufferForCommonProfileArgumentNamed:(id)named
{
  if (objc_msgSend_isEqualToString_(named, a2, @"vfx_bezier_curve_data", v3))
  {
    v8 = 128;
    return *(&self->super.isa + v8);
  }

  if (objc_msgSend_isEqualToString_(named, v6, @"vfx_bezier_curve_controlPoints", v7))
  {
    v8 = 136;
    return *(&self->super.isa + v8);
  }

  return 0;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context, buffers);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  var0 = buffers->var0;
  var1 = buffers->var1;
  self->_lastDeformedCurveControlPointsBuffer = var1;
  v14 = objc_msgSend_currentComputeEncoder(context, v8, v9, v10);
  objc_msgSend_resetCache(v14, v15, v16, v17);
  segmentCountLinear = self->_curveInfo.segmentCountLinear;
  segmentCountQuadratic = self->_curveInfo.segmentCountQuadratic;
  v49 = segmentCountQuadratic;
  v50 = segmentCountLinear;
  segmentCountCubic = self->_curveInfo.segmentCountCubic;
  v48 = segmentCountCubic;
  objc_msgSend_setBuffer_offset_atIndex_(v14, v21, self->_bezierCurveInfoBuffer, 0, 0);
  v22 = sub_1AFDE323C(self->_initBezierCurveInfoPipeline);
  objc_msgSend_dispatchOne_(v14, v23, v22, v24);
  objc_msgSend_setBuffer_offset_atIndex_(v14, v25, var0, 0, 1);
  if (segmentCountLinear)
  {
    objc_msgSend_setBytes_length_atIndex_(v14, v26, &v50, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v27, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v28, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetLinear, 3);
    v29 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineLinear);
    objc_msgSend_dispatchOnVertices_vertexCount_(v14, v30, v29, v50);
  }

  if (segmentCountQuadratic)
  {
    objc_msgSend_setBytes_length_atIndex_(v14, v26, &v49, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v31, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset + 4 * v50, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v32, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetQuadratic, 3);
    v33 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineQuadratic);
    objc_msgSend_dispatchOnVertices_vertexCount_(v14, v34, v33, v49);
  }

  if (segmentCountCubic)
  {
    objc_msgSend_setBytes_length_atIndex_(v14, v26, &v48, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v35, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset + 2 * (3 * v49 + 2 * v50), 2);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v36, self->_bezierCurveInfoBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v14, v37, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetCubic, 4);
    v38 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineCubic);
    objc_msgSend_dispatchOnVertices_vertexCount_(v14, v39, v38, v48);
  }

  curveControlPointCount = self->_curveControlPointCount;
  objc_msgSend_setBytes_length_atIndex_(v14, v26, &curveControlPointCount, 4, 0);
  v11 = 1;
  objc_msgSend_setBytes_length_atIndex_(v14, v40, self->_anon_10, 64, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v14, v41, var1, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v14, v42, self->_quadPositionsBuffer, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v14, v43, self->_quadTexcoordsBuffer, 0, 4);
  v44 = sub_1AFDE323C(self->_buildQuadGeometryPipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v14, v45, v44, 1);
  return v11;
}

@end