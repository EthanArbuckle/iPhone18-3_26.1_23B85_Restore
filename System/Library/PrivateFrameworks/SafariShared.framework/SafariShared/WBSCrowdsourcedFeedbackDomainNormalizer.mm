@interface WBSCrowdsourcedFeedbackDomainNormalizer
- (WBSCrowdsourcedFeedbackDomainNormalizer)init;
- (id)transformedValue:(id)value;
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

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    host = [valueCopy host];
LABEL_5:
    v6 = host;
    v7 = [host stringByTrimmingCharactersInSet:self->_dotCharacterSet];

    safari_stringByRemovingWwwDotPrefix = [v7 safari_stringByRemovingWwwDotPrefix];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    host = valueCopy;
    goto LABEL_5;
  }

  safari_stringByRemovingWwwDotPrefix = 0;
LABEL_7:

  return safari_stringByRemovingWwwDotPrefix;
}

@end