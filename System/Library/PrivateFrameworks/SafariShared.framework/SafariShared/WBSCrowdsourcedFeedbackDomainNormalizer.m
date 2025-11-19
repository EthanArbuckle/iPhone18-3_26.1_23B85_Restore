@interface WBSCrowdsourcedFeedbackDomainNormalizer
- (WBSCrowdsourcedFeedbackDomainNormalizer)init;
- (id)transformedValue:(id)a3;
@end

@implementation WBSCrowdsourcedFeedbackDomainNormalizer

- (WBSCrowdsourcedFeedbackDomainNormalizer)init
{
  v7.receiver = self;
  v7.super_class = WBSCrowdsourcedFeedbackDomainNormalizer;
  v2 = [(WBSCrowdsourcedFeedbackDomainNormalizer *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
    dotCharacterSet = v2->_dotCharacterSet;
    v2->_dotCharacterSet = v3;

    v5 = v2;
  }

  return v2;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 host];
LABEL_5:
    v6 = v5;
    v7 = [v5 stringByTrimmingCharactersInSet:self->_dotCharacterSet];

    v8 = [v7 safari_stringByRemovingWwwDotPrefix];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end