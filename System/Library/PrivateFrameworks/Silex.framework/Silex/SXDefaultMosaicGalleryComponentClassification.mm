@interface SXDefaultMosaicGalleryComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)classification forDirection:(int64_t)direction;
- (id)accessibilityContextualLabel;
@end

@implementation SXDefaultMosaicGalleryComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Gallery" value:&stru_1F532F6C0 table:0];

  return v3;
}

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
    v9.super_class = SXDefaultMosaicGalleryComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:classificationCopy forDirection:direction];
  }

  return v7;
}

@end