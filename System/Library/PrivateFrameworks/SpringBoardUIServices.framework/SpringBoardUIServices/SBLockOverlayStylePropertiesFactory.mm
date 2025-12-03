@interface SBLockOverlayStylePropertiesFactory
+ (id)overlayPropertiesFactoryWithStyle:(unint64_t)style;
- (SBLockOverlayStylePropertiesFactory)initWithStyle:(unint64_t)style;
- (id)_fetchAndCachePropsForDeviceQuality:(int64_t)quality;
- (id)propertiesWithDeviceDefaultGraphicsQuality;
@end

@implementation SBLockOverlayStylePropertiesFactory

+ (id)overlayPropertiesFactoryWithStyle:(unint64_t)style
{
  v3 = [[self alloc] initWithStyle:style];

  return v3;
}

- (SBLockOverlayStylePropertiesFactory)initWithStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = SBLockOverlayStylePropertiesFactory;
  v4 = [(SBLockOverlayStylePropertiesFactory *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
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

- (id)_fetchAndCachePropsForDeviceQuality:(int64_t)quality
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_deviceQualityToProperties objectForKey:v5];
  if (!v6)
  {
    v6 = [[SBLockOverlayStyleProperties alloc] initWithStyle:self->_style quality:quality];
    [(NSMutableDictionary *)self->_deviceQualityToProperties setObject:v6 forKey:v5];
  }

  return v6;
}

@end