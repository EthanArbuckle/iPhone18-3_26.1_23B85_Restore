@interface PBEditMenuPasteButtonDrawing
- (CGSize)drawingSize;
- (PBEditMenuPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation PBEditMenuPasteButtonDrawing

- (PBEditMenuPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v53.receiver = self;
  v53.super_class = PBEditMenuPasteButtonDrawing;
  v8 = [(PBEditMenuPasteButtonDrawing *)&v53 init];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v8->_size.width = v10;
  v8->_size.height = v11;
  v12 = kCTUIFontTextStyleSubhead;
  v13 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleSubhead attributes:0];
  [tagCopy contentOrigin];
  v15 = v14;
  v17 = v16;
  displayMode = [tagCopy displayMode];
  displayMode2 = [tagCopy displayMode];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (displayMode2)
  {
    glyph = [v9 glyph];
    v23 = [styleCopy assetGlyphWithName:glyph glyphSize:2 textStyle:v12];

    v24 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v23 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
    glyph = v8->_glyph;
    v8->_glyph = v24;

    [v23 alignmentRect];
    v27 = v26;
    [(UISVectorGlyphDrawing *)v8->_glyph drawingSize];
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v27 = 0.0;
    v31 = CGSizeZero.height;
    v29 = CGSizeZero.width;
  }

  if (displayMode != 1)
  {
    v52 = [styleCopy layoutDirection] != 0;
    v51 = [styleCopy hasAccessibilityContentSizeCategory] ^ 1;
    settings.spec = kCTParagraphStyleSpecifierAlignment;
    settings.valueSize = 1;
    settings.value = &v52;
    v57 = 6;
    v58 = 1;
    v59 = &v51;
    v32 = CTParagraphStyleCreate(&settings, 2uLL);
    localization = [styleCopy localization];
    v34 = [v9 localizedStringForLocalization:localization];

    v55[0] = v13;
    v54[0] = kCTFontAttributeName;
    v54[1] = kCTForegroundColorAttributeName;
    tintColor = [styleCopy tintColor];
    v54[2] = kCTParagraphStyleAttributeName;
    v55[1] = tintColor;
    v55[2] = v32;
    v36 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
    CFRelease(v32);
    if (v29 <= 0.0)
    {
      v37 = v8->_size.width + v15 * -2.0;
    }

    else
    {
      v37 = v8->_size.width + v15 * -2.0 - (v29 + 6.0);
    }

    v38 = [[UISTextParagraphDrawing alloc] initWithString:v34 attributes:v36 size:objc_msgSend(styleCopy numberOfLines:"hasAccessibilityContentSizeCategory") ^ 1 scale:{v37, 0.0, objc_msgSend(styleCopy, "displayScale")}];
    titleDrawing = v8->_titleDrawing;
    v8->_titleDrawing = v38;

    [(UISTextParagraphDrawing *)v8->_titleDrawing drawingSize];
    width = v40;
    height = v41;
  }

  CFRelease(v13);
  if ([styleCopy layoutDirection])
  {
    v42 = v8->_size.width;
    v15 = v42 - v15 - v29;
    v43 = v15 + -6.0;
    if (!v8->_glyph)
    {
      v43 = v15;
    }

    v44 = v43 - width;
  }

  else
  {
    if (v8->_glyph)
    {
      v44 = v15 + v29 + 6.0;
    }

    else
    {
      v44 = v15;
    }

    v42 = v8->_size.width;
  }

  v8->_glyphOffset.x = v15;
  v8->_glyphOffset.y = v17 - v27;
  v8->_titleOffset.x = v44;
  v8->_titleOffset.y = v17;
  if (width + v44 <= v42)
  {
    v45 = v8->_size.height;
    if (v17 + height <= v45)
    {
      if (v29 + v15 > v42 || v31 + v17 - v27 > v45)
      {
        v46 = _PBLog();
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        LOWORD(settings.spec) = 0;
        v49 = "Edit menu paste button image too offset in button.";
LABEL_32:
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v49, &settings, 2u);
        goto LABEL_21;
      }

LABEL_29:
      v47 = v8;
      goto LABEL_30;
    }
  }

  v46 = _PBLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    LOWORD(settings.spec) = 0;
    v49 = "Edit menu paste button text too offset in button.";
    goto LABEL_32;
  }

LABEL_21:

  v47 = 0;
LABEL_30:

  return v47;
}

- (void)dealloc
{
  titleDrawing = self->_titleDrawing;
  self->_titleDrawing = 0;

  CTFontRemoveFromCaches();
  CGFontCacheGetLocalCache();
  CGFontCacheReset();
  v4.receiver = self;
  v4.super_class = PBEditMenuPasteButtonDrawing;
  [(PBEditMenuPasteButtonDrawing *)&v4 dealloc];
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  CGContextSaveGState(context);
  [(UISTextParagraphDrawing *)self->_titleDrawing drawInContext:context atPoint:x + self->_titleOffset.x, y + self->_titleOffset.y];
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  [(UISVectorGlyphDrawing *)self->_glyph drawInContext:context atPoint:x + self->_glyphOffset.x, y + self->_glyphOffset.y];

  CGContextRestoreGState(context);
}

@end