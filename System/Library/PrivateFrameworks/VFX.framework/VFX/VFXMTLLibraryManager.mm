@interface VFXMTLLibraryManager
+ (id)hashCodeForSource:(id)source macros:(id)macros;
- (VFXMTLLibraryManager)initWithDevice:(id)device;
- (id)defaultLibrary;
- (id)libraryForFile:(id)file;
- (id)libraryForSourceCode:(id)code options:(id)options;
- (void)clearCompiledLibraries;
- (void)dealloc;
- (void)libraryForProgramDesc:(id *)desc resourceManager:(id)manager completionHandler:(id)handler;
@end

@implementation VFXMTLLibraryManager

- (VFXMTLLibraryManager)initWithDevice:(id)device
{
  v86 = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = VFXMTLLibraryManager;
  v4 = [(VFXMTLLibraryManager *)&v84 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = device;
    v6 = MEMORY[0x1E696AAE8];
    v7 = objc_opt_class();
    v10 = objc_msgSend_bundleForClass_(v6, v8, v7, v9);
    v12 = objc_msgSend_pathForResource_ofType_(v10, v11, @"default", @"metallib");
    v13 = [VFXMTLLibrary alloc];
    v5->_frameworkLibrary = objc_msgSend_initWithPath_manager_(v13, v14, v12, v5);
    v5->_availableLibraries = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v15, v16, v17);
    v5->_availableCompiledLibraries = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v5->_availableCompiledLibrariesLock._os_unfair_lock_opaque = 0;
    v5->_deviceQueue = dispatch_queue_create("com.apple.vfx.device", 0);
    v5->_shaderCompilationGroup = dispatch_group_create();
    v21 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v18, v19, v20);
    v23 = objc_msgSend_URLForResource_withExtension_(v21, v22, @"vfx", @"metallib");
    if (!v23)
    {
      v23 = sub_1AF28A400();
      if (!v23)
      {
        v27 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v24, v25, v26);
        v23 = objc_msgSend_URLForResource_withExtension_(v27, v28, @"default", @"metallib");
      }
    }

    v29 = v23;
    v83 = 0;
    v30 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v25, v26);
    v34 = objc_msgSend_path(v29, v31, v32, v33);
    if (objc_msgSend_fileExistsAtPath_(v30, v35, v34, v36))
    {
      v38 = objc_msgSend_newLibraryWithURL_error_(v5->_device, v37, v29, &v83);
      if (v38)
      {
        v39 = v38;
        v40 = CFHash(v29);
        v5->_commonProfileCacheLibrary = v39;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1AF1FBBBC;
        aBlock[3] = &unk_1E7A7CA90;
        aBlock[4] = v40;
        v5->_commonProfileCacheLibraryHasherBlock = _Block_copy(aBlock);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = sub_1AF1FBBC4;
        v81[3] = &unk_1E7A7CAB8;
        v81[4] = v39;
        v5->_commonProfileCacheLibraryProviderBlock = _Block_copy(v81);
        v44 = objc_msgSend_functionNames(v5->_commonProfileCacheLibrary, v41, v42, v43);
        v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v44;
        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v77, v85, 16);
        if (v47)
        {
          v51 = v47;
          v52 = *v78;
          v53 = v5;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v78 != v52)
              {
                objc_enumerationMutation(obj);
              }

              v55 = *(*(&v77 + 1) + 8 * i);
              if (objc_msgSend_hasPrefix_(v55, v48, @"vfx_", v50) && ((objc_msgSend_hasSuffix_(v55, v56, @"commonprofile_vert", v57) & 1) != 0 || objc_msgSend_hasSuffix_(v55, v56, @"commonprofile_frag", v57)))
              {
                v58 = objc_msgSend_newFunctionWithName_(v5->_commonProfileCacheLibrary, v56, v55, v57);
                objc_msgSend_setObject_forKeyedSubscript_(v45, v59, v58, v55);

                v5 = v53;
              }

              else if ((objc_msgSend_hasPrefix_(v55, v56, @"commonprofile_vert", v57) & 1) != 0 || objc_msgSend_hasPrefix_(v55, v48, @"commonprofile_frag", v50))
              {
                v60 = objc_msgSend_newFunctionWithName_(v5->_commonProfileCacheLibrary, v48, v55, v50);
                objc_msgSend_setObject_forKeyedSubscript_(v45, v61, v60, v55);

                v5 = v53;
                v53->_legacyShaderCache = 1;
              }
            }

            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v77, v85, 16);
          }

          while (v51);
        }

        if (objc_msgSend_count(v45, v48, v49, v50))
        {
          v5->_commonProfilePrecompiledFunctions = objc_msgSend_copy(v45, v62, v63, v64);
        }

        else
        {
          commonProfileCacheLibrary = v5->_commonProfileCacheLibrary;
          if (commonProfileCacheLibrary)
          {
            CFRelease(commonProfileCacheLibrary);
            v5->_commonProfileCacheLibrary = 0;
          }

          commonProfileCacheLibraryHasherBlock = v5->_commonProfileCacheLibraryHasherBlock;
          if (commonProfileCacheLibraryHasherBlock)
          {
            CFRelease(commonProfileCacheLibraryHasherBlock);
            v5->_commonProfileCacheLibraryHasherBlock = 0;
          }

          commonProfileCacheLibraryProviderBlock = v5->_commonProfileCacheLibraryProviderBlock;
          if (commonProfileCacheLibraryProviderBlock)
          {
            CFRelease(commonProfileCacheLibraryProviderBlock);
            v5->_commonProfileCacheLibraryProviderBlock = 0;
          }
        }
      }

      else
      {
        v65 = sub_1AF0D5194();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE5B9C(&v83, v65, v66, v67, v68, v69, v70, v71);
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_availableCompiledLibraries);

  dispatch_release(self->_shaderCompilationGroup);
  dispatch_release(self->_deviceQueue);
  v3.receiver = self;
  v3.super_class = VFXMTLLibraryManager;
  [(VFXMTLLibraryManager *)&v3 dealloc];
}

+ (id)hashCodeForSource:(id)source macros:(id)macros
{
  v50 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  sub_1AF148DA8(source, &c);
  v9 = objc_msgSend_allKeys(macros, v6, v7, v8);
  v12 = objc_msgSend_sortedArrayUsingSelector_(v9, v10, sel_compare_, v11);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v41, v49, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = objc_msgSend_objectForKeyedSubscript_(macros, v15, v20, v16);
        sub_1AF148DA8(v20, &c);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_1AF148DA8(v21, &c);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            data[0] = objc_msgSend_intValue(v21, v22, v23, v24);
            CC_SHA256_Update(&c, data, 4u);
          }

          else
          {
            v25 = sub_1AF0D5194();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE5C0C(&v39, v40, v25);
            }
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v41, v49, 16);
    }

    while (v17);
  }

  CC_SHA256_Final(md, &c);
  v27 = 0;
  v28 = data;
  v29.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v29.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v30.i64[0] = 0x3737373737373737;
  v30.i64[1] = 0x3737373737373737;
  v31.i64[0] = 0x3030303030303030;
  v31.i64[1] = 0x3030303030303030;
  v32.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v32.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v33.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v33.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v34 = *&md[v27];
    v35.i64[0] = 0x3737373737373737;
    v35.i64[1] = 0x3737373737373737;
    v36.i64[0] = 0x3030303030303030;
    v36.i64[1] = 0x3030303030303030;
    v51.val[0] = vbslq_s8(vcgtq_u8(v29, v34), vsraq_n_u8(v36, v34, 4uLL), vsraq_n_u8(v35, v34, 4uLL));
    v37 = vandq_s8(v34, v32);
    v51.val[1] = vbslq_s8(vcgtq_u8(v33, v37), vorrq_s8(v37, v31), vaddq_s8(v37, v30));
    vst2q_s8(v28, v51);
    v28 += 32;
    v27 += 16;
  }

  while (v27 != 32);
  v47 = 0;
  return objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v26, data, 1);
}

- (void)clearCompiledLibraries
{
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  CFDictionaryRemoveAllValues(self->_availableCompiledLibraries);

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
}

- (id)defaultLibrary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1FBFAC;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  if (qword_1EB658688 != -1)
  {
    dispatch_once(&qword_1EB658688, block);
  }

  return objc_msgSend_library(self->_defaultLibrary, a2, v2, v3);
}

- (id)libraryForFile:(id)file
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1AF1FC110;
  v11 = sub_1AF1FC120;
  v12 = 0;
  deviceQueue = self->_deviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1FC12C;
  block[3] = &unk_1E7A7CAE0;
  block[4] = self;
  block[5] = file;
  block[6] = &v7;
  dispatch_sync(deviceQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)libraryForSourceCode:(id)code options:(id)options
{
  v7 = objc_msgSend_preprocessorMacros(options, a2, code, options);
  v9 = objc_msgSend_hashCodeForSource_macros_(VFXMTLLibraryManager, v8, code, v7);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v9);
  if (!Value)
  {
    v21 = 0;
    ++self->__engineStats->onlineShaderCount;
    v11 = CACurrentMediaTime();
    prof_beginFlame("newLibraryWithSource", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLLibraryManager.mm", 513);
    Value = objc_msgSend_newLibraryWithSource_options_error_(self->_device, v12, code, options, &v21);
    self->__engineStats->onlineShaderCompilationTime = CACurrentMediaTime() - v11 + self->__engineStats->onlineShaderCompilationTime;
    prof_endFlame();
    if (Value)
    {
      CFDictionarySetValue(self->_availableCompiledLibraries, v9, Value);
    }

    else
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5C4C(&v21, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  return Value;
}

- (void)libraryForProgramDesc:(id *)desc resourceManager:(id)manager completionHandler:(id)handler
{
  v158 = *MEMORY[0x1E69E9840];
  var1 = desc->var1;
  v10 = sub_1AF1D5DF4(var1);
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, self->_device);
    if (v11)
    {
      v12 = *(handler + 2);
      commonProfileCacheLibrary = v11;
LABEL_14:
      handlerCopy2 = handler;
      goto LABEL_15;
    }
  }

  v14 = sub_1AF1D5AC4(var1);
  if (!v14)
  {
    if (sub_1AF1D5DFC(desc->var1))
    {
      v24 = objc_msgSend_defaultLibrary(self, v21, v22, v23);
    }

    else
    {
      v24 = objc_msgSend_frameworkLibrary(self, v21, v22, v23);
    }

    commonProfileCacheLibrary = v24;
    goto LABEL_13;
  }

  v15 = v14;
  v16 = sub_1AF1D5B54(var1);
  v18 = objc_msgSend_hashCodeForSource_macros_(VFXMTLLibraryManager, v17, v15, v16);
  os_unfair_lock_lock(&self->_availableCompiledLibrariesLock);
  Value = CFDictionaryGetValue(self->_availableCompiledLibraries, v18);
  os_unfair_lock_unlock(&self->_availableCompiledLibrariesLock);
  if (Value)
  {
    v12 = *(handler + 2);
    handlerCopy2 = handler;
    commonProfileCacheLibrary = Value;
LABEL_15:

    v12(handlerCopy2, commonProfileCacheLibrary, 0);
    return;
  }

  v129 = v16;
  v131 = v18;
  v28 = sub_1AF333168();
  v130 = var1;
  managerCopy = manager;
  if (v28)
  {
    v29 = !sub_1AFDE7A50(manager);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_msgSend_count(self->_commonProfilePrecompiledFunctions, v25, v26, v27);
  if (((v30 == 0) & ~v28) != 0)
  {
    v35 = 0;
    cf = 0;
LABEL_28:
    v51 = v130;
    goto LABEL_31;
  }

  v34 = v30;
  handlerCopy3 = handler;
  if (self->_legacyShaderCache || v29)
  {
    v35 = objc_msgSend_stringByAppendingString_(@"commonprofile_vert", v31, v18, v33);
    cf = objc_msgSend_stringByAppendingString_(@"commonprofile_frag", v36, v18, v37);
  }

  else
  {
    v38 = objc_alloc(MEMORY[0x1E696AEC0]);
    v41 = objc_msgSend_initWithFormat_(v38, v39, @"vfx_%@::", v40, v18);
    v35 = objc_msgSend_stringByAppendingString_(v41, v42, @"commonprofile_vert", v43);
    v46 = v29;
    v47 = objc_msgSend_stringByAppendingString_(v41, v44, @"commonprofile_frag", v45);

    sub_1AF1D5A3C(desc->var1, 0, v35);
    cf = v47;
    v48 = v47;
    v29 = v46;
    sub_1AF1D5A3C(desc->var1, 1, v48);
  }

  handler = handlerCopy3;
  if (!v34)
  {
    goto LABEL_28;
  }

  if (objc_msgSend_objectForKeyedSubscript_(self->_commonProfilePrecompiledFunctions, v31, v35, v33) && objc_msgSend_objectForKeyedSubscript_(self->_commonProfilePrecompiledFunctions, v49, cf, v50))
  {
    sub_1AF1D5A3C(v130, 0, v35);
    sub_1AF1D5A3C(v130, 1, cf);
    sub_1AF1D5998(v130, self->_commonProfileCacheLibraryHasherBlock, self->_commonProfileCacheLibraryProviderBlock);
    commonProfileCacheLibrary = self->_commonProfileCacheLibrary;
LABEL_13:
    v12 = *(handler + 2);
    goto LABEL_14;
  }

  v52 = sub_1AF0D5194();
  v51 = v130;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE5CBC();
  }

LABEL_31:
  if (v28)
  {
    if (v29)
    {
      v53 = sub_1AF28A3A0();
      if (v53)
      {
        v54 = v53;
        if (qword_1EB658698 != -1)
        {
          sub_1AFDE5D30();
        }

        CFRetain(v51);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1AF1FCB9C;
        block[3] = &unk_1E7A7CB58;
        block[4] = v54;
        block[5] = v18;
        block[6] = v35;
        block[7] = cf;
        block[8] = v51;
        dispatch_async(qword_1EB658690, block);
      }
    }

    else
    {
      handlerCopy4 = handler;
      v55 = objc_msgSend_mutableCopy(v15, v31, v32, v33);
      v58 = objc_msgSend_rangeOfString_(v55, v56, @"#pragma mark - Namespace Begin", v57);
      if (v58)
      {
        v61 = v58;
        v62 = v59;
        v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v59, @"namespace vfx_%@ {", v60, v18);
        objc_msgSend_replaceCharactersInRange_withString_(v55, v64, v61, v62, v63);
      }

      cfa = self;
      v65 = objc_msgSend_rangeOfString_options_(v55, v59, @"#pragma mark - Namespace End", 4);
      if (v65)
      {
        objc_msgSend_replaceCharactersInRange_withString_(v55, v66, v65, v66, @"} //namespace");
      }

      v67 = sub_1AF1D5B54(v51);
      v71 = objc_msgSend_allKeys(v67, v68, v69, v70);
      v74 = objc_msgSend_sortedArrayUsingSelector_(v71, v72, sel_compare_, v73);
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v78 = objc_msgSend_reverseObjectEnumerator(v74, v75, v76, v77);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &v151, v157, 16);
      if (v80)
      {
        v84 = v80;
        v85 = *v152;
        do
        {
          for (i = 0; i != v84; ++i)
          {
            if (*v152 != v85)
            {
              objc_enumerationMutation(v78);
            }

            v87 = *(*(&v151 + 1) + 8 * i);
            v88 = objc_msgSend_objectForKeyedSubscript_(v67, v81, v87, v83);
            v91 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v89, @"#define %@ %@\n", v90, v87, v88);
            objc_msgSend_insertString_atIndex_(v55, v92, v91, 0);
            v95 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v93, @"#undef %@\n", v94, v87);
            objc_msgSend_appendString_(v55, v96, v95, v97);
          }

          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v81, &v151, v157, 16);
        }

        while (v84);
      }

      v15 = objc_msgSend_copy(v55, v81, v82, v83);

      sub_1AFDE7A64(managerCopy, v15, v18);
      handler = handlerCopy4;
      self = cfa;
      v51 = v130;
    }
  }

  v98 = sub_1AF15B294(v51);
  v99 = sub_1AF1F32F0();
  v100 = sub_1AF1D5BE4(v51);
  if (v99 <= v100)
  {
    v99 = v100;
  }

  v101 = objc_alloc_init(MEMORY[0x1E6974020]);
  objc_msgSend_setPreprocessorMacros_(v101, v102, v129, v103);
  objc_msgSend_setLanguageVersion_(v101, v104, v99, v105);
  objc_msgSend_setAdditionalCompilerArguments_(v101, v106, @" -w ", v107);
  v108 = sub_1AF0D5194();
  v109 = os_signpost_id_generate(v108);
  v110 = sub_1AF0D5194();
  if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v112 = v110;
    if (os_signpost_enabled(v110))
    {
      *buf = 67109120;
      *&buf[4] = v51;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v112, OS_SIGNPOST_INTERVAL_BEGIN, v109, "CompileShader", "programID=%d", buf, 8u);
    }
  }

  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v135 = sub_1AF1FCE58;
  v136 = &unk_1E7A7CB80;
  v113 = *&desc->var14;
  v145 = *&desc->var11;
  v146 = v113;
  v147 = *&desc->var15.var1;
  v114 = *&desc->var2;
  v141 = *&desc->var0;
  v142 = v114;
  v115 = *&desc->var4;
  v144 = *&desc->var6;
  v143 = v115;
  v137 = v15;
  selfCopy = self;
  v139 = v131;
  handlerCopy5 = handler;
  v148 = v98;
  v149 = v109;
  v150 = v51;
  ++self->__engineStats->onlineShaderCount;
  var13 = desc->var13;
  p_var13 = &desc->var13;
  v116 = var13;
  if (var13)
  {
    if (v116 == 2)
    {
      device = self->_device;
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = sub_1AF1FD0BC;
      v132[3] = &unk_1E7A7CBD0;
      v132[4] = self;
      v132[5] = v134;
      objc_msgSend_newLibraryWithSource_options_completionHandler_(device, v111, v15, v101, v132);
    }

    else if (v116 == 1)
    {
      dispatch_group_enter(self->_shaderCompilationGroup);
      v119 = self->_device;
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = sub_1AF1FCFF4;
      v133[3] = &unk_1E7A7CBD0;
      v133[4] = self;
      v133[5] = v134;
      objc_msgSend_newLibraryWithSource_options_completionHandler_(v119, v120, v15, v101, v133);
    }

    else
    {
      v123 = sub_1AF0D5194();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5D58(p_var13, v123);
      }
    }
  }

  else
  {
    *buf = 0;
    v122 = objc_msgSend_newLibraryWithSource_options_error_(self->_device, v111, v15, v101, buf);
    v135(v134, v122, *buf);
  }
}

@end