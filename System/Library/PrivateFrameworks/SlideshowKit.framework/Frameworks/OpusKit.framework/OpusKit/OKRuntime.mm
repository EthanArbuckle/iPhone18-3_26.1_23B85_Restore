@interface OKRuntime
+ (id)currentPlatformStringWithDisplayScale;
+ (id)opusKitBundle;
+ (id)resolutionStringWithSize:(CGSize)size andPlatforms:(unint64_t)platforms;
+ (id)resolutionStringWithSize:(CGSize)size keepAspectRatio:(BOOL)ratio;
+ (id)resolutionStringWithSize:(CGSize)size keepAspectRatio:(BOOL)ratio andPlatforms:(unint64_t)platforms;
+ (id)stringForPlatforms:(unint64_t)platforms;
+ (unint64_t)currentPlatform;
+ (void)setupJavascriptContext:(id)context;
@end

@implementation OKRuntime

+ (id)opusKitBundle
{
  if (opusKitBundle_onceToken != -1)
  {
    +[OKRuntime opusKitBundle];
  }

  return opusKitBundle_opusKitBundle;
}

id __26__OKRuntime_opusKitBundle__block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleWithURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "resourceURL")}];
  opusKitBundle_opusKitBundle = result;
  return result;
}

+ (unint64_t)currentPlatform
{
  if (currentPlatform_onceToken != -1)
  {
    +[OKRuntime currentPlatform];
  }

  return currentPlatform_currentPlatform;
}

uint64_t __28__OKRuntime_currentPlatform__block_invoke()
{
  [MEMORY[0x277D75418] currentDevice];
  result = objc_opt_respondsToSelector();
  if ((result & 1) == 0 || (result = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")]) == 0)
  {
    p_superclass = OKActionBindingFocusTap.superclass;
    v2 = 1;
    goto LABEL_7;
  }

  [MEMORY[0x277D75418] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    result = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    if (result == 1)
    {
      p_superclass = (OKActionBindingFocusTap + 8);
      v2 = 2;
LABEL_7:
      p_superclass[50] = v2;
      return result;
    }
  }

  [MEMORY[0x277D75418] currentDevice];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    if (result == 2)
    {
      p_superclass = (OKActionBindingFocusTap + 8);
      v2 = 8;
      goto LABEL_7;
    }
  }

  if (*MEMORY[0x277D62808] >= 2)
  {
    v3 = MEMORY[0x277D627B8];
    [MEMORY[0x277D75418] currentDevice];
    if (objc_opt_respondsToSelector())
    {
      v4 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
    }

    else
    {
      v4 = 0;
    }

    return [v3 logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/OpusKit.m" line:90 andFormat:@"Unsupported platform %d", v4];
  }

  return result;
}

+ (id)currentPlatformStringWithDisplayScale
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [self stringForPlatforms:{objc_msgSend(self, "currentPlatform")}];
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  return [v2 stringWithFormat:@"%@@%lfx", v3, v4];
}

+ (id)stringForPlatforms:(unint64_t)platforms
{
  platformsCopy = platforms;
  string = [MEMORY[0x277CCAB68] string];
  v5 = string;
  v6 = &stru_287AC35A0;
  if (platformsCopy)
  {
    [string appendFormat:@"%@%@", &stru_287AC35A0, @"iphone"];
    v6 = @",";
    if ((platformsCopy & 2) == 0)
    {
LABEL_3:
      if ((platformsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((platformsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendFormat:@"%@%@", v6, @"ipad"];
  v6 = @",";
  if ((platformsCopy & 4) == 0)
  {
LABEL_4:
    if ((platformsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v5 appendFormat:@"%@%@", v6, @"appletv"];
    v6 = @",";
    if ((platformsCopy & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v5 appendFormat:@"%@%@", v6, @"desktop"];
  v6 = @",";
  if ((platformsCopy & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((platformsCopy & 0x10) != 0)
  {
LABEL_6:
    [v5 appendFormat:@"%@%@", v6, @"web"];
  }

  return v5;
}

+ (id)resolutionStringWithSize:(CGSize)size andPlatforms:(unint64_t)platforms
{
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%ldx%ld", size.width, size.height];
  if (platforms)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", result, objc_msgSend(self, "stringForPlatforms:", platforms)];
  }

  return result;
}

+ (id)resolutionStringWithSize:(CGSize)size keepAspectRatio:(BOOL)ratio
{
  v4 = @"+";
  if (ratio)
  {
    v4 = &stru_287AC35A0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ldx%ld", v4, size.width, size.height];
}

+ (id)resolutionStringWithSize:(CGSize)size keepAspectRatio:(BOOL)ratio andPlatforms:(unint64_t)platforms
{
  v7 = @"+";
  if (ratio)
  {
    v7 = &stru_287AC35A0;
  }

  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ldx%ld", v7, size.width, size.height];
  if (platforms)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", result, objc_msgSend(self, "stringForPlatforms:", platforms)];
  }

  return result;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKRuntime"];
  [context setObject:&unk_287AEFEE8 forKeyedSubscript:@"OKPlatformPhone"];
  [context setObject:&unk_287AEFF00 forKeyedSubscript:@"OKPlatformPad"];
  [context setObject:&unk_287AEFF18 forKeyedSubscript:@"OKPlatformDesktop"];
  [context setObject:&unk_287AEFF30 forKeyedSubscript:@"OKPlatformATV"];

  [context setObject:&unk_287AEFF48 forKeyedSubscript:@"OKPlatformWeb"];
}

@end