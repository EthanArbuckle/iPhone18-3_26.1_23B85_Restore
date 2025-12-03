@interface VFXMTLSkinDeformer
- (id)makeReadOnlyBuffersWithBaseGeometry:(__CFXGeometry *)geometry baseMesh:(__CFXMesh *)mesh blitEncoder:(id)encoder;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)setupWithComputeContext:(id)context;
@end

@implementation VFXMTLSkinDeformer

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    CFRelease(skinner);
    self->_skinner = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXMTLSkinDeformer;
  [(VFXMTLSkinDeformer *)&v4 dealloc];
}

- (void)setupWithComputeContext:(id)context
{
  v5 = sub_1AF170740(self->_baseGeometry);
  if (!v5)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1A4604(v5, 0, 0, self->_dataKind);
  if (!v14)
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE33C0(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  self->_baseVertexCount = sub_1AF1AE6EC(v14);
  resourceManager = self->_resourceManager;
  skinner = self->_skinner;
  dataKind = self->_dataKind;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_1AF1EA6A4;
  v56[3] = &unk_1E7A7C380;
  v56[4] = context;
  v56[5] = self;
  v56[6] = v5;
  v27 = objc_msgSend_renderResourceForSkinner_baseMesh_dataKind_provider_(resourceManager, v26, skinner, v5, dataKind, v56);
  v28 = v27;
  if (v27)
  {
    self->_influenceOffsetsBuffer = *(v27 + 24);
    self->_boneIndicesBuffer = *(v28 + 32);
    v29 = *(v28 + 40);
  }

  else
  {
    sub_1AFDE3924(self);
    v29 = 0;
  }

  self->_boneWeightsBuffer = v29;
  skinNormals = self->_skinNormals;
  v30 = objc_alloc_init(MEMORY[0x1E6974060]);
  objc_msgSend_setConstantValue_type_withName_(v30, v31, &skinNormals, 53, @"needNormal");
  skinTangents = self->_skinTangents;
  objc_msgSend_setConstantValue_type_withName_(v30, v32, &skinTangents, 53, @"needTangent");
  if (v28)
  {
    v34 = *(v28 + 8);
    v35 = *(v28 + 16);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v52 = v35;
  v53 = v34;
  objc_msgSend_setConstantValue_type_withName_(v30, v33, &v53, 33, @"weight_index_size");
  objc_msgSend_setConstantValue_type_withName_(v30, v36, &v52, 33, @"bone_index_size");
  v39 = 84;
  if (!skinTangents)
  {
    v39 = 45;
  }

  v40 = 78;
  if (!skinNormals)
  {
    v40 = 45;
  }

  v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v37, @"Int%d_Int%d_%c%c", v38, (8 * v53), (8 * v52), v40, v39);
  self->_useFallbackCopyKernel = v28 == 0;
  if (v28)
  {
    v45 = v41;
    v46 = @"skin_var";
  }

  else
  {
    v47 = 84;
    if (!skinTangents)
    {
      v47 = 45;
    }

    v48 = 78;
    if (!skinNormals)
    {
      v48 = 45;
    }

    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, @"%c%c", v44, v48, v47);
    v46 = @"skin_copy_as_fallback";
  }

  v49 = self->_resourceManager;
  v50 = objc_msgSend_stageInputDescriptor(context, v42, v43, v44);
  self->_computePipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(v49, v51, v46, v50, 0, v30, v45);
}

- (id)makeReadOnlyBuffersWithBaseGeometry:(__CFXGeometry *)geometry baseMesh:(__CFXMesh *)mesh blitEncoder:(id)encoder
{
  v138 = *MEMORY[0x1E69E9840];
  v8 = sub_1AF15B294(self->_skinner);
  if (!v8)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = objc_alloc_init(VFXMTLSkinDeformerReadOnlyBuffers);
  v132 = 0;
  v133 = 0;
  v131 = 0;
  sub_1AF1C78C4(v8, &v133, &v132, &v131);
  v130 = 0;
  v18 = sub_1AF1A4F94(mesh, &v130);
  v19 = sub_1AF1C7940(v8);
  v20 = v19;
  v21 = v19 - 129;
  v22 = 1;
  if ((v19 - 129) < 0xFFFFFF80)
  {
    v22 = 2;
  }

  if (v19 <= 0)
  {
    v23 = 8;
  }

  else
  {
    v23 = v22;
  }

  if (v23 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  if (self->_dataKind != 1 || !v18)
  {
    v128 = v24;
    v40 = sub_1AF15B294(v8);
    p_baseVertexCount = &self->_baseVertexCount;
    baseVertexCount = self->_baseVertexCount;
    if (v40 == baseVertexCount)
    {
      if (v131)
      {
        v43 = sub_1AF1C78EC(v8);
        baseVertexCount = v43;
      }

      else
      {
        v43 = self->_baseVertexCount;
      }

      v125 = v43;
      v46 = v43 - 1;
      if (v43 - 1 < 0x8000)
      {
        encoderCopy = encoder;
        v50 = (*p_baseVertexCount + 1) << (v46 > 0x7F);
        v51 = malloc_type_malloc(v50, 0xBFABE935uLL);
        v52 = v51;
        v53 = v46 > 0x7F;
        if (v46 <= 0x7F)
        {
          v49 = 1;
        }

        else
        {
          v49 = 2;
        }

        if (v53)
        {
          if (v51)
          {
            v54 = v133;
            if (*p_baseVertexCount + 1 > 1)
            {
              v55 = *p_baseVertexCount + 1;
            }

            else
            {
              v55 = 1;
            }

            v56 = v51;
            do
            {
              v57 = *v54++;
              *v56++ = v57;
              --v55;
            }

            while (v55);
          }
        }

        else if (v51)
        {
          v93 = 0;
          do
          {
            *(v51 + v93) = v133[v93];
            ++v93;
          }

          while (v93 <= *p_baseVertexCount);
        }

        v94 = v50;
        encoder = encoderCopy;
        v95 = sub_1AFDE847C(self->_resourceManager, v51, v94, encoderCopy);
        if (v17)
        {
          objc_setProperty_nonatomic(v17, v96, v95, 24);
        }

        free(v52);
      }

      else
      {
        v47 = sub_1AFDE847C(self->_resourceManager, v133, (4 * (self->_baseVertexCount + 1)), encoder);
        if (v17)
        {
          objc_setProperty_nonatomic(v17, v48, v47, 24);
        }

        v49 = 4;
      }

      if (v132 && v131)
      {
        if (v125)
        {
          v97 = 0;
          while (v132[v97] < v20)
          {
            if (baseVertexCount == ++v97)
            {
              goto LABEL_101;
            }
          }

          v103 = sub_1AF0D5194();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            v120 = v132[v97];
            *buf = 67109376;
            v135 = v120;
            v136 = 1024;
            v137 = v20;
            _os_log_error_impl(&dword_1AF0CE000, v103, OS_LOG_TYPE_ERROR, "Error: Skinning internal consistency error - out of range bone index ('%d < %d' assertion failed)", buf, 0xEu);
          }

          goto LABEL_112;
        }

LABEL_101:
        if (v20 < 1 || v21 > 0xFFFFFF7F)
        {
          v100 = malloc_type_malloc(v128 * baseVertexCount, 0x264A9974uLL);
          v101 = v100;
          if (v23 == 1)
          {
            if (v125)
            {
              v102 = 0;
              do
              {
                *(v100 + v102) = v132[v102];
                ++v102;
              }

              while (baseVertexCount != v102);
            }
          }

          else if (v125 && v20 <= 0)
          {
            v105 = v132;
            v106 = baseVertexCount;
            v107 = v100;
            do
            {
              v108 = *v105++;
              *v107++ = v108;
              --v106;
            }

            while (v106);
          }

          v109 = sub_1AFDE847C(self->_resourceManager, v100, (v128 * baseVertexCount), encoder);
          if (v17)
          {
            objc_setProperty_nonatomic(v17, v110, v109, 32);
          }

          free(v101);
        }

        else
        {
          v98 = sub_1AFDE847C(self->_resourceManager, v132, (v128 * baseVertexCount), encoder);
          if (v17)
          {
            objc_setProperty_nonatomic(v17, v99, v98, 32);
          }
        }
      }

      else
      {
        sub_1AFDE39C4((v128 * baseVertexCount), self, encoder, v17);
      }

      v111 = v49;
      if (v131)
      {
        v112 = sub_1AFDE847C(self->_resourceManager, v131, (4 * baseVertexCount), encoder);
        v114 = v128;
        if (!v17)
        {
          return v17;
        }

        objc_setProperty_nonatomic(v17, v113, v112, 40);
      }

      else
      {
        v115 = malloc_type_malloc(4 * baseVertexCount, 0x100004052888210uLL);
        v60 = v115;
        v114 = v128;
        if (v125)
        {
          memset_pattern16(v115, &xmmword_1AFE21160, 4 * baseVertexCount);
        }

        v116 = sub_1AFDE847C(self->_resourceManager, v60, (4 * baseVertexCount), encoder);
        if (!v17)
        {
          goto LABEL_88;
        }

        objc_setProperty_nonatomic(v17, v117, v116, 40);
        free(v60);
      }

      v17->_influenceIndexSize = v111;
      v17->_boneIndexSize = v114;
      return v17;
    }

    v44 = sub_1AF0D5194();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE3954();
    }

LABEL_112:

    return 0;
  }

  v26 = &self->_baseVertexCount;
  v25 = self->_baseVertexCount;
  if (v25 != v130)
  {
    v45 = sub_1AF0D5194();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE3A48();
    }

    goto LABEL_112;
  }

  v27 = malloc_type_malloc(4 * (v25 + 1), 0x100004052888210uLL);
  v28 = v27;
  *v27 = 0;
  encoderCopy2 = encoder;
  if (*v26)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v133;
    do
    {
      v33 = v32[*(v18 + 4 * v30) + 1] - v32[*(v18 + 4 * v30)];
      v31 += v33;
      v29 += v33;
      v27[v30 + 1] = v29;
      v34 = *v26;
      ++v30;
    }

    while (v30 < v34);
    v35 = (v34 + 1);
    if (!((v31 - 1) >> 15))
    {
      if ((v31 - 1) <= 0x7F)
      {
        v124 = (v34 + 1);
        v118 = malloc_type_malloc(v35, 0xD4896D0AuLL);
        v37 = v118;
        v119 = 0;
        v121 = 1;
        do
        {
          *(v118 + v119) = v28[v119];
          ++v119;
        }

        while (v119 <= *v26);
      }

      else
      {
        v124 = 2 * v35;
        v36 = malloc_type_malloc(2 * v35, 0x867F1AE0uLL);
        v37 = v36;
        v38 = 0;
        if (*v26 + 1 > 1)
        {
          v39 = *v26 + 1;
        }

        else
        {
          v39 = 1;
        }

        v121 = 2;
        do
        {
          *(v36 + v38) = v28[v38];
          ++v38;
        }

        while (v39 != v38);
      }

      goto LABEL_52;
    }
  }

  else
  {
    v31 = 0;
    v35 = 1;
  }

  v124 = 4 * v35;
  v121 = 4;
  v37 = v28;
LABEL_52:
  v129 = v24;
  v122 = v31 * v24;
  v58 = malloc_type_malloc(v31 * v24, 0xA3B093A1uLL);
  v123 = (4 * v31);
  v59 = malloc_type_malloc(4 * v31, 0x100004052888210uLL);
  v60 = v59;
  if (v23 == 1)
  {
    v72 = *v26;
    v62 = v124;
    if (v72)
    {
      v73 = 0;
      do
      {
        v74 = v28[v73];
        v75 = v73 + 1;
        v76 = v28[v73 + 1] - v74;
        if (v76)
        {
          v77 = v133[*(v18 + 4 * v73)];
          do
          {
            v58[v74] = v132[v77];
            *(v59 + v74++) = *(v131 + v77++);
            --v76;
          }

          while (v76);
          v72 = *v26;
        }

        ++v73;
      }

      while (v75 < v72);
    }
  }

  else if (v23 == 2)
  {
    v61 = *v26;
    v62 = v124;
    if (v61)
    {
      v63 = 0;
      v65 = v132;
      v64 = v133;
      v66 = v131;
      v67 = *v28;
      do
      {
        v68 = v63 + 1;
        v69 = v28[v63 + 1];
        v70 = v69 - v67;
        if (v69 != v67)
        {
          v71 = v64[*(v18 + 4 * v63)];
          do
          {
            *&v58[2 * v67] = v65[v71];
            *(v59 + v67++) = v66[v71++];
            --v70;
          }

          while (v70);
        }

        v67 = v69;
        v63 = v68;
      }

      while (v68 != v61);
    }
  }

  else
  {
    v62 = v124;
    if (v20 <= 0)
    {
      v78 = *v26;
      if (v78)
      {
        v79 = 0;
        v81 = v132;
        v80 = v133;
        v82 = v131;
        do
        {
          v83 = v28[v79];
          v84 = v79 + 1;
          v85 = v28[v79 + 1] - v83;
          if (v85)
          {
            v86 = v80[*(v18 + 4 * v79)];
            do
            {
              *&v58[4 * v83] = v81[v86];
              *(v59 + v83++) = v82[v86++];
              --v85;
            }

            while (v85);
            v78 = *v26;
          }

          ++v79;
        }

        while (v84 < v78);
      }
    }
  }

  if (v17)
  {
    v17->_influenceIndexSize = v121;
    v17->_boneIndexSize = v129;
  }

  v87 = sub_1AFDE847C(self->_resourceManager, v37, v62, encoderCopy2);
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v88, v87, 24);
  }

  v89 = sub_1AFDE847C(self->_resourceManager, v58, v122, encoderCopy2);
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v90, v89, 32);
  }

  v91 = sub_1AFDE847C(self->_resourceManager, v60, v123, encoderCopy2);
  if (v17)
  {
    objc_setProperty_nonatomic(v17, v92, v91, 40);
  }

  if (v37 != v28)
  {
    free(v28);
  }

  free(v37);
  free(v58);
LABEL_88:
  free(v60);
  return v17;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context, buffers);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  v12 = objc_msgSend_currentComputeEncoder(context, v8, v9, v10);
  objc_msgSend_resetCache(v12, v13, v14, v15);
  if (self->_useFallbackCopyKernel)
  {
    v19 = 1;
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(v12, v16, self->_influenceOffsetsBuffer, 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v12, v20, self->_boneIndicesBuffer, 0, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v12, v21, self->_boneWeightsBuffer, 0, 3);
    v25 = objc_msgSend_currentBufferAllocatorPerFrame(context, v22, v23, v24);
    v67[0] = 0;
    v26 = sub_1AF1C9DCC(self->_skinner, v67);
    v27 = CFXBufferAllocatorPerFrameAllocateWithBytes(v25, v26, 16 * v67[0]);
    objc_msgSend_setBufferSlice_atIndex_(v12, v28, v27, v28, 4);
    v19 = 5;
  }

  var1 = buffers->var1;
  var3 = buffers->var3;
  var5 = buffers->var5;
  v69 = objc_msgSend_length(var1, v16, v17, v18) / 0xCuLL;
  if (self->_baseVertexCount != v69)
  {
    v33 = sub_1AF0D5194();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3ABC(v33, v32, v34, v35, v36, v37, v38, v39);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(v12, v32, &v69, 4, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v40, var1, 0, v19);
  if (self->_skinNormals)
  {
    v44 = v69;
    if (v44 != objc_msgSend_length(var3, v41, v42, v43) / 0xCuLL)
    {
      v46 = sub_1AF0D5194();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3B34(v46, v45, v47, v48, v49, v50, v51, v52);
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(v12, v45, var3, 0, v19 + 1);
  }

  if (self->_skinTangents)
  {
    v53 = v69;
    if (v53 > objc_msgSend_length(var5, v41, v42, v43) >> 4)
    {
      v55 = sub_1AF0D5194();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3BAC(v55, v54, v56, v57, v58, v59, v60, v61);
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(v12, v54, var5, 0, v19 | 2);
  }

  objc_msgSend_setStageInputOutputBuffersToEncoder_(context, v41, v12, v43);
  memset(v67, 0, 24);
  v67[3] = v69;
  v11 = 1;
  v68 = vdupq_n_s64(1uLL);
  objc_msgSend_setStageInRegion_(v12, v62, v67, v63);
  v64 = sub_1AFDE323C(self->_computePipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v12, v65, v64, v69);
  return v11;
}

@end