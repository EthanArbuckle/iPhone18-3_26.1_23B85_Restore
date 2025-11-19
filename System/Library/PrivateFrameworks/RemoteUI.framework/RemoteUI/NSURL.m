@interface NSURL
@end

@implementation NSURL

uint64_t __52__NSURL_RemoteUIAdditions__rui_isSupportedNativeURL__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"prefs", @"music", @"fmf1", @"applenews", @"itms-ui", 0}];
  v1 = rui_isSupportedNativeURL_supportedSchemes;
  rui_isSupportedNativeURL_supportedSchemes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __52__NSURL_RemoteUIAdditions__rui_isSupportedSafariURL__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"http", @"https", 0}];
  v1 = rui_isSupportedSafariURL_supportedSafariSchemes;
  rui_isSupportedSafariURL_supportedSafariSchemes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end