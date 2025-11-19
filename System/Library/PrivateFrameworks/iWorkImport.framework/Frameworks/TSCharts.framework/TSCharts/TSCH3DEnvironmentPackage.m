@interface TSCH3DEnvironmentPackage
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)hasCompleteData;
- (BOOL)isEqual:(id)a3;
- (TSCH3DEnvironmentPackage)init;
- (TSCH3DEnvironmentPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addMaterial:(id)a3;
- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCH3DEnvironmentPackage

- (TSCH3DEnvironmentPackage)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DEnvironmentPackage;
  v2 = [(TSCH3DEnvironmentPackage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    materials = v2->_materials;
    v2->_materials = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEA60]);
    v21 = objc_msgSend_initWithArray_copyItems_(v16, v17, v18, v19, v20, self->_materials, 1);
    v22 = v15[1];
    v15[1] = v21;
  }

  return v15;
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
    if (v6)
    {
      if (!self->_materials)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DEnvironmentPackage isEqual:]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DEnvironmentPackage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 53, 0, "invalid nil value for '%{public}s'", "_materials");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      }

      v25 = v6[1];
      if (!v25)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DEnvironmentPackage isEqual:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DEnvironmentPackage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 54, 0, "invalid nil value for '%{public}s'", "other->_materials");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
        v25 = v6[1];
      }

      isEqual = objc_msgSend_isEqual_(self->_materials, v5, v7, v8, v9, v25);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  materials = self->_materials;
  if (!materials)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DEnvironmentPackage hash]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DEnvironmentPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 61, 0, "invalid nil value for '%{public}s'", "_materials");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    materials = self->_materials;
  }

  return objc_msgSend_hash(materials, a2, v2, v3, v4);
}

- (BOOL)hasCompleteData
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_materials;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v17, v21, 16);
  if (v8)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v2);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (v14 && (objc_msgSend_hasCompleteData(v14, v7, v9, v10, v11, v17) & 1) == 0)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, v9, v10, v11, &v17, v21, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_12:

  return v15;
}

- (void)addMaterial:(id)a3
{
  v16 = a3;
  v4 = self->_materials;
  v9 = objc_msgSend_arrayByAddingObject_(v4, v5, v6, v7, v8, v16);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  materials = self->_materials;
  self->_materials = v14;
}

- (void)affect:(id)a3 states:(id)a4 scene:(id)a5 texturePool:(id)a6
{
  v22 = a3;
  v8 = a6;
  if (objc_msgSend_count(self->_materials, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_effectWithMaterials_pool_(TSCH3DSphericalEnvironmentShaderEffect, v13, v14, v15, v16, self->_materials, v8);
    objc_msgSend_addEffect_toSection_(v22, v18, v19, v20, v21, v17, 1);
  }
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSCH3DEnvironmentPackage alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

- (TSCH3DEnvironmentPackage)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v47.receiver = self;
  v47.super_class = TSCH3DEnvironmentPackage;
  v8 = [(TSCH3DEnvironmentPackage *)&v47 init];
  if (v8)
  {
    v12 = *(a3 + 6);
    v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v7, v9, v10, v11, v12);
    if (v12 >= 1)
    {
      v18 = 8;
      do
      {
        v19 = [TSCH3DEnvironmentMaterial alloc];
        v24 = objc_msgSend_initWithArchive_unarchiver_(v19, v20, v21, v22, v23, *(*(a3 + 4) + v18), v6);
        objc_msgSend_addObject_(v14, v25, v26, v27, v28, v24);

        v18 += 8;
        --v12;
      }

      while (v12);
    }

    if (v8->_materials)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DEnvironmentPackage(PersistenceAdditions) initWithArchive:unarchiver:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DEnvironmentPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 116, 0, "expected nil value for '%{public}s'", "_materials");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    v44 = objc_msgSend_copy(v14, v13, v15, v16, v17);
    materials = v8->_materials;
    v8->_materials = v44;
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_materials;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v30, v34, 16);
  if (v13)
  {
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        v20 = *(a3 + 4);
        if (!v20)
        {
          goto LABEL_11;
        }

        v21 = *(a3 + 6);
        v22 = *v20;
        if (v21 < *v20)
        {
          *(a3 + 6) = v21 + 1;
          objc_msgSend_saveToArchive_archiver_(v19, v12, v14, v15, v16, *&v20[2 * v21 + 2], v6, v30);
          goto LABEL_13;
        }

        if (v22 == *(a3 + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
          v20 = *(a3 + 4);
          v22 = *v20;
        }

        *v20 = v22 + 1;
        v23 = sub_276447A5C(*(a3 + 2));
        v24 = *(a3 + 6);
        v25 = *(a3 + 4) + 8 * v24;
        *(a3 + 6) = v24 + 1;
        *(v25 + 8) = v23;
        objc_msgSend_saveToArchive_archiver_(v19, v26, v27, v28, v29, v23, v6, v30);
LABEL_13:
        ++v18;
      }

      while (v13 != v18);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v30, v34, 16);
    }

    while (v13);
  }
}

@end