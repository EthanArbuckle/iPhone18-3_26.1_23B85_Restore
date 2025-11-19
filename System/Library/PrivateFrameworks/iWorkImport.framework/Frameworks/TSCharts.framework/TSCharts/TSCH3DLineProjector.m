@interface TSCH3DLineProjector
- (BOOL)projectPoint:(void *)a3 returningPoint:(void *)a4;
- (id).cxx_construct;
@end

@implementation TSCH3DLineProjector

- (BOOL)projectPoint:(void *)a3 returningPoint:(void *)a4
{
  v31 = 0;
  v30 = 0;
  v33 = 0;
  v34 = 0;
  v36 = xmmword_2764D5F60;
  v29 = 1056964608;
  v32 = 1056964608;
  v35 = 1056964608;
  v9 = objc_msgSend_combined(self, a2, 0.0000305175853, v4, v5);
  sub_2761558A0(&v29, v9, &v37);
  var0 = self->_line._position.var0.var0;
  v12 = self->_line._position.var1.var0;
  v13 = self->_line._position.var2.var0;
  *v14.i32 = v43 + (((v12 * v39) + (v37.f32[3] * var0)) + (v41 * v13));
  v15 = var0 + self->_line._direction.var0.var0;
  v16 = v12 + self->_line._direction.var1.var0;
  v17 = v13 + self->_line._direction.var2.var0;
  *v18.i32 = v43 + (((v39 * v16) + (v37.f32[3] * v15)) + (v41 * v17));
  v19 = vdiv_f32(vadd_f32(v42, vmla_n_f32(vmla_n_f32(vmul_n_f32(v38, v12), *v37.f32, var0), v40, v13)), vdup_lane_s32(v14, 0));
  v20 = vdiv_f32(vadd_f32(v42, vmla_n_f32(vmla_n_f32(vmul_n_f32(v38, v16), *v37.f32, v15), v40, v17)), vdup_lane_s32(v18, 0));
  v21 = COERCE_DOUBLE(vceq_f32(v19, v20));
  if ((LODWORD(v21) & HIDWORD(v21) & 1) == 0)
  {
    v22 = vsub_f32(v20, v19);
    v23 = 1.0 / sqrtf(COERCE_FLOAT(vmul_f32(v22, v22).i32[1]) + (v22.f32[0] * v22.f32[0]));
    v24 = vmul_n_f32(v22, v23);
    *&v21 = (vmuls_lane_f32(*(a3 + 1) - v19.f32[1], v24, 1) + ((*a3 - v19.f32[0]) * v24.f32[0])) + ((v23 * 0.0) * 0.0);
    v20 = vmul_n_f32(v24, *&v21);
    v19 = vadd_f32(v19, v20);
  }

  v28 = v19;
  objc_msgSend_objectSpaceLineFromPoint_(self, v10, *&v19, *&v20, v21, &v28);
  v26 = 0;
  v27 = 0;
  return sub_276155D3C(&self->_line._position.var0.var0, &v29, a4, &v26);
}

- (id).cxx_construct
{
  *(self + 26) = 0;
  *(self + 27) = 0;
  *(self + 25) = 0;
  return self;
}

@end