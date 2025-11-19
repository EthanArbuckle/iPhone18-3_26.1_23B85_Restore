@interface WFDataConfigurationParametersSection
- (BOOL)isEqual:(id)a3;
- (WFDataConfigurationParametersSection)initWithParameters:(id)a3 sectionIndex:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation WFDataConfigurationParametersSection

- (unint64_t)hash
{
  v2 = [(WFDataConfigurationParametersSection *)self sectionIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFDataConfigurationParametersSection *)self sectionIdentifier];
    v6 = [v4 sectionIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFDataConfigurationParametersSection)initWithParameters:(id)a3 sectionIndex:(int64_t)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = WFDataConfigurationParametersSection;
  v7 = [(WFDataConfigurationParametersSection *)&v24 init];
  if (v7)
  {
    v8 = [v6 copy];
    parameters = v7->_parameters;
    v7->_parameters = v8;

    v10 = [NSString stringWithFormat:@"Section:%ld", a4];
    sectionIdentifier = v7->_sectionIdentifier;
    v7->_sectionIdentifier = v10;

    if ([v6 count] == 1)
    {
      v12 = [v6 firstObject];
      if (![v12 allowsMultipleValues])
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v6 firstObject];
      v14 = [v13 displaysMultipleValueEditor];

      if (v14)
      {
        v12 = [v6 firstObject];
        v15 = [v12 localizedLabel];
        v16 = [v15 copy];
        sectionTitle = v7->_sectionTitle;
        v7->_sectionTitle = v16;

        goto LABEL_6;
      }
    }

LABEL_7:
    v18 = [v6 lastObject];
    v19 = [v18 localizedDescription];
    v20 = [v19 copy];
    sectionFooter = v7->_sectionFooter;
    v7->_sectionFooter = v20;

    v22 = v7;
  }

  return v7;
}

@end