@interface SPAnalyticsItem
- (SPAnalyticsItem)initWithResult:(id)a3;
@end

@implementation SPAnalyticsItem

- (SPAnalyticsItem)initWithResult:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SPAnalyticsItem;
  v5 = [(SPAnalyticsItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v6;

    v8 = [v4 sectionBundleIdentifier];
    sectionBundleIdentifier = v5->_sectionBundleIdentifier;
    v5->_sectionBundleIdentifier = v8;

    v10 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 contactIdentifier];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v12;

    v5->_type = [v4 type];
    v5->_isLocalApplicationResult = [v4 isLocalApplicationResult];
    v5->_topHit = [v4 topHit];
    v5->_isStaticCorrection = [v4 isStaticCorrection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v4 rankingItem];
      if ([v14 didMatchRankingDescriptor:*MEMORY[0x1E69D3EB8]])
      {
        v5->_isDisplayNameCorrectionsMatch = 1;
      }

      v15 = [v4 launchString];

      if (v15)
      {
        v5->_isLocalShortcut = 1;
      }
    }
  }

  return v5;
}

@end