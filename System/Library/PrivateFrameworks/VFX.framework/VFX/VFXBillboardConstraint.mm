@interface VFXBillboardConstraint
+ (id)billboardConstraint;
- (VFXBillboardConstraint)init;
- (VFXBillboardConstraint)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFreeAxes:(unint64_t)a3;
- (void)setPreserveScale:(BOOL)a3;
@end

@implementation VFXBillboardConstraint

- (VFXBillboardConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXBillboardConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  if (v2)
  {
    *(v2 + 1) = sub_1AF1501E8();
    objc_msgSend_setFreeAxes_(v2, v3, 7, v4);
    *(v2 + 80) = sub_1AF151464(*(v2 + 1));
    objc_msgSend_didInitConstraintRef(v2, v5, v6, v7);
  }

  return v2;
}

+ (id)billboardConstraint
{
  v2 = objc_alloc_init(VFXBillboardConstraint);

  return v2;
}

- (void)setFreeAxes:(unint64_t)a3
{
  self->_freeAxes = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCA84;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setPreserveScale:(BOOL)a3
{
  self->_preserveScale = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCB24;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_(self, v5, v4, v6);
  v10 = objc_msgSend_freeAxes(self, v7, v8, v9);
  objc_msgSend_setFreeAxes_(v4, v11, v10, v12);
  v16 = objc_msgSend_preserveScale(self, v13, v14, v15);
  objc_msgSend_setPreserveScale_(v4, v17, v16, v18);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = VFXBillboardConstraint;
  [(VFXConstraint *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_freeAxes, @"freeAxes");
  objc_msgSend_encodeBool_forKey_(a3, v6, self->_preserveScale, @"preserveScale");
}

- (VFXBillboardConstraint)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = VFXBillboardConstraint;
  v7 = [(VFXConstraint *)&v26 initWithCoder:?];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v7->super._constraintRef = sub_1AF1501E8();
    v13 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"freeAxes", v12);
    objc_msgSend_setFreeAxes_(v7, v14, v13, v15);
    v18 = objc_msgSend_decodeBoolForKey_(a3, v16, @"preserveScale", v17);
    objc_msgSend_setPreserveScale_(v7, v19, v18, v20);
    objc_msgSend_finalizeDecodeConstraint_(v7, v21, a3, v22);
    objc_msgSend_setImmediateMode_(VFXTransaction, v23, v8, v24);
  }

  return v7;
}

@end