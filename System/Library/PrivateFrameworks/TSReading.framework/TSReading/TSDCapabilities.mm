@interface TSDCapabilities
+ (id)currentCapabilities;
- (CGSize)maximumHardcodedTextureSize;
- (CGSize)maximumMetalTextureSizeForDevice:(id)device;
- (CGSize)maximumTextureSize;
- (TSDCapabilities)init;
- (void)p_setupDevice;
@end

@implementation TSDCapabilities

- (void)p_setupDevice
{
  platformString = [MEMORY[0x277D75418] platformString];
  if ([platformString hasPrefix:{@"iPod3, "}])
  {
    v4 = 1;
LABEL_5:
    v5 = vdupq_n_s64(v4);
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPod4, "}])
  {
    v4 = 2;
    goto LABEL_5;
  }

  if ([platformString hasPrefix:{@"iPod5, "}])
  {
    v5 = xmmword_26CA666F0;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPhone2, "}])
  {
    v5 = xmmword_26CA66700;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPhone3, "}])
  {
    v5 = xmmword_26CA66710;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPhone4, "}])
  {
    v5 = xmmword_26CA66720;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPhone5, "}])
  {
    v5 = xmmword_26CA66730;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPad1, "}])
  {
    v5 = xmmword_26CA66740;
    goto LABEL_6;
  }

  if ([platformString hasPrefix:{@"iPad2, "}])
  {
    v6 = [platformString hasPrefix:{@"iPad2, 1"}];
    v5 = xmmword_26CA66770;
    if (v6)
    {
      goto LABEL_6;
    }

    v14 = xmmword_26CA66770;
    if (([platformString hasPrefix:{@"iPad2, 2"}] & 1) == 0)
    {
      v7 = [platformString hasPrefix:{@"iPad2, 3"}];
      v5 = xmmword_26CA66770;
      if (v7)
      {
        goto LABEL_6;
      }

      if ([platformString hasPrefix:{@"iPad2, 4", COERCE_DOUBLE(9)}])
      {
        v5 = xmmword_26CA66780;
        goto LABEL_6;
      }

      v12 = [platformString hasPrefix:{@"iPad2, 5"}];
      v5 = xmmword_26CA66790;
      if (v12)
      {
        goto LABEL_6;
      }

      v14 = xmmword_26CA66790;
      if (([platformString hasPrefix:{@"iPad2, 6"}] & 1) == 0)
      {
        v13 = [platformString hasPrefix:{@"iPad2, 7"}];
        v5 = xmmword_26CA66790;
        if ((v13 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

LABEL_29:
    v5 = v14;
    goto LABEL_6;
  }

  if (![platformString hasPrefix:{@"iPad3, "}])
  {
    goto LABEL_7;
  }

  v8 = [platformString hasPrefix:{@"iPad3, 1"}];
  v5 = xmmword_26CA66750;
  if ((v8 & 1) == 0)
  {
    v14 = xmmword_26CA66750;
    if (([platformString hasPrefix:{@"iPad3, 2"}] & 1) == 0)
    {
      v9 = [platformString hasPrefix:{@"iPad3, 3"}];
      v5 = xmmword_26CA66750;
      if (v9)
      {
        goto LABEL_6;
      }

      v10 = [platformString hasPrefix:{@"iPad3, 4", COERCE_DOUBLE(10)}];
      v5 = xmmword_26CA66760;
      if (v10)
      {
        goto LABEL_6;
      }

      v14 = xmmword_26CA66760;
      if (([platformString hasPrefix:{@"iPad3, 5"}] & 1) == 0)
      {
        v11 = [platformString hasPrefix:{@"iPad3, 6"}];
        v5 = xmmword_26CA66760;
        if (!v11)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    goto LABEL_29;
  }

LABEL_6:
  *&self->_device = v5;
LABEL_7:
  self->_deviceType = TSDCapabilitiesDeviceTypeFromHWModelString(platformString);
}

- (TSDCapabilities)init
{
  v4.receiver = self;
  v4.super_class = TSDCapabilities;
  v2 = [(TSDCapabilities *)&v4 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [TSDCapabilities init];
    }

    [(TSDCapabilities *)v2 p_setupPlatform];
    [(TSDCapabilities *)v2 p_setupDevice];
  }

  return v2;
}

uint64_t __23__TSDCapabilities_init__block_invoke()
{
  result = objc_opt_new();
  s_virtualScreenToMaximumTextureSizeDict = result;
  return result;
}

+ (id)currentCapabilities
{
  if (currentCapabilities_sOnce != -1)
  {
    +[TSDCapabilities currentCapabilities];
  }

  v2 = currentCapabilities_sCurrentCapabilities;

  return v2;
}

TSDCapabilities *__38__TSDCapabilities_currentCapabilities__block_invoke()
{
  result = objc_alloc_init(TSDCapabilities);
  currentCapabilities_sCurrentCapabilities = result;
  return result;
}

- (CGSize)maximumTextureSize
{
  if (self->_platform == 1 && ![(TSDCapabilities *)self isRendererH3OrBelow:v2])
  {
    v4 = 0x40B0000000000000;
  }

  else
  {
    v4 = 0x40A0000000000000;
  }

  v5 = *&v4;
  v6 = *&v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)maximumHardcodedTextureSize
{
  platform = self->_platform;
  if ((platform - 2) < 2)
  {
    v5 = 0x40C0000000000000;
    goto LABEL_6;
  }

  v4 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  if (!platform)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCapabilities maximumHardcodedTextureSize]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCapabilities.m"), 328, @"Unknown platform!"}];
    goto LABEL_8;
  }

  if (platform == 1)
  {
    v5 = 0x40B0000000000000;
LABEL_6:
    v3 = *&v5;
    v4 = *&v5;
  }

LABEL_8:
  v8 = v4;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)maximumMetalTextureSizeForDevice:(id)device
{
  [(TSDCapabilities *)self maximumHardcodedTextureSize];
  v6 = v5;
  v8 = v7;
  if ([(TSDCapabilities *)self isMetalCapable])
  {
    if ([device supportsFeatureSet:0] & 1) != 0 || (objc_msgSend(device, "supportsFeatureSet:", 1))
    {
      *&v9 = 4096.0;
    }

    else
    {
      if (([device supportsFeatureSet:2] & 1) == 0 && (objc_msgSend(device, "supportsFeatureSet:", 3) & 1) == 0 && (objc_msgSend(device, "supportsFeatureSet:", 5) & 1) == 0 && (objc_msgSend(device, "supportsFeatureSet:", 6) & 1) == 0 && (objc_msgSend(device, "supportsFeatureSet:", 8) & 1) == 0)
      {
        if ([device supportsFeatureSet:9])
        {
          v6 = 8192.0;
        }

        else
        {
          v6 = 16384.0;
        }

        goto LABEL_12;
      }

      *&v9 = 8192.0;
    }

    v6 = *&v9;
LABEL_12:
    v8 = v6;
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

@end