@interface PBContextMenuLargePasteButtonDrawing
- (PBContextMenuLargePasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBContextMenuLargePasteButtonDrawing

- (PBContextMenuLargePasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v8 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v10 = v9;
  v12 = v11;
  [tagCopy titleOrigin];
  v14 = v13;
  v16 = v15;
  v62 = [styleCopy layoutDirection] != 0;
  v61 = 0;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v62;
  v66 = 6;
  v67 = 1;
  v68 = &v61;
  v17 = CTParagraphStyleCreate(&settings, 2uLL);
  v18 = kCTUIFontTextStyleBody;
  v19 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleBody attributes:0];
  localization = [styleCopy localization];
  v21 = [v8 localizedStringForLocalization:localization];

  v64[0] = v19;
  v63[0] = kCTFontAttributeName;
  v63[1] = kCTForegroundColorAttributeName;
  tintColor = [styleCopy tintColor];
  v63[2] = kCTParagraphStyleAttributeName;
  v64[1] = tintColor;
  v64[2] = v17;
  v23 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:3];
  CFRelease(v17);
  CFRelease(v19);
  if ([styleCopy hasAccessibilityContentSizeCategory])
  {
    v24 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    v27 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v57 = v14;
    v29 = v16;
    selfCopy = self;
    glyph = [v8 glyph];
    v31 = [styleCopy assetGlyphWithName:glyph glyphSize:2 textStyle:v18];

    v24 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v31 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
    [v24 drawingSize];
    width = v32;
    height = v33;
    off_100039200();
    v35 = v34;
    v36 = *v34;
    Leading = CTFontGetLeading(v19);
    v38 = Leading + CTFontGetAscent(v19);
    v28 = round((v38 + CTFontGetDescent(v19)) * 24.0 / *v35 * [styleCopy displayScale] / objc_msgSend(styleCopy, "displayScale"));
    if ([tagCopy hasTrailingGutter])
    {
      v27 = width * 0.5 + 16.0 + v28 * 0.5 + 12.0;
    }

    else
    {
      v27 = width * 0.5 + 16.0 + v28 * 0.5;
    }

    self = selfCopy;
    v16 = v29;
    v14 = v57;
  }

  [tagCopy titleOrigin];
  v40 = v10 - v39 + -16.0 + -4.0 - v28;
  v41 = [UISTextParagraphDrawing alloc];
  hasAccessibilityContentSizeCategory = [styleCopy hasAccessibilityContentSizeCategory];
  displayScale = [styleCopy displayScale];
  if (hasAccessibilityContentSizeCategory)
  {
    v44 = 0;
  }

  else
  {
    v44 = 2;
  }

  v45 = [v41 initWithString:v21 attributes:v23 size:v44 numberOfLines:v40 scale:{0.0, displayScale}];
  [v45 drawingSize];
  if (v14 + v47 > v10 || v16 + v46 > v12)
  {
    v49 = _PBLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v50 = "Context menu paste button text too offset in button.";
LABEL_33:
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, v50, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v10 > 343.0 || v12 > (height + v46) * 3.0)
  {
    v49 = _PBLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v50 = "Context menu paste button too large for text + glyph.";
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if (v10 - v27 < 0.0 || (v53 = (v12 - height) * 0.5, v53 < 0.0))
  {
    v49 = _PBLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v50 = "Context menu paste button too small for glyph.";
      goto LABEL_33;
    }

LABEL_19:

    selfCopy2 = 0;
    goto LABEL_20;
  }

  layoutDirection = [styleCopy layoutDirection];
  if (layoutDirection == 1)
  {
    v55 = v27 - width;
  }

  else
  {
    v55 = v10 - v27;
  }

  if (layoutDirection == 1)
  {
    v56 = v10 - v14 - v40;
  }

  else
  {
    v56 = v14;
  }

  v59.receiver = self;
  v59.super_class = PBContextMenuLargePasteButtonDrawing;
  self = [(PBContextMenuPasteButtonDrawing *)&v59 initWithTitleDrawing:v45 titleOffset:v24 glyph:v56 glyphOffset:v16 size:v55, v53, v10, v12];
  selfCopy2 = self;
LABEL_20:

  return selfCopy2;
}

@end