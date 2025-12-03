@interface SXBylineComponentClassification
+ (id)accessibilityContextualLabel;
- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction;
@end

@implementation SXBylineComponentClassification

+ (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Byline" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction
{
  classificationCopy = classification;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXBylineComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:classificationCopy forDirection:direction];
  }

  return v7;
}

@end