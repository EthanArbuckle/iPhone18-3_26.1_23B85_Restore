@interface TSCH3DCachedLabelBounds
+ (id)boundsWithPosition:(tvec3<float>)a3 labelBox:(box<glm:(tvec2<float>)a5 :(id)a6 detail::tvec2<float>>)a4 offset2D:string:;
- (TSCH3DCachedLabelBounds)initWithPosition:(tvec3<float>)a3 labelBox:(box<glm:(tvec2<float>)a5 :(id)a6 detail::tvec2<float>>)a4 offset2D:string:;
- (box<glm::detail::tvec2<float>>)labelBox;
- (box<glm::detail::tvec3<float>>)normalizedBoundsWithOffset:(SEL)a3 transforms:(tvec3<float>)a4 viewport:(id)a5;
- (id).cxx_construct;
- (tvec3<float>)position;
@end

@implementation TSCH3DCachedLabelBounds

+ (id)boundsWithPosition:(tvec3<float>)a3 labelBox:(box<glm:(tvec2<float>)a5 :(id)a6 detail::tvec2<float>>)a4 offset2D:string:
{
  min = a4._min;
  v7 = *&a3.var2.var0;
  v8 = *&a3.var0.var0;
  v10 = *&a4._max;
  v11 = [a1 alloc];
  v19 = *v8;
  v20 = *(v8 + 2);
  v18 = *v7;
  v17 = *min;
  v15 = objc_msgSend_initWithPosition_labelBox_offset2D_string_(v11, v12, v17, v13, v14, &v19, &v18, &v17, v10);

  return v15;
}

- (TSCH3DCachedLabelBounds)initWithPosition:(tvec3<float>)a3 labelBox:(box<glm:(tvec2<float>)a5 :(id)a6 detail::tvec2<float>>)a4 offset2D:string:
{
  min = a4._min;
  v7 = *&a3.var2.var0;
  v8 = *&a3.var0.var0;
  v10 = *&a4._max;
  v20.receiver = self;
  v20.super_class = TSCH3DCachedLabelBounds;
  v11 = [(TSCH3DCachedLabelBounds *)&v20 init];
  v16 = v11;
  if (v11)
  {
    v11->_position.var0.var0 = *v8;
    v11->_position.var1.var0 = v8[1];
    v11->_position.var2.var0 = v8[2];
    v11->_labelBox._min.var0.var0 = *v7;
    v11->_labelBox._min.var1.var0 = v7[1];
    v11->_labelBox._max.var0.var0 = v7[2];
    v11->_labelBox._max.var1.var0 = v7[3];
    v11->_offset2D.var0.var0 = *min;
    *&v13 = min[1];
    v11->_offset2D.var1.var0 = *&v13;
    v17 = objc_msgSend_copy(v10, v12, v13, v14, v15);
    string = v16->_string;
    v16->_string = v17;
  }

  return v16;
}

- (box<glm::detail::tvec3<float>>)normalizedBoundsWithOffset:(SEL)a3 transforms:(tvec3<float>)a4 viewport:(id)a5
{
  v7 = *&a4.var0.var0;
  v10 = *&a4.var2.var0;
  v12 = v10;
  *&v13 = self->_position.var2.var0 + v7[1].f32[0];
  v14 = *v7;
  v15 = COERCE_DOUBLE(vadd_f32(*&self->_position.var0.var0, *v7));
  v25 = v15;
  v26 = LODWORD(v13);
  if (v10)
  {
    objc_msgSend_projectPoint_(v10, v11, v13, v15, *&v14, &v25);
    v16 = v24;
  }

  else
  {
    v16 = 0;
  }

  v17 = vadd_f32(v16, self->_offset2D);
  min = self->_labelBox._min;
  max = self->_labelBox._max;
  v23 = vcgt_f32(min, max);
  if ((v23.i32[0] | v23.i32[1]))
  {
    v20 = v17;
  }

  else
  {
    v20 = vadd_f32(v17, max);
    v17 = vadd_f32(v17, min);
  }

  v21 = vcvt_f32_s32(vsub_s32(*(a5 + 8), *a5));
  *&retstr->_min.var0.var0 = vdiv_f32(v17, v21);
  retstr->_min.var2.var0 = 0.0;
  *&retstr->_max.var0.var0 = vdiv_f32(v20, v21);
  retstr->_max.var2.var0 = 0.0;

  return result;
}

- (tvec3<float>)position
{
  *v2 = self->_position;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (box<glm::detail::tvec2<float>>)labelBox
{
  *v2 = self->_labelBox;
  result._max = a2;
  result._min = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = xmmword_2764D67A0;
  *(self + 5) = 0xFF7FFFFF7F7FFFFFLL;
  *(self + 12) = -8388609;
  return self;
}

@end