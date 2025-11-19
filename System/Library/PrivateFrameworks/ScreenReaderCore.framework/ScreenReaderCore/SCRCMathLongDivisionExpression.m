@interface SCRCMathLongDivisionExpression
- (SCRCMathLongDivisionExpression)initWithDictionary:(id)a3;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
@end

@implementation SCRCMathLongDivisionExpression

- (SCRCMathLongDivisionExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCRCMathLongDivisionExpression;
  v5 = [(SCRCMathArrayExpression *)&v10 initWithDictionary:v4];
  if (v5)
  {
    v6 = [@"Term" stringByAppendingString:@"1"];
    v7 = [v4 objectForKey:v6];
    v8 = [SCRCMathExpression mathExpressionWithDictionary:v7];
    [(SCRCMathLongDivisionExpression *)v5 setDivisor:v8];
  }

  return v5;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCRCMathExpression *)self localizedStringForKey:@"math.long.division.formatter"];
  v8 = [(SCRCMathLongDivisionExpression *)self divisor];
  v9 = [v8 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];

  v13.receiver = self;
  v13.super_class = SCRCMathLongDivisionExpression;
  v10 = [(SCRCMathArrayExpression *)&v13 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];
  v11 = [MEMORY[0x277CCA898] scrcStringWithFormat:v7, v9, v10];

  return v11;
}

@end