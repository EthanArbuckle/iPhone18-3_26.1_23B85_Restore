@interface TSCH3DGenericAxisLabelPositioner
+ (id)horizontal;
+ (id)horizontalWithRange:(void *)range offset:(float)offset;
+ (id)vertical;
+ (id)verticalWithRange:(void *)range offset:(float)offset;
- (TSCH3DGenericAxisLabelPositioner)init;
- (TSCH3DGenericAxisLabelPositioner)initWithAxis:(int64_t)axis alignment:(unsigned int)alignment offset:(float)offset range:(void *)range;
- (float)labelGapForCount:(unint64_t)count;
- (tvec3<float>)positionForValue:(double)value count:(unint64_t)count chartDirection:(void *)direction;
@end

@implementation TSCH3DGenericAxisLabelPositioner

+ (id)horizontal
{
  v6 = 0x3F80000000000000;
  v4 = objc_msgSend_horizontalWithRange_(self, a2, 0.0078125, v2, v3, &v6);

  return v4;
}

+ (id)vertical
{
  v6 = 0x3F80000000000000;
  v4 = objc_msgSend_verticalWithRange_(self, a2, 0.0078125, v2, v3, &v6);

  return v4;
}

+ (id)horizontalWithRange:(void *)range offset:(float)offset
{
  v6 = [self alloc];
  *&v7 = offset;
  v11 = objc_msgSend_initWithAxis_alignment_offset_range_(v6, v8, v7, v9, v10, 0, 4, range);

  return v11;
}

+ (id)verticalWithRange:(void *)range offset:(float)offset
{
  v6 = [self alloc];
  *&v7 = offset;
  v11 = objc_msgSend_initWithAxis_alignment_offset_range_(v6, v8, v7, v9, v10, 1, 32, range);

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

- (TSCH3DGenericAxisLabelPositioner)initWithAxis:(int64_t)axis alignment:(unsigned int)alignment offset:(float)offset range:(void *)range
{
  v11.receiver = self;
  v11.super_class = TSCH3DGenericAxisLabelPositioner;
  result = [(TSCH3DGenericAxisLabelPositioner *)&v11 init];
  if (result)
  {
    result->_range.var0.var0 = *range;
    result->_range.var1.var0 = *(range + 1);
    result->_alignment = alignment;
    result->_offset = offset;
    result->_axis = axis;
  }

  return result;
}

- (tvec3<float>)positionForValue:(double)value count:(unint64_t)count chartDirection:(void *)direction
{
  *v5 = 0;
  *(v5 + 8) = 0;
  if (count)
  {
    v6 = self->_range.var0.var0 + (self->_range.var1.var0 - self->_range.var0.var0) * value + (self->_offset / count);
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

- (float)labelGapForCount:(unint64_t)count
{
  if (count)
  {
    return vabds_f32(self->_range.var1.var0, self->_range.var0.var0) / count;
  }

  else
  {
    return 0.0;
  }
}

@end