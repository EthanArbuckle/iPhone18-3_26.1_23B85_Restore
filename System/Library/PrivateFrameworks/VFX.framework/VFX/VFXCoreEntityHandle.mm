@interface VFXCoreEntityHandle
+ (VFXCoreEntityHandle)handleWithEntityObject:(id)a3;
+ (id)presentationHandleWithCFXCoreEntityHandle:(__CFXCoreEntityHandle *)a3;
+ (id)presentationHandleWithEntityObject:(id)a3;
- (BOOL)setBindingData:(id)a3 forKey:(id)a4;
- (BOOL)setBindingValue:(id)a3 forKey:(id)a4;
- (BOOL)setBindingValue:(void *)a3 size:(unint64_t)a4 forKey:(id)a5;
- (NSArray)bindings;
- (NSString)description;
- (VFXCoreEntityHandle)initWithCoder:(id)a3;
- (VFXCoreEntityHandle)initWithCoreEntityHandleRef:(__CFXCoreEntityHandle *)a3;
- (VFXCoreEntityHandle)initWithEntityObject:(id)a3;
- (VFXCoreEntityHandle)initWithTag:(id)a3;
- (VFXWorld)world;
- (_TtC3VFX15VFXEntityObject)entityObject;
- (_TtC3VFX20EntityPropertyHelper)entityHelper;
- (__CFXWorld)worldRef;
- (id)_bindingNames:(BOOL)a3;
- (id)bindingDataForKey:(id)a3;
- (id)bindingForKey:(id)a3;
- (id)bindingPresentationValueForKey:(id)a3;
- (id)bindingValueForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationBindingForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addWorldReference:(id)a3;
- (void)dealloc;
- (void)didAttachToWorld:(id)a3;
- (void)didDetachFromWorld:(id)a3;
- (void)didSetEntityObject;
- (void)encodeWithCoder:(id)a3;
- (void)removeWorldReference:(id)a3;
- (void)resolveTag:(id)a3 remap:(id)a4;
- (void)setTag:(id)a3;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setWorld:(id)a3;
@end

@implementation VFXCoreEntityHandle

- (_TtC3VFX20EntityPropertyHelper)entityHelper
{
  if (self->_isPresentationObject)
  {
    return sub_1AF16A4C8(self->_handle, a2, v2, v3);
  }

  else
  {
    return objc_msgSend_properties(self->_entityObject, a2, v2, v3);
  }
}

- (void)didSetEntityObject
{
  v4 = objc_msgSend_entityHelper(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_setBeamed, v5, v6);
}

- (VFXCoreEntityHandle)initWithEntityObject:(id)a3
{
  v17.receiver = self;
  v17.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v17 init];
  if (v4)
  {
    v4->_entityObject = a3;
    v8 = objc_msgSend_tag(a3, v5, v6, v7);
    v4->_tag = v8;
    v9 = sub_1AF16A5D0(v8);
    v4->_handle = v9;
    if (v9)
    {
      sub_1AF16CDFC(v9, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v10, v11, v12);
    objc_msgSend_didSetEntityObject(v4, v13, v14, v15);
  }

  return v4;
}

- (VFXCoreEntityHandle)initWithCoreEntityHandleRef:(__CFXCoreEntityHandle *)a3
{
  v7.receiver = self;
  v7.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_handle = v5;
  }

  return v4;
}

+ (VFXCoreEntityHandle)handleWithEntityObject:(id)a3
{
  v5 = objc_msgSend_handle(a3, a2, a3, v3);
  if (!v5)
  {
    v6 = [VFXCoreEntityHandle alloc];
    v5 = objc_msgSend_initWithEntityObject_(v6, v7, a3, v8);
    objc_msgSend_setHandle_(a3, v9, v5, v10);
  }

  return v5;
}

+ (id)presentationHandleWithEntityObject:(id)a3
{
  v4 = [VFXCoreEntityHandle alloc];
  result = objc_msgSend_initWithEntityObject_(v4, v5, a3, v6);
  *(result + 36) = 1;
  return result;
}

+ (id)presentationHandleWithCFXCoreEntityHandle:(__CFXCoreEntityHandle *)a3
{
  v4 = [VFXCoreEntityHandle alloc];
  result = objc_msgSend_initWithCoreEntityHandleRef_(v4, v5, a3, v6);
  *(result + 36) = 1;
  return result;
}

- (VFXCoreEntityHandle)initWithTag:(id)a3
{
  v8.receiver = self;
  v8.super_class = VFXCoreEntityHandle;
  v4 = [(VFXCoreEntityHandle *)&v8 init];
  if (v4)
  {
    v5 = a3;
    v4->_tag = v5;
    v6 = sub_1AF16A5D0(v5);
    v4->_handle = v6;
    if (v6)
    {
      sub_1AF16CDFC(v6, v4);
    }
  }

  return v4;
}

- (void)dealloc
{
  handle = self->_handle;
  if (handle)
  {
    sub_1AF16CDFC(handle, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_handle, v5);
  }

  entityObject = self->_entityObject;
  if (entityObject)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF2BF450;
    block[3] = &unk_1E7A7A770;
    block[4] = entityObject;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v7.receiver = self;
  v7.super_class = VFXCoreEntityHandle;
  [(VFXCoreEntityHandle *)&v7 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v7, v5, self);
}

- (void)_updateModelFromPresentation
{
  v40 = *MEMORY[0x1E69E9840];

  self->_bindings = 0;
  v6 = objc_msgSend_entityHelper(self, v3, v4, v5);
  v10 = objc_msgSend_bindings(v6, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v16 = objc_msgSend_count(v11, v13, v14, v15);
    self->_bindings = objc_msgSend_initWithCapacity_(v12, v17, v16, v18);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v35, v39, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        v23 = 0;
        do
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v11);
          }

          v24 = *(*(&v35 + 1) + 8 * v23);
          v25 = [VFXBindingWrapper alloc];
          v27 = objc_msgSend_initWithBinding_coreEntityHandle_(v25, v26, v24, self);
          bindings = self->_bindings;
          v32 = objc_msgSend_bindingName(v24, v29, v30, v31);
          objc_msgSend_setValue_forKey_(bindings, v33, v27, v32);

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v34, &v35, v39, 16);
      }

      while (v21);
    }
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2BF6A0;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)setTag:(id)a3
{
  if ((objc_msgSend_isEqual_(a3, a2, self->_tag, v3) & 1) == 0)
  {

    self->_tag = objc_msgSend_copy(a3, v6, v7, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2BF868;
    v10[3] = &unk_1E7A7E1D0;
    v10[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)resolveTag:(id)a3 remap:(id)a4
{
  if (!self->_entityObject)
  {
    p_tag = &self->_tag;
    v8 = objc_msgSend_objectForKey_(a4, a2, self->_tag, a4);
    v11 = *p_tag;
    if (v8)
    {
      objc_msgSend_setTag_(self, v9, v8, v10);
      v14 = objc_msgSend_fetchEntityObjectWithTag_(a3, v12, self->_tag, v13);
      self->_entityObject = v14;
      if (!v14)
      {
        v15 = sub_1AF0D5194();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5384();
        }
      }
    }

    else
    {
      v16 = objc_msgSend_fetchEntityObjectWithTag_(a3, v9, self->_tag, v10);
      self->_entityObject = v16;
      if (v16)
      {
        v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v17, v18, v19);
        v24 = objc_msgSend_UUIDString(v20, v21, v22, v23);
        objc_msgSend_setTag_(self, v25, v24, v26);
        v30 = objc_msgSend_tag(self->_entityObject, v27, v28, v29);
        objc_msgSend_didRenameTag_to_(a3, v31, v30, self->_tag);
        objc_msgSend_setTag_(self->_entityObject, v32, self->_tag, v33);
      }

      else
      {
        v35 = sub_1AF0D5194();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF53FC();
        }
      }

      objc_msgSend_setObject_forKey_(a4, v34, *p_tag, v11);
    }

    objc_msgSend__updateModelFromPresentation(self, v36, v37, v38);
    objc_msgSend_didSetEntityObject(self, v39, v40, v41);
  }
}

- (_TtC3VFX15VFXEntityObject)entityObject
{
  if (self->_isPresentationObject && (byte_1EB658859 & 1) == 0)
  {
    byte_1EB658859 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5474();
    }
  }

  return self->_entityObject;
}

- (void)didAttachToWorld:(id)a3
{
  if (self->_handle)
  {
    v6 = objc_msgSend_worldRef(a3, a2, a3, v3);
    handle = self->_handle;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2BFB1C;
    v15[3] = &unk_1E7A7E6A0;
    v15[4] = handle;
    v15[5] = v6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v15);
  }

  if (!self->_muteWorldChange && self->_entityObject)
  {
    v9 = objc_msgSend_scene(a3, a2, a3, v3);
    objc_msgSend_addEntityObject_(v9, v10, self->_entityObject, v11);
    objc_msgSend_invalidateHelper(self, v12, v13, v14);
  }

  objc_msgSend__updateModelFromPresentation(self, a2, a3, v3);
}

- (void)didDetachFromWorld:(id)a3
{
  handle = self->_handle;
  if (handle)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2BFC30;
    v13[3] = &unk_1E7A7E6C0;
    v13[4] = handle;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v13);
  }

  if (!self->_muteWorldChange)
  {
    if (self->_entityObject)
    {
      v7 = objc_msgSend_scene(a3, a2, a3, v3);
      objc_msgSend_removeEntityObject_(v7, v8, self->_entityObject, v9);
      objc_msgSend_invalidateHelper(self, v10, v11, v12);
    }
  }
}

- (void)addWorldReference:(id)a3
{
  world = self->_world;
  if (world == a3)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, a3, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)a3
{
  p_world = &self->_world;
  if (!a3 || self->_world == a3)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF54B4(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)a3
{
  world = self->_world;
  if (world != a3)
  {
    v13[9] = v4;
    v13[10] = v5;
    if (world)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF2BFE34;
      v13[3] = &unk_1E7A7E428;
      v13[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v13);
      objc_msgSend_didDetachFromWorld_(self, v9, self->_world, v10);
    }

    self->_world = a3;
    if (a3)
    {
      objc_msgSend_didAttachToWorld_(self, a2, a3, v3);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1AF2BFE94;
      v12[3] = &unk_1E7A7E428;
      v12[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v11, 1, v12);
    }
  }
}

- (VFXWorld)world
{
  if (!self->_isPresentationObject)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_isPresentationObject)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5530();
    }

    return 0;
  }

  else
  {
    entityObject = self->_entityObject;
    v10 = [VFXCoreEntityHandle alloc];
    if (entityObject)
    {
      v12 = objc_msgSend_copy(self->_entityObject, v7, v8, v9);

      return objc_msgSend_initWithEntityObject_(v10, v11, v12, v13);
    }

    else
    {
      v15 = objc_msgSend_copy(self->_tag, v7, v8, v9);

      return objc_msgSend_initWithTag_(v10, v14, v15, v16);
    }
  }
}

- (NSArray)bindings
{
  if (!self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, v2, v3);
  }

  result = objc_msgSend_allValues(self->_bindings, a2, v2, v3);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (id)_bindingNames:(BOOL)a3
{
  if (!self->_isPresentationObject)
  {
    objc_msgSend__updateModelFromPresentation(self, a2, a3, v3);
  }

  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = objc_msgSend_count(self->_bindings, v7, v8, v9);
  v13 = objc_msgSend_initWithCapacity_(v6, v11, v10, v12);
  bindings = self->_bindings;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF2C0158;
  v18[3] = &unk_1E7A7E6E8;
  v19 = a3;
  v18[4] = v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, v15, v18, v16);
  return v13;
}

- (id)bindingValueForKey:(id)a3
{
  if (self->_isPresentationObject)
  {

    return objc_msgSend_bindingPresentationValueForKey_(self, a2, a3, v3);
  }

  else
  {
    v6 = objc_msgSend___bindings(self, a2, a3, v3);
    result = objc_msgSend_valueForKey_(v6, v7, a3, v8);
    if (result)
    {

      return sub_1AF2C023C(result, v9, v10, v11);
    }
  }

  return result;
}

- (id)bindingForKey:(id)a3
{
  v5 = objc_msgSend___bindings(self, a2, a3, v3);

  return objc_msgSend_valueForKey_(v5, v6, a3, v7);
}

- (id)presentationBindingForKey:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_entityHelper(self, a2, a3, v3);
  v9 = objc_msgSend_bindings(v5, v6, v7, v8);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v27, 16);
  if (!v11)
  {
    return 0;
  }

  v15 = v11;
  v16 = *v24;
LABEL_3:
  v17 = 0;
  while (1)
  {
    if (*v24 != v16)
    {
      objc_enumerationMutation(v9);
    }

    v18 = *(*(&v23 + 1) + 8 * v17);
    v19 = objc_msgSend_bindingName(v18, v12, v13, v14);
    if (objc_msgSend_isEqualToString_(v19, v20, a3, v21))
    {
      return v18;
    }

    if (v15 == ++v17)
    {
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v23, v27, 16);
      if (v15)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)bindingPresentationValueForKey:(id)a3
{
  result = objc_msgSend_presentationBindingForKey_(self, a2, a3, v3);
  if (result)
  {

    return sub_1AF2C023C(result, v5, v6, v7);
  }

  return result;
}

- (BOOL)setBindingValue:(id)a3 forKey:(id)a4
{
  v7 = objc_msgSend___bindings(self, a2, a3, a4);
  v10 = objc_msgSend_valueForKey_(v7, v8, a4, v9);
  v14 = v10;
  if (v10 && !objc_msgSend_type(v10, v11, v12, v13))
  {
    v20 = objc_msgSend_dataUsingEncoding_(a3, v11, 4, v13);
    goto LABEL_7;
  }

  v15 = objc_msgSend_type(v14, v11, v12, v13);
  v16 = sub_1AF16A700(v15);
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = sub_1AF3711B4(a3, v17, 0);
    if (isKindOfClass)
    {
      objc_msgSend_setRawValueNoReplication_(v14, v19, v20, v21);
      v22 = sub_1AF3762E4(a3, v17);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1AF2C05DC;
      v25[3] = &unk_1E7A7E2E8;
      v25[4] = self;
      v25[5] = a4;
      v25[6] = v22;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v23, self, a4, v25);
LABEL_8:
      LOBYTE(v16) = 1;
      return v16;
    }

LABEL_7:
    objc_msgSend_setRawValue_(v14, v19, v20, v21);
    goto LABEL_8;
  }

  return v16;
}

- (id)bindingDataForKey:(id)a3
{
  v5 = objc_msgSend___bindings(self, a2, a3, v3);
  result = objc_msgSend_valueForKey_(v5, v6, a3, v7);
  if (result)
  {

    return objc_msgSend_rawValue(result, v9, v10, v11);
  }

  return result;
}

- (BOOL)setBindingValue:(void *)a3 size:(unint64_t)a4 forKey:(id)a5
{
  v7 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, a3, a4);

  return MEMORY[0x1EEE66B58](self, sel_setBindingData_forKey_, v7, a5);
}

- (BOOL)setBindingData:(id)a3 forKey:(id)a4
{
  v7 = objc_msgSend___bindings(self, a2, a3, a4);
  v10 = objc_msgSend_valueForKey_(v7, v8, a4, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setRawValueNoReplication_(v10, v11, a3, v12);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF2C077C;
    v16[3] = &unk_1E7A7E3B0;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v14, self, a4, v16);
  }

  return v13 != 0;
}

- (id)valueForKeyPath:(id)a3
{
  v6 = objc_msgSend_entityHelper(self, a2, a3, v3);
  v10 = objc_msgSend_world(self, v7, v8, v9);

  return MEMORY[0x1EEE66B58](v6, sel__valueForKeyPath_world_, a3, v10);
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v6 = objc_msgSend_entityHelper(self, a2, a3, a4);
  if ((objc_msgSend__setValue_forKeyPath_(v6, v7, a3, a4) & 1) == 0)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5570();
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_tag, @"tag");
  v8 = sub_1AF16AD60(self->_handle, v5, v6, v7);
  if (v8)
  {
    v9 = v8;
    objc_msgSend_encodeObject_forKey_(a3, v9, v9, @"bindings");
  }
}

- (VFXCoreEntityHandle)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = VFXCoreEntityHandle;
  v7 = [(VFXCoreEntityHandle *)&v24 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"tag");
    *(v7 + 6) = v13;
    *(v7 + 2) = sub_1AF16A5D0(v13);
    v14 = sub_1AF373968();
    v16 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(a3, v15, v14, @"bindings");
    sub_1AF16AE94(*(v7 + 2), v16);
    v20 = *(v7 + 2);
    if (v20)
    {
      sub_1AF16CDFC(v20, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v17, v18, v19);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v8, v22);
  }

  return v7;
}

@end