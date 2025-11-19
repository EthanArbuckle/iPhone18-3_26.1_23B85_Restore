@interface SBLockOverlayStylePropertiesFactory
+ (id)overlayPropertiesFactoryWithStyle:(unint64_t)a3;
- (SBLockOverlayStylePropertiesFactory)initWithStyle:(unint64_t)a3;
- (id)_fetchAndCachePropsForDeviceQuality:(int64_t)a3;
- (id)propertiesWithDeviceDefaultGraphicsQuality;
@end

@implementation SBLockOverlayStylePropertiesFactory

+ (id)overlayPropertiesFactoryWithStyle:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithStyle:a3];

  return v3;
}

- (SBLockOverlayStylePropertiesFactory)initWithStyle:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = SBLockOverlayStylePropertiesFactory;
  v4 = [(SBLockOverlayStylePropertiesFactory *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceQualityToProperties = v5->_deviceQualityToProperties;
    v5->_deviceQualityToProperties = v6;
  }

  return v5;
}

- (id)propertiesWithDeviceDefaultGraphicsQuality
{
  v3 = SBUIGraphicsQuality();

  return [(SBLockOverlayStylePropertiesFactory *)self propertiesWithGraphicsQuality:v3];
}

- (id)_fetchAndCachePropsForDeviceQuality:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_deviceQualityToProperties objectForKey:v5];
  if (!v6)
  {
    v6 = [[SBLockOverlayStyleProperties alloc] initWithStyle:self->_style quality:a3];
    [(NSMutableDictionary *)self->_deviceQualityToProperties setObject:v6 forKey:v5];
  }

  return v6;
}

@end