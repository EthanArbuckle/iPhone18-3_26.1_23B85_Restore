@interface SCRCMathNumberExpression
- (id)mathMLString;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
@end

@implementation SCRCMathNumberExpression

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v5 = MEMORY[0x277CCA898];
  v6 = [(SCRCMathSimpleExpression *)self content:a3];
  v7 = [v5 scrcStringWithString:v6];

  v8 = [(SCRCMathSimpleExpression *)self content];
  if ([v8 length] > 5)
  {
    goto LABEL_4;
  }

  v9 = [(SCRCMathSimpleExpression *)self content];
  if ([v9 containsString:@"."])
  {

LABEL_4:
    goto LABEL_5;
  }

  v21 = [(SCRCMathSimpleExpression *)self content];
  v22 = [v21 containsString:{@", "}];

  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v11 = [(SCRCMathSimpleExpression *)self content];
  v12 = [v10 numberFromString:v11];

  if (!v12)
  {
    v18 = MEMORY[0x277CCA898];
    v19 = [(SCRCMathSimpleExpression *)self content];
    v20 = [v18 scrcStringWithString:v19];

LABEL_14:
    goto LABEL_15;
  }

  [v10 setNumberStyle:5];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  [v10 setLocale:v13];

  v14 = [v10 stringFromNumber:v12];
  if (!v14)
  {
    v27 = MEMORY[0x277CCA898];
    v28 = [(SCRCMathSimpleExpression *)self content];
    v20 = [v27 scrcStringWithString:v28];

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
  v2 = [(SCRCMathSimpleExpression *)self content];
  v3 = [v2 stringWrappedInMathMLTag:@"mn"];

  return v3;
}

@end