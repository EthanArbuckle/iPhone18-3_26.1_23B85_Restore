@interface NSURL
@end

@implementation NSURL

void __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = WPOSLogAPI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke_cold_1();
    }
  }

  v9 = *(a1 + 40);
  v10 = WebPrivacy::filterUsingCachedParameters(*(a1 + 32), v6);
  (*(v9 + 16))(v9, v10);
}

void __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end