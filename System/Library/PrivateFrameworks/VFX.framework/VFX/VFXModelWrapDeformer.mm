@interface VFXModelWrapDeformer
- (BOOL)_getDeformedMeshBoundingBox:(id *)a3;
- (VFXModelWrapDeformer)initWithCoder:(id)a3;
- (VFXModelWrapDeformer)initWithDrivingNode:(id)a3 parameters:(id)a4;
- (VFXModelWrapDeformer)initWithInnerLayerNode:(id)a3 outerLayerNode:(id)a4 parameters:(id)a5;
- (VFXNode)drivingNode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dependencyNodeAtIndex:(unint64_t)a3;
- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6;
- (unint64_t)requiredInputs;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)initParametersIfNeededForDeformedNode:(id)a3;
@end

@implementation VFXModelWrapDeformer

- (VFXModelWrapDeformer)initWithDrivingNode:(id)a3 parameters:(id)a4
{
  v9.receiver = self;
  v9.super_class = VFXModelWrapDeformer;
  v6 = [(VFXModelWrapDeformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isLegacySingleLayerDeformer = 1;
    objc_storeWeak(&v6->_legacyDrivingNode, a3);
    v7->_parameters = a4;
  }

  return v7;
}

- (VFXModelWrapDeformer)initWithInnerLayerNode:(id)a3 outerLayerNode:(id)a4 parameters:(id)a5
{
  v11.receiver = self;
  v11.super_class = VFXModelWrapDeformer;
  v8 = [(VFXModelWrapDeformer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_innerLayerNode, a3);
    objc_storeWeak(&v9->_outerLayerNode, a4);
    v9->_parameters = a5;
  }

  return v9;
}

- (void)initParametersIfNeededForDeformedNode:(id)a3
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  v6 = objc_loadWeak(&self->_outerLayerNode);
  parameters = self->_parameters;
  v11 = objc_msgSend_nodeRef(Weak, v8, v9, v10);
  v15 = objc_msgSend_nodeRef(v6, v12, v13, v14);
  objc_msgSend_nodeRef(a3, v16, v17, v18);

  MEMORY[0x1EEE66B58](parameters, sel_initParametersIfNeededWithInnerLayerNodeRef_outerLayerNodeRef_deformedNodeRef_, v11, v15);
}

- (id)copyWithZone:(_NSZone *)a3
{
  Weak = objc_loadWeak(&self->_innerLayerNode);
  v5 = objc_loadWeak(&self->_outerLayerNode);
  v6 = objc_alloc(objc_opt_class());

  return MEMORY[0x1EEE66B58](v6, sel_initWithInnerLayerNode_outerLayerNode_parameters_, Weak, v5);
}

- (void)dealloc
{
  objc_storeWeak(&self->_innerLayerNode, 0);
  objc_storeWeak(&self->_outerLayerNode, 0);
  objc_storeWeak(&self->_legacyDrivingNode, 0);

  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformer;
  [(VFXModelWrapDeformer *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = VFXModelWrapDeformer;
  [(VFXModelDeformer *)&v12 encodeWithCoder:?];
  objc_msgSend_initParametersIfNeededForDeformedNode_(self, v5, 0, v6);
  objc_msgSend_encodeObject_forKey_(a3, v7, self->_parameters, @"parameters");
  Weak = objc_loadWeak(&self->_innerLayerNode);
  objc_msgSend_encodeObject_forKey_(a3, v9, Weak, @"innerLayerNode");
  v10 = objc_loadWeak(&self->_outerLayerNode);
  objc_msgSend_encodeObject_forKey_(a3, v11, v10, @"outerLayerNode");
}

- (VFXModelWrapDeformer)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = VFXModelWrapDeformer;
  v4 = [(VFXModelDeformer *)&v14 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_parameters = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"parameters");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"innerLayerNode");
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"outerLayerNode");
    objc_storeWeak(&v4->_innerLayerNode, v9);
    objc_storeWeak(&v4->_outerLayerNode, v12);
  }

  return v4;
}

- (VFXNode)drivingNode
{
  v2 = 40;
  if (!self->_legacyDrivingNode)
  {
    v2 = 8;
  }

  return objc_loadWeak((&self->super.super.isa + v2));
}

- (unint64_t)requiredInputs
{
  if (self->_isLegacySingleLayerDeformer)
  {
    return 9;
  }

  else
  {
    return 73;
  }
}

- (BOOL)_getDeformedMeshBoundingBox:(id *)a3
{
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v9 = objc_msgSend_nodeRef(Weak, v6, v7, v8);

    LOBYTE(v10) = sub_1AF1B7A3C(v9, a3);
  }

  else
  {
    v11 = objc_loadWeak(&self->_innerLayerNode);
    v12 = objc_loadWeak(&self->_outerLayerNode);
    v16 = objc_msgSend_nodeRef(v11, v13, v14, v15);
    v20 = objc_msgSend_nodeRef(v12, v17, v18, v19);
    if (v16)
    {
      v23 = v20 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v24 = v20;
      v10 = sub_1AF1B7A3C(v16, &v30);
      if (v10)
      {
        LOBYTE(v10) = sub_1AF1B7A3C(v24, v29);
        v22 = v29[0];
        v21 = v29[1];
      }
    }

    v25 = vminnmq_f32(vsubq_f32(v30, v31), vsubq_f32(v22, v21));
    v26 = vmaxnmq_f32(vaddq_f32(v30, v31), vaddq_f32(v22, v21));
    v27.i64[0] = 0x3F0000003F000000;
    v27.i64[1] = 0x3F0000003F000000;
    *a3 = vmulq_f32(vaddq_f32(v25, v26), v27);
    *(a3 + 1) = vmulq_f32(vsubq_f32(v26, v25), v27);
  }

  return v10;
}

- (id)dependencyNodeAtIndex:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = &OBJC_IVAR___VFXModelWrapDeformer__outerLayerNode;
    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  if (!a3)
  {
    if (self->_isLegacySingleLayerDeformer)
    {
      v3 = &OBJC_IVAR___VFXModelWrapDeformer__legacyDrivingNode;
    }

    else
    {
      v3 = &OBJC_IVAR___VFXModelWrapDeformer__innerLayerNode;
    }

    return objc_loadWeak((&self->super.super.isa + *v3));
  }

  return 0;
}

- (id)newDeformerInstanceForNode:(id)a3 outputs:(unint64_t)a4 computeVertexCount:(unint64_t)a5 context:(id)a6
{
  v7 = a5;
  if (self->_isLegacySingleLayerDeformer)
  {
    Weak = objc_loadWeak(&self->_legacyDrivingNode);
    v11 = [VFXModelWrapDeformerInstance alloc];

    return sub_1AFDE1940(v11, a3, Weak, self, v12, v7, a6);
  }

  else
  {
    v14 = objc_loadWeak(&self->_innerLayerNode);
    v15 = objc_loadWeak(&self->_outerLayerNode);
    v16 = [VFXModelWrapDeformerInstance alloc];

    return sub_1AFDE1C14(v16, a3, v14, v15, self, v17, v7, a6);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  if (a3 != 1)
  {
    v11[11] = v4;
    v11[12] = v5;
    Weak = objc_loadWeak(&self->_innerLayerNode);
    v9 = objc_loadWeak(&self->_outerLayerNode);
    if (Weak)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF1E0D6C;
      v11[3] = &unk_1E7A7C0C8;
      v11[4] = self;
      (*(a4 + 2))(a4, Weak, 1, v11);
    }

    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF1E0D80;
      v10[3] = &unk_1E7A7C0C8;
      v10[4] = self;
      (*(a4 + 2))(a4, v9, 1, v10);
    }
  }
}

@end