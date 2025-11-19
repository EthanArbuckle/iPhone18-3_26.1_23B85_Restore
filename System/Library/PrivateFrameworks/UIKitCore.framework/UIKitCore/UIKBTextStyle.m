@interface UIKBTextStyle
+ (id)styleWithFontName:(id)a3 withFallbackFontName:(id)a4 withFontSize:(double)a5;
+ (id)styleWithFontName:(id)a3 withFontSize:(double)a4;
+ (id)styleWithTextColor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)etchOffset;
- (CGPoint)textOffset;
- (UIKBTextStyle)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)overlayWithStyle:(id)a3;
@end

@implementation UIKBTextStyle

- (UIKBTextStyle)init
{
  v3.receiver = self;
  v3.super_class = UIKBTextStyle;
  result = [(UIKBTextStyle *)&v3 init];
  if (result)
  {
    result->_imageScale = 1.0;
    result->_alignment = 1;
    result->_pathWeight = 1.0;
  }

  return result;
}

- (CGPoint)textOffset
{
  x = self->_textOffset.x;
  y = self->_textOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)styleWithFontName:(id)a3 withFontSize:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(UIKBTextStyle);
  [(UIKBTextStyle *)v6 setTextOpacity:1.0];
  [(UIKBTextStyle *)v6 setImageScale:1.0];
  [(UIKBTextStyle *)v6 setFontName:v5];

  [(UIKBTextStyle *)v6 setFontSize:a4];
  [(UIKBTextStyle *)v6 setFontWeight:0.0];
  [(UIKBTextStyle *)v6 setFontGrade:0];
  [(UIKBTextStyle *)v6 setFontWidth:*off_1E70ECD48];
  [(UIKBTextStyle *)v6 setIgnoreTextMarginOnKey:0];
  [(UIKBTextStyle *)v6 setNeedsFontCase:0];
  [(UIKBTextStyle *)v6 setAnchorCorner:0];
  [(UIKBTextStyle *)v6 setSymbolScale:0];

  return v6;
}

+ (id)styleWithFontName:(id)a3 withFallbackFontName:(id)a4 withFontSize:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(UIKBTextStyle);
  [(UIKBTextStyle *)v9 setTextOpacity:1.0];
  [(UIKBTextStyle *)v9 setImageScale:1.0];
  [(UIKBTextStyle *)v9 setFontName:v8];

  [(UIKBTextStyle *)v9 setKeycapsFallback:v7];
  [(UIKBTextStyle *)v9 setFontSize:a5];
  [(UIKBTextStyle *)v9 setFontWeight:0.0];
  [(UIKBTextStyle *)v9 setFontGrade:0];
  [(UIKBTextStyle *)v9 setFontWidth:*off_1E70ECD48];
  [(UIKBTextStyle *)v9 setIgnoreTextMarginOnKey:0];
  [(UIKBTextStyle *)v9 setNeedsFontCase:0];
  [(UIKBTextStyle *)v9 setAnchorCorner:0];
  [(UIKBTextStyle *)v9 setSymbolScale:0];

  return v9;
}

+ (id)styleWithTextColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIKBTextStyle);
  [(UIKBTextStyle *)v4 setFontWeight:0.0];
  [(UIKBTextStyle *)v4 setFontGrade:0];
  [(UIKBTextStyle *)v4 setFontWidth:*off_1E70ECD48];
  [(UIKBTextStyle *)v4 setTextOpacity:1.0];
  [(UIKBTextStyle *)v4 setImageScale:1.0];
  [(UIKBTextStyle *)v4 setTextColor:v3];

  [(UIKBTextStyle *)v4 setIgnoreTextMarginOnKey:0];
  [(UIKBTextStyle *)v4 setNeedsFontCase:0];
  [(UIKBTextStyle *)v4 setAnchorCorner:0];
  [(UIKBTextStyle *)v4 setSymbolScale:0];

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(UIKBTextStyle *)self fontName];
  [v3 appendFormat:@"; fontName = %@", v4];

  [(UIKBTextStyle *)self fontSize];
  [v3 appendFormat:@"; fontSize = %f", v5];
  [(UIKBTextStyle *)self fontWeight];
  [v3 appendFormat:@"; fontWeight = %f", v6];
  [(UIKBTextStyle *)self fontWidth];
  [v3 appendFormat:@"; fontWidth = %f", v7];
  [(UIKBTextStyle *)self minFontSize];
  if (v8 != 0.0)
  {
    [(UIKBTextStyle *)self minFontSize];
    [v3 appendFormat:@"; minFontSize = %f", v9];
  }

  [(UIKBTextStyle *)self fontSizeForSymbolImage];
  if (v10 > 0.0)
  {
    [(UIKBTextStyle *)self fontSizeForSymbolImage];
    [v3 appendFormat:@"; fontSizeForSymbolImage = %f", v11];
  }

  [(UIKBTextStyle *)self kerning];
  if (v12 != 0.0)
  {
    [(UIKBTextStyle *)self kerning];
    [v3 appendFormat:@"; kerning = %f", v13];
  }

  [(UIKBTextStyle *)self textOpacity];
  if (v14 != 1.0)
  {
    [(UIKBTextStyle *)self textOpacity];
    [v3 appendFormat:@"; textOpacity = %f", v15];
  }

  v16 = [(UIKBTextStyle *)self textColor];

  if (v16)
  {
    v17 = [(UIKBTextStyle *)self textColor];
    [v3 appendFormat:@"; textColor = %@", v17];
  }

  v18 = [(UIKBTextStyle *)self etchColor];

  if (v18)
  {
    v19 = [(UIKBTextStyle *)self etchColor];
    [v3 appendFormat:@"; etchColor = %@", v19];
  }

  if ([(UIKBTextStyle *)self alignment]!= 1)
  {
    [v3 appendFormat:@"; alignment = %d", -[UIKBTextStyle alignment](self, "alignment")];
  }

  [(UIKBTextStyle *)self textOffset];
  v22 = *MEMORY[0x1E695EFF8];
  v21 = *(MEMORY[0x1E695EFF8] + 8);
  if (v23 != *MEMORY[0x1E695EFF8] || v20 != v21)
  {
    [(UIKBTextStyle *)self textOffset];
    v24 = NSStringFromCGPoint(v32);
    [v3 appendFormat:@"; textOffset = %@", v24];
  }

  [(UIKBTextStyle *)self etchOffset];
  if (v26 != v22 || v25 != v21)
  {
    [(UIKBTextStyle *)self etchOffset];
    v27 = NSStringFromCGPoint(v33);
    [v3 appendFormat:@"; etchOffset = %@", v27];
  }

  [(UIKBTextStyle *)self pathWeight];
  if (v28 != 0.0)
  {
    [(UIKBTextStyle *)self pathWeight];
    [v3 appendFormat:@"; pathWeight = %f", v29];
  }

  if ([(UIKBTextStyle *)self fontGrade])
  {
    [v3 appendFormat:@"; fontGrade = %d", -[UIKBTextStyle fontGrade](self, "fontGrade")];
  }

  if ([(UIKBTextStyle *)self selector])
  {
    [v3 appendFormat:@"; selector = %d", -[UIKBTextStyle selector](self, "selector")];
  }

  [v3 appendFormat:@"; ignoreTextMarginOnKey = %d", -[UIKBTextStyle ignoreTextMarginOnKey](self, "ignoreTextMarginOnKey")];
  [v3 appendFormat:@"; needsFontCase = %d", -[UIKBTextStyle needsFontCase](self, "needsFontCase")];
  [v3 appendFormat:@"; anchorCorner = %lu", -[UIKBTextStyle anchorCorner](self, "anchorCorner")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  fontName = self->_fontName;
  if ((v4->_fontName != 0) == (fontName == 0) || fontName && ![(NSString *)fontName isEqualToString:?])
  {
    goto LABEL_33;
  }

  if (self->_fontSize != v4->_fontSize)
  {
    goto LABEL_33;
  }

  if (self->_fontSizeForSymbolImage != v4->_fontSizeForSymbolImage)
  {
    goto LABEL_33;
  }

  if (self->_minFontSize != v4->_minFontSize)
  {
    goto LABEL_33;
  }

  if (self->_kerning != v4->_kerning)
  {
    goto LABEL_33;
  }

  if (self->_textOpacity != v4->_textOpacity)
  {
    goto LABEL_33;
  }

  textColor = self->_textColor;
  if ((textColor == 0) == (v4->_textColor != 0) || textColor && ![(NSString *)textColor isEqualToString:?])
  {
    goto LABEL_33;
  }

  etchColor = self->_etchColor;
  if ((etchColor == 0) == (v4->_etchColor != 0) || etchColor && ![(NSString *)etchColor isEqualToString:?])
  {
    goto LABEL_33;
  }

  if (self->_alignment != v4->_alignment)
  {
    goto LABEL_33;
  }

  v8 = 0;
  if (self->_textOffset.x == v4->_textOffset.x && self->_textOffset.y == v4->_textOffset.y)
  {
    v8 = 0;
    if (self->_etchOffset.x == v4->_etchOffset.x && self->_etchOffset.y == v4->_etchOffset.y)
    {
      if (self->_pathWeight == v4->_pathWeight && self->_fontWeight == v4->_fontWeight && self->_fontGrade == v4->_fontGrade && self->_fontWidth == v4->_fontWidth && self->_fontWeightForSymbolImage == v4->_fontWeightForSymbolImage && self->_anchorCorner == v4->_anchorCorner && self->_selector == v4->_selector && self->_ignoreTextMarginOnKey == v4->_ignoreTextMarginOnKey && self->_needsFontCase == v4->_needsFontCase && self->_isVertical == v4->_isVertical)
      {
        v8 = self->_symbolScale == v4->_symbolScale;
        goto LABEL_35;
      }

LABEL_33:
      v8 = 0;
    }
  }

LABEL_35:

  return v8;
}

- (void)overlayWithStyle:(id)a3
{
  v24 = a3;
  v4 = [v24 fontName];

  if (v4)
  {
    v5 = [v24 fontName];
    [(UIKBTextStyle *)self setFontName:v5];
  }

  [v24 fontSize];
  if (v6 > 0.0)
  {
    [v24 fontSize];
    [(UIKBTextStyle *)self setFontSize:?];
  }

  [v24 fontSizeForSymbolImage];
  if (v7 > 0.0)
  {
    [v24 fontSizeForSymbolImage];
    [(UIKBTextStyle *)self setFontSizeForSymbolImage:?];
  }

  [v24 minFontSize];
  if (v8 > 0.0)
  {
    [v24 minFontSize];
    [(UIKBTextStyle *)self setMinFontSize:?];
  }

  [v24 kerning];
  if (fabs(v9) >= 2.22044605e-16)
  {
    [v24 kerning];
    [(UIKBTextStyle *)self setKerning:?];
  }

  [v24 textOpacity];
  if (fabs(v10 + -1.0) >= 2.22044605e-16)
  {
    [v24 textOpacity];
    [(UIKBTextStyle *)self setTextOpacity:?];
  }

  v11 = [v24 textColor];

  if (v11)
  {
    v12 = [v24 textColor];
    [(UIKBTextStyle *)self setTextColor:v12];
  }

  v13 = [v24 etchColor];

  if (v13)
  {
    v14 = [v24 etchColor];
    [(UIKBTextStyle *)self setEtchColor:v14];
  }

  if ([v24 alignment] != 1)
  {
    -[UIKBTextStyle setAlignment:](self, "setAlignment:", [v24 alignment]);
  }

  if ([v24 anchorCorner])
  {
    v16 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [v24 textOffset];
    v16 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
    if (*MEMORY[0x1E695EFF8] != v18 || v15 != v17)
    {
      [v24 textOffset];
      [(UIKBTextStyle *)self setTextOffset:?];
    }
  }

  [v24 etchOffset];
  if (v16 != v20 || v15 != v19)
  {
    [v24 etchOffset];
    [(UIKBTextStyle *)self setEtchOffset:?];
  }

  [v24 pathWeight];
  if (v21 != 0.0)
  {
    [v24 pathWeight];
    [(UIKBTextStyle *)self setPathWeight:?];
  }

  [v24 fontWeight];
  if (v22 != 0.0)
  {
    [v24 fontWeight];
    [(UIKBTextStyle *)self setFontWeight:?];
  }

  if ([v24 fontGrade])
  {
    -[UIKBTextStyle setFontGrade:](self, "setFontGrade:", [v24 fontGrade]);
  }

  [v24 fontWidth];
  if (v23 != 0.0)
  {
    [v24 fontWidth];
    [(UIKBTextStyle *)self setFontWidth:?];
  }

  if ([v24 selector])
  {
    -[UIKBTextStyle setSelector:](self, "setSelector:", [v24 selector]);
  }

  if ([v24 isVertical])
  {
    -[UIKBTextStyle setIsVertical:](self, "setIsVertical:", [v24 isVertical]);
  }

  -[UIKBTextStyle setIgnoreTextMarginOnKey:](self, "setIgnoreTextMarginOnKey:", [v24 ignoreTextMarginOnKey]);
  if ([v24 needsFontCase])
  {
    -[UIKBTextStyle setNeedsFontCase:](self, "setNeedsFontCase:", [v24 needsFontCase]);
  }

  if ([v24 symbolScale])
  {
    -[UIKBTextStyle setSymbolScale:](self, "setSymbolScale:", [v24 symbolScale]);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIKBTextStyle allocWithZone:?]];
  v5 = [(NSString *)self->_fontName copy];
  fontName = v4->_fontName;
  v4->_fontName = v5;

  v4->_fontSize = self->_fontSize;
  v4->_fontSizeForSymbolImage = self->_fontSizeForSymbolImage;
  v4->_minFontSize = self->_minFontSize;
  v4->_kerning = self->_kerning;
  v4->_textOpacity = self->_textOpacity;
  v7 = [(NSString *)self->_textColor copy];
  textColor = v4->_textColor;
  v4->_textColor = v7;

  v9 = [(NSString *)self->_etchColor copy];
  etchColor = v4->_etchColor;
  v4->_etchColor = v9;

  v4->_alignment = self->_alignment;
  v4->_textOffset = self->_textOffset;
  v4->_etchOffset = self->_etchOffset;
  v4->_pathWeight = self->_pathWeight;
  v4->_fontWeight = self->_fontWeight;
  v4->_fontWeightForSymbolImage = self->_fontWeightForSymbolImage;
  v4->_fontWidth = self->_fontWidth;
  v4->_fontGrade = self->_fontGrade;
  v4->_anchorCorner = self->_anchorCorner;
  v4->_selector = self->_selector;
  v4->_usesSymbolImage = self->_usesSymbolImage;
  v4->_needsFontCase = self->_needsFontCase;
  v4->_isVertical = self->_isVertical;
  v4->_symbolScale = self->_symbolScale;
  return v4;
}

- (CGPoint)etchOffset
{
  x = self->_etchOffset.x;
  y = self->_etchOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end