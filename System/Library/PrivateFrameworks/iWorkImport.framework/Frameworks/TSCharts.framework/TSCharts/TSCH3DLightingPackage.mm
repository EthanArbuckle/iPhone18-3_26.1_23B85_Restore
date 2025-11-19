@interface TSCH3DLightingPackage
+ (id)allNamedPackages;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)localizedNameForName:(id)a3;
+ (id)nameFromSageLightingPackageName:(id)a3;
+ (id)p_sageLightingPackageNames;
+ (id)package;
+ (id)packageFromName:(id)a3;
+ (id)packageWithSageLightingPackageData:(id)a3;
+ (id)sageNameFromLightingPackageName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedName;
- (TSCH3DLightingPackage)init;
- (TSCH3DLightingPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addLight:(id)a3;
- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DLightingPackage

+ (id)localizedNameForName:(id)a3
{
  v4 = a3;
  if (qword_280A468B8 != -1)
  {
    sub_2764A6B34();
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(qword_280A468B0, v3, v5, v6, v7, v4);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "+[TSCH3DLightingPackage localizedNameForName:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 60, 0, "invalid nil value for '%{public}s'", "localizedName");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return v9;
}

+ (id)allNamedPackages
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276195DA0;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A468C8 != -1)
  {
    dispatch_once(&qword_280A468C8, block);
  }

  v2 = qword_280A468C0;

  return v2;
}

+ (id)packageFromName:(id)a3
{
  v4 = a3;
  v8 = sub_276360774(v5, v6, v7);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v10, v11, v12, @"%@.lpg", v4);
  v18 = objc_msgSend_pathForResource_ofType_(v8, v14, v15, v16, v17, v13, @"plist");

  v23 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v19, v20, v21, v22, v18);
  v56 = 0;
  v28 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v24, v25, v26, v27, v23, 0, 0, &v56);
  v30 = v56;
  if (v30)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v31, v32, v33, "+[TSCH3DLightingPackage packageFromName:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 94, 0, "error occured while loading plist %@", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    v49 = 0;
  }

  else
  {
    v50 = objc_msgSend_dataWithDictionary_(TSCH3DSageLightingPackageData, v29, v31, v32, v33, v28);
    v49 = objc_msgSend_packageWithSageLightingPackageData_(a1, v51, v52, v53, v54, v50);
  }

  return v49;
}

+ (id)package
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DLightingPackage)init
{
  v12.receiver = self;
  v12.super_class = TSCH3DLightingPackage;
  v3 = [(TSCH3DLightingPackage *)&v12 init];
  if (v3)
  {
    v7 = objc_msgSend_copy(@"Unnamed", v2, v4, v5, v6);
    name = v3->_name;
    v3->_name = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    lights = v3->_lights;
    v3->_lights = v9;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 8), self->_name);
    v17 = objc_alloc(MEMORY[0x277CBEA60]);
    v22 = objc_msgSend_initWithArray_copyItems_(v17, v18, v19, v20, v21, self->_lights, 1);
    v23 = v16[2];
    v16[2] = v22;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (!v6)
    {
      goto LABEL_13;
    }

    if (!self->_name)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLightingPackage isEqual:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 131, 0, "invalid nil value for '%{public}s'", "_name");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    if (!self->_lights)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLightingPackage isEqual:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 132, 0, "invalid nil value for '%{public}s'", "_lights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    if (!v6[1])
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLightingPackage isEqual:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 133, 0, "invalid nil value for '%{public}s'", "other->_name");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    if (!v6[2])
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLightingPackage isEqual:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 134, 0, "invalid nil value for '%{public}s'", "other->_lights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    }

    if (objc_msgSend_isEqual_(self->_name, v5, v7, v8, v9, v6[1]))
    {
      isEqual = objc_msgSend_isEqual_(self->_lights, v70, v71, v72, v73, v6[2]);
    }

    else
    {
LABEL_13:
      isEqual = 0;
    }
  }

  return isEqual;
}

- (void)addLight:(id)a3
{
  v16 = a3;
  v4 = self->_lights;
  v9 = objc_msgSend_arrayByAddingObject_(v4, v5, v6, v7, v8, v16);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  lights = self->_lights;
  self->_lights = v14;
}

- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v87 = objc_msgSend_effect(TSCH3DLightingPackageShaderEffect, v12, v13, v14, v15);
  objc_msgSend_addEffect_toSection_(v9, v16, v17, v18, v19);
  v24 = objc_msgSend_set(MEMORY[0x277CCA940], v20, v21, v22, v23);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v86 = self;
  v25 = self->_lights;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v96, v102, 16);
  if (v31)
  {
    v35 = *v97;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v97 != v35)
        {
          objc_enumerationMutation(v25);
        }

        if (objc_msgSend_enabled(*(*(&v96 + 1) + 8 * i), v30, v32, v33, v34, v86))
        {
          v37 = objc_opt_class();
          objc_msgSend_addObject_(v24, v38, v39, v40, v41, v37);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v30, v32, v33, v34, &v96, v102, 16);
    }

    while (v31);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v42 = v24;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v44, v45, v46, &v92, v101, 16);
  if (v48)
  {
    v52 = *v93;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v93 != v52)
        {
          objc_enumerationMutation(v42);
        }

        v54 = *(*(&v92 + 1) + 8 * j);
        v55 = objc_msgSend_effectClass(v54, v47, v49, v50, v51, v86);
        objc_msgSend_createStateInEffectsStates_(v55, v56, v57, v58, v59, v10);
        v64 = objc_msgSend_countForObject_(v42, v60, v61, v62, v63, v54);
        v69 = objc_msgSend_effectWithLightCount_(v55, v65, v66, v67, v68, v64);
        objc_msgSend_addEffect_toSection_(v9, v70, v71, v72, v73, v69, 2);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v47, v49, v50, v51, &v92, v101, 16);
    }

    while (v48);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v74 = v86->_lights;
  v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, v76, v77, v78, &v88, v100, 16);
  if (v80)
  {
    v84 = *v89;
    do
    {
      for (k = 0; k != v80; ++k)
      {
        if (*v89 != v84)
        {
          objc_enumerationMutation(v74);
        }

        objc_msgSend_affect_states_texturePool_(*(*(&v88 + 1) + 8 * k), v79, v81, v82, v83, v9, v10, v11, v86);
      }

      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v79, v81, v82, v83, &v88, v100, 16);
    }

    while (v80);
  }
}

- (NSString)localizedName
{
  v3 = objc_opt_class();
  v8 = objc_msgSend_name(self, v4, v5, v6, v7);
  v13 = objc_msgSend_localizedNameForName_(v3, v9, v10, v11, v12, v8);

  return v13;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DLightingPackage alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DLightingPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v54.receiver = self;
  v54.super_class = TSCH3DLightingPackage;
  v7 = [(TSCH3DLightingPackage *)&v54 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, v10, v11, v12, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
    name = v7->_name;
    v7->_name = v13;

    v15 = *(a3 + 8);
    v21 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v16, v17, v18, v19, v15);
    if (v15 >= 1)
    {
      v25 = 8;
      do
      {
        v26 = [TSCH3DLight alloc];
        v31 = objc_msgSend_initWithArchive_unarchiver_(v26, v27, v28, v29, v30, *(*(a3 + 5) + v25), v6);
        objc_msgSend_addObject_(v21, v32, v33, v34, v35, v31);

        v25 += 8;
        --v15;
      }

      while (v15);
    }

    if (v7->_lights)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v22, v23, v24, "[TSCH3DLightingPackage(PersistenceAdditions) initWithArchive:unarchiver:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 203, 0, "expected nil value for '%{public}s'", "_lights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    v51 = objc_msgSend_copy(v21, v20, v22, v23, v24);
    lights = v7->_lights;
    v7->_lights = v51;
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a4;
  name = self->_name;
  if (!name)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DLightingPackage(PersistenceAdditions) saveToArchive:archiver:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 210, 0, "invalid nil value for '%{public}s'", "_name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    name = self->_name;
  }

  v27 = objc_msgSend_tsp_protobufString(name, v6, v8, v9, v10);
  sub_276197000(a3, v27);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = self->_lights;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v51, v55, 16);
  if (v34)
  {
    v38 = *v52;
    do
    {
      v39 = 0;
      do
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v28);
        }

        v40 = *(*(&v51 + 1) + 8 * v39);
        v41 = *(a3 + 5);
        if (!v41)
        {
          goto LABEL_13;
        }

        v42 = *(a3 + 8);
        v43 = *v41;
        if (v42 < *v41)
        {
          *(a3 + 8) = v42 + 1;
          objc_msgSend_saveToArchive_archiver_(v40, v33, v35, v36, v37, *&v41[2 * v42 + 2], v7);
          goto LABEL_15;
        }

        if (v43 == *(a3 + 9))
        {
LABEL_13:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
          v41 = *(a3 + 5);
          v43 = *v41;
        }

        *v41 = v43 + 1;
        v44 = sub_27644752C(*(a3 + 3));
        v45 = *(a3 + 8);
        v46 = *(a3 + 5) + 8 * v45;
        *(a3 + 8) = v45 + 1;
        *(v46 + 8) = v44;
        objc_msgSend_saveToArchive_archiver_(v40, v47, v48, v49, v50, v44, v7);
LABEL_15:
        ++v39;
      }

      while (v34 != v39);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v33, v35, v36, v37, &v51, v55, 16);
    }

    while (v34);
  }
}

+ (id)p_sageLightingPackageNames
{
  if (qword_280A46A10 != -1)
  {
    sub_2764A6D78();
  }

  v3 = qword_280A46A08;

  return v3;
}

+ (id)nameFromSageLightingPackageName:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_sageLightingPackageNames(a1, v5, v6, v7, v8);
  v14 = objc_msgSend_containsObject_(v9, v10, v11, v12, v13, v4);

  if (v14)
  {
    v15 = v4;
  }

  else
  {
    v15 = @"Default";
  }

  return v15;
}

+ (id)sageNameFromLightingPackageName:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_sageLightingPackageNames(a1, v5, v6, v7, v8);
  v14 = objc_msgSend_containsObject_(v9, v10, v11, v12, v13, v4);

  if ((v14 & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "+[TSCH3DLightingPackage(ImportExportAdditions) sageNameFromLightingPackageName:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 66, 0, "invalid lighting package name encountered %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_p_sageLightingPackageNames(a1, v15, v16, v17, v18);
  v39 = objc_msgSend_containsObject_(v34, v35, v36, v37, v38, v4);

  if (v39)
  {
    v40 = v4;
  }

  else
  {
    v40 = @"Default";
  }

  return v40;
}

+ (id)packageWithSageLightingPackageData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "+[TSCH3DLightingPackage(ImportExportAdditions) packageWithSageLightingPackageData:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 74, 0, "invalid nil value for '%{public}s'", "data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v210 = objc_msgSend_package(a1, v4, v6, v7, v8);
  v28 = objc_msgSend_packageName(v5, v24, v25, v26, v27);
  objc_msgSend_setName_(v210, v29, v30, v31, v32, v28);

  v37 = objc_msgSend_count(v5, v33, v34, v35, v36);
  v42 = v37;
  if (v37)
  {
    v43 = 0;
    v44 = "+[TSCH3DLightingPackage(ImportExportAdditions) packageWithSageLightingPackageData:]";
    v45 = 0x277CCA000uLL;
    v209 = v37;
    do
    {
      v46 = objc_msgSend_typeAtIndex_(v5, v38, v39, v40, v41, v43);
      if (v46)
      {
        if (v46 == 1)
        {
          v51 = objc_msgSend_light(TSCH3DDirectionalLight, v47, v48, v49, v50);
          objc_msgSend_directionAtIndex_(v5, v84, v85, v86, v87, v43);
          v211 = LODWORD(v88);
          v212 = LODWORD(v89);
          v213 = LODWORD(v90);
          objc_msgSend_setDirection_(v51, v91, v88, v89, v90, &v211);
        }

        else
        {
          if (v46 != 2)
          {
            goto LABEL_15;
          }

          v51 = objc_msgSend_light(TSCH3DSpotLight, v47, v48, v49, v50);
          objc_msgSend_positionAtIndex_(v5, v52, v53, v54, v55, v43);
          v211 = LODWORD(v56);
          v212 = LODWORD(v57);
          v213 = LODWORD(v58);
          objc_msgSend_setPosition_(v51, v59, v56, v57, v58, &v211);
          objc_msgSend_directionAtIndex_(v5, v60, v61, v62, v63, v43);
          v211 = LODWORD(v64);
          v212 = LODWORD(v65);
          v213 = LODWORD(v66);
          objc_msgSend_setDirection_(v51, v67, v64, v65, v66, &v211);
          objc_msgSend_cutOffAngleAtIndex_(v5, v68, v69, v70, v71, v43);
          objc_msgSend_setCutOff_(v51, v72, v73, v74, v75);
          objc_msgSend_dropOffRateAtIndex_(v5, v76, v77, v78, v79, v43);
          objc_msgSend_setDropOff_(v51, v80, v81, v82, v83);
        }
      }

      else
      {
        v51 = objc_msgSend_light(TSCH3DPointLight, v47, v48, v49, v50);
        objc_msgSend_positionAtIndex_(v5, v92, v93, v94, v95, v43);
        v211 = LODWORD(v96);
        v212 = LODWORD(v97);
        v213 = LODWORD(v98);
        objc_msgSend_setPosition_(v51, v99, v96, v97, v98, &v211);
      }

      if (v51)
      {
        v100 = objc_msgSend_nameAtIndex_(v5, v47, v48, v49, v50, v43);
        objc_msgSend_setName_(v51, v101, v102, v103, v104, v100);

        objc_msgSend_ambientColorAtIndex_(v5, v105, v106, v107, v108, v43);
        v211 = LODWORD(v109);
        v212 = LODWORD(v110);
        v213 = LODWORD(v111);
        v214 = v112;
        objc_msgSend_setAmbientColor_(v51, v113, v109, v110, v111, &v211);
        objc_msgSend_diffuseColorAtIndex_(v5, v114, v115, v116, v117, v43);
        v211 = LODWORD(v118);
        v212 = LODWORD(v119);
        v213 = LODWORD(v120);
        v214 = v121;
        objc_msgSend_setDiffuseColor_(v51, v122, v118, v119, v120, &v211);
        objc_msgSend_specularColorAtIndex_(v5, v123, v124, v125, v126, v43);
        v211 = LODWORD(v127);
        v212 = LODWORD(v128);
        v213 = LODWORD(v129);
        v214 = v130;
        objc_msgSend_setSpecularColor_(v51, v131, v127, v128, v129, &v211);
        objc_msgSend_intensityAtIndex_(v5, v132, v133, v134, v135, v43);
        objc_msgSend_setIntensity_(v51, v136, v137, v138, v139);
        objc_msgSend_attenuationAtIndex_(v5, v140, v141, v142, v143, v43);
        v211 = LODWORD(v144);
        v212 = LODWORD(v145);
        v213 = LODWORD(v146);
        objc_msgSend_setAttenuation_(v51, v147, v144, v145, v146, &v211);
        v152 = objc_msgSend_coordinateSpaceAtIndex_(v5, v148, v149, v150, v151, v43);
        if (v152 < 1)
        {
          if ((v152 - 1) > 0xFFFFFFFF7FFFFFFELL)
          {
            goto LABEL_17;
          }

LABEL_14:
          v157 = MEMORY[0x277D81150];
          v158 = objc_msgSend_stringWithUTF8String_(*(v45 + 3240), v153, v154, v155, v156, v44);
          v159 = v45;
          v160 = v44;
          v161 = v159;
          v166 = objc_msgSend_stringWithUTF8String_(*(v159 + 3240), v162, v163, v164, v165, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageImportExportAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v167, v168, v169, v170, v158, v166, 112, 0, "Out-of-bounds type assignment failed");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173, v174);
          v44 = v160;
          v45 = v161;
          v42 = v209;
        }

        else
        {
          if (v152 >> 31)
          {
            goto LABEL_14;
          }

LABEL_17:
          objc_msgSend_setCoordinateSpace_(v51, v153, v154, v155, v156, v152);
        }

        v199 = objc_msgSend_enabledAtIndex_(v5, v175, v176, v177, v178, v43);
        objc_msgSend_setEnabled_(v51, v200, v201, v202, v203, v199);
        objc_msgSend_addLight_(v210, v204, v205, v206, v207, v51);
        goto LABEL_19;
      }

LABEL_15:
      v179 = MEMORY[0x277D81150];
      v180 = objc_msgSend_stringWithUTF8String_(*(v45 + 3240), v47, v48, v49, v50, v44);
      v185 = objc_msgSend_stringWithUTF8String_(*(v45 + 3240), v181, v182, v183, v184, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingPackageImportExportAdditions.mm");
      v190 = objc_msgSend_typeAtIndex_(v5, v186, v187, v188, v189, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v191, v192, v193, v194, v180, v185, 104, 0, "invalid light type %ld", v190);

      v51 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v195, v196, v197, v198);
LABEL_19:

      ++v43;
    }

    while (v42 != v43);
  }

  return v210;
}

@end