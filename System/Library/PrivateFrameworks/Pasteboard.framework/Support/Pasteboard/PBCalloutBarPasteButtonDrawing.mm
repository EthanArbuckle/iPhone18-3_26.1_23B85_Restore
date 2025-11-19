@interface PBCalloutBarPasteButtonDrawing
- (CGSize)drawingSize;
- (PBCalloutBarPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4;
- (void)dealloc;
@end

@implementation PBCalloutBarPasteButtonDrawing

- (PBCalloutBarPasteButtonDrawing)initWithStyle:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = PBCalloutBarPasteButtonDrawing;
  v8 = [(PBCalloutBarPasteButtonDrawing *)&v33 init];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [v7 secureName]);
  v10 = [v6 localization];
  v11 = [v9 localizedStringForLocalization:v10];

  [v6 preferredContentSizeCategory];
  [v7 contentScaleLevel];
  UISCalloutBarFontSize();
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, v12, 0);
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 accessibilityButtonShapes] == 1);
  v35[0] = UIFontForLanguage;
  v34[0] = kCTFontAttributeName;
  v34[1] = kCTForegroundColorAttributeName;
  ConstantColor = CGColorGetConstantColor(kCGColorWhite);
  v34[2] = kCTUnderlineStyleAttributeName;
  v35[1] = ConstantColor;
  v35[2] = v14;
  v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
  [v7 titleWidth];
  v18 = [[UISTextLineDrawing alloc] initWithString:v11 attributes:v16 lineBreakMode:1 textAlignment:2 width:v17 scale:{objc_msgSend(v6, "displayScale")}];
  text = v8->_text;
  v8->_text = v18;

  [v7 size];
  v8->_size.width = v20;
  v8->_size.height = v21;
  CFRelease(UIFontForLanguage);
  if ([(UISTextLineDrawing *)v8->_text hasLineBreak])
  {
    v22 = _PBLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = 0;
      v23 = "Callout bar paste button text too small for width.";
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, &v32, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [(UISTextLineDrawing *)v8->_text drawingSize];
  v26 = v25;
  v27 = v24;
  if (v8->_size.width > v25 * 4.5 || v8->_size.height > v24 * 3.0)
  {
    v22 = _PBLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = 0;
      v23 = "Callout bar paste button too large for text.";
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  [v7 titleOrigin];
  v8->_textOffset.x = v30;
  v8->_textOffset.y = v29;
  if (v26 + v30 <= v8->_size.width && v27 + v29 <= v8->_size.height)
  {

LABEL_14:
    v28 = v8;
    goto LABEL_15;
  }

  v22 = _PBLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v32 = 0;
    v23 = "Callout bar paste button text too offset in button.";
    goto LABEL_17;
  }

LABEL_8:

  v28 = 0;
LABEL_15:

  return v28;
}

- (void)dealloc
{
  text = self->_text;
  self->_text = 0;

  CTFontRemoveFromCaches();
  CGFontCacheGetLocalCache();
  CGFontCacheReset();
  v4.receiver = self;
  v4.super_class = PBCalloutBarPasteButtonDrawing;
  [(PBCalloutBarPasteButtonDrawing *)&v4 dealloc];
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end