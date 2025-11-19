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
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  return v1;
}

+ (id)siriui_maskingHighlightColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterMaskingHighlightColor];
  }

  else
  {
    [a1 colorWithWhite:1.0 alpha:0.2];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterMaskingHighlightColor
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

+ (id)siriui_keylineColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterKeylineColor];
  }

  else
  {
    [a1 siriui_lightKeylineColor];
  }
  v2 = ;

  return v2;
}

+ (id)siriui_platterKeylineColor
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.18];

  return v1;
}

+ (id)siriui_maskingColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterMaskingColor];
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

  return [a1 colorWithWhite:1.0 alpha:v3];
}

+ (id)siriui_platterMaskingColor
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.6];

  return v1;
}

+ (id)siriui_glyphColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterGlyphColor];
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
    [a1 siriui_platterTextColor];
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
    [a1 siriui_platterLinkTextColor];
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
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.55];

  return v1;
}

+ (id)siriui_semiTransparentTextColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterSemiTransparentTextColor];
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
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)siriui_textHighlightColor
{
  if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
  {
    [a1 siriui_platterTextHighlightColor];
  }

  else
  {
    [a1 siriui_lightTextHighlightColor];
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
    [a1 siriui_platterInsertionPointColor];
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
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  return v1;
}

+ (id)siriui_colorWithAceColor:()UIKit_SiriUIFrameworkAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D75348];
  v5 = [v3 redValue] / 255.0;
  v6 = [v3 greenValue] / 255.0;
  v7 = [v3 blueValue] / 255.0;
  v8 = [v3 alpha];
  if (v8)
  {
    v9 = [v3 alpha];
    [v9 floatValue];
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