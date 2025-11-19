@interface TSCH3DPerspectiveLens
- (TSCH3DPerspectiveLens)init;
- (id)asFrustumLens;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)frustumRect;
- (id)frustumRectAtDistance:(float)a3;
- (id)matrixDescription;
- (id)narrowedByNormalizedBounds:(void *)a3;
- (id)shiftedByPercentage:(void *)a3;
- (tmat4x4<float>)matrix;
- (void)calculateCullingPlanes:(void *)a3;
@end

@implementation TSCH3DPerspectiveLens

- (TSCH3DPerspectiveLens)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DPerspectiveLens;
  result = [(TSCH3DPerspectiveLens *)&v3 init];
  if (result)
  {
    result->_FOV = 45.0;
    result->_aspect = 1.0;
    *&result->super._near = 0x424800003F800000;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22.receiver = self;
  v22.super_class = TSCH3DPerspectiveLens;
  v5 = [(TSCH3DLens *)&v22 copyWithZone:a3];
  if (v5)
  {
    objc_msgSend_fov(self, v4, v6, v7, v8);
    objc_msgSend_setFov_(v5, v9, v10, v11, v12);
    objc_msgSend_aspect(self, v13, v14, v15, v16);
    objc_msgSend_setAspect_(v5, v17, v18, v19, v20);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = TSCH3DPerspectiveLens;
  v4 = [(TSCH3DPerspectiveLens *)&v18 description];
  objc_msgSend_width(self, v5, v6, v7, v8);
  v10 = *&v9;
  objc_msgSend_height(self, v11, v9, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, v14, v10, self->super._near, @"%@(width %f, height %f, near %f, far %f, fov %f, aspect %f)", v4, v10, v14, self->super._near, self->super._far, self->_FOV, self->_aspect);

  return v16;
}

- (id)matrixDescription
{
  objc_msgSend_matrix(self, a2, v2, v3, v4);
  v12 = sub_2761B4E18(&v14, v5, v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)frustumRect
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  sub_2761B502C(self, &v8, &v7, &v6 + 1, &v6);
  LODWORD(v2) = v8;
  LODWORD(v4) = HIDWORD(v6);
  LODWORD(v3) = v7;

  return MEMORY[0x2821F9670](TSCH3DFrustumRect, sel_rectWithLeft_right_bottom_top_, v2, v3, v4);
}

- (id)frustumRectAtDistance:(float)a3
{
  v10 = 0;
  v11 = 0;
  sub_2761B502C(self, &v11 + 1, &v11, &v10 + 1, &v10);
  v5 = a3 / self->super._near;
  *&v6 = v5 * *(&v11 + 1);
  *&v7 = v5 * *&v11;
  *&v8 = v5 * *(&v10 + 1);

  return MEMORY[0x2821F9670](TSCH3DFrustumRect, sel_rectWithLeft_right_bottom_top_, v6, v7, v8);
}

- (tmat4x4<float>)matrix
{
  v12 = 0;
  v13 = 0;
  sub_2761B502C(self, &v13 + 1, &v13, &v12 + 1, &v12);
  *&retstr->value[1].var1.var0 = 0u;
  *&retstr->value[2].var1.var0 = 0u;
  retstr->value[3] = 0u;
  *&retstr->value[0].var1.var0 = 0u;
  near_low = LODWORD(self->super._near);
  far = self->super._far;
  v8 = v13;
  v9 = *&v13 - *(&v13 + 1);
  retstr->value[0].var0.var0 = (*&near_low + *&near_low) / (*&v13 - *(&v13 + 1));
  v10 = v12;
  v11 = *&v12 - *(&v12 + 1);
  retstr->value[1].var1.var0 = (*&near_low + *&near_low) / (*&v12 - *(&v12 + 1));
  retstr->value[2].var0.var0 = (*&v8 + *(&v8 + 1)) / v9;
  retstr->value[2].var1.var0 = (*&v10 + *(&v10 + 1)) / v11;
  retstr->value[2].var2.var0 = -(*&near_low + far) / (far - *&near_low);
  retstr->value[2].var3.var0 = -1.0;
  retstr->value[3].var2.var0 = (*&near_low * (far * -2.0)) / (far - *&near_low);
  return result;
}

- (id)asFrustumLens
{
  v6 = objc_msgSend_lens(TSCH3DFrustumLens, a2, v2, v3, v4);
  v32 = 0;
  v33 = 0;
  sub_2761B502C(self, &v33 + 1, &v33, &v32 + 1, &v32);
  LODWORD(v7) = HIDWORD(v33);
  objc_msgSend_setLeft_(v6, v8, v7, v9, v10);
  LODWORD(v11) = v33;
  objc_msgSend_setRight_(v6, v12, v11, v13, v14);
  LODWORD(v15) = HIDWORD(v32);
  objc_msgSend_setBottom_(v6, v16, v15, v17, v18);
  LODWORD(v19) = v32;
  objc_msgSend_setTop_(v6, v20, v19, v21, v22);
  *&v23 = self->super._near;
  objc_msgSend_setNear_(v6, v24, v23, v25, v26);
  *&v27 = self->super._far;
  objc_msgSend_setFar_(v6, v28, v27, v29, v30);

  return v6;
}

- (id)narrowedByNormalizedBounds:(void *)a3
{
  v7 = objc_msgSend_asFrustumLens(self, a2, v3, v4, v5);
  v12 = objc_msgSend_narrowByNormalizedBounds_(v7, v8, v9, v10, v11, a3);

  return v12;
}

- (id)shiftedByPercentage:(void *)a3
{
  v7 = objc_msgSend_asFrustumLens(self, a2, v3, v4, v5);
  v12 = objc_msgSend_shiftedByPercentage_(v7, v8, v9, v10, v11, a3);

  return v12;
}

- (void)calculateCullingPlanes:(void *)a3
{
  v39.receiver = self;
  v39.super_class = TSCH3DPerspectiveLens;
  [(TSCH3DLens *)&v39 calculateCullingPlanes:?];
  v38 = 0;
  v37 = 0.0;
  v36 = 0.0;
  sub_2761B502C(self, &v38 + 1, &v38, &v37, &v36);
  objc_msgSend_near(self, v5, v6, v7, v8);
  *&v10 = -v9;
  v11 = *(&v38 + 1);
  v12 = v37;
  v35[0] = *(&v38 + 1);
  v35[1] = v37;
  v35[2] = *&v10;
  objc_msgSend_near(self, v13, v10, v14, v15);
  v16 = v36;
  *&v18 = -v17;
  v34[0] = v11;
  v34[1] = v36;
  v34[2] = *&v18;
  objc_msgSend_near(self, v19, v18, v20, v21);
  v22 = *&v38;
  *&v24 = -v23;
  LODWORD(v33[0]) = v38;
  v33[1] = v16;
  v33[2] = *&v24;
  objc_msgSend_near(self, v25, v24, v26, v27);
  v32[0] = v22;
  v32[1] = v12;
  v32[2] = -v28;
  v30 = 0;
  v31 = 0;
  sub_2761B4B70(&v30, v34, v33, v29);
  sub_2761B3F30(a3, v29);
  sub_2761B4B70(&v30, v33, v32, v29);
  sub_2761B3F30(a3, v29);
  sub_2761B4B70(&v30, v32, v35, v29);
  sub_2761B3F30(a3, v29);
  sub_2761B4B70(&v30, v35, v34, v29);
  sub_2761B3F30(a3, v29);
}

@end