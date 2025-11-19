@interface TSPComponentDataReferenceMap
- (TSPComponentDataReferenceMap)initWithDataToObjectReferenceMap:(id)a3 objectToDataReferenceMap:(id)a4 objectIdentifiersWithoutUUID:(id)a5;
- (id)description;
- (id)initFromMessage:(const void *)a3 componentObjectUUIDMap:(id)a4 needsUpgrade:(BOOL *)a5;
- (void)saveToMessage:(void *)a3;
@end

@implementation TSPComponentDataReferenceMap

- (TSPComponentDataReferenceMap)initWithDataToObjectReferenceMap:(id)a3 objectToDataReferenceMap:(id)a4 objectIdentifiersWithoutUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSPComponentDataReferenceMap;
  v12 = [(TSPComponentDataReferenceMap *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataToObjectReferenceMap, a3);
    objc_storeStrong(&v13->_objectToDataReferenceMap, a4);
    objc_storeStrong(&v13->_objectIdentifiersWithoutUUID, a5);
  }

  return v13;
}

- (id)initFromMessage:(const void *)a3 componentObjectUUIDMap:(id)a4 needsUpgrade:(BOOL *)a5
{
  v9 = a4;
  v10 = *(a3 + 26);
  if (v10 < 1)
  {
    LOBYTE(v20) = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (a5)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
  v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
  v14 = *(a3 + 14);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a3 + 26);
  if (v16)
  {
    v17 = 0;
    v18 = 8 * v16;
    do
    {
      v19 = *v15++;
      v17 += *(v19 + 32);
      v18 -= 8;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v52 = a5;
  v24 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
  v22 = objc_msgSend_initWithCapacity_(v24, v25, v17);
  v26 = *(a3 + 14);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  v20 = *(a3 + 26);
  if (v20)
  {
    v21 = 0;
    v55 = 0;
    v56 = &v27[v20];
    v54 = v13;
    while (1)
    {
      v28 = *v27;
      v29 = *(*v27 + 48);
      v30 = *(*v27 + 32);
      v31 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
      v34 = objc_msgSend_initWithCapacity_(v31, v32, v30);
      if (v30 < 1)
      {
        v55 = 1;
      }

      else
      {
        v35 = *(v28 + 40);
        if (v35)
        {
          v36 = v35 + 8;
        }

        else
        {
          v36 = 0;
        }

        v37 = *(v28 + 32);
        if (v37)
        {
          v38 = 8 * v37;
          do
          {
            v39 = *(*v36 + 24);
            v40 = *(*v36 + 32);
            if (v40)
            {
              objc_msgSend_setCount_forIdentifier_(v34, v33, *(*v36 + 32), *(*v36 + 24));
              objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(v22, v41, v39, v29, v40);
            }

            v42 = objc_msgSend_objectUUIDForIdentifier_(v9, v33, v39);

            if (!v42)
            {
              if (v21)
              {
                objc_msgSend_addIndex_(v21, v33, v39);
              }

              else
              {
                v43 = objc_alloc(MEMORY[0x277CCAB58]);
                v21 = objc_msgSend_initWithIndex_(v43, v44, v39);
              }
            }

            v36 += 8;
            v38 -= 8;
          }

          while (v38);
          v13 = v54;
          objc_msgSend_replaceReferencesFromIdentifier_withIdentifierSet_(v54, v33, v29, v34);
          goto LABEL_33;
        }
      }

      objc_msgSend_replaceReferencesFromIdentifier_withIdentifierSet_(v13, v33, v29, v34);
LABEL_33:

      if (++v27 == v56)
      {
        v23 = v13;
        a5 = v52;
        LOBYTE(v20) = v55;
        if (v52)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }
  }

  v21 = 0;
  v23 = v13;
  a5 = v52;
  if (v52)
  {
LABEL_35:
    *a5 = v20 & 1;
  }

LABEL_36:
  v45 = objc_msgSend_makeReferenceMap(v23, v7, v8);
  v48 = objc_msgSend_makeReferenceMap(v22, v46, v47);
  v50 = objc_msgSend_initWithDataToObjectReferenceMap_objectToDataReferenceMap_objectIdentifiersWithoutUUID_(self, v49, v45, v48, v21);

  return v50;
}

- (void)saveToMessage:(void *)a3
{
  dataToObjectReferenceMap = self->_dataToObjectReferenceMap;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AA4FB8;
  v4[3] = &unk_27A6E66A0;
  v4[4] = a3;
  objc_msgSend_enumerateReferencesUsingBlock_(dataToObjectReferenceMap, a2, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = v5;
  if (self->_dataToObjectReferenceMap)
  {
    objc_msgSend_addField_format_(v5, v6, @"references", @"%@", self->_dataToObjectReferenceMap);
  }

  v9 = objc_msgSend_descriptionString(v8, v6, v7);

  return v9;
}

@end