@interface SXPullQuoteComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction;
- (id)accessibilityContextualLabel;
- (id)accessibilityCustomRotorMembership;
- (id)textRules;
@end

@implementation SXPullQuoteComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Pull Quote" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (id)accessibilityCustomRotorMembership
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[SXAXCustomRotorDefinition audioVideoRotor];
  v4 = [SXAXCustomRotor rotorWithName:v3];
  v5 = [v2 setWithObject:v4];

  return v5;
}

- (id)textRules
{
  v2 = +[SXComponentTextRules defaultTextRules];
  v3 = [v2 copy];

  [v3 setIsSelectable:1];

  return v3;
}

- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction
{
  classificationCopy = classification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXPullQuoteComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:classificationCopy forDirection:direction];
  }

  return v7;
}

@end