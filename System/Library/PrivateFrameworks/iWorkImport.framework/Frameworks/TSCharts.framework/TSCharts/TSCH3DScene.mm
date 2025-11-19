@interface TSCH3DScene
+ (id)scene;
- (NSArray)debugObjects;
- (TSCH3DCamera)camera;
- (TSCH3DScene)init;
- (TSCH3DSceneDelegate)delegate;
- (TSCH3DSceneObject)main;
- (TSCH3DScenePropertyAccessor)accessor;
- (TSCH3DScenePropertyAccessorFactory)accessorFactory;
- (id)clone;
- (id)delegateForObject:(id)a3;
- (id)delegateForSceneObject:(id)a3;
- (id)delegateMap;
- (id)description;
- (id)enumeratorForType:(id)a3;
- (id)enumeratorMap;
- (id)extractObjects:(BOOL)a3 ofClasses:(id)a4;
- (id)extractObjectsNotOfClass:(Class)a3;
- (id)extractObjectsNotOfClasses:(id)a3;
- (id)extractObjectsOfClass:(Class)a3;
- (id)extractObjectsOfClasses:(id)a3;
- (id)mutablePropertiesForType:(id)a3;
- (id)objects;
- (id)partForType:(id)a3;
- (id)propertiesForType:(id)a3;
- (id)propertiesMap;
- (id)reallocateObjects;
- (id)removeObjects:(BOOL)a3 ofClasses:(id)a4 addTo:(id)a5;
- (id)removeObjects:(BOOL)a3 ofClasses:(id)a4 into:(id)a5;
- (id)returnRemoved:(BOOL)a3 removeObjectsPassingTest:(id)a4;
- (tmat4x4<float>)transform;
- (void)addObject:(id)a3;
- (void)copyPropertiesFromScene:(id)a3;
- (void)enumerateAllObjectsUsingBlock:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)makeDelegatesFromDelegator:(id)a3;
- (void)overrideObjects;
- (void)removeObjectsNotOfClass:(Class)a3;
- (void)removeObjectsOfClass:(Class)a3;
- (void)resetDelegates;
- (void)resetEnumerator;
- (void)resetObjects;
- (void)resetProperties;
- (void)setAccessor:(id)a3;
- (void)setDelegate:(id)a3 forObject:(id)a4;
- (void)setDelegate:(id)a3 forSceneObject:(id)a4;
- (void)setEnumerator:(id)a3 forType:(id)a4;
- (void)setEnumerator:(id)a3 properties:(id)a4 forType:(id)a5;
- (void)setPart:(id)a3 forType:(id)a4;
- (void)setProperties:(id)a3 forType:(id)a4;
@end

@implementation TSCH3DScene

+ (id)scene
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DScene)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DScene;
  return [(TSCH3DScene *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DScene;
  v4 = [(TSCH3DScene *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"(%@\ndelegateMap %@\nenumeratorMap %@\npropertiesMap %@\nobjects %@\ncamera %@\n\n\noriginal %@)", v4, self->_delegateMap, self->_enumeratorMap, self->_propertiesMap, self->_objects, self->_camera, self->_original);

  return v9;
}

- (id)clone
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setOriginal_(v3, v4, v5, v6, v7, self);

  return v3;
}

- (id)enumeratorMap
{
  enumeratorMap = self->_enumeratorMap;
  if (!enumeratorMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_enumeratorMap;
    self->_enumeratorMap = v4;

    enumeratorMap = self->_enumeratorMap;
  }

  return enumeratorMap;
}

- (void)resetEnumerator
{
  enumeratorMap = self->_enumeratorMap;
  self->_enumeratorMap = 0;
}

- (id)enumeratorForType:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_objectForKey_(self->_enumeratorMap, v5, v6, v7, v8, v4);
  v14 = v9;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = objc_msgSend_enumeratorForType_(self->_original, v10, v11, v12, v13, v4);
  }

  v16 = v15;

  return v16;
}

- (void)setEnumerator:(id)a3 forType:(id)a4
{
  v16 = a3;
  v7 = a4;
  if (v16)
  {
    v11 = objc_msgSend_enumeratorMap(self, v6, v8, v9, v10);
    objc_msgSend_setObject_forKey_(v11, v12, v13, v14, v15, v16, v7);
  }
}

- (id)propertiesMap
{
  propertiesMap = self->_propertiesMap;
  if (!propertiesMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_propertiesMap;
    self->_propertiesMap = v4;

    propertiesMap = self->_propertiesMap;
  }

  return propertiesMap;
}

- (id)propertiesForType:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_objectForKey_(self->_propertiesMap, v5, v6, v7, v8, v4);
  v14 = v9;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = objc_msgSend_propertiesForType_(self->_original, v10, v11, v12, v13, v4);
  }

  v16 = v15;

  return v16;
}

- (id)mutablePropertiesForType:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_propertiesMap(self, v5, v6, v7, v8);
  v15 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, v4);
  if (!v15)
  {
    v19 = objc_msgSend_propertiesForType_(self->_original, v14, v16, v17, v18, v4);
    v15 = objc_msgSend_copy(v19, v20, v21, v22, v23);

    if (v15)
    {
      objc_msgSend_setObject_forKey_(v9, v24, v25, v26, v27, v15, v4);
    }
  }

  return v15;
}

- (void)setProperties:(id)a3 forType:(id)a4
{
  v16 = a3;
  v7 = a4;
  if (v16)
  {
    v11 = objc_msgSend_propertiesMap(self, v6, v8, v9, v10);
    objc_msgSend_setObject_forKey_(v11, v12, v13, v14, v15, v16, v7);
  }
}

- (id)delegateMap
{
  delegateMap = self->_delegateMap;
  if (delegateMap)
  {
    v6 = delegateMap;
  }

  else
  {
    v6 = objc_msgSend_delegateMap(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DScenePropertyAccessorFactory)accessorFactory
{
  accessorFactory = self->_accessorFactory;
  if (accessorFactory)
  {
    v6 = accessorFactory;
  }

  else
  {
    v6 = objc_msgSend_accessorFactory(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DSceneObject)main
{
  main = self->_main;
  if (main)
  {
    v6 = main;
  }

  else
  {
    v6 = objc_msgSend_main(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (TSCH3DCamera)camera
{
  camera = self->_camera;
  if (camera)
  {
    v6 = camera;
  }

  else
  {
    v6 = objc_msgSend_camera(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (NSArray)debugObjects
{
  v5 = objc_msgSend_objects(self, a2, v2, v3, v4);
  v10 = objc_msgSend_copy(v5, v6, v7, v8, v9);

  return v10;
}

- (id)objects
{
  objects = self->_objects;
  if (objects)
  {
    v6 = objects;
  }

  else
  {
    v6 = objc_msgSend_objects(self->_original, a2, v2, v3, v4);
  }

  return v6;
}

- (void)resetObjects
{
  objects = self->_objects;
  if (!objects)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_objects;
    self->_objects = v7;

    objects = self->_objects;
  }

  objc_msgSend_removeAllObjects(objects, a2, v2, v3, v4);
}

- (void)overrideObjects
{
  if (!self->_objects)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_objects(self->_original, v4, v5, v6, v7);
    v12 = objc_msgSend_initWithArray_(v3, v8, v9, v10, v11);
    objects = self->_objects;
    self->_objects = v12;
  }
}

- (void)addObject:(id)a3
{
  v12 = a3;
  objc_msgSend_overrideObjects(self, v4, v5, v6, v7);
  objc_msgSend_addObject_(self->_objects, v8, v9, v10, v11, v12);
}

- (void)setAccessor:(id)a3
{
  p_accessor = &self->_accessor;
  v30 = a3;
  if (*p_accessor != v30)
  {
    objc_storeStrong(&self->_accessor, a3);
    v10 = objc_msgSend_scene(*p_accessor, v6, v7, v8, v9);

    if (v10 != self)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DScene setAccessor:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DScene.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 182, 0, "accessor and scene mismatch %@, %@", self->_accessor, self);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }
  }
}

- (TSCH3DScenePropertyAccessor)accessor
{
  accessor = self->_accessor;
  if (!accessor)
  {
    v7 = objc_msgSend_accessorFactory(self, a2, v2, v3, v4);
    v12 = objc_msgSend_accessorWithScene_(v7, v8, v9, v10, v11, self);
    v13 = self->_accessor;
    self->_accessor = v12;

    accessor = self->_accessor;
  }

  return accessor;
}

- (tmat4x4<float>)transform
{
  v8 = objc_msgSend_accessor(self, a3, v3, v4, v5);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DScene transform]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DScene.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 194, 0, "invalid nil value for '%{public}s'", "self.accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_accessor(self, v9, v10, v11, v12);
  v33 = objc_msgSend_accessor(self, v29, v30, v31, v32);
  v38 = v33;
  if (v33)
  {
    objc_msgSend_sceneTransform(v33, v34, v35, v36, v37);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  sub_2761902D4(v28, v40, retstr);

  return result;
}

- (void)setEnumerator:(id)a3 properties:(id)a4 forType:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  objc_msgSend_setEnumerator_forType_(self, v10, v11, v12, v13, v18, v9);
  objc_msgSend_setProperties_forType_(self, v14, v15, v16, v17, v8, v9);
}

- (void)copyPropertiesFromScene:(id)a3
{
  v12 = a3;
  v8 = *(v12 + 5);
  if (v8)
  {
    propertiesMap = self->_propertiesMap;
    if (!propertiesMap)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_propertiesMap;
      self->_propertiesMap = v10;

      propertiesMap = self->_propertiesMap;
      v4 = v12;
      v8 = *(v12 + 5);
    }

    objc_msgSend_addEntriesFromDictionary_(propertiesMap, v4, v5, v6, v7, v8);
  }
}

- (void)resetProperties
{
  propertiesMap = self->_propertiesMap;
  if (!propertiesMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_propertiesMap;
    self->_propertiesMap = v7;

    propertiesMap = self->_propertiesMap;
  }

  objc_msgSend_removeAllObjects(propertiesMap, a2, v2, v3, v4);
}

- (id)partForType:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_enumeratorForType_(self, v5, v6, v7, v8, v4);
  v14 = objc_msgSend_propertiesForType_(self, v10, v11, v12, v13, v4);
  v19 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v15, v16, v17, v18, v9, v14);

  return v19;
}

- (void)setPart:(id)a3 forType:(id)a4
{
  v21 = a3;
  v6 = a4;
  v11 = objc_msgSend_enumerator(v21, v7, v8, v9, v10);
  v16 = objc_msgSend_properties(v21, v12, v13, v14, v15);
  objc_msgSend_setEnumerator_properties_forType_(self, v17, v18, v19, v20, v11, v16, v6);
}

- (id)delegateForObject:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_delegateMap(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, v4);

  v19 = objc_msgSend_nonretainedObjectValue(v14, v15, v16, v17, v18);

  return v19;
}

- (void)setDelegate:(id)a3 forObject:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (v20)
  {
    if (!self->_delegateMap)
    {
      v7 = objc_alloc_init(MEMORY[0x277D81278]);
      delegateMap = self->_delegateMap;
      self->_delegateMap = v7;
    }

    v9 = v20;
    v10 = self->_delegateMap;
    v15 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v11, v12, v13, v14, v20);
    objc_msgSend_setObject_forKey_(v10, v16, v17, v18, v19, v15, v6);
  }
}

- (id)delegateForSceneObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = objc_msgSend_delegateForObject_(self, v6, v7, v8, v9, v5);

  return v10;
}

- (void)setDelegate:(id)a3 forSceneObject:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  objc_msgSend_setDelegate_forObject_(self, v8, v9, v10, v11, v12, v7);
}

- (void)resetDelegates
{
  delegateMap = self->_delegateMap;
  if (!delegateMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277D81278]);
    v8 = self->_delegateMap;
    self->_delegateMap = v7;

    delegateMap = self->_delegateMap;
  }

  objc_msgSend_removeAllObjects(delegateMap, a2, v2, v3, v4);
}

- (TSCH3DSceneDelegate)delegate
{
  v4 = objc_opt_class();

  return objc_msgSend_delegateForObject_(self, v3, v5, v6, v7, v4);
}

- (void)makeDelegatesFromDelegator:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_makeDelegateWithScene_(v4, v5, v6, v7, v8, self);
  v10 = objc_opt_class();
  objc_msgSend_setDelegate_forObject_(self, v11, v12, v13, v14, v9, v10);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = objc_msgSend_objects(self, v15, 0.0, v16, v17, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, &v55, v59, 16);
  if (v24)
  {
    v28 = *v56;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v56 != v28)
        {
          objc_enumerationMutation(v18);
        }

        v30 = *(*(&v55 + 1) + 8 * i);
        v31 = objc_msgSend_makeDelegateWithSceneObject_scene_(v4, v23, v25, v26, v27, v30, self);
        objc_msgSend_setDelegate_forSceneObject_(self, v32, v33, v34, v35, v31, v30);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v23, v25, v26, v27, &v55, v59, 16);
    }

    while (v24);
  }

  v40 = objc_msgSend_main(self, v36, v37, v38, v39);
  v45 = objc_msgSend_makeDelegateWithSceneObject_scene_(v4, v41, v42, v43, v44, v40, self);
  v50 = objc_msgSend_main(self, v46, v47, v48, v49);
  objc_msgSend_setDelegate_forSceneObject_(self, v51, v52, v53, v54, v45, v50);
}

- (void)enumerateAllObjectsUsingBlock:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = objc_msgSend_objects(self, v5, 0.0, v6, v7, 0);
  v13 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v26, v31, 16);
  if (v14)
  {
    v15 = *v27;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v4[2](v4, *(*(&v26 + 1) + 8 * v16), v13, &v30);
      if (v30)
      {
        break;
      }

      ++v13;
      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v17, v18, v19, v20, &v26, v31, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v30 & 1) == 0)
  {
    v25 = objc_msgSend_main(self, v21, v22, v23, v24);
    (v4)[2](v4, v25, v13, &v30);
  }
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_objects(self, v5, 0.0, v6, v7, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v21, v26, 16);
  if (v13)
  {
    v14 = 0;
    v15 = *v22;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v4[2](v4, *(*(&v21 + 1) + 8 * v16), v14, &v25);
      if (v25)
      {
        break;
      }

      ++v14;
      if (v13 == ++v16)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v17, v18, v19, v20, &v21, v26, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)reallocateObjects
{
  v6 = objc_msgSend_objects(self, a2, v2, v3, v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objects = self->_objects;
  self->_objects = v7;

  return v6;
}

- (id)returnRemoved:(BOOL)a3 removeObjectsPassingTest:(id)a4
{
  v4 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v4)
  {
    v11 = objc_msgSend_clone(self, v6, v8, v9, v10);
    objc_msgSend_resetObjects(v11, v12, v13, v14, v15);
  }

  else
  {
    v11 = 0;
    objc_msgSend_resetObjects(0, v6, v8, v9, v10);
  }

  v45 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = objc_msgSend_reallocateObjects(self, v16, 0.0, v17, v18, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v21, v22, v23, &v41, v46, 16);
  if (v24)
  {
    v25 = 0;
    v26 = *v42;
LABEL_6:
    v27 = 0;
    while (1)
    {
      if (*v42 != v26)
      {
        objc_enumerationMutation(v19);
      }

      v28 = *(*(&v41 + 1) + 8 * v27);
      v29 = v7[2](v7, v28, v25, &v45);
      if (v45)
      {
        break;
      }

      v34 = v29;
      objects = v11;
      if ((v34 & 1) == 0)
      {
        objects = self->_objects;
      }

      objc_msgSend_addObject_(objects, v30, v31, v32, v33, v28);
      ++v25;
      if (v24 == ++v27)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v36, v37, v38, v39, &v41, v46, 16);
        if (v24)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  return v11;
}

- (id)removeObjects:(BOOL)a3 ofClasses:(id)a4 addTo:(id)a5
{
  v6 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v46 = a4;
  v45 = a5;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v43 = self;
  obj = objc_msgSend_reallocateObjects(self, v8, 0.0, v9, v10);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v12, v13, v14, &v51, v56, 16);
  if (v15)
  {
    v16 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v51 + 1) + 8 * v17);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v19 = v46;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, v21, v22, v23, &v47, v55, 16);
        if (v24)
        {
          v25 = 0;
          v26 = *v48;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v19);
              }

              v25 |= objc_opt_isKindOfClass();
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v28, v29, v30, v31, &v47, v55, 16);
          }

          while (v24);

          objects = v45;
          if ((v25 & 1) != v6)
          {
LABEL_14:
            objects = v43->_objects;
          }
        }

        else
        {

          objects = v45;
          if (v6)
          {
            goto LABEL_14;
          }
        }

        objc_msgSend_addObject_(objects, v32, v33, v34, v35, v18);
        ++v17;
      }

      while (v17 != v15);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, v38, v39, v40, &v51, v56, 16);
      v15 = v41;
    }

    while (v41);
  }

  return v45;
}

- (id)removeObjects:(BOOL)a3 ofClasses:(id)a4 into:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  objc_msgSend_resetObjects(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_removeObjects_ofClasses_addTo_(self, v14, v15, v16, v17, v6, v8, v9);

  return v18;
}

- (void)removeObjectsOfClass:(Class)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v3, v4, v5, v13, 1);
  v12 = objc_msgSend_removeObjects_ofClasses_into_(self, v8, v9, v10, v11, 1, v7, 0);
}

- (void)removeObjectsNotOfClass:(Class)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v3, v4, v5, v13, 1);
  v12 = objc_msgSend_removeObjects_ofClasses_into_(self, v8, v9, v10, v11, 0, v7, 0);
}

- (id)extractObjectsOfClass:(Class)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v3, v4, v5, v19, 1);
  v12 = objc_msgSend_clone(self, v8, v9, v10, v11);
  v17 = objc_msgSend_removeObjects_ofClasses_into_(self, v13, v14, v15, v16, 1, v7, v12);

  return v17;
}

- (id)extractObjects:(BOOL)a3 ofClasses:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11 = objc_msgSend_clone(self, v7, v8, v9, v10);
  objc_msgSend_resetObjects(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_removeObjects_ofClasses_addTo_(self, v16, v17, v18, v19, v4, v6, v11);

  return v11;
}

- (id)extractObjectsOfClasses:(id)a3
{
  v6 = objc_msgSend_extractObjects_ofClasses_(self, a2, v3, v4, v5, 1, a3);

  return v6;
}

- (id)extractObjectsNotOfClass:(Class)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v3, v4, v5, v19, 1);
  v12 = objc_msgSend_clone(self, v8, v9, v10, v11);
  v17 = objc_msgSend_removeObjects_ofClasses_into_(self, v13, v14, v15, v16, 0, v7, v12);

  return v17;
}

- (id)extractObjectsNotOfClasses:(id)a3
{
  v6 = objc_msgSend_extractObjects_ofClasses_(self, a2, v3, v4, v5, 0, a3);

  return v6;
}

@end