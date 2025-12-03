@interface TPGlassHelper
+ (void)applyClearGlassToSheet:(id)sheet;
+ (void)applyRegularGlassToSheet:(id)sheet;
@end

@implementation TPGlassHelper

+ (void)applyClearGlassToSheet:(id)sheet
{
  sheetCopy = sheet;
  if (_UISolariumEnabled())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    sheetPresentationController = [sheetCopy sheetPresentationController];
    [sheetPresentationController _setNonLargeBackground:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    sheetPresentationController2 = [sheetCopy sheetPresentationController];
    [sheetPresentationController2 _setLargeBackground:v5];
  }
}

+ (void)applyRegularGlassToSheet:(id)sheet
{
  sheetCopy = sheet;
  if (_UISolariumEnabled())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    sheetPresentationController = [sheetCopy sheetPresentationController];
    [sheetPresentationController _setNonLargeBackground:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    sheetPresentationController2 = [sheetCopy sheetPresentationController];
    [sheetPresentationController2 _setLargeBackground:v5];
  }
}

@end