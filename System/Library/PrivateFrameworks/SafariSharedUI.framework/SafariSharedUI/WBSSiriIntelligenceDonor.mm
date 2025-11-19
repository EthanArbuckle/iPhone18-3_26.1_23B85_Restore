@interface WBSSiriIntelligenceDonor
@end

@implementation WBSSiriIntelligenceDonor

void __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke_cold_1(v7, v6);
    }
  }

  else
  {
    if (![v5 length])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke_cold_2(a1, v8);
      }
    }

    if (*(a1 + 72) == 1)
    {
      [*(a1 + 40) donateDataForPageWithURL:*(a1 + 32) fullPageText:v5 readerText:0 profileIdentifier:*(a1 + 48) personalizationData:*(a1 + 56)];
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Error extracting content of webpage as string: %{public}@; page will not be donated to CoreSpotlight", &v5, 0xCu);
}

void __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "String contents of webpage is empty, but proceeding with donation to CoreSpotlight for page URL: %{private}@", &v3, 0xCu);
}

@end