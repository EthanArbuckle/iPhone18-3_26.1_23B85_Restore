@interface WFDataConfigurationParametersSection
- (BOOL)isEqual:(id)equal;
- (WFDataConfigurationParametersSection)initWithParameters:(id)parameters sectionIndex:(int64_t)index;
- (unint64_t)hash;
@end

@implementation WFDataConfigurationParametersSection

- (unint64_t)hash
{
  sectionIdentifier = [(WFDataConfigurationParametersSection *)self sectionIdentifier];
  v3 = [sectionIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sectionIdentifier = [(WFDataConfigurationParametersSection *)self sectionIdentifier];
    sectionIdentifier2 = [equalCopy sectionIdentifier];
    v7 = [sectionIdentifier isEqualToString:sectionIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFDataConfigurationParametersSection)initWithParameters:(id)parameters sectionIndex:(int64_t)index
{
  parametersCopy = parameters;
  v24.receiver = self;
  v24.super_class = WFDataConfigurationParametersSection;
  v7 = [(WFDataConfigurationParametersSection *)&v24 init];
  if (v7)
  {
    v8 = [parametersCopy copy];
    parameters = v7->_parameters;
    v7->_parameters = v8;

    index = [NSString stringWithFormat:@"Section:%ld", index];
    sectionIdentifier = v7->_sectionIdentifier;
    v7->_sectionIdentifier = index;

    if ([parametersCopy count] == 1)
    {
      firstObject = [parametersCopy firstObject];
      if (![firstObject allowsMultipleValues])
      {
LABEL_6:

        goto LABEL_7;
      }

      firstObject2 = [parametersCopy firstObject];
      displaysMultipleValueEditor = [firstObject2 displaysMultipleValueEditor];

      if (displaysMultipleValueEditor)
      {
        firstObject = [parametersCopy firstObject];
        localizedLabel = [firstObject localizedLabel];
        v16 = [localizedLabel copy];
        sectionTitle = v7->_sectionTitle;
        v7->_sectionTitle = v16;

        goto LABEL_6;
      }
    }

LABEL_7:
    lastObject = [parametersCopy lastObject];
    localizedDescription = [lastObject localizedDescription];
    v20 = [localizedDescription copy];
    sectionFooter = v7->_sectionFooter;
    v7->_sectionFooter = v20;

    v22 = v7;
  }

  return v7;
}

@end