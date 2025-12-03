@interface UIColor(UIKit_SiriUIFrameworkAdditions)
+ (id)siriui_colorWithAceColor:()UIKit_SiriUIFrameworkAdditions;
+ (id)siriui_glyphColor;
+ (id)siriui_highlightColor;
+ (id)siriui_insertionPointColor;
+ (id)siriui_keylineColor;
+ (id)siriui_linkTextColor;
+ (id)siriui_maskingColor;
+ (id)siriui_maskingHighlightColor;
+ (id)siriui_platterInsertionPointColor;
+ (id)siriui_platterKeylineColor;
+ (id)siriui_platterLinkTextColor;
+ (id)siriui_platterMaskingColor;
+ (id)siriui_platterMaskingHighlightColor;
+ (id)siriui_platterSemiTransparentTextColor;
+ (id)siriui_semiTransparentTextColor;
+ (id)siriui_textColor;
+ (id)siriui_textHighlightColor;
+ (uint64_t)siriui_blendEffectColor;
+ (uint64_t)siriui_tapToEditColor;
+ (uint64_t)siriui_tapToEditMaskingColor;
+ (uint64_t)siriui_transparantButtonColor;
+ (uint64_t)siriui_transparantHighlightedButtonColor;
@end

@implementation UIColor(UIKit_SiriUIFrameworkAdditions)

+ (id)siriui_highlightColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.1];

  return v1;
}

+ (id)siriui_maskingHighlightColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterMaskingHighlightColor];
  }

  else
  {
    [self colorWithWhite:1.0 alpha:0.2];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterMaskingHighlightColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)siriui_keylineColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterKeylineColor];
  }

  else
  {
    [self siriui_lightKeylineColor];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterKeylineColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.18];

  return v1;
}

+ (id)siriui_maskingColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterMaskingColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
  }
  v2 = ;

  return v2;
}

+ (uint64_t)siriui_transparantButtonColor
{
  v0 = MEMORY[0x277D75348];
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 0.8;
  if (!v1)
  {
    v2 = 0.6;
  }

  return [v0 colorWithWhite:1.0 alpha:v2];
}

+ (uint64_t)siriui_transparantHighlightedButtonColor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = 0.4;
  if (!v2)
  {
    v3 = 0.2;
  }

  return [self colorWithWhite:1.0 alpha:v3];
}

+ (id)siriui_platterMaskingColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.6];

  return v1;
}

+ (id)siriui_glyphColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterGlyphColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_textColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_linkTextColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterLinkTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.55];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterLinkTextColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.55];

  return v1;
}

+ (id)siriui_semiTransparentTextColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterSemiTransparentTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterSemiTransparentTextColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)siriui_textHighlightColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterTextHighlightColor];
  }

  else
  {
    [self siriui_lightTextHighlightColor];
  }
  v2 = ;

  return v2;
}

+ (uint64_t)siriui_tapToEditColor
{
  v0 = UIAccessibilityDarkerSystemColorsEnabled();
  v1 = 0.314;
  if (v0)
  {
    v1 = 0.510078431;
  }

  v2 = MEMORY[0x277D75348];

  return [v2 colorWithRed:v1 green:v1 blue:v1 alpha:1.0];
}

+ (uint64_t)siriui_tapToEditMaskingColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = 0.510078431;
  }

  else
  {
    v0 = 0.314;
  }

  v1 = MEMORY[0x277D75348];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v2 = 0.8;
  }

  else
  {
    v2 = 0.6;
  }

  return [v1 colorWithRed:v0 green:v0 blue:v0 alpha:v2];
}

+ (id)siriui_insertionPointColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [self siriui_platterInsertionPointColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterInsertionPointColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)siriui_colorWithAceColor:()UIKit_SiriUIFrameworkAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D75348];
  v5 = [v3 redValue] / 255.0;
  v6 = [v3 greenValue] / 255.0;
  v7 = [v3 blueValue] / 255.0;
  alpha = [v3 alpha];
  if (alpha)
  {
    alpha2 = [v3 alpha];
    [alpha2 floatValue];
    v11 = [v4 colorWithRed:v5 green:v6 blue:v7 alpha:v10];
  }

  else
  {
    v11 = [v4 colorWithRed:v5 green:v6 blue:v7 alpha:1.0];
  }

  return v11;
}

+ (uint64_t)siriui_blendEffectColor
{
  v0 = UIAccessibilityDarkerSystemColorsEnabled();
  v1 = 0.596;
  if (v0)
  {
    v1 = 0.792078431;
  }

  v2 = MEMORY[0x277D75348];

  return [v2 colorWithRed:v1 green:v1 blue:v1 alpha:1.0];
}

@end