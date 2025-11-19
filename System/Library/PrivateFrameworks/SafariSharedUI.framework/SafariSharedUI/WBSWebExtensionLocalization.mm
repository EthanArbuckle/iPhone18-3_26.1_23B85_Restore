@interface WBSWebExtensionLocalization
@end

@implementation WBSWebExtensionLocalization

- (void)initWithBundleURL:(uint64_t)a1 defaultLocale:(NSObject *)a2 uniqueIdentifier:extensionIdentifier:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Not loading localization for extension %{private}@. No default locale provided.", &v2, 0xCu);
}

@end