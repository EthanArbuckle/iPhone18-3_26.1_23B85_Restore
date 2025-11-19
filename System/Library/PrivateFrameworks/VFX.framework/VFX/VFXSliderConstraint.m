@interface VFXSliderConstraint
+ (id)sliderConstraint;
- (VFXSliderConstraint)init;
- (VFXSliderConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCollisionCategoryBitMask:(unint64_t)a3;
- (void)setOffset:(VFXSliderConstraint *)self;
- (void)setRadius:(float)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation VFXSliderConstraint

- (VFXSliderConstraint)init
{
  v8.receiver = self;
  v8.super_class = VFXSliderConstraint;
  v2 = [(VFXConstraint *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF157008();
    v2->_categoryBitMask = 0;
    v2->super._constraintRef = v3;
    v2->_radius = 1.0;
    objc_msgSend_didInitConstraintRef(v2, v4, v5, v6);
  }

  return v2;
}

+ (id)sliderConstraint
{
  v2 = objc_alloc_init(VFXSliderConstraint);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_collisionCategoryBitMask(self, v5, v6, v7);
  objc_msgSend_setCollisionCategoryBitMask_(v4, v9, v8, v10);
  objc_msgSend_offset(self, v11, v12, v13);
  objc_msgSend_setOffset_(v4, v14, v15, v16);
  objc_msgSend_radius(self, v17, v18, v19);
  objc_msgSend_setRadius_(v4, v20, v21, v22);
  objc_msgSend_copyTo_(self, v23, v4, v24);
  return v4;
}

- (void)setCollisionCategoryBitMask:(unint64_t)a3
{
  self->_categoryBitMask = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBBC8;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setRadius:(float)a3
{
  self->_radius = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBC74;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v3);
}

- (void)setOffset:(VFXSliderConstraint *)self
{
  *self->_offset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBD24;
  v3[3] = &unk_1E7A7E1D0;
  v3[4] = self;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"offset", v3);
}

- (id)valueForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"offset", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_offset(self, v6, v7, v8);

    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11, v12);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VFXSliderConstraint;
    return [(VFXSliderConstraint *)&v14 valueForKey:a3];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (objc_msgSend_isEqualToString_(a4, a2, @"offset", a4))
  {
    objc_msgSend_VFXFloat3Value(a3, v7, v8, v9);

    objc_msgSend_setOffset_(self, v10, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXSliderConstraint;
    [(VFXSliderConstraint *)&v13 setValue:a3 forKey:a4];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXSliderConstraint;
  [(VFXConstraint *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_categoryBitMask, @"collisionCategoryBitMask");
  *&v6 = self->_radius;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"radius", v8, v6);
  sub_1AF371A8C(a3, @"offset", *self->_offset);
}

- (VFXSliderConstraint)initWithCoder:(id)a3
{
  v30.receiver = self;
  v30.super_class = VFXSliderConstraint;
  v7 = [(VFXConstraint *)&v30 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v7->super._constraintRef = sub_1AF157008();
    objc_msgSend_finalizeDecodeConstraint_(v7, v11, a3, v12);
    v15 = objc_msgSend_decodeIntegerForKey_(a3, v13, @"collisionCategoryBitMask", v14);
    objc_msgSend_setCollisionCategoryBitMask_(v7, v16, v15, v17);
    objc_msgSend_decodeFloatForKey_(a3, v18, @"radius", v19);
    objc_msgSend_setRadius_(v7, v20, v21, v22);
    v23 = sub_1AF371BC4(a3, @"offset");
    objc_msgSend_setOffset_(v7, v24, v25, v26, v23);
    objc_msgSend_setImmediateMode_(VFXTransaction, v27, v8, v28);
  }

  return v7;
}

@end