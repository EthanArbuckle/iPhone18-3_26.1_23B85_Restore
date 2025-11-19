@interface PBContextMenuDynamicPasteButtonDrawing
- (CGSize)drawingSize;
- (PBContextMenuDynamicPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4;
- (__CFString)resolvedIconTextStyleForStyle:(id)a3 tag:(id)a4;
- (__CTFont)resolvedTitleFontForStyle:(id)a3 tag:(id)a4;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation PBContextMenuDynamicPasteButtonDrawing

- (PBContextMenuDynamicPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v60.receiver = self;
  v60.super_class = PBContextMenuDynamicPasteButtonDrawing;
  v8 = [(PBContextMenuDynamicPasteButtonDrawing *)&v60 init];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [v7 secureName]);
  [v7 size];
  v11 = v10;
  v13 = v12;
  [v7 titleFrame];
  v55 = v15;
  v56 = v14;
  [v7 iconFrame];
  v17 = v16;
  v19 = v18;
  v59 = 2;
  if ([v7 layoutSize] == 2)
  {
    v59 = [v6 layoutDirection] != 0;
  }

  v58 = 0;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v59;
  v64 = 6;
  v65 = 1;
  v66 = &v58;
  v20 = CTParagraphStyleCreate(&settings, 2uLL);
  v21 = [(PBContextMenuDynamicPasteButtonDrawing *)v8 resolvedTitleFontForStyle:v6 tag:v7];
  v22 = [v6 localization];
  v23 = [v9 localizedStringForLocalization:v22];

  v62[0] = v21;
  v61[0] = kCTFontAttributeName;
  v61[1] = kCTForegroundColorAttributeName;
  v24 = [v6 tintColor];
  v61[2] = kCTParagraphStyleAttributeName;
  v62[1] = v24;
  v62[2] = v20;
  v25 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
  CFRelease(v20);
  CFRelease(v21);
  if ([v6 hasAccessibilityContentSizeCategory])
  {
    v26 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [v7 iconFrame];
    v30 = v29;
    v32 = v31;
    v33 = [(PBContextMenuDynamicPasteButtonDrawing *)v8 resolvedIconTextStyleForStyle:v6 tag:v7];
    v34 = [v9 glyph];
    v35 = [v6 assetGlyphWithName:v34 glyphSize:2 textStyle:v33];

    v26 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v35 tintColor:{objc_msgSend(v6, "tintColor")}];
    [v26 drawingSize];
    width = v36;
    height = v37;
    v17 = v17 + (v30 - v36) * 0.5;
    v19 = v19 + (v32 - v37) * 0.5;
  }

  [v7 titleFrame];
  if (CGRectIsEmpty(v67) || ![v7 layoutSize])
  {
    v44 = 0;
  }

  else
  {
    [v7 titleFrame];
    v39 = v38;
    v40 = [UISTextParagraphDrawing alloc];
    v41 = [v6 hasAccessibilityContentSizeCategory];
    v42 = [v6 displayScale];
    if (v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

    v44 = [v40 initWithString:v23 attributes:v25 size:v43 numberOfLines:v39 scale:{0.0, v42}];
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

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (self->_titleDrawing)
  {
    CGContextSaveGState(a3);
    [(UISTextParagraphDrawing *)self->_titleDrawing drawInContext:a3 atPoint:x + self->_titleOffset.x, y + self->_titleOffset.y];
    CGContextRestoreGState(a3);
  }

  if (self->_glyph)
  {
    CGContextSaveGState(a3);
    [(UISVectorGlyphDrawing *)self->_glyph drawInContext:a3 atPoint:x + self->_glyphOffset.x, y + self->_glyphOffset.y];

    CGContextRestoreGState(a3);
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

- (__CTFont)resolvedTitleFontForStyle:(id)a3 tag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 layout];
  v8 = [v5 userInterfaceIdiom];
  v9 = [v6 layoutSize];

  if (v9 != 1)
  {
    if (v7 == 1 && v8 == 1)
    {
      v10 = &kCTUIFontTextStyleSubhead;
    }

    else
    {
      v10 = &kCTUIFontTextStyleBody;
    }

    goto LABEL_8;
  }

  if (v7 != 1)
  {
    v10 = &kCTUIFontTextStyleFootnote;
LABEL_8:
    v11 = [v5 newFontForTextStyle:*v10 attributes:0];
    goto LABEL_12;
  }

  v12 = &kCTUIFontTextStyleCaption2;
  if (v8 != 1)
  {
    v12 = &kCTUIFontTextStyleFootnote;
  }

  v13 = *v12;
  v18 = kCTFontTraitsAttribute;
  v16 = kCTFontWeightTrait;
  v17 = &off_100033C80;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v14;
  v11 = [v5 newFontForTextStyle:v13 attributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}];

LABEL_12:
  return v11;
}

- (__CFString)resolvedIconTextStyleForStyle:(id)a3 tag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 layout];
  v8 = [v6 userInterfaceIdiom];

  v9 = [v5 layoutSize];
  if (v9 == 1)
  {
    if (v7 == 1)
    {
      v10 = &kCTUIFontTextStyleSubhead;
      if (v8 != 1)
      {
        v10 = &kCTUIFontTextStyleBody;
      }
    }

    else
    {
      v10 = &kCTUIFontTextStyleFootnote;
    }
  }

  else if (v7 == 1 && v8 == 1)
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