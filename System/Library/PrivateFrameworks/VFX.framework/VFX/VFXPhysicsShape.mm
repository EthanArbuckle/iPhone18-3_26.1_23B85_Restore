@interface VFXPhysicsShape
+ (VFXPhysicsShape)shapeWithModel:(id)model;
+ (VFXPhysicsShape)shapeWithNode:(id)node flattened:(BOOL)flattened;
+ (VFXPhysicsShape)shapeWithShapes:(id)shapes transforms:(id)transforms;
+ (id)defaultShapeForModel:(id)model;
- (NSArray)shapes;
- (VFXModel)model;
- (VFXNode)shapeNode;
- (VFXPhysicsShape)init;
- (VFXPhysicsShape)initWithCoder:(id)coder;
- (VFXPhysicsShape)initWithContent:(id)content;
- (id)_shapeHandle:(__CFXNode *)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scaleValue;
- (id)valueForKey:(id)key;
- (void)_customDecodingOfVFXPhysicsShape:(id)shape;
- (void)_customEncodingOfVFXPhysicsShape:(id)shape;
- (void)_setNodeScale:(VFXPhysicsShape *)self;
- (void)_setShapeObject:(id)object;
- (void)_updateScale;
- (void)commonInit;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)didAddToPhysicsBody:(id)body;
- (void)didChange;
- (void)didRemoveFromPhysicsBody:(id)body;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)invalidate;
- (void)setFlattened:(BOOL)flattened;
- (void)setMargin:(float)margin;
- (void)setModel:(id)model;
- (void)setScale:(VFXPhysicsShape *)self;
- (void)setScaleValue:(id)value;
- (void)setShapeNode:(id)node;
- (void)setShapes:(id)shapes;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsShape

- (id)scaleValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_scale(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)setScaleValue:(id)value
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0, v3);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v28 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v27 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  objc_msgSend_setScale_(self, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v27, v28)));
}

- (void)commonInit
{
  self->_physicsBodiesLock._os_unfair_lock_opaque = 0;
  self->_physicsBodies = CFArrayCreateMutable(0, 1, 0);
  __asm { FMOV            V0.4S, #1.0 }

  *self->_scale = _Q0;
  self->_margin = 0.0;
}

- (VFXPhysicsShape)initWithContent:(id)content
{
  v10.receiver = self;
  v10.super_class = VFXPhysicsShape;
  v4 = [(VFXPhysicsShape *)&v10 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6, v7);
    v8->_referenceObject = content;
  }

  return v8;
}

- (VFXPhysicsShape)init
{
  v8.receiver = self;
  v8.super_class = VFXPhysicsShape;
  v2 = [(VFXPhysicsShape *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4, v5);
  }

  return v6;
}

+ (VFXPhysicsShape)shapeWithModel:(id)model
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContent_(v4, v5, model, v6);

  return v7;
}

+ (VFXPhysicsShape)shapeWithNode:(id)node flattened:(BOOL)flattened
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithContent_(v6, v7, node, v8);
  v9[80] = flattened;

  return v9;
}

+ (VFXPhysicsShape)shapeWithShapes:(id)shapes transforms:(id)transforms
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithContent_(v6, v7, shapes, v8);
  objc_msgSend__setTransforms_(v9, v10, transforms, v11);

  return v9;
}

- (void)didAddToPhysicsBody:(id)body
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  CFArrayAppendValue(self->_physicsBodies, body);

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)didRemoveFromPhysicsBody:(id)body
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  physicsBodies = self->_physicsBodies;
  v8.length = CFArrayGetCount(physicsBodies);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(physicsBodies, v8, body);
  if (FirstIndexOfValue == -1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA904();
    }
  }

  else
  {
    CFArrayRemoveValueAtIndex(self->_physicsBodies, FirstIndexOfValue);
  }

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)didChange
{
  os_unfair_lock_lock(&self->_physicsBodiesLock);
  sub_1AF28A5FC(self->_physicsBodies, &unk_1F24EC4B8);

  os_unfair_lock_unlock(&self->_physicsBodiesLock);
}

- (void)invalidate
{
  self->_shape = 0;

  objc_msgSend_didChange(self, v3, v4, v5);
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    objc_msgSend_invalidate(self, a2, type, v3);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsShape;
  [(VFXPhysicsShape *)&v3 dealloc];
}

- (id)_shapeHandle:(__CFXNode *)handle
{
  result = self->_shape;
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend_modelRef(self->_referenceObject, v6, v7, v8);
      v10 = sub_1AF35D594(v9, self->_type);
    }

    else
    {
      v11 = objc_msgSend_shapeNode(self, v6, v7, v8);
      if (v11)
      {
        v15 = objc_msgSend_nodeRef(v11, v12, v13, v14);
        v10 = sub_1AF35D5F8(v15, self->_type, self->_flattened);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = sub_1AF35D808(self->_referenceObject, self->_transforms);
        }

        else if (!handle || ((v16 = sub_1AF1B75A0(handle), type = self->_type, !v16) ? (v10 = sub_1AF35D5F8(handle, type, self->_flattened)) : (v10 = sub_1AF35D594(v16, type)), !v10))
        {
          v18 = sub_1AF0D5194();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDFA938();
          }

          v10 = 0;
        }
      }
    }

    result = v10;
    self->_shape = result;
    if (result)
    {
      margin = self->_margin;
      if (margin != 0.0)
      {
        v23 = objc_msgSend_btShape(result, v19, v20, v21);
        (*(*v23 + 88))(v23, margin);
        return self->_shape;
      }
    }
  }

  return result;
}

- (void)setScale:(VFXPhysicsShape *)self
{
  v3 = v2;
  if (*v2.i32 != 0.0)
  {
    v4 = vceqz_f32(vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL));
    if ((v4.i8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v8 = v3;
      if ((VFXVector3EqualToVector3(*self->_scale, v3) & 1) == 0)
      {
        *self->_scale = v8;

        MEMORY[0x1EEE66B58](self, sel__updateScale, v6, v7);
      }
    }
  }
}

- (void)_setNodeScale:(VFXPhysicsShape *)self
{
  v3 = v2;
  if (*v2.i32 != 0.0)
  {
    v4 = vceqz_f32(vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL));
    if ((v4.i8[0] & 1) == 0 && (v4.i8[4] & 1) == 0)
    {
      v8 = v3;
      if ((VFXVector3EqualToVector3(*self->_nodeScale, v3) & 1) == 0)
      {
        *self->_nodeScale = v8;

        MEMORY[0x1EEE66B58](self, sel__updateScale, v6, v7);
      }
    }
  }
}

- (void)_updateScale
{
  shape = self->_shape;
  if (shape)
  {
    v6 = *self->_scale;
    v7 = vmulq_f32(v6, *self->_nodeScale);
    if (v7.f32[0] != 0.0)
    {
      v6.i32[0] = v7.i32[1];
      if (v7.f32[1] != 0.0)
      {
        v8 = v7.i32[2];
        if (v7.f32[2] != 0.0)
        {
          v10 = v7.i64[0];
          v9 = objc_msgSend_btShape(shape, a2, v2, v3, *v6.i64);
          v11 = v10;
          v12 = v8;
          v13 = 0;
          (*(*v9 + 48))(v9, &v11);
        }
      }
    }

    objc_msgSend_didChange(self, a2, v2, v3, *v6.i64);
  }
}

- (void)setMargin:(float)margin
{
  if (self->_margin != margin)
  {
    self->_margin = margin;
    shape = self->_shape;
    if (shape)
    {
      v7 = *(*objc_msgSend_btShape(shape, a2, v3, v4) + 88);
      v8.n128_f32[0] = margin;

      v7(v8);
    }
  }
}

- (void)setFlattened:(BOOL)flattened
{
  if (self->_flattened != flattened)
  {
    self->_flattened = flattened;
    objc_msgSend_invalidate(self, a2, flattened, v3);
  }
}

- (VFXModel)model
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_referenceObject;
  }

  else
  {
    return 0;
  }
}

- (void)setModel:(id)model
{
  referenceObject = self->_referenceObject;
  if (referenceObject != model)
  {

    self->_referenceObject = model;
  }

  objc_msgSend_invalidate(self, a2, model, v3);
}

- (VFXNode)shapeNode
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_copyWeakRef(self->_referenceObject, v3, v4, v5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_referenceObject;
    }

    else
    {
      return 0;
    }
  }
}

- (void)setShapeNode:(id)node
{
  referenceObject = self->_referenceObject;
  if (referenceObject != node)
  {

    v7 = objc_alloc_init(VFXWeakPointer);
    objc_msgSend_setWeakRef_(v7, v8, node, v9);
    self->_referenceObject = v7;
  }

  objc_msgSend_invalidate(self, a2, node, v3);
}

- (NSArray)shapes
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_referenceObject;
  }

  else
  {
    return 0;
  }
}

- (void)setShapes:(id)shapes
{
  referenceObject = self->_referenceObject;
  if (referenceObject != shapes)
  {

    self->_referenceObject = shapes;
  }

  objc_msgSend_invalidate(self, a2, shapes, v3);
}

- (void)_setShapeObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    objc_msgSend_setShapeNode_(self, v5, object, v7);
  }

  else
  {
    referenceObject = self->_referenceObject;
    if (referenceObject != object)
    {

      self->_referenceObject = object;
    }

    objc_msgSend_invalidate(self, v5, v6, v7);
  }
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  referenceObject = self->_referenceObject;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF35DF00;
  v5[3] = &unk_1E7A7C0C8;
  v5[4] = self;
  (*(block + 2))(block, referenceObject, 1, v5);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v7 = objc_msgSend_shapeNode(self, a2, to, context);
  if (v7)
  {
    v10 = sub_1AF2BED30(v7, context);
    objc_msgSend__setShapeObject_(to, v11, v10, v12);
  }

  else
  {
    objc_msgSend__setShapeObject_(to, v8, self->_referenceObject, v9);
  }

  objc_msgSend_margin(self, v13, v14, v15);
  objc_msgSend_setMargin_(to, v16, v17, v18);
  objc_msgSend_scale(self, v19, v20, v21);
  objc_msgSend_setScale_(to, v22, v23, v24);
  *(to + 80) = self->_flattened;
  v28 = objc_msgSend_type(self, v25, v26, v27);
  objc_msgSend_setType_(to, v29, v28, v30);
  *(to + 2) = objc_msgSend_transforms(self, v31, v32, v33);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

+ (id)defaultShapeForModel:(id)model
{
  v5 = objc_msgSend_valueForKey_(model, a2, @"VFXDefaultPhysicsShape", v3);
  v11 = objc_msgSend_pointerValue(v5, v6, v7, v8);
  if (!v11)
  {
    v11 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v9, model, v10);
    v14 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], v12, v11, v13);
    objc_msgSend_setValue_forKey_(model, v15, v14, @"VFXDefaultPhysicsShape");
  }

  return v11;
}

- (void)_customEncodingOfVFXPhysicsShape:(id)shape
{
  transforms = self->_transforms;
  if (transforms)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v7 = objc_msgSend_count(transforms, a2, shape, v3);
    objc_msgSend_encodeInteger_forKey_(shape, v8, v7, @"transformsCount");
    v9 = self->_transforms;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF35F6A8;
    v12[3] = &unk_1E7A797A8;
    v12[4] = shape;
    v12[5] = v13;
    objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v12, v11);
    _Block_object_dispose(v13, 8);
  }
}

- (void)_customDecodingOfVFXPhysicsShape:(id)shape
{
  v6 = objc_msgSend_decodeIntegerForKey_(shape, a2, @"transformsCount", v3);
  if (v6 >= 1)
  {
    v9 = v6;
    v10 = 0;
    self->_transforms = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v7, v6, v8);
    do
    {
      transforms = self->_transforms;
      v14 = MEMORY[0x1E696B098];
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"transform%d", v12, v10);
      *&v16 = sub_1AF371C4C(shape, v15).n128_u64[0];
      v20 = objc_msgSend_valueWithVFXMatrix4_(v14, v17, v18, v19, v16);
      objc_msgSend_addObject_(transforms, v21, v20, v22);
      ++v10;
    }

    while (v9 != v10);
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend__customEncodingOfVFXPhysicsShape_(self, a2, coder, v3);
  referenceObject = self->_referenceObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    referenceObject = objc_msgSend_copyWeakRef(self->_referenceObject, v7, v8, v9);
  }

  if (referenceObject)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, referenceObject, @"referenceObject");
  }

  *&v10 = self->_margin;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"margin", v9, v10);
  if (self->_flattened)
  {
    objc_msgSend_encodeBool_forKey_(coder, v11, 1, @"flattened");
  }

  sub_1AF371A8C(coder, @"scale", *self->_scale);
  type = self->_type;

  objc_msgSend_encodeInteger_forKey_(coder, v12, type, @"type");
}

- (VFXPhysicsShape)initWithCoder:(id)coder
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = VFXPhysicsShape;
  v4 = [(VFXPhysicsShape *)&v39 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6, v7);
    v12 = objc_msgSend_immediateMode(VFXTransaction, v9, v10, v11);
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, 1, v14);
    objc_msgSend__customDecodingOfVFXPhysicsShape_(v8, v15, coder, v16);
    v17 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v40, 4);
    v22 = objc_msgSend_setWithArray_(v17, v20, v19, v21);
    v8->_referenceObject = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v23, v22, @"referenceObject");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      referenceObject = v8->_referenceObject;
      v8->_referenceObject = 0;
      objc_msgSend_setShapeNode_(v8, v24, referenceObject, v25);
      v27 = referenceObject;
    }

    objc_msgSend_decodeFloatForKey_(coder, v24, @"margin", v25);
    v8->_margin = v28;
    v8->_flattened = objc_msgSend_decodeBoolForKey_(coder, v29, @"flattened", v30);
    if (objc_msgSend_containsValueForKey_(coder, v31, @"scale", v32))
    {
      *&v35 = sub_1AF371BC4(coder, @"scale");
      *v8->_scale = v35;
    }

    if (objc_msgSend_containsValueForKey_(coder, v33, @"type", v34))
    {
      v8->_type = objc_msgSend_decodeIntegerForKey_(coder, v36, @"type", v37);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v36, v12, v37);
  }

  return v8;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"scale", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_scale(self, v6, v7, v8);

    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VFXPhysicsShape;
    return [(VFXPhysicsShape *)&v14 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"scale", key))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8, v9);

    objc_msgSend_setScale_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXPhysicsShape;
    [(VFXPhysicsShape *)&v13 setValue:value forKey:key];
  }
}

@end