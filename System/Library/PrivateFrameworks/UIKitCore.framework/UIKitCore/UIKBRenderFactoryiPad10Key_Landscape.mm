@interface UIKBRenderFactoryiPad10Key_Landscape
- (double)keyCornerRadius;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
@end

@implementation UIKBRenderFactoryiPad10Key_Landscape

- (id)multitapCompleteKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_complete_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_complete_arrow-163r.png";
  }

  return v3;
}

- (id)muttitapReverseKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_reverse_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_reverse_arrow-163r.png";
  }

  return v3;
}

- (double)keyCornerRadius
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  return v3;
}

@end