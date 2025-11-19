@interface TSCH3DGenericAxisLabelPositioner
+ (id)horizontal;
+ (id)horizontalWithRange:(void *)a3 offset:(float)a4;
+ (id)vertical;
+ (id)verticalWithRange:(void *)a3 offset:(float)a4;
- (TSCH3DGenericAxisLabelPositioner)init;
- (TSCH3DGenericAxisLabelPositioner)initWithAxis:(int64_t)a3 alignment:(unsigned int)a4 offset:(float)a5 range:(void *)a6;
- (float)labelGapForCount:(unint64_t)a3;
- (tvec3<float>)positionForValue:(double)a3 count:(unint64_t)a4 chartDirection:(void *)a5;
@end

@implementation TSCH3DGenericAxisLabelPositioner

+ (id)horizontal
{
  v6 = 0x3F80000000000000;
  v4 = objc_msgSend_horizontalWithRange_(a1, a2, 0.0078125, v2, v3, &v6);

  return v4;
}

+ (id)vertical
{
  v6 = 0x3F80000000000000;
  v4 = objc_msgSend_verticalWithRange_(a1, a2, 0.0078125, v2, v3, &v6);

  return v4;
}

+ (id)horizontalWithRange:(void *)a3 offset:(float)a4
{
  v6 = [a1 alloc];
  *&v7 = a4;
  v11 = objc_msgSend_initWithAxis_alignment_offset_range_(v6, v8, v7, v9, v10, 0, 4, a3);

  return v11;
}

+ (id)verticalWithRange:(void *)a3 offset:(float)a4
{
  v6 = [a1 alloc];
  *&v7 = a4;
  v11 = objc_msgSend_initWithAxis_alignment_offset_range_(v6, v8, v7, v9, v10, 1, 32, a3);

  return v11;
}

- (TSCH3DGenericAxisLabelPositioner)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DGenericAxisLabelPositioner;
  result = [(TSCH3DGenericAxisLabelPositioner *)&v3 init];
  if (result)
  {
    result->_range = 0x3F80000000000000;
    result->_axis = 0;
    *&result->_offset = 0x400000000;
  }

  return result;
}

- (TSCH3DGenericAxisLabelPositioner)initWithAxis:(int64_t)a3 alignment:(unsigned int)a4 offset:(float)a5 range:(void *)a6
{
  v11.receiver = self;
  v11.super_class = TSCH3DGenericAxisLabelPositioner;
  result = [(TSCH3DGenericAxisLabelPositioner *)&v11 init];
  if (result)
  {
    result->_range.var0.var0 = *a6;
    result->_range.var1.var0 = *(a6 + 1);
    result->_alignment = a4;
    result->_offset = a5;
    result->_axis = a3;
  }

  return result;
}

- (tvec3<float>)positionForValue:(double)a3 count:(unint64_t)a4 chartDirection:(void *)a5
{
  *v5 = 0;
  *(v5 + 8) = 0;
  if (a4)
  {
    v6 = self->_range.var0.var0 + (self->_range.var1.var0 - self->_range.var0.var0) * a3 + (self->_offset / a4);
  }

  else
  {
    v6 = 0.0;
  }

  *(v5 + 4 * self->_axis) = v6;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (float)labelGapForCount:(unint64_t)a3
{
  if (a3)
  {
    return vabds_f32(self->_range.var1.var0, self->_range.var0.var0) / a3;
  }

  else
  {
    return 0.0;
  }
}

@end