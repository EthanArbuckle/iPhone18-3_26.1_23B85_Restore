@interface WFDataConfigurationButtonsSection
- (BOOL)isEqual:(id)a3;
- (WFDataConfigurationButtonsSection)initWithButtons:(id)a3;
- (unint64_t)hash;
@end

@implementation WFDataConfigurationButtonsSection

- (unint64_t)hash
{
  v2 = [(WFDataConfigurationButtonsSection *)self buttons];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFDataConfigurationButtonsSection *)self buttons];
    v6 = [v4 buttons];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFDataConfigurationButtonsSection)initWithButtons:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFDataConfigurationButtonsSection;
  v6 = [(WFDataConfigurationButtonsSection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    sectionIdentifier = v6->_sectionIdentifier;
    v6->_sectionIdentifier = @"Section:FooterButtons";

    sectionTitle = v7->_sectionTitle;
    v7->_sectionTitle = 0;

    sectionFooter = v7->_sectionFooter;
    v7->_sectionFooter = 0;

    objc_storeStrong(&v7->_buttons, a3);
    v11 = v7;
  }

  return v7;
}

@end