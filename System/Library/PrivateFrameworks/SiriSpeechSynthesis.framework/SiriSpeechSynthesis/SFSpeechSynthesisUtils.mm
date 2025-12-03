@interface SFSpeechSynthesisUtils
+ (double)absoluteTimeToSecond:(unint64_t)second;
+ (id)footprintStringFromFootprint:(int64_t)footprint;
+ (id)genderStringFromGender:(int64_t)gender;
+ (id)typeStringFromType:(int64_t)type;
+ (int64_t)footprintFromString:(id)string;
+ (int64_t)genderFromString:(id)string;
+ (int64_t)typeFromString:(id)string;
@end

@implementation SFSpeechSynthesisUtils

+ (double)absoluteTimeToSecond:(unint64_t)second
{
  if (absoluteTimeToSecond__onceToken != -1)
  {
    dispatch_once(&absoluteTimeToSecond__onceToken, &__block_literal_global_1411);
  }

  return *&absoluteTimeToSecond__clockFactor * second;
}

double __47__SFSpeechSynthesisUtils_absoluteTimeToSecond___block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  absoluteTimeToSecond__clockFactor = *&result;
  return result;
}

+ (int64_t)typeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"vocalizer" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    lowercaseString3 = [@"gryphon" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      lowercaseString4 = [@"neural" lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString4];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

+ (id)typeStringFromType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"undefined";
  }

  else
  {
    return off_279C4C330[type - 1];
  }
}

+ (int64_t)footprintFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"beta" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = -1;
  }

  else
  {
    lowercaseString3 = [@"compact" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      lowercaseString4 = [@"premium" lowercaseString];
      v10 = [lowercaseString isEqualToString:lowercaseString4];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        lowercaseString5 = [@"premiumhigh" lowercaseString];
        v12 = [lowercaseString isEqualToString:lowercaseString5];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

+ (id)footprintStringFromFootprint:(int64_t)footprint
{
  if ((footprint + 1) > 4)
  {
    return @"undefined";
  }

  else
  {
    return off_279C4C308[footprint + 1];
  }
}

+ (int64_t)genderFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  lowercaseString2 = [@"male" lowercaseString];
  v5 = [lowercaseString isEqualToString:lowercaseString2];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    lowercaseString3 = [@"female" lowercaseString];
    v8 = [lowercaseString isEqualToString:lowercaseString3];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)genderStringFromGender:(int64_t)gender
{
  v3 = @"undefined";
  if (gender == 2)
  {
    v3 = @"female";
  }

  if (gender == 1)
  {
    return @"male";
  }

  else
  {
    return v3;
  }
}

@end