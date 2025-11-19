@interface WFActionDrawerSection
- (WFActionDrawerSection)initWithLocalizedTitle:(id)a3 donations:(id)a4 bundleIdentifier:(id)a5 sectionType:(int64_t)a6;
@end

@implementation WFActionDrawerSection

- (WFActionDrawerSection)initWithLocalizedTitle:(id)a3 donations:(id)a4 bundleIdentifier:(id)a5 sectionType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = WFActionDrawerSection;
  v14 = [(WFActionDrawerSection *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_localizedTitle, a3);
    v16 = [v12 copy];
    donations = v15->_donations;
    v15->_donations = v16;

    v18 = [v13 copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    v15->_sectionType = a6;
    v20 = v15;
  }

  return v15;
}

@end