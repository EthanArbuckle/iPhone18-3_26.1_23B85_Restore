@interface TSTStrokeOrderedLayerToken
+ (id)tokenWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order majorStrokeLayerToken:(id)token minorStrokeLayerToken:(id)layerToken;
- (TSTSimpleRange)range;
- (TSTStrokeOrderedLayerToken)initWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order majorStrokeLayerToken:(id)token minorStrokeLayerToken:(id)layerToken;
@end

@implementation TSTStrokeOrderedLayerToken

+ (id)tokenWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order majorStrokeLayerToken:(id)token minorStrokeLayerToken:(id)layerToken
{
  v8 = *&order;
  length = range.length;
  origin = range.origin;
  layerTokenCopy = layerToken;
  tokenCopy = token;
  strokeCopy = stroke;
  v15 = [TSTStrokeOrderedLayerToken alloc];
  v17 = objc_msgSend_initWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(v15, v16, strokeCopy, origin, length, v8, tokenCopy, layerTokenCopy);

  return v17;
}

- (TSTStrokeOrderedLayerToken)initWithStroke:(id)stroke range:(TSTSimpleRange)range order:(int)order majorStrokeLayerToken:(id)token minorStrokeLayerToken:(id)layerToken
{
  length = range.length;
  origin = range.origin;
  strokeCopy = stroke;
  tokenCopy = token;
  layerTokenCopy = layerToken;
  v20.receiver = self;
  v20.super_class = TSTStrokeOrderedLayerToken;
  v17 = [(TSTStrokeOrderedLayerToken *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_stroke, stroke);
    v18->_range.origin = origin;
    v18->_range.length = length;
    v18->_order = order;
    objc_storeStrong(&v18->_majorStrokeLayerToken, token);
    objc_storeStrong(&v18->_minorStrokeLayerToken, layerToken);
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