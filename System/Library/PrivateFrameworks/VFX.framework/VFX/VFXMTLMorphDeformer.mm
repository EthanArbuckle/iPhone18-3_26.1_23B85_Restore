@interface VFXMTLMorphDeformer
- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context;
- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1;
- (void)dealloc;
- (void)setupMorphTargetsWithComputeContext:(id)context;
@end

@implementation VFXMTLMorphDeformer

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    CFRelease(morpher);
    self->_morpher = 0;
  }

  free(self->_runtimeMorphTargets);
  v4.receiver = self;
  v4.super_class = VFXMTLMorphDeformer;
  [(VFXMTLMorphDeformer *)&v4 dealloc];
}

- (void)setupMorphTargetsWithComputeContext:(id)context
{
  selfCopy = self;
  v5 = sub_1AF1B669C(self->_morpher);
  v6 = sub_1AF170774(v5);
  v7 = v6;
  contextCopy = context;
  if (v6)
  {
    v8 = sub_1AF170784(v5);
    if (v8)
    {
      cf = v8;
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE32D0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_10:
    cf = 0;
    goto LABEL_11;
  }

  v9 = sub_1AF170740(v5);
  if (!v9)
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_10;
  }

  v10 = v9;
  cf = 0;
LABEL_12:
  v27 = sub_1AF15B294(selfCopy->_morpher);
  if (!v27)
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  v313 = sub_1AF1B4CCC(v27) == 0;
  v36 = sub_1AF1B58F8(v27);
  if (v36)
  {
    finalMeshDataKind = 0;
    v38 = 43;
    v39 = 22;
    v40 = 1;
  }

  else
  {
    v40 = 0;
    finalMeshDataKind = selfCopy->_finalMeshDataKind;
    v39 = 8;
    v38 = 8;
  }

  if (!selfCopy->_morphNormals)
  {
    v39 = 0;
  }

  selfCopy->_morphKind = v40;
  selfCopy->_dataKindForComputeKernel = finalMeshDataKind;
  selfCopy->_basePositionDataType = 8;
  selfCopy->_baseNormalDataType = v39;
  selfCopy->_morphTargetPositionDataType = v38;
  v312 = selfCopy;
  selfCopy->_morphTargetNormalDataType = v39;
  v305 = sub_1AF15B294(v27);
  Count = CFArrayGetCount(v305);
  v42 = Count;
  if (!Count)
  {
    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3348(v43, v44, v45, v46, v47, v48, v49, v50);
    }
  }

  v303 = v27;
  v325[0] = 0;
  if (v7)
  {
    v308 = 0;
    v51 = 0;
    v52 = 0;
    v53 = cf;
    v54 = cf;
  }

  else
  {
    v53 = sub_1AF1A4604(v10, 0, 0, selfCopy->_finalMeshDataKind);
    v51 = sub_1AF1A4F94(v10, v325);
    v308 = sub_1AF1A4FA8(v10);
    v55 = sub_1AF1A4604(v10, 0, 0, selfCopy->_dataKindForComputeKernel);
    if (!v55)
    {
      v56 = sub_1AF0D5194();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE33C0(v56, v57, v58, v59, v60, v61, v62, v63);
      }
    }

    if (selfCopy->_morphNormals)
    {
      v64 = sub_1AF1A4604(v10, 1, 0, selfCopy->_dataKindForComputeKernel);
      if (v64)
      {
        v54 = v55;
        v52 = v64;
      }

      else
      {
        v65 = sub_1AF27D340(v10, selfCopy->_dataKindForComputeKernel, 0);
        if (!v65)
        {
          v66 = sub_1AF0D5194();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE2928(v66, v67, v68, v69, v70, v71, v72, v73);
          }
        }

        CFAutorelease(v65);
        v54 = v55;
        v52 = v65;
      }
    }

    else
    {
      v54 = v55;
      v52 = 0;
    }
  }

  selfCopy->_vertexCountForComputeKernel = sub_1AF1AE6EC(v54);
  selfCopy->_finalMeshVertexCount = sub_1AF1AE6EC(v53);
  v74 = malloc_type_malloc(40 * v42, 0x10600401818AB88uLL);
  v321[0] = MEMORY[0x1E69E9820];
  v321[1] = 3221225472;
  v321[2] = sub_1AF1E8B4C;
  v321[3] = &unk_1E7A7C338;
  v323 = v36;
  v321[4] = selfCopy;
  v321[5] = v10;
  v321[6] = v54;
  v321[7] = v52;
  v322 = v325[0];
  v324 = v313;
  v321[8] = v51;
  v321[9] = v5;
  v321[10] = v74;
  sub_1AF28A5FC(v305, v321);
  runtimeMorphTargetCount = selfCopy->_runtimeMorphTargetCount;
  if (runtimeMorphTargetCount)
  {
    selfCopy->_runtimeMorphTargets = malloc_type_malloc(32 * runtimeMorphTargetCount, 0x100004017768742uLL);
    v76 = sub_1AF288070(selfCopy->_morphTargetPositionDataType);
    v77 = sub_1AF288070(selfCopy->_morphTargetNormalDataType);
    v78 = sub_1AFDE78C8(&selfCopy->_resourceManager->super.isa);
    v304 = v74;
    if (sub_1AF1F32D4(v78, v79, v80, v81))
    {
      v82 = (v77 + ((v76 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v82 = v77 + v76;
    }

    v314 = v82;
    v85 = selfCopy->_vertexCountForComputeKernel - 1;
    v86 = 1;
    if (v85 > 0xFF)
    {
      v86 = 2;
    }

    v87 = HIWORD(v85);
    if (HIWORD(v85))
    {
      v86 = 4;
    }

    v307 = v86;
    sub_1AF1F19D4(selfCopy->_morphTargetPositionDataType);
    v301 = v52;
    v302 = v54;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      if (v87)
      {
        v91 = 2;
      }

      else
      {
        v91 = v85 > 0xFF;
      }

      v92 = v304 + 4;
      do
      {
        Alignment = MTLDataTypeGetAlignment();
        v94 = *v92;
        if (*v92 != selfCopy->_vertexCountForComputeKernel)
        {
          v95 = MTLDataTypeGetAlignment();
          v90 = ((v90 + v95 - 1) & -v95) + (*v92 << v91);
        }

        v89 = (((v89 + Alignment - 1) & -Alignment) + v94 * v314);
        ++v88;
        v92 += 5;
      }

      while (v88 < selfCopy->_runtimeMorphTargetCount);
      v309 = malloc_type_malloc(v89, 0x100004077774924uLL);
      if (v90)
      {
        v96 = malloc_type_malloc(v90, 0x100004077774924uLL);
      }

      else
      {
        v96 = 0;
      }

      v87 = HIWORD(v85);
    }

    else
    {
      v309 = malloc_type_malloc(0, 0x100004077774924uLL);
      v89 = 0;
      v90 = 0;
      v96 = 0;
    }

    v310 = v96;
    v300 = v90;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v97 = 0;
      v98 = 0;
      v99 = 0;
      if (v87)
      {
        v100 = 2;
      }

      else
      {
        v100 = v85 > 0xFF;
      }

      v101 = 4;
      v102 = v304;
      do
      {
        v103 = (&selfCopy->_runtimeMorphTargets->var0 + v101);
        *v103 = *v102;
        v104 = MTLDataTypeGetAlignment();
        v105 = (v98 + v104 - 1) & -v104;
        v106 = MTLDataTypeGetAlignment();
        v107 = (v99 + v106 - 1) & -v106;
        objc_msgSend_createVertexBufferForMorphTarget_withSetupTarget_vertexBuffer_vertexBufferOffset_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext_(selfCopy, v108, (v103 - 1), v102, v309, v105, v310, v107, v307, v308, contextCopy);
        v109 = *(v102 + 32);
        if (v109 == selfCopy->_vertexCountForComputeKernel)
        {
          v110 = 0;
        }

        else
        {
          v110 = v109 << v100;
        }

        CFRelease(*(v102 + 16));
        v111 = *(v102 + 24);
        if (v111)
        {
          CFRelease(v111);
          *(v102 + 24) = 0;
        }

        v98 = (v105 + v109 * v314);
        v99 = (v110 + v107);
        ++v97;
        selfCopy = v312;
        v101 += 32;
        v102 += 40;
      }

      while (v97 < v312->_runtimeMorphTargetCount);
    }

    else
    {
      v99 = 0;
      v98 = 0;
    }

    free(v304);
    v84 = contextCopy;
    resourceManager = v312->_resourceManager;
    v116 = objc_msgSend_currentBlitEncoder(contextCopy, v113, v114, v115);
    v117 = resourceManager;
    selfCopy = v312;
    v312->_morphTargetsVertexBuffer = sub_1AFDE847C(v117, v309, v89, v116);
    free(v309);
    if (v310)
    {
      v120 = v312->_resourceManager;
      v121 = objc_msgSend_currentBlitEncoder(contextCopy, v83, v118, v119);
      v122 = v120;
      selfCopy = v312;
      v312->_morphTargetsSparseIndicesBuffer = sub_1AFDE847C(v122, v310, v300, v121);
      free(v310);
    }

    v52 = v301;
    if (v98 != v89)
    {
      v123 = sub_1AF0D5194();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3438(v123, v83, v124, v125, v126, v127, v128, v129);
      }
    }

    v130 = v99 == v300;
    v54 = v302;
    if (!v130)
    {
      v131 = sub_1AF0D5194();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE34B0(v131, v83, v132, v133, v134, v135, v136, v137);
      }
    }
  }

  else
  {
    free(v74);
    v84 = contextCopy;
  }

  v319 = 0;
  v320 = 0;
  v318 = 0;
  LOBYTE(v299) = 1;
  selfCopy->_baseBufferForComputeKernel = objc_msgSend_newBufferForDataKind_positionSource_normalSource_positionDataType_normalDataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_outPositionOffset_outNormalOffset_(v84, v83, selfCopy->_dataKindForComputeKernel, v54, v52, selfCopy->_basePositionDataType, selfCopy->_baseNormalDataType, 1, v299, &v320, &v319, &v318);
  v138 = sub_1AF288070(selfCopy->_morphTargetPositionDataType);
  v139 = sub_1AF288070(selfCopy->_morphTargetNormalDataType);
  v140 = sub_1AFDE78C8(&selfCopy->_resourceManager->super.isa);
  if (sub_1AF1F32D4(v140, v141, v142, v143))
  {
    v138 = (v138 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v144 = (v139 + v138 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v144 = v139 + v138;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (sub_1AF1B5B9C(v303))
  {
    sub_1AF28A5FC(v305, &unk_1F24E86C0);
  }

  morphKind = selfCopy->_morphKind;
  if (!morphKind)
  {
    LOBYTE(v317) = selfCopy->_morphNormals;
    v152 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v152, v161, &v317, 53, @"morphNormal");
    v164 = 45;
    if (selfCopy->_morphNormals)
    {
      v164 = 78;
    }

    v165 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v162, @"%c", v163, v164);
    v169 = objc_alloc_init(MEMORY[0x1E6974188]);
    v170 = 0;
    do
    {
      v171 = objc_msgSend_layouts(v169, v166, v167, v168);
      v172 = v170 + 1;
      v175 = objc_msgSend_objectAtIndexedSubscript_(v171, v173, v170 + 1, v174);
      objc_msgSend_setStepFunction_(v175, v176, 5, v177);
      objc_msgSend_setStride_(v175, v178, v144, v179);
      v183 = objc_msgSend_attributes(v169, v180, v181, v182);
      v186 = objc_msgSend_objectAtIndexedSubscript_(v183, v184, v170, v185);
      v187 = sub_1AF1F1A28(selfCopy->_morphTargetPositionDataType);
      objc_msgSend_setFormat_(v186, v188, v187, v189);
      objc_msgSend_setOffset_(v186, v190, 0, v191);
      objc_msgSend_setBufferIndex_(v186, v192, v170 + 1, v193);
      if (v317 == 1)
      {
        v194 = objc_msgSend_attributes(v169, v166, v167, v168);
        v197 = objc_msgSend_objectAtIndexedSubscript_(v194, v195, v170 + 16, v196);
        v198 = sub_1AF1F1A28(selfCopy->_morphTargetNormalDataType);
        objc_msgSend_setFormat_(v197, v199, v198, v200);
        objc_msgSend_setOffset_(v197, v201, v138, v202);
        objc_msgSend_setBufferIndex_(v197, v203, v172, v204);
      }

      v170 = v172;
    }

    while (v172 != 8);
    selfCopy->_incrementalInitPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v166, @"blend_inc_init_8x_generic", v169, 0, v152, v165);
    selfCopy->_incrementalAddPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v205, @"blend_inc_add_8x_generic", v169, 0, v152, v165);

    goto LABEL_140;
  }

  if (morphKind == 1)
  {
    v316 = 0;
    v317 = 0;
    if (!selfCopy->_dataKindForComputeKernel && selfCopy->_finalMeshDataKind == 1 && v308)
    {
      v149 = objc_msgSend_currentBlitEncoder(v84, v145, v146, v147);
      selfCopy->_originalToFirstDeindexedTableBuffer = objc_msgSend_originalToFirstDeindexedTableBufferWithBlitEncoder_indexSizeOut_(v84, v150, v149, &v317);
      selfCopy->_deindexedToFirstDeindexedTableBuffer = objc_msgSend_deindexedToFirstDeindexedTableBufferWithBlitEncoder_indexSizeOut_(v84, v151, v149, &v316);
    }

    morphNormals = selfCopy->_morphNormals;
    v152 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v152, v153, &morphNormals, 53, @"morphNormal");
    v156 = 45;
    if (selfCopy->_morphNormals)
    {
      v156 = 78;
    }

    v157 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v154, @"%c", v155, v156);
    if (selfCopy->_originalToFirstDeindexedTableBuffer)
    {
      switch(v317)
      {
        case 1:
          v158 = 0;
          v159 = @"copy_indexed_u8_generic";
          v160 = @"blend_indexed_u8_generic";
          goto LABEL_113;
        case 4:
          v158 = 0;
          v159 = @"copy_indexed_u32_generic";
          v160 = @"blend_indexed_u32_generic";
          goto LABEL_113;
        case 2:
          v158 = 0;
          v159 = @"copy_indexed_u16_generic";
          v160 = @"blend_indexed_u16_generic";
LABEL_113:
          v208 = objc_alloc_init(MEMORY[0x1E6974188]);
          v212 = objc_msgSend_layouts(v208, v209, v210, v211);
          v215 = objc_msgSend_objectAtIndexedSubscript_(v212, v213, 1, v214);
          objc_msgSend_setStepFunction_(v215, v216, 5, v217);
          objc_msgSend_setStride_(v215, v218, v320, v219);
          v223 = objc_msgSend_attributes(v208, v220, v221, v222);
          v226 = objc_msgSend_objectAtIndexedSubscript_(v223, v224, 0, v225);
          v227 = sub_1AF1F1A28(selfCopy->_basePositionDataType);
          objc_msgSend_setFormat_(v226, v228, v227, v229);
          objc_msgSend_setOffset_(v226, v230, v319, v231);
          objc_msgSend_setBufferIndex_(v226, v232, 1, v233);
          if (selfCopy->_morphNormals)
          {
            v237 = objc_msgSend_attributes(v208, v234, v235, v236);
            v240 = objc_msgSend_objectAtIndexedSubscript_(v237, v238, 1, v239);
            v241 = sub_1AF1F1A28(selfCopy->_baseNormalDataType);
            objc_msgSend_setFormat_(v240, v242, v241, v243);
            objc_msgSend_setOffset_(v240, v244, v318, v245);
            objc_msgSend_setBufferIndex_(v240, v246, 1, v247);
          }

          selfCopy->_copyBaseBufferPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v234, v159, v208, 0, v152, v157);
          objc_msgSend_reset(v208, v248, v249, v250);
          v254 = objc_msgSend_layouts(v208, v251, v252, v253);
          v257 = objc_msgSend_objectAtIndexedSubscript_(v254, v255, 1, v256);
          objc_msgSend_setStepFunction_(v257, v258, 5, v259);
          objc_msgSend_setStride_(v257, v260, v144, v261);
          v265 = objc_msgSend_attributes(v208, v262, v263, v264);
          v268 = objc_msgSend_objectAtIndexedSubscript_(v265, v266, 0, v267);
          v269 = sub_1AF1F1A28(selfCopy->_morphTargetPositionDataType);
          objc_msgSend_setFormat_(v268, v270, v269, v271);
          objc_msgSend_setOffset_(v268, v272, 0, v273);
          objc_msgSend_setBufferIndex_(v268, v274, 1, v275);
          if (morphNormals)
          {
            v279 = objc_msgSend_attributes(v208, v276, v277, v278);
            v282 = objc_msgSend_objectAtIndexedSubscript_(v279, v280, 1, v281);
            v283 = sub_1AF1F1A28(selfCopy->_morphTargetNormalDataType);
            objc_msgSend_setFormat_(v282, v284, v283, v285);
            objc_msgSend_setOffset_(v282, v286, v138, v287);
            objc_msgSend_setBufferIndex_(v282, v288, 1, v289);
          }

          selfCopy->_blendDensePipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v276, @"blend_generic", v208, 0, v152, v157);
          if ((v158 & 1) == 0)
          {
            selfCopy->_blendDenseIndexedPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v290, v160, v208, 0, v152, v157);
          }

          v291 = selfCopy->_vertexCountForComputeKernel - 1;
          v292 = 1;
          if (v291 > 0xFF)
          {
            v292 = 2;
          }

          v130 = HIWORD(v291) == 0;
          v293 = 4;
          if (v130)
          {
            v293 = v292;
          }

          if (v293 == 1)
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v290, @"blend_indexed_u8_generic", v208, 0, v152, v157);
          }

          else if (v293 == 4)
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v290, @"blend_indexed_u32_generic", v208, 0, v152, v157);
          }

          else
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v290, @"blend_indexed_u16_generic", v208, 0, v152, v157);
          }

          selfCopy->_blendSparsePipeline = updated;

          if (selfCopy->_deindexedToFirstDeindexedTableBuffer)
          {
            switch(v316)
            {
              case 1:
                v296 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v295, @"splat_indexed_s8_vertices", v152, v157);
                break;
              case 4:
                v296 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v295, @"splat_indexed_s32_vertices", v152, v157);
                break;
              case 2:
                v296 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v295, @"splat_indexed_s16_vertices", v152, v157);
                break;
              default:
                v297 = sub_1AF0D5194();
                if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDE3528();
                }

                v296 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v298, 0, v152, v157);
                break;
            }

            selfCopy->_splatPipeline = v296;
          }

LABEL_140:

          return;
      }

      v207 = sub_1AF0D5194();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE3528();
      }
    }

    v160 = 0;
    v159 = @"copy_generic";
    v158 = 1;
    goto LABEL_113;
  }

  v206 = sub_1AF0D5194();
  if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE355C();
  }
}

- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1
{
  v67 = 0u;
  v68 = 0u;
  sub_1AF1AE1A8(setupTarget->var2, &v67);
  v65 = 0u;
  v66 = 0u;
  if (self->_morphNormals)
  {
    sub_1AF1AE1A8(setupTarget->var3, &v65);
  }

  v19 = v68;
  target->var2 = setupTarget->var4;
  if (self->_morphKind == 1)
  {
    objc_msgSend_createSparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext_(self, v18, target, setupTarget, indicesBuffer, bufferOffset, size, table, context);
  }

  else
  {
    target->var4 = 0;
  }

  morphTargetPositionDataType = self->_morphTargetPositionDataType;
  if (morphTargetPositionDataType == 22)
  {
    if (self->_morphKind != 1)
    {
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3680(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v29 = vmaxvq_f32(sub_1AF1AEB70(setupTarget->var2));
    LOWORD(morphTargetPositionDataType) = self->_morphTargetPositionDataType;
    v64 = 1.0 / v29;
  }

  else
  {
    v64 = 1.0;
    v29 = 1.0;
  }

  target->var0 = v29;
  v30 = sub_1AF288070(morphTargetPositionDataType);
  v31 = sub_1AF288070(self->_morphTargetNormalDataType);
  v32 = v31 + v30;
  v33 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
  if (sub_1AF1F32D4(v33, v34, v35, v36))
  {
    v32 = (v31 + ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v40 = v30;
  }

  v41 = v32 * target->var2;
  v42 = &buffer[offset];
  if (self->_morphKind == 1)
  {
    if (self->_morphNormals)
    {
      if (v19)
      {
        v43 = 0;
        v44 = &buffer[offset];
        do
        {
          *v45.i64 = sub_1AF279750(BYTE4(v68), (v67 + v43 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
          v62 = v45;
          *v48.i64 = sub_1AF279750(BYTE4(v66), (v65 + v43 * BYTE6(v66)), v45, v46, v47);
          v39 = v48;
          v38.i64[0] = 0x3400000034000000;
          v38.i64[1] = 0x3400000034000000;
          if ((vminvq_u32(vcgeq_f32(v38, vabsq_f32(v62))) & 0x80000000) == 0 || (v37 = vcgeq_f32(v38, vabsq_f32(v48)), v37.i32[0] = vminvq_u32(v37), (v37.i32[0] & 0x80000000) == 0))
          {
            v49 = vmulq_n_f32(v62, v64);
            v63 = v39;
            sub_1AF279B88(self->_morphTargetPositionDataType, v44, v49);
            sub_1AF279B88(self->_morphTargetNormalDataType, &v44[v40], v63);
            v44 += v32;
          }

          ++v43;
        }

        while (v19 != v43);
        goto LABEL_37;
      }

LABEL_36:
      v44 = &buffer[offset];
      goto LABEL_37;
    }

    if (!v19)
    {
      goto LABEL_36;
    }

    v53 = 0;
    v44 = &buffer[offset];
    do
    {
      *v37.i64 = sub_1AF279750(BYTE4(v68), (v67 + v53 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
      v39.i64[0] = 0x3400000034000000;
      v39.i64[1] = 0x3400000034000000;
      v38.i32[0] = vminvq_u32(vcgeq_f32(v39, vabsq_f32(v37)));
      if ((v38.i32[0] & 0x80000000) == 0)
      {
        sub_1AF279B88(self->_morphTargetPositionDataType, v44, vmulq_n_f32(v37, v64));
        v44 += v32;
      }

      ++v53;
    }

    while (v19 != v53);
  }

  else
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    v50 = 0;
    v44 = &buffer[offset];
    do
    {
      *v51.i64 = sub_1AF279750(BYTE4(v68), (v67 + v50 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
      sub_1AF279B88(self->_morphTargetPositionDataType, v44, vmulq_n_f32(v51, v64));
      if (self->_morphNormals)
      {
        *v52.i64 = sub_1AF279750(BYTE4(v66), (v65 + v50 * BYTE6(v66)), v37, v38.f32[0], v39.f32[0]);
        sub_1AF279B88(self->_morphTargetNormalDataType, &v44[v40], v52);
      }

      v44 += v32;
      ++v50;
    }

    while (v19 != v50);
  }

LABEL_37:
  if (v44 != &v42[v41])
  {
    v54 = sub_1AF0D5194();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE36F8(v54, v55, v56, v57, v58, v59, v60, v61);
    }
  }

  target->var3 = offset;
}

- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context
{
  targetCopy = target;
  if (target->var2 == self->_vertexCountForComputeKernel)
  {
    target->var3 = 0;
    target->var4 = 0;
    return;
  }

  var3 = setupTarget->var3;
  if (self->_dataKindForComputeKernel)
  {
    v16 = 0;
  }

  else
  {
    if (table)
    {
      v17 = self->_finalMeshDataKind == 1;
    }

    else
    {
      v17 = 0;
    }

    v16 = v17;
  }

  v92 = 0u;
  v93 = 0u;
  sub_1AF1AE1A8(setupTarget->var2, &v92);
  v90 = 0u;
  v91 = 0u;
  if (var3)
  {
    sub_1AF1AE1A8(setupTarget->var3, &v90);
  }

  v18 = &buffer[offset];
  if (size == 1)
  {
    v19 = &buffer[offset];
  }

  else
  {
    v19 = 0;
  }

  if (size == 2)
  {
    v20 = &buffer[offset];
  }

  else
  {
    v20 = 0;
  }

  if (size == 4)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  var1 = setupTarget->var1;
  if (sub_1AF1A3CCC(var1) >= 1)
  {
    v26 = sub_1AF1A3D1C(var1, 0, 0);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    sub_1AF1A767C(v26, 0, &v86);
    offsetCopy = offset;
    v78 = targetCopy;
    if (var3)
    {
      if (v87)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v85 = 0;
          v81 = v86;
          v82 = v87;
          v83 = v88;
          v84 = v89;
          sub_1AF1AE9B0(&v81, v27, &v85 + 1, &v85);
          v33 = v85;
          for (i = HIDWORD(v85); i < v33; ++i)
          {
            *v35.i64 = sub_1AF279750(BYTE4(v93), (v92 + v28 * BYTE6(v93)), v30, v31.f32[0], v32.f32[0]);
            v79 = v35;
            *v30.i64 = sub_1AF279750(BYTE4(v91), (v90 + v28 * BYTE6(v91)), v35, v36, v37);
            v32.i64[0] = 0x3400000034000000;
            v32.i64[1] = 0x3400000034000000;
            v31.i32[0] = vminvq_u32(vcgeq_f32(v32, vabsq_f32(v79)));
            if ((v31.i32[0] & 0x80000000) == 0 || (v31.i64[0] = 0x3400000034000000, v31.i64[1] = 0x3400000034000000, v30 = vcgeq_f32(v31, vabsq_f32(v30)), v30.i32[0] = vminvq_u32(v30), (v30.i32[0] & 0x80000000) == 0))
            {
              if (v16)
              {
                v38 = table[i];
                if (v19)
                {
                  goto LABEL_31;
                }

LABEL_33:
                v19 = 0;
                if (v20)
                {
                  *v20 = v38;
                  v20 += 2;
                }

                else
                {
                  *v21++ = v38;
                }
              }

              else
              {
                v38 = i;
                if (!v19)
                {
                  goto LABEL_33;
                }

LABEL_31:
                *v19++ = v38;
              }

              ++v29;
              v33 = v85;
            }

            ++v28;
          }

          if (++v27 >= v87)
          {
            goto LABEL_73;
          }
        }
      }

      v29 = 0;
LABEL_73:
      targetCopy = v78;
      if (v29 == v78->var2)
      {
        goto LABEL_97;
      }

      v57 = sub_1AF0D5194();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

LABEL_96:
      sub_1AFDE3770(v57, v58, v59, v60, v61, v62, v63, v64);
LABEL_97:
      offsetCopy3 = offsetCopy;
      goto LABEL_98;
    }

    if (!v87)
    {
      v49 = 0;
LABEL_94:
      targetCopy = v78;
      if (v49 == v78->var2)
      {
        goto LABEL_97;
      }

      v57 = sub_1AF0D5194();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
LABEL_58:
    v85 = 0;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v84 = v89;
    sub_1AF1AE9B0(&v81, v47, &v85 + 1, &v85);
    v53 = v85;
    for (j = HIDWORD(v85); ; ++j)
    {
      if (j >= v53)
      {
        if (++v47 >= v87)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      }

      *v55.i64 = sub_1AF279750(BYTE4(v93), (v92 + v48 * BYTE6(v93)), v50, v51.f32[0], v52);
      v51.i64[0] = 0x3400000034000000;
      v51.i64[1] = 0x3400000034000000;
      v50 = vcgeq_f32(v51, vabsq_f32(v55));
      v50.i32[0] = vminvq_u32(v50);
      if ((v50.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_69:
      ++v48;
    }

    if (v16)
    {
      v56 = table[j];
      if (v19)
      {
LABEL_63:
        *v19++ = v56;
LABEL_68:
        ++v49;
        v53 = v85;
        goto LABEL_69;
      }
    }

    else
    {
      v56 = j;
      if (v19)
      {
        goto LABEL_63;
      }
    }

    v19 = 0;
    if (v20)
    {
      *v20 = v56;
      v20 += 2;
    }

    else
    {
      *v21++ = v56;
    }

    goto LABEL_68;
  }

  v39 = v93;
  if (!var3)
  {
    offsetCopy3 = offset;
    if (!v93)
    {
      v66 = 0;
LABEL_100:
      if (v66 == targetCopy->var2)
      {
        goto LABEL_98;
      }

      v69 = sub_1AF0D5194();
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_98;
      }

      goto LABEL_92;
    }

    v65 = 0;
    v66 = 0;
    while (1)
    {
      *v67.i64 = sub_1AF279750(BYTE4(v93), (v92 + v65 * BYTE6(v93)), v23, v24.f32[0], v25.f32[0]);
      v24.i64[0] = 0x3400000034000000;
      v24.i64[1] = 0x3400000034000000;
      v23 = vcgeq_f32(v24, vabsq_f32(v67));
      v23.i32[0] = vminvq_u32(v23);
      if ((v23.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_87:
      if (v39 == ++v65)
      {
        goto LABEL_100;
      }
    }

    if (v16)
    {
      v68 = table[v65];
      if (v19)
      {
LABEL_81:
        *v19++ = v68;
LABEL_86:
        ++v66;
        goto LABEL_87;
      }
    }

    else
    {
      v68 = v65;
      if (v19)
      {
        goto LABEL_81;
      }
    }

    v19 = 0;
    if (v20)
    {
      *v20 = v68;
      v20 += 2;
    }

    else
    {
      *v21++ = v68;
    }

    goto LABEL_86;
  }

  offsetCopy3 = offset;
  if (v93)
  {
    v41 = 0;
    v42 = 0;
    while (1)
    {
      *v43.i64 = sub_1AF279750(BYTE4(v93), (v92 + v41 * BYTE6(v93)), v23, v24.f32[0], v25.f32[0]);
      v80 = v43;
      *v23.i64 = sub_1AF279750(BYTE4(v91), (v90 + v41 * BYTE6(v91)), v43, v44, v45);
      v25.i64[0] = 0x3400000034000000;
      v25.i64[1] = 0x3400000034000000;
      v24.i32[0] = vminvq_u32(vcgeq_f32(v25, vabsq_f32(v80)));
      if (v24.i32[0] < 0)
      {
        v24.i64[0] = 0x3400000034000000;
        v24.i64[1] = 0x3400000034000000;
        v23 = vcgeq_f32(v24, vabsq_f32(v23));
        v23.i32[0] = vminvq_u32(v23);
        if (v23.i32[0] < 0)
        {
          goto LABEL_54;
        }
      }

      if (v16)
      {
        v46 = table[v41];
        if (!v19)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v46 = v41;
        if (!v19)
        {
LABEL_50:
          v19 = 0;
          if (v20)
          {
            *v20 = v46;
            v20 += 2;
          }

          else
          {
            *v21++ = v46;
          }

          goto LABEL_53;
        }
      }

      *v19++ = v46;
LABEL_53:
      ++v42;
LABEL_54:
      if (v39 == ++v41)
      {
        goto LABEL_90;
      }
    }
  }

  v42 = 0;
LABEL_90:
  if (v42 == targetCopy->var2)
  {
    goto LABEL_98;
  }

  v69 = sub_1AF0D5194();
  if (!os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_98;
  }

LABEL_92:
  sub_1AFDE3770(v69, v70, v71, v72, v73, v74, v75, v76);
LABEL_98:
  targetCopy->var4 = offsetCopy3;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context, buffers);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  var1 = buffers->var1;
  if (self->_morphKind == 1)
  {

    return MEMORY[0x1EEE66B58](self, sel_morphSparseWithComputeContext_positions_normals_, context, var1);
  }

  else
  {

    return MEMORY[0x1EEE66B58](self, sel_morphIncrementallyWithComputeContext_positions_normals_, context, var1);
  }
}

- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0.0;
  v9 = sub_1AF1B6500(self->_morpher, self->_lastMorpherIncrementalPassState, &v60, &v59, &v61, &v58);
  if (!v9)
  {
    return 0;
  }

  v13 = v9;
  v14 = objc_msgSend_currentComputeEncoder(context, v10, v11, v12);
  objc_msgSend_resetCache(v14, v15, v16, v17);
  objc_msgSend_setBuffer_offset_atIndex_(v14, v18, positions, 0, 0);
  if (normals)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v14, v19, normals, 0, 4);
  }

  if (v13 == 2)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v14, v19, self->_baseBufferForComputeKernel, 0, 1);
    vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
    v56[0] = 0.0;
    var2 = vertexCountForComputeKernel;
    objc_msgSend_setBytes_length_atIndex_(v14, v21, v56, 12, 3);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = var2;
    v55 = vdupq_n_s64(1uLL);
    objc_msgSend_setStageInRegion_(v14, v22, &v51, v23);
    originalToFirstDeindexedTableBuffer = self->_originalToFirstDeindexedTableBuffer;
    if (originalToFirstDeindexedTableBuffer)
    {
      objc_msgSend_setBuffer_offset_atIndex_(v14, v24, originalToFirstDeindexedTableBuffer, 0, 2);
    }

    v26 = sub_1AFDE323C(self->_copyBaseBufferPipeline);
    objc_msgSend_dispatchOnVertices_vertexCount_(v14, v27, v26, var2);
    bzero(v60, 4 * v61);
  }

  if (self->_runtimeMorphTargetCount)
  {
    v28 = 0;
    v29 = 0;
    v50 = vdupq_n_s64(1uLL);
    do
    {
      runtimeMorphTargets = self->_runtimeMorphTargets;
      v31 = &runtimeMorphTargets[v28];
      var1 = runtimeMorphTargets[v28].var1;
      v33 = *&v59[4 * var1];
      v34 = *(v60 + var1);
      if (vabds_f32(v33, v34) > v58)
      {
        v56[0] = v33 - v34;
        v56[1] = (v33 - v34) * v31->var0;
        var2 = v31->var2;
        objc_msgSend_setBytes_length_atIndex_(v14, v19, v56, 12, 3);
        v35 = v31->var2;
        v36 = self->_vertexCountForComputeKernel;
        objc_msgSend_setBuffer_offset_atIndex_(v14, v37, self->_morphTargetsVertexBuffer, v31->var3, 1);
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = var2;
        v55 = v50;
        objc_msgSend_setStageInRegion_(v14, v38, &v51, v39);
        if (v35 == v36)
        {
          v41 = self->_originalToFirstDeindexedTableBuffer;
          p_blendDensePipeline = &self->_blendDensePipeline;
          if (v41)
          {
            objc_msgSend_setBuffer_offset_atIndex_(v14, v40, v41, 0, 2);
            p_blendDensePipeline = &self->_blendDenseIndexedPipeline;
          }
        }

        else
        {
          objc_msgSend_setBuffer_offset_atIndex_(v14, v40, self->_morphTargetsSparseIndicesBuffer, runtimeMorphTargets[v28].var4, 2);
          p_blendDensePipeline = &self->_blendSparsePipeline;
        }

        v43 = sub_1AFDE323C(*p_blendDensePipeline);
        objc_msgSend_dispatchOnVertices_vertexCount_(v14, v44, v43, var2);
      }

      ++v29;
      ++v28;
    }

    while (v29 < self->_runtimeMorphTargetCount);
  }

  deindexedToFirstDeindexedTableBuffer = self->_deindexedToFirstDeindexedTableBuffer;
  if (deindexedToFirstDeindexedTableBuffer)
  {
    var2 = self->_finalMeshVertexCount;
    objc_msgSend_setBuffer_offset_atIndex_(v14, v19, deindexedToFirstDeindexedTableBuffer, 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v14, v46, v56, 12, 3);
    v47 = sub_1AFDE323C(self->_splatPipeline);
    objc_msgSend_dispatchOnVertices_vertexCount_(v14, v48, v47, self->_finalMeshVertexCount);
  }

  self->_lastMorpherIncrementalPassState = sub_1AF1B6618(self->_morpher);
  return 1;
}

- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  positionsCopy = positions;
  normalsCopy = normals;
  v90 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0.0;
  v7 = sub_1AF1B6500(self->_morpher, self->_lastMorpherIncrementalPassState, &v86, &v85, &v87, &v84);
  if (!v7)
  {
    return 0;
  }

  v11 = v7;
  v12 = objc_msgSend_currentComputeEncoder(context, v8, v9, v10);
  v16 = objc_msgSend_resetCache(v12, v13, v14, v15);
  v67[1] = v67;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v67 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = (v67 - v25);
  v75 = v11 == 2;
  v27 = 1.0;
  v28 = v24;
  if (v11 == 2)
  {
    v27 = 0.0;
    if (v87)
    {
      bzero(v86, 4 * v87);
      v24 = v28;
    }
  }

  if (vabds_f32(1.0, v27) <= 0.00000011921)
  {
    v29 = 0;
  }

  else
  {
    *v19 = 1.0 - v27;
    *v24 = self->_baseBufferForComputeKernel;
    *v26 = 0;
    v29 = 1;
  }

  LODWORD(v31) = self->_runtimeMorphTargetCount;
  if (v87 != v31)
  {
    v32 = sub_1AF0D5194();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE37E8(v32, v33, v34, v35, v36, v37, v38, v39);
    }

    LODWORD(v31) = self->_runtimeMorphTargetCount;
    v24 = v28;
  }

  if (v31)
  {
    v40 = v85;
    v41 = v86;
    v42 = v84;
    v31 = v31;
    p_var3 = &self->_runtimeMorphTargets->var3;
    do
    {
      v44 = *(p_var3 - 3);
      v45 = *&v40[4 * v44];
      v46 = v41[v44];
      if (vabds_f32(v45, v46) > v42)
      {
        v19[v29] = v45 - v46;
        v24[v29] = self->_morphTargetsVertexBuffer;
        v26[v29++] = *p_var3;
      }

      p_var3 += 4;
      --v31;
    }

    while (v31);
  }

  v70 = v12;
  memset(v82, 0, sizeof(v82));
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  memset(v89, 0, sizeof(v89));
  memset(&v88[4], 0, 32);
  v47 = 136;
  if (v11 == 2)
  {
    v47 = 128;
  }

  memset(v88, 0, 32);
  selfCopy = self;
  v74 = sub_1AFDE323C(*(&self->super.isa + v47));
  v71 = v29 + 7;
  if (v29 + 7 >= 8)
  {
    v49 = v28;
    v50 = 0;
    v51 = 0;
    v69 = v71 >> 3;
    p_baseBufferForComputeKernel = &selfCopy->_baseBufferForComputeKernel;
    do
    {
      v77 = v51;
      v53 = 0;
      v54 = v49;
      do
      {
        if (v50 + v53 >= v29)
        {
          v56 = 0;
          v55 = 0.0;
          v57 = p_baseBufferForComputeKernel;
        }

        else
        {
          v55 = v19[v53];
          v56 = v26[v53];
          v57 = v54;
        }

        v58 = *v57;
        *&v82[v53] = v55;
        *(v89 + v53) = v58;
        v88[v53++] = v56;
        ++v54;
      }

      while (v53 != 8);
      v78 = v49;
      v59 = v70;
      objc_msgSend_setBuffers_offsets_withRange_(v70, v48, v89, v88, 1, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v59, v60, positionsCopy, 0, 10);
      if (normalsCopy)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v59, v61, normalsCopy, 0, 11);
      }

      v76 = v71 < 0x10;
      objc_msgSend_setBytes_length_atIndex_(v59, v61, v82, 36, 12);
      memset(v79, 0, sizeof(v79));
      v80 = vertexCountForComputeKernel;
      v81 = vdupq_n_s64(1uLL);
      objc_msgSend_setStageInRegion_(v59, v62, v79, v63);
      objc_msgSend_dispatchOnVertices_vertexCount_(v59, v64, v74, vertexCountForComputeKernel);
      v65 = v77;
      if (!v76 && v75)
      {
        v74 = sub_1AFDE323C(selfCopy->_incrementalAddPipeline);
        v75 = 0;
      }

      v19 += 8;
      v49 = v78 + 8;
      v26 += 8;
      v50 += 8;
      v51 = v65 + 1;
    }

    while (v65 + 1 != v69);
  }

  v66 = selfCopy;
  v66->_lastMorpherIncrementalPassState = sub_1AF1B6618(selfCopy->_morpher);
  return 1;
}

@end