@interface TSDInfoCollectionSelectionHelper
- (BOOL)isEqual:(id)a3;
- (NSSet)infosWithNonInteractiveInfos;
- (NSString)UUIDDescription;
- (NSString)description;
- (TSDInfoCollectionSelectionHelper)init;
- (TSDInfoCollectionSelectionHelper)initWithInteractiveInfos:(id)a3;
- (TSDInfoCollectionSelectionHelper)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4;
- (unint64_t)hash;
@end

@implementation TSDInfoCollectionSelectionHelper

- (TSDInfoCollectionSelectionHelper)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = TSDInfoCollectionSelectionHelper;
  v10 = [(TSDInfoCollectionSelectionHelper *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    modelInfos = v10->_modelInfos;
    v10->_modelInfos = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    nonInteractiveInfos = v10->_nonInteractiveInfos;
    v10->_nonInteractiveInfos = v15;
  }

  return v10;
}

- (TSDInfoCollectionSelectionHelper)initWithInteractiveInfos:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v8 = objc_msgSend_set(v4, v6, v7);
  v10 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(self, v9, v5, v8);

  return v10;
}

- (TSDInfoCollectionSelectionHelper)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDInfoCollectionSelectionHelper init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoCollectionSelectionHelper.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 41, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDInfoCollectionSelectionHelper init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (NSSet)infosWithNonInteractiveInfos
{
  v6 = objc_msgSend_modelInfos(self, a2, v2);
  if (!v6)
  {
    v6 = objc_msgSend_set(MEMORY[0x277CBEB98], v4, v5);
  }

  v7 = objc_msgSend_nonInteractiveInfos(self, v4, v5);
  v9 = objc_msgSend_setByAddingObjectsFromSet_(v6, v8, v7);

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5)
    {
      if (objc_msgSend_count(self->_modelInfos, v6, v7))
      {
        if (objc_msgSend_isEqual_(self->_modelInfos, v8, v5[2]))
        {
          goto LABEL_5;
        }
      }

      else if (!objc_msgSend_count(v5[2], v8, v9))
      {
LABEL_5:
        if (objc_msgSend_count(self->_nonInteractiveInfos, v10, v11))
        {
          isEqual = objc_msgSend_isEqual_(self->_nonInteractiveInfos, v12, v5[1]);
        }

        else
        {
          isEqual = objc_msgSend_count(v5[1], v12, v13) == 0;
        }

        goto LABEL_10;
      }
    }

    isEqual = 0;
LABEL_10:

    return isEqual;
  }

  return 1;
}

- (unint64_t)hash
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = objc_msgSend_count(self->_modelInfos, a2, v2);
  TSUHashWithSeed();
  v40 = objc_msgSend_count(self->_nonInteractiveInfos, v4, v5);
  TSUHashWithSeed();
  v39 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_modelInfos;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v35, v42, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_objectUUID(*(*(&v35 + 1) + 8 * v14), v9, v10);
        v12 ^= objc_msgSend_hash(v15, v16, v17);
        v39 = v12;

        ++v14;
      }

      while (v11 != v14);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v35, v42, 16);
    }

    while (v11);
  }

  TSUHashWithSeed();
  v39 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = self->_nonInteractiveInfos;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v41, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v32;
    do
    {
      v25 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v26 = objc_msgSend_objectUUID(*(*(&v31 + 1) + 8 * v25), v21, v22, v31);
        v29 = objc_msgSend_hash(v26, v27, v28);
        v39 ^= v29;

        ++v25;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v31, v41, 16);
    }

    while (v23);
  }

  return TSUHashWithSeed();
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_modelInfos(self, a2, v2);
  v8 = objc_msgSend_count(v5, v6, v7);
  v11 = objc_msgSend_modelInfos(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"<%p %tu %@", self, v8, v11);

  if (objc_msgSend_count(self->_nonInteractiveInfos, v14, v15))
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_msgSend_count(self->_nonInteractiveInfos, v16, v17);
    v21 = objc_msgSend_stringWithFormat_(v18, v20, @"%@ ext:%tu %@", v13, v19, self->_nonInteractiveInfos);

    v13 = v21;
  }

  return v13;
}

- (NSString)UUIDDescription
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_infosWithNonInteractiveInfos(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v46 = objc_msgSend_initWithCapacity_(v3, v10, fmin(v9, 10.0));

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v44 = self;
  obj = objc_msgSend_infosWithNonInteractiveInfos(self, v11, v12);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v47, v51, 16);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v48;
LABEL_3:
    v18 = 0;
    if (v16 <= 0xA)
    {
      v19 = 10 - v16;
    }

    else
    {
      v19 = 0;
    }

    while (1)
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(obj);
      }

      if (v19 == v18)
      {
        break;
      }

      v20 = *(*(&v47 + 1) + 8 * v18);
      objc_opt_class();
      v21 = TSUDynamicCast();
      v24 = objc_msgSend_objectUUIDPath(v21, v22, v23);
      v25 = MEMORY[0x277CCACA8];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v29 = v27;
      if (v24)
      {
        objc_msgSend_stringWithFormat_(v25, v28, @"%@ %p %@", v27, v20, v24);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v25, v28, @"%@ %p", v27, v20, v43);
      }
      v30 = ;
      objc_msgSend_addObject_(v46, v31, v30);

      ++v18;
      ++v16;
      if (v15 == v18)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v47, v51, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v33 = MEMORY[0x277CCACA8];
  v36 = objc_msgSend_infosWithNonInteractiveInfos(v44, v34, v35);
  v39 = objc_msgSend_count(v36, v37, v38);
  v41 = objc_msgSend_stringWithFormat_(v33, v40, @"<%tu %@>", v39, v46);

  return v41;
}

@end