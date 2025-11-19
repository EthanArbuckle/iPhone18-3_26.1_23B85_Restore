@interface WBS
@end

@implementation WBS

void __WBS_LOG_CHANNEL_PREFIXPrivacyProxy_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "PrivacyProxy");
  v1 = WBS_LOG_CHANNEL_PREFIXPrivacyProxy_log;
  WBS_LOG_CHANNEL_PREFIXPrivacyProxy_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSiteMetadata_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "SiteMetadata");
  v1 = WBS_LOG_CHANNEL_PREFIXSiteMetadata_log;
  WBS_LOG_CHANNEL_PREFIXSiteMetadata_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXFaviconProvider_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "FaviconProvider");
  v1 = WBS_LOG_CHANNEL_PREFIXFaviconProvider_log;
  WBS_LOG_CHANNEL_PREFIXFaviconProvider_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCloudExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "CloudExtensions");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudExtensions_log;
  WBS_LOG_CHANNEL_PREFIXCloudExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Extensions");
  v1 = WBS_LOG_CHANNEL_PREFIXExtensions_log;
  WBS_LOG_CHANNEL_PREFIXExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXMobileAsset_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "MobileAsset");
  v1 = WBS_LOG_CHANNEL_PREFIXMobileAsset_log;
  WBS_LOG_CHANNEL_PREFIXMobileAsset_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPrivacyReport_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "PrivacyReport");
  v1 = WBS_LOG_CHANNEL_PREFIXPrivacyReport_log;
  WBS_LOG_CHANNEL_PREFIXPrivacyReport_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXStartPage_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "StartPage");
  v1 = WBS_LOG_CHANNEL_PREFIXStartPage_log;
  WBS_LOG_CHANNEL_PREFIXStartPage_log = v0;
}

@end