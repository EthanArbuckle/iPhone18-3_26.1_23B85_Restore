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
- (TVViewElementStyle)initWithStyle:(id)style;
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
- (id)cssValueForStyleProperty:(id)property;
- (id)valueForStyleProperty:(id)property;
- (int64_t)alignment;
- (int64_t)contentAlignment;
- (int64_t)position;
- (int64_t)textAlignment;
- (unint64_t)maxTextLines;
- (void)setStyleMetrics:(id)metrics;
@end

@implementation TVViewElementStyle

- (TVViewElementStyle)initWithStyle:(id)style
{
  styleCopy = style;
  v8.receiver = self;
  v8.super_class = TVViewElementStyle;
  v5 = [(TVViewElementStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_style, styleCopy);
  }

  return v6;
}

- (TVAppStyle)styleMetrics
{
  style = [(TVViewElementStyle *)self style];
  tv_styleMetrics = [style tv_styleMetrics];

  return tv_styleMetrics;
}

- (void)setStyleMetrics:(id)metrics
{
  metricsCopy = metrics;
  style = [(TVViewElementStyle *)self style];
  [style tv_setStyleMetrics:metricsCopy];
}

- (id)cssValueForStyleProperty:(id)property
{
  propertyCopy = property;
  style = [(TVViewElementStyle *)self style];
  v6 = [style tv_cssValueForStyle:propertyCopy];

  return v6;
}

- (id)valueForStyleProperty:(id)property
{
  propertyCopy = property;
  style = [(TVViewElementStyle *)self style];
  v6 = [style tv_valueForStyle:propertyCopy];

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

    v10 = [(NSMutableDictionary *)cachedColorObjects objectForKeyedSubscript:propertyCopy];
    v11 = v10;
    if (!v10 || ([(TVColor *)v10 ikColor], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v6))
    {
      v13 = [[TVColor alloc] initWithColor:v6];

      [(NSMutableDictionary *)self->_cachedColorObjects setObject:v13 forKeyedSubscript:propertyCopy];
      v11 = v13;
    }

    v6 = v11;
  }

  return v6;
}

- (NSString)textTransform
{
  style = [(TVViewElementStyle *)self style];
  tv_textTransform = [style tv_textTransform];

  return tv_textTransform;
}

- (double)fontSize
{
  style = [(TVViewElementStyle *)self style];
  [style tv_fontSize];
  v4 = v3;

  return v4;
}

- (NSString)fontWeight
{
  style = [(TVViewElementStyle *)self style];
  tv_fontWeight = [style tv_fontWeight];

  return tv_fontWeight;
}

- (double)height
{
  style = [(TVViewElementStyle *)self style];
  [style tv_height];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)margin
{
  style = [(TVViewElementStyle *)self style];
  [style tv_margin];
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
  style = [(TVViewElementStyle *)self style];
  [style tv_focusMargin];
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
  style = [(TVViewElementStyle *)self style];
  [style tv_maxHeight];
  v4 = v3;

  return v4;
}

- (double)maxWidth
{
  style = [(TVViewElementStyle *)self style];
  [style tv_maxWidth];
  v4 = v3;

  return v4;
}

- (double)minHeight
{
  style = [(TVViewElementStyle *)self style];
  [style tv_minHeight];
  v4 = v3;

  return v4;
}

- (double)minWidth
{
  style = [(TVViewElementStyle *)self style];
  [style tv_minWidth];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)padding
{
  style = [(TVViewElementStyle *)self style];
  [style tv_padding];
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
  style = [(TVViewElementStyle *)self style];
  tv_textAlignment = [style tv_textAlignment];

  return tv_textAlignment;
}

- (double)width
{
  style = [(TVViewElementStyle *)self style];
  [style tv_width];
  v4 = v3;

  return v4;
}

- (NSShadow)shadow
{
  style = [(TVViewElementStyle *)self style];
  tv_shadow = [style tv_shadow];

  return tv_shadow;
}

- (int64_t)alignment
{
  style = [(TVViewElementStyle *)self style];
  tv_alignment = [style tv_alignment];

  return tv_alignment;
}

- (int64_t)contentAlignment
{
  style = [(TVViewElementStyle *)self style];
  tv_contentAlignment = [style tv_contentAlignment];

  return tv_contentAlignment;
}

- (NSString)imageTreatmentName
{
  style = [(TVViewElementStyle *)self style];
  tv_imageTreatment = [style tv_imageTreatment];

  return tv_imageTreatment;
}

- (double)interitemSpacing
{
  style = [(TVViewElementStyle *)self style];
  [style tv_interitemSpacing];
  v4 = v3;

  return v4;
}

- (NSString)textHighlightStyle
{
  style = [(TVViewElementStyle *)self style];
  tv_textHighlightStyle = [style tv_textHighlightStyle];

  return tv_textHighlightStyle;
}

- (double)textMinimumScaleFactor
{
  style = [(TVViewElementStyle *)self style];
  [style tv_minimumScaleFactor];
  v4 = v3;

  return v4;
}

- (int64_t)position
{
  style = [(TVViewElementStyle *)self style];
  tv_position = [style tv_position];

  return tv_position;
}

- (NSString)ratingStyle
{
  style = [(TVViewElementStyle *)self style];
  tv_ratingStyle = [style tv_ratingStyle];

  return tv_ratingStyle;
}

- (unint64_t)maxTextLines
{
  style = [(TVViewElementStyle *)self style];
  tv_maxTextLines = [style tv_maxTextLines];

  return tv_maxTextLines;
}

- (NSString)textStyle
{
  style = [(TVViewElementStyle *)self style];
  tv_textStyle = [style tv_textStyle];

  return tv_textStyle;
}

- (IKViewElementStyle)style
{
  WeakRetained = objc_loadWeakRetained(&self->_style);

  return WeakRetained;
}

@end