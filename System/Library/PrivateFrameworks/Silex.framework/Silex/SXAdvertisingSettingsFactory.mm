@interface SXAdvertisingSettingsFactory
- (SXAdvertisingSettingsFactory)initWithDocumentProvider:(id)a3 debugSettingsProvider:(id)a4;
- (id)createAdvertisingSettingsWithDOMObjectProvider:(id)a3;
@end

@implementation SXAdvertisingSettingsFactory

- (SXAdvertisingSettingsFactory)initWithDocumentProvider:(id)a3 debugSettingsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXAdvertisingSettingsFactory;
  v9 = [(SXAdvertisingSettingsFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, a3);
    objc_storeStrong(&v10->_debugSettingsProvider, a4);
  }

  return v10;
}

- (id)createAdvertisingSettingsWithDOMObjectProvider:(id)a3
{
  v4 = a3;
  v5 = [(SXAdvertisingSettingsFactory *)self debugSettingsProvider];
  v6 = [v5 debugSettings];

  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

  v8 = [v4 autoPlacement];
  v9 = [v8 advertisement];

  if (v9)
  {
    if (![v9 enabled])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v10 = [SXAutoPlacementAdvertisingSettings alloc];
    v11 = [v9 frequency];
    v12 = [v9 bannerType];
    v13 = [v9 layout];
    v14 = [v9 distanceFromMedia];
    v7 = [(SXAutoPlacementAdvertisingSettings *)v10 initWithFrequency:v11 bannerType:v12 layout:v13 distanceFromMedia:v14, v15];
  }

  else
  {
    v13 = [(SXAdvertisingSettingsFactory *)self documentProvider];
    v16 = [v13 document];
    v7 = [v16 advertisingSettings];
  }

LABEL_9:
LABEL_10:

  return v7;
}

@end