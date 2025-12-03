@interface SXDefaultImageComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction;
@end

@implementation SXDefaultImageComponentClassification

- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction
{
  classificationCopy = classification;
  if (direction == 1 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXDefaultImageComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:classificationCopy forDirection:direction];
  }

  return v7;
}

@end