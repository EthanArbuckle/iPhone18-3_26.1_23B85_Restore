@interface PBContextMenuSmallPasteButtonDrawing
- (PBContextMenuSmallPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBContextMenuSmallPasteButtonDrawing

- (PBContextMenuSmallPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  v8 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v10 = v9;
  v12 = v11;
  glyph = [v8 glyph];
  if ([styleCopy hasAccessibilityContentSizeCategory])
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [styleCopy assetGlyphWithName:glyph glyphSize:v14 textStyle:kCTUIFontTextStyleBody];

  v16 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v15 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
  [v16 drawingSize];
  v18 = v17;
  v20 = (v10 - v19) * 0.5;
  displayScale = [styleCopy displayScale];

  v22 = round(v20 * displayScale) / displayScale;
  if (v22 < 0.0 || (v23 = round((v12 - v18) * 0.5 * displayScale) / displayScale, v23 < 0.0))
  {
    v27 = _PBLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Context menu paste button too small for glyph.", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    [tagCopy size];
    v29.receiver = self;
    v29.super_class = PBContextMenuSmallPasteButtonDrawing;
    self = [(PBContextMenuPasteButtonDrawing *)&v29 initWithTitleDrawing:0 titleOffset:v16 glyph:CGPointZero.x glyphOffset:CGPointZero.y size:v22, v23, v24, v25];
    selfCopy = self;
  }

  return selfCopy;
}

@end