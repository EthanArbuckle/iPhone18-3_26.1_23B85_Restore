@interface SXDefaultAudioComponentClassification
- (BOOL)hasAffiliationWithClassification:(id)a3 forDirection:(int64_t)a4;
@end

@implementation SXDefaultAudioComponentClassification

- (BOOL)hasAffiliationWithClassification:(id)a3 forDirection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SXDefaultAudioComponentClassification;
    v7 = [(SXComponentClassification *)&v9 hasAffiliationWithClassification:v6 forDirection:a4];
  }

  return v7;
}

@end