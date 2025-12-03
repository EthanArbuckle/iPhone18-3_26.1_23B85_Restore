@interface TSCH3DMatrixRenderProcessor
- (id).cxx_construct;
- (id)normalizedViewAll;
- (void)copyProjectionInto:(void *)into;
- (void)copyTransformInto:(void *)into;
- (void)multiply:(void *)multiply;
- (void)scale:(void *)scale;
- (void)translate:(void *)translate;
@end

@implementation TSCH3DMatrixRenderProcessor

- (id)normalizedViewAll
{
  v30 = 0;
  v29 = 0;
  v32 = 0;
  v33 = 0;
  v35 = xmmword_2764D5F60;
  v28 = 1056964608;
  v31 = 1056964608;
  v34 = 1056964608;
  v5 = objc_msgSend_projection(self, a2, 0.0000305175853, v2, v3);
  *&v6 = sub_2761558A0(&v28, v5, v26).u64[0];
  v10 = objc_msgSend_current(self, v7, v6, v8, v9);
  sub_2761558A0(v26, v10, &v27);
  v11 = v27.f32[0];
  v12 = MEMORY[0x277CCACA8];
  sub_276152FD4("mat4x4((%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f))", v13, v14, v15, v16, v17, v18, v19, SLOBYTE(v11));
  if (v37 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v12, v20, v21, v22, v23, &v36);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v12, v20, v21, v22, v23, v36);
  }
  v24 = ;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  return v24;
}

- (void)copyProjectionInto:(void *)into
{
  v7 = objc_msgSend_projection(self, a2, v3, v4, v5);
  *into = *v7;
  *(into + 1) = v7[1];
  *(into + 2) = v7[2];
  *(into + 3) = v7[3];
  *(into + 4) = v7[4];
  *(into + 5) = v7[5];
  *(into + 6) = v7[6];
  *(into + 7) = v7[7];
  *(into + 8) = v7[8];
  *(into + 9) = v7[9];
  *(into + 10) = v7[10];
  *(into + 11) = v7[11];
  *(into + 12) = v7[12];
  *(into + 13) = v7[13];
  *(into + 14) = v7[14];
  *(into + 15) = v7[15];
}

- (void)copyTransformInto:(void *)into
{
  v7 = objc_msgSend_current(self, a2, v3, v4, v5);
  *into = *v7;
  *(into + 1) = v7[1];
  *(into + 2) = v7[2];
  *(into + 3) = v7[3];
  *(into + 4) = v7[4];
  *(into + 5) = v7[5];
  *(into + 6) = v7[6];
  *(into + 7) = v7[7];
  *(into + 8) = v7[8];
  *(into + 9) = v7[9];
  *(into + 10) = v7[10];
  *(into + 11) = v7[11];
  *(into + 12) = v7[12];
  *(into + 13) = v7[13];
  *(into + 14) = v7[14];
  *(into + 15) = v7[15];
}

- (void)multiply:(void *)multiply
{
  self->_transformChanged = 1;
  p_transformStack = &self->_transformStack;
  sub_2761558A0(&self->_transformStack._current, multiply, v6);
  v4 = v6[1];
  p_transformStack->_current.value[0] = v6[0];
  p_transformStack->_current.value[1] = v4;
  v5 = v6[3];
  p_transformStack->_current.value[2] = v6[2];
  p_transformStack->_current.value[3] = v5;
}

- (void)scale:(void *)scale
{
  self->_transformChanged = 1;
  *v3.i32 = *scale * 0.0;
  v8 = *scale;
  v9 = v3.i32[0];
  v10 = v3.i32[0];
  v11 = v3.i32[0];
  v4 = *(scale + 4);
  *v3.i8 = vmul_f32(v4, 0);
  v12 = vzip1_s32(*v3.i8, v4);
  v13 = vzip1q_s32(v3, v3);
  v14 = vzip2_s32(v4, *v3.i8);
  v15 = xmmword_2764D5F20;
  p_transformStack = &self->_transformStack;
  sub_2761558A0(&self->_transformStack._current, &v8, v16);
  v6 = v16[1];
  p_transformStack->_current.value[0] = v16[0];
  p_transformStack->_current.value[1] = v6;
  v7 = v16[3];
  p_transformStack->_current.value[2] = v16[2];
  p_transformStack->_current.value[3] = v7;
}

- (void)translate:(void *)translate
{
  self->_transformChanged = 1;
  v9 = 1065353216;
  v11 = 0;
  v10 = 0;
  v12 = 1065353216;
  v13 = 0;
  v14 = 0;
  v4.i64[0] = *translate;
  *&v4.u32[2] = vmul_f32(*translate, 0);
  *v3.f32 = vrev64_s32(*&v4.u32[2]);
  v3.i32[3] = 0;
  v5 = vaddq_f32(v4, vdupq_lane_s64(v3.i64[0], 0));
  v4.i32[3] = *(translate + 2);
  v5.i32[3] = vmulq_f32(v4, v3).i32[3];
  v15 = 1065353216;
  v16 = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v5, v4), vrev64q_s32(v5)), v5), xmmword_2764D5F20);
  p_transformStack = &self->_transformStack;
  sub_2761558A0(&self->_transformStack._current, &v9, v17);
  v7 = v17[1];
  p_transformStack->_current.value[0] = v17[0];
  p_transformStack->_current.value[1] = v7;
  v8 = v17[3];
  p_transformStack->_current.value[2] = v17[2];
  p_transformStack->_current.value[3] = v8;
}

- (id).cxx_construct
{
  sub_27615FAC8(&self->_transformStack);
  self->_projection.value[0].var0.var0 = 1.0;
  *&self->_projection.value[0].var3.var0 = 0;
  *&self->_projection.value[0].var1.var0 = 0;
  self->_projection.value[1].var1.var0 = 1.0;
  *&self->_projection.value[1].var2.var0 = 0;
  *&self->_projection.value[2].var0.var0 = 0;
  self->_projection.value[2].var2.var0 = 1.0;
  *&self->_projection.value[3].var1.var0 = 0;
  *&self->_projection.value[2].var3.var0 = 0;
  self->_projection.value[3].var3.var0 = 1.0;
  return self;
}

@end