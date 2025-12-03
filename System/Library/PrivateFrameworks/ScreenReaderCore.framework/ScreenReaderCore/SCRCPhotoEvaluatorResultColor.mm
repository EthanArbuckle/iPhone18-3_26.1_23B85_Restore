@interface SCRCPhotoEvaluatorResultColor
- (SCRCPhotoEvaluatorResultColor)initWithRedLevel:(double)level blueLevel:(double)blueLevel greenLevel:(double)greenLevel;
@end

@implementation SCRCPhotoEvaluatorResultColor

- (SCRCPhotoEvaluatorResultColor)initWithRedLevel:(double)level blueLevel:(double)blueLevel greenLevel:(double)greenLevel
{
  v12.receiver = self;
  v12.super_class = SCRCPhotoEvaluatorResultColor;
  v8 = [(SCRCPhotoEvaluatorResultColor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_redLevel = level;
    v8->_blueLevel = blueLevel;
    v8->_greenLevel = greenLevel;
    v10 = v8;
  }

  return v9;
}

@end