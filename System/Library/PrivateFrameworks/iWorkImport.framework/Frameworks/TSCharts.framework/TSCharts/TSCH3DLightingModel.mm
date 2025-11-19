@interface TSCH3DLightingModel
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)lightingModel;
- (BOOL)hasCompleteData;
- (BOOL)isEqual:(id)a3;
- (TSCH3DLightingModel)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCH3DLightingModel)lightingModelWithLightings:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TSCH3DLightingModel

+ (id)lightingModel
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v16 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v16)
  {
    v20 = objc_msgSend_copyWithZone_(self->_materials, v15, v17, v18, v19, a3);
    v21 = v16[1];
    v16[1] = v20;

    v26 = objc_msgSend_copyWithZone_(self->_lightings, v22, v23, v24, v25, a3);
    v27 = v16[2];
    v16[2] = v26;

    v32 = objc_msgSend_copyWithZone_(self->_environment, v28, v29, v30, v31, a3);
    v33 = v16[3];
    v16[3] = v32;
  }

  return v16;
}

- (id)clone
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 1, self->_materials);
    objc_storeStrong(v4 + 2, self->_lightings);
    objc_storeStrong(v4 + 3, self->_environment);
  }

  return v4;
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
    v5 = TSUSpecificCast();
    v6 = v5;
    if (v5 && ((v7 = *(v5 + 8), v8 = self->_materials, v9 = v7, !(v8 | v9)) || (v14 = v9, v15 = objc_msgSend_isEqual_(v8, v10, v11, v12, v13, v9), v14, v8, v15)) && ((v16 = v6[2], v17 = self->_lightings, v18 = v16, !(v17 | v18)) || (v23 = v18, v24 = objc_msgSend_isEqual_(v17, v19, v20, v21, v22, v18), v23, v17, v24)))
    {
      environment = self->_environment;
      v26 = v6[3];
      v27 = environment;
      v29 = v26;
      if (v27 | v29)
      {
        isEqual = objc_msgSend_isEqual_(v27, v28, v30, v31, v32, v29);
      }

      else
      {
        isEqual = 1;
      }
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
  v6 = objc_msgSend_hash(self->_materials, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_lightings, v7, v8, v9, v10) + v6;
  return v11 + objc_msgSend_hash(self->_environment, v12, v13, v14, v15);
}

- (BOOL)hasCompleteData
{
  materials = self->_materials;
  if (!materials || (hasCompleteData = objc_msgSend_hasCompleteData(materials, a2, v2, v3, v4)) != 0)
  {
    environment = self->_environment;
    if (environment)
    {

      LOBYTE(hasCompleteData) = objc_msgSend_hasCompleteData(environment, a2, v2, v3, v4);
    }

    else
    {
      LOBYTE(hasCompleteData) = 1;
    }
  }

  return hasCompleteData;
}

- (TSCH3DLightingModel)lightingModelWithLightings:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_clone(self, v5, v6, v7, v8);
  objc_msgSend_setLightings_(v9, v10, v11, v12, v13, v4);

  return v9;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v10 = *(a3 + 4);
  if ((v10 & 2) != 0 || (v10) && (v11 = objc_opt_class()) != 0)
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(v11, v5, v7, v8, v9, a3, v6);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "+[TSCH3DLightingModel(PersistenceAdditions) instanceWithArchive:unarchiver:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 118, 0, "invalid nil value for '%{public}s'", "lightingClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v12 = objc_msgSend_lightingModel(TSCH3DPhongLightingModel, v28, v29, v30, v31);
  }

  v32 = v12;

  return v32;
}

- (TSCH3DLightingModel)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = TSCH3DLightingModel;
  v7 = [(TSCH3DLightingModel *)&v15 init];
  v8 = objc_opt_class();
  v13 = objc_msgSend_instanceWithArchive_unarchiver_(v8, v9, v10, v11, v12, a3, v6);

  return v13;
}

@end