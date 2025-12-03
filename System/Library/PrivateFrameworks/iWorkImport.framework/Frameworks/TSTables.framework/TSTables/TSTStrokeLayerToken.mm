@interface TSTStrokeLayerToken
+ (id)tokenWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order andPosition:(unint64_t)position;
- (TSTSimpleRange)range;
- (TSTStrokeLayerToken)initWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order andPosition:(unint64_t)position;
@end

@implementation TSTStrokeLayerToken

+ (id)tokenWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order andPosition:(unint64_t)position
{
  v7 = *&order;
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  v11 = [TSTStrokeLayerToken alloc];
  v13 = objc_msgSend_initWithStroke_range_order_andPosition_(v11, v12, strokeCopy, origin, length, v7, position);

  return v13;
}

- (TSTStrokeLayerToken)initWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order andPosition:(unint64_t)position
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  v16.receiver = self;
  v16.super_class = TSTStrokeLayerToken;
  v13 = [(TSTStrokeLayerToken *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stroke, stroke);
    v14->_range.origin = origin;
    v14->_range.length = length;
    v14->_order = order;
    v14->_position = position;
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