@interface SCRCMathSpaceExpression
- (SCRCMathSpaceExpression)initWithDictionary:(id)dictionary;
@end

@implementation SCRCMathSpaceExpression

- (SCRCMathSpaceExpression)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = SCRCMathSpaceExpression;
  return [(SCRCMathExpression *)&v4 initWithDictionary:dictionary];
}

@end