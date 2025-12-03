@interface CRConfidenceThresholds
+ (id)defaultConfidenceThresholds;
- (CRConfidenceThresholds)initWithMediumThreshold:(float)threshold highThreshold:(float)highThreshold;
@end

@implementation CRConfidenceThresholds

- (CRConfidenceThresholds)initWithMediumThreshold:(float)threshold highThreshold:(float)highThreshold
{
  v9.receiver = self;
  v9.super_class = CRConfidenceThresholds;
  v7 = [(CRConfidenceThresholds *)&v9 self];

  if (v7)
  {
    v7->_mediumConfidenceThreshold = threshold;
    v7->_highConfidenceThreshold = highThreshold;
  }

  return v7;
}

+ (id)defaultConfidenceThresholds
{
  v2 = [CRConfidenceThresholds alloc];
  LODWORD(v3) = 1063675494;
  LODWORD(v4) = 0.5;
  v5 = [(CRConfidenceThresholds *)v2 initWithMediumThreshold:v4 highThreshold:v3];

  return v5;
}

@end