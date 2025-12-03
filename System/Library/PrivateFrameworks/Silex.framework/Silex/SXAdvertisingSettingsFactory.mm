@interface SXAdvertisingSettingsFactory
- (SXAdvertisingSettingsFactory)initWithDocumentProvider:(id)provider debugSettingsProvider:(id)settingsProvider;
- (id)createAdvertisingSettingsWithDOMObjectProvider:(id)provider;
@end

@implementation SXAdvertisingSettingsFactory

- (SXAdvertisingSettingsFactory)initWithDocumentProvider:(id)provider debugSettingsProvider:(id)settingsProvider
{
  providerCopy = provider;
  settingsProviderCopy = settingsProvider;
  v12.receiver = self;
  v12.super_class = SXAdvertisingSettingsFactory;
  v9 = [(SXAdvertisingSettingsFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, provider);
    objc_storeStrong(&v10->_debugSettingsProvider, settingsProvider);
  }

  return v10;
}

- (id)createAdvertisingSettingsWithDOMObjectProvider:(id)provider
{
  providerCopy = provider;
  debugSettingsProvider = [(SXAdvertisingSettingsFactory *)self debugSettingsProvider];
  debugSettings = [debugSettingsProvider debugSettings];

  if (debugSettings)
  {
    advertisingSettings = debugSettings;
    goto LABEL_10;
  }

  autoPlacement = [providerCopy autoPlacement];
  advertisement = [autoPlacement advertisement];

  if (advertisement)
  {
    if (![advertisement enabled])
    {
      advertisingSettings = 0;
      goto LABEL_9;
    }

    v10 = [SXAutoPlacementAdvertisingSettings alloc];
    frequency = [advertisement frequency];
    bannerType = [advertisement bannerType];
    layout = [advertisement layout];
    distanceFromMedia = [advertisement distanceFromMedia];
    advertisingSettings = [(SXAutoPlacementAdvertisingSettings *)v10 initWithFrequency:frequency bannerType:bannerType layout:layout distanceFromMedia:distanceFromMedia, v15];
  }

  else
  {
    layout = [(SXAdvertisingSettingsFactory *)self documentProvider];
    document = [layout document];
    advertisingSettings = [document advertisingSettings];
  }

LABEL_9:
LABEL_10:

  return advertisingSettings;
}

@end