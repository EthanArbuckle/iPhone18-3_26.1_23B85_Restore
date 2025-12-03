@interface SiriUIDeviceInfo
+ (id)sharedInstance;
- (SiriUIDeviceInfo)initWithLargeFormatPhone:(BOOL)phone gestaltModes:(id)modes screenSize:(CGSize)size;
- (void)_updateProductTypeDerivedProperties;
@end

@implementation SiriUIDeviceInfo

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SiriUIDeviceInfo_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

void __34__SiriUIDeviceInfo_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = MGGetBoolAnswer();
  v10 = MGCopyAnswer();
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  v5 = v4;
  v7 = v6;

  v8 = [objc_alloc(*(a1 + 32)) initWithLargeFormatPhone:v2 gestaltModes:v10 screenSize:{v5, v7}];
  v9 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v8;
}

- (SiriUIDeviceInfo)initWithLargeFormatPhone:(BOOL)phone gestaltModes:(id)modes screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  modesCopy = modes;
  v20.receiver = self;
  v20.super_class = SiriUIDeviceInfo;
  v10 = [(SiriUIDeviceInfo *)&v20 init];
  if (v10)
  {
    v10->_deviceSupportsProximitySensor = MGGetBoolAnswer();
    v10->_largeFormatPhone = phone;
    if (modesCopy)
    {
      v11 = [modesCopy objectForKeyedSubscript:@"zoomed"];
      if ([v11 count] < 4)
      {
        v15 = 0;
      }

      else
      {
        v12 = [v11 objectAtIndexedSubscript:1];
        v13 = [v11 objectAtIndexedSubscript:3];
        v14 = v13;
        v15 = 0;
        if (v12 && v13)
        {
          [v12 floatValue];
          v17 = v16;
          [v14 floatValue];
          v15 = height == v18 && width == v17;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v10->_deviceZoomed = v15;
    [(SiriUIDeviceInfo *)v10 _updateProductTypeDerivedProperties];
  }

  return v10;
}

- (void)_updateProductTypeDerivedProperties
{
  v3 = 1;
  v4 = MGGetProductType();
  if (v4 <= 1737882205)
  {
    if (v4 == 445396642)
    {
      goto LABEL_9;
    }

    v5 = 1701146937;
  }

  else
  {
    if (v4 == 1737882206 || v4 == 3637438250)
    {
      goto LABEL_9;
    }

    v5 = 3933982784;
  }

  if (v4 != v5)
  {
    v3 = 0;
  }

LABEL_9:
  self->_deviceShouldUseFrozenBackdropSnapshot = v3;
  self->_deviceShouldFreezeAura = v3;
  self->_deviceShouldDeferFlamesView = v3;
  self->_deviceShouldSkipGuidePreloading = v3;
}

@end