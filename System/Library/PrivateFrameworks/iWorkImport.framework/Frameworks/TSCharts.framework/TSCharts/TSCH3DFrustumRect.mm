@interface TSCH3DFrustumRect
+ (id)rectWithLeft:(float)left right:(float)right bottom:(float)bottom top:(float)top;
- (TSCH3DFrustumRect)initWithLeft:(float)left right:(float)right bottom:(float)bottom top:(float)top;
- (box<glm::detail::tvec2<float>>)toBox;
@end

@implementation TSCH3DFrustumRect

+ (id)rectWithLeft:(float)left right:(float)right bottom:(float)bottom top:(float)top
{
  v10 = [self alloc];
  *&v11 = left;
  *&v12 = right;
  *&v13 = bottom;
  *&v14 = top;
  v16 = objc_msgSend_initWithLeft_right_bottom_top_(v10, v15, v11, v12, v13, v14);

  return v16;
}

- (TSCH3DFrustumRect)initWithLeft:(float)left right:(float)right bottom:(float)bottom top:(float)top
{
  v11.receiver = self;
  v11.super_class = TSCH3DFrustumRect;
  result = [(TSCH3DFrustumRect *)&v11 init];
  if (result)
  {
    result->_left = left;
    result->_right = right;
    result->_bottom = bottom;
    result->_top = top;
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