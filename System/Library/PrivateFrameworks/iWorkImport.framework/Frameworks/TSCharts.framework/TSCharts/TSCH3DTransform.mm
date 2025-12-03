@interface TSCH3DTransform
+ (id)transform;
- (TSCH3DTransform)init;
- (Transform)asTSCH3DCPPTransform;
- (const)transform;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (tquat<float>)rotation;
- (tvec3<float>)center;
- (tvec3<float>)scaleFactor;
- (tvec3<float>)translation;
- (void)setCenter:(tvec3<float>)center;
- (void)setRotation:(tquat<float>)rotation;
- (void)setScaleFactor:(tvec3<float>)factor;
- (void)setTranslation:(tvec3<float>)translation;
@end

@implementation TSCH3DTransform

+ (id)transform
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DTransform)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DTransform;
  result = [(TSCH3DTransform *)&v3 init];
  if (result)
  {
    result->_dirty = 0;
    *&result->_matrix.value[0].var1.var0 = 0;
    *&result->_matrix.value[0].var3.var0 = 0;
    result->_matrix.value[1].var1.var0 = 1.0;
    *&result->_matrix.value[2].var0.var0 = 0;
    *&result->_matrix.value[1].var2.var0 = 0;
    result->_matrix.value[2].var2.var0 = 1.0;
    *&result->_matrix.value[2].var3.var0 = 0;
    *&result->_matrix.value[3].var1.var0 = 0;
    result->_matrix.value[3].var3.var0 = 1.0;
    *&result->_center.var2.var0 = 0x3F80000000000000;
    *&result->_translation.var0.var0 = xmmword_2764D5F20;
    *&result->_scaleFactor.var1.var0 = xmmword_2764D5F30;
    *&result->_rotation.z = xmmword_2764D5F40;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 2) = LODWORD(self->_translation.var0.var0);
    *(result + 3) = LODWORD(self->_translation.var1.var0);
    *(result + 4) = LODWORD(self->_translation.var2.var0);
    *(result + 5) = LODWORD(self->_scaleFactor.var0.var0);
    *(result + 6) = LODWORD(self->_scaleFactor.var1.var0);
    *(result + 7) = LODWORD(self->_scaleFactor.var2.var0);
    *(result + 2) = self->_rotation;
    *(result + 12) = LODWORD(self->_center.var0.var0);
    *(result + 13) = LODWORD(self->_center.var1.var0);
    *(result + 14) = LODWORD(self->_center.var2.var0);
    dirty = self->_dirty;
    if (!dirty)
    {
      *(result + 15) = LODWORD(self->_matrix.value[0].var0.var0);
      *(result + 16) = LODWORD(self->_matrix.value[0].var1.var0);
      *(result + 17) = LODWORD(self->_matrix.value[0].var2.var0);
      *(result + 18) = LODWORD(self->_matrix.value[0].var3.var0);
      *(result + 19) = LODWORD(self->_matrix.value[1].var0.var0);
      *(result + 20) = LODWORD(self->_matrix.value[1].var1.var0);
      *(result + 21) = LODWORD(self->_matrix.value[1].var2.var0);
      *(result + 22) = LODWORD(self->_matrix.value[1].var3.var0);
      *(result + 23) = LODWORD(self->_matrix.value[2].var0.var0);
      *(result + 24) = LODWORD(self->_matrix.value[2].var1.var0);
      *(result + 25) = LODWORD(self->_matrix.value[2].var2.var0);
      *(result + 26) = LODWORD(self->_matrix.value[2].var3.var0);
      *(result + 27) = LODWORD(self->_matrix.value[3].var0.var0);
      *(result + 28) = LODWORD(self->_matrix.value[3].var1.var0);
      *(result + 29) = LODWORD(self->_matrix.value[3].var2.var0);
      *(result + 30) = LODWORD(self->_matrix.value[3].var3.var0);
      dirty = self->_dirty;
    }

    *(result + 124) = dirty;
  }

  return result;
}

- (Transform)asTSCH3DCPPTransform
{
  *&retstr->var0.var0.var0 = *&self->var0.var2.var0;
  *&retstr->var1.var1.var0 = *&self->var2.x;
  retstr->var2 = *&self->var2.z;
  retstr->var3 = *&self->var3.var2.var0;
  retstr->var4 = 1;
  return self;
}

- (void)setTranslation:(tvec3<float>)translation
{
  if (self->_translation.var0.var0 != **&translation.var0.var0 || self->_translation.var1.var0 != *(*&translation.var0.var0 + 4) || self->_translation.var2.var0 != *(*&translation.var0.var0 + 8))
  {
    self->_dirty = 1;
    self->_translation = **&translation.var0.var0;
  }
}

- (void)setScaleFactor:(tvec3<float>)factor
{
  if (self->_scaleFactor.var0.var0 != **&factor.var0.var0 || self->_scaleFactor.var1.var0 != *(*&factor.var0.var0 + 4) || self->_scaleFactor.var2.var0 != *(*&factor.var0.var0 + 8))
  {
    self->_dirty = 1;
    self->_scaleFactor = **&factor.var0.var0;
  }
}

- (void)setCenter:(tvec3<float>)center
{
  if (self->_center.var0.var0 != **&center.var0.var0 || self->_center.var1.var0 != *(*&center.var0.var0 + 4) || self->_center.var2.var0 != *(*&center.var0.var0 + 8))
  {
    self->_dirty = 1;
    self->_center = **&center.var0.var0;
  }
}

- (void)setRotation:(tquat<float>)rotation
{
  if (self->_rotation.x != rotation.x || self->_rotation.y != rotation.y || self->_rotation.z != rotation.z || self->_rotation.w != rotation.w)
  {
    self->_dirty = 1;
    self->_rotation = rotation;
  }
}

- (tvec3<float>)translation
{
  *v2 = self->_translation;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)scaleFactor
{
  *v2 = self->_scaleFactor;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)center
{
  *v2 = self->_center;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tquat<float>)rotation
{
  x = self->_rotation.x;
  y = self->_rotation.y;
  z = self->_rotation.z;
  w = self->_rotation.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (const)transform
{
  if (self->_dirty)
  {
    v45 = 0;
    v44 = 0;
    v43 = 1065353216;
    v46 = 1065353216;
    v47 = 0;
    v48 = 0;
    v3 = vadd_f32(*&self->_center.var0.var0, *&self->_translation.var0.var0);
    v4 = vmul_f32(v3, 0);
    v5 = vrev64_s32(v4);
    v6 = vadd_f32(v3, v5);
    v5.i32[0] = LODWORD(self->_center.var2.var0);
    v4.i32[0] = LODWORD(self->_translation.var2.var0);
    v7 = vadd_f32(v5, v4);
    v5.f32[0] = 0.0 * v7.f32[0];
    v8.i32[0] = vdup_lane_s32(v7, 1).u32[0];
    v8.f32[1] = 0.0 * v7.f32[0];
    v49 = 1065353216;
    v50 = vadd_f32(vadd_f32(v6, vdup_lane_s32(v5, 0)), 0);
    v51 = vadd_f32(vadd_f32(v7, v8), 0x3F80000000000000);
    v5.i32[0] = LODWORD(self->_rotation.x);
    v7.i32[0] = LODWORD(self->_rotation.y);
    z = self->_rotation.z;
    w = self->_rotation.w;
    v11 = w + w;
    v12 = (z * (w + w)) + ((v5.f32[0] + v5.f32[0]) * v7.f32[0]);
    v13 = w * -2.0;
    v6.f32[0] = ((v5.f32[0] * -2.0) * v5.f32[0]) + 1.0;
    v39[0] = (((v7.f32[0] * -2.0) * v7.f32[0]) + 1.0) + ((z * -2.0) * z);
    v39[1] = v12;
    v39[2] = (v7.f32[0] * v13) + ((v5.f32[0] + v5.f32[0]) * z);
    v39[3] = 0.0;
    v39[4] = (z * v13) + ((v5.f32[0] + v5.f32[0]) * v7.f32[0]);
    v39[5] = v6.f32[0] + ((z * -2.0) * z);
    v39[6] = (v5.f32[0] * v11) + ((v7.f32[0] + v7.f32[0]) * z);
    v39[7] = 0.0;
    v39[8] = (v7.f32[0] * v11) + ((v5.f32[0] + v5.f32[0]) * z);
    v39[9] = (v5.f32[0] * v13) + ((v7.f32[0] + v7.f32[0]) * z);
    v39[10] = v6.f32[0] + ((v7.f32[0] * -2.0) * v7.f32[0]);
    v41 = 0;
    v40 = 0;
    v42 = 1065353216;
    sub_2761558A0(&v43, v39, v52);
    v34[0] = self->_scaleFactor.var0.var0;
    v34[1] = v34[0] * 0.0;
    v34[2] = v34[0] * 0.0;
    v34[3] = v34[0] * 0.0;
    v14 = *&self->_scaleFactor.var1.var0;
    *v15.i8 = vmul_f32(v14, 0);
    v35 = vzip1_s32(*v15.i8, v14);
    v36 = vzip1q_s32(v15, v15);
    v37 = vzip2_s32(v14, *v15.i8);
    v38 = xmmword_2764D5F20;
    sub_2761558A0(v52, v34, v53);
    var0 = self->_center.var2.var0;
    *v17.i32 = var0 * -0.0;
    v18 = *&self->_center.var0.var0;
    v19 = vmul_f32(v18, 0x8000000080000000);
    v20 = vadd_f32(vsub_f32(vrev64_s32(v19), v18), vdup_lane_s32(v17, 0));
    v24 = 1065353216;
    v26 = 0;
    v25 = 0;
    v27 = 1065353216;
    v28 = 0;
    v29 = 0;
    v19.f32[0] = vaddv_f32(v19);
    v30 = 1065353216;
    v31 = vadd_f32(v20, 0);
    v32 = (v19.f32[0] - var0) + 0.0;
    v33 = (v19.f32[0] + (var0 * -0.0)) + 1.0;
    sub_2761558A0(v53, &v24, v54);
    v21 = v54[1];
    self->_matrix.value[0] = v54[0];
    self->_matrix.value[1] = v21;
    v22 = v54[3];
    self->_matrix.value[2] = v54[2];
    self->_matrix.value[3] = v22;
    self->_dirty = 0;
  }

  return &self->_matrix;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 44) = xmmword_2764D5F50;
  *(self + 15) = 1065353216;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 20) = 1065353216;
  *(self + 92) = 0;
  *(self + 84) = 0;
  *(self + 25) = 1065353216;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 30) = 1065353216;
  return self;
}

@end