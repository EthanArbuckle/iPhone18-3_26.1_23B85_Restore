@interface SCRCMathTextExpression
- (id)latexDescriptionInMathMode:(BOOL)mode;
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
@end

@implementation SCRCMathTextExpression

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CCA898]);
  content = [(SCRCMathSimpleExpression *)self content];
  v10 = @"kSCRCMathStringAttributeIsNonTechnicalText";
  v11[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithString:content attributes:v7];

  return v8;
}

- (id)mathMLString
{
  content = [(SCRCMathSimpleExpression *)self content];
  v3 = [content stringWrappedInMathMLTag:@"mtext"];

  return v3;
}

- (id)latexDescriptionInMathMode:(BOOL)mode
{
  modeCopy = mode;
  content = [(SCRCMathSimpleExpression *)self content];
  if (modeCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\text{%@}", content];

    content = v5;
  }

  return content;
}

@end