@interface UniKernel
+ (BOOL)_shouldEmulate_sRGBForTexture:(id)a3;
+ (id)_mtlTextureForImage:(id)a3;
+ (id)_outputTextureForTexture:(id)a3 force:(BOOL)a4;
+ (id)generateCIImage:(id)a3;
- (CGRect)_findOutputRect;
- (CGRect)extentForImage:(id)a3;
- (UniKernel)init;
- (UniKernel)initWithName:(id)a3 library:(id)a4 constants:(id)a5;
- (UniKernel)initWithName:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6;
- (id)_ciImageForInput:(id)a3;
- (id)_findKernelInCache:(id)a3 library:(id)a4 constants:(id)a5;
- (id)_findKernelInCache:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6;
- (id)_flattenDict:(id)a3;
- (id)_inputOrOutputArray:(BOOL)a3;
- (id)_inputOrOutputBufferArray:(BOOL)a3;
- (id)_intputOrOutputNameArray:(BOOL)a3;
- (id)_mtlTextureForImage:(id)a3;
- (id)_populateStruct:(id)a3 values:(id)a4;
- (id)_regionForTexture:(id)a3 name:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getRenderOrder;
- (id)imageByApplyingParameters:(id)a3 extent:(id)a4;
- (id)imageByApplyingParameters:(id)a3 runInfo:(id)a4;
- (id)makeBufferCpuAccessible:(id)a3;
- (id)outputImage:(id)a3;
- (id)outputImageOfSize:(id)a3;
- (id)run:(id)a3;
- (int)_outputFormatForMetalFormat:(unint64_t)a3;
- (int)_promoteFormatForCoreImage:(int)a3;
- (unint64_t)_outputFormatForImage:(id)a3;
- (unsigned)kDebugFlagForKernel;
- (void)_setNumber:(id)a3 forEncoder:(id)a4 atIndex:(unint64_t)a5;
- (void)_setRunInfoBasedOnCoreImage;
- (void)setValues:(id)a3;
- (void)writeDebugTextures:(id)a3 filesWritten:(id)a4;
@end

@implementation UniKernel

- (id)getRenderOrder
{
  context = self->context;
  if (context)
  {
    v5 = objc_msgSend_weakArray(context, a2, v2);
  }

  else
  {
    v5 = objc_msgSend_weakObjectsPointerArray(MEMORY[0x29EDBA0A0], a2, v2);
    objc_msgSend_addPointer_(v5, v6, self);
  }

  return v5;
}

- (unsigned)kDebugFlagForKernel
{
  kernel = self->kernel;
  if (!kernel)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_mk(kernel, a2, v2);
  if (v7)
  {
    v8 = objc_msgSend_mk(self->kernel, v5, v6);
    v11 = objc_msgSend_label(v8, v9, v10);

    if (v11)
    {
      LODWORD(v7) = 822149904;
      v14 = objc_msgSend_mk(self->kernel, v12, v13);
      v17 = objc_msgSend_label(v14, v15, v16);

      v20 = 822149888;
      if ((objc_msgSend_isEqualToString_(v17, v18, @"slm_calc") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v19, @"slm_calc") & 1) == 0)
      {
        if (objc_msgSend_isEqualToString_(v17, v21, @"sparserendering_preprocess"))
        {
          LODWORD(v7) = 822149892;
          goto LABEL_7;
        }

        if (objc_msgSend_isEqualToString_(v17, v23, @"sparserendering_sample_noAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v24, @"sparserendering_sample_withAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v25, @"sparserendering_opt2x_sample_noAlpha") & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v26, @"sparserendering_opt2x_sample_withAlpha"))
        {
          goto LABEL_7;
        }

        v20 = 822150004;
        if ((objc_msgSend_isEqualToString_(v17, v27, @"blurmap_x_smoothing") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v28, @"blurmap_y_smoothing") & 1) == 0)
        {
          v20 = 822149996;
          if ((objc_msgSend_isEqualToString_(v17, v29, @"sparserendering_antialias_x") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v30, @"sparserendering_antialias_y") & 1) == 0)
          {
            v20 = 822150012;
            if ((objc_msgSend_isEqualToString_(v17, v31, @"sparserendering_prefilter_x") & 1) == 0 && (objc_msgSend_isEqualToString_(v17, v32, @"sparserendering_prefilter_y") & 1) == 0)
            {
              if (objc_msgSend_isEqualToString_(v17, v33, @"segmentation_fusion_apply"))
              {
                LODWORD(v7) = 822150648;
              }

              else
              {
                LODWORD(v7) = 0;
              }

              goto LABEL_7;
            }
          }
        }
      }

      LODWORD(v7) = v20;
LABEL_7:

      return v7;
    }

LABEL_8:
    LODWORD(v7) = 0;
  }

  return v7;
}

- (id)_findKernelInCache:(id)a3 library:(id)a4 constants:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_2956BB4F0();
  objc_sync_enter(v10);
  if (v8)
  {
    v13 = objc_msgSend_metalContext(v8, v11, v12);
    v18 = objc_msgSend_library(v13, v14, v15);
    if (v18)
    {
      v19 = MEMORY[0x29EDBA070];
      v20 = objc_msgSend_metalContext(v8, v16, v17);
      v23 = objc_msgSend_library(v20, v21, v22);
      v26 = objc_msgSend_device(v23, v24, v25);
      v29 = objc_msgSend_registryID(v26, v27, v28);
      v31 = objc_msgSend_numberWithUnsignedLongLong_(v19, v30, v29);
    }

    else
    {
      v31 = &unk_2A1C94B88;
    }
  }

  else
  {
    v31 = &unk_2A1C94B88;
  }

  v32 = &stru_2A1C8D648;
  if (v9)
  {
    v32 = v9;
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v11, @"%@:%@:%@", v31, v7, v32);
  v35 = objc_msgSend_objectForKeyedSubscript_(v10, v34, v33);
  v38 = v35;
  if (v35)
  {
    v39 = objc_msgSend_ck(v35, v36, v37);

    v42 = objc_msgSend_coreImageLibrary(v8, v40, v41);

    if ((v39 != 0) != (v42 == 0))
    {
      goto LABEL_17;
    }

    objc_msgSend_removeAllObjects(v10, v43, v44);
  }

  v45 = [UniKernelInternal alloc];
  v38 = objc_msgSend_initWithName_library_constants_(v45, v46, v7, v8, v9);
  if (v38)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v38, v33);
  }

  else
  {
    v48 = uni_logger_compile();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v49, @"Unable to find kernel for %@", v7);
      v52 = v51;
      *buf = 136315138;
      v56 = objc_msgSend_UTF8String(v52, v53, v54);
      _os_log_error_impl(&dword_295691000, v48, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v38 = 0;
  }

LABEL_17:

  objc_sync_exit(v10);

  return v38;
}

- (id)_findKernelInCache:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = sub_2956BB4F0();
  objc_sync_enter(v13);
  v18 = objc_msgSend_library(v10, v14, v15);
  if (v18)
  {
    v19 = MEMORY[0x29EDBA070];
    v20 = objc_msgSend_library(v10, v16, v17);
    v23 = objc_msgSend_device(v20, v21, v22);
    v26 = objc_msgSend_registryID(v23, v24, v25);
    v28 = objc_msgSend_numberWithUnsignedLongLong_(v19, v27, v26);
  }

  else
  {
    v28 = &unk_2A1C94B88;
  }

  v30 = &stru_2A1C8D648;
  if (v12)
  {
    v30 = v12;
  }

  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v29, @"%@:%@:%@", v28, v9, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v13, v32, v31);
  if (!v33)
  {
    v34 = [UniKernelInternal alloc];
    v33 = objc_msgSend_initWithName_metalContext_coreImageLibrary_constants_(v34, v35, v9, v10, v11, v12);
    if (!v33)
    {
      __assert_rtn("[UniKernel _findKernelInCache:metalContext:coreImageLibrary:constants:]", "UniKernel.m", 425, "k");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v13, v36, v33, v31);
  }

  objc_sync_exit(v13);

  return v33;
}

- (UniKernel)initWithName:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v36.receiver = self;
  v36.super_class = UniKernel;
  v14 = [(UniKernel *)&v36 init];
  v16 = v14;
  if (!v14)
  {
LABEL_7:
    v21 = v16;
    goto LABEL_8;
  }

  v17 = objc_msgSend__findKernelInCache_metalContext_coreImageLibrary_constants_(v14, v15, v10, v11, v12, v13);
  objc_msgSend_setKernel_(v16, v18, v17);

  v21 = objc_msgSend_kernel(v16, v19, v20);

  if (v21)
  {
    if (v11)
    {
      objc_msgSend_device(v11, v22, v23);
    }

    else
    {
      objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], v22, v23);
    }
    v24 = ;
    objc_msgSend_setDevice_(v16, v25, v24);

    v28 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v26, v27);
    objc_msgSend_setInputs_(v16, v29, v28);

    objc_msgSend_setScale_(v16, v30, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v16, v31, &unk_2A1C8A7E8);
    objc_msgSend_setRunInfo_(v16, v32, 0);
    objc_msgSend_setContext_(v16, v33, 0);
    objc_msgSend_setPreferredOutputFormat_(v16, v34, &unk_2A1C94BB8);
    goto LABEL_7;
  }

LABEL_8:

  return v21;
}

- (UniKernel)initWithName:(id)a3 library:(id)a4 constants:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = UniKernel;
  v11 = [(UniKernel *)&v36 init];
  v13 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  v14 = objc_msgSend__findKernelInCache_library_constants_(v11, v12, v8, v9, v10);
  objc_msgSend_setKernel_(v13, v15, v14);

  v18 = objc_msgSend_kernel(v13, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_metalContext(v9, v19, v20);
    v24 = objc_msgSend_device(v21, v22, v23);
    objc_msgSend_setDevice_(v13, v25, v24);

    v28 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v26, v27);
    objc_msgSend_setInputs_(v13, v29, v28);

    objc_msgSend_setScale_(v13, v30, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v13, v31, &unk_2A1C8A808);
    objc_msgSend_setRunInfo_(v13, v32, 0);
    objc_msgSend_setContext_(v13, v33, 0);
    objc_msgSend_setPreferredOutputFormat_(v13, v34, &unk_2A1C94BB8);
LABEL_4:
    v18 = v13;
  }

  return v18;
}

- (UniKernel)init
{
  v15.receiver = self;
  v15.super_class = UniKernel;
  v2 = [(UniKernel *)&v15 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setKernel_(v2, v3, 0);
    v7 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x29EDBA028], v5, v6);
    objc_msgSend_setInputs_(v4, v8, v7);

    objc_msgSend_setScale_(v4, v9, &unk_2A1C94BA0);
    objc_msgSend_setRoiCallback_(v4, v10, &unk_2A1C8A828);
    objc_msgSend_setRunInfo_(v4, v11, 0);
    objc_msgSend_setContext_(v4, v12, 0);
    objc_msgSend_setPreferredOutputFormat_(v4, v13, &unk_2A1C94BB8);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  if (!v7)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_device(self, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = v7;
    v14 = objc_msgSend_device(self, v12, v13);
    v16 = objc_msgSend_initWithDevice_(v11, v15, v14);

    if (!v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = v7;
    v16 = objc_msgSend_init(v19, v20, v21);
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  v22 = objc_msgSend_inputs(self, v17, v18);
  v24 = objc_msgSend_copyWithZone_(v22, v23, a3);
  objc_msgSend_setInputs_(v16, v25, v24);

  v28 = objc_msgSend_device(self, v26, v27);
  objc_msgSend_setDevice_(v16, v29, v28);

  v32 = objc_msgSend_scale(self, v30, v31);
  objc_msgSend_setScale_(v16, v33, v32);

  v36 = objc_msgSend_roiCallback(self, v34, v35);
  objc_msgSend_setRoiCallback_(v16, v37, v36);

  v40 = objc_msgSend_kernel(self, v38, v39);
  objc_msgSend_setKernel_(v16, v41, v40);

  v46 = objc_msgSend_runInfo(self, v42, v43);
  if (v46)
  {
    v47 = objc_msgSend_runInfo(self, v44, v45);
    v50 = objc_msgSend_copy(v47, v48, v49);
    objc_msgSend_setRunInfo_(v16, v51, v50);
  }

  else
  {
    objc_msgSend_setRunInfo_(v16, v44, 0);
  }

  v54 = objc_msgSend_context(self, v52, v53);
  objc_msgSend_setContext_(v16, v55, v54);

  v58 = objc_msgSend_preferredOutputFormat(self, v56, v57);
  objc_msgSend_setPreferredOutputFormat_(v16, v59, v58);

  v62 = objc_msgSend_context(v16, v60, v61);

  if (v62)
  {
    v65 = objc_msgSend_context(v16, v63, v64);
    objc_sync_enter(v65);
    v68 = objc_msgSend_context(v16, v66, v67);
    v71 = objc_msgSend_weakArray(v68, v69, v70);
    objc_msgSend_addPointer_(v71, v72, v16);

    objc_sync_exit(v65);
  }

LABEL_13:

  return v16;
}

- (id)_flattenDict:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v4, v3);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v42, v41, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v43;
    v31 = *v43;
    v32 = v6;
    do
    {
      v12 = 0;
      v33 = v10;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = objc_msgSend_objectForKeyedSubscript_(v6, v9, v13);
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v12;
            objc_msgSend_removeObjectForKey_(v5, v15, v13);
            v34 = v14;
            v16 = v14;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v37, v36, 16);
            if (v18)
            {
              v20 = v18;
              v21 = *v38;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v38 != v21)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v23 = *(*(&v37 + 1) + 8 * i);
                  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v19, @"%@_%@", v13, v23);
                  v26 = objc_msgSend_objectForKeyedSubscript_(v16, v25, v23);
                  objc_msgSend_setObject_forKeyedSubscript_(v5, v27, v26, v24);
                }

                v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v37, v36, 16);
              }

              while (v20);
            }

            v11 = v31;
            v6 = v32;
            v10 = v33;
            v14 = v34;
            v12 = v35;
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v42, v41, 16);
    }

    while (v10);
  }

  v29 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8DC0], v28, v5);

  return v29;
}

- (id)_populateStruct:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_bufferDataType(v6, v8, v9) != 1)
  {
    goto LABEL_16;
  }

  v12 = objc_msgSend_bufferDataSize(v6, v10, v11);
  v13 = v12;
  if (!v12)
  {
    v58 = 0;
    goto LABEL_18;
  }

  v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (!v14)
  {
LABEL_16:
    v58 = 0;
    v13 = 0;
LABEL_18:
    v51 = 0;
    goto LABEL_19;
  }

  v17 = v14;
  v101 = v13;
  v13 = objc_msgSend_bufferStructType(v6, v15, v16);

  if (v13)
  {
    v20 = MEMORY[0x29EDB8E20];
    v21 = objc_msgSend_bufferStructType(v6, v18, v19);
    v24 = objc_msgSend_members(v21, v22, v23);
    v27 = objc_msgSend_count(v24, v25, v26);
    v13 = objc_msgSend_setWithCapacity_(v20, v28, v27);

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v105 = v6;
    v31 = objc_msgSend_bufferStructType(v6, v29, v30);
    v34 = objc_msgSend_members(v31, v32, v33);

    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v120, v119, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v121;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v121 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = objc_msgSend_name(*(*(&v120 + 1) + 8 * i), v37, v38);
          objc_msgSend_addObject_(v13, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v120, v119, 16);
      }

      while (v39);
    }

    v45 = objc_msgSend__flattenDict_(self, v44, v7);

    v46 = MEMORY[0x29EDB8E20];
    v49 = objc_msgSend_allKeys(v45, v47, v48);
    v51 = objc_msgSend_setWithArray_(v46, v50, v49);

    objc_msgSend_minusSet_(v13, v52, v51);
    if (objc_msgSend_count(v13, v53, v54))
    {
      v57 = uni_logger_compile();
      v6 = v105;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_2956CE4C8(v13, v57);
      }

LABEL_50:
      v58 = 0;
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v6 = v105;
      v61 = objc_msgSend_bufferStructType(v105, v55, v56);
      v64 = objc_msgSend_members(v61, v62, v63);

      obj = v64;
      v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v115, v114, 16);
      if (v104)
      {
        v68 = *v116;
        v98 = v45;
        v99 = v51;
        v100 = *v116;
        while (2)
        {
          v69 = 0;
          do
          {
            if (*v116 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v70 = *(*(&v115 + 1) + 8 * v69);
            v71 = objc_msgSend_name(v70, v66, v67);
            v73 = objc_msgSend_objectForKeyedSubscript_(v45, v72, v71);

            if (!v73)
            {
              goto LABEL_49;
            }

            v106 = v69;
            v76 = objc_msgSend_dataType(v70, v74, v75);
            v112 = 0;
            v113 = 0;
            v77 = numComponentsForType(v76, &v113, &v112);
            if (!v113 || !v112)
            {
              goto LABEL_48;
            }

            v78 = v77;
            if (v77 == 1)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_48;
              }

              v81 = objc_msgSend_offset(v70, v79, v80);
              packSingleValue(v73, 0, v81, v113, v17);
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_48;
              }

              v103 = v73;
              v82 = v73;
              if (objc_msgSend_count(v82, v83, v84) != v78)
              {

LABEL_48:
LABEL_49:

                goto LABEL_50;
              }

              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v85 = v82;
              v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v108, v107, 16);
              if (v87)
              {
                v90 = v87;
                v91 = 0;
                v92 = *v109;
                do
                {
                  v93 = 0;
                  v94 = v91;
                  do
                  {
                    if (*v109 != v92)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v95 = *(*(&v108 + 1) + 8 * v93);
                    v91 = v94 + 1;
                    v96 = objc_msgSend_offset(v70, v88, v89);
                    packSingleValue(v95, v94, v96, v113, v17);
                    ++v93;
                    ++v94;
                  }

                  while (v90 != v93);
                  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v108, v107, 16);
                }

                while (v90);

                v6 = v105;
                v45 = v98;
                v51 = v99;
              }

              else
              {
              }

              v68 = v100;
              v73 = v103;
            }

            v69 = v106 + 1;
          }

          while (v106 + 1 != v104);
          v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v115, v114, 16);
          if (v104)
          {
            continue;
          }

          break;
        }
      }

      v58 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v97, v17, v101);
    }
  }

  else
  {
    v58 = 0;
    v51 = 0;
    v45 = v7;
  }

  free(v17);
  v7 = v45;
LABEL_19:
  v59 = v58;

  return v58;
}

+ (id)_mtlTextureForImage:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_texture(v3, v4, v5);

    v7 = objc_opt_class();
    v9 = objc_msgSend__mtlTextureForImage_(v7, v8, v6);
    v3 = v6;
    goto LABEL_9;
  }

  if (objc_msgSend_conformsToProtocol_(v3, v4, &unk_2A1CA0A70))
  {
    v9 = v3;
    v3 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_null(MEMORY[0x29EDB8E28], v10, v11);
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (id)_mtlTextureForImage:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6 = objc_msgSend__mtlTextureForImage_(v4, v5, v3);

  return v6;
}

- (void)_setNumber:(id)a3 forEncoder:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_2956CE6AC();
  }

  if (!v9)
  {
    sub_2956CE680();
  }

  v10 = v7;
  v13 = objc_msgSend_objCType(v10, v11, v12);
  if (!v13 || (v14 = v13, strlen(v13) != 1))
  {
    sub_2956CE654();
  }

  v35 = 0.0;
  v17 = *v14;
  if (v17 <= 0x62)
  {
    if (*v14 > 0x4Bu)
    {
      if (v17 == 76)
      {
        LODWORD(v35) = objc_msgSend_unsignedLongValue(v7, v15, v16);
        if (objc_msgSend_unsignedLongValue(v7, v32, v33) >> 32)
        {
          sub_2956CE570();
        }

        goto LABEL_41;
      }

      if (v17 == 81)
      {
        LODWORD(v35) = objc_msgSend_unsignedLongLongValue(v7, v15, v16);
        if (objc_msgSend_unsignedLongLongValue(v7, v29, v30) >> 32)
        {
          sub_2956CE544();
        }

        goto LABEL_41;
      }

      if (v17 != 83)
      {
        goto LABEL_49;
      }

      v22 = objc_msgSend_unsignedShortValue(v7, v15, v16);
      goto LABEL_29;
    }

    switch(v17)
    {
      case 'B':
        v27 = objc_msgSend_BOOLValue(v7, v15, v16);
        break;
      case 'C':
        v27 = objc_msgSend_unsignedCharValue(v7, v15, v16);
        break;
      case 'I':
        LODWORD(v21) = objc_msgSend_unsignedIntValue(v7, v15, v16);
LABEL_31:
        v35 = v21;
        goto LABEL_41;
      default:
        goto LABEL_49;
    }

LABEL_43:
    LOBYTE(v35) = v27;
    objc_msgSend_setBytes_length_atIndex_(v9, v28, &v35, 1, a5);
    goto LABEL_44;
  }

  if (*v14 <= 0x68u)
  {
    if (v17 != 99)
    {
      if (v17 == 100)
      {
        objc_msgSend_doubleValue(v7, v15, v16);
        v24 = v31;
      }

      else
      {
        if (v17 != 102)
        {
          goto LABEL_49;
        }

        objc_msgSend_floatValue(v7, v15, v16);
      }

      v35 = v24;
LABEL_41:
      objc_msgSend_setBytes_length_atIndex_(v9, v20, &v35, 4, a5);
      goto LABEL_44;
    }

    v27 = objc_msgSend_charValue(v7, v15, v16);
    goto LABEL_43;
  }

  if (*v14 <= 0x70u)
  {
    if (v17 != 105)
    {
      if (v17 == 108)
      {
        LODWORD(v35) = objc_msgSend_longValue(v7, v15, v16);
        if (objc_msgSend_longValue(v7, v18, v19) >= 0x80000000)
        {
          sub_2956CE5C8();
        }

        goto LABEL_41;
      }

LABEL_49:
      v34 = uni_logger_api();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_2956CE5F4();
      }

      __assert_rtn("[UniKernel _setNumber:forEncoder:atIndex:]", "UniKernel.m", 828, "length > 0");
    }

    LODWORD(v21) = objc_msgSend_intValue(v7, v15, v16);
    goto LABEL_31;
  }

  if (v17 == 113)
  {
    LODWORD(v35) = objc_msgSend_longLongValue(v7, v15, v16);
    if (objc_msgSend_longLongValue(v7, v25, v26) >= 0x80000000)
    {
      sub_2956CE59C();
    }

    goto LABEL_41;
  }

  if (v17 != 115)
  {
    goto LABEL_49;
  }

  v22 = objc_msgSend_shortValue(v7, v15, v16);
LABEL_29:
  LOWORD(v35) = v22;
  objc_msgSend_setBytes_length_atIndex_(v9, v23, &v35, 2, a5);
LABEL_44:
}

- (void)writeDebugTextures:(id)a3 filesWritten:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      v7 = objc_opt_class();
      if (objc_msgSend_shouldWriteDebugTextures(v7, v8, v9))
      {
        objc_msgSend__writeDebugTextures_filesWritten_(self, v10, v11, v6);
      }
    }
  }
}

- (id)_regionForTexture:(id)a3 name:(id)a4
{
  v5 = a3;
  v8 = a4;
  if (!v5)
  {
    v27 = MEMORY[0x29EDB8E90];
    goto LABEL_9;
  }

  v9 = objc_msgSend_buffer(v5, v6, v7);
  v12 = objc_msgSend_heap(v5, v10, v11);
  v15 = objc_msgSend_height(v5, v13, v14);
  v20 = objc_msgSend_bufferBytesPerRow(v5, v16, v17);
  if (v9)
  {
    v35[0] = v9;
    v21 = MEMORY[0x29EDBA070];
    v22 = objc_msgSend_bufferOffset(v5, v18, v19);
    v25 = objc_msgSend_numberWithUnsignedInteger_(v21, v23, v22);
    v35[1] = v25;
    v26 = v35;
  }

  else
  {
    if (!v12)
    {
      v27 = MEMORY[0x29EDB8E90];
      goto LABEL_8;
    }

    v28 = MEMORY[0x29EDBA070];
    v29 = objc_msgSend_heapOffset(v5, v18, v19, v12);
    v25 = objc_msgSend_numberWithUnsignedInteger_(v28, v30, v29);
    v34[1] = v25;
    v26 = v34;
  }

  v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v24, v20 * v15);
  v26[2] = v31;
  v26[3] = v8;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v32, v26, 4);

LABEL_8:
LABEL_9:

  return v27;
}

- (id)run:(id)a3
{
  v4 = a3;
  v264 = self;
  v7 = objc_msgSend_mk(self, v5, v6);

  if (v7)
  {
    if (v4)
    {
      v12 = v4;
      v13 = v264;
    }

    else
    {
      v13 = v264;
      v15 = objc_msgSend_device(v264, v8, v9);
      v12 = objc_msgSend_newCommandQueue(v15, v16, v17);
    }

    v18 = objc_msgSend_commandBuffer(v12, v10, v11);
    v21 = objc_msgSend_mk(v13, v19, v20);
    v24 = objc_msgSend_label(v21, v22, v23);
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v27 = objc_opt_class();
      v26 = objc_msgSend_description(v27, v28, v29);
    }

    v30 = v26;

    objc_msgSend_setLabel_(v18, v31, v30);
    v262 = v18;
    v34 = objc_msgSend_computeCommandEncoder(v18, v32, v33);
    v261 = v30;
    objc_msgSend_setLabel_(v34, v35, v30);
    v38 = objc_msgSend_mk(v13, v36, v37);
    objc_msgSend_setComputePipelineState_(v34, v39, v38);

    v281[0] = 0;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v42 = objc_msgSend_kernel(v13, v40, v41);
    v45 = objc_msgSend_arguments(v42, v43, v44);

    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v277, v276, 16);
    if (v47)
    {
      v50 = v47;
      v259 = v12;
      v260 = v4;
      v51 = 0;
      v52 = 0;
      v269 = -1;
      v271 = *v278;
      v263 = v34;
      v53 = v264;
      v267 = v45;
      while (1)
      {
        v54 = 0;
        do
        {
          if (*v278 != v271)
          {
            objc_enumerationMutation(v45);
          }

          v55 = *(*(&v277 + 1) + 8 * v54);
          v56 = objc_msgSend_name(v55, v48, v49);
          isEqualToString = objc_msgSend_isEqualToString_(v56, v57, @"emulate_sRGB");

          if (isEqualToString)
          {
            v269 = objc_msgSend_index(v55, v59, v60);
            goto LABEL_38;
          }

          if (objc_msgSend_type(v55, v59, v60) == 2)
          {
            inputs = v53->inputs;
            v64 = objc_msgSend_name(v55, v61, v62);
            v66 = objc_msgSend_objectForKeyedSubscript_(inputs, v65, v64);

            if (v66)
            {
              v69 = objc_msgSend__mtlTextureForImage_(UniKernel, v67, v66);
              if (v69)
              {
                v70 = v69;
                if (objc_msgSend_access(v55, v67, v68) == 1)
                {
                  sub_2956CE980();
                }

                if (objc_msgSend_access(v55, v71, v72) == 2)
                {
                  v74 = v70;

                  v281[0] = objc_msgSend__shouldEmulate_sRGBForTexture_(UniKernel, v75, v74);
                  v51 = v74;
                  v45 = v267;
                }

                if (objc_msgSend_conformsToProtocol_(v70, v73, &unk_2A1CA0A70))
                {
                  v78 = objc_msgSend_index(v55, v76, v77);
                  objc_msgSend_setTexture_atIndex_(v34, v79, v70, v78);
                }

                if (!v52)
                {
                  v70 = v70;
                  v52 = v70;
                }

                goto LABEL_36;
              }
            }

            v98 = objc_msgSend_access(v55, v67, v68);
            v70 = uni_logger_render();
            v99 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
            if (v98 == 2)
            {
              v197 = v52;
              if (v99)
              {
                v206 = MEMORY[0x29EDBA0F8];
                v207 = objc_msgSend_name(v55, v100, v101);
                v209 = objc_msgSend_stringWithFormat_(v206, v208, @"Output texture for %@ is missing (which may be ok)", v207);
                v210 = v209;
                v213 = objc_msgSend_UTF8String(v210, v211, v212);
                *buf = 136315138;
                *&buf[4] = v213;
                _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
              }

LABEL_94:
              v12 = v259;
              v4 = v260;
              v196 = v262;

              goto LABEL_95;
            }

            if (v99)
            {
              v102 = MEMORY[0x29EDBA0F8];
              v103 = objc_msgSend_name(v55, v100, v101);
              v105 = objc_msgSend_stringWithFormat_(v102, v104, @"Input texture for %@ is missing (which may be ok)", v103);
              v106 = v105;
              v109 = objc_msgSend_UTF8String(v106, v107, v108);
              *buf = 136315138;
              *&buf[4] = v109;
              _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
            }

            v70 = 0;
LABEL_35:
            v45 = v267;
LABEL_36:

            goto LABEL_37;
          }

          if (!objc_msgSend_type(v55, v61, v62))
          {
            v110 = v53->inputs;
            v111 = objc_msgSend_name(v55, v80, v81);
            v66 = objc_msgSend_objectForKeyedSubscript_(v110, v112, v111);

            if (!v66)
            {
              v115 = objc_msgSend_name(v55, v113, v114);
              v117 = objc_msgSend_isEqualToString_(v115, v116, @"kernelScale");

              if (!v117)
              {
                v66 = uni_logger_api();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v163 = MEMORY[0x29EDBA0F8];
                  v164 = objc_msgSend_name(v55, v161, v162);
                  v266 = objc_msgSend_kernel(v53, v165, v166);
                  v258 = objc_msgSend_mk(v266, v167, v168);
                  v171 = objc_msgSend_label(v258, v169, v170);
                  v173 = objc_msgSend_stringWithFormat_(v163, v172, @"missing object for input parameter %@ on kernel %@", v164, v171);
                  v174 = v173;
                  v177 = objc_msgSend_UTF8String(v174, v175, v176);
                  *buf = 136446466;
                  *&buf[4] = "[UniKernel run:]";
                  *&buf[12] = 2080;
                  *&buf[14] = v177;
                  _os_log_error_impl(&dword_295691000, v66, OS_LOG_TYPE_ERROR, "%{public}s %s", buf, 0x16u);

                  v45 = v267;
                }

                goto LABEL_37;
              }

              v66 = objc_msgSend_scale(v53, v118, v119);
            }

            if (objc_msgSend_bufferDataType(v55, v113, v114) == 1)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v123 = objc_msgSend__populateStruct_values_(v53, v122, v55, v66);
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 && !objc_msgSend_conformsToProtocol_(v66, v135, &unk_2A1CA21A8))
                {
                  v197 = v52;
                  v70 = uni_logger_api();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    sub_2956CE82C();
                  }

                  goto LABEL_94;
                }

                v123 = v66;
              }

              v70 = v123;
              if (!v123)
              {
                v197 = v52;
                v70 = uni_logger_api();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  sub_2956CE730();
                }

                goto LABEL_94;
              }

              v265 = v52;
              v136 = v51;
              v137 = objc_msgSend_conformsToProtocol_(v123, v124, &unk_2A1CA21A8);
              v140 = objc_msgSend_length(v70, v138, v139);
              v143 = objc_msgSend_bufferDataSize(v55, v141, v142);
              if (v137)
              {
                if (v140 != v143)
                {
                  sub_2956CE954();
                }

                v51 = v136;
                v146 = objc_msgSend_index(v55, v144, v145);
                objc_msgSend_setBuffer_offset_atIndex_(v34, v147, v70, 0, v146);
              }

              else
              {
                if (v140 != v143)
                {
                  sub_2956CE8FC();
                }

                if (objc_msgSend_length(v70, v144, v145) <= 0x1000)
                {
                  v182 = v70;
                  v185 = objc_msgSend_bytes(v182, v183, v184);
                  v188 = objc_msgSend_length(v70, v186, v187);
                  v191 = objc_msgSend_index(v55, v189, v190);
                  objc_msgSend_setBytes_length_atIndex_(v34, v192, v185, v188, v191);
                }

                else
                {
                  v154 = objc_msgSend_device(v53, v152, v153);
                  v156 = objc_msgSend_bufferFromData_device_(UniDeviceCache, v155, v70, v154);

                  if (!v156)
                  {
                    sub_2956CE928();
                  }

                  v159 = objc_msgSend_index(v55, v157, v158);
                  v34 = v263;
                  objc_msgSend_setBuffer_offset_atIndex_(v263, v160, v156, 0, v159);
                }

                v51 = v136;
              }

              v52 = v265;
            }

            else
            {
              v125 = objc_msgSend_bufferDataType(v55, v120, v121);
              if (!isSupportedType(v125))
              {
                v197 = v52;
                v70 = uni_logger_render();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  v216 = v51;
                  v217 = MEMORY[0x29EDBA0F8];
                  v218 = objc_msgSend_bufferDataType(v55, v214, v215);
                  v220 = MTLDataTypeAsString(v218, v219);
                  v223 = objc_msgSend_name(v55, v221, v222);
                  v225 = objc_msgSend_stringWithFormat_(v217, v224, @"Unhandled Metal buffer data type %@ for argument: %@", v220, v223);
                  v226 = v225;
                  v229 = objc_msgSend_UTF8String(v226, v227, v228);
                  *buf = 136315138;
                  *&buf[4] = v229;
                  _os_log_impl(&dword_295691000, v70, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);

                  v51 = v216;
                }

                goto LABEL_94;
              }

              v70 = v66;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v150 = objc_msgSend_index(v55, v148, v149);
                  objc_msgSend__setNumber_forEncoder_atIndex_(v53, v151, v70, v34, v150);
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v197 = v52;
                    v230 = uni_logger_api();
                    if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
                    {
                      sub_2956CE730();
                    }

                    v66 = v70;
                    goto LABEL_94;
                  }

                  *buf = 0;
                  v180 = objc_msgSend_index(v55, v178, v179);
                  objc_msgSend_setBytes_length_atIndex_(v34, v181, buf, 4, v180);
                }

                goto LABEL_36;
              }

              v128 = objc_msgSend_device(v53, v126, v127);
              v130 = objc_msgSend_bufferFromData_device_(UniDeviceCache, v129, v70, v128);

              if (!v130)
              {
                sub_2956CE800();
              }

              v133 = objc_msgSend_index(v55, v131, v132);
              v34 = v263;
              objc_msgSend_setBuffer_offset_atIndex_(v263, v134, v130, 0, v133);

              v53 = v264;
            }

            goto LABEL_35;
          }

          if (objc_msgSend_type(v55, v80, v81) != 1)
          {
            goto LABEL_38;
          }

          v82 = v53->inputs;
          v83 = objc_msgSend_name(v55, v48, v49);
          v66 = objc_msgSend_objectForKeyedSubscript_(v82, v84, v83);

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_2956CE6D8();
          }

          v87 = objc_msgSend_unsignedIntegerValue(v66, v85, v86);
          v90 = v87 + objc_msgSend_threadgroupMemoryAlignment(v55, v88, v89) - 1;
          v95 = v90 & -objc_msgSend_threadgroupMemoryAlignment(v55, v91, v92);
          if (!v95)
          {
            sub_2956CE704();
          }

          v96 = objc_msgSend_index(v55, v93, v94);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v34, v97, v95, v96);
LABEL_37:

LABEL_38:
          ++v54;
        }

        while (v50 != v54);
        v193 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v277, v276, 16);
        v50 = v193;
        if (!v193)
        {

          if (!v52)
          {
            v12 = v259;
            v4 = v260;
            goto LABEL_79;
          }

          v4 = v260;
          v196 = v262;
          if (v269 != -1)
          {
            objc_msgSend_setBytes_length_atIndex_(v34, v194, v281, 1);
          }

          v197 = v52;
          v198 = objc_msgSend_runInfo(v264, v194, v195);
          v12 = v259;
          if (v198)
          {
            v201 = v198;
            objc_msgSend_dispatchOn_(v198, v199, v34);
          }

          else
          {
            v272 = objc_msgSend_width(v51, v199, v200);
            v268 = v51;
            v270 = objc_msgSend_height(v51, v232, v233);
            v236 = objc_msgSend_mk(v264, v234, v235);
            v239 = objc_msgSend_threadExecutionWidth(v236, v237, v238);
            v242 = objc_msgSend_mk(v264, v240, v241);
            v245 = objc_msgSend_maxTotalThreadsPerThreadgroup(v242, v243, v244);
            v248 = objc_msgSend_mk(v264, v246, v247);
            v251 = v245 / objc_msgSend_threadExecutionWidth(v248, v249, v250);

            v252 = [UniRunInfo alloc];
            *buf = v272;
            *&buf[8] = v270;
            *&buf[16] = 1;
            v274[0] = v239;
            v274[1] = v251;
            v274[2] = 1;
            v254 = objc_msgSend_initWithGridSize_threadsPerThreadGroup_(v252, v253, buf, v274);
            if (!v254)
            {
              sub_2956CE9AC();
            }

            v201 = v254;
            v34 = v263;
            v51 = v268;
            objc_msgSend_dispatchOn_(v254, v255, v263);
          }

          objc_msgSend_endEncoding(v34, v202, v203);
          objc_msgSend_kDebugFlagForKernel(v264, v256, v257);
          goto LABEL_96;
        }
      }
    }

    v51 = 0;
LABEL_79:
    v196 = v262;
    v204 = uni_logger_render();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_295691000, v204, OS_LOG_TYPE_INFO, "First texture unspecified. Error for now", buf, 2u);
    }

    v197 = 0;
LABEL_95:
    v201 = 0;
LABEL_96:
    v14 = 0;
    if (v196 && v51)
    {
      v273[0] = v196;
      v273[1] = v51;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v205, v273, 2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)makeBufferCpuAccessible:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_device(v3, v4, v5);
  v9 = objc_msgSend_length(v3, v7, v8);
  v11 = objc_msgSend_newBufferWithLength_options_(v6, v10, v9, 0);

  v14 = objc_msgSend_device(v3, v12, v13);
  v17 = objc_msgSend_newCommandQueue(v14, v15, v16);
  v20 = objc_msgSend_commandBuffer(v17, v18, v19);

  v23 = objc_msgSend_blitCommandEncoder(v20, v21, v22);
  v26 = objc_msgSend_length(v3, v24, v25);
  objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v23, v27, v3, 0, v11, 0, v26);

  objc_msgSend_endEncoding(v23, v28, v29);
  objc_msgSend_commit(v20, v30, v31);
  objc_msgSend_waitUntilCompleted(v20, v32, v33);
  v34 = v11;

  return v11;
}

- (int)_outputFormatForMetalFormat:(unint64_t)a3
{
  v4 = *MEMORY[0x29EDB91E0];
  if (a3 <= 64)
  {
    if (a3 > 24)
    {
      if (a3 == 25)
      {
        v5 = MEMORY[0x29EDB9218];
        return *v5;
      }

      if (a3 == 30)
      {
        v5 = MEMORY[0x29EDB91F0];
        return *v5;
      }
    }

    else
    {
      if (!a3)
      {
        return v4;
      }

      if (a3 == 10)
      {
        v5 = MEMORY[0x29EDB91E8];
        return *v5;
      }
    }
  }

  else
  {
    if (a3 > 70)
    {
      if (a3 != 71)
      {
        if (a3 == 115)
        {
          v5 = MEMORY[0x29EDB9208];
          return *v5;
        }

        if (a3 == 125)
        {
          v5 = MEMORY[0x29EDB9200];
          return *v5;
        }

        goto LABEL_22;
      }

LABEL_16:
      v5 = MEMORY[0x29EDB91F8];
      return *v5;
    }

    if (a3 == 65)
    {
      v5 = MEMORY[0x29EDB9210];
      return *v5;
    }

    if (a3 == 70)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  v7 = uni_logger_api();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_2956CE9D8(a3, v7);
  }

  return v4;
}

- (int)_promoteFormatForCoreImage:(int)a3
{
  if (*MEMORY[0x29EDB91E8] == a3)
  {
    v3 = MEMORY[0x29EDB9218];
    return *v3;
  }

  if (*MEMORY[0x29EDB91F0] == a3)
  {
    v3 = MEMORY[0x29EDB9210];
    return *v3;
  }

  if (*MEMORY[0x29EDB91F8] == a3)
  {
    return *MEMORY[0x29EDB9208];
  }

  else
  {
    return a3;
  }
}

+ (BOOL)_shouldEmulate_sRGBForTexture:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_parentTexture(v3, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_parentTexture(v3, v6, v7);
    if (objc_msgSend_pixelFormat(v9, v10, v11) == 71)
    {
      v14 = 1;
    }

    else
    {
      v15 = objc_msgSend_parentTexture(v3, v12, v13);
      if (objc_msgSend_pixelFormat(v15, v16, v17) == 31)
      {
        v14 = 1;
      }

      else
      {
        v20 = objc_msgSend_parentTexture(v3, v18, v19);
        v14 = objc_msgSend_pixelFormat(v20, v21, v22) == 11;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_outputTextureForTexture:(id)a3 force:(BOOL)a4
{
  v5 = a3;
  v8 = v5;
  if (a4)
  {
    v9 = objc_msgSend_device(v5, v6, v7, 0, 0, 0, 0, 0, 0, 0);
    objc_msgSend_pixelFormat(v8, v10, v11);
    MTLPixelFormatGetInfoForDevice();

    if ((v22 & 8) != 0)
    {
      if ((objc_msgSend_usage(v8, v12, v13) & 0x10) == 0)
      {
        sub_2956CEA8C();
      }

      v16 = objc_msgSend_pixelFormat(v8, v14, v15);
      switch(v16)
      {
        case 11:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 10);
          break;
        case 71:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 70);
          break;
        case 31:
          v18 = objc_msgSend_newTextureViewWithPixelFormat_(v8, v17, 30);
          break;
        default:
          sub_2956CEA60();
      }

      v19 = v18;

      v8 = v19;
    }
  }

  v20 = v8;

  return v20;
}

- (CGRect)extentForImage:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    if (objc_msgSend_conformsToProtocol_(v3, v4, &unk_2A1CA0A70))
    {
      v6 = v5;
      v9 = objc_msgSend_width(v6, v7, v8);
LABEL_13:
      v14 = v9;
      v15 = objc_msgSend_height(v6, v10, v11);

      v12 = 0.0;
      v13 = 0.0;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_texture(v5, v16, v17);
      if (!v6)
      {
        v20 = objc_msgSend_image(v5, v18, v19);
        v6 = v20;
        if (v20)
        {
          objc_msgSend_extent(v20, v18, v19);
          v12 = v21;
          v13 = v22;
          v14 = v23;
          v15 = v24;

          goto LABEL_14;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_extent(v5, v18, v19);
        v12 = v25;
        v13 = v26;
        v14 = v27;
        v15 = v28;
        goto LABEL_14;
      }

      v6 = 0;
    }

    v9 = objc_msgSend_width(v6, v18, v19);
    goto LABEL_13;
  }

  v12 = *MEMORY[0x29EDB90D8];
  v13 = *(MEMORY[0x29EDB90D8] + 8);
  v14 = *(MEMORY[0x29EDB90D8] + 16);
  v15 = *(MEMORY[0x29EDB90D8] + 24);
LABEL_14:

  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (unint64_t)_outputFormatForImage:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (objc_msgSend_conformsToProtocol_(v3, v4, &unk_2A1CA0A70))
  {
    v8 = objc_msgSend_pixelFormat(v5, v6, v7);
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = objc_msgSend_texture(v5, v9, v10);

  if (v8)
  {
    v13 = objc_msgSend_texture(v5, v11, v12);
    v8 = objc_msgSend_pixelFormat(v13, v14, v15);
  }

LABEL_8:

  return v8;
}

- (id)_ciImageForInput:(id)a3
{
  v6 = a3;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v4, v5);
LABEL_4:
    v8 = v7;
    goto LABEL_5;
  }

  if (objc_msgSend_conformsToProtocol_(v6, v4, &unk_2A1CA0A70))
  {
    v7 = objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v10, v6, MEMORY[0x29EDB8EA0]);
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_image(v6, v11, v12);
    if (v8)
    {
      goto LABEL_5;
    }

    v14 = objc_msgSend__mtlTextureForImage_(UniKernel, v13, v6);
    if (v14)
    {
      v16 = v14;
      if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_2A1CA0A70))
      {
        objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v17, v16, 0);
      }

      else
      {
        objc_msgSend__ciImageForInput_(self, v17, v16);
      }
      v8 = ;

      goto LABEL_5;
    }
  }

  else
  {
    v18 = uni_logger_api();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_2956CEAB8();
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)outputImageOfSize:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_kernel(v4, v5, v6);
    if (!v8)
    {
      goto LABEL_8;
    }

    v11 = v8;
    v12 = objc_msgSend_kernel(v7, v9, v10);
    v17 = objc_msgSend_runInfo(v12, v13, v14);
    if (v17)
    {
      v18 = objc_msgSend_kernel(v7, v15, v16);
      v21 = objc_msgSend_runInfo(v18, v19, v20);
      v24 = objc_msgSend_copy(v21, v22, v23);
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
LABEL_8:
      v26 = [UniRunInfo alloc];
      v24 = objc_msgSend_initWithImage_(v26, v27, v7);
    }

    objc_msgSend_outputImage_(self, v25, v24);
  }

  else
  {
    v24 = 0;
    objc_msgSend_outputImage_(self, v5, 0);
  }
  v28 = ;

  return v28;
}

- (id)_intputOrOutputNameArray:(BOOL)a3
{
  v3 = a3;
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, a3);
  v30 = 0u;
  v31 = 0u;
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  v32 = 0uLL;
  v33 = 0uLL;
  v9 = objc_msgSend_kernel(self, v5, v6);
  v12 = objc_msgSend_arguments(v9, v10, v11);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v29, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        if (v8 == objc_msgSend_access(v20, v15, v16) && objc_msgSend_type(v20, v15, v16) == 2)
        {
          v21 = objc_msgSend_name(v20, v15, v16);
          if (!v21)
          {
            sub_2956CEAF8();
          }

          v24 = objc_msgSend_name(v20, v22, v23);
          objc_msgSend_addObject_(v7, v25, v24);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v30, v29, 16);
    }

    while (v17);
  }

  v27 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v26, v7);

  return v27;
}

- (id)_inputOrOutputArray:(BOOL)a3
{
  if (a3)
  {
    objc_msgSend_inputNameArray(self, a2, a3);
  }

  else
  {
    objc_msgSend_outputNameArray(self, a2, a3);
  }
  v5 = ;
  v8 = v5;
  if (v5 && (v9 = objc_msgSend_count(v5, v6, v7)) != 0)
  {
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v10, v9);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = v8;
    v12 = v8;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v38, v37, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v39;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = objc_msgSend_inputs(self, v15, v16);
          v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v20);

          if (v23)
          {
            if (objc_msgSend_conformsToProtocol_(v23, v15, &unk_2A1CA0A70))
            {
              v25 = rootTexture(v23);

              v23 = v25;
            }

            if (a3 || (v26 = objc_opt_class(), v26 == objc_opt_class()))
            {
              objc_msgSend_addObject_(v11, v24, v23);
            }

            else
            {
              v28 = objc_msgSend_inputs(self, v24, v27);
              v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v20);
              objc_msgSend_addObject_(v11, v31, v30);
            }
          }

          else if (!a3)
          {
            v34 = uni_logger_api();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_2956CEB24(self, v20, v34);
            }

            v33 = MEMORY[0x29EDB8E90];
            goto LABEL_27;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v38, v37, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v33 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v32, v11);
LABEL_27:
    v8 = v36;
  }

  else
  {
    v33 = MEMORY[0x29EDB8E90];
  }

  return v33;
}

- (id)_inputOrOutputBufferArray:(BOOL)a3
{
  v3 = a3;
  v35 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, a3);
  v37 = 0u;
  v38 = 0u;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v39 = 0uLL;
  v40 = 0uLL;
  v8 = objc_msgSend_kernel(self, v5, v6);
  v11 = objc_msgSend_arguments(v8, v9, v10);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v36, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v38;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        if (v7 == objc_msgSend_access(v19, v14, v15) && !objc_msgSend_type(v19, v14, v15))
        {
          v20 = objc_msgSend_inputs(self, v14, v15);
          v23 = objc_msgSend_name(v19, v21, v22);
          v25 = objc_msgSend_objectForKeyedSubscript_(v20, v24, v23);

          if (objc_msgSend_access(v19, v26, v27) == 2 && v25 == 0)
          {
            v33 = uni_logger_api();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_2956CEBEC();
            }

            v32 = MEMORY[0x29EDB8E90];
            v30 = v35;
            goto LABEL_24;
          }

          if (v25)
          {
            objc_msgSend_addObject_(v35, v28, v25);
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v37, v36, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v30 = v35;
  v32 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v31, v35);
LABEL_24:

  return v32;
}

- (CGRect)_findOutputRect
{
  v4 = objc_msgSend_kernel(self, a2, v2);
  if (!v4)
  {
    sub_2956CECE8();
  }

  v7 = objc_msgSend_kernel(self, v5, v6);
  v10 = objc_msgSend_arguments(v7, v8, v9);
  if (!v10)
  {
    sub_2956CECBC();
  }

  x = *MEMORY[0x29EDB90D8];
  y = *(MEMORY[0x29EDB90D8] + 8);
  width = *(MEMORY[0x29EDB90D8] + 16);
  height = *(MEMORY[0x29EDB90D8] + 24);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = objc_msgSend_kernel(self, v15, v16);
  v20 = objc_msgSend_arguments(v17, v18, v19);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v49, v48, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_access(v28, v23, v24) == 2 && objc_msgSend_type(v28, v23, v24) == 2)
        {
          v29 = objc_msgSend_inputs(self, v23, v24);
          v32 = objc_msgSend_name(v28, v30, v31);
          v34 = objc_msgSend_objectForKeyedSubscript_(v29, v33, v32);
          objc_msgSend_extentForImage_(self, v35, v34);
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;

          v53.origin.x = v37;
          v53.origin.y = v39;
          v53.size.width = v41;
          v53.size.height = v43;
          if (!CGRectIsNull(v53))
          {
            v54.origin.x = x;
            v54.origin.y = y;
            v54.size.width = width;
            v54.size.height = height;
            if (CGRectIsNull(v54))
            {
              height = v43;
              width = v41;
              y = v39;
              x = v37;
            }

            else
            {
              v55.origin.x = x;
              v55.origin.y = y;
              v55.size.width = width;
              v55.size.height = height;
              v58.origin.x = v37;
              v58.origin.y = v39;
              v58.size.width = v41;
              v58.size.height = v43;
              v56 = CGRectUnion(v55, v58);
              x = v56.origin.x;
              y = v56.origin.y;
              width = v56.size.width;
              height = v56.size.height;
            }
          }
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v49, v48, 16);
    }

    while (v25);
  }

  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (id)generateCIImage:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_runInfo(v3, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_runInfo(v3, v6, v7);
    objc_msgSend_outputExtent(v9, v10, v11);
    *v553 = v12;
    *&v553[8] = v13;
    *&v553[16] = v14;
    *&v553[24] = v15;
  }

  else
  {
    *v553 = *MEMORY[0x29EDB90D8];
    *&v553[8] = *(MEMORY[0x29EDB90D8] + 8);
    *&v553[16] = *(MEMORY[0x29EDB90D8] + 16);
    *&v553[24] = *(MEMORY[0x29EDB90D8] + 24);
  }

  v18 = objc_msgSend_preferredOutputFormat(v3, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_preferredOutputFormat(v3, v19, v20);
    v18 = objc_msgSend_unsignedIntegerValue(v21, v22, v23);
  }

  v24 = MEMORY[0x29EDB8E20];
  v25 = objc_msgSend_kernel(v3, v19, v20);
  v28 = objc_msgSend_arguments(v25, v26, v27);
  v31 = objc_msgSend_count(v28, v29, v30);
  v33 = objc_msgSend_setWithCapacity_(v24, v32, v31);

  v626 = 0u;
  v627 = 0u;
  v624 = 0u;
  v625 = 0u;
  v563 = v3;
  v36 = objc_msgSend_kernel(v3, v34, v35);
  v39 = objc_msgSend_arguments(v36, v37, v38);

  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v624, v623, 16);
  if (v41)
  {
    v44 = v41;
    v45 = *v625;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v625 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v47 = objc_msgSend_name(*(*(&v624 + 1) + 8 * i), v42, v43);
        objc_msgSend_addObject_(v33, v48, v47);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v624, v623, 16);
    }

    while (v44);
  }

  v51 = objc_msgSend_set(MEMORY[0x29EDB8E20], v49, v50);
  v54 = objc_msgSend_inputs(v563, v52, v53);
  v57 = objc_msgSend_keyEnumerator(v54, v55, v56);

  v60 = objc_msgSend_nextObject(v57, v58, v59);
  if (v60)
  {
    v62 = v60;
    do
    {
      objc_msgSend_addObject_(v51, v61, v62);
      v65 = objc_msgSend_nextObject(v57, v63, v64);

      v62 = v65;
    }

    while (v65);
  }

  v548 = v57;
  objc_msgSend_addObject_(v51, v61, @"emulate_sRGB");
  objc_msgSend_addObject_(v51, v66, @"kernelScale");
  v549 = v51;
  objc_msgSend_minusSet_(v33, v67, v51);
  if (objc_msgSend_count(v33, v68, v69))
  {
    v72 = uni_logger_render();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v75 = MEMORY[0x29EDBA0F8];
      v76 = objc_msgSend_mk(v563, v73, v74);
      v79 = objc_msgSend_label(v76, v77, v78);
      v81 = objc_msgSend_stringWithFormat_(v75, v80, @"For kernel %@, missing kernel arguments = %@", v79, v33);
      v82 = v81;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = objc_msgSend_UTF8String(v82, v83, v84);
      _os_log_impl(&dword_295691000, v72, OS_LOG_TYPE_INFO, "%s", &buf, 0xCu);
    }
  }

  shouldEmulate_sRGBForTexture = 0;
  v618 = 0u;
  v619 = 0u;
  v620 = 0u;
  v621 = 0u;
  v85 = objc_msgSend_kernel(v563, v70, v71);
  v88 = objc_msgSend_arguments(v85, v86, v87);

  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v618, v617, 16);
  if (v90)
  {
    v93 = v90;
    v94 = *v619;
    while (2)
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v619 != v94)
        {
          objc_enumerationMutation(v88);
        }

        v96 = *(*(&v618 + 1) + 8 * j);
        if (objc_msgSend_access(v96, v91, v92) == 2)
        {
          v97 = objc_msgSend_inputs(v563, v91, v92);
          v100 = objc_msgSend_name(v96, v98, v99);
          v102 = objc_msgSend_objectForKeyedSubscript_(v97, v101, v100);

          if (objc_msgSend_type(v96, v103, v104) == 2)
          {
            if (!v102)
            {
              sub_2956CED14();
            }

            v106 = objc_msgSend__mtlTextureForImage_(UniKernel, v105, v102);
            v108 = v106;
            if (v106 && objc_msgSend_conformsToProtocol_(v106, v107, &unk_2A1CA0A70))
            {
              shouldEmulate_sRGBForTexture = objc_msgSend__shouldEmulate_sRGBForTexture_(UniKernel, v107, v108);
            }

            objc_msgSend_extentForImage_(v563, v107, v102);
            x = v109;
            y = v111;
            width = v113;
            height = v115;
            if (!CGRectIsNull(*v553))
            {
              v634.origin.x = x;
              v634.origin.y = y;
              v634.size.width = width;
              v634.size.height = height;
              v629 = CGRectUnion(*v553, v634);
              x = v629.origin.x;
              y = v629.origin.y;
              width = v629.size.width;
              height = v629.size.height;
            }

            if (!v18)
            {
              v18 = objc_msgSend__outputFormatForImage_(v563, v117, v102);
            }

            *&v553[16] = width;
            *&v553[24] = height;
            *v553 = x;
            *&v553[8] = y;
          }

          goto LABEL_40;
        }
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v618, v617, 16);
      if (v93)
      {
        continue;
      }

      break;
    }
  }

LABEL_40:

  v119 = objc_msgSend__outputFormatForMetalFormat_(v563, v118, v18);
  v121 = v119;
  v544 = *MEMORY[0x29EDB91E0];
  if (*MEMORY[0x29EDB91E0] == v119)
  {
    v545 = v119;
  }

  else if ((v18 - 11) <= 0x3C && ((1 << (v18 - 11)) & 0x1000000000100001) != 0)
  {
    v545 = v119;
    shouldEmulate_sRGBForTexture = 1;
  }

  else
  {
    v545 = objc_msgSend__promoteFormatForCoreImage_(v563, v120, v119);
  }

  v122 = objc_msgSend_inputs(v563, v120, v121);
  v125 = objc_msgSend_copy(v122, v123, v124);

  shouldEmulate_sRGBForTexture = 0;
  v127 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v126, &shouldEmulate_sRGBForTexture, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v125, v128, v127, @"emulate_sRGB");

  v547 = v125;
  v131 = objc_msgSend_copy(v125, v129, v130);
  objc_msgSend_setInputs_(v563, v132, v131);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v613 = 0x3032000000;
  v614 = sub_2956C09B8;
  v615 = sub_2956C09C8;
  v616 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v133, v134);
  v606 = 0;
  v607 = &v606;
  v608 = 0x3032000000;
  v609 = sub_2956C09B8;
  v610 = sub_2956C09C8;
  v611 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v135, v136);
  v139 = objc_msgSend_ck(v563, v137, v138);
  v142 = objc_msgSend_parameters(v139, v140, v141);

  v143 = MEMORY[0x29EDB8DE8];
  v146 = objc_msgSend_count(v142, v144, v145);
  v148 = objc_msgSend_arrayWithCapacity_(v143, v147, v146);
  v149 = MEMORY[0x29EDB8DE8];
  v152 = objc_msgSend_count(v142, v150, v151);
  v156 = objc_msgSend_arrayWithCapacity_(v149, v153, v152);
  for (k = 0; k < objc_msgSend_count(v142, v154, v155); ++k)
  {
    v160 = objc_msgSend_null(MEMORY[0x29EDB8E28], v158, v159);
    objc_msgSend_addObject_(v148, v161, v160);

    objc_msgSend_setObject_atIndexedSubscript_(v156, v162, &unk_2A1C94B88, k);
  }

  v163 = MEMORY[0x29EDB8E00];
  v164 = objc_msgSend_count(v142, v158, v159);
  v566 = objc_msgSend_dictionaryWithCapacity_(v163, v165, v164);
  v168 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x29EDBA040], v166, v167);
  objc_msgSend_addCharactersInString_(v168, v169, @"_");
  v565 = objc_msgSend_invertedSet(v168, v170, v171);
  v546 = v168;
  v604 = 0u;
  v605 = 0u;
  v602 = 0u;
  v603 = 0u;
  obj = v142;
  v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v172, &v602, v601, 16);
  v555 = v156;
  v558 = v148;
  if (v174)
  {
    v175 = 0;
    v176 = *v603;
    v177 = *MEMORY[0x29EDB91B0];
    do
    {
      for (m = 0; m != v174; ++m)
      {
        if (*v603 != v176)
        {
          objc_enumerationMutation(obj);
        }

        v179 = objc_msgSend_objectForKeyedSubscript_(*(*(&v602 + 1) + 8 * m), v173, v177);
        v181 = v179;
        if (!v179)
        {
          __assert_rtn("+[UniKernel generateCIImage:]", "UniKernel.m", 1870, "str");
        }

        v182 = objc_msgSend_componentsSeparatedByCharactersInSet_(v179, v180, v565);
        v184 = objc_msgSend_componentsJoinedByString_(v182, v183, &stru_2A1C8D648);

        v186 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v185, v175);
        objc_msgSend_setObject_forKeyedSubscript_(v566, v187, v186, v184);

        ++v175;
      }

      v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v173, &v602, v601, 16);
    }

    while (v174);
  }

  v190 = objc_msgSend_ck(v563, v188, v189);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v599 = 0u;
  v600 = 0u;
  v597 = 0u;
  v598 = 0u;
  v193 = objc_msgSend_kernel(v563, v191, v192);
  v196 = objc_msgSend_arguments(v193, v194, v195);

  v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v196, v197, &v597, v596, 16);
  v557 = v196;
  if (!v200)
  {
LABEL_118:

    v594 = 0u;
    v595 = 0u;
    v592 = 0u;
    v593 = 0u;
    v557 = v555;
    v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v557, v338, &v592, v591, 16);
    if (v341)
    {
      v342 = 0;
      v343 = *v593;
LABEL_120:
      v344 = 0;
      v345 = v342;
      v342 += v341;
      while (1)
      {
        if (*v593 != v343)
        {
          objc_enumerationMutation(v557);
        }

        if ((objc_msgSend_BOOLValue(*(*(&v592 + 1) + 8 * v344), v339, v340) & 1) == 0)
        {
          break;
        }

        ++v345;
        if (v341 == ++v344)
        {
          v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v557, v339, &v592, v591, 16);
          if (!v341)
          {
            goto LABEL_126;
          }

          goto LABEL_120;
        }
      }

      v351 = uni_logger_api();
      if (os_log_type_enabled(v351, OS_LOG_TYPE_ERROR))
      {
        sub_2956CEE34();
      }

      v354 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v352, v353);
      goto LABEL_193;
    }

LABEL_126:

    v347 = MEMORY[0x29EDB8EA0];
    v348 = v545;
    if (v544 != v545 && v545 >= 1)
    {
      v589 = *MEMORY[0x29EDB9250];
      v349 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v346, v545);
      v590 = v349;
      v347 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v350, &v590, &v589, 1);
    }

    v557 = v347;
    v376 = objc_msgSend_runInfo(v563, v346, v348);
    v556 = v376;
    if (v376)
    {
      objc_msgSend_outputExtent(v376, v377, v378);
      if (CGRectIsNull(v631))
      {
        memset(v579, 0, sizeof(v579));
        objc_msgSend_getThreadsPerThreadgroup(v556, v377, v378);
        if (*v579 && *&v579[8] && *&v579[16])
        {
          v381 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v379, v347);
          v383 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v382, *v579);
          v588[0] = v383;
          v385 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v384, *&v579[8]);
          v588[1] = v385;
          v387 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v386, *&v579[16]);
          v588[2] = v387;
          v389 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v388, v588, 3);
          objc_msgSend_setObject_forKeyedSubscript_(v381, v390, v389, @"kCIKernelThreadsPerThreadgroup");

          v392 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8DC0], v391, v381);

          v557 = v392;
        }

        v573 = 0;
        v574 = 0;
        v575 = 0;
        objc_msgSend_getThreadgroupsPerGrid(v556, v379, v380);
      }
    }

    if (!v558 || !objc_msgSend_count(v558, v377, v378))
    {
LABEL_180:
      objc_msgSend__findOutputRect(v563, v377, v378);
      v436 = v632.origin.x;
      v437 = v632.origin.y;
      v438 = v632.size.width;
      v439 = v632.size.height;
      if (!CGRectIsNull(v632))
      {
        v444 = objc_msgSend_runInfo(v563, v440, v441);
        if (v444)
        {
          v445 = objc_msgSend_runInfo(v563, v442, v443);
          objc_msgSend_outputExtent(v445, v446, v447);
          v449 = v448;
          v451 = v450;
          v453 = v452;
          v455 = v454;
        }

        else
        {
          v449 = *MEMORY[0x29EDB90D8];
          v451 = *(MEMORY[0x29EDB90D8] + 8);
          v453 = *(MEMORY[0x29EDB90D8] + 16);
          v455 = *(MEMORY[0x29EDB90D8] + 24);
        }

        v633.origin.x = v449;
        v633.origin.y = v451;
        v633.size.width = v453;
        v633.size.height = v455;
        if (CGRectIsNull(v633))
        {
          *&v553[16] = v438;
          *&v553[24] = v439;
          *v553 = v436;
          *&v553[8] = v437;
        }
      }

      *v579 = 0;
      *&v579[8] = v579;
      *&v579[16] = 0x3032000000;
      v580 = sub_2956C09B8;
      v581 = sub_2956C09C8;
      v461 = objc_msgSend_kernel(v563, v440, v441);
      v582 = objc_msgSend_constants(v461, v462, v463);

      v573 = 0;
      v574 = &v573;
      v575 = 0x3032000000;
      v576 = sub_2956C09B8;
      v577 = sub_2956C09C8;
      v466 = objc_msgSend_scale(v563, v464, v465);
      v578 = objc_msgSend_copy(v466, v467, v468);

      v471 = objc_msgSend_ck(v563, v469, v470);
      v567[0] = MEMORY[0x29EDCA5F8];
      v567[1] = 3221225472;
      v567[2] = sub_2956C09D0;
      v567[3] = &unk_29EDD49A0;
      v568 = v563;
      v569 = v579;
      v570 = &v606;
      p_buf = &buf;
      v572 = &v573;
      v473 = objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v471, v472, v567, v558, v557, *v553, *&v553[8], *&v553[16], *&v553[24]);

      if ((isKindOfClass & 1) == 0)
      {
        v476 = objc_msgSend_imageByCroppingToRect_(v473, v474, v475, *v553, *&v553[8], *&v553[16], *&v553[24]);

        v473 = v476;
      }

      v354 = v473;

      _Block_object_dispose(&v573, 8);
      _Block_object_dispose(v579, 8);

      goto LABEL_192;
    }

    v393 = objc_msgSend_ck(v563, v377, v378);
    v396 = objc_msgSend_parameters(v393, v394, v395);

    v399 = objc_msgSend_count(v396, v397, v398);
    if (v399 != objc_msgSend_count(v558, v400, v401))
    {
      v456 = uni_logger_api();
      if (os_log_type_enabled(v456, OS_LOG_TYPE_ERROR))
      {
        v530 = MEMORY[0x29EDBA0F8];
        v531 = objc_msgSend_count(v396, v457, v458);
        v534 = objc_msgSend_count(v558, v532, v533);
        v537 = objc_msgSend_ck(v563, v535, v536);
        v539 = objc_msgSend_stringWithFormat_(v530, v538, @"Unexpected # of argumetns for kernel (wanted %lu, got %ld). Returning empty image for kernel %@", v531, v534, v537);
        v540 = v539;
        v543 = objc_msgSend_UTF8String(v540, v541, v542);
        *v579 = 136315138;
        *&v579[4] = v543;
        _os_log_error_impl(&dword_295691000, v456, OS_LOG_TYPE_ERROR, "%s", v579, 0xCu);
      }

      v354 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v459, v460);

      goto LABEL_192;
    }

    v586 = 0u;
    v587 = 0u;
    v584 = 0u;
    v585 = 0u;
    v402 = v396;
    v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v402, v403, &v584, v583, 16);
    if (!v405)
    {
      goto LABEL_179;
    }

    v406 = 0;
    v560 = *MEMORY[0x29EDB91A8];
    v562 = *v585;
    v550 = *MEMORY[0x29EDB91B0];
LABEL_157:
    v407 = 0;
    v552 = v405;
    while (1)
    {
      if (*v585 != v562)
      {
        objc_enumerationMutation(v402);
      }

      v408 = *(*(&v584 + 1) + 8 * v407);
      v409 = objc_msgSend_objectForKeyedSubscript_(v408, v404, v560);
      v410 = v409;
      if (!v409)
      {
        goto LABEL_175;
      }

      v412 = NSClassFromString(v409);
      if (!v412)
      {
        goto LABEL_175;
      }

      v413 = objc_msgSend_objectAtIndexedSubscript_(v558, v411, v406);
      if (objc_opt_class() == v412)
      {
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        v425 = v406;
        v426 = MEMORY[0x29EDBA0F8];
        v427 = objc_msgSend_objectForKeyedSubscript_(v408, v424, v550);
        v428 = objc_opt_class();
        v429 = NSStringFromClass(v428);
        v422 = objc_msgSend_stringWithFormat_(v426, v430, @"object named %@ is of incorrect class (%@) expecting an image or sampler.", v427, v429);;

        v423 = uni_logger_compile();
        v406 = v425;
        if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }
      }

      else
      {
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_174;
        }

        if (isKindOfClass)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v412 == objc_opt_class())
          {
            goto LABEL_174;
          }
        }

        v415 = v406;
        v416 = MEMORY[0x29EDBA0F8];
        v417 = objc_msgSend_objectForKeyedSubscript_(v408, v414, v550);
        v418 = objc_opt_class();
        v419 = NSStringFromClass(v418);
        v420 = NSStringFromClass(v412);
        v422 = objc_msgSend_stringWithFormat_(v416, v421, @"object named %@ is of incorrect class (%@) expecting %@", v417, v419, v420);;

        v423 = uni_logger_compile();
        v406 = v415;
        if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
        {
LABEL_177:
          v431 = v422;
          v434 = objc_msgSend_UTF8String(v431, v432, v433);
          v405 = v552;
          *v579 = 136446466;
          *&v579[4] = "+[UniKernel generateCIImage:]";
          *&v579[12] = 2080;
          *&v579[14] = v434;
          _os_log_error_impl(&dword_295691000, v423, OS_LOG_TYPE_ERROR, "%{public}s %s", v579, 0x16u);
          goto LABEL_173;
        }
      }

      v405 = v552;
LABEL_173:

LABEL_174:
      ++v406;

LABEL_175:
      if (v405 == ++v407)
      {
        v435 = objc_msgSend_countByEnumeratingWithState_objects_count_(v402, v404, &v584, v583, 16);
        v405 = v435;
        if (!v435)
        {
LABEL_179:

          goto LABEL_180;
        }

        goto LABEL_157;
      }
    }
  }

  v201 = *v598;
  v559 = *v598;
LABEL_59:
  v202 = 0;
  v561 = v200;
  while (1)
  {
    if (*v598 != v201)
    {
      objc_enumerationMutation(v557);
    }

    v203 = *(*(&v597 + 1) + 8 * v202);
    if (objc_msgSend_access(v203, v198, v199) != 2)
    {
      break;
    }

LABEL_109:
    if (v200 == ++v202)
    {
      v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(v557, v198, &v597, v596, 16);
      v200 = v337;
      if (!v337)
      {
        goto LABEL_118;
      }

      goto LABEL_59;
    }
  }

  if (objc_msgSend_type(v203, v198, v199) != 2)
  {
    v206 = objc_msgSend_inputs(v563, v204, v205);
    v209 = objc_msgSend_name(v203, v207, v208);
    v211 = objc_msgSend_objectForKeyedSubscript_(v206, v210, v209);

    if (v211)
    {
      v214 = v607[5];
      v215 = objc_msgSend_name(v203, v212, v213);
      objc_msgSend_setObject_forKeyedSubscript_(v214, v216, v211, v215);
    }
  }

  v217 = objc_msgSend_name(v203, v204, v205);
  v219 = objc_msgSend_objectForKeyedSubscript_(v566, v218, v217);

  v556 = v219;
  if (v219)
  {
    v222 = objc_msgSend_unsignedIntValue(v219, v220, v221);
    if (objc_msgSend_count(obj, v223, v224) <= v222)
    {
      v361 = uni_logger_api();
      if (os_log_type_enabled(v361, OS_LOG_TYPE_ERROR))
      {
        v364 = objc_msgSend_name(v203, v362, v363);
        v365 = v364;
        v368 = objc_msgSend_UTF8String(v365, v366, v367);
        *v579 = 136315394;
        *&v579[4] = v368;
        *&v579[12] = 2048;
        *&v579[14] = v222;
        _os_log_error_impl(&dword_295691000, v361, OS_LOG_TYPE_ERROR, "Index out of range for argument %s (%ld).", v579, 0x16u);
      }
    }

    else
    {
      if (objc_msgSend_type(v203, v225, v226) == 2)
      {
        v229 = objc_msgSend_inputs(v563, v227, v228);
        v232 = objc_msgSend_name(v203, v230, v231);
        v234 = objc_msgSend_objectForKeyedSubscript_(v229, v233, v232);

        v238 = objc_msgSend__ciImageForInput_(v563, v235, v234);
        if (!v238)
        {
          v239 = MEMORY[0x29EDBA0F8];
          v240 = objc_msgSend_name(v203, v236, v237);
          v242 = objc_msgSend_stringWithFormat_(v239, v241, @"input image for texture named %@ is nil", v240);
          v243 = v242;
          v246 = objc_msgSend_UTF8String(v243, v244, v245);

          v247 = uni_logger_api();
          if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
          {
            *v579 = 136315138;
            *&v579[4] = v246;
            _os_log_error_impl(&dword_295691000, v247, OS_LOG_TYPE_ERROR, "%s", v579, 0xCu);
          }

          v238 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v248, v249);
        }

        v250 = objc_msgSend_runInfo(v563, v236, v237);

        if (!v250)
        {
          if (CGRectIsNull(*v553))
          {
            objc_msgSend_extent(v238, v253, v254);
          }

          else
          {
            objc_msgSend_extent(v238, v253, v254);
            v635.origin.x = v273;
            v635.origin.y = v274;
            v635.size.width = v275;
            v635.size.height = v276;
            *&v255 = CGRectUnion(*v553, v635);
          }

          *v553 = v255;
          *&v553[8] = v256;
          *&v553[16] = v257;
          *&v553[24] = v258;
        }

        objc_msgSend_extent(v238, v251, v252);
        IsEmpty = CGRectIsEmpty(v630);
        v278 = *(*(&buf + 1) + 40);
        v279 = MEMORY[0x29EDB9198];
        objc_msgSend_extent(v238, v280, v281);
        v284 = objc_msgSend_vectorWithCGRect_(v279, v282, v283);
        objc_msgSend_addObject_(v278, v285, v284);

        v287 = v238;
        if (((IsEmpty | isKindOfClass) & 1) == 0)
        {
          v551 = objc_msgSend_imageByClampingToExtent(v238, v286, v238);
          v287 = v551;
        }

        objc_msgSend_setObject_atIndexedSubscript_(v558, v286, v287, v222);
        if (((IsEmpty | isKindOfClass) & 1) == 0)
        {
        }

        objc_msgSend_setObject_atIndexedSubscript_(v555, v288, &unk_2A1C94BA0, v222);
        objc_msgSend_setObject_atIndexedSubscript_(v555, v289, &unk_2A1C94BA0, v222 + 1);
        v292 = MEMORY[0x29EDB9198];
        if (IsEmpty)
        {
          objc_msgSend_vectorWithCGRect_(MEMORY[0x29EDB9198], v290, v291, 0.0, 0.0, 0.0, 0.0);
        }

        else
        {
          objc_msgSend_extent(v238, v290, v291);
          objc_msgSend_vectorWithCGRect_(v292, v295, v296);
        }
        v293 = ;
        objc_msgSend_setObject_atIndexedSubscript_(v558, v294, v293, v222 + 1);

        goto LABEL_108;
      }

      if (!objc_msgSend_type(v203, v227, v228) || objc_msgSend_type(v203, v259, v260) == 1)
      {
        v261 = objc_msgSend_inputs(v563, v259, v260);
        v264 = objc_msgSend_name(v203, v262, v263);
        v234 = objc_msgSend_objectForKeyedSubscript_(v261, v265, v264);

        if (!v234)
        {
          v268 = objc_msgSend_name(v203, v266, v267);
          isEqualToString = objc_msgSend_isEqualToString_(v268, v269, @"kernelScale");

          if (isEqualToString)
          {
            v234 = objc_msgSend_scale(v563, v271, v272);
          }

          else
          {
            v297 = objc_msgSend_name(v203, v271, v272);
            v299 = objc_msgSend_isEqualToString_(v297, v298, @"emulate_sRGB");

            if (!v299)
            {
              v478 = MEMORY[0x29EDBA0F8];
              v479 = objc_msgSend_name(v203, v300, v301);
              v482 = objc_msgSend_ck(v563, v480, v481);
              v484 = objc_msgSend_stringWithFormat_(v478, v483, @"Missing parameter for input named %@ for kernel %@ returning empty image.", v479, v482);;
              v485 = v484;
              objc_msgSend_UTF8String(v485, v486, v487);

              v355 = uni_logger_api();
              if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
              {
                sub_2956CED80();
              }

              goto LABEL_135;
            }

            v579[0] = 0;
            v234 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v300, v579, 1);
          }
        }

        if (objc_msgSend_type(v203, v266, v267))
        {
          if (objc_msgSend_type(v203, v302, v303) != 1)
          {
            goto LABEL_138;
          }

          v306 = objc_msgSend_threadgroupMemoryDataSize(v203, v304, v305);
          v309 = objc_msgSend_arrayLength(v203, v307, v308);
          v312 = objc_msgSend_threadgroupMemoryAlignment(v203, v310, v311);
          v315 = objc_msgSend_threadgroupMemoryAlignment(v203, v313, v314);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v318 = objc_msgSend_unsignedIntegerValue(v234, v316, v317);
            v321 = objc_msgSend_threadgroupMemoryAlignment(v203, v319, v320);
            v324 = objc_msgSend_threadgroupMemoryAlignment(v203, v322, v323);
            v325 = v318 + v321 - 1;
            v326 = -v324;
          }

          else
          {
            v325 = v312 + v309 * v306 - 1;
            v326 = -v315;
          }

          v332 = v325 & v326;
          v333 = uni_logger_render();
          if (os_log_type_enabled(v333, OS_LOG_TYPE_INFO))
          {
            *v579 = 136315394;
            *&v579[4] = "threadgroup memory size = ";
            *&v579[12] = 2048;
            *&v579[14] = v332;
            _os_log_impl(&dword_295691000, v333, OS_LOG_TYPE_INFO, "%s %ld", v579, 0x16u);
          }

          v330 = objc_msgSend_dataWithLength_(MEMORY[0x29EDB8DF8], v334, v332);
          goto LABEL_105;
        }

        if (objc_msgSend_bufferDataType(v203, v302, v303) == 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v330 = objc_msgSend__populateStruct_values_(v563, v329, v203, v234);
LABEL_105:
            v238 = v330;
LABEL_106:
            if (v238)
            {
              objc_msgSend_setObject_atIndexedSubscript_(v558, v331, v238, v222);
              objc_msgSend_setObject_atIndexedSubscript_(v555, v335, &unk_2A1C94BA0, v222);
LABEL_108:

              v201 = v559;
              v200 = v561;
              goto LABEL_109;
            }

LABEL_138:
            v369 = uni_logger_api();
            if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
            {
              v511 = objc_msgSend_name(v203, v370, v371);
              v512 = v511;
              v515 = objc_msgSend_UTF8String(v512, v513, v514);
              sub_2956CEDC8(v515, v579, v369, v511);
            }

LABEL_140:

            v354 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v372, v373);

            goto LABEL_192;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v330 = v234;
            goto LABEL_105;
          }

          v369 = uni_logger_api();
          if (!os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v518 = MEMORY[0x29EDBA0F8];
          v493 = objc_msgSend_name(v203, v516, v517);
          v495 = objc_msgSend_kernel(v563, v519, v520);
          v523 = objc_msgSend_ck(v495, v521, v522);
          v525 = objc_msgSend_stringWithFormat_(v518, v524, @"For argument %@ on kernel %@ we expect either NSData or a NSDictionary.", v493, v523);
          v526 = v525;
          v529 = objc_msgSend_UTF8String(v526, v527, v528);
          *v579 = 136315138;
          *&v579[4] = v529;
          _os_log_error_impl(&dword_295691000, v369, OS_LOG_TYPE_ERROR, "%s", v579, 0xCu);
        }

        else
        {
          v336 = objc_msgSend_bufferDataType(v203, v327, v328);
          if (isSupportedType(v336))
          {
            v238 = v234;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __assert_rtn("+[UniKernel generateCIImage:]", "UniKernel.m", 1983, "[object isKindOfClass:[NSData class]] || [object isKindOfClass:[NSNumber class]]");
              }
            }

            goto LABEL_106;
          }

          v369 = uni_logger_api();
          if (!os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v490 = MEMORY[0x29EDBA0F8];
          v491 = objc_msgSend_bufferDataType(v203, v488, v489);
          v493 = MTLDataTypeAsString(v491, v492);
          v495 = objc_msgSend_stringWithFormat_(v490, v494, @"Don't know how to set type %@", v493);
          v496 = v495;
          v499 = objc_msgSend_UTF8String(v496, v497, v498);
          *v579 = 136315138;
          *&v579[4] = v499;
          _os_log_error_impl(&dword_295691000, v369, OS_LOG_TYPE_ERROR, "%s", v579, 0xCu);
        }

        goto LABEL_140;
      }

      v361 = uni_logger_api();
      if (os_log_type_enabled(v361, OS_LOG_TYPE_ERROR))
      {
        sub_2956CED40();
      }
    }

    v360 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v374, v375);
    goto LABEL_144;
  }

  v355 = uni_logger_api();
  if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
  {
    v500 = MEMORY[0x29EDBA0F8];
    v501 = objc_msgSend_name(v203, v356, v357);
    v504 = objc_msgSend_allKeys(v566, v502, v503);
    v506 = objc_msgSend_stringWithFormat_(v500, v505, @"Unable to find matching Core Image kernel parameter for name %@.Available names are %@", v501, v504);
    v507 = v506;
    v510 = objc_msgSend_UTF8String(v507, v508, v509);
    *v579 = 136315138;
    *&v579[4] = v510;
    _os_log_error_impl(&dword_295691000, v355, OS_LOG_TYPE_ERROR, "%s", v579, 0xCu);
  }

LABEL_135:

  v360 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v358, v359);
LABEL_144:
  v354 = v360;
LABEL_192:

LABEL_193:
  _Block_object_dispose(&v606, 8);

  _Block_object_dispose(&buf, 8);

  return v354;
}

- (void)_setRunInfoBasedOnCoreImage
{
  v4 = objc_msgSend_runInfo(self, a2, v2);
  if (v4)
  {
LABEL_2:

    return;
  }

  v59 = objc_msgSend_kernel(self, v5, v6);
  v9 = objc_msgSend_ck(v59, v7, v8);
  if (!v9)
  {
    v4 = v59;
    goto LABEL_2;
  }

  v12 = v9;
  v13 = objc_msgSend_kernel(self, v10, v11);
  v16 = objc_msgSend_mk(v13, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_kernel(self, v17, v18);
    v22 = objc_msgSend_ck(v19, v20, v21);
    objc_msgSend_outputGroupSize(v22, v23, v24);
    v26 = v25;
    v28 = v27;

    objc_msgSend__findOutputRect(self, v29, v30);
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
    if (!CGRectIsNull(v63))
    {
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      if (!CGRectIsEmpty(v64))
      {
        v37 = objc_msgSend_kernel(self, v35, v36);
        v40 = objc_msgSend_mk(v37, v38, v39);

        v43 = objc_msgSend_threadExecutionWidth(v40, v41, v42);
        v46 = objc_msgSend_maxTotalThreadsPerThreadgroup(v40, v44, v45);
        v49 = v46 / objc_msgSend_threadExecutionWidth(v40, v47, v48);
        v50 = [UniRunInfo alloc];
        v61[0] = (width / v26);
        v61[1] = (height / v28);
        v61[2] = 1;
        v60[0] = v43;
        v60[1] = v49;
        v60[2] = 1;
        v52 = objc_msgSend_initWithGridSize_threadsPerThreadGroup_(v50, v51, v61, v60);
        objc_msgSend_setRunInfo_(self, v53, v52);

        v56 = objc_msgSend_runInfo(self, v54, v55);
        objc_msgSend_setCoreImageOutputExtent_(v56, v57, v58, x, y, width, height);
      }
    }
  }
}

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  if (!v7)
  {
    sub_2956CEF00();
  }

  v10 = v7;
  objc_msgSend__replace_sRGBTexturesIfNeeded(v7, v8, v9);
  objc_msgSend_setRunInfo_(v10, v11, v4);
  objc_msgSend__setRunInfoBasedOnCoreImage(v10, v12, v13);
  v16 = objc_msgSend_outputImageArray(v10, v14, v15);
  if (!v16 || (v19 = v16, !objc_msgSend_count(v16, v17, v18)) || (objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    sub_2956CEED4();
  }

  v24 = objc_msgSend_ck(v10, v22, v23);
  if (v24 && (v25 = v24, v26 = objc_opt_class(), objc_msgSend_generateCIImage_(v26, v27, v10), v28 = objc_claimAutoreleasedReturnValue(), v25, v28))
  {
    v30 = objc_msgSend_imageWithCIImage_(UniImage, v29, v28);
    objc_msgSend_setKernel_(v30, v31, v10);
  }

  else
  {
    v33 = [UniImage alloc];
    v30 = objc_msgSend_initWithKernel_(v33, v34, v10);
    v28 = 0;
  }

  if (!v30)
  {
    sub_2956CEEA8();
  }

  v35 = objc_msgSend_objectAtIndexedSubscript_(v19, v32, 0);
  objc_msgSend_setTexture_(v30, v36, v35);

  v39 = objc_msgSend_texture(v30, v37, v38);
  if (!v39)
  {
    goto LABEL_20;
  }

  v42 = v39;
  v43 = objc_msgSend_texture(v30, v40, v41);
  if (objc_msgSend_conformsToProtocol_(v43, v44, &unk_2A1CA0A70))
  {
    goto LABEL_14;
  }

  v47 = objc_msgSend_texture(v30, v45, v46);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_20:
    sub_2956CEE7C();
  }

LABEL_14:

  return v30;
}

- (void)setValues:(id)a3
{
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v21, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(v4, v7, v11);
        if (v13)
        {
          if (objc_msgSend_isEqualToString_(v11, v12, @"_renderContext"))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setContext_(self, v14, v13);
              goto LABEL_17;
            }
          }

          if (objc_msgSend_isEqualToString_(v11, v14, @"_kernelScale"))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setScale_(self, v15, v13);
              goto LABEL_17;
            }
          }

          v17 = objc_msgSend_inputs(self, v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v13, v11);
        }

        else
        {
          v17 = uni_logger_api();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_2956CEF2C(v19, v11, &v20, v17);
          }
        }

LABEL_17:
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v22, v21, 16);
    }

    while (v8);
  }
}

- (id)imageByApplyingParameters:(id)a3 runInfo:(id)a4
{
  v6 = a4;
  objc_msgSend_setValues_(self, v7, a3);
  v9 = objc_msgSend_outputImage_(self, v8, v6);

  return v9;
}

- (id)imageByApplyingParameters:(id)a3 extent:(id)a4
{
  v6 = a4;
  objc_msgSend_setValues_(self, v7, a3);
  v9 = objc_msgSend_outputImageOfSize_(self, v8, v6);

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p ", v4, self);
  v9 = objc_msgSend_mk(self, v7, v8);

  v12 = 0x29EDBA000uLL;
  v81 = self;
  if (v9)
  {
    v13 = MEMORY[0x29EDBA0F8];
    v14 = objc_msgSend_mk(self, v10, v11);
    v17 = objc_msgSend_label(v14, v15, v16);
    v19 = objc_msgSend_stringWithFormat_(v13, v18, @"MTL pipeline = %@", v17);
    objc_msgSend_appendString_(v6, v20, v19);

    self = v81;
  }

  v21 = objc_msgSend_kernel(self, v10, v11);
  v24 = objc_msgSend_constants(v21, v22, v23);

  if (v24)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v25, @"\n\t<constants = \n\t%@\n\t>", v24);
    objc_msgSend_appendString_(v6, v27, v26);
  }

  v80 = v24;
  objc_msgSend_appendString_(v6, v25, @"\n\t<inputs = \n");
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->inputs;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v84, v83, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v85;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v85 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v84 + 1) + 8 * i);
        v35 = objc_msgSend_objectForKeyedSubscript_(self->inputs, v30, v34);
        v37 = objc_msgSend_stringWithFormat_(*(v12 + 248), v36, @"\t\t%@ = ", v34);
        objc_msgSend_appendString_(v6, v38, v37);

        if (objc_msgSend_conformsToProtocol_(v35, v39, &unk_2A1CA0A70))
        {
          v40 = v35;
        }

        else
        {
          v40 = 0;
        }

        v42 = v35;
        if (v40)
        {
          if (!v35)
          {
            goto LABEL_28;
          }

LABEL_15:
          if (v42 && objc_msgSend_conformsToProtocol_(v42, v41, &unk_2A1CA0A70))
          {
            v43 = shortTextureDescription(v42);
            objc_msgSend_appendString_(v6, v44, v43);

            self = v81;
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = objc_msgSend_kernel(v35, v41, v46);
          v50 = objc_msgSend_mk(v47, v48, v49);
          if (v50)
          {
            v53 = v50;
            v54 = objc_msgSend_mk(v47, v51, v52);
            v57 = objc_msgSend_label(v54, v55, v56);

            if (v57)
            {
              v58 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v51, @"(%@) ", v57);
              objc_msgSend_appendString_(v6, v59, v58);
            }
          }

          v42 = objc_msgSend_texture(v35, v51, v52);

          self = v81;
          v12 = 0x29EDBA000;
          if (!v35)
          {
LABEL_28:
            objc_msgSend_appendString_(v6, v41, @"nil\n");
            goto LABEL_31;
          }

          goto LABEL_15;
        }

        v42 = 0;
        if (!v35)
        {
          goto LABEL_28;
        }

LABEL_25:
        v60 = objc_msgSend__mtlTextureForImage_(UniKernel, v41, v35);
        v63 = v60;
        if (v60 && objc_msgSend_conformsToProtocol_(v60, v61, &unk_2A1CA0A70))
        {
          v64 = shortTextureDescription(v63);
        }

        else
        {
          v64 = objc_msgSend_description(v35, v61, v62);
        }

        v66 = v64;
        objc_msgSend_appendString_(v6, v65, v64);

        v12 = 0x29EDBA000uLL;
LABEL_31:
        objc_msgSend_appendString_(v6, v45, @"\n");
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v84, v83, 16);
    }

    while (v31);
  }

  v67 = self;
  v68 = *(v12 + 248);
  v73 = objc_msgSend_runInfo(v67, v69, v70);
  if (v73)
  {
    v74 = objc_msgSend_runInfo(v67, v71, v72);
    objc_msgSend_stringWithFormat_(v68, v75, @"\trunInfo = %@\n", v74);
  }

  else
  {
    v74 = @"(Unspecified)";
    objc_msgSend_stringWithFormat_(v68, v71, @"\trunInfo = %@\n", @"(Unspecified)");
  }
  v76 = ;
  objc_msgSend_appendString_(v6, v77, v76);

  if (v73)
  {
  }

  objc_msgSend_appendString_(v6, v78, @"\t>\n");

  return v6;
}

@end