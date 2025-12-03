@interface PBContextMenuMediumPasteButtonDrawing
- (PBContextMenuMediumPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBContextMenuMediumPasteButtonDrawing

- (PBContextMenuMediumPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v8 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v10 = v9;
  v12 = v11;
  [tagCopy titleOrigin];
  v14 = v13;

  v56 = 2;
  v55 = 0;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v56;
  v60 = 6;
  v61 = 1;
  v62 = &v55;
  v15 = CTParagraphStyleCreate(&settings, 2uLL);
  v16 = kCTUIFontTextStyleFootnote;
  v17 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleFootnote attributes:0];
  localization = [styleCopy localization];
  v19 = [v8 localizedStringForLocalization:localization];

  v58[0] = v17;
  v57[0] = kCTFontAttributeName;
  v57[1] = kCTForegroundColorAttributeName;
  tintColor = [styleCopy tintColor];
  v57[2] = kCTParagraphStyleAttributeName;
  v58[1] = tintColor;
  v58[2] = v15;
  v21 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:3];
  CFRelease(v15);
  CFRelease(v17);
  v22 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleBody attributes:0];
  off_100039200();
  v24 = v23;
  v25 = *v23;
  cf = CTFontGetLeading(v22);
  Ascent = CTFontGetAscent(v22);
  Descent = CTFontGetDescent(v22);
  v50 = *v24;
  CFRelease(v22);
  glyph = [v8 glyph];
  if ([styleCopy hasAccessibilityContentSizeCategory])
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  v29 = [styleCopy assetGlyphWithName:glyph glyphSize:v28 textStyle:v16];

  v30 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v29 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
  [v30 drawingSize];
  v32 = v31;
  v34 = v33;
  v35 = [UISTextParagraphDrawing alloc];
  hasAccessibilityContentSizeCategory = [styleCopy hasAccessibilityContentSizeCategory];
  displayScale = [styleCopy displayScale];
  if (hasAccessibilityContentSizeCategory)
  {
    v38 = 0;
  }

  else
  {
    v38 = 2;
  }

  v39 = [v35 initWithString:v19 attributes:v21 size:v38 numberOfLines:v10 scale:{0.0, displayScale}];
  [v39 drawingSize];
  v41 = (v10 - v40) * 0.5;
  v43 = v14 + v42;
  if (v40 + v41 > v10 || v43 > v12)
  {
    v45 = _PBLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v46 = "Context menu paste button text too offset in button.";
LABEL_20:
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v46, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  displayScale2 = [styleCopy displayScale];
  if (round((v10 - v32) * 0.5 * displayScale2) / displayScale2 < 0.0 || round(((cf + Ascent + Descent) * 48.0 / v50 * 0.5 - v34 * 0.5 + -1.0) * displayScale2) / displayScale2 < 0.0)
  {
    v45 = _PBLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v46 = "Context menu paste button too small for glyph.";
      goto LABEL_20;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v53.receiver = self;
  v53.super_class = PBContextMenuMediumPasteButtonDrawing;
  self = [(PBContextMenuPasteButtonDrawing *)&v53 initWithTitleDrawing:v39 titleOffset:v30 glyph:v41 glyphOffset:v14 size:?];
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end