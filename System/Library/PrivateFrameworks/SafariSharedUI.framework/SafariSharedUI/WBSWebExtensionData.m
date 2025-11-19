@interface WBSWebExtensionData
- (void)load;
- (void)unload;
@end

@implementation WBSWebExtensionData

- (void)initWithExtension:extensionsController:extensionBundleIdentifier:extensionIdentifier:uniqueIdentifier:baseURIHost:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Unable to create WebKit extension with identifier %{private}@ with error: %{public}@", v4, v5);
}

- (void)load
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Unable to load WebKit extension with identifier %{private}@ with error: %{public}@", v4, v5);
}

- (void)unload
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Unable to unload WebKit extension with identifier %{private}@ with error: %{public}@", v4, v5);
}

+ (void)unlocalizedManifestDictionaryFromData:withExtensionIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Unable to parse manifest.json for extension with identifier %{private}@. Error: %{public}@", v4, v5);
}

+ (void)unlocalizedManifestDictionaryFromData:(uint64_t)a1 withExtensionIdentifier:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Format for manifest.json was not expected for extension with identifier %{private}@.", &v2, 0xCu);
}

- (void)grantPermissions:(uint8_t *)buf origins:(_BYTE *)a2 expirationDate:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "grantPermissions:origins:expirationDate: webKitMatchPattern is nil", buf, 2u);
}

- (void)extensionSupportsSafariShortVersion:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v3 = 138477827;
  v4 = v2;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Unknown manifest version for extension with identifier %{private}@.", &v3, 0xCu);
}

@end