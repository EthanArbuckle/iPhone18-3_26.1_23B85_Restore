@interface PBContextMenuDynamicPasteButtonDrawing
- (CGSize)drawingSize;
- (PBContextMenuDynamicPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
- (__CFString)resolvedIconTextStyleForStyle:(id)style tag:(id)tag;
- (__CTFont)resolvedTitleFontForStyle:(id)style tag:(id)tag;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation PBContextMenuDynamicPasteButtonDrawing

- (PBContextMenuDynamicPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v60.receiver = self;
  v60.super_class = PBContextMenuDynamicPasteButtonDrawing;
  v8 = [(PBContextMenuDynamicPasteButtonDrawing *)&v60 init];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v11 = v10;
  v13 = v12;
  [tagCopy titleFrame];
  v55 = v15;
  v56 = v14;
  [tagCopy iconFrame];
  v17 = v16;
  v19 = v18;
  v59 = 2;
  if ([tagCopy layoutSize] == 2)
  {
    v59 = [styleCopy layoutDirection] != 0;
  }

  v58 = 0;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v59;
  v64 = 6;
  v65 = 1;
  v66 = &v58;
  v20 = CTParagraphStyleCreate(&settings, 2uLL);
  v21 = [(PBContextMenuDynamicPasteButtonDrawing *)v8 resolvedTitleFontForStyle:styleCopy tag:tagCopy];
  localization = [styleCopy localization];
  v23 = [v9 localizedStringForLocalization:localization];

  v62[0] = v21;
  v61[0] = kCTFontAttributeName;
  v61[1] = kCTForegroundColorAttributeName;
  tintColor = [styleCopy tintColor];
  v61[2] = kCTParagraphStyleAttributeName;
  v62[1] = tintColor;
  v62[2] = v20;
  v25 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
  CFRelease(v20);
  CFRelease(v21);
  if ([styleCopy hasAccessibilityContentSizeCategory])
  {
    v26 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [tagCopy iconFrame];
    v30 = v29;
    v32 = v31;
    v33 = [(PBContextMenuDynamicPasteButtonDrawing *)v8 resolvedIconTextStyleForStyle:styleCopy tag:tagCopy];
    glyph = [v9 glyph];
    v35 = [styleCopy assetGlyphWithName:glyph glyphSize:2 textStyle:v33];

    v26 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v35 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
    [v26 drawingSize];
    width = v36;
    height = v37;
    v17 = v17 + (v30 - v36) * 0.5;
    v19 = v19 + (v32 - v37) * 0.5;
  }

  [tagCopy titleFrame];
  if (CGRectIsEmpty(v67) || ![tagCopy layoutSize])
  {
    v44 = 0;
  }

  else
  {
    [tagCopy titleFrame];
    v39 = v38;
    v40 = [UISTextParagraphDrawing alloc];
    hasAccessibilityContentSizeCategory = [styleCopy hasAccessibilityContentSizeCategory];
    displayScale = [styleCopy displayScale];
    if (hasAccessibilityContentSizeCategory)
    {
      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

    v44 = [v40 initWithString:v23 attributes:v25 size:v43 numberOfLines:v39 scale:{0.0, displayScale}];
  }

  [v44 drawingSize];
  y = CGPointZero.y;
  if (v44)
  {
    v70.size.width = v45;
    v70.size.height = v46;
    v68.origin.x = CGPointZero.x;
    v68.origin.y = CGPointZero.y;
    v68.size.width = v11;
    v68.size.height = v13;
    v70.origin.y = v55;
    v70.origin.x = v56;
    if (!CGRectContainsRect(v68, v70))
    {
      v52 = _PBLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v53 = "Context menu paste button's text does not fit.";
LABEL_28:
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
      }

LABEL_29:

      v51 = 0;
      goto LABEL_30;
    }

    if (!v26)
    {
      goto LABEL_20;
    }
  }

  else if (!v26)
  {
    v52 = _PBLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v53 = "Context menu paste button has no title or image.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v69.origin.x = CGPointZero.x;
  v69.origin.y = y;
  v69.size.width = v11;
  v69.size.height = v13;
  v71.origin.x = v17;
  v71.origin.y = v19;
  v71.size.width = width;
  v71.size.height = height;
  if (!CGRectContainsRect(v69, v71))
  {
    v52 = _PBLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v53 = "Context menu paste button's image does not fit.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_20:
  v8->_size.width = v11;
  v8->_size.height = v13;
  v8->_glyphOffset.x = v17;
  v8->_glyphOffset.y = v19;
  glyph = v8->_glyph;
  v8->_glyph = v26;
  v49 = v26;

  v8->_titleOffset.x = v56;
  v8->_titleOffset.y = v55;
  titleDrawing = v8->_titleDrawing;
  v8->_titleDrawing = v44;

LABEL_21:
  v51 = v8;
LABEL_30:

  return v51;
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
  if (self->_titleDrawing)
  {
    CGContextSaveGState(context);
    [(UISTextParagraphDrawing *)self->_titleDrawing drawInContext:context atPoint:x + self->_titleOffset.x, y + self->_titleOffset.y];
    CGContextRestoreGState(context);
  }

  if (self->_glyph)
  {
    CGContextSaveGState(context);
    [(UISVectorGlyphDrawing *)self->_glyph drawInContext:context atPoint:x + self->_glyphOffset.x, y + self->_glyphOffset.y];

    CGContextRestoreGState(context);
  }
}

- (void)dealloc
{
  titleDrawing = self->_titleDrawing;
  self->_titleDrawing = 0;

  glyph = self->_glyph;
  self->_glyph = 0;

  CTFontRemoveFromCaches();
  CGFontCacheGetLocalCache();
  CGFontCacheReset();
  v5.receiver = self;
  v5.super_class = PBContextMenuDynamicPasteButtonDrawing;
  [(PBContextMenuDynamicPasteButtonDrawing *)&v5 dealloc];
}

- (__CTFont)resolvedTitleFontForStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  layout = [tagCopy layout];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  layoutSize = [tagCopy layoutSize];

  if (layoutSize != 1)
  {
    if (layout == 1 && userInterfaceIdiom == 1)
    {
      v10 = &kCTUIFontTextStyleSubhead;
    }

    else
    {
      v10 = &kCTUIFontTextStyleBody;
    }

    goto LABEL_8;
  }

  if (layout != 1)
  {
    v10 = &kCTUIFontTextStyleFootnote;
LABEL_8:
    v11 = [styleCopy newFontForTextStyle:*v10 attributes:0];
    goto LABEL_12;
  }

  v12 = &kCTUIFontTextStyleCaption2;
  if (userInterfaceIdiom != 1)
  {
    v12 = &kCTUIFontTextStyleFootnote;
  }

  v13 = *v12;
  v18 = kCTFontTraitsAttribute;
  v16 = kCTFontWeightTrait;
  v17 = &off_100033C80;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v14;
  v11 = [styleCopy newFontForTextStyle:v13 attributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}];

LABEL_12:
  return v11;
}

- (__CFString)resolvedIconTextStyleForStyle:(id)style tag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  layout = [tagCopy layout];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];

  layoutSize = [tagCopy layoutSize];
  if (layoutSize == 1)
  {
    if (layout == 1)
    {
      v10 = &kCTUIFontTextStyleSubhead;
      if (userInterfaceIdiom != 1)
      {
        v10 = &kCTUIFontTextStyleBody;
      }
    }

    else
    {
      v10 = &kCTUIFontTextStyleFootnote;
    }
  }

  else if (layout == 1 && userInterfaceIdiom == 1)
  {
    v10 = &kCTUIFontTextStyleSubhead;
  }

  else
  {
    v10 = &kCTUIFontTextStyleBody;
  }

  return *v10;
}

@end