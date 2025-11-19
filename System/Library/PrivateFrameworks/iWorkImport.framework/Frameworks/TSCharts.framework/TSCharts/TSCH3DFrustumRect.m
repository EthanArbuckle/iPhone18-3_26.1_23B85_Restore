@interface TSCH3DFrustumRect
+ (id)rectWithLeft:(float)a3 right:(float)a4 bottom:(float)a5 top:(float)a6;
- (TSCH3DFrustumRect)initWithLeft:(float)a3 right:(float)a4 bottom:(float)a5 top:(float)a6;
- (box<glm::detail::tvec2<float>>)toBox;
@end

@implementation TSCH3DFrustumRect

+ (id)rectWithLeft:(float)a3 right:(float)a4 bottom:(float)a5 top:(float)a6
{
  v10 = [a1 alloc];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;
  v16 = objc_msgSend_initWithLeft_right_bottom_top_(v10, v15, v11, v12, v13, v14);

  return v16;
}

- (TSCH3DFrustumRect)initWithLeft:(float)a3 right:(float)a4 bottom:(float)a5 top:(float)a6
{
  v11.receiver = self;
  v11.super_class = TSCH3DFrustumRect;
  result = [(TSCH3DFrustumRect *)&v11 init];
  if (result)
  {
    result->_left = a3;
    result->_right = a4;
    result->_bottom = a5;
    result->_top = a6;
  }

  return result;
}

- (box<glm::detail::tvec2<float>>)toBox
{
  v3 = *&self->_left;
  v4 = vextq_s8(v3, v3, 8uLL).u64[0];
  vst2_f32(v2, v3);
  result._max = a2;
  result._min = self;
  return result;
}

@end