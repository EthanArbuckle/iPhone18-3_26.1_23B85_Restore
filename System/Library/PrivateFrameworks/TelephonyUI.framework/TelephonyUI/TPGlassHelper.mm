@interface TPGlassHelper
+ (void)applyClearGlassToSheet:(id)a3;
+ (void)applyRegularGlassToSheet:(id)a3;
@end

@implementation TPGlassHelper

+ (void)applyClearGlassToSheet:(id)a3
{
  v7 = a3;
  if (_UISolariumEnabled())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    v4 = [v7 sheetPresentationController];
    [v4 _setNonLargeBackground:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    v6 = [v7 sheetPresentationController];
    [v6 _setLargeBackground:v5];
  }
}

+ (void)applyRegularGlassToSheet:(id)a3
{
  v7 = a3;
  if (_UISolariumEnabled())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    v4 = [v7 sheetPresentationController];
    [v4 _setNonLargeBackground:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    v6 = [v7 sheetPresentationController];
    [v6 _setLargeBackground:v5];
  }
}

@end