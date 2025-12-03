@interface PLDeviceConfiguration
+ (id)defaultDeviceConfiguration;
- (CGSize)logicalScreenSize;
- (PLDeviceConfiguration)initWithLogicalScreenSize:(CGSize)size screenScale:(double)scale deviceClass:(void *)class supportsASTC:(BOOL)c;
- (id)description;
@end

@implementation PLDeviceConfiguration

+ (id)defaultDeviceConfiguration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLDeviceConfiguration_defaultDeviceConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultDeviceConfiguration_onceToken != -1)
  {
    dispatch_once(&defaultDeviceConfiguration_onceToken, block);
  }

  v2 = defaultDeviceConfiguration_defaultConfiguration;

  return v2;
}

void __51__PLDeviceConfiguration_defaultDeviceConfiguration__block_invoke(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = objc_alloc(*(a1 + 32));
  v4 = PLPhysicalScreenSize();
  v6 = v5;
  pl_dispatch_once(&PLPhysicalScreenScale_didCheck, &__block_literal_global_237_4038);
  v7 = *&PLPhysicalScreenScale_screenScale;
  if (PLDeviceSupportsASTC_s_onceToken != -1)
  {
    dispatch_once(&PLDeviceSupportsASTC_s_onceToken, &__block_literal_global_539);
  }

  v8 = [v3 initWithLogicalScreenSize:v2 screenScale:PLDeviceSupportsASTC_s_hasSupport deviceClass:v4 supportsASTC:{v6, v7}];
  v9 = defaultDeviceConfiguration_defaultConfiguration;
  defaultDeviceConfiguration_defaultConfiguration = v8;

  if (v2)
  {

    CFRelease(v2);
  }
}

- (CGSize)logicalScreenSize
{
  width = self->_logicalScreenSize.width;
  height = self->_logicalScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLDeviceConfiguration;
  v3 = [(PLDeviceConfiguration *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - screen size: (%f, %f), scale: %f, isPad: %d, isWatch: %d, isTV: %d, isMac: %d, isRetina: %d", *&self->_logicalScreenSize.width, *&self->_logicalScreenSize.height, *&self->_screenScale, -[PLDeviceConfiguration isPad](self, "isPad"), -[PLDeviceConfiguration shouldUseNanoThumbnailFormats](self, "shouldUseNanoThumbnailFormats"), -[PLDeviceConfiguration isTV](self, "isTV"), -[PLDeviceConfiguration isMac](self, "isMac"), -[PLDeviceConfiguration isRetina](self, "isRetina")];

  return v4;
}

- (PLDeviceConfiguration)initWithLogicalScreenSize:(CGSize)size screenScale:(double)scale deviceClass:(void *)class supportsASTC:(BOOL)c
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = PLDeviceConfiguration;
  v11 = [(PLDeviceConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_screenScale = scale;
    v11->_logicalScreenSize.width = width;
    v11->_logicalScreenSize.height = height;
    v11->_supportsASTC = c;
    if (class)
    {
      v11->_isPad = CFEqual(class, @"iPad") != 0;
      v12->_isTV = CFEqual(class, @"AppleTV") != 0;
      v12->_isWatch = CFEqual(class, @"Watch") != 0;
      v12->_isMac = CFEqual(class, @"Unicorn") != 0;
    }
  }

  return v12;
}

@end