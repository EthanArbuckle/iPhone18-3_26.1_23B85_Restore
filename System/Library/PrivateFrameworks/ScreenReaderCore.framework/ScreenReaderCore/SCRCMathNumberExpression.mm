@interface SCRCMathNumberExpression
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
@end

@implementation SCRCMathNumberExpression

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  v5 = MEMORY[0x277CCA898];
  v6 = [(SCRCMathSimpleExpression *)self content:style];
  v7 = [v5 scrcStringWithString:v6];

  content = [(SCRCMathSimpleExpression *)self content];
  if ([content length] > 5)
  {
    goto LABEL_4;
  }

  content2 = [(SCRCMathSimpleExpression *)self content];
  if ([content2 containsString:@"."])
  {

LABEL_4:
    goto LABEL_5;
  }

  content3 = [(SCRCMathSimpleExpression *)self content];
  v22 = [content3 containsString:{@", "}];

  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  content4 = [(SCRCMathSimpleExpression *)self content];
  v12 = [v10 numberFromString:content4];

  if (!v12)
  {
    v18 = MEMORY[0x277CCA898];
    content5 = [(SCRCMathSimpleExpression *)self content];
    v20 = [v18 scrcStringWithString:content5];

LABEL_14:
    goto LABEL_15;
  }

  [v10 setNumberStyle:5];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v10 setLocale:currentLocale];

  v14 = [v10 stringFromNumber:v12];
  if (!v14)
  {
    v27 = MEMORY[0x277CCA898];
    content6 = [(SCRCMathSimpleExpression *)self content];
    v20 = [v27 scrcStringWithString:content6];

    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v14 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

  v17 = [MEMORY[0x277CCA898] scrcStringWithString:v16];

  v7 = v17;
LABEL_10:
  if ([(SCRCMathSimpleExpression *)self isImplicit])
  {
    v23 = MEMORY[0x277CCA898];
    v24 = [(SCRCMathExpression *)self localizedStringForKey:@"implicit.decoration"];
    v25 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"implicit"];
    v26 = [v23 scrcStringWithFormat:v24, v25, v7];

    v7 = v26;
  }

  v7 = v7;
  v20 = v7;
LABEL_15:

  return v20;
}

- (id)mathMLString
{
  content = [(SCRCMathSimpleExpression *)self content];
  v3 = [content stringWrappedInMathMLTag:@"mn"];

  return v3;
}

@end