@interface VFXMTLShaderBindingsGenerator
+ (void)allocateRegistry;
+ (void)deallocateRegistry;
+ (void)registerArgument:(id)a3 frequency:(int)a4 block:(id)a5;
+ (void)registerArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6;
+ (void)registerSemantic:(id)a3 withBlock:(id)a4;
+ (void)registerShadableArgumentBindingBlockForBuffers:(id)a3 textures:(id)a4 samplers:(id)a5;
+ (void)unregisterBindings;
- (VFXMTLShaderBindingsGenerator)init;
- (id)_dictionaryForFrequency:(int)a3;
- (int64_t)_searchBindings:(id)a3 forArgumentNamed:(id)a4 type:(int64_t)a5;
- (void)_checkForAssociatedSamplerOnBinding:(id)a3 argument:(id)a4;
- (void)_parseBindings:(id)a3 function:(id)a4 renderPipeline:(id)a5 isClientProgram:(BOOL)a6 customBindingsOut:(id *)a7;
- (void)addResourceBindingsForArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6;
- (void)dealloc;
- (void)generateBindingsForPipeline:(id)a3 withReflection:(id)a4 program:(__CFXProgram *)a5 materialIdentifier:(__CFString *)a6 overrides:(__CFXRenderingOverride *)a7;
@end

@implementation VFXMTLShaderBindingsGenerator

+ (void)allocateRegistry
{
  if (qword_1ED73B048)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA85C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  qword_1ED73B048 = objc_msgSend_initWithCapacity_(v10, v11, 0, v12);
  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  qword_1ED73A420 = objc_msgSend_initWithCapacity_(v13, v14, 0, v15);
}

+ (void)deallocateRegistry
{
  if (!qword_1ED73B048)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA8D4(v3, a2, v4, v2, v5, v6, v7, v8);
    }
  }

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(qword_1ED73B048, a2, &unk_1F24E8C20, v2);

  qword_1ED73B048 = 0;
  qword_1ED73A420 = 0;
}

+ (void)registerSemantic:(id)a3 withBlock:(id)a4
{
  if (objc_msgSend_objectForKey_(qword_1ED73B048, a2, a3, a4))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA94C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = qword_1ED73B048;
  v15 = _Block_copy(a4);
  objc_msgSend_setObject_forKey_(v14, v16, v15, a3);
}

+ (void)registerArgument:(id)a3 frequency:(int)a4 block:(id)a5
{
  v6 = *&a4;
  if (objc_msgSend_objectForKey_(qword_1ED73A420, a2, a3, *&a4))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA9C4(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = [VFXMTLArgumentBinder alloc];
  v18 = objc_msgSend_initWithBlock_frequency_needsRenderResource_(v16, v17, a5, v6, 0);
  objc_msgSend_setObject_forKey_(qword_1ED73A420, v19, v18, a3);
}

+ (void)registerArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v8 = *&a4;
  if (objc_msgSend_objectForKey_(qword_1ED73A420, a2, a3, *&a4))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA9C4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = [VFXMTLArgumentBinder alloc];
  v20 = objc_msgSend_initWithBlock_frequency_needsRenderResource_(v18, v19, a6, v8, v7);
  objc_msgSend_setObject_forKey_(qword_1ED73A420, v21, v20, a3);
}

+ (void)registerShadableArgumentBindingBlockForBuffers:(id)a3 textures:(id)a4 samplers:(id)a5
{
  qword_1ED73A3F0 = _Block_copy(a3);
  qword_1ED73A400 = _Block_copy(a4);
  qword_1ED73A408 = _Block_copy(a5);
}

+ (void)unregisterBindings
{
  _Block_release(qword_1ED73A3E8);
  qword_1ED73A3E8 = 0;
  _Block_release(qword_1ED73A3F0);
  qword_1ED73A3F0 = 0;
  _Block_release(qword_1ED73A400);
  qword_1ED73A400 = 0;
  _Block_release(qword_1ED73A408);
  qword_1ED73A408 = 0;
}

- (VFXMTLShaderBindingsGenerator)init
{
  v17.receiver = self;
  v17.super_class = VFXMTLShaderBindingsGenerator;
  v2 = [(VFXMTLShaderBindingsGenerator *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_generateLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_nodeBindings = objc_msgSend_initWithCapacity_(v4, v5, 16, v6);
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_frameBindings = objc_msgSend_initWithCapacity_(v7, v8, 16, v9);
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_shadableBindings = objc_msgSend_initWithCapacity_(v10, v11, 16, v12);
    v13 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_lightBindings = objc_msgSend_initWithCapacity_(v13, v14, 16, v15);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLShaderBindingsGenerator;
  [(VFXMTLShaderBindingsGenerator *)&v3 dealloc];
}

- (int64_t)_searchBindings:(id)a3 forArgumentNamed:(id)a4 type:(int64_t)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v24, v32, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v25;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(a3);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      v16 = objc_msgSend_name(v15, v9, v10, v11);
      if (objc_msgSend_isEqualToString_(v16, v17, a4, v18))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v9, &v24, v32, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (objc_msgSend_type(v15, v9, v10, v11) == a5)
    {
      return objc_msgSend_index(v15, v19, v20, v21);
    }

    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = a4;
      v30 = 1024;
      v31 = a5;
      _os_log_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_DEFAULT, "Warning: arguments named %@ is reserved for type %d", buf, 0x12u);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_parseBindings:(id)a3 function:(id)a4 renderPipeline:(id)a5 isClientProgram:(BOOL)a6 customBindingsOut:(id *)a7
{
  v110 = a6;
  v126 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAA3C(v9, a2, a3, a4, a5, v10, v11, v12);
    }
  }

  v13 = objc_msgSend_functionType(a4, a2, a3, a4, a5);
  v103 = sub_1AF1F1F6C(v13);
  self->_current.stage = v103;
  self->_current.bindings = a3;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v14, &v118, v125, 16);
  if (v18)
  {
    v109 = *v119;
    do
    {
      v19 = 0;
      do
      {
        if (*v119 != v109)
        {
          objc_enumerationMutation(a3);
        }

        v20 = *(*(&v118 + 1) + 8 * v19);
        if ((objc_msgSend_isUsed(v20, v15, v16, v17) | v110) == 1)
        {
          v21 = objc_msgSend_name(v20, v15, v16, v17);
          v25 = objc_msgSend_type(v20, v22, v23, v24);
          v29 = objc_msgSend_index(v20, v26, v27, v28);
          if (v25 != 3)
          {
            v30 = v29;
            if ((v25 || (objc_msgSend_hasPrefix_(v21, v15, @"vertexBuffer.", v17) & 1) == 0) && (!objc_msgSend_hasPrefix_(v21, v15, @"osd", v17) || (objc_msgSend_isEqualToString_(v21, v15, @"osdIndicesBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdTessellationLevel", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdVertexBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingData", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingIndices", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingPatchParams", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingPatchArray", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingChannelCount", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingChannelDescriptors", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingPatchArrayIndex", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"osdFaceVaryingChannelsPackedData", v17) & 1) == 0) && (objc_msgSend_isEqualToString_(v21, v15, @"vertexBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"indexBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"patchParamBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"perPatchVertexBuffer", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"patchTessBuffer", v17) & 1) == 0)
            {
              v31 = objc_msgSend_objectForKeyedSubscript_(qword_1ED73A420, v15, v21, v17);
              if (v31)
              {
                objc_msgSend_addResourceBindingsForArgument_frequency_needsRenderResource_block_(self, v32, v20, *(v31 + 16), *(v31 + 20), *(v31 + 8));
                goto LABEL_11;
              }

              if (v25)
              {
                goto LABEL_35;
              }

              v37 = objc_msgSend_bufferDataType(v20, v32, v33, v34);
              if ((objc_msgSend_isEqualToString_(v21, v38, @"vfx_node", v39) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"vfx_node_in", v17) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v15, @"vfx_nodes_in", v17) & 1) == 0 && !objc_msgSend_isEqualToString_(v21, v15, @"vfx_lights", v17))
              {
                if (v37 == 1 && ((objc_msgSend_isEqualToString_(v21, v15, @"vfx_frame", v17) & 1) != 0 || objc_msgSend_isEqualToString_(v21, v15, @"vfx_frame_multi", v17)))
                {
                  if (v103)
                  {
                    self->_worldBuffer.fragmentIndex = v30;
                  }

                  else
                  {
                    self->_worldBuffer.vertexIndex = v30;
                  }

                  goto LABEL_11;
                }

                v32 = objc_msgSend_objectForKey_(self->_current.programBindingBlocks, v15, v21, v17);
                if (v32)
                {
                  (*(qword_1ED73A3E8 + 16))(qword_1ED73A3E8, v32, v20, self);
                  goto LABEL_11;
                }

LABEL_35:
                v35 = *a7;
                if (!*a7)
                {
                  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  *a7 = v35;
                }

                objc_msgSend_addObject_(v35, v32, v20, v34);
                objc_msgSend_addResourceBindingsForArgument_frequency_needsRenderResource_block_(self, v36, v20, 2, 1, qword_1ED73A3F0[v25]);
                goto LABEL_11;
              }

              nodeBindings = self->_nodeBindings;
              if (objc_msgSend_isEqualToString_(v21, v15, @"vfx_lights", v17))
              {
                nodeBindings = self->_lightBindings;
              }

              v42 = objc_msgSend_objectForKeyedSubscript_(nodeBindings, v40, v21, v41);
              if (v42)
              {
                v43 = v42;
                v44 = v42;
                v45 = v43;
              }

              else
              {
                v101 = objc_alloc_init(VFXMTLSemanticResourceBinding);
                objc_msgSend_setBinding_(v101, v46, v20, v47);
                v45 = v101;
                if (v37 == 1)
                {
                  v100 = a7;
                  __p = 0;
                  v116 = 0;
                  v117 = 0;
                  v111 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v51 = objc_msgSend_bufferStructType(v20, v48, v49, v50);
                  v55 = objc_msgSend_members(v51, v52, v53, v54);
                  v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v111, v124, 16);
                  if (v107)
                  {
                    v106 = *v112;
                    v105 = v55;
                    do
                    {
                      for (i = 0; i != v107; ++i)
                      {
                        if (*v112 != v106)
                        {
                          objc_enumerationMutation(v105);
                        }

                        v61 = *(*(&v111 + 1) + 8 * i);
                        v62 = qword_1ED73B048;
                        v63 = objc_msgSend_name(v61, v57, v58, v59);
                        v69 = objc_msgSend_objectForKeyedSubscript_(v62, v64, v63, v65);
                        if (v69)
                        {
                          v70 = objc_msgSend_offset(v61, v66, v67, v68);
                          v74 = sub_1AF21AC80(v61, v71, v72, v73);
                          v75 = v116;
                          if (v116 >= v117)
                          {
                            v79 = (v116 - __p) >> 4;
                            v80 = v79 + 1;
                            if ((v79 + 1) >> 60)
                            {
                              sub_1AF10A1D0();
                            }

                            v81 = v117 - __p;
                            if ((v117 - __p) >> 3 > v80)
                            {
                              v80 = v81 >> 3;
                            }

                            if (v81 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v82 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v82 = v80;
                            }

                            if (v82)
                            {
                              sub_1AF21BA20(&__p, v82);
                            }

                            v83 = 16 * v79;
                            *v83 = v69;
                            *(v83 + 8) = v70;
                            *(v83 + 12) = v74;
                            v76 = 16 * v79 + 16;
                            v84 = (v83 - (v116 - __p));
                            memcpy(v84, __p, v116 - __p);
                            v85 = __p;
                            __p = v84;
                            v116 = v76;
                            v117 = 0;
                            if (v85)
                            {
                              operator delete(v85);
                            }
                          }

                          else
                          {
                            *v116 = v69;
                            v76 = (v75 + 16);
                            *(v75 + 2) = v70;
                            *(v75 + 3) = v74;
                          }

                          v116 = v76;
                        }

                        else
                        {
                          v77 = sub_1AF0D5194();
                          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                          {
                            v78 = objc_msgSend_name(v61, v57, v58, v59);
                            *buf = 138412290;
                            v123 = v78;
                            _os_log_impl(&dword_1AF0CE000, v77, OS_LOG_TYPE_DEFAULT, "Warning: unknown member in vfx automated buffer : %@", buf, 0xCu);
                          }
                        }
                      }

                      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v57, &v111, v124, 16);
                    }

                    while (v107);
                  }

                  objc_msgSend_setSemanticsCount_(v101, v57, (v116 - __p) >> 4, v59);
                  a7 = v100;
                  if (objc_msgSend_semanticsCount(v101, v86, v87, v88))
                  {
                    v92 = 16 * objc_msgSend_semanticsCount(v101, v89, v90, v91);
                    v101->_semantics = malloc_type_malloc(v92, 0x1080040FC6463CFuLL);
                    memcpy(v101->_semantics, __p, v92);
                    v96 = objc_msgSend_bufferDataSize(v20, v93, v94, v95);
                    objc_msgSend_setBufferSize_(v101, v97, v96, v98);
                  }

                  objc_msgSend_setObject_forKeyedSubscript_(nodeBindings, v89, v101, v21);
                  if (__p)
                  {
                    v116 = __p;
                    operator delete(__p);
                  }

                  v45 = v101;
                }
              }

              *(&v45->super._indices.vertexIndex + (v103 != 0)) = v30;
            }
          }
        }

LABEL_11:
        ++v19;
      }

      while (v19 != v18);
      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v15, &v118, v125, 16);
      v18 = v99;
    }

    while (v99);
  }
}

- (void)generateBindingsForPipeline:(id)a3 withReflection:(id)a4 program:(__CFXProgram *)a5 materialIdentifier:(__CFString *)a6 overrides:(__CFXRenderingOverride *)a7
{
  v96[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_generateLock);
  self->_current.programBindingBlocks = sub_1AF1D5C74(a5);
  self->_current.overrides = a7;
  v12 = sub_1AF1D5DFC(a5);
  v94 = 0;
  self->_worldBuffer = -1;
  if (objc_msgSend_vertexFunction(a3, v13, v14, v15))
  {
    v19 = objc_msgSend_vertexBindings(a4, v16, v17, v18);
    v23 = objc_msgSend_vertexFunction(a3, v20, v21, v22);
    objc_msgSend__parseBindings_function_renderPipeline_isClientProgram_customBindingsOut_(self, v24, v19, v23, a3, v12, &v94);
  }

  if (objc_msgSend_fragmentFunction(a3, v16, v17, v18))
  {
    v28 = objc_msgSend_fragmentBindings(a4, v25, v26, v27);
    v32 = objc_msgSend_fragmentFunction(a3, v29, v30, v31);
    objc_msgSend__parseBindings_function_renderPipeline_isClientProgram_customBindingsOut_(self, v33, v28, v32, a3, v12, &v94);
  }

  if (self->_worldBuffer.vertexIndex != 255 || self->_worldBuffer.fragmentIndex != 255)
  {
    *(a3 + 4) = self->_worldBuffer;
  }

  if (objc_msgSend_count(self->_frameBindings, v25, v26, v27))
  {
    v37 = objc_msgSend_allValues(self->_frameBindings, v34, v35, v36);
    objc_msgSend_setFrameBufferBindings_(a3, v38, v37, v39);
    objc_msgSend_removeAllObjects(self->_frameBindings, v40, v41, v42);
  }

  if (objc_msgSend_count(self->_nodeBindings, v34, v35, v36))
  {
    v46 = objc_msgSend_allValues(self->_nodeBindings, v43, v44, v45);
    objc_msgSend_setNodeBufferBindings_(a3, v47, v46, v48);
    objc_msgSend_removeAllObjects(self->_nodeBindings, v49, v50, v51);
  }

  if (objc_msgSend_count(self->_shadableBindings, v43, v44, v45))
  {
    v55 = objc_msgSend_allValues(self->_shadableBindings, v52, v53, v54);
    objc_msgSend_setShadableBufferBindings_(a3, v56, v55, v57);
    objc_msgSend_removeAllObjects(self->_shadableBindings, v58, v59, v60);
  }

  if (objc_msgSend_count(self->_lightBindings, v52, v53, v54))
  {
    v64 = objc_msgSend_allValues(self->_lightBindings, v61, v62, v63);
    objc_msgSend_setLightBufferBindings_(a3, v65, v64, v66);
    objc_msgSend_removeAllObjects(self->_lightBindings, v67, v68, v69);
  }

  v70 = objc_msgSend_vertexBindings(a4, v61, v62, v63);
  v74 = objc_msgSend_vertexFunction(a3, v71, v72, v73);
  objc_msgSend__computeUsageForBindings_function_(a3, v75, v70, v74);
  v79 = objc_msgSend_fragmentBindings(a4, v76, v77, v78);
  v83 = objc_msgSend_fragmentFunction(a3, v80, v81, v82);
  objc_msgSend__computeUsageForBindings_function_(a3, v84, v79, v83);
  os_unfair_lock_unlock(&self->_generateLock);
  v88 = v94;
  if (v94)
  {
    v89 = v12;
  }

  else
  {
    v89 = 0;
  }

  if (v89 == 1)
  {
    v90 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v85, v86, v87);
    v95 = @"bindings";
    v96[0] = v94;
    v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v91, v96, &v95, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v90, v93, @"VFXProgramDidCompileNotification", a5, v92);
    v88 = v94;
  }
}

- (id)_dictionaryForFrequency:(int)a3
{
  if (a3 <= 2)
  {
    return *(&self->super.isa + qword_1AFE42B10[a3]);
  }

  return v3;
}

- (void)_checkForAssociatedSamplerOnBinding:(id)a3 argument:(id)a4
{
  v6 = objc_msgSend_name(a4, a2, a3, a4);
  v9 = objc_msgSend_stringByAppendingString_(v6, v7, @"Sampler", v8);
  v11 = objc_msgSend__searchBindings_forArgumentNamed_type_(self, v10, self->_current.bindings, v9, 3);
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    stage = self->_current.stage;
    if (stage == 1)
    {
      *(a3 + 12) = v11;
    }

    else if (stage)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEAAB4(&self->_current.stage, v13);
      }
    }

    else
    {
      *(a3 + 11) = v11;
    }
  }
}

- (void)addResourceBindingsForArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v10 = objc_msgSend__dictionaryForFrequency_(self, a2, *&a4, *&a4);
  v14 = objc_msgSend_name(a3, v11, v12, v13);
  v17 = objc_msgSend_objectForKeyedSubscript_(v10, v15, v14, v16);
  if (v17)
  {
    v21 = v17;
    v22 = objc_msgSend_type(v17, v18, v19, v20);
    if (v22 != objc_msgSend_type(a3, v23, v24, v25))
    {
      v29 = sub_1AF0D5194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEAB30(a3, v21, v29, v28);
      }
    }

    if (objc_msgSend_bindBlock(v21, v26, v27, v28) != a6)
    {
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEABF0(v33, v30, v31, v32, v34, v35, v36, v37);
      }
    }
  }

  else
  {
    v21 = objc_alloc_init(VFXMTLResourceBinding);
    objc_msgSend_setBindBlock_(v21, v38, a6, v39);
    objc_msgSend_setNeedsRenderResource_(v21, v40, v7, v41);
    objc_msgSend_setBinding_(v21, v42, a3, v43);
    v47 = objc_msgSend_name(a3, v44, v45, v46);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v48, v21, v47);
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v21[10] = objc_msgSend_index(a3, v30, v31, v32);
  }

  else if (stage)
  {
    v53 = sub_1AF0D5194();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEAAB4(&self->_current.stage, v53);
    }
  }

  else
  {
    v21[9] = objc_msgSend_index(a3, v30, v31, v32);
  }

  if (objc_msgSend_type(a3, v50, v51, v52) == 2)
  {
    objc_msgSend__checkForAssociatedSamplerOnBinding_argument_(self, v54, v21, a3);
  }
}

@end