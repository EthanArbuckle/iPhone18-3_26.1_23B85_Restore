@interface OKRuntime
+ (id)currentPlatformStringWithDisplayScale;
+ (id)opusKitBundle;
+ (id)resolutionStringWithSize:(CGSize)a3 andPlatforms:(unint64_t)a4;
+ (id)resolutionStringWithSize:(CGSize)a3 keepAspectRatio:(BOOL)a4;
+ (id)resolutionStringWithSize:(CGSize)a3 keepAspectRatio:(BOOL)a4 andPlatforms:(unint64_t)a5;
+ (id)stringForPlatforms:(unint64_t)a3;
+ (unint64_t)currentPlatform;
+ (void)setupJavascriptContext:(id)a3;
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
  v3 = [a1 stringForPlatforms:{objc_msgSend(a1, "currentPlatform")}];
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  return [v2 stringWithFormat:@"%@@%lfx", v3, v4];
}

+ (id)stringForPlatforms:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = v4;
  v6 = &stru_287AC35A0;
  if (v3)
  {
    [v4 appendFormat:@"%@%@", &stru_287AC35A0, @"iphone"];
    v6 = @",";
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 appendFormat:@"%@%@", v6, @"ipad"];
  v6 = @",";
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v5 appendFormat:@"%@%@", v6, @"appletv"];
    v6 = @",";
    if ((v3 & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v5 appendFormat:@"%@%@", v6, @"desktop"];
  v6 = @",";
  if ((v3 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    [v5 appendFormat:@"%@%@", v6, @"web"];
  }

  return v5;
}

+ (id)resolutionStringWithSize:(CGSize)a3 andPlatforms:(unint64_t)a4
{
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%ldx%ld", a3.width, a3.height];
  if (a4)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", result, objc_msgSend(a1, "stringForPlatforms:", a4)];
  }

  return result;
}

+ (id)resolutionStringWithSize:(CGSize)a3 keepAspectRatio:(BOOL)a4
{
  v4 = @"+";
  if (a4)
  {
    v4 = &stru_287AC35A0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ldx%ld", v4, a3.width, a3.height];
}

+ (id)resolutionStringWithSize:(CGSize)a3 keepAspectRatio:(BOOL)a4 andPlatforms:(unint64_t)a5
{
  v7 = @"+";
  if (a4)
  {
    v7 = &stru_287AC35A0;
  }

  result = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ldx%ld", v7, a3.width, a3.height];
  if (a5)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", result, objc_msgSend(a1, "stringForPlatforms:", a5)];
  }

  return result;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKRuntime"];
  [a3 setObject:&unk_287AEFEE8 forKeyedSubscript:@"OKPlatformPhone"];
  [a3 setObject:&unk_287AEFF00 forKeyedSubscript:@"OKPlatformPad"];
  [a3 setObject:&unk_287AEFF18 forKeyedSubscript:@"OKPlatformDesktop"];
  [a3 setObject:&unk_287AEFF30 forKeyedSubscript:@"OKPlatformATV"];

  [a3 setObject:&unk_287AEFF48 forKeyedSubscript:@"OKPlatformWeb"];
}

@end