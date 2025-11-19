@interface NSURL(WebPrivacyExtras)
- (id)_wp_urlByRemovingTrackingInformation;
- (void)_wp_removeTrackingInformation:()WebPrivacyExtras;
@end

@implementation NSURL(WebPrivacyExtras)

- (id)_wp_urlByRemovingTrackingInformation
{
  v2 = [a1 query];
  v3 = [v2 length];

  if (v3)
  {
    v4 = +[WPResources sharedInstance];
    [v4 _waitForCachedLinkFilteringData];

    v6 = WebPrivacy::filterUsingCachedParameters(a1, v5);
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (void)_wp_removeTrackingInformation:()WebPrivacyExtras
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAfterUpdates:0];
  v6 = +[WPResources sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke;
  v8[3] = &unk_279EAF268;
  v7 = v4;
  v8[4] = a1;
  v9 = v7;
  [v6 requestLinkFilteringData:v5 completionHandler:v8];
}

@end