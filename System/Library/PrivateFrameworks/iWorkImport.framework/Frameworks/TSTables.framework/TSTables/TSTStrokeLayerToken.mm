@interface TSTStrokeLayerToken
+ (id)tokenWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 andPosition:(unint64_t)a6;
- (TSTSimpleRange)range;
- (TSTStrokeLayerToken)initWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 andPosition:(unint64_t)a6;
@end

@implementation TSTStrokeLayerToken

+ (id)tokenWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 andPosition:(unint64_t)a6
{
  v7 = *&a5;
  length = a4.length;
  origin = a4.origin;
  v10 = a3;
  v11 = [TSTStrokeLayerToken alloc];
  v13 = objc_msgSend_initWithStroke_range_order_andPosition_(v11, v12, v10, origin, length, v7, a6);

  return v13;
}

- (TSTStrokeLayerToken)initWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 andPosition:(unint64_t)a6
{
  length = a4.length;
  origin = a4.origin;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = TSTStrokeLayerToken;
  v13 = [(TSTStrokeLayerToken *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stroke, a3);
    v14->_range.origin = origin;
    v14->_range.length = length;
    v14->_order = a5;
    v14->_position = a6;
  }

  return v14;
}

- (TSTSimpleRange)range
{
  length = self->_range.length;
  origin = self->_range.origin;
  result.length = length;
  result.origin = origin;
  return result;
}

@end