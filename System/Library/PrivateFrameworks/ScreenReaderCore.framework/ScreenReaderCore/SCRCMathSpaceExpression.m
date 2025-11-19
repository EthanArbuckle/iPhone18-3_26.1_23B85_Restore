@interface SCRCMathSpaceExpression
- (SCRCMathSpaceExpression)initWithDictionary:(id)a3;
@end

@implementation SCRCMathSpaceExpression

- (SCRCMathSpaceExpression)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCRCMathSpaceExpression;
  return [(SCRCMathExpression *)&v4 initWithDictionary:a3];
}

@end