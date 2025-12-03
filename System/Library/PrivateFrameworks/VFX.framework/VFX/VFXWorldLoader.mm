@interface VFXWorldLoader
+ (id)loader;
+ (void)transferWorld:(id)world to:(id)to;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (NSUUID)documentUUID;
- (VFXWorldLoader)init;
- (id)_loadURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadNonNativeFormatAt:(id)at options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadWorldDescriptionAt:(id)at options:(id)options compressed:(BOOL)compressed statusHandler:(id)handler error:(id *)error;
- (id)loadWorldDescriptionFromData:(id)data options:(id)options compressed:(BOOL)compressed sourceURL:(id)l statusHandler:(id)handler error:(id *)error;
- (id)loadWorldFromData:(id)data options:(id)options statusHandler:(id)handler error:(id *)error;
- (id)loadWorldFromURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error;
- (void)dealloc;
@end

@implementation VFXWorldLoader

- (VFXWorldLoader)init
{
  v3.receiver = self;
  v3.super_class = VFXWorldLoader;
  return [(VFXWorldLoader *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXWorldLoader;
  [(VFXWorldLoader *)&v3 dealloc];
}

+ (id)loader
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)loadWorldFromURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error
{
  v11 = sub_1AF0D5194();
  v12 = os_signpost_id_generate(v11);
  v13 = sub_1AF0D5194();
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v13;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadWorld", &unk_1AFF70A1D, buf, 2u);
    }
  }

  URL_options_statusHandler_error = objc_msgSend__loadURL_options_statusHandler_error_(self, v14, l, options, handler, error);
  v17 = sub_1AF0D5194();
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v17))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v18, OS_SIGNPOST_INTERVAL_END, v12, "LoadWorld", &unk_1AFF70A1D, v20, 2u);
    }
  }

  return URL_options_statusHandler_error;
}

- (id)_loadURL:(id)l options:(id)options statusHandler:(id)handler error:(id *)error
{
  if (options)
  {
    v11 = objc_msgSend_mutableCopy(options, a2, l, options);
  }

  else
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, l, 0);
  }

  v15 = v11;
  v16 = objc_msgSend_pathExtension(l, v12, v13, v14);
  v20 = objc_msgSend_lowercaseString(v16, v17, v18, v19);
  if ((objc_msgSend_isEqualToString_(v20, v21, @"vfxproj", v22) & 1) != 0 || objc_msgSend_isEqualToString_(v20, v23, @"vfx", v25))
  {
    objc_msgSend_begin(VFXTransaction, v23, v24, v25);
    v28 = objc_msgSend_URLByAppendingPathComponent_(l, v26, @"world.plist", v27);
    WorldDescriptionAt_options_compressed_statusHandler_error = objc_msgSend_loadWorldDescriptionAt_options_compressed_statusHandler_error_(self, v29, v28, v15, 0, handler, error);
    if (!WorldDescriptionAt_options_compressed_statusHandler_error)
    {
      v34 = sub_1AF0D5194();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v34, OS_LOG_TYPE_DEFAULT, "Warning: loading VFX1 file format", buf, 2u);
      }
    }

    v35 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31, v32);
    v38 = objc_msgSend_objectForKeyedSubscript_(options, v36, @"VFXWorldLoaderDisableVFXCoreSupport", v37);
    v45 = objc_msgSend_BOOLValue(v38, v39, v40, v41);
    if ((v45 & 1) == 0 && (objc_msgSend_loadCoreEntityManagerFromURL_options_infoOut_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v42, l, v15, v35, error) & 1) == 0)
    {
      goto LABEL_22;
    }

    v46 = objc_msgSend_defaultRenderGraph(WorldDescriptionAt_options_compressed_statusHandler_error, v42, v43, v44);
    v49 = objc_msgSend_objectForKeyedSubscript_(v35, v47, @"serializationContext", v48);
    objc_msgSend_finishLoadingWithSerializationContext_(v46, v50, v49, v51);
    v55 = objc_msgSend_assets(WorldDescriptionAt_options_compressed_statusHandler_error, v52, v53, v54);
    v59 = objc_msgSend_rootNode(v55, v56, v57, v58);
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = sub_1AF34F4C4;
    v106[3] = &unk_1E7A7F3C0;
    v106[4] = v35;
    objc_msgSend_enumerateHierarchyUsingBlock_(v59, v60, v106, v61);
    if (v45)
    {
      objc_msgSend_commit(VFXTransaction, v62, v63, v64);
LABEL_13:
      v67 = objc_msgSend_objectForKeyedSubscript_(v35, v65, @"version", v66);
      self->_version = objc_msgSend_intValue(v67, v68, v69, v70);
      self->_documentUUID = objc_msgSend_objectForKeyedSubscript_(v35, v71, @"documentUUID", v72);
      self->_warnings = objc_msgSend_objectForKeyedSubscript_(v35, v73, @"warnings", v74);
      v77 = objc_msgSend_objectForKeyedSubscript_(v35, v75, @"precompiled", v76);
      self->_precompiled = objc_msgSend_BOOLValue(v77, v78, v79, v80);
      if (!error || !*error)
      {
        return WorldDescriptionAt_options_compressed_statusHandler_error;
      }

      v81 = sub_1AF0D5194();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFA20C(error, v81);
      }

      return 0;
    }

    objc_msgSend_resolveVFXCoreAndTagReferences(WorldDescriptionAt_options_compressed_statusHandler_error, v62, v63, v64);
    if (objc_msgSend_migrateCoreEntityManagerWithInfo_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v82, v35, error))
    {
      objc_msgSend_replicateToRuntimeAndStartReplicationWithOptions_(WorldDescriptionAt_options_compressed_statusHandler_error, v42, options, v44);
      v85 = objc_msgSend_objectForKeyedSubscript_(options, v83, @"VFXWorldLoaderCompileGraphsCallback", v84);
      if (v85)
      {
        (*(v85 + 16))(v85, WorldDescriptionAt_options_compressed_statusHandler_error);
      }

      v87 = objc_msgSend_initializeCoreEntityManagerWithInfo_error_(WorldDescriptionAt_options_compressed_statusHandler_error, v86, v35, error);
      objc_msgSend_commit(VFXTransaction, v88, v89, v90);
      if (v87)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_22:
      objc_msgSend_commit(VFXTransaction, v42, v43, v44);
    }

    return 0;
  }

  v91 = objc_msgSend_valueForKey_(options, v23, @"kSceneSourceFormat", v25);
  if (objc_msgSend_isEqualToString_(v20, v92, @"vfx-world", v93))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v91, v94, @"vfx-world", v95);
  }

  if (objc_msgSend_isEqualToString_(v20, v94, @"vfxz-world", v95))
  {
    LOBYTE(v99) = 1;
  }

  else
  {
    v99 = objc_msgSend_isEqualToString_(v91, v97, @"vfxz-world", v98);
    if (((isEqualToString | v99) & 1) == 0)
    {
      if (!objc_msgSend_isEqualToString_(v20, v97, @"plist", v100))
      {
        goto LABEL_35;
      }

      LOBYTE(v99) = 0;
    }
  }

  v101 = objc_msgSend_loadWorldDescriptionAt_options_compressed_statusHandler_error_(self, v97, l, options, v99 & 1, handler, error);
  if (v101)
  {
    WorldDescriptionAt_options_compressed_statusHandler_error = v101;
    objc_msgSend_resolveVFXCoreAndTagReferences(v101, v102, v103, v104);
    return WorldDescriptionAt_options_compressed_statusHandler_error;
  }

LABEL_35:

  return MEMORY[0x1EEE66B58](self, sel_loadNonNativeFormatAt_options_statusHandler_error_, l, options);
}

- (id)loadWorldFromData:(id)data options:(id)options statusHandler:(id)handler error:(id *)error
{
  v11 = sub_1AF0D5194();
  v12 = os_signpost_id_generate(v11);
  v13 = sub_1AF0D5194();
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v13;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoadWorld", &unk_1AFF70A1D, buf, 2u);
    }
  }

  WorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error = objc_msgSend_loadWorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error_(self, v14, data, options, 0, 0, handler, error);
  v17 = sub_1AF0D5194();
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v17))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v18, OS_SIGNPOST_INTERVAL_END, v12, "LoadWorld", &unk_1AFF70A1D, v20, 2u);
    }
  }

  return WorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error;
}

- (id)loadNonNativeFormatAt:(id)at options:(id)options statusHandler:(id)handler error:(id *)error
{
  v10 = [VFXWorld alloc];
  v13 = objc_msgSend_initWithOptions_(v10, v11, options, v12);
  v14 = MEMORY[0x1E6974B48];
  v18 = objc_msgSend_pathExtension(at, v15, v16, v17);
  LODWORD(v14) = objc_msgSend_canImportFileExtension_(v14, v19, v18, v20);
  objc_msgSend_begin(VFXTransaction, v21, v22, v23);
  objc_msgSend_setImmediateMode_(VFXTransaction, v24, 1, v25);
  if (v14)
  {
    v27 = sub_1AF2ED7AC(v13, at, options, handler);
    objc_msgSend_commit(VFXTransaction, v28, v29, v30);
    if (v27)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v41 = 0;
    objc_msgSend_loadSCN_options_error_(v13, v26, at, options, &v41);
    if (!v41)
    {
      objc_msgSend_commit(VFXTransaction, v31, v32, v33);
LABEL_12:
      sub_1AF1D7C54(v13, options, 0, -1);
      v38 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      *error = v41;
    }

    v34 = sub_1AF0D5194();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA288(at, &v41, v34);
    }

    objc_msgSend_commit(VFXTransaction, v35, v36, v37);
  }

  v38 = 0;
LABEL_13:
  v39 = v13;
  return v38;
}

- (id)loadWorldDescriptionAt:(id)at options:(id)options compressed:(BOOL)compressed statusHandler:(id)handler error:(id *)error
{
  compressedCopy = compressed;
  v13 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], a2, at, 0, error);
  if (v13)
  {

    return objc_msgSend_loadWorldDescriptionFromData_options_compressed_sourceURL_statusHandler_error_(self, v14, v13, options, compressedCopy, at, handler, error);
  }

  else
  {
    if (handler)
    {
      v17 = 1;
      if (error)
      {
        v16 = *error;
      }

      else
      {
        v16 = 0;
      }

      (*(handler + 2))(handler, -1, v16, &v17, 1.0);
    }

    return 0;
  }
}

- (id)loadWorldDescriptionFromData:(id)data options:(id)options compressed:(BOOL)compressed sourceURL:(id)l statusHandler:(id)handler error:(id *)error
{
  compressedCopy = compressed;
  v53[2] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v13 = 1;
    if (!compressed)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = objc_msgSend_vfx_uncompressedDataUsingCompressionAlgorithm_(data, a2, 517, options);
    data = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v13 = sub_1AF1D8E6C(l, options);
  if (compressedCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = [VFXKeyedUnarchiver alloc];
  v17 = objc_msgSend_initForReadingWithData_secure_(v15, v16, data, v13);
  v20 = v17;
  if (!v17)
  {
    return 0;
  }

  objc_msgSend_setDelegate_(v17, v18, self, v19);
  context = objc_autoreleasePoolPush();
  if (l)
  {
    v23 = sub_1AF1D649C(options, l);
    objc_msgSend_setContext_(v20, v24, v23, v25);
    objc_msgSend_setDocumentURL_(v20, v26, l, v27);
    v52 = v23;
    objc_msgSend_setObject_forKeyedSubscript_(v23, v28, l, @"url");
  }

  else
  {
    v52 = 0;
  }

  v29 = objc_msgSend_valueForKey_(VFXTransaction, v21, @"VFXWorldLoadingContextKey", v22);
  objc_msgSend_setValue_forKey_(VFXTransaction, v30, v52, @"VFXWorldLoadingContextKey");
  v31 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v32, v53, 2);
  v36 = objc_msgSend_setWithArray_(v31, v34, v33, v35);
  v38 = objc_msgSend_decodeObjectOfClasses_forKey_(v20, v37, v36, @"root");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = objc_alloc_init(VFXWorld);
    v43 = objc_msgSend_rootNode(v39, v40, v41, v42);
    objc_msgSend_addChildNode_(v43, v44, v38, v45);
  }

  else
  {
    v39 = v38;
    v47 = v38;
  }

  if (v39)
  {
    sub_1AF1D7C54(v39, options, 0, -1);
  }

  objc_msgSend_setValue_forKey_(VFXTransaction, v46, v29, @"VFXWorldLoadingContextKey");

  objc_msgSend_finishDecoding(v20, v48, v49, v50);
  if (v52)
  {
    CFRelease(v52);
  }

  objc_autoreleasePoolPop(context);
  return v39;
}

- (NSUUID)documentUUID
{
  result = self->_documentUUID;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E696AFB0]);
    self->_documentUUID = result;
  }

  return result;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF36FBF4();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(classes, v8, &v37, v42, 16);
  if (!v9)
  {
    return 0;
  }

  v12 = v9;
  v13 = *v38;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(classes);
      }

      v15 = objc_msgSend_classNamed_(v7, v10, *(*(&v37 + 1) + 8 * i), v11);
      if (v15)
      {
        v17 = v15;
        if (!objc_msgSend_requiresSecureCoding(unarchiver, v10, v16, v11))
        {
          return v17;
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = objc_msgSend_allowedClasses(unarchiver, v18, v19, v20);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v33, v41, 16);
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          v32 = v12;
LABEL_10:
          unarchiverCopy = unarchiver;
          classesCopy = classes;
          v28 = v7;
          v29 = v13;
          v30 = 0;
          while (1)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v21);
            }

            if (objc_msgSend_isSubclassOfClass_(v17, v10, *(*(&v33 + 1) + 8 * v30), v11))
            {
              return v17;
            }

            if (v24 == ++v30)
            {
              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v10, &v33, v41, 16);
              v13 = v29;
              v7 = v28;
              classes = classesCopy;
              unarchiver = unarchiverCopy;
              v12 = v32;
              if (v24)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(classes, v10, &v37, v42, 16);
    v17 = 0;
    if (v12)
    {
      continue;
    }

    return v17;
  }
}

+ (void)transferWorld:(id)world to:(id)to
{
  objc_msgSend__mergeWorld_parentNode_parentAssetNode_remapEntities_(to, a2, world, 0, 0, 0);
  v10 = objc_msgSend_identifier(world, v6, v7, v8);

  objc_msgSend_setIdentifier_(to, v9, v10, v11);
}

@end