@interface NSItemProvider
@end

@implementation NSItemProvider

id __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2;
  v10[3] = &unk_279EAF2E0;
  v13 = v5;
  v6 = *(a1 + 32);
  v11 = v6;
  v12 = *(a1 + 40);
  v7 = v5;
  v8 = [v6 loadWithOptions_v2:a2 completionHandler:v10];

  return v8;
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 data];
  v5 = [v4 length];

  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v3 data];
    v8 = [a1[4] typeIdentifier];
    v24 = 0;
    v9 = [v6 objectWithItemProviderData:v7 typeIdentifier:v8 error:&v24];
    v10 = v24;
    v11 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v14 = [v12 scheme];
      if ([v14 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"https"))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9;
        v20[3] = &unk_279EAF2B8;
        v23 = a1[6];
        v21 = v3;
        v22 = a1[5];
        [v12 _wp_removeTrackingInformation:v20];
      }

      else
      {
        v16 = WPOSLogAPI();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_273D20000, v16, OS_LOG_TYPE_INFO, "Skipping URL returned from item provider (scheme is not HTTP-family)", buf, 2u);
        }

        (*(a1[6] + 2))();
      }
    }

    else
    {
      v15 = WPOSLogAPI();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = [v3 data];
        v19 = [v18 length];
        *buf = 134218242;
        v26 = v19;
        v27 = 2112;
        v28 = v10;
        _os_log_error_impl(&dword_273D20000, v15, OS_LOG_TYPE_ERROR, "Failed to deserialize NSURL from item provider data (%zu bytes) with error: %@", buf, 0x16u);
      }

      (*(a1[6] + 2))();
    }
  }

  else
  {
    v13 = WPOSLogAPI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2_cold_1();
    }

    (*(a1[6] + 2))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10;
    v8[3] = &unk_279EAF290;
    v4 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    v5 = [v3 loadDataWithTypeIdentifier:v4 forItemProviderCompletionHandler:v8];
  }

  else
  {
    v6 = WPOSLogAPI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9_cold_1();
    }

    v7 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 length])
  {
    v7 = WPOSLogAPI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10_cold_1();
    }

    v8 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) copyWithData:v5 urlWrapper:0 cleanupHandler:0 error:0];
    (*(v9 + 16))(v9, v10);
  }
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end