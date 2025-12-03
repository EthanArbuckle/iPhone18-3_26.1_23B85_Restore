@interface VFXCoreAsset
+ (id)assetWithEntityObject:(id)object;
- (BOOL)isHeader;
- (NSString)identifier;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXCoreAsset)initWithCoder:(id)coder;
- (VFXCoreAsset)initWithEntityObject:(id)object;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreEntityHandle;
- (id)entityObject;
- (id)entityTag;
- (id)initPresentation:(id)presentation;
- (id)presentationObject;
- (void)__CFObject;
- (void)addWorldReference:(id)reference;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)removeWorldReference:(id)reference;
- (void)resolveTag:(id)tag remap:(id)remap;
- (void)setIsTextureSource:(BOOL)source;
- (void)setWorld:(id)world;
@end

@implementation VFXCoreAsset

- (VFXCoreAsset)initWithEntityObject:(id)object
{
  v15.receiver = self;
  v15.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v15 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v8 = objc_msgSend_initWithEntityObject_(v5, v6, object, v7);
    v11 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v9, v8, v10);
    objc_msgSend_setBehaviorGraph_(v4, v12, v11, v13);
  }

  return v4;
}

- (id)initPresentation:(id)presentation
{
  v14.receiver = self;
  v14.super_class = VFXCoreAsset;
  v4 = [(VFXCoreAsset *)&v14 init];
  v8 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_name = objc_msgSend_name(presentation, v5, v6, v7);
    if (objc_msgSend_isTextureSource(presentation, v9, v10, v11))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(v8 + 40) = *(v8 + 40) & 0xFD | v12;
    v8->_behaviorGraph = *(presentation + 4);
  }

  return v8;
}

+ (id)assetWithEntityObject:(id)object
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithEntityObject_(v4, v5, object, v6);

  return v7;
}

- (id)presentationObject
{
  selfCopy = self;
  if ((*(self + 40) & 1) == 0)
  {
    v3 = [VFXCoreAsset alloc];
    v6 = objc_msgSend_initPresentation_(v3, v4, selfCopy, v5);

    v6[4] = selfCopy->_behaviorGraph;
    return v6;
  }

  return selfCopy;
}

- (void)setIsTextureSource:(BOOL)source
{
  if (source)
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

- (void)resolveTag:(id)tag remap:(id)remap
{
  v6 = objc_msgSend_behaviorGraph(self, a2, tag, remap);

  objc_msgSend_resolveTag_remap_(v6, v7, tag, remap);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCoreAsset;
  [(VFXCoreAsset *)&v3 dealloc];
}

- (void)copyTo:(id)to withContext:(id)context
{
  v7 = objc_msgSend_name(self, a2, to, context);
  objc_msgSend_setName_(to, v8, v7, v9);
  isTextureSource = objc_msgSend_isTextureSource(self, v10, v11, v12);
  objc_msgSend_setIsTextureSource_(to, v14, isTextureSource, v15);
  v19 = objc_msgSend_behaviorGraph(self, v16, v17, v18);
  v21 = sub_1AF2BED30(v19, context);

  objc_msgSend_setBehaviorGraph_(to, v20, v21, v22);
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v5 = objc_msgSend_behaviorGraph(self, a2, operation, block);
  v6 = *(block + 2);

  v6(block, v5, 0, 0);
}

- (void)__CFObject
{
  v4 = objc_msgSend_behaviorGraph(self, a2, v2, v3);

  return objc_msgSend___CFObject(v4, v5, v6, v7);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
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

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
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

    self->_world = world;
    if (world)
    {
      objc_msgSend_didAttachToWorld_(self, a2, world, v3);
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

- (VFXCoreAsset)initWithCoder:(id)coder
{
  v33.receiver = self;
  v33.super_class = VFXCoreAsset;
  v6 = [(VFXCoreAsset *)&v33 init];
  if (v6)
  {
    if (objc_msgSend_containsValueForKey_(coder, v4, @"entityTag", v5))
    {
      v9 = objc_opt_class();
      v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"entityTag");
      v12 = [VFXCoreEntityHandle alloc];
      v15 = objc_msgSend_initWithTag_(v12, v13, v11, v14);
    }

    else
    {
      if (!objc_msgSend_containsValueForKey_(coder, v7, @"entityHandle", v8))
      {
        v23 = objc_opt_class();
        v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v24, v23, @"behaviorGraph");
        goto LABEL_8;
      }

      v18 = objc_opt_class();
      v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"entityHandle");
    }

    v20 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v16, v15, v17);
LABEL_8:
    objc_msgSend_setBehaviorGraph_(v6, v21, v20, v22);
    v25 = objc_opt_class();
    v6->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"name");
    v29 = objc_msgSend_decodeBoolForKey_(coder, v27, @"isTextureSource", v28);
    objc_msgSend_setIsTextureSource_(v6, v30, v29, v31);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, behaviorGraph, @"behaviorGraph");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, name, @"name");
  }

  isTextureSource = objc_msgSend_isTextureSource(self, a2, name, v3);

  objc_msgSend_encodeBool_forKey_(coder, v8, isTextureSource, @"isTextureSource");
}

- (BOOL)isHeader
{
  selfCopy = self;
  v3 = sub_1AFCEEC98();

  return v3 & 1;
}

@end