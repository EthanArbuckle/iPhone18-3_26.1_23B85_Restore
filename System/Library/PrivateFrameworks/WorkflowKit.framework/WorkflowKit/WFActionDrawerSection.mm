@interface WFActionDrawerSection
- (WFActionDrawerSection)initWithLocalizedTitle:(id)title donations:(id)donations bundleIdentifier:(id)identifier sectionType:(int64_t)type;
@end

@implementation WFActionDrawerSection

- (WFActionDrawerSection)initWithLocalizedTitle:(id)title donations:(id)donations bundleIdentifier:(id)identifier sectionType:(int64_t)type
{
  titleCopy = title;
  donationsCopy = donations;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = WFActionDrawerSection;
  v14 = [(WFActionDrawerSection *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_localizedTitle, title);
    v16 = [donationsCopy copy];
    donations = v15->_donations;
    v15->_donations = v16;

    v18 = [identifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    v15->_sectionType = type;
    v20 = v15;
  }

  return v15;
}

@end