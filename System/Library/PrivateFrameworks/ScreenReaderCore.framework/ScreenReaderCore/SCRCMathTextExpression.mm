@interface SCRCMathTextExpression
- (id)latexDescriptionInMathMode:(BOOL)a3;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
@end

@implementation SCRCMathTextExpression

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CCA898]);
  v6 = [(SCRCMathSimpleExpression *)self content];
  v10 = @"kSCRCMathStringAttributeIsNonTechnicalText";
  v11[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithString:v6 attributes:v7];

  return v8;
}

- (id)mathMLString
{
  v2 = [(SCRCMathSimpleExpression *)self content];
  v3 = [v2 stringWrappedInMathMLTag:@"mtext"];

  return v3;
}

- (id)latexDescriptionInMathMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(SCRCMathSimpleExpression *)self content];
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\text{%@}", v4];

    v4 = v5;
  }

  return v4;
}

@end