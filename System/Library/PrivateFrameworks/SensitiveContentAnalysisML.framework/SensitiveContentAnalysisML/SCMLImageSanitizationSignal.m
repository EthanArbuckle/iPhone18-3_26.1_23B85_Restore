@interface SCMLImageSanitizationSignal
- (SCMLImageSanitizationSignal)init;
@end

@implementation SCMLImageSanitizationSignal

- (SCMLImageSanitizationSignal)init
{
  v7.receiver = self;
  v7.super_class = SCMLImageSanitizationSignal;
  v2 = [(SCMLImageSanitizationSignal *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_safe = 1;
    score = v2->_score;
    v2->_score = 0;

    v3->_regionalSensitive = 0;
    label = v3->_label;
    v3->_label = 0;

    v3->_severity = 0;
  }

  return v3;
}

@end