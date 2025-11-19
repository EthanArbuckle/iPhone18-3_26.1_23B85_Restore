@interface _UISecureControlDrawingPlan
- (CGSize)alignmentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)minimumContentSize;
- (_UISecureControlDrawingPlan)initWithSlotStyle:(id)a3 arrangeVertically:(BOOL)a4 secureName:(unsigned int)a5 iconGlyph:(id)a6;
- (id)glyphDrawingInColor:(CGColor *)a3;
- (id)textDrawingInColor:(CGColor *)a3;
- (void)dealloc;
@end

@implementation _UISecureControlDrawingPlan

- (_UISecureControlDrawingPlan)initWithSlotStyle:(id)a3 arrangeVertically:(BOOL)a4 secureName:(unsigned int)a5 iconGlyph:(id)a6
{
  v10 = a3;
  v11 = a6;
  v56.receiver = self;
  v56.super_class = _UISecureControlDrawingPlan;
  v12 = [(_UISecureControlDrawingPlan *)&v56 init];
  if (v12)
  {
    v13 = kCTUIFontTextStyleShortBody;
    v12->_font = [v10 newFontForTextStyle:kCTUIFontTextStyleShortBody attributes:0];
    v12->_contentSizeCategory = CFRetain([v10 fontContentSizeCategory]);
    v12->_displayScale = [v10 displayScale];
    if (a5)
    {
      v14 = [v10 localization];
      v15 = UISLocalizedStringForSecureName();
      localizedText = v12->_localizedText;
      v12->_localizedText = v15;
    }

    else
    {
      v14 = v12->_localizedText;
      v12->_localizedText = 0;
    }

    v17 = [v11 length];
    if (v17)
    {
      v17 = [v10 assetGlyphWithName:v11 glyphSize:1 textStyle:v13];
    }

    assetGlyph = v12->_assetGlyph;
    v12->_assetGlyph = v17;

    ConstantColor = CGColorGetConstantColor(kCGColorWhite);
    v20 = [(_UISecureControlDrawingPlan *)v12 glyphDrawingInColor:ConstantColor];
    [v20 drawingSize];
    v22 = v21;
    v24 = v23;
    [v20 alignmentRect];
    v26 = v25;
    v28 = v27;
    v29 = [(_UISecureControlDrawingPlan *)v12 textDrawingInColor:ConstantColor];
    [v29 drawingSize];
    v31 = v30;
    v33 = v32;
    [v29 alignmentRect];
    v36 = v34;
    if (!v20 || v29)
    {
      if (v20 || !v29)
      {
        v37 = 0.0;
        if (v20)
        {
          v49 = v31;
          v50 = v33;
          v51 = v22;
          v52 = v24;
          v53 = v26;
          v24 = 0.0;
          v26 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
          if (v29)
          {
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3221225472;
            v54[2] = sub_1000014EC;
            v54[3] = &unk_1000041C8;
            v55 = a4;
            v41 = v35;
            v42 = objc_retainBlock(v54);
            v37 = (v42[2])(v51, v52, v49, v50);
            v24 = v43;
            v26 = (v42[2])(v42, v53, v28, v36, v41);
            v38 = v44;
            v39 = (v42[2])(v42, v28, v28, v36, v41);
            v40 = v45;
          }
        }

        else
        {
          v24 = 0.0;
          v26 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
        }
      }

      else
      {
        v37 = v31;
        v24 = v33;
        v26 = v34;
        v38 = v35;
        v39 = v34;
        v40 = v35;
      }
    }

    else
    {
      v37 = v22;
      v38 = v28;
      v39 = v28;
      v40 = v28;
    }

    v46 = 0.0;
    if ([v10 preferredContentSizeCategory] >= 7)
    {
      v46 = ([v10 preferredContentSizeCategory] - 6) * 4.0;
    }

    v47 = fmin(1.0 / [v10 displayScale], 1.0);
    v12->_alignmentSize.width = v26;
    v12->_alignmentSize.height = v38;
    v12->_intrinsicContentSize.width = fmax(v26 + 24.0 + v46, v37);
    v12->_intrinsicContentSize.height = fmax(v38 + 14.0, v24);
    v12->_minimumContentSize.width = fmax(v39 + 14.0, v37) - v47;
    v12->_minimumContentSize.height = fmax(v40 + 14.0, v24) - v47;
  }

  return v12;
}

- (void)dealloc
{
  font = self->_font;
  if (font)
  {
    CFRelease(font);
  }

  contentSizeCategory = self->_contentSizeCategory;
  if (contentSizeCategory)
  {
    CFRelease(contentSizeCategory);
  }

  v5.receiver = self;
  v5.super_class = _UISecureControlDrawingPlan;
  [(_UISecureControlDrawingPlan *)&v5 dealloc];
}

- (id)textDrawingInColor:(CGColor *)a3
{
  if (!a3)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISecureControlDrawingPlan.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  if (self->_localizedText)
  {
    v5 = [UISTextLineDrawing alloc];
    localizedText = self->_localizedText;
    font = self->_font;
    v12[0] = kCTFontAttributeName;
    v12[1] = kCTForegroundColorAttributeName;
    v13[0] = font;
    v13[1] = a3;
    v8 = [v5 initWithString:localizedText attributes:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary lineBreakMode:"dictionaryWithObjects:forKeys:count:" textAlignment:v13 width:v12 scale:{2), 2, 0, NAN, self->_displayScale}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)glyphDrawingInColor:(CGColor *)a3
{
  if (!a3)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UISecureControlDrawingPlan.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  if (self->_assetGlyph)
  {
    v5 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:self->_assetGlyph tintColor:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)alignmentSize
{
  width = self->_alignmentSize.width;
  height = self->_alignmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumContentSize
{
  width = self->_minimumContentSize.width;
  height = self->_minimumContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end