@interface SPAnalyticsItem
- (SPAnalyticsItem)initWithResult:(id)result;
@end

@implementation SPAnalyticsItem

- (SPAnalyticsItem)initWithResult:(id)result
{
  resultCopy = result;
  v17.receiver = self;
  v17.super_class = SPAnalyticsItem;
  v5 = [(SPAnalyticsItem *)&v17 init];
  if (v5)
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = applicationBundleIdentifier;

    sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
    sectionBundleIdentifier = v5->_sectionBundleIdentifier;
    v5->_sectionBundleIdentifier = sectionBundleIdentifier;

    identifier = [resultCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    contactIdentifier = [resultCopy contactIdentifier];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = contactIdentifier;

    v5->_type = [resultCopy type];
    v5->_isLocalApplicationResult = [resultCopy isLocalApplicationResult];
    v5->_topHit = [resultCopy topHit];
    v5->_isStaticCorrection = [resultCopy isStaticCorrection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rankingItem = [resultCopy rankingItem];
      if ([rankingItem didMatchRankingDescriptor:*MEMORY[0x1E69D3EB8]])
      {
        v5->_isDisplayNameCorrectionsMatch = 1;
      }

      launchString = [resultCopy launchString];

      if (launchString)
      {
        v5->_isLocalShortcut = 1;
      }
    }
  }

  return v5;
}

@end