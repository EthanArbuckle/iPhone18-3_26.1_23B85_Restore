@interface SCRCMathLongDivisionExpression
- (SCRCMathLongDivisionExpression)initWithDictionary:(id)dictionary;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
@end

@implementation SCRCMathLongDivisionExpression

- (SCRCMathLongDivisionExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SCRCMathLongDivisionExpression;
  v5 = [(SCRCMathArrayExpression *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [@"Term" stringByAppendingString:@"1"];
    v7 = [dictionaryCopy objectForKey:v6];
    v8 = [SCRCMathExpression mathExpressionWithDictionary:v7];
    [(SCRCMathLongDivisionExpression *)v5 setDivisor:v8];
  }

  return v5;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v7 = [(SCRCMathExpression *)self localizedStringForKey:@"math.long.division.formatter"];
  divisor = [(SCRCMathLongDivisionExpression *)self divisor];
  v9 = [divisor speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  v13.receiver = self;
  v13.super_class = SCRCMathLongDivisionExpression;
  v10 = [(SCRCMathArrayExpression *)&v13 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
  v11 = [MEMORY[0x277CCA898] scrcStringWithFormat:v7, v9, v10];

  return v11;
}

@end