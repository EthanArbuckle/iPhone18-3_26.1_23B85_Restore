@interface PTTapToTrackPrediction
- (CGRect)rect;
- (PTTapToTrackPrediction)initWithRect:(CGRect)a3 confidence:(float)a4;
@end

@implementation PTTapToTrackPrediction

- (PTTapToTrackPrediction)initWithRect:(CGRect)a3 confidence:(float)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = PTTapToTrackPrediction;
  v9 = [(PTTapToTrackPrediction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(PTTapToTrackPrediction *)v9 setRect:x, y, width, height];
    *&v11 = a4;
    [(PTTapToTrackPrediction *)v10 setConfidence:v11];
  }

  return v10;
}

- (CGRect)rect
{
  objc_copyStruct(v6, &self->_rect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end