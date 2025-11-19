@interface SBGlyphStateValueTransformerForBrightnessRouteType
@end

@implementation SBGlyphStateValueTransformerForBrightnessRouteType

__CFString *__SBGlyphStateValueTransformerForBrightnessRouteType_block_invoke(float a1)
{
  if (a1 < 0.33)
  {
    return @"min";
  }

  if (a1 >= 1.0)
  {
    v2 = @"max";
  }

  else
  {
    v2 = @"full";
  }

  if (a1 >= 0.66)
  {
    return v2;
  }

  else
  {
    return @"mid";
  }
}

@end