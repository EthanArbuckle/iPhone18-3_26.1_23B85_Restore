@interface VFXMTLTessellator
- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (VFXMTLTessellator)initWithModel:(__CFXModel *)model resourceManager:(id)manager;
- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device;
- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)dealloc;
- (void)draw:(id *)draw;
- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)subdivisionSurfaceTessellationDraw:(id *)draw;
- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)update:(id *)update;
- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateUniformTessellator:(id *)tessellator;
@end

@implementation VFXMTLTessellator

- (VFXMTLTessellator)initWithModel:(__CFXModel *)model resourceManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = VFXMTLTessellator;
  result = [(VFXMTLTessellator *)&v7 init];
  if (result)
  {
    result->_model = model;
    result->_resourceManager = manager;
    *&result->_cachedTessellator.tessellationPartitionMode = 0;
    result->_cachedTessellator.parameters = 0;
    *&result->_cachedTessellator.type = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLTessellator;
  [(VFXMTLTessellator *)&v3 dealloc];
}

- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  type = self->_cachedTessellator.type;
  if ((type - 1) < 3)
  {
    tessellationPartitionMode = self->_cachedTessellator.tessellationPartitionMode;
LABEL_5:
    v9 = (tessellationPartitionMode & 3);
    goto LABEL_6;
  }

  if (type == 4)
  {
    v8 = sub_1AF174F44(self->_model, 0, 0);
    LOBYTE(tessellationPartitionMode) = sub_1AF171620(v8);
    type = self->_cachedTessellator.type;
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  if (type == 4)
  {
    sub_1AF174F44(self->_model, 0, 0);
    v9 = (*&v9 & 0xFFFFFFF3 | (4 * (sub_1AF171634() & 3)));
    type = self->_cachedTessellator.type;
  }

  else if (type == 3)
  {
    v9 = (*&v9 | 4);
    goto LABEL_11;
  }

  if ((type - 1) < 3)
  {
LABEL_11:
    v10 = sub_1AFDEA208(element);
    if (v10 == 1)
    {
      v9 = (*&v9 | 0x20);
    }

    else if (v10)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEAC68(element, v11);
      }
    }

    else
    {
      v9 = (*&v9 | 0x10);
    }

    goto LABEL_22;
  }

  if (type != 4)
  {
    if (!type)
    {
      return v9;
    }

    goto LABEL_23;
  }

  sub_1AF174F44(self->_model, 0, 0);
  v9 = (*&v9 & 0xFFFFFFCF | (16 * (+[VFXRenderer allocatedTextureCount]_0() & 3)));
LABEL_22:
  type = self->_cachedTessellator.type;
LABEL_23:
  if ((type - 1) < 3)
  {
    return (*&v9 | ((self->_cachedTessellator.tessellationFactorScale != 1.0) << 6));
  }

  return v9;
}

- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  else
  {
    return objc_msgSend__pipelineStateHashForMeshElement_patchType_(self, a2, element, type);
  }
}

- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  v9 = objc_msgSend__pipelineStateHashForMeshElement_patchType_(self, a2, element, type);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF21BD50;
  v11[3] = &unk_1E7A7D188;
  v12 = v9;
  v11[4] = device;
  return _Block_copy(v11);
}

- (void)update:(id *)update
{
  v17 = 0uLL;
  v18 = 0;
  sub_1AF1B40F0(self->_model, &v17);
  v7 = v17.n128_u8[0];
  p_cachedTessellator = &self->_cachedTessellator;
  if (v17.n128_u8[0] != self->_cachedTessellator.type)
  {

    self->_tessellationFactorBuffer = 0;
    v7 = v17.n128_u8[0];
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v13 = v17;
      *&v14 = v18;
      objc_msgSend_updateUniformTessellator_(self, v5, &v13, v6);
    }

    else
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEACF4(v12);
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v16 = v18;
        v10 = *&update->var2;
        v13 = *&update->var0;
        v14 = v10;
        v15 = v17;
        objc_msgSend_updateScreenSpaceAdaptiveTessellator_parameters_(self, v5, &v15, &v13);
        break;
      case 3:
        v16 = v18;
        v11 = *&update->var2;
        v13 = *&update->var0;
        v14 = v11;
        v15 = v17;
        objc_msgSend_updateConstrainedEdgeLengthTessellator_parameters_(self, v5, &v15, &v13);
        break;
      case 4:
        v16 = v18;
        v9 = *&update->var2;
        v13 = *&update->var0;
        v14 = v9;
        v15 = v17;
        objc_msgSend_updateSubdivisionSurfaceTessellator_parameters_(self, v5, &v15, &v13);
        break;
    }
  }

  *p_cachedTessellator = v17;
  p_cachedTessellator[1].n128_u64[0] = v18;
}

- (void)draw:(id *)draw
{
  v12 = 0uLL;
  v13 = 0;
  *&v7 = sub_1AF1B40F0(self->_model, &v12).n128_u64[0];
  if (v12.n128_u8[0] <= 1u)
  {
    if (v12.n128_u8[0])
    {
      if (v12.n128_u8[0] != 1)
      {
        return;
      }
    }

    else
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEACF4(v9);
      }
    }

    objc_msgSend_uniformTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v5, draw->var3, draw->var1, draw->var4, draw->var5);
    return;
  }

  switch(v12.n128_u8[0])
  {
    case 2u:
      objc_msgSend_screenSpaceAdaptiveTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v5, draw->var3, draw->var1, draw->var4, draw->var5, v7);
      break;
    case 3u:
      objc_msgSend_constrainedEdgeLengthTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v5, draw->var3, draw->var1, draw->var4, draw->var5, v7);
      break;
    case 4u:
      v8 = *&draw->var2;
      v10[0] = *&draw->var0;
      v10[1] = v8;
      v10[2] = *&draw->var4;
      v11 = *&draw->var6;
      objc_msgSend_subdivisionSurfaceTessellationDraw_(self, v5, v10, v6);
      break;
  }
}

- (void)updateUniformTessellator:(id *)tessellator
{
  var0 = tessellator->var4.var0.var0;
  var1 = tessellator->var4.var0.var1;
  v7 = HIWORD(LODWORD(var0)) & 0x8000;
  v8 = (LODWORD(var0) >> 23);
  v9 = v8 - 112;
  v10 = v7 | 0x7BFF;
  if ((LODWORD(var0) & 0x7FFFFF) != 0)
  {
    LOWORD(v11) = v7 + 1;
  }

  else
  {
    v11 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v12 = v11 | 0x7C00;
  if (v8 == 255)
  {
    v10 = v12;
  }

  v13 = v8 - 113;
  if (v8 >= 0x71)
  {
    LOWORD(v14) = v10;
  }

  else
  {
    v14 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v15 = HIWORD(LODWORD(var0)) & 0x8000 | (LODWORD(var0) >> 13) & 0x3FF | (v9 << 10);
  if (v13 > 0x1D)
  {
    LOWORD(v15) = v14;
  }

  WORD2(v27) = v15;
  WORD1(v27) = v15;
  LOWORD(v27) = v15;
  v16 = HIWORD(LODWORD(var1)) & 0x8000;
  v17 = (LODWORD(var1) >> 23);
  v18 = v17 - 112;
  v19 = v17 - 113;
  v20 = v16 | 0x7BFF;
  if ((LODWORD(var1) & 0x7FFFFF) != 0)
  {
    LOWORD(v21) = v16 + 1;
  }

  else
  {
    v21 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v22 = v21 | 0x7C00;
  if (v17 == 255)
  {
    v20 = v22;
  }

  if (v17 >= 0x71)
  {
    LOWORD(v23) = v20;
  }

  else
  {
    v23 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v24 = HIWORD(LODWORD(var1)) & 0x8000 | (LODWORD(var1) >> 13) & 0x3FF | (v18 << 10);
  if (v19 > 0x1D)
  {
    LOWORD(v24) = v23;
  }

  HIWORD(v27) = v24;
  tessellationFactorBuffer = self->_tessellationFactorBuffer;
  if (tessellationFactorBuffer)
  {
    if (*&tessellator->var4 != *&self->_cachedTessellator.parameters)
    {
      *objc_msgSend_contents(tessellationFactorBuffer, a2, tessellator, v3) = v27;
    }
  }

  else
  {
    sub_1AFDE8444(self->_resourceManager, &v27, 8, 0);
    self->_tessellationFactorBuffer = v26;
  }
}

- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v10 = objc_msgSend_renderEncoder(context, a2, element, mesh);
  *&v11 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v10 + 16), v12, v13, v14, v11);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v10 + 16), v15, self->_tessellationFactorBuffer, 0, 0);

  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v16, element, count);
}

- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters
{
  v137 = *MEMORY[0x1E69E9840];
  var0 = parameters->var0;
  v6 = objc_msgSend_resourceComputeEncoder(parameters->var1, a2, tessellator, parameters);
  v106 = v6;
  selfCopy = self;
  if (!self->_tessellationFactorBuffer)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v7 = sub_1AFDEA208(var0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v130, v136, 16);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v131;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v131 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v11 += sub_1AFDEA534(*(*(&v130 + 1) + 8 * i));
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v130, v136, 16);
      }

      while (v10);
      v15 = 24 * v11;
    }

    else
    {
      v15 = 0;
    }

    sub_1AFDE851C(selfCopy->_resourceManager, v15, 32);
    selfCopy->_tessellationFactorBuffer = v16;
    v6 = v106;
  }

  v17 = sub_1AFDEA004(var0);
  v21 = objc_msgSend_attributes(v17, v18, v19, v20);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 0, v23);
  v28 = objc_msgSend_layouts(v17, v25, v26, v27);
  v102 = v24;
  v32 = objc_msgSend_bufferIndex(v24, v29, v30, v31);
  v101 = objc_msgSend_objectAtIndexedSubscript_(v28, v33, v32, v34);
  objc_msgSend_pushDebugGroup_(v6, v35, @"Compute VFXModelScreenSpaceAdaptiveTessellator tessellation factors", v36);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v103 = var0;
  obj = sub_1AFDEA208(var0);
  v38 = v6;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v126, v135, 16);
  if (v108)
  {
    v42 = 0;
    v100 = *v127;
    do
    {
      for (j = 0; j != v108; ++j)
      {
        if (*v127 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v126 + 1) + 8 * j);
        v45 = sub_1AFDEA208(v44);
        if (v45)
        {
          if (v45 == 1)
          {
            v48 = @"compute_tessellation_factors_screeenspace_adaptive_uint32";
          }

          else
          {
            v49 = sub_1AF0D5194();
            v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
            v48 = &stru_1F2575650;
            if (v50)
            {
              sub_1AFDEAD38(v134, v44);
              v48 = &stru_1F2575650;
            }
          }
        }

        else
        {
          v48 = @"compute_tessellation_factors_screeenspace_adaptive_uint16";
        }

        v51 = objc_msgSend_computePipelineStateForKernel_(selfCopy->_resourceManager, v46, v48, v47);
        v110 = sub_1AFDE323C(v51);
        v52 = sub_1AFDEA534(v44);
        v53 = sub_1AFDE868C(v44);
        v111 = objc_msgSend_buffer(v53, v54, v55, v56);
        v57 = sub_1AFDE868C(v44);
        v109 = objc_msgSend_offset(v57, v58, v59, v60);
        v61 = sub_1AFDE8614(v44);
        v62 = sub_1AFDEA1E8(v103);
        v66 = objc_msgSend_bufferIndex(v102, v63, v64, v65);
        v69 = objc_msgSend_objectAtIndexedSubscript_(v62, v67, v66 - 18, v68);
        v73 = objc_msgSend_stride(v101, v70, v71, v72);
        v77 = objc_msgSend_engineContext(parameters->var1, v74, v75, v76);
        v78 = sub_1AF130548(v77);
        v79 = tessellator->var4.var0.var0;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v78.n128_f32[0] = v78.n128_f32[3] / v79;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        LODWORD(v112) = v52;
        BYTE4(v112) = v73;
        var2 = parameters->var2;
        v81 = *var2;
        v82 = *(var2 + 1);
        v83 = *(var2 + 3);
        v115 = *(var2 + 2);
        v116 = v83;
        v113 = v81;
        v114 = v82;
        v84 = *(var2 + 4);
        v85 = *(var2 + 5);
        v86 = *(var2 + 7);
        v119 = *(var2 + 6);
        v120 = v86;
        v117 = v84;
        v118 = v85;
        v87 = *(var2 + 8);
        v88 = *(var2 + 9);
        v89 = *(var2 + 11);
        v123 = *(var2 + 10);
        v124 = v89;
        v121 = v87;
        v122 = v88;
        LODWORD(v125) = v78.n128_u32[0];
        v38 = v106;
        objc_msgSend_setComputePipelineState_(v106, v90, v110, v91);
        objc_msgSend_setBuffer_offset_atIndex_(v106, v92, selfCopy->_tessellationFactorBuffer, 24 * v42, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v106, v93, v111, v61 + v109, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v106, v94, v69, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(v106, v95, &v112, 224, 3);
        objc_msgSend_dispatchOnGrid1D_(v106, v96, v52, v97);
        v42 += v52;
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v98, &v126, v135, 16);
    }

    while (v108);
  }

  objc_msgSend_popDebugGroup(v38, v39, v40, v41);
}

- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = sub_1AFDEA208(mesh);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v32, 16);
  if (v12)
  {
    v16 = v12;
    v17 = 0;
    v18 = *v29;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v10);
      }

      v20 = *(*(&v28 + 1) + 8 * v19);
      if (v20 == element)
      {
        break;
      }

      v17 += sub_1AFDEA534(v20);
      if (v16 == ++v19)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v28, v32, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = objc_msgSend_renderEncoder(context, v13, v14, v15, v28);
  *&v22 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v21 + 16), v23, v24, v25, v22);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v21 + 16), v26, self->_tessellationFactorBuffer, 24 * v17, 0);
  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v27, element, count);
}

- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters
{
  v107 = *MEMORY[0x1E69E9840];
  var0 = parameters->var0;
  if (self->_tessellationFactorBuffer)
  {
    if (tessellator->var4.var0.var0 == self->_cachedTessellator.parameters.uniform.edgeTessellationFactor)
    {
      return;
    }
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v8 = sub_1AFDEA208(var0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v100, v106, 16);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v101;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v101 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v12 += sub_1AFDEA534(*(*(&v100 + 1) + 8 * i));
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v100, v106, 16);
      }

      while (v11);
      v16 = 24 * v12;
    }

    else
    {
      v16 = 0;
    }

    sub_1AFDE851C(self->_resourceManager, v16, 32);
    self->_tessellationFactorBuffer = v17;
  }

  selfCopy = self;
  v18 = objc_msgSend_resourceComputeEncoder(parameters->var1, a2, tessellator, parameters);
  v19 = sub_1AFDEA004(var0);
  v23 = objc_msgSend_attributes(v19, v20, v21, v22);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25);
  v30 = objc_msgSend_layouts(v19, v27, v28, v29);
  v89 = v26;
  v34 = objc_msgSend_bufferIndex(v26, v31, v32, v33);
  v88 = objc_msgSend_objectAtIndexedSubscript_(v30, v35, v34, v36);
  v92 = v18;
  objc_msgSend_pushDebugGroup_(v18, v37, @"Compute kCFXModelTessellatorTypeConstrainedEdgeLength tessellation factors", v38);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v90 = var0;
  obj = sub_1AFDEA208(var0);
  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v96, v105, 16);
  if (v93)
  {
    v43 = 0;
    v87 = *v97;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v97 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v96 + 1) + 8 * j);
        v46 = sub_1AFDEA208(v45);
        if (v46)
        {
          if (v46 == 1)
          {
            v49 = @"compute_tessellation_factors_constrained_edge_uint32";
          }

          else
          {
            v50 = sub_1AF0D5194();
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
            v49 = &stru_1F2575650;
            if (v51)
            {
              sub_1AFDEAD38(v104, v45);
              v49 = &stru_1F2575650;
            }
          }
        }

        else
        {
          v49 = @"compute_tessellation_factors_constrained_edge_uint16";
        }

        v52 = objc_msgSend_computePipelineStateForKernel_(selfCopy->_resourceManager, v47, v49, v48);
        v53 = sub_1AFDE323C(v52);
        v54 = sub_1AFDEA534(v45);
        v55 = sub_1AFDE868C(v45);
        v94 = objc_msgSend_buffer(v55, v56, v57, v58);
        v59 = sub_1AFDE868C(v45);
        v63 = objc_msgSend_offset(v59, v60, v61, v62);
        v64 = sub_1AFDE8614(v45);
        v65 = sub_1AFDEA1E8(v90);
        v69 = objc_msgSend_bufferIndex(v89, v66, v67, v68);
        v72 = objc_msgSend_objectAtIndexedSubscript_(v65, v70, v69 - 18, v71);
        v76 = objc_msgSend_stride(v88, v73, v74, v75);
        v95[0] = v54;
        v95[1] = v76;
        v95[2] = LODWORD(tessellator->var4.var0.var0);
        objc_msgSend_setComputePipelineState_(v92, v77, v53, v78);
        objc_msgSend_setBuffer_offset_atIndex_(v92, v79, selfCopy->_tessellationFactorBuffer, 24 * v43, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v92, v80, v94, v64 + v63, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v92, v81, v72, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(v92, v82, v95, 12, 3);
        objc_msgSend_dispatchOnGrid1D_(v92, v83, v54, v84);
        v43 += v54;
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, &v96, v105, 16);
    }

    while (v93);
  }

  objc_msgSend_popDebugGroup(v92, v40, v41, v42);
}

- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = sub_1AFDEA208(mesh);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v32, 16);
  if (v12)
  {
    v16 = v12;
    v17 = 0;
    v18 = *v29;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v10);
      }

      v20 = *(*(&v28 + 1) + 8 * v19);
      if (v20 == element)
      {
        break;
      }

      v17 += sub_1AFDEA534(v20);
      if (v16 == ++v19)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v28, v32, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = objc_msgSend_renderEncoder(context, v13, v14, v15, v28);
  *&v22 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v21 + 16), v23, v24, v25, v22);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v21 + 16), v26, self->_tessellationFactorBuffer, 24 * v17, 0);
  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v27, element, count);
}

- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters
{
  v7 = sub_1AF174F44(self->_model, 0, 0);
  v7[1] = tessellator->var1;
  v10 = sub_1AFDEA180(parameters->var0, 0, v8, v9);
  lastFramePositionBuffer = self->_lastFramePositionBuffer;
  if (lastFramePositionBuffer)
  {
    v12 = lastFramePositionBuffer == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  self->_lastFramePositionBuffer = v10;
  v14 = parameters->var4 | v13;
  if (v14)
  {
    v15 = sub_1AF1762AC(v7, v10, parameters->var1, parameters->var3);
LABEL_10:
    sub_1AF176448(v7, parameters->var1, parameters->var2, parameters->var3, *&v15);
    goto LABEL_11;
  }

  if (sub_1AF17641C(v7))
  {
    goto LABEL_10;
  }

LABEL_11:
  v19 = objc_msgSend_engineContext(parameters->var1, v16, v17, v18);
  if (sub_1AF12EE9C(v19, 0) && (sub_1AF12EE68(v19) & 0x100) != 0)
  {
    model = self->_model;
    var0 = parameters->var0;
    var1 = parameters->var1;

    sub_1AF176F00(model, var0, var1, v14 & 1);
  }
}

- (void)subdivisionSurfaceTessellationDraw:(id *)draw
{
  v5 = sub_1AF1A516C(draw->var0, 0);
  v8 = objc_msgSend_indexOfObject_(v5, v6, draw->var2, v7);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1AF174F44(self->_model, 0, 0);
  var5 = draw->var5;
  var6 = draw->var6;
  var4 = draw->var4;

  sub_1AF176848(v10, var5, var6, v9, var4);
}

@end