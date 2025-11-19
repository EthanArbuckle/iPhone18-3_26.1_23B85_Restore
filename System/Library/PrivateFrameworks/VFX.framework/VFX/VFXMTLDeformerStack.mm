@interface VFXMTLDeformerStack
- (Class)deformerClassForMeshlesshGeometry:(__CFXGeometry *)a3;
- (MTLBlitCommandEncoder)currentBlitEncoder;
- (RGCachedComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)currentTransforms;
- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (id)dependencyBufferForInput:(unint64_t)a3 dependencyMesh:(id)a4;
- (id)dependencyBufferForInput:(unint64_t)a3 dependencyStack:(id)a4;
- (id)newBufferForDataKind:(unsigned __int8)a3 meshSource:(__CFXMeshSource *)a4 dataType:(signed __int16)a5 forStageInputOutputDescriptor:(BOOL)a6 usePrivateStorageMode:(BOOL)a7 outStride:(unint64_t *)a8;
- (id)newBufferForDataKind:(unsigned __int8)a3 positionSource:(__CFXMeshSource *)a4 normalSource:(__CFXMeshSource *)a5 positionDataType:(signed __int16)a6 normalDataType:(signed __int16)a7 forStageInputOutputDescriptor:(BOOL)a8 usePrivateStorageMode:(BOOL)a9 outStride:(unint64_t *)a10 outPositionOffset:(unint64_t *)a11 outNormalOffset:(unint64_t *)a12;
- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4;
- (unint64_t)currentFrameHash;
- (void)dealloc;
- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)a3;
- (void)enumerateInternalDeformersUsingBlock:(id)a3;
- (void)reconfigureIfNeededWithContext:(id)a3 programHashCodeRequirements:(id)a4;
- (void)setStageInputOutputBuffersToEncoder:(id)a3;
- (void)setupFinalMeshFromBaseMeshWithInfo:(id)a3;
- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)a3;
- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)a3 baseNormalSourceProvider:(id)a4 baseTangentSourceProvider:(id)a5 info:(id)a6;
- (void)updateDependencyBuffersInBufferArray:(id *)a3 forDeformer:(id)a4;
@end

@implementation VFXMTLDeformerStack

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLDeformerStack;
  [(VFXMTLDeformerStack *)&v3 dealloc];
}

- (Class)deformerClassForMeshlesshGeometry:(__CFXGeometry *)a3
{
  v3 = CFGetTypeID(a3);
  if (v3 == sub_1AF15B134())
  {

    return objc_opt_class();
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE28F4();
    }

    return 0;
  }
}

- (void)enumerateInternalDeformersUsingBlock:(id)a3
{
  if (self->_morphDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_skinDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_meshlessDeformer)
  {
    (*(a3 + 2))(a3);
  }

  if (self->_smoothNormalsDeformer)
  {
    v5 = *(a3 + 2);

    v5(a3);
  }
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)a3 baseNormalSourceProvider:(id)a4 baseTangentSourceProvider:(id)a5 info:(id)a6
{
  v6 = *&a6.var0;
  initialPositionBuffer = self->_initialPositionBuffer;
  if (initialPositionBuffer)
  {
    CFRelease(initialPositionBuffer);
    self->_initialPositionBuffer = 0;
  }

  initialNormalBuffer = self->_initialNormalBuffer;
  if (initialNormalBuffer)
  {
    CFRelease(initialNormalBuffer);
    self->_initialNormalBuffer = 0;
  }

  initialTangentBuffer = self->_initialTangentBuffer;
  if (initialTangentBuffer)
  {
    CFRelease(initialTangentBuffer);
    self->_initialTangentBuffer = 0;
  }

  initialBuffersStageInputDescriptor = self->_initialBuffersStageInputDescriptor;
  if (initialBuffersStageInputDescriptor)
  {
    CFRelease(initialBuffersStageInputDescriptor);
    self->_initialBuffersStageInputDescriptor = 0;
  }

  self->_initialPositionStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialNormalStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialTangentStageInputOutputDescriptorInfo.isActive = 0;
  if ((v6 & 0x100010001) != 0)
  {
    self->_initialBuffersStageInputDescriptor = objc_alloc_init(MEMORY[0x1E6974188]);
    v15 = (*(a3 + 2))(a3, self->_deformDataKind);
    v19 = sub_1AF1AE6EC(v15);
    if (v6)
    {
      v20 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v16, v17, v18);
      v23 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22);
      objc_msgSend_setFormat_(v23, v24, 30, v25);
      objc_msgSend_setOffset_(v23, v26, 0, v27);
      objc_msgSend_setBufferIndex_(v23, v28, 10, v29);
      v33 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v30, v31, v32);
      v37 = objc_msgSend_bufferIndex(v23, v34, v35, v36);
      v40 = objc_msgSend_objectAtIndexedSubscript_(v33, v38, v37, v39);
      objc_msgSend_setStepFunction_(v40, v41, 5, v42);
      if ((v6 & 0x100) != 0)
      {
        v162 = 0;
        self->_initialPositionBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v43, self->_deformDataKind, v15, 8, 1, 1, &v162);
        objc_msgSend_setStride_(v40, v51, v162, v52);
      }

      else
      {
        v44 = sub_1AF1F1A7C(30);
        sub_1AFDE851C(self->_resourceManager, v19 * v44, 32);
        self->_initialPositionBuffer = v45;
        objc_msgSend_setStride_(v40, v46, v44, v47);
      }

      v53 = objc_msgSend_format(v23, v48, v49, v50);
      v57 = objc_msgSend_offset(v23, v54, v55, v56);
      v61 = objc_msgSend_stride(v40, v58, v59, v60);
      self->_initialPositionStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = v53;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v57;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v61;
      if ((v6 & 0x10000) == 0)
      {
LABEL_12:
        if ((v6 & 0x100000000) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else if ((v6 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    v62 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v16, v17, v18);
    v65 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, 1, v64);
    objc_msgSend_setFormat_(v65, v66, 30, v67);
    objc_msgSend_setOffset_(v65, v68, 0, v69);
    objc_msgSend_setBufferIndex_(v65, v70, 11, v71);
    v75 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v72, v73, v74);
    v79 = objc_msgSend_bufferIndex(v65, v76, v77, v78);
    v82 = objc_msgSend_objectAtIndexedSubscript_(v75, v80, v79, v81);
    objc_msgSend_setStepFunction_(v82, v83, 5, v84);
    if ((v6 & 0x1000000) != 0)
    {
      v93 = (*(a4 + 2))(a4, self->_deformDataKind);
      if (!v93)
      {
        v94 = sub_1AF0D5194();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2928(v94, v92, v95, v96, v97, v98, v99, v100);
        }
      }

      v162 = 0;
      self->_initialNormalBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v92, self->_deformDataKind, v93, 8, 1, 1, &v162);
      objc_msgSend_setStride_(v82, v101, v162, v102);
    }

    else
    {
      v85 = sub_1AF1F1A7C(30);
      sub_1AFDE851C(self->_resourceManager, v19 * v85, 32);
      self->_initialNormalBuffer = v86;
      objc_msgSend_setStride_(v82, v87, v85, v88);
    }

    v103 = objc_msgSend_format(v65, v89, v90, v91);
    v107 = objc_msgSend_offset(v65, v104, v105, v106);
    v111 = objc_msgSend_stride(v82, v108, v109, v110);
    self->_initialNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = v103;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v107;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v111;
    if ((v6 & 0x100000000) != 0)
    {
LABEL_25:
      v112 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v16, v17, v18);
      v115 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, 2, v114);
      objc_msgSend_setFormat_(v115, v116, 31, v117);
      objc_msgSend_setOffset_(v115, v118, 0, v119);
      objc_msgSend_setBufferIndex_(v115, v120, 12, v121);
      v125 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v122, v123, v124);
      v129 = objc_msgSend_bufferIndex(v115, v126, v127, v128);
      v132 = objc_msgSend_objectAtIndexedSubscript_(v125, v130, v129, v131);
      objc_msgSend_setStepFunction_(v132, v133, 5, v134);
      if ((v6 & 0x10000000000) != 0)
      {
        v143 = (*(a5 + 2))(a5, self->_deformDataKind);
        if (!v143)
        {
          v144 = sub_1AF0D5194();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE29A0(v144, v142, v145, v146, v147, v148, v149, v150);
          }
        }

        v162 = 0;
        self->_initialTangentBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v142, self->_deformDataKind, v143, 9, 1, 1, &v162);
        objc_msgSend_setStride_(v132, v151, v162, v152);
      }

      else
      {
        v135 = sub_1AF1F1A7C(31);
        sub_1AFDE851C(self->_resourceManager, v19 * v135, 32);
        self->_initialTangentBuffer = v136;
        objc_msgSend_setStride_(v132, v137, v135, v138);
      }

      v153 = objc_msgSend_format(v115, v139, v140, v141);
      v157 = objc_msgSend_offset(v115, v154, v155, v156);
      v161 = objc_msgSend_stride(v132, v158, v159, v160);
      self->_initialTangentStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = v153;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v157;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v161;
    }
  }
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(id)a3
{
  *&v164[5] = *MEMORY[0x1E69E9840];
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  finalDataKind = self->_finalDataKind;
  v14 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], a2, *&a3.var0, v3);
  v15 = sub_1AF1A4F3C(self->_baseMesh);
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v19 = objc_msgSend_initWithCapacity_(v16, v17, v15, v18);
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  baseMesh = self->_baseMesh;
  v21 = self->_finalDataKind;
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = sub_1AF1E5014;
  v157[3] = &unk_1E7A7C1F8;
  v157[4] = self;
  v157[5] = v19;
  v157[6] = v14;
  v157[7] = &v159;
  v158 = finalDataKind == 0;
  sub_1AF1A2BEC(baseMesh, v21, v157);
  if (a3.var0)
  {
    v22 = sub_1AF1F1A7C(30);
    v23 = sub_1AF1A4604(self->_baseMesh, 0, 0, self->_deformDataKind);
    v24 = sub_1AF1AE6EC(v23);
    if ((*&a3.var0 & 0x100) != 0)
    {
      v26 = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v25, self->_deformDataKind, v23, 8, 0, 0, 0);
    }

    else
    {
      sub_1AFDE851C(self->_resourceManager, v24 * v22, 32);
    }

    self->_deformNormalBuffer = v26;
    v27 = self->_finalDataKind;
    if (v27 == self->_deformDataKind)
    {
      v28 = v26;
    }

    else
    {
      v32 = sub_1AF1A4604(self->_baseMesh, 0, 0, v27);
      v33 = sub_1AF1AE6EC(v32);
      sub_1AFDE851C(self->_resourceManager, v33 * v22, 32);
    }

    self->_finalNormalBuffer = v28;
    v34 = objc_msgSend_count(v19, v29, v30, v31);
    objc_msgSend_addObject_(v19, v35, self->_finalNormalBuffer, v36);
    v40 = objc_msgSend_attributes(v14, v37, v38, v39);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 1, v42);
    objc_msgSend_setFormat_(v43, v44, 30, v45);
    objc_msgSend_setOffset_(v43, v46, 0, v47);
    objc_msgSend_setBufferIndex_(v43, v48, v34 + 18, v49);
    v53 = objc_msgSend_layouts(v14, v50, v51, v52);
    v57 = objc_msgSend_bufferIndex(v43, v54, v55, v56);
    v60 = objc_msgSend_objectAtIndexedSubscript_(v53, v58, v57, v59);
    objc_msgSend_setStride_(v60, v61, v22, v62);
    objc_msgSend_setStepFunction_(v60, v63, 1, v64);
    v68 = objc_msgSend_offset(v43, v65, v66, v67);
    v72 = objc_msgSend_stride(v60, v69, v70, v71);
    self->_deformNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v68;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v72;
  }

  if ((*&a3 & 0x10000) != 0)
  {
    v73 = sub_1AF1F1A7C(31);
    v74 = sub_1AF1A4604(self->_baseMesh, 0, 0, self->_deformDataKind);
    v75 = sub_1AF1AE6EC(v74);
    if ((*&a3 & 0x1000000) != 0)
    {
      v77 = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v76, self->_deformDataKind, v74, 9, 0, 0, 0);
    }

    else
    {
      sub_1AFDE851C(self->_resourceManager, v75 * v73, 32);
    }

    self->_deformTangentBuffer = v77;
    v78 = self->_finalDataKind;
    if (v78 == self->_deformDataKind)
    {
      v79 = v77;
    }

    else
    {
      v83 = sub_1AF1A4604(self->_baseMesh, 0, 0, v78);
      v84 = sub_1AF1AE6EC(v83);
      sub_1AFDE851C(self->_resourceManager, v84 * v73, 32);
    }

    self->_finalTangentBuffer = v79;
    v85 = objc_msgSend_count(v19, v80, v81, v82);
    objc_msgSend_addObject_(v19, v86, self->_finalTangentBuffer, v87);
    v91 = objc_msgSend_attributes(v14, v88, v89, v90);
    v94 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, 2, v93);
    objc_msgSend_setFormat_(v94, v95, 31, v96);
    objc_msgSend_setOffset_(v94, v97, 0, v98);
    objc_msgSend_setBufferIndex_(v94, v99, v85 + 18, v100);
    v104 = objc_msgSend_layouts(v14, v101, v102, v103);
    v108 = objc_msgSend_bufferIndex(v94, v105, v106, v107);
    v111 = objc_msgSend_objectAtIndexedSubscript_(v104, v109, v108, v110);
    objc_msgSend_setStride_(v111, v112, v73, v113);
    objc_msgSend_setStepFunction_(v111, v114, 1, v115);
    v119 = objc_msgSend_offset(v94, v116, v117, v118);
    v123 = objc_msgSend_stride(v111, v120, v121, v122);
    self->_deformTangentStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = 31;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v119;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v123;
  }

  v124 = sub_1AF1A3CCC(self->_baseMesh);
  v125 = objc_alloc(MEMORY[0x1E695DF70]);
  v128 = objc_msgSend_initWithCapacity_(v125, v126, v124, v127);
  if (v124 >= 1)
  {
    for (i = 0; i != v124; ++i)
    {
      v130 = sub_1AF1A3D1C(self->_baseMesh, i, self->_finalDataKind);
      v131 = sub_1AF1A7034(v130);
      if (sub_1AF1F156C(v131))
      {
        v132 = sub_1AFDE7F98(self->_resourceManager);
        objc_msgSend_addObject_(v128, v133, v132, v134);
      }

      else if (self->_finalDataKind | finalDataKind)
      {
        v135 = sub_1AF0D5194();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2A18(v163, v164, v135);
        }
      }
    }
  }

  v136 = self->_finalDataKind;
  if (self->_deformDataKind != v136)
  {
    v137 = sub_1AF1A4604(self->_baseMesh, 0, 0, v136);
    self->_splatUniforms.maxIndex = sub_1AF1AE6EC(v137);
    v156 = 0;
    v141 = objc_msgSend_currentBlitEncoder(self, v138, v139, v140);
    objc_msgSend_deindexedToOriginalTableBufferWithBlitEncoder_indexSizeOut_(self, v142, v141, &v156);
    v155 = v156;
    v143 = self->_deformTangentBuffer;
    v154 = self->_deformNormalBuffer != 0;
    v153 = v143 != 0;
    v144 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v144, v145, &v155, 33, 0);
    objc_msgSend_setConstantValue_type_atIndex_(v144, v146, &v154, 53, 1);
    objc_msgSend_setConstantValue_type_atIndex_(v144, v147, &v153, 53, 2);
    v150 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v148, @"UInt%d-%d-%d", v149, (8 * v155), v154, v153);
    self->_splatDeformedToFinalPipeline = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(self->_resourceManager, v151, @"deformer_splat", v144, v150);
  }

  v152 = objc_alloc_init(VFXMTLMesh);
  self->_finalMesh = v152;
  sub_1AFDEA024(v152, v14);
  sub_1AFDEA1F4(self->_finalMesh, v19);
  sub_1AFDEA214(self->_finalMesh, v128);
  sub_1AFDEA29C(self->_finalMesh, v160[3]);

  _Block_object_dispose(&v159, 8);
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)a3
{
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  if (!self->_meshlessDeformer)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE2A94(v13, a2, *&a3.var0, v3, v14, v15, v16, v17);
    }
  }

  self->_finalMesh = objc_msgSend_finalMesh(self->_meshlessDeformer, a2, *&a3.var0, v3);
  v18 = sub_1AF1F1A7C(30);
  v19 = sub_1AFDEA004(self->_finalMesh);
  v23 = objc_msgSend_attributes(v19, v20, v21, v22);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25);
  v30 = objc_msgSend_layouts(v19, v27, v28, v29);
  v34 = objc_msgSend_bufferIndex(v26, v31, v32, v33);
  v37 = objc_msgSend_objectAtIndexedSubscript_(v30, v35, v34, v36);
  v38 = sub_1AF170784(self->_baseGeometry);
  v39 = sub_1AF1AE6EC(v38);
  sub_1AFDE851C(self->_resourceManager, v39 * v18, 32);
  self->_deformPositionBuffer = v40;
  CFRelease(v38);
  if (a3.var0 && (v44 = sub_1AF0D5194(), os_log_type_enabled(v44, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE2B0C(v44, v41, v42, v43, v45, v46, v47, v48);
    if ((*&a3 & 0x10000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*&a3 & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  v49 = sub_1AF0D5194();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE2B84(v49, v41, v42, v43, v50, v51, v52, v53);
  }

LABEL_23:
  v54 = objc_msgSend_offset(v26, v41, v42, v43);
  v58 = objc_msgSend_stride(v37, v55, v56, v57);
  self->_deformPositionStageInputOutputDescriptorInfo.isActive = 1;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v54;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v58;
}

- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  if (!self->_deindexedToOriginalTableBuffer)
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    v27 = 0;
    v7 = sub_1AF1A4F94(self->_baseMesh, &v27);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v10 = sub_1AF1AE6EC(v9);
    v11 = v27;
    v12 = v27 - 1;
    v26 = a3;
    if ((v27 - 1) < 0)
    {
      v15 = 8;
    }

    else
    {
      v13 = v12 >> 15;
      v14 = v12 > 0x7F;
      v15 = 1;
      if (v14)
      {
        v15 = 2;
      }

      if (v13)
      {
        v15 = 4;
      }
    }

    self->_deindexedToOriginalTableBufferIndexSize = v15;
    *a4 = v15;
    v25 = self->_deindexedToOriginalTableBufferIndexSize * v11;
    v16 = malloc_type_malloc(v25, 0x407733AFuLL);
    v17 = v16;
    deindexedToOriginalTableBufferIndexSize = self->_deindexedToOriginalTableBufferIndexSize;
    if (deindexedToOriginalTableBufferIndexSize == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 2)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 4)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (!v27)
    {
LABEL_31:
      self->_deindexedToOriginalTableBuffer = sub_1AFDE847C(self->_resourceManager, v17, v25, v26);
      free(v17);
      return self->_deindexedToOriginalTableBuffer;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v7 + 4 * v22);
      if (v23 >= v10 && (v24 = sub_1AF0D5194(), os_log_type_enabled(v24, OS_LOG_TYPE_FAULT)))
      {
        sub_1AFDE2BFC(v28, v29, v24);
        if (!v19)
        {
LABEL_27:
          if (v20)
          {
            v20[v22] = v23;
          }

          else
          {
            v21[v22] = v23;
          }

          goto LABEL_30;
        }
      }

      else if (!v19)
      {
        goto LABEL_27;
      }

      v19[v22] = v23;
LABEL_30:
      if (++v22 >= v27)
      {
        goto LABEL_31;
      }
    }
  }

  *a4 = self->_deindexedToOriginalTableBufferIndexSize;
  return self->_deindexedToOriginalTableBuffer;
}

- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  if (self->_deindexedToFirstDeindexedTableBuffer)
  {
    *a4 = self->_deindexedToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    v31 = 0;
    v7 = sub_1AF1A4F94(self->_baseMesh, &v31);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v29 = a3;
    v10 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v11 = sub_1AF1AE6EC(v10);
    v12 = v31;
    v13 = v31 - 1;
    if ((v31 - 1) < 0)
    {
      v16 = 8;
    }

    else
    {
      v14 = v13 >> 15;
      v15 = v13 > 0x7F;
      v16 = 1;
      if (v15)
      {
        v16 = 2;
      }

      if (v14)
      {
        v16 = 4;
      }
    }

    self->_deindexedToFirstDeindexedTableBufferIndexSize = v16;
    *a4 = v16;
    v28 = self->_deindexedToFirstDeindexedTableBufferIndexSize * v12;
    v17 = malloc_type_malloc(v28, 0xF4697E52uLL);
    v18 = v17;
    deindexedToFirstDeindexedTableBufferIndexSize = self->_deindexedToFirstDeindexedTableBufferIndexSize;
    if (deindexedToFirstDeindexedTableBufferIndexSize == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 2)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    v30 = v22;
    if (v31)
    {
      for (i = 0; i < v31; ++i)
      {
        v24 = *(v7 + 4 * i);
        v25 = v9[v24];
        if (v24 >= v11)
        {
          v26 = sub_1AF0D5194();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE2BFC(v34, v35, v26);
          }
        }

        if (v25 >= v31)
        {
          v27 = sub_1AF0D5194();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE2C44(v32, &v33, v27);
          }
        }

        if (i == v25)
        {
          if (v20)
          {
            v20[i] = -1;
          }

          else if (v21)
          {
            v21[i] = -1;
          }

          else
          {
            v30[i] = -1;
          }
        }

        else if (v20)
        {
          v20[i] = v25;
        }

        else if (v21)
        {
          v21[i] = v25;
        }

        else
        {
          v30[i] = v25;
        }
      }
    }

    self->_deindexedToFirstDeindexedTableBuffer = sub_1AFDE847C(self->_resourceManager, v18, v28, v29);
    free(v18);
  }

  return self->_deindexedToFirstDeindexedTableBuffer;
}

- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)a3 indexSizeOut:(unint64_t *)a4
{
  if (self->_originalToFirstDeindexedTableBuffer)
  {
    *a4 = self->_originalToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v10 = sub_1AF1AE6EC(v9);
    v11 = v10;
    v12 = 1;
    if (v10 - 1 > 0xFF)
    {
      v12 = 2;
    }

    v13 = 4;
    if (!((v10 - 1) >> 16))
    {
      v13 = v12;
    }

    self->_originalToFirstDeindexedTableBufferIndexSize = v13;
    *a4 = v13;
    v14 = v10;
    v15 = self->_originalToFirstDeindexedTableBufferIndexSize * v10;
    v16 = malloc_type_malloc(v15, 0xB69AB802uLL);
    v17 = v16;
    originalToFirstDeindexedTableBufferIndexSize = self->_originalToFirstDeindexedTableBufferIndexSize;
    if (originalToFirstDeindexedTableBufferIndexSize == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 2)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 4)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v11)
    {
      v22 = v20;
      v23 = v19;
      do
      {
        v25 = *v8++;
        v24 = v25;
        if (v19)
        {
          *v23 = v24;
        }

        else if (v20)
        {
          *v22 = v24;
        }

        else
        {
          *v21 = v24;
        }

        ++v23;
        ++v22;
        ++v21;
        --v14;
      }

      while (v14);
    }

    self->_originalToFirstDeindexedTableBuffer = sub_1AFDE847C(self->_resourceManager, v16, v15, a3);
    free(v17);
  }

  return self->_originalToFirstDeindexedTableBuffer;
}

- (id)newBufferForDataKind:(unsigned __int8)a3 meshSource:(__CFXMeshSource *)a4 dataType:(signed __int16)a5 forStageInputOutputDescriptor:(BOOL)a6 usePrivateStorageMode:(BOOL)a7 outStride:(unint64_t *)a8
{
  v10 = a6;
  v11 = a5;
  v14 = sub_1AF1AE6EC(a4);
  v15 = sub_1AF288070(v11);
  if (v10)
  {
    v16 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
    if (sub_1AF1F32D4(v16, v17, v18, v19))
    {
      v15 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v20 = malloc_type_malloc(v15 * v14, 0x100004077774924uLL);
  v35 = 0u;
  v36 = 0u;
  sub_1AF1AE1A8(a4, &v35);
  if (v14)
  {
    v27 = 0;
    v28 = v20;
    do
    {
      *v29.i64 = sub_1AF279750(BYTE4(v36), (v35 + v27 * BYTE6(v36)), v24, v25, v26);
      sub_1AF279B88(v11, v28, v29);
      v28 += v15;
      ++v27;
    }

    while (v14 != v27);
  }

  resourceManager = self->_resourceManager;
  if (a7)
  {
    v31 = objc_msgSend_currentBlitEncoder(self, v21, v22, v23);
    v32 = sub_1AFDE847C(resourceManager, v20, (v15 * v14), v31);
  }

  else
  {
    sub_1AFDE8444(self->_resourceManager, v20, (v15 * v14), 0);
  }

  v33 = v32;
  free(v20);
  if (a8)
  {
    *a8 = v15;
  }

  return v33;
}

- (id)newBufferForDataKind:(unsigned __int8)a3 positionSource:(__CFXMeshSource *)a4 normalSource:(__CFXMeshSource *)a5 positionDataType:(signed __int16)a6 normalDataType:(signed __int16)a7 forStageInputOutputDescriptor:(BOOL)a8 usePrivateStorageMode:(BOOL)a9 outStride:(unint64_t *)a10 outPositionOffset:(unint64_t *)a11 outNormalOffset:(unint64_t *)a12
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  if (a3 == 1 && a5 && (v18 = sub_1AF1AE6EC(a4), v18 != sub_1AF1AE6EC(a5)))
  {
    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2C8C();
    }

    return 0;
  }

  else
  {
    v19 = sub_1AF1AE6EC(a4);
    v20 = sub_1AF288070(v14);
    v21 = sub_1AF288070(v13);
    v22 = v21 + v20;
    if (v12)
    {
      v23 = v21;
      v24 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
      if (sub_1AF1F32D4(v24, v25, v26, v27))
      {
        v22 = (v23 + ((v20 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v20 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }
    }

    v45 = self;
    v28 = malloc_type_malloc(v22 * v19, 0x100004077774924uLL);
    v48 = 0u;
    v49 = 0u;
    sub_1AF1AE1A8(a4, &v48);
    v34 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    if (a5)
    {
      sub_1AF1AE1A8(a5, &v46);
    }

    if (v19)
    {
      v35 = 0;
      v36 = v28;
      do
      {
        *v37.i64 = sub_1AF279750(BYTE4(v49), (v48 + v35 * BYTE6(v49)), v34, v32, v33);
        sub_1AF279B88(v14, v36, v37);
        if (a5)
        {
          *v38.i64 = sub_1AF279750(BYTE4(v47), (v46 + v35 * BYTE6(v47)), v34, v32, v33);
          sub_1AF279B88(v13, v36 + v20, v38);
        }

        v36 += v22;
        ++v35;
      }

      while (v19 != v35);
    }

    v39 = v45[1];
    if (a9)
    {
      v40 = objc_msgSend_currentBlitEncoder(v45, v29, v30, v31);
      v41 = sub_1AFDE847C(v39, v28, (v22 * v19), v40);
    }

    else
    {
      sub_1AFDE8444(v45[1], v28, (v22 * v19), 0);
    }

    v42 = v41;
    free(v28);
    if (a10)
    {
      *a10 = v22;
    }

    if (a11)
    {
      *a11 = 0;
    }

    if (a12)
    {
      *a12 = v20;
    }
  }

  return v42;
}

- (MTLBlitCommandEncoder)currentBlitEncoder
{
  result = self->_currentInitResourceBlitEncoder;
  if (!result)
  {
    result = *objc_msgSend_resourceBlitEncoder(self->_currentInitRenderContext, a2, v2, v3);
    self->_currentInitResourceBlitEncoder = result;
  }

  return result;
}

- (void)reconfigureIfNeededWithContext:(id)a3 programHashCodeRequirements:(id)a4
{
  v4 = *&a4.var0;
  v204 = *MEMORY[0x1E69E9840];
  if (self->_isValid && (!a4.var0 || self->_finalTangentBuffer))
  {
    return;
  }

  self->_currentInitRenderContext = a3;
  v6 = sub_1AF16B950(self->_cfxDeformerStack);
  v7 = sub_1AF170774(v6);
  v10 = v7;
  baseGeometry = self->_baseGeometry;
  if (baseGeometry != v6)
  {
    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    self->_baseGeometry = v6;
    self->_baseMesh = v11;
  }

  if (v7)
  {
    v12 = objc_msgSend_deformerClassForMeshlesshGeometry_(self, v8, v6, v9);
    v15 = objc_msgSend_deformsControlPointsForMeshlessGeometry_(v12, v13, v6, v14);
  }

  else
  {
    v12 = 0;
    v15 = objc_msgSend_deformsControlPointsForMeshlessGeometry_(0, v8, v6, v9);
  }

  v151 = v15;
  finalDataKind = self->_finalDataKind;
  v17 = sub_1AF16BA50(self->_cfxDeformerStack);
  v18 = sub_1AF16BB4C(self->_cfxDeformerStack);
  v156 = v18;
  if (v18)
  {
    v169 = !sub_1AF1C9420(v18);
  }

  else
  {
    v169 = 0;
  }

  v167 = v6;
  v19 = sub_1AF16BC38(self->_cfxDeformerStack);
  v26 = objc_msgSend_count(v19, v20, v21, v22);
  if (v17)
  {
    v27 = objc_msgSend_requiredInputs(VFXMTLMorphDeformer, v23, v24, v25);
  }

  else
  {
    v27 = 0;
  }

  if (v169)
  {
    v27 |= objc_msgSend_requiredInputs(VFXMTLSkinDeformer, v23, v24, v25);
  }

  v165 = self;
  v159 = v12;
  if (v12)
  {
    v27 |= objc_msgSend_requiredInputs(v12, v23, v24, v25);
  }

  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v23, &v195, v203, 16, v151);
  if (v28)
  {
    v32 = v28;
    v33 = *v196;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v196 != v33)
        {
          objc_enumerationMutation(v19);
        }

        LODWORD(v27) = objc_msgSend_requiredInputs(*(*(&v195 + 1) + 8 * i), v29, v30, v31) | v27;
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v29, &v195, v203, 16);
    }

    while (v32);
  }

  baseMesh = v165->_baseMesh;
  if (!baseMesh)
  {
    v36 = 0;
    goto LABEL_33;
  }

  v36 = sub_1AF1A47C0(baseMesh, 1, v165->_deformDataKind, 0);
  v37 = v165->_baseMesh;
  if (!v37)
  {
LABEL_33:
    v38 = 0;
    goto LABEL_34;
  }

  v38 = sub_1AF1A47C0(v37, 4, v165->_deformDataKind, 0);
LABEL_34:
  v160 = v10;
  v39 = finalDataKind != 0;
  finalNormalBuffer = v165->_finalNormalBuffer;
  finalTangentBuffer = v165->_finalTangentBuffer;
  v168 = v17;
  if (v17)
  {
    v40 = sub_1AF1E7C04(VFXMTLMorphDeformer, v17);
    v41 = v40;
  }

  else
  {
    v41 = 0;
    v40 = -1;
  }

  if (v169)
  {
    v42 = objc_msgSend_supportedOutputs(VFXMTLSkinDeformer, v29, v30, v31);
    v41 |= v42;
    v40 &= v42;
  }

  if (v159)
  {
    v43 = objc_msgSend_supportedOutputs(v159, v29, v30, v31);
    v41 |= v43;
    v40 &= v43;
  }

  v164 = (v36 | (v27 >> 1)) & v39;
  v163 = (v4 | v38 | (v27 >> 2)) & v39;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v29, &v191, v202, 16);
  if (v44)
  {
    v48 = v44;
    v49 = *v192;
    v50 = v165;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v192 != v49)
        {
          objc_enumerationMutation(v19);
        }

        v52 = objc_msgSend_supportedOutputs(*(*(&v191 + 1) + 8 * j), v45, v46, v47);
        v41 |= v52;
        v40 &= v52;
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v45, &v191, v202, 16);
    }

    while (v48);
  }

  else
  {
    v50 = v165;
  }

  v161 = v164 & ((v40 & 2) == 0);
  v53 = 3;
  if (v161)
  {
    v53 = 1;
  }

  if (!v164)
  {
    v53 = 1;
  }

  if (v163)
  {
    v54 = v53 | 4;
  }

  else
  {
    v54 = v53;
  }

  if (v168)
  {
    v55 = objc_msgSend_requiredOutputs(VFXMTLMorphDeformer, v45, v46, v47);
    v54 |= v55;
    v56 = (v55 >> 9) & 1;
  }

  else
  {
    LODWORD(v56) = 0;
  }

  if (v169)
  {
    v57 = objc_msgSend_requiredOutputs(VFXMTLSkinDeformer, v45, v46, v47);
    v54 |= v57;
    LODWORD(v56) = (v57 >> 9) & 1 | v56;
  }

  if (v159)
  {
    v58 = objc_msgSend_requiredOutputs(v159, v45, v46, v47);
    v54 |= v58;
    LODWORD(v56) = (v58 >> 9) & 1 | v56;
  }

  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v45, &v187, v201, 16);
  if (v59)
  {
    v63 = v59;
    v64 = *v188;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v188 != v64)
        {
          objc_enumerationMutation(v19);
        }

        v66 = objc_msgSend_requiredOutputs(*(*(&v187 + 1) + 8 * k), v60, v61, v62);
        v54 |= v66;
        LODWORD(v56) = (v66 >> 9) & 1 | v56;
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v60, &v187, v201, 16);
    }

    while (v63);
  }

  v157 = v26;
  v153 = v50->_smoothNormalsDeformer != 0;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v67 = sub_1AFDEA208(v50->_finalMesh);
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v183, v200, 16);
  if (v69)
  {
    v70 = v69;
    v71 = 0;
    v72 = *v184;
    do
    {
      for (m = 0; m != v70; ++m)
      {
        if (*v184 != v72)
        {
          objc_enumerationMutation(v67);
        }

        v71 |= v56 ^ (sub_1AFDEA1E8(*(*(&v183 + 1) + 8 * m)) != 0);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v74, &v183, v200, 16);
    }

    while (v70);
  }

  else
  {
    v71 = 0;
  }

  if (v169)
  {
    v75 = 1;
    v76 = v165;
    v77 = v157;
  }

  else
  {
    v77 = v157;
    v75 = v152;
    if (v157)
    {
      v75 = 1;
    }

    v76 = v165;
  }

  v78 = v161 ^ v153;
  v80 = *(v76 + 832);
  v81 = (v164 ^ v161) & ((v40 & 2) == 0);
  v82 = v41 & 2;
  v83 = (v82 << 7) ^ 0x100;
  if (((v164 ^ v161) & ((v40 & 2) == 0)) == 0)
  {
    v83 = 0;
  }

  v166 = v83;
  v84 = v163 & ((v40 & 4) == 0);
  v85 = v41 & 4;
  v86 = (v85 << 22) ^ 0x1000000;
  if (!v84)
  {
    v86 = 0;
  }

  v158 = v86;
  v87 = v164 ^ (finalNormalBuffer != 0);
  v88 = v163 ^ (finalTangentBuffer != 0);
  v79 = *(v76 + 80);
  v89 = v75 ^ (v79 != 0);
  v90 = (v168 == 0) ^ (v80 == 0);
  if (baseGeometry != v167 || !*(v76 + 56) || (v87 & 1) != 0 || (v88 & 1) != 0 || ((v75 ^ (v79 != 0)) & 1) != 0 || v90)
  {
    v91 = v84 & (v85 != 0);
    if (!v168)
    {
      v91 = 1;
    }

    v92 = v81 & (v82 != 0);
    if (!v168)
    {
      v92 = 1;
    }

    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3221225472;
    v181[2] = sub_1AF1E69BC;
    v181[3] = &unk_1E7A7C220;
    v182 = v160;
    v181[5] = v167;
    v181[4] = v76;
    v179[0] = MEMORY[0x1E69E9820];
    v179[1] = 3221225472;
    v179[2] = sub_1AF1E6A18;
    v179[3] = &unk_1E7A7C248;
    v180 = v160;
    v179[4] = v76;
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = sub_1AF1E6AD4;
    v177[3] = &unk_1E7A7C248;
    v178 = v160;
    v177[4] = v76;
    v110 = v91 == 0;
    v93 = 0x10000000000;
    if (v110)
    {
      v93 = 0;
    }

    v94 = 0x100000000;
    if ((v163 & v75) == 0)
    {
      v94 = 0;
    }

    v110 = v92 == 0;
    v95 = 0x1000000;
    if (v110)
    {
      v95 = 0;
    }

    v96 = 0x10000;
    if ((v164 & v75) == 0)
    {
      v96 = 0;
    }

    objc_msgSend_setupInitialBuffersWithBasePositionSourceProvider_baseNormalSourceProvider_baseTangentSourceProvider_info_(v76, finalTangentBuffer, v181, v179, v177, v93 | ((v168 == 0) << 8) | v95 | v75 | v94 | v96);
    v80 = *(v76 + 832);
  }

  if ((sub_1AFDE323C(v80) != v168) | (v87 | v88 | v78) & 1)
  {
    v97 = *(v76 + 832);
    if (v97)
    {
      CFRelease(v97);
      *(v76 + 832) = 0;
    }

    v98 = v160;
    if (v168)
    {
      *(v76 + 832) = sub_1AFDE3184([VFXMTLMorphDeformer alloc], v168, v54, *(v76 + 49), *(v76 + 8), v76);
    }
  }

  else
  {
    v99 = v89 | v90;
    v98 = v160;
    if (v99)
    {
      sub_1AFDE3248(*(v76 + 832));
    }
  }

  if ((sub_1AFDE323C(*(v76 + 840)) != v156) | (v87 | v88 | v78) & 1)
  {
    v100 = *(v76 + 840);
    if (v100)
    {
      CFRelease(v100);
      *(v76 + 840) = 0;
    }

    if (v169)
    {
      *(v76 + 840) = sub_1AFDE3860([VFXMTLSkinDeformer alloc], v156, v167, v54, *(v76 + 49), *(v76 + 8), v76);
    }
  }

  v104 = 0;
  if (v98 && baseGeometry != v167)
  {
    v105 = objc_msgSend_alloc(v159, v101, v102, v103);
    v104 = objc_msgSend_initWithMeshlessGeometry_outputs_deformDataKind_finalDataKind_resourceManager_computeContext_(v105, v106, *(v76 + 32), v54, *(v76 + 49), *(v76 + 48), *(v76 + 8), v76);
  }

  *(v76 + 848) = v104;

  if (v161 & v78)
  {
    v109 = sub_1AFDE3C24([VFXMTLSmoothNormalsDeformer alloc], *(v76 + 40), *(v76 + 48), *(v76 + 8), v76);
  }

  else
  {
    v109 = 0;
  }

  *(v76 + 856) = v109;
  v110 = baseGeometry != v167 || *(v76 + 112) == 0;
  v111 = v110;
  if ((v111 | v87 | v88 | v71))
  {
    v112 = 0x10000;
    if (!v163)
    {
      v112 = 0;
    }

    v113 = v112 | v164 | v158;
    if (v98)
    {
      objc_msgSend_setupFinalMeshFromMeshlessBaseGeometryWithInfo_(v76, v107, v113 | v166, v108);
    }

    else
    {
      objc_msgSend_setupFinalMeshFromBaseMeshWithInfo_(v76, v107, v113 | v166, v108);
    }
  }

  *(v76 + 864) = 0;
  v114 = *(v76 + 256);
  __src[0] = *(v76 + 240);
  __src[1] = v114;
  __src[2] = __src[0];
  __src[3] = v114;
  v115 = *(v76 + 288);
  __src[4] = *(v76 + 272);
  __src[5] = v115;
  __src[6] = __src[4];
  __src[7] = v115;
  v116 = *(v76 + 320);
  __src[8] = *(v76 + 304);
  __src[9] = v116;
  __src[10] = __src[8];
  __src[11] = v116;
  memset(&__src[12], 0, 192);
  if (v77)
  {
    v170 = sub_1AF16CDEC(*(v76 + 24));
    v117 = sub_1AF1A4604(*(v76 + 40), 0, 0, *(v76 + 49));
    v118 = sub_1AF1AE6EC(v117);
    v119 = objc_alloc(MEMORY[0x1E696AD18]);
    v121 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v119, v120, 258, 0, v77);
    if (objc_msgSend_count(v19, v122, v123, v124))
    {
      v125 = objc_alloc(MEMORY[0x1E695DF70]);
      v129 = objc_msgSend_count(v19, v126, v127, v128);
      *(v76 + 864) = objc_msgSend_initWithCapacity_(v125, v130, v129, v131);
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v132, &v172, v199, 16);
      if (v133)
      {
        v136 = v133;
        v137 = *v173;
        do
        {
          v138 = 0;
          do
          {
            if (*v173 != v137)
            {
              objc_enumerationMutation(v19);
            }

            v139 = *(*(&v172 + 1) + 8 * v138);
            v140 = objc_msgSend_objectForKey_(*(v76 + 872), v134, v139, v135);
            if (v140)
            {
              v143 = v140;
              objc_msgSend_addObject_(*(v76 + 864), v141, v140, v142);
              objc_msgSend_setObject_forKey_(v121, v144, v143, v139);
            }

            else
            {
              v145 = [VFXModelDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v146 = sub_1AFDE21F8(v145, v76, v139, v170, v54, v118, __dst);
              objc_msgSend_addObject_(*(v76 + 864), v147, v146, v148);
              objc_msgSend_setObject_forKey_(v121, v149, v146, v139);
            }

            ++v138;
          }

          while (v136 != v138);
          v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v134, &v172, v199, 16);
          v136 = v150;
        }

        while (v150);
      }
    }
  }

  else
  {
    v121 = 0;
  }

  *(v76 + 872) = v121;
  *(v76 + 50) = 1;
  *(v76 + 400) = 0;
  *(v76 + 408) = 0;
}

- (unint64_t)currentFrameHash
{
  currentUpdateRenderContext = self->_currentUpdateRenderContext;
  v5 = objc_msgSend_engineContext(currentUpdateRenderContext, a2, v2, v3);
  v6 = sub_1AF1302C4(v5);
  v10 = objc_msgSend_currentFrameIndex(currentUpdateRenderContext, v7, v8, v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ currentUpdateRenderContext)));
  v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v6) ^ ((0xC6A4A7935BD1E995 * *&v6) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))));
  return (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
}

- (__n128)currentTransforms
{
  v2 = *(a1 + 560);
  *(a2 + 128) = *(a1 + 544);
  *(a2 + 144) = v2;
  v3 = *(a1 + 592);
  *(a2 + 160) = *(a1 + 576);
  *(a2 + 176) = v3;
  v4 = *(a1 + 496);
  *(a2 + 64) = *(a1 + 480);
  *(a2 + 80) = v4;
  v5 = *(a1 + 528);
  *(a2 + 96) = *(a1 + 512);
  *(a2 + 112) = v5;
  v6 = *(a1 + 432);
  *a2 = *(a1 + 416);
  *(a2 + 16) = v6;
  result = *(a1 + 448);
  v8 = *(a1 + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(a1 + 688);
  *(a2 + 64) = *(a1 + 672);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 704);
  v3 = *(a1 + 624);
  *a2 = *(a1 + 608);
  *(a2 + 16) = v3;
  result = *(a1 + 656);
  *(a2 + 32) = *(a1 + 640);
  *(a2 + 48) = result;
  return result;
}

- (RGCachedComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeCommandEncoder;
  if (!result)
  {
    v6 = objc_msgSend_resourceComputeEncoder(self->_currentUpdateRenderContext, a2, v2, v3);
    self->_currentUpdateComputeCommandEncoder = v6;
    objc_msgSend_pushDebugGroup_(v6, v7, @"VFX: Deformers", v8);
    return self->_currentUpdateComputeCommandEncoder;
  }

  return result;
}

- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)a3
{
  self->_currentUpdateComputeCommandEncoder = 0;
  v5 = objc_msgSend_resourceCommandBuffer(self->_currentUpdateRenderContext, a2, a3, v3);
  v6 = *(a3 + 2);

  v6(a3, v5);
}

- (void)setStageInputOutputBuffersToEncoder:(id)a3
{
  objc_msgSend_setBuffer_offset_atIndex_(a3, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v5, self->_currentUpdateBuffers.srcNormals, 0, 11);
  srcTangents = self->_currentUpdateBuffers.srcTangents;

  objc_msgSend_setBuffer_offset_atIndex_(a3, v6, srcTangents, 0, 12);
}

- (id)dependencyBufferForInput:(unint64_t)a3 dependencyStack:(id)a4
{
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x48) != 0)
    {
      return *(a4 + 11);
    }

    if (((1 << a3) & 0x90) != 0)
    {
      return *(a4 + 12);
    }

    if (((1 << a3) & 0x120) != 0)
    {
      return *(a4 + 13);
    }
  }

  v5 = sub_1AF0D5194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE2E4C();
  }

  return 0;
}

- (id)dependencyBufferForInput:(unint64_t)a3 dependencyMesh:(id)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE2E80();
  }

  return 0;
}

- (void)updateDependencyBuffersInBufferArray:(id *)a3 forDeformer:(id)a4
{
  v4 = MEMORY[0x1E69E9820];
  *&a3->var8 = 0u;
  *&a3->var10 = 0u;
  *&a3->var6 = 0u;
  v5[0] = v4;
  v5[1] = 3221225472;
  v5[2] = sub_1AF1E701C;
  v5[3] = &unk_1E7A7C2C0;
  v5[4] = self;
  v5[5] = a3;
  objc_msgSend__enumerateDependencyNodesUsingBlock_(a4, a2, v5, a4);
}

@end