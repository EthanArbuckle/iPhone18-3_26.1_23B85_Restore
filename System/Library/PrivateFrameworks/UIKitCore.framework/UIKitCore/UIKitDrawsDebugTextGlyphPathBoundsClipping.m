@interface UIKitDrawsDebugTextGlyphPathBoundsClipping
@end

@implementation UIKitDrawsDebugTextGlyphPathBoundsClipping

void ___UIKitDrawsDebugTextGlyphPathBoundsClipping_block_invoke()
{
  v0 = _UIKitUserDefaults();
  v5 = [v0 objectForKey:@"DetectTextLayoutIssues"];

  if (v5)
  {
    _MergedGlobals_58_0 = [v5 BOOLValue];
  }

  else
  {
    v1 = [MEMORY[0x1E696AE30] processInfo];
    v2 = [v1 environment];

    v3 = [v2 objectForKey:@"DetectTextLayoutIssues"];
    v4 = v3;
    if (v3)
    {
      _MergedGlobals_58_0 = [v3 BOOLValue];
    }
  }
}

@end