@interface SCMLTextSanitizationSignal
- (SCMLTextSanitizationSignal)init;
@end

@implementation SCMLTextSanitizationSignal

- (SCMLTextSanitizationSignal)init
{
  v7.receiver = self;
  v7.super_class = SCMLTextSanitizationSignal;
  v2 = [(SCMLTextSanitizationSignal *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_safe = 1;
    label = v2->_label;
    v2->_label = 0;

    score = v3->_score;
    v3->_score = 0;

    v3->_regionalSensitive = 0;
    v3->_severity = 0;
  }

  return v3;
}

@end