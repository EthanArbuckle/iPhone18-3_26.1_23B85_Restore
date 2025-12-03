@interface WFDataConfigurationButtonsSection
- (BOOL)isEqual:(id)equal;
- (WFDataConfigurationButtonsSection)initWithButtons:(id)buttons;
- (unint64_t)hash;
@end

@implementation WFDataConfigurationButtonsSection

- (unint64_t)hash
{
  buttons = [(WFDataConfigurationButtonsSection *)self buttons];
  v3 = [buttons hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    buttons = [(WFDataConfigurationButtonsSection *)self buttons];
    buttons2 = [equalCopy buttons];
    v7 = [buttons isEqualToArray:buttons2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFDataConfigurationButtonsSection)initWithButtons:(id)buttons
{
  buttonsCopy = buttons;
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

    objc_storeStrong(&v7->_buttons, buttons);
    v11 = v7;
  }

  return v7;
}

@end