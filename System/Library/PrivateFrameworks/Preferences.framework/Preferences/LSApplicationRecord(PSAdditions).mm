@interface LSApplicationRecord(PSAdditions)
- (uint64_t)supportsJournalingSuggestions;
@end

@implementation LSApplicationRecord(PSAdditions)

- (uint64_t)supportsJournalingSuggestions
{
  if (!MomentsOnboardingAndSettingsLibraryCore())
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getMOApprovedApplicationsManagerClass_softClass;
  v12 = getMOApprovedApplicationsManagerClass_softClass;
  if (!getMOApprovedApplicationsManagerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMOApprovedApplicationsManagerClass_block_invoke;
    v8[3] = &unk_1E71DBC78;
    v8[4] = &v9;
    __getMOApprovedApplicationsManagerClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v2 sharedInstance];
  bundleIdentifier = [self bundleIdentifier];
  v6 = [sharedInstance isJournalingSuggestionsAvailableForBundleIdentifier:bundleIdentifier];

  return v6;
}

@end