@interface SXIntroComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)a3 forDirection:(int64_t)a4;
- (id)accessibilityContextualLabel;
@end

@implementation SXIntroComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Intro" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (BOOL)hasAffiliationWithClassification:(id)a3 forDirection:(int64_t)a4
{
  v6 = a3;
  if (!a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXIntroComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:v6 forDirection:a4];
  }

  return v7;
}

@end