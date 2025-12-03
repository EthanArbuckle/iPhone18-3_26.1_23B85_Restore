@interface TSDContentLocation
+ (id)contentLocation;
+ (id)contentLocationInterpolatingFromLocation:(id)location toLocation:(id)toLocation fraction:(double)fraction;
+ (id)contentLocationWithUnscaledPoint:(CGPoint)point viewScale:(double)scale;
- (CGPoint)unscaledPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSDContentLocation

+ (id)contentLocation
{
  v2 = objc_alloc_init(TSDContentLocation);

  return v2;
}

+ (id)contentLocationWithUnscaledPoint:(CGPoint)point viewScale:(double)scale
{
  y = point.y;
  x = point.x;
  v7 = objc_alloc_init(TSDContentLocation);
  [(TSDContentLocation *)v7 setUnscaledPoint:x, y];
  [(TSDContentLocation *)v7 setViewScale:scale];

  return v7;
}

+ (id)contentLocationInterpolatingFromLocation:(id)location toLocation:(id)toLocation fraction:(double)fraction
{
  v8 = objc_alloc_init(TSDContentLocation);
  [location unscaledPoint];
  v10 = v9;
  v12 = v11;
  [toLocation unscaledPoint];
  [(TSDContentLocation *)v8 setUnscaledPoint:TSDInterpolatePoints(v10, v12, v13, v14, fraction)];
  [location viewScale];
  v16 = v15;
  [toLocation viewScale];
  [(TSDContentLocation *)v8 setViewScale:TSDInterpolateFloats(v16, v17, fraction)];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSDContentLocation allocWithZone:?]];
  [(TSDContentLocation *)v4 setUnscaledPoint:self->_unscaledPoint.x, self->_unscaledPoint.y];
  [(TSDContentLocation *)v4 setViewScale:self->_viewScale];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"<%@ %p unscaledPoint=%@ viewScale=%f>", v5, self, NSStringFromCGPoint(self->_unscaledPoint), *&self->_viewScale];
}

- (CGPoint)unscaledPoint
{
  x = self->_unscaledPoint.x;
  y = self->_unscaledPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end