@interface TSCH3DFrustumSlice
+ (id)sliceWithOrigin:(line<glm:(tvec3<float>)a4 :(tvec3<float>)a5 detail::tvec3<float>> *)a3 width:height:;
- (TSCH3DFrustumSlice)initWithOrigin:(line<glm:(tvec3<float>)a4 :(tvec3<float>)a5 detail::tvec3<float>> *)a3 width:height:;
- (id).cxx_construct;
- (tvec3<float>)atNormalizedPosition:(tvec2<float>)a3;
- (tvec3<float>)height;
- (tvec3<float>)width;
@end

@implementation TSCH3DFrustumSlice

+ (id)sliceWithOrigin:(line<glm:(tvec3<float>)a4 :(tvec3<float>)a5 detail::tvec3<float>> *)a3 width:height:
{
  v5 = *&a4.var2.var0;
  v6 = *&a4.var0.var0;
  v8 = [a1 alloc];
  v18 = *a3;
  v16 = *v6;
  v17 = *(v6 + 2);
  v14 = *v5;
  v15 = *(v5 + 2);
  v12 = objc_msgSend_initWithOrigin_width_height_(v8, v9, COERCE_DOUBLE(__PAIR64__(HIDWORD(v14), v15)), v10, v11, &v18, &v16, &v14);

  return v12;
}

- (TSCH3DFrustumSlice)initWithOrigin:(line<glm:(tvec3<float>)a4 :(tvec3<float>)a5 detail::tvec3<float>> *)a3 width:height:
{
  v5 = *&a4.var2.var0;
  v6 = *&a4.var0.var0;
  v9.receiver = self;
  v9.super_class = TSCH3DFrustumSlice;
  result = [(TSCH3DFrustumSlice *)&v9 init:a3];
  if (result)
  {
    result->_origin._position.var0.var0 = a3->_position.var0.var0;
    result->_origin._position.var1.var0 = a3->_position.var1.var0;
    result->_origin._position.var2.var0 = a3->_position.var2.var0;
    result->_origin._direction.var0.var0 = a3->_direction.var0.var0;
    result->_origin._direction.var1.var0 = a3->_direction.var1.var0;
    result->_origin._direction.var2.var0 = a3->_direction.var2.var0;
    result->_width.var0.var0 = *v6;
    result->_width.var1.var0 = v6[1];
    result->_width.var2.var0 = v6[2];
    result->_height.var0.var0 = *v5;
    result->_height.var1.var0 = v5[1];
    result->_height.var2.var0 = v5[2];
  }

  return result;
}

- (tvec3<float>)atNormalizedPosition:(tvec2<float>)a3
{
  v4 = *(*&a3 + 4);
  v5 = ((**&a3 * self->_width.var2.var0) + self->_origin._position.var2.var0) + (v4 * self->_height.var2.var0);
  *v3 = vadd_f32(vadd_f32(vmul_n_f32(*&self->_width.var0.var0, **&a3), *&self->_origin._position.var0.var0), vmul_n_f32(*&self->_height.var0.var0, v4));
  v3[1].f32[0] = v5;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)width
{
  *v2 = self->_width;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)height
{
  *v2 = self->_height;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end