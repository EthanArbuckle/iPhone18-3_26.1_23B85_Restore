@interface VFXConstantScaleConstraint
+ (id)constantScaleConstraint;
- (VFXConstantScaleConstraint)init;
- (VFXConstantScaleConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setScale:(float)a3;
- (void)setScreenSpace:(BOOL)a3;
@end

@implementation VFXConstantScaleConstraint

- (VFXConstantScaleConstraint)init
{
  v8.receiver = self;
  v8.super_class = VFXConstantScaleConstraint;
  v2 = [(VFXConstraint *)&v8 init];
  if (v2)
  {
    v3 = sub_1AF151568();
    v2->_scale = 1.0;
    v2->super._constraintRef = v3;
    v2->_screenSpace = 1;
    objc_msgSend_didInitConstraintRef(v2, v4, v5, v6);
  }

  return v2;
}

+ (id)constantScaleConstraint
{
  v2 = objc_alloc_init(VFXConstantScaleConstraint);

  return v2;
}

- (void)setScale:(float)a3
{
  self->_scale = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCE44;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setScreenSpace:(BOOL)a3
{
  self->_screenSpace = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCEF4;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_(self, v5, v4, v6);
  v4[18] = LODWORD(self->_scale);
  *(v4 + 76) = self->_screenSpace;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXConstantScaleConstraint;
  [(VFXConstraint *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(a3, v5, self->_screenSpace, @"screenSpace");
  *&v6 = self->_scale;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"scale", v8, v6);
}

- (VFXConstantScaleConstraint)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = VFXConstantScaleConstraint;
  v4 = [(VFXConstraint *)&v24 initWithCoder:?];
  if (v4)
  {
    v4->super._constraintRef = sub_1AF151568();
    v8 = objc_msgSend_immediateMode(VFXTransaction, v5, v6, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v13 = objc_msgSend_decodeBoolForKey_(a3, v11, @"screenSpace", v12);
    objc_msgSend_setScreenSpace_(v4, v14, v13, v15);
    objc_msgSend_decodeFloatForKey_(a3, v16, @"scale", v17);
    objc_msgSend_setScale_(v4, v18, v19, v20);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v8, v22);
  }

  return v4;
}

@end