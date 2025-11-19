@interface TVViewElementStyle
- (IKViewElementStyle)style;
- (NSShadow)shadow;
- (NSString)fontWeight;
- (NSString)imageTreatmentName;
- (NSString)ratingStyle;
- (NSString)textHighlightStyle;
- (NSString)textStyle;
- (NSString)textTransform;
- (TVAppStyle)styleMetrics;
- (TVViewElementStyle)initWithStyle:(id)a3;
- (UIEdgeInsets)focusMargin;
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
- (double)fontSize;
- (double)height;
- (double)interitemSpacing;
- (double)maxHeight;
- (double)maxWidth;
- (double)minHeight;
- (double)minWidth;
- (double)textMinimumScaleFactor;
- (double)width;
- (id)cssValueForStyleProperty:(id)a3;
- (id)valueForStyleProperty:(id)a3;
- (int64_t)alignment;
- (int64_t)contentAlignment;
- (int64_t)position;
- (int64_t)textAlignment;
- (unint64_t)maxTextLines;
- (void)setStyleMetrics:(id)a3;
@end

@implementation TVViewElementStyle

- (TVViewElementStyle)initWithStyle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TVViewElementStyle;
  v5 = [(TVViewElementStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_style, v4);
  }

  return v6;
}

- (TVAppStyle)styleMetrics
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_styleMetrics];

  return v3;
}

- (void)setStyleMetrics:(id)a3
{
  v4 = a3;
  v5 = [(TVViewElementStyle *)self style];
  [v5 tv_setStyleMetrics:v4];
}

- (id)cssValueForStyleProperty:(id)a3
{
  v4 = a3;
  v5 = [(TVViewElementStyle *)self style];
  v6 = [v5 tv_cssValueForStyle:v4];

  return v6;
}

- (id)valueForStyleProperty:(id)a3
{
  v4 = a3;
  v5 = [(TVViewElementStyle *)self style];
  v6 = [v5 tv_valueForStyle:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cachedColorObjects = self->_cachedColorObjects;
    if (!cachedColorObjects)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
      v9 = self->_cachedColorObjects;
      self->_cachedColorObjects = v8;

      cachedColorObjects = self->_cachedColorObjects;
    }

    v10 = [(NSMutableDictionary *)cachedColorObjects objectForKeyedSubscript:v4];
    v11 = v10;
    if (!v10 || ([(TVColor *)v10 ikColor], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v6))
    {
      v13 = [[TVColor alloc] initWithColor:v6];

      [(NSMutableDictionary *)self->_cachedColorObjects setObject:v13 forKeyedSubscript:v4];
      v11 = v13;
    }

    v6 = v11;
  }

  return v6;
}

- (NSString)textTransform
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_textTransform];

  return v3;
}

- (double)fontSize
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_fontSize];
  v4 = v3;

  return v4;
}

- (NSString)fontWeight
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_fontWeight];

  return v3;
}

- (double)height
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_height];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)margin
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_margin];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)focusMargin
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_focusMargin];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)maxHeight
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_maxHeight];
  v4 = v3;

  return v4;
}

- (double)maxWidth
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_maxWidth];
  v4 = v3;

  return v4;
}

- (double)minHeight
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_minHeight];
  v4 = v3;

  return v4;
}

- (double)minWidth
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_minWidth];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)padding
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)textAlignment
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_textAlignment];

  return v3;
}

- (double)width
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_width];
  v4 = v3;

  return v4;
}

- (NSShadow)shadow
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_shadow];

  return v3;
}

- (int64_t)alignment
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_alignment];

  return v3;
}

- (int64_t)contentAlignment
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_contentAlignment];

  return v3;
}

- (NSString)imageTreatmentName
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_imageTreatment];

  return v3;
}

- (double)interitemSpacing
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_interitemSpacing];
  v4 = v3;

  return v4;
}

- (NSString)textHighlightStyle
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_textHighlightStyle];

  return v3;
}

- (double)textMinimumScaleFactor
{
  v2 = [(TVViewElementStyle *)self style];
  [v2 tv_minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (int64_t)position
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_position];

  return v3;
}

- (NSString)ratingStyle
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_ratingStyle];

  return v3;
}

- (unint64_t)maxTextLines
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_maxTextLines];

  return v3;
}

- (NSString)textStyle
{
  v2 = [(TVViewElementStyle *)self style];
  v3 = [v2 tv_textStyle];

  return v3;
}

- (IKViewElementStyle)style
{
  WeakRetained = objc_loadWeakRetained(&self->_style);

  return WeakRetained;
}

@end