@interface TMLAspectsRegistration
+ (id)keyForClassNamed:(id)a3 signalName:(id)a4 advice:(int)a5;
+ (id)keyForProtocolNamed:(id)a3 signalName:(id)a4 advice:(int)a5;
+ (id)keysForObject:(id)a3 withMetaObjects:(id)a4 signalName:(id)a5 advice:(int)a6;
+ (id)shared;
- (TMLAspectsRegistration)init;
- (id)aspectsForObject:(id)a3 signalName:(id)a4 advice:(int)a5;
- (id)aspectsWithKeys:(id)a3;
- (id)storageForKey:(id)a3 createIfMissing:(BOOL)a4;
- (id)strongAspectsFromArray:(id)a3;
- (void)registerAspect:(id)a3 withKey:(id)a4;
- (void)unregisterAspect:(id)a3 withKey:(id)a4;
@end

@implementation TMLAspectsRegistration

+ (id)shared
{
  if (qword_2806D9060 != -1)
  {
    sub_26F200B78();
  }

  v3 = qword_2806D9058;

  return v3;
}

- (TMLAspectsRegistration)init
{
  v8.receiver = self;
  v8.super_class = TMLAspectsRegistration;
  v3 = [(TMLAspectsRegistration *)&v8 init];
  if (v3)
  {
    v5 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v2, v4);
    registeredAspects = v3->_registeredAspects;
    v3->_registeredAspects = v5;
  }

  return v3;
}

- (id)storageForKey:(id)a3 createIfMissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = objc_msgSend_objectForKey_(self->_registeredAspects, v7, v8, v6);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = !v4;
  }

  if (!v12)
  {
    v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v9, v11, 3);
    objc_msgSend_setObject_forKey_(self->_registeredAspects, v13, v14, v10, v6);
  }

  return v10;
}

- (void)registerAspect:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v14 = objc_msgSend_storageForKey_createIfMissing_(self, v7, v8, a4, 1);
  v11 = objc_msgSend_weakReferenceWithObject_(TMLWeakReferenceObject, v9, v10, v6);

  objc_msgSend_addObject_(v14, v12, v13, v11);
}

- (void)unregisterAspect:(id)a3 withKey:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_storageForKey_createIfMissing_(self, v8, v9, v7, 0);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, 0.0, &v26, v30, 16);
  if (!v12)
  {
    goto LABEL_17;
  }

  v15 = v12;
  v25 = self;
  v16 = 0;
  v17 = *v27;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v26 + 1) + 8 * i);
      v20 = objc_msgSend_object(v19, v13, v14);
      v23 = v20;
      if (v20)
      {
        v24 = v20 == v6;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        if (!v16)
        {
          v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v22, 3);
        }

        objc_msgSend_addObject_(v16, v21, v22, v19);
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, v14, &v26, v30, 16);
  }

  while (v15);
  self = v25;
  if (v16)
  {
    objc_msgSend_setObject_forKey_(v25->_registeredAspects, v13, v14, v16, v7);
  }

  else
  {
LABEL_17:
    objc_msgSend_removeObjectForKey_(self->_registeredAspects, v13, v14, v7);
  }
}

- (id)strongAspectsFromArray:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = MEMORY[0x277CBEB18];
    v9 = objc_msgSend_count(v3, v6, v7);
    v12 = objc_msgSend_arrayWithCapacity_(v8, v10, v11, v9);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_26F1972A0;
    v20[3] = &unk_279DC5758;
    v21 = v12;
    v13 = v12;
    objc_msgSend_enumerateObjectsUsingBlock_(v3, v14, v15, v20);
    v18 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v16, v17, v13);
  }

  else
  {
    v18 = v3;
  }

  return v18;
}

- (id)aspectsWithKeys:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, 0.0, &v22, v26, 16);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = objc_msgSend_aspectsWithKey_(self, v7, v8, *(*(&v22 + 1) + 8 * i));
        if (objc_msgSend_count(v13, v14, v15))
        {
          if (!v10)
          {
            v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v16, v17, 2);
          }

          objc_msgSend_addObjectsFromArray_(v10, v16, v17, v13);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, v8, &v22, v26, 16);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (objc_msgSend_count(v10, v7, v8))
  {
    v20 = objc_msgSend_strongAspectsFromArray_(self, v18, v19, v10);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)aspectsForObject:(id)a3 signalName:(id)a4 advice:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_count(self->_registeredAspects, v10, v11))
  {
    v14 = objc_msgSend_metaObjects(v8, v12, v13);
    v17 = objc_msgSend_keysForObject_withMetaObjects_signalName_advice_(TMLAspectsRegistration, v15, v16, v8, v14, v9, v5);
    v20 = objc_msgSend_aspectsWithKeys_(self, v18, v19, v17);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)keyForProtocolNamed:(id)a3 signalName:(id)a4 advice:(int)a5
{
  v7 = MEMORY[0x277CCAB68];
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_stringWithString_(v7, v10, v11, @"P");
  objc_msgSend_appendString_(v12, v13, v14, v9);

  objc_msgSend_appendString_(v12, v15, v16, @".");
  objc_msgSend_appendString_(v12, v17, v18, v8);

  objc_msgSend_appendString_(v12, v19, v20, @":");
  if (a5)
  {
    objc_msgSend_appendString_(v12, v21, v22, @"A");
  }

  else
  {
    objc_msgSend_appendString_(v12, v21, v22, @"B");
  }

  v25 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v23, v24, v12);

  return v25;
}

+ (id)keyForClassNamed:(id)a3 signalName:(id)a4 advice:(int)a5
{
  v7 = MEMORY[0x277CCAB68];
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_stringWithString_(v7, v10, v11, @"C");
  objc_msgSend_appendString_(v12, v13, v14, v9);

  objc_msgSend_appendString_(v12, v15, v16, @".");
  objc_msgSend_appendString_(v12, v17, v18, v8);

  objc_msgSend_appendString_(v12, v19, v20, @":");
  if (a5)
  {
    objc_msgSend_appendString_(v12, v21, v22, @"A");
  }

  else
  {
    objc_msgSend_appendString_(v12, v21, v22, @"B");
  }

  v25 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v23, v24, v12);

  return v25;
}

+ (id)keysForObject:(id)a3 withMetaObjects:(id)a4 signalName:(id)a5 advice:(int)a6
{
  v6 = *&a6;
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = objc_msgSend_orderedSetWithCapacity_(MEMORY[0x277CBEB40], v12, v13, 4);
  v15 = 0x282042000uLL;
  v18 = objc_msgSend_keyForClassNamed_signalName_advice_(TMLAspectsRegistration, v16, v17, @"*", v11, v6);
  objc_msgSend_addObject_(v14, v19, v20, v18);

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v21 = v10;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, &v75, v80, 16);
  if (!v70)
  {

LABEL_20:
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    v61 = objc_msgSend_keyForClassNamed_signalName_advice_((v15 + 3656), v59, v60, v58, v11, v6);
    objc_msgSend_addObject_(v14, v62, v63, v61);

    goto LABEL_21;
  }

  v66 = v9;
  obj = v21;
  v68 = 0;
  v69 = *v76;
  do
  {
    for (i = 0; i != v70; ++i)
    {
      if (*v76 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v75 + 1) + 8 * i);
      v28 = objc_msgSend_type(v27, v24, v25);

      if (v28)
      {
        v30 = objc_opt_class();
        v33 = objc_msgSend_type(v27, v31, v32);
        v36 = objc_msgSend_keyForClassNamed_signalName_advice_(v30, v34, v35, v33, v11, v6);
        objc_msgSend_addObject_(v14, v37, v38, v36);

        v68 = 1;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v39 = objc_msgSend_implements(v27, v29, 0.0);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, v41, &v71, v79, 16);
      if (v42)
      {
        v43 = v42;
        v44 = *v72;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v72 != v44)
            {
              objc_enumerationMutation(v39);
            }

            v46 = *(*(&v71 + 1) + 8 * j);
            v47 = objc_opt_class();
            v50 = objc_msgSend_keyForProtocolNamed_signalName_advice_(v47, v48, v49, v46, v11, v6);
            objc_msgSend_addObject_(v14, v51, v52, v50);
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v53, v54, &v71, v79, 16);
        }

        while (v43);
      }
    }

    v21 = obj;
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, &v75, v80, 16);
  }

  while (v70);

  v9 = v66;
  v15 = 0x282042000;
  if ((v68 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v64 = objc_msgSend_array(v14, v55, v56);

  return v64;
}

@end