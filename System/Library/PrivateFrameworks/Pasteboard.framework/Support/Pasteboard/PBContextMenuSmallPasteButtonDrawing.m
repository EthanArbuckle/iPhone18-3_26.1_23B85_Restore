@interface PBContextMenuSmallPasteButtonDrawing
- (PBContextMenuSmallPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4;
@end

@implementation PBContextMenuSmallPasteButtonDrawing

- (PBContextMenuSmallPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [v6 secureName]);
  [v6 size];
  v10 = v9;
  v12 = v11;
  v13 = [v8 glyph];
  if ([v7 hasAccessibilityContentSizeCategory])
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [v7 assetGlyphWithName:v13 glyphSize:v14 textStyle:kCTUIFontTextStyleBody];

  v16 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v15 tintColor:{objc_msgSend(v7, "tintColor")}];
  [v16 drawingSize];
  v18 = v17;
  v20 = (v10 - v19) * 0.5;
  v21 = [v7 displayScale];

  v22 = round(v20 * v21) / v21;
  if (v22 < 0.0 || (v23 = round((v12 - v18) * 0.5 * v21) / v21, v23 < 0.0))
  {
    v27 = _PBLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Context menu paste button too small for glyph.", buf, 2u);
    }

    v26 = 0;
  }

  else
  {
    [v6 size];
    v29.receiver = self;
    v29.super_class = PBContextMenuSmallPasteButtonDrawing;
    self = [(PBContextMenuPasteButtonDrawing *)&v29 initWithTitleDrawing:0 titleOffset:v16 glyph:CGPointZero.x glyphOffset:CGPointZero.y size:v22, v23, v24, v25];
    v26 = self;
  }

  return v26;
}

@end