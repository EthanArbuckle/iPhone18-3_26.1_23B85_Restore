@interface PFWallpaperCompoundDeviceConfiguration
+ (BOOL)deviceSupportsLandscapeConfiguration;
+ (PFWallpaperCompoundDeviceConfiguration)configurationWithDeviceName:(id)a3;
+ (id)bestConfigurationForScreenSize:(CGSize)a3 screenScale:(double)a4;
+ (id)callServicesConfigurationWithScreenSize:(CGSize)a3 titleBounds:(CGRect)a4 parallaxPadding:(CGSize)a5;
+ (id)compoundDeviceConfigurationFromDictionary:(id)a3 error:(id *)a4;
+ (id)deviceBackdropRoleConfiguration;
+ (id)deviceCallServicesConfigurationWithTitleBounds:(CGRect)a3;
+ (id)deviceConfiguration;
+ (id)genericBackdropConfigurationWithTitleBounds:(CGRect)a3;
+ (id)genericCallServicesConfigurationWithTitleBounds:(CGRect)a3;
+ (id)genericConfiguration;
+ (id)genericPadConfiguration;
+ (id)knownDeviceConfigurations;
+ (id)specificConfigurationWithPortraitTitleBounds:(CGRect)a3 portraitScreenSize:(CGSize)a4 landscapeScreenSize:(CGSize)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutConfiguration:(id)a3;
- (CGSize)deviceSize;
- (PFWallpaperCompoundDeviceConfiguration)initWithCoder:(id)a3;
- (PFWallpaperCompoundDeviceConfiguration)initWithPortraitConfiguration:(id)a3 landscapeConfiguration:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFWallpaperCompoundDeviceConfiguration

- (CGSize)deviceSize
{
  width = self->_deviceSize.width;
  height = self->_deviceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PFWallpaperCompoundDeviceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portrait"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"landscape"];

  v7 = [(PFWallpaperCompoundDeviceConfiguration *)self initWithPortraitConfiguration:v5 landscapeConfiguration:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFWallpaperCompoundDeviceConfiguration *)self portraitConfiguration];
  [v4 encodeObject:v5 forKey:@"portrait"];

  v6 = [(PFWallpaperCompoundDeviceConfiguration *)self landscapeConfiguration];
  [v4 encodeObject:v6 forKey:@"landscape"];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PFParallaxLayoutConfiguration *)self->_portraitConfiguration debugDescription];
  v6 = [(PFParallaxLayoutConfiguration *)self->_landscapeConfiguration debugDescription];
  [(PFParallaxLayoutConfiguration *)self->_portraitConfiguration screenScale];
  v8 = [v3 stringWithFormat:@"<%@:%p portrait:%@ landscape:%@ screenScale:%f>", v4, self, v5, v6, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PFParallaxLayoutConfiguration *)self->_portraitConfiguration description];
  v6 = [(PFParallaxLayoutConfiguration *)self->_landscapeConfiguration description];
  [(PFParallaxLayoutConfiguration *)self->_portraitConfiguration screenScale];
  v8 = [v3 stringWithFormat:@"<%@:%p portrait:%@ landscape:%@ screenScale:%f>", v4, self, v5, v6, v7];

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = [(PFParallaxLayoutConfiguration *)self->_portraitConfiguration dictionaryRepresentation];
  v4 = [(PFParallaxLayoutConfiguration *)self->_landscapeConfiguration dictionaryRepresentation];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:&unk_1F2AABD48];
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKeyedSubscript:@"portrait"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"landscape"];
  }

  return v6;
}

- (PFWallpaperCompoundDeviceConfiguration)initWithPortraitConfiguration:(id)a3 landscapeConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v17.receiver = self;
    v17.super_class = PFWallpaperCompoundDeviceConfiguration;
    v9 = [(PFWallpaperCompoundDeviceConfiguration *)&v17 init];
    portraitConfiguration = v9->_portraitConfiguration;
    v9->_portraitConfiguration = v6;
    v11 = v6;

    landscapeConfiguration = v9->_landscapeConfiguration;
    v9->_landscapeConfiguration = v8;

    return v9;
  }

  else
  {
    v14 = _PFAssertFailHandler();
    return [(PFWallpaperCompoundDeviceConfiguration *)v14 isEqualToLayoutConfiguration:v15, v16];
  }
}

- (BOOL)isEqualToLayoutConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_landscapeConfiguration)
    {
      goto LABEL_3;
    }

    v12 = [v4 landscapeConfiguration];

    if (!v12)
    {
      portraitConfiguration = self->_portraitConfiguration;
      v8 = [v5 portraitConfiguration];
      v11 = [(PFParallaxLayoutConfiguration *)portraitConfiguration isEqualToLayoutConfiguration:v8];
LABEL_11:

      goto LABEL_12;
    }

    if (self->_landscapeConfiguration)
    {
LABEL_3:
      v6 = [v5 landscapeConfiguration];

      if (v6)
      {
        v7 = self->_portraitConfiguration;
        v8 = [v5 portraitConfiguration];
        if ([(PFParallaxLayoutConfiguration *)v7 isEqualToLayoutConfiguration:v8])
        {
          landscapeConfiguration = self->_landscapeConfiguration;
          v10 = [v5 landscapeConfiguration];
          v11 = [(PFParallaxLayoutConfiguration *)landscapeConfiguration isEqualToLayoutConfiguration:v10];
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_11;
      }
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFWallpaperCompoundDeviceConfiguration *)self isEqualToLayoutConfiguration:v4];
  }

  return v5;
}

+ (id)knownDeviceConfigurations
{
  if (knownDeviceConfigurations_onceToken != -1)
  {
    dispatch_once(&knownDeviceConfigurations_onceToken, &__block_literal_global_183);
  }

  v3 = knownDeviceConfigurations_namedConfigs;

  return v3;
}

void __67__PFWallpaperCompoundDeviceConfiguration_knownDeviceConfigurations__block_invoke()
{
  v43 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:24];
  v41 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1170.0 screenScale:2532.0 denormalizedYDownTimeRect:3.0 parallaxPadding:81.0, 388.0, 1008.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v40 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v41 landscapeConfiguration:0];
  [v43 setObject:v40 forKeyedSubscript:@"iPhone12"];
  [v43 setObject:v40 forKeyedSubscript:@"iPhone13"];
  [v43 setObject:v40 forKeyedSubscript:@"iPhone12Pro"];
  [v43 setObject:v40 forKeyedSubscript:@"iPhone13Pro"];
  v39 = [PFParallaxLayoutConfiguration initWithScreenSize:"initWithScreenSize:screenScale:denormalizedYDownTimeRect:parallaxPadding:" screenScale:0x4053800000000000 denormalizedYDownTimeRect:0x4068000000000000 parallaxPadding:?];
  v38 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v39 landscapeConfiguration:0];
  [v43 setObject:v38 forKeyedSubscript:@"iPhone12Zoom"];
  [v43 setObject:v38 forKeyedSubscript:@"iPhone13Zoom"];
  [v43 setObject:v38 forKeyedSubscript:@"iPhone12ProZoom"];
  [v43 setObject:v38 forKeyedSubscript:@"iPhone13ProZoom"];
  v37 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1284.0 screenScale:2778.0 denormalizedYDownTimeRect:3.0 parallaxPadding:96.0, 430.0, 1092.0, 0x4053800000000000, 0x4068000000000000];
  v36 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v37 landscapeConfiguration:0];
  [v43 setObject:v36 forKeyedSubscript:@"iPhone12ProMax"];
  [v43 setObject:v36 forKeyedSubscript:@"iPhone13ProMax"];
  v35 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1125.0 screenScale:2436.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 388.0, 981.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v34 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v35 landscapeConfiguration:0];
  [v43 setObject:v34 forKeyedSubscript:@"iPhone12ProMaxZoom"];
  [v43 setObject:v34 forKeyedSubscript:@"iPhone13ProMaxZoom"];
  v33 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1125.0 screenScale:2436.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 388.0, 981.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v32 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v33 landscapeConfiguration:0];
  [v43 setObject:v32 forKeyedSubscript:@"iPhone12Mini"];
  [v43 setObject:v32 forKeyedSubscript:@"iPhone13Mini"];
  v31 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:960.0 screenScale:2079.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 388.0, 816.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v30 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v31 landscapeConfiguration:0];
  [v43 setObject:v30 forKeyedSubscript:@"iPhone12MiniZoom"];
  [v43 setObject:v30 forKeyedSubscript:@"iPhone13MiniZoom"];
  v29 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1125.0 screenScale:2436.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 388.0, 981.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v28 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v29 landscapeConfiguration:0];
  [v43 setObject:v28 forKeyedSubscript:@"iPhoneX"];
  [v43 setObject:v28 forKeyedSubscript:@"iPhoneXS"];
  [v43 setObject:v28 forKeyedSubscript:@"iPhone11Pro"];
  v42 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:960.0 screenScale:2079.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 331.0, 816.0, 178.0, 0x4053800000000000, 0x4068000000000000];
  v27 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v42 landscapeConfiguration:0];
  [v43 setObject:v27 forKeyedSubscript:@"iPhoneXZoom"];
  [v43 setObject:v27 forKeyedSubscript:@"iPhoneXSZoom"];
  [v43 setObject:v27 forKeyedSubscript:@"iPhone11ProZoom"];
  v26 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1242.0 screenScale:2688.0 denormalizedYDownTimeRect:3.0 parallaxPadding:186.0, 412.0, 0x4053800000000000, 0x4068000000000000];
  v25 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v26 landscapeConfiguration:0];
  [v43 setObject:v25 forKeyedSubscript:@"iPhoneXSMax"];
  [v43 setObject:v25 forKeyedSubscript:@"iPhone11ProMax"];
  v24 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:750.0 screenScale:1334.0 denormalizedYDownTimeRect:2.0 parallaxPadding:52.0, 185.0, 646.0, 118.0, 0x4053800000000000, 0x4068000000000000];
  v23 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v24 landscapeConfiguration:0];
  [v43 setObject:v23 forKeyedSubscript:@"iPhone8"];
  [v43 setObject:v23 forKeyedSubscript:@"iPhoneSE"];
  v22 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:640.0 screenScale:1136.0 denormalizedYDownTimeRect:2.0 parallaxPadding:52.0, 185.0, 536.0, 118.0, 0x4053800000000000, 0x4068000000000000];
  v21 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v22 landscapeConfiguration:0];
  [v43 setObject:v21 forKeyedSubscript:@"iPhone8Zoom"];
  [v43 setObject:v21 forKeyedSubscript:@"iPhoneSEZoom"];
  v20 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:828.0 screenScale:1792.0 denormalizedYDownTimeRect:2.0 parallaxPadding:56.0, 429.0, 716.0, 152.0, 0x4053800000000000, 0x4068000000000000];
  v0 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v20 landscapeConfiguration:0];
  [v43 setObject:v0 forKeyedSubscript:@"iPhoneXR"];

  v19 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:750.0 screenScale:1624.0 denormalizedYDownTimeRect:2.0 parallaxPadding:48.0, 392.0, 654.0, 141.0, 0x4053800000000000, 0x4068000000000000];
  v1 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v19 landscapeConfiguration:0];
  [v43 setObject:v1 forKeyedSubscript:@"iPhoneXRZoom"];

  v18 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1080.0 screenScale:1920.0 denormalizedYDownTimeRect:2.0 parallaxPadding:84.0, 286.0, 1074.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v17 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v18 landscapeConfiguration:0];
  [v43 setObject:v17 forKeyedSubscript:@"iPhone8Plus"];
  v2 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1179.0 screenScale:2556.0 denormalizedYDownTimeRect:3.0 parallaxPadding:78.0, 571.0, 1023.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v3 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v2 landscapeConfiguration:0];
  [v43 setObject:v3 forKeyedSubscript:@"iPhone14Pro"];

  v4 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1290.0 screenScale:2796.0 denormalizedYDownTimeRect:3.0 parallaxPadding:90.0, 572.0, 1110.0, 228.0, 0x4053800000000000, 0x4068000000000000];
  v5 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v4 landscapeConfiguration:0];
  [v43 setObject:v5 forKeyedSubscript:@"iPhone14ProMax"];

  v6 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1125.0 screenScale:2436.0 denormalizedYDownTimeRect:3.0 parallaxPadding:72.0, 515.0, 981.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v7 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v6 landscapeConfiguration:0];
  [v43 setObject:v7 forKeyedSubscript:@"iPhone14ProMaxZoom"];

  v8 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1179.0 screenScale:2556.0 denormalizedYDownTimeRect:3.0 parallaxPadding:78.0, 571.0, 1023.0, 211.0, 0x4053800000000000, 0x4068000000000000];
  v9 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v8 landscapeConfiguration:0];
  [v43 setObject:v9 forKeyedSubscript:@"iPhone15Pro"];

  v10 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:960.0 screenScale:2079.0 denormalizedYDownTimeRect:3.0 parallaxPadding:45.0, 455.0, 870.0, 178.0, 0x4053800000000000, 0x4068000000000000];
  v11 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v10 landscapeConfiguration:0];
  [v43 setObject:v11 forKeyedSubscript:@"iPhone15ProZoom"];

  v12 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:1668.0 screenScale:2388.0 denormalizedYDownTimeRect:2.0 parallaxPadding:478.0, 257.0, 712.0, 186.0, 0x4053800000000000, 0x4068000000000000];
  v13 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:2388.0 screenScale:1668.0 denormalizedYDownTimeRect:2.0 parallaxPadding:838.0, 257.0, 712.0, 186.0, 0x4053800000000000, 0x4068000000000000];
  v14 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v12 landscapeConfiguration:v13];
  [v43 setObject:v14 forKeyedSubscript:@"iPadPro11Inch"];
  v15 = [v43 copy];
  v16 = knownDeviceConfigurations_namedConfigs;
  knownDeviceConfigurations_namedConfigs = v15;
}

+ (id)compoundDeviceConfigurationFromDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:@"portrait"];
    v8 = [PFParallaxLayoutConfiguration layoutConfigurationFromDictionary:v7 error:a4];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"landscape"];

      if (!v9 || ([v5 objectForKeyedSubscript:@"landscape"], v10 = objc_claimAutoreleasedReturnValue(), +[PFParallaxLayoutConfiguration layoutConfigurationFromDictionary:error:](PFParallaxLayoutConfiguration, "layoutConfigurationFromDictionary:error:", v10, a4), v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
      {
        v11 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v8 landscapeConfiguration:v9];

        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = [PFParallaxLayoutConfiguration layoutConfigurationFromDictionary:v5 error:a4];
    if (v8)
    {
      v11 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v8 landscapeConfiguration:0];
      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (PFWallpaperCompoundDeviceConfiguration)configurationWithDeviceName:(id)a3
{
  v4 = a3;
  v5 = [a1 knownDeviceConfigurations];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (BOOL)deviceSupportsLandscapeConfiguration
{
  if (sForceDisableLandscape)
  {
    v2 = 0;
  }

  else
  {
    if (deviceSupportsLandscapeConfiguration_onceToken != -1)
    {
      dispatch_once(&deviceSupportsLandscapeConfiguration_onceToken, &__block_literal_global_163);
    }

    v2 = deviceSupportsLandscapeConfiguration_isPad;
  }

  return v2 & 1;
}

void __78__PFWallpaperCompoundDeviceConfiguration_deviceSupportsLandscapeConfiguration__block_invoke()
{
  v0 = MGCopyAnswer();
  deviceSupportsLandscapeConfiguration_isPad = CFEqual(v0, @"iPad") != 0;
  if (v0)
  {

    CFRelease(v0);
  }
}

+ (id)deviceConfiguration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PFWallpaperCompoundDeviceConfiguration_deviceConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceConfiguration_onceToken[0] != -1)
  {
    dispatch_once(deviceConfiguration_onceToken, block);
  }

  v2 = deviceConfiguration_sDeviceConfiguration;

  return v2;
}

void __61__PFWallpaperCompoundDeviceConfiguration_deviceConfiguration__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[PFParallaxLayoutConfiguration timeRectCollectionPortrait];
  v3 = PFDeviceScreenSize();
  v5 = v4;
  v6 = PFDeviceScreenScale();
  v7 = PFDeviceScreenScale();
  if (v3 <= v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= v5)
  {
    v3 = v5;
  }

  [v2 minTimeRectInImageSpace];
  v13 = v9;
  v14 = v10;
  v15 = 0.0;
  v16 = 0.0;
  if (v8 != 0.0)
  {
    v13 = v9 / v8;
    v16 = v11 / v8;
  }

  v35 = v6;
  if (v3 != 0.0)
  {
    v14 = v10 / v3;
    v15 = v12 / v3;
  }

  v17 = v7 * 26.0;
  v18 = v7 * 64.0;
  v39.origin.x = v13;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v15;
  v34 = v17;
  if (CGRectIsEmpty(v39))
  {
    v19 = v35;
    v20 = [PFParallaxLayoutConfiguration bestConfigurationForScreenSize:1 screenScale:v8 orientation:v3, v35];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = v20;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Using fallback device configurations:\n\tportrait: %{public}@\n\t", buf, 0xCu);
    }
  }

  else
  {
    v33 = v17;
    v19 = v35;
    v20 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:v8 screenScale:v3 normalizedYDownTimeRect:v35 parallaxPadding:v13, v14, v16, v15, *&v33, *&v18];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v20;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Using SBS device configurations:\n\tportrait: %{public}@\n\t", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) deviceSupportsLandscapeConfiguration])
  {
    v21 = +[PFParallaxLayoutConfiguration timeRectCollectionLandscape];
    [v21 minTimeRectInImageSpace];
    v26 = v22;
    v27 = v23;
    v28 = 0.0;
    v29 = 0.0;
    if (v3 != 0.0)
    {
      v26 = v22 / v3;
      v29 = v24 / v3;
    }

    if (v8 != 0.0)
    {
      v27 = v23 / v8;
      v28 = v25 / v8;
    }

    v40.origin.x = v26;
    v40.origin.y = v27;
    v40.size.width = v29;
    v40.size.height = v28;
    if (CGRectIsEmpty(v40))
    {
      v30 = [PFParallaxLayoutConfiguration bestConfigurationForScreenSize:2 screenScale:v3 orientation:v8, v19];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v30;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Using fallback device configurations:\n\tlandscape: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v30 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:v3 screenScale:v8 normalizedYDownTimeRect:v19 parallaxPadding:v26, v27, v29, v28, *&v34, *&v18];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v30;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Using SBS device configurations:\n\tlandscape: %{public}@\n\t", buf, 0xCu);
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v20 landscapeConfiguration:v30];
  v32 = deviceConfiguration_sDeviceConfiguration;
  deviceConfiguration_sDeviceConfiguration = v31;
}

+ (id)deviceBackdropRoleConfiguration
{
  v2 = [PFParallaxLayoutConfiguration alloc];
  v3 = [(PFParallaxLayoutConfiguration *)v2 initWithScreenSize:1170.0 screenScale:2532.0 normalizedYDownTimeRect:3.0 parallaxPadding:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v3 landscapeConfiguration:0];

  return v4;
}

+ (id)deviceCallServicesConfigurationWithTitleBounds:(CGRect)a3
{
  v4 = PFDeviceScreenSize();

  return [a1 callServicesConfigurationWithScreenSize:v4 titleBounds:? parallaxPadding:?];
}

+ (id)specificConfigurationWithPortraitTitleBounds:(CGRect)a3 portraitScreenSize:(CGSize)a4 landscapeScreenSize:(CGSize)a5
{
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a4.width * 3.0;
  v8 = a4.height * 3.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = x;
  if (a4.width * 3.0 != 0.0)
  {
    v11 = x / v7;
    v10 = a3.size.width / v7;
  }

  v12 = y;
  if (v8 != 0.0)
  {
    v12 = y / v8;
    v9 = a3.size.height / v8;
  }

  v32 = a5.width * 3.0;
  v33 = a5.height * 3.0;
  v13 = v11 * (a5.width * 3.0) + 0.0;
  v14 = v12 * (a5.height * 3.0) + 0.0;
  v30 = v14;
  v31 = v13;
  v15 = a5.width * 3.0 * v10;
  v16 = a5.height * 3.0 * v9;
  width = a3.size.width;
  height = a3.size.height;
  v17 = [PFParallaxLayoutConfiguration _timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:1 orientation:x, y];
  v18 = s_timeRectCollectionPortrait;
  s_timeRectCollectionPortrait = v17;

  v19 = [PFParallaxLayoutConfiguration _timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:2 orientation:v13, v14, v15, v16];
  v20 = s_timeRectCollectionLandscape;
  s_timeRectCollectionLandscape = v19;

  v21 = [PFParallaxLayoutConfiguration alloc];
  v22 = *MEMORY[0x1E695F060];
  v23 = *(MEMORY[0x1E695F060] + 8);
  v24 = [(PFParallaxLayoutConfiguration *)v21 initWithScreenSize:v7 screenScale:v8 normalizedYDownTimeRect:3.0 parallaxPadding:x, y, width, height, *MEMORY[0x1E695F060], v23];
  v25 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:v32 screenScale:v33 normalizedYDownTimeRect:3.0 parallaxPadding:v31, v30, v15, v16, v22, v23];
  v26 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v24 landscapeConfiguration:v25];

  return v26;
}

+ (id)genericBackdropConfigurationWithTitleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = PFDeviceScreenSize();
  v9 = v8;
  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  v12 = y + 0.0500000007;
  v13 = [PFParallaxLayoutConfiguration _timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:1 orientation:x, v12, width, height];
  v14 = s_timeRectCollectionPortrait;
  s_timeRectCollectionPortrait = v13;

  v15 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:v7 screenScale:v9 normalizedYDownTimeRect:3.0 parallaxPadding:x, v12, width, height, v10, v11];
  v16 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v15 landscapeConfiguration:0];

  return v16;
}

+ (id)genericCallServicesConfigurationWithTitleBounds:(CGRect)a3
{
  v4 = PFDeviceScreenSize();

  return [a1 callServicesConfigurationWithScreenSize:v4 titleBounds:? parallaxPadding:?];
}

+ (id)callServicesConfigurationWithScreenSize:(CGSize)a3 titleBounds:(CGRect)a4 parallaxPadding:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.height;
  v12 = a3.width;
  if (CGRectIsEmpty(a4))
  {
    v31 = _PFAssertFailHandler();
    return +[(PFWallpaperCompoundDeviceConfiguration *)v31];
  }

  else
  {
    v34 = v12;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = v8;
    v36.size.height = v7;
    if (CGRectIsNull(v36))
    {
      v33 = height;
      v13 = width;
      v14 = +[PFWallpaperCompoundDeviceConfiguration genericPadConfiguration];
      v15 = [v14 portraitConfiguration];
      [v15 timeRect];
      x = v16;
      y = v17;
      v19 = v18;
      v21 = v20;
      v22 = [v14 portraitConfiguration];
      [v22 screenSize];
      v7 = 0.0;
      v8 = 0.0;
      if (v23 != 0.0)
      {
        x = x / v23;
        v8 = v19 / v23;
      }

      width = v13;
      if (v24 != 0.0)
      {
        y = y / v24;
        v7 = v21 / v24;
      }

      height = v33;
    }

    v25 = [PFParallaxLayoutConfiguration _timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:1 orientation:x, y, v8, v7];
    v26 = s_timeRectCollectionPortrait;
    s_timeRectCollectionPortrait = v25;

    if (+[PFWallpaperCompoundDeviceConfiguration deviceSupportsLandscapeConfiguration])
    {
      v27 = 2.0;
    }

    else
    {
      v27 = 3.0;
    }

    v28 = [[PFParallaxLayoutConfiguration alloc] initWithScreenSize:v34 screenScale:v11 normalizedYDownTimeRect:v27 parallaxPadding:x, y, v8, v7, *&width, *&height];
    v29 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v28 landscapeConfiguration:0];

    return v29;
  }
}

+ (id)genericPadConfiguration
{
  v2 = [PFWallpaperCompoundDeviceConfiguration alloc];
  v3 = [PFParallaxLayoutConfiguration genericPadConfigurationForOrientation:1];
  v4 = [PFParallaxLayoutConfiguration genericPadConfigurationForOrientation:2];
  v5 = [(PFWallpaperCompoundDeviceConfiguration *)v2 initWithPortraitConfiguration:v3 landscapeConfiguration:v4];

  return v5;
}

+ (id)genericConfiguration
{
  v2 = [PFWallpaperCompoundDeviceConfiguration alloc];
  v3 = [PFParallaxLayoutConfiguration genericConfigurationForOrientation:1];
  v4 = [PFParallaxLayoutConfiguration genericConfigurationForOrientation:2];
  v5 = [(PFWallpaperCompoundDeviceConfiguration *)v2 initWithPortraitConfiguration:v3 landscapeConfiguration:v4];

  return v5;
}

+ (id)bestConfigurationForScreenSize:(CGSize)a3 screenScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [PFWallpaperCompoundDeviceConfiguration alloc];
  v8 = [PFParallaxLayoutConfiguration bestConfigurationForScreenSize:1 screenScale:width orientation:height, a4];
  v9 = [PFParallaxLayoutConfiguration bestConfigurationForScreenSize:2 screenScale:width orientation:height, a4];
  v10 = [(PFWallpaperCompoundDeviceConfiguration *)v7 initWithPortraitConfiguration:v8 landscapeConfiguration:v9];

  return v10;
}

@end