@interface SCRCColorUtilities
+ (id)descriptionForAlphaValueString:(id)string;
+ (id)descriptionForBrightnessValueString:(id)string;
+ (id)descriptionForHueValueString:(id)string;
+ (id)descriptionForSaturationValueString:(id)string;
@end

@implementation SCRCColorUtilities

+ (id)descriptionForHueValueString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"invalid hue value"];
  if (![stringCopy hasPrefix:@"hue"])
  {
    goto LABEL_40;
  }

  v5 = [stringCopy substringFromIndex:{objc_msgSend(@"hue", "length") + 1}];
  [v5 doubleValue];
  v7 = v6;

  if (v7 < 0.0 || v7 > 1.0)
  {
    goto LABEL_40;
  }

  if (v7 >= 0.0280000009)
  {
    if (v7 < 0.0560000017)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"red orange";
      goto LABEL_39;
    }

    if (v7 < 0.111000001)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"orange";
      goto LABEL_39;
    }

    if (v7 < 0.128999993)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"yellow orange";
      goto LABEL_39;
    }

    if (v7 < 0.166999996)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"yellow";
      goto LABEL_39;
    }

    if (v7 < 0.222000003)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"yellow green";
      goto LABEL_39;
    }

    if (v7 < 0.388999999)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"green";
      goto LABEL_39;
    }

    if (v7 < 0.469000012)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"blue green";
      goto LABEL_39;
    }

    if (v7 < 0.540000021)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"cyan";
      goto LABEL_39;
    }

    if (v7 < 0.611000001)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"cyan blue";
      goto LABEL_39;
    }

    if (v7 < 0.666999996)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"blue";
      goto LABEL_39;
    }

    if (v7 < 0.800000012)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"purple";
      goto LABEL_39;
    }

    if (v7 < 0.888999999)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"magenta";
      goto LABEL_39;
    }

    if (v7 < 0.916999996)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"magenta pink";
      goto LABEL_39;
    }

    if (v7 < 0.958000004)
    {
      v9 = MEMORY[0x277CCA8D8];
      v10 = @"pink";
      goto LABEL_39;
    }

    v9 = MEMORY[0x277CCA8D8];
    if (v7 < 0.986000001)
    {
      v10 = @"pink red";
      goto LABEL_39;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCA8D8];
  }

  v10 = @"red";
LABEL_39:
  v11 = [v9 localizedCoreStringForKey:v10];
  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"hueDescriptionFormatString"];
  v14 = &unk_2648FE000;
  LODWORD(v14) = llround(v7 * 360.0);
  v15 = [v12 stringWithFormat:v13, v11, v14];

  v4 = v15;
LABEL_40:

  return v4;
}

+ (id)descriptionForSaturationValueString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"invalid saturation value"];
  if ([stringCopy hasPrefix:@"saturation"])
  {
    v5 = [stringCopy substringFromIndex:{objc_msgSend(@"saturation", "length") + 1}];
    [v5 doubleValue];
    v7 = v6;

    if (v7 >= 0.0 && v7 <= 1.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"saturationValueFormatString"];
      0x4059000000000000 = [v9 stringWithFormat:v10, llround(v7 * 100.0) | 0x4059000000000000];

      v4 = 0x4059000000000000;
    }
  }

  return v4;
}

+ (id)descriptionForBrightnessValueString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"invalid brightness value"];
  if ([stringCopy hasPrefix:@"brightness"])
  {
    v5 = [stringCopy substringFromIndex:{objc_msgSend(@"brightness", "length") + 1}];
    [v5 doubleValue];
    v7 = v6;

    if (v7 >= 0.0 && v7 <= 1.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"brightnessValueFormatString"];
      0x4059000000000000 = [v9 stringWithFormat:v10, llround(v7 * 100.0) | 0x4059000000000000];

      v4 = 0x4059000000000000;
    }
  }

  return v4;
}

+ (id)descriptionForAlphaValueString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"invalid alpha value"];
  if ([stringCopy hasPrefix:@"alpha"])
  {
    v5 = [stringCopy substringFromIndex:{objc_msgSend(@"alpha", "length") + 1}];
    [v5 doubleValue];
    v7 = v6;

    if (v7 >= 0.0 && v7 <= 1.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"alphaValueFormatString"];
      0x4059000000000000 = [v9 stringWithFormat:v10, llround(v7 * 100.0) | 0x4059000000000000];

      v4 = 0x4059000000000000;
    }
  }

  return v4;
}

@end