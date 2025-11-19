@interface TSCH3DPrefilteredLineSetting
+ (id)setting;
- (BOOL)isEqual:(id)a3;
- (TSCH3DPrefilteredLineSetting)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (tvec4<float>)filterRadius;
- (tvec4<float>)strokeColor;
- (unint64_t)hash;
@end

@implementation TSCH3DPrefilteredLineSetting

+ (id)setting
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DPrefilteredLineSetting)init
{
  v8.receiver = self;
  v8.super_class = TSCH3DPrefilteredLineSetting;
  result = [(TSCH3DPrefilteredLineSetting *)&v8 init];
  if (result)
  {
    result->_filterRadius = vdupq_n_s32(0x40133333u);
    __asm { FMOV            V0.4S, #1.0 }

    *&result->_lineWidth = _Q0;
    result->_strokeColor.var3.var0 = 1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    *(v15 + 10) = self->_useNormals;
    *(v15 + 8) = self->_disableColorOutput;
    *(v15 + 9) = self->_cullBackfaces;
    *(v15 + 12) = self->_filterRadius.var0.var0;
    *(v15 + 16) = self->_filterRadius.var1.var0;
    *(v15 + 20) = self->_filterRadius.var2.var0;
    *(v15 + 24) = self->_filterRadius.var3.var0;
    *(v15 + 28) = self->_lineWidth;
    *(v15 + 32) = self->_strokeColor.var0.var0;
    *(v15 + 36) = self->_strokeColor.var1.var0;
    *(v15 + 40) = self->_strokeColor.var2.var0;
    *&v17 = self->_strokeColor.var3.var0;
    *(v15 + 44) = LODWORD(v17);
    v21 = objc_msgSend_copy(self->_stroke, v16, v17, v18, v19);
    v22 = v20[6];
    v20[6] = v21;
  }

  return v20;
}

- (unint64_t)hash
{
  *&v2 = self->_lineWidth;
  v6 = *&v2;
  v7 = objc_msgSend_hash(self->_stroke, a2, v2, v3, v4);
  v8 = vdup_n_s32(0x437F0000u);
  v9 = vmul_f32(*&self->_strokeColor.var0.var0, v8);
  v10 = vmul_f32(*&self->_strokeColor.var2.var0, v8);
  return vadd_f32(vdup_lane_s32(v10, 1), vadd_f32(v10, vadd_f32(v9, vdup_lane_s32(v9, 1)))).f32[0] + 37 * (self->_useNormals + 37 * (v7 + 37 * v6) + self->_disableColorOutput + self->_cullBackfaces);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5;
  if (v5 && *(v5 + 10) == self->_useNormals && *(v5 + 8) == self->_disableColorOutput && *(v5 + 9) == self->_cullBackfaces && *(v5 + 12) == self->_filterRadius.var0.var0 && *(v5 + 16) == self->_filterRadius.var1.var0 && *(v5 + 20) == self->_filterRadius.var2.var0 && *(v5 + 24) == self->_filterRadius.var3.var0 && *(v5 + 28) == self->_lineWidth && *(v5 + 32) == self->_strokeColor.var0.var0 && *(v5 + 36) == self->_strokeColor.var1.var0 && *(v5 + 40) == self->_strokeColor.var2.var0 && *(v5 + 44) == self->_strokeColor.var3.var0)
  {
    v7 = sub_276210F54(*(v5 + 48), self->_stroke);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (tvec4<float>)filterRadius
{
  *v2 = self->_filterRadius;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec4<float>)strokeColor
{
  *v2 = self->_strokeColor;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 12) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end