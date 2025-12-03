@interface NSExtension(SiriUI)
- (id)_siriui_extensionIconImage;
- (id)_siriui_iconImageWithFormat:()SiriUI;
- (id)siriui_displayName;
@end

@implementation NSExtension(SiriUI)

- (id)siriui_displayName
{
  v2 = [self objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  if (![v2 length])
  {
    v3 = MEMORY[0x277CC1E60];
    v4 = MEMORY[0x277CC1ED8];
    identifier = [self identifier];
    v6 = [v4 pluginKitProxyForIdentifier:identifier];
    containingBundle = [v6 containingBundle];
    bundleIdentifier = [containingBundle bundleIdentifier];
    v9 = [v3 applicationProxyForIdentifier:bundleIdentifier];

    localizedName = [v9 localizedName];

    v2 = localizedName;
  }

  return v2;
}

- (id)_siriui_iconImageWithFormat:()SiriUI
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6;

  _siriui_extensionIconImage = [self _siriui_extensionIconImage];
  v9 = _siriui_extensionIconImage;
  if (_siriui_extensionIconImage)
  {
    v10 = [_siriui_extensionIconImage _applicationIconImageForFormat:a3 precomposed:0 scale:v7];
  }

  else
  {
    v11 = MEMORY[0x277D755B8];
    v12 = MEMORY[0x277CC1ED8];
    identifier = [self identifier];
    v14 = [v12 pluginKitProxyForIdentifier:identifier];
    v10 = [v11 _iconForResourceProxy:v14 format:a3];
  }

  return v10;
}

- (id)_siriui_extensionIconImage
{
  if (!SiriUISystemLanguageIsRTL() || ([self objectForInfoDictionaryKey:@"CFBundleIconFilesRightToLeft"], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [self objectForInfoDictionaryKey:@"CFBundleIconFiles"];
  }

  if ([v2 count])
  {
    v3 = MEMORY[0x277D755B8];
    firstObject = [v2 firstObject];
    v5 = MEMORY[0x277CCA8D8];
    v6 = MEMORY[0x277CC1ED8];
    identifier = [self identifier];
    v8 = [v6 pluginKitProxyForIdentifier:identifier];
    bundleURL = [v8 bundleURL];
    v10 = [v5 bundleWithURL:bundleURL];
    v11 = [v3 imageNamed:firstObject inBundle:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end