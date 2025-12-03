@interface NSExtension(_QLUtilities)
- (id)QL_parentBundleID;
- (uint64_t)QL_isAppleExtension;
- (uint64_t)isGenerationPreview;
- (void)QL_parentBundleID;
@end

@implementation NSExtension(_QLUtilities)

- (uint64_t)QL_isAppleExtension
{
  identifier = [self identifier];
  v2 = [identifier hasPrefix:@"com.apple."];

  return v2;
}

- (id)QL_parentBundleID
{
  _extensionBundle = [self _extensionBundle];
  bundleIdentifier = [_extensionBundle bundleIdentifier];

  v10 = 0;
  v3 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:bundleIdentifier error:&v10];
  v4 = v10;
  if (!v3)
  {
    v5 = MEMORY[0x277CDAB78];
    v6 = *(MEMORY[0x277CDAB78] + 128);
    if (!v6)
    {
      QLTInitLogging();
      v6 = *(v5 + 128);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSExtension(_QLUtilities) *)bundleIdentifier QL_parentBundleID];
    }
  }

  containingBundleRecord = [v3 containingBundleRecord];
  bundleIdentifier2 = [containingBundleRecord bundleIdentifier];

  return bundleIdentifier2;
}

- (uint64_t)isGenerationPreview
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"QLIsDataBasedPreview"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)QL_parentBundleID
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2615AE000, log, OS_LOG_TYPE_ERROR, "Could not find application extension record %@: %@", &v3, 0x16u);
}

@end