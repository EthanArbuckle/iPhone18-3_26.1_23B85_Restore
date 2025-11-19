@interface VFXRenderGraph
- (NSArray)attachments;
- (VFXRenderGraph)init;
- (VFXRenderGraph)initWithCoder:(id)a3;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_compileRenderGraphIfNeeded;
- (void)addWorldReference:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)finishLoadingWithSerializationContext:(id)a3;
- (void)invalidateCompiledGraph;
- (void)removeWorldReference:(id)a3;
- (void)setAuthoringGraph:(id)a3;
- (void)setWorld:(id)a3;
@end

@implementation VFXRenderGraph

- (VFXRenderGraph)init
{
  v11.receiver = self;
  v11.super_class = VFXRenderGraph;
  v2 = [(VFXRenderGraph *)&v11 init];
  if (v2)
  {
    v2->_authoringGraph = sub_1AF3C3044();
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v3, v4, v5);
    v2->_identifier = objc_msgSend_UUIDString(v6, v7, v8, v9);
  }

  return v2;
}

- (void)dealloc
{
  self->_world = 0;
  v3.receiver = self;
  v3.super_class = VFXRenderGraph;
  [(VFXRenderGraph *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_msgSend_allocWithZone_(VFXRenderGraph, a2, a3, v3);
  v9 = objc_msgSend_init(v5, v6, v7, v8);

  *(v9 + 8) = sub_1AF3C4D38();
  *(v9 + 40) = objc_msgSend_copy(self->_name, v10, v11, v12);
  return v9;
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
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF324CB4;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF324D14;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 56) & 1) == 0)
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

- (void)setAuthoringGraph:(id)a3
{
  authoringGraph = self->_authoringGraph;
  if (authoringGraph != a3)
  {

    self->_authoringGraph = a3;
  }
}

- (void)_compileRenderGraphIfNeeded
{
  if (!self->_graph)
  {
    v10[3] = v2;
    v10[4] = v3;
    runtimeAuthoringGraphCopy = self->_runtimeAuthoringGraphCopy;
    if (runtimeAuthoringGraphCopy)
    {
      v9 = 0;
      v10[0] = 0;
      v6 = CFXRGAuthoringGraphCompile(self->_world, runtimeAuthoringGraphCopy, &v9, v10);
      v7 = v10[0];

      self->_diagnostics = v10[0];
      if (v6)
      {
        v8 = v9;

        self->_graph = v9;
      }

      self->_runtimeAuthoringGraphCopy = 0;
    }
  }
}

- (void)invalidateCompiledGraph
{
  self->_graph = 0;

  self->_diagnostics = 0;
  self->_runtimeAuthoringGraphCopy = 0;
}

- (NSArray)attachments
{
  objc_msgSend_graph(self, a2, v2, v3);

  return sub_1AF3D4238();
}

- (void)encodeWithCoder:(id)a3
{
  v6 = objc_msgSend_valueForKey_(VFXTransaction, a2, @"serializationContext", v3);
  if (objc_msgSend_authoringGraph(self, v7, v8, v9))
  {
    if (v6)
    {
      v13 = objc_msgSend_authoringGraph(self, v10, v11, v12);
      v14 = sub_1AF3D41AC(v13, v6);
      if (v14)
      {
        objc_msgSend_encodeObject_forKey_(a3, v10, v14, @"authoringGraph");
      }
    }
  }

  objc_msgSend_encodeObject_forKey_(a3, v10, self->_name, @"name");
  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(a3, v15, identifier, @"identifier");
}

- (VFXRenderGraph)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = VFXRenderGraph;
  v4 = [(VFXRenderGraph *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"name");
    v7 = objc_opt_class();
    v4->_identifier = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"identifier");
    v9 = objc_opt_class();
    v4->_deferredLoadingData = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"authoringGraph");
  }

  return v4;
}

- (void)finishLoadingWithSerializationContext:(id)a3
{
  deferredLoadingData = self->_deferredLoadingData;
  if (deferredLoadingData)
  {
    v5 = sub_1AF3D4120(deferredLoadingData, a3);
  }

  else
  {
    if (self->_authoringGraph)
    {
      goto LABEL_5;
    }

    v5 = sub_1AF3C3044();
  }

  self->_authoringGraph = v5;
LABEL_5:

  self->_deferredLoadingData = 0;
}

@end