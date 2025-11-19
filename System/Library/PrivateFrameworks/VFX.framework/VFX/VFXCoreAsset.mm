@interface VFXCoreAsset
+ (id)assetWithEntityObject:(id)a3;
- (BOOL)isHeader;
- (NSString)identifier;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXCoreAsset)initWithCoder:(id)a3;
- (VFXCoreAsset)initWithEntityObject:(id)a3;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreEntityHandle;
- (id)entityObject;
- (id)entityTag;
- (id)initPresentation:(id)a3;
- (id)presentationObject;
- (void)__CFObject;
- (void)addWorldReference:(id)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)removeWorldReference:(id)a3;
- (void)resolveTag:(id)a3 remap:(id)a4;
- (void)setIsTextureSource:(BOOL)a3;
- (void)setWorld:(id)a3;
@end

@implementation VFXCoreAsset

- (VFXCoreAsset)initWithEntityObject:(id)a3
{
  v15.receiver = self;
  v15.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v15 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v8 = objc_msgSend_initWithEntityObject_(v5, v6, a3, v7);
    v11 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v9, v8, v10);
    objc_msgSend_setBehaviorGraph_(v4, v12, v11, v13);
  }

  return v4;
}

- (id)initPresentation:(id)a3
{
  v14.receiver = self;
  v14.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v14 init];
  v8 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_name = objc_msgSend_name(a3, v5, v6, v7);
    if (objc_msgSend_isTextureSource(a3, v9, v10, v11))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(v8 + 40) = *(v8 + 40) & 0xFD | v12;
    v8->_behaviorGraph = *(a3 + 4);
  }

  return v8;
}

+ (id)assetWithEntityObject:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithEntityObject_(v4, v5, a3, v6);

  return v7;
}

- (id)presentationObject
{
  v2 = self;
  if ((*(self + 40) & 1) == 0)
  {
    v3 = [VFXCoreAsset alloc];
    v6 = objc_msgSend_initPresentation_(v3, v4, v2, v5);

    v6[4] = v2->_behaviorGraph;
    return v6;
  }

  return v2;
}

- (void)setIsTextureSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 40) = *(self + 40) & 0xFD | v3;
}

- (NSString)identifier
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend_tag(v4, v5, v6, v7);
}

- (id)entityTag
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend_tag(v4, v5, v6, v7);
}

- (id)entityObject
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend_entityObject(v4, v5, v6, v7);
}

- (id)coreEntityHandle
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend_coreEntityHandle(v4, v5, v6, v7);
}

- (void)resolveTag:(id)a3 remap:(id)a4
{
  v6 = objc_msgSend_behaviorGraph(self, a2, a3, a4);

  objc_msgSend_resolveTag_remap_(v6, v7, a3, a4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCoreAsset;
  [(VFXCoreAsset *)&v3 dealloc];
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v7 = objc_msgSend_name(self, a2, a3, a4);
  objc_msgSend_setName_(a3, v8, v7, v9);
  isTextureSource = objc_msgSend_isTextureSource(self, v10, v11, v12);
  objc_msgSend_setIsTextureSource_(a3, v14, isTextureSource, v15);
  v19 = objc_msgSend_behaviorGraph(self, v16, v17, v18);
  v21 = sub_1AF2BED30(v19, a4);

  objc_msgSend_setBehaviorGraph_(a3, v20, v21, v22);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(objc_opt_class());
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, v4);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (VFXBehaviorGraph)behaviorGraph
{
  v4 = *(self + 40);
  result = self->_behaviorGraph;
  if (v4)
  {
    return objc_msgSend_presentationObject(result, a2, v2, v3);
  }

  return result;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  v5 = objc_msgSend_behaviorGraph(self, a2, a3, a4);
  v6 = *(a4 + 2);

  v6(a4, v5, 0, 0);
}

- (void)__CFObject
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend___CFObject(v4, v5, v6, v7);
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
        sub_1AFDF4930(self, p_world, v8);
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
      v13[2] = sub_1AF29B7C0;
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
      v12[2] = sub_1AF29B820;
      v12[3] = &unk_1E7A7E428;
      v12[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v11, 1, v12);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 40) & 1) == 0)
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

- (VFXCoreAsset)initWithCoder:(id)a3
{
  v33.receiver = self;
  v33.super_class = VFXCoreAsset;
  v6 = [(VFXCoreAsset *)&v33 init];
  if (v6)
  {
    if (objc_msgSend_containsValueForKey_(a3, v4, @"entityTag", v5))
    {
      v9 = objc_opt_class();
      v11 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"entityTag");
      v12 = [VFXCoreEntityHandle alloc];
      v15 = objc_msgSend_initWithTag_(v12, v13, v11, v14);
    }

    else
    {
      if (!objc_msgSend_containsValueForKey_(a3, v7, @"entityHandle", v8))
      {
        v23 = objc_opt_class();
        v20 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v24, v23, @"behaviorGraph");
        goto LABEL_8;
      }

      v18 = objc_opt_class();
      v15 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v19, v18, @"entityHandle");
    }

    v20 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v16, v15, v17);
LABEL_8:
    objc_msgSend_setBehaviorGraph_(v6, v21, v20, v22);
    v25 = objc_opt_class();
    v6->_name = objc_msgSend_decodeObjectOfClass_forKey_(a3, v26, v25, @"name");
    v29 = objc_msgSend_decodeBoolForKey_(a3, v27, @"isTextureSource", v28);
    objc_msgSend_setIsTextureSource_(v6, v30, v29, v31);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, behaviorGraph, @"behaviorGraph");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, name, @"name");
  }

  isTextureSource = objc_msgSend_isTextureSource(self, a2, name, v3);

  objc_msgSend_encodeBool_forKey_(a3, v8, isTextureSource, @"isTextureSource");
}

- (BOOL)isHeader
{
  v2 = self;
  v3 = sub_1AFCEEC98();

  return v3 & 1;
}

@end