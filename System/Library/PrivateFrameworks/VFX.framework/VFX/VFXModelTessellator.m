@interface VFXModelTessellator
+ (id)modelTessellator;
- ($5966F384EA6F1F480C83547CCF3CA5D4)_tessellatorValueForModel:(SEL)a3;
- (VFXModelTessellator)init;
- (VFXModelTessellator)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addClient:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeClient:(id)a3;
- (void)setAdaptive:(BOOL)a3;
- (void)setEdgeTessellationFactor:(float)a3;
- (void)setInsideTessellationFactor:(float)a3;
- (void)setMaximumEdgeLength:(float)a3;
- (void)setScreenSpace:(BOOL)a3;
- (void)setSmoothingMode:(int64_t)a3;
- (void)setTessellationFactorScale:(float)a3;
- (void)setTessellationPartitionMode:(unint64_t)a3;
- (void)tessellatorValueDidChange;
- (void)tessellatorValueDidChangeForClient:(id)a3;
@end

@implementation VFXModelTessellator

- (VFXModelTessellator)init
{
  v9.receiver = self;
  v9.super_class = VFXModelTessellator;
  v2 = [(VFXModelTessellator *)&v9 init];
  if (v2)
  {
    *(v2 + 1) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 20) = _Q0;
    *(v2 + 40) = xmmword_1AFE21110;
  }

  return v2;
}

- (VFXModelTessellator)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = VFXModelTessellator;
  v4 = [(VFXModelTessellator *)&v26 init];
  if (v4)
  {
    v4->_clients = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    objc_msgSend_decodeFloatForKey_(a3, v5, @"tessellationFactorScale", v6);
    v4->_tessellationFactorScale = v7;
    objc_msgSend_decodeFloatForKey_(a3, v8, @"maximumEdgeLength", v9);
    v4->_maximumEdgeLength = v10;
    objc_msgSend_decodeFloatForKey_(a3, v11, @"edgeTessellationFactor", v12);
    v4->_edgeTessellationFactor = v13;
    objc_msgSend_decodeFloatForKey_(a3, v14, @"insideTessellationFactor", v15);
    v4->_insideTessellationFactor = v16;
    v4->_adaptive = objc_msgSend_decodeBoolForKey_(a3, v17, @"adaptive", v18);
    v4->_screenSpace = objc_msgSend_decodeBoolForKey_(a3, v19, @"screenSpace", v20);
    v4->_partitionMode = objc_msgSend_decodeIntegerForKey_(a3, v21, @"tessellationPartitionMode", v22);
    v4->_smoothingMode = objc_msgSend_decodeIntegerForKey_(a3, v23, @"smoothingMode", v24);
  }

  return v4;
}

+ (id)modelTessellator
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  *&v4 = self->_tessellationFactorScale;
  objc_msgSend_encodeFloat_forKey_(a3, a2, @"tessellationFactorScale", v3, v4);
  *&v7 = self->_maximumEdgeLength;
  objc_msgSend_encodeFloat_forKey_(a3, v8, @"maximumEdgeLength", v9, v7);
  *&v10 = self->_edgeTessellationFactor;
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"edgeTessellationFactor", v12, v10);
  *&v13 = self->_insideTessellationFactor;
  objc_msgSend_encodeFloat_forKey_(a3, v14, @"insideTessellationFactor", v15, v13);
  objc_msgSend_encodeBool_forKey_(a3, v16, self->_adaptive, @"adaptive");
  objc_msgSend_encodeBool_forKey_(a3, v17, self->_screenSpace, @"screenSpace");
  objc_msgSend_encodeInteger_forKey_(a3, v18, self->_partitionMode, @"tessellationPartitionMode");
  smoothingMode = self->_smoothingMode;

  objc_msgSend_encodeInteger_forKey_(a3, v19, smoothingMode, @"smoothingMode");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXModelTessellator;
  [(VFXModelTessellator *)&v3 dealloc];
}

- (id)description
{
  if (self->_adaptive)
  {
    screenSpace = self->_screenSpace;
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    maximumEdgeLength = self->_maximumEdgeLength;
    if (screenSpace)
    {
      return objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p, screen space (maximum edge length: %.3f px)>", v8, maximumEdgeLength, v6, self, self->_maximumEdgeLength);
    }

    else
    {
      return objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p, local space (maximum edge length: %.3f)>", v8, maximumEdgeLength, v6, self, self->_maximumEdgeLength);
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    return objc_msgSend_stringWithFormat_(v11, v14, @"<%@: %p, uniform (inside: %.3f, edge: %.3f)>", v15, self->_insideTessellationFactor, v13, self, self->_insideTessellationFactor, self->_edgeTessellationFactor);
  }
}

- (void)addClient:(id)a3
{
  objc_msgSend_addObject_(self->_clients, a2, a3, v3);

  objc_msgSend_tessellatorValueDidChangeForClient_(self, v6, a3, v7);
}

- (void)removeClient:(id)a3
{
  v6 = objc_msgSend_modelRef(a3, a2, a3, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2F96EC;
  v10[3] = &unk_1E7A7E6C0;
  v10[4] = v6;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, a3, v10);
  objc_msgSend_removeObject_(self->_clients, v8, a3, v9);
}

- (void)tessellatorValueDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, a2, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(clients);
        }

        objc_msgSend_tessellatorValueDidChangeForClient_(self, v5, *(*(&v10 + 1) + 8 * i), v6);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- ($5966F384EA6F1F480C83547CCF3CA5D4)_tessellatorValueForModel:(SEL)a3
{
  v7 = objc_msgSend_tessellator(a4, a3, a4, v4);
  *&retstr->var2 = 0;
  retstr->var4 = 0;
  *&retstr->var0 = 0;
  if (objc_msgSend_subdivisionLevel(a4, v8, v9, v10))
  {
    v14 = 4;
  }

  else if (objc_msgSend_isAdaptive(v7, v11, v12, v13))
  {
    if (objc_msgSend_isScreenSpace(v7, v11, v12, v13))
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 1;
  }

  retstr->var0 = v14;
  objc_msgSend_tessellationFactorScale(v7, v11, v12, v13);
  if (v18 < 0.001)
  {
    v18 = 0.001;
  }

  retstr->var1 = v18;
  retstr->var2 = objc_msgSend_tessellationPartitionMode(v7, v15, v16, v17);
  retstr->var3 = objc_msgSend_smoothingMode(v7, v19, v20, v21);
  if (v14 <= 2u)
  {
    if (v14 == 1)
    {
      objc_msgSend_edgeTessellationFactor(v7, v22, v23, v24);
      retstr->var4.var0.var0 = v25;
      result = objc_msgSend_insideTessellationFactor(v7, v26, v27, v28);
      retstr->var4.var0.var1 = v30;
      return result;
    }

    goto LABEL_14;
  }

  if (v14 == 3)
  {
LABEL_14:
    result = objc_msgSend_maximumEdgeLength(v7, v22, v23, v24);
    retstr->var4.var0.var0 = v31;
    return result;
  }

  objc_msgSend_tessellationFactorScale(v7, v22, v23, v24);
  retstr->var4.var3.var0 = v32;
  result = objc_msgSend_isScreenSpace(v7, v33, v34, v35);
  if (result)
  {
    v36 = 3;
  }

  else
  {
    v36 = 1;
  }

  BYTE1(retstr->var4.var0.var0) = v36;
  return result;
}

- (void)tessellatorValueDidChangeForClient:(id)a3
{
  v8 = 0uLL;
  v9 = 0;
  if (self)
  {
    objc_msgSend__tessellatorValueForModel_(self, a2, a3, v3);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2F99E0;
  v5[3] = &unk_1E7A7EB60;
  v5[4] = a3;
  v6 = v8;
  v7 = v9;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, a3, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_tessellationFactorScale(self, v5, v6, v7);
  v4[8] = v8;
  objc_msgSend_maximumEdgeLength(self, v9, v10, v11);
  v4[5] = v12;
  objc_msgSend_edgeTessellationFactor(self, v13, v14, v15);
  v4[6] = v16;
  objc_msgSend_insideTessellationFactor(self, v17, v18, v19);
  v4[7] = v20;
  *(v4 + 16) = objc_msgSend_isAdaptive(self, v21, v22, v23);
  *(v4 + 17) = objc_msgSend_isScreenSpace(self, v24, v25, v26);
  *(v4 + 5) = objc_msgSend_smoothingMode(self, v27, v28, v29);
  return v4;
}

- (void)setSmoothingMode:(int64_t)a3
{
  if (self->_smoothingMode != a3)
  {
    self->_smoothingMode = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange, a3);
  }
}

- (void)setAdaptive:(BOOL)a3
{
  if (self->_adaptive != a3)
  {
    self->_adaptive = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange, a3);
  }
}

- (void)setScreenSpace:(BOOL)a3
{
  if (self->_screenSpace != a3)
  {
    self->_screenSpace = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange, a3);
  }
}

- (void)setTessellationFactorScale:(float)a3
{
  if (self->_tessellationFactorScale != a3)
  {
    self->_tessellationFactorScale = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange);
  }
}

- (void)setEdgeTessellationFactor:(float)a3
{
  if (self->_edgeTessellationFactor != a3)
  {
    self->_edgeTessellationFactor = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange);
  }
}

- (void)setInsideTessellationFactor:(float)a3
{
  if (self->_insideTessellationFactor != a3)
  {
    self->_insideTessellationFactor = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange);
  }
}

- (void)setMaximumEdgeLength:(float)a3
{
  if (self->_maximumEdgeLength != a3)
  {
    self->_maximumEdgeLength = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange);
  }
}

- (void)setTessellationPartitionMode:(unint64_t)a3
{
  if (self->_partitionMode != a3)
  {
    self->_partitionMode = a3;
    (MEMORY[0x1EEE66B58])(self, sel_tessellatorValueDidChange, a3);
  }
}

@end