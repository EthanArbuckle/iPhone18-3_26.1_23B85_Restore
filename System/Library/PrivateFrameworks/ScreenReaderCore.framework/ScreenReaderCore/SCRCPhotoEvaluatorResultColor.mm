@interface SCRCPhotoEvaluatorResultColor
- (SCRCPhotoEvaluatorResultColor)initWithRedLevel:(double)a3 blueLevel:(double)a4 greenLevel:(double)a5;
@end

@implementation SCRCPhotoEvaluatorResultColor

- (SCRCPhotoEvaluatorResultColor)initWithRedLevel:(double)a3 blueLevel:(double)a4 greenLevel:(double)a5
{
  v12.receiver = self;
  v12.super_class = SCRCPhotoEvaluatorResultColor;
  v8 = [(SCRCPhotoEvaluatorResultColor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_redLevel = a3;
    v8->_blueLevel = a4;
    v8->_greenLevel = a5;
    v10 = v8;
  }

  return v9;
}

@end