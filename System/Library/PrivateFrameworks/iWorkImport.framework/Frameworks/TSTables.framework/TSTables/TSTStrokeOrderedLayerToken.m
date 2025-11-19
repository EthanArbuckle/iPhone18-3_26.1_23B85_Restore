@interface TSTStrokeOrderedLayerToken
+ (id)tokenWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 majorStrokeLayerToken:(id)a6 minorStrokeLayerToken:(id)a7;
- (TSTSimpleRange)range;
- (TSTStrokeOrderedLayerToken)initWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 majorStrokeLayerToken:(id)a6 minorStrokeLayerToken:(id)a7;
@end

@implementation TSTStrokeOrderedLayerToken

+ (id)tokenWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 majorStrokeLayerToken:(id)a6 minorStrokeLayerToken:(id)a7
{
  v8 = *&a5;
  length = a4.length;
  origin = a4.origin;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [TSTStrokeOrderedLayerToken alloc];
  v17 = objc_msgSend_initWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(v15, v16, v14, origin, length, v8, v13, v12);

  return v17;
}

- (TSTStrokeOrderedLayerToken)initWithStroke:(id)a3 range:(TSTSimpleRange)a4 order:(int)a5 majorStrokeLayerToken:(id)a6 minorStrokeLayerToken:(id)a7
{
  length = a4.length;
  origin = a4.origin;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = TSTStrokeOrderedLayerToken;
  v17 = [(TSTStrokeOrderedLayerToken *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_stroke, a3);
    v18->_range.origin = origin;
    v18->_range.length = length;
    v18->_order = a5;
    objc_storeStrong(&v18->_majorStrokeLayerToken, a6);
    objc_storeStrong(&v18->_minorStrokeLayerToken, a7);
  }

  return v18;
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