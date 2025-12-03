@interface _TVZoomableTextView
- (CGSize)cachedSizeThatFits;
- (CGSize)previousTargetSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVZoomableTextView)initWithFrame:(CGRect)frame;
- (void)_clearCachedValues;
- (void)dealloc;
- (void)updateWithViewElement:(id)element;
@end

@implementation _TVZoomableTextView

- (_TVZoomableTextView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v13.receiver = self;
  v13.super_class = _TVZoomableTextView;
  v5 = [(TVFocusableTextView *)&v13 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = v5;
  if (v5)
  {
    *(v5 + 79) = width;
    *(v5 + 80) = height;
    *(v5 + 648) = *MEMORY[0x277CBF3A8];
    objc_initWeak(&location, v5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37___TVZoomableTextView_initWithFrame___block_invoke;
    v10[3] = &unk_279D6F428;
    objc_copyWeak(&v11, &location);
    [(TVFocusableTextView *)v6 setSelectionHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37___TVZoomableTextView_initWithFrame___block_invoke_2;
    v8[3] = &unk_279D6F428;
    objc_copyWeak(&v9, &location);
    [(TVFocusableTextView *)v6 setPlayHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVZoomableTextView;
  [(_TVZoomableTextView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  maxWidth = self->_maxWidth;
  v5 = fmin(fits.width, maxWidth);
  if (maxWidth <= 0.0)
  {
    width = fits.width;
  }

  else
  {
    width = v5;
  }

  maxHeight = self->_maxHeight;
  v8 = fmin(fits.height, maxHeight);
  if (maxHeight <= 0.0)
  {
    height = fits.height;
  }

  else
  {
    height = v8;
  }

  [(_TVZoomableTextView *)self cachedSizeThatFits];
  v11 = v10;
  v13 = v12;
  [(_TVZoomableTextView *)self previousTargetSize];
  if ([(UIView *)self tv_shouldReuseCachedSizeThatFits:v11 previousTargetSize:v13 newTargetSize:v14, v15, width, height])
  {
    v18.receiver = self;
    v18.super_class = _TVZoomableTextView;
    [(TVFocusableTextView *)&v18 sizeThatFits:width, height];
    [(_TVZoomableTextView *)self setCachedSizeThatFits:?];
    [(_TVZoomableTextView *)self setPreviousTargetSize:width, height];
  }

  [(_TVZoomableTextView *)self cachedSizeThatFits];
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)updateWithViewElement:(id)element
{
  elementCopy = element;
  viewElement = self->_viewElement;
  v53 = elementCopy;
  if (viewElement != elementCopy || [(IKViewElement *)viewElement updateType])
  {
    objc_storeStrong(&self->_viewElement, element);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v53;
    if (isKindOfClass)
    {
      style = [(IKViewElement *)v53 style];
      -[TVFocusableTextView setDescriptionTextAlignment:](self, "setDescriptionTextAlignment:", [style tv_textAlignment]);

      style2 = [(IKViewElement *)v53 style];
      tv_tintColor = [style2 tv_tintColor];
      color = [tv_tintColor color];

      if (color)
      {
        [(TVFocusableTextView *)self setMoreLabelTextColor:color];
      }

      v13 = v53;
      tv_attributedString = [(IKViewElement *)v13 tv_attributedString];
      [(TVFocusableTextView *)self setDescriptionText:tv_attributedString];
      style3 = [(IKViewElement *)v13 style];
      tv_backgroundHighlightStyle = [style3 tv_backgroundHighlightStyle];

      if (tv_backgroundHighlightStyle)
      {
        v17 = tv_backgroundHighlightStyle;
      }

      else
      {
        v17 = @"show-on-highlight";
      }

      [(TVFocusableTextView *)self setAlwaysShowBackground:[(__CFString *)v17 isEqualToString:@"always"]];
      style4 = [(IKViewElement *)v13 style];
      tv_highlightColor = [style4 tv_highlightColor];
      color2 = [tv_highlightColor color];

      if (color2)
      {
        style5 = [(IKViewElement *)v13 style];
        tv_color = [style5 tv_color];
        color3 = [tv_color color];
        [(TVFocusableTextView *)self setDescriptionTextColor:color3];

        selfCopy2 = self;
        v25 = color2;
      }

      else
      {
        selfCopy2 = self;
        v25 = 0;
      }

      [(TVFocusableTextView *)selfCopy2 setDescriptionTextHighlightColor:v25];
      style6 = [(IKViewElement *)v13 style];
      tv_backgroundHighlightColor = [style6 tv_backgroundHighlightColor];
      color4 = [tv_backgroundHighlightColor color];

      if (color4)
      {
        [(TVFocusableTextView *)self setHighlightBackgroundColor:color4];
      }

      style7 = [(IKViewElement *)v13 style];
      tv_backgroundColor = [style7 tv_backgroundColor];
      color5 = [tv_backgroundColor color];

      if (color5)
      {
        [(TVFocusableTextView *)self setBackgroundColor:color5];
      }

      v8 = v53;
    }

    style8 = [(IKViewElement *)v8 style];
    -[TVFocusableTextView setMaximumNumberOfLines:](self, "setMaximumNumberOfLines:", [style8 tv_maxTextLines]);

    style9 = [(IKViewElement *)v53 style];
    [style9 tv_maxWidth];
    self->_maxWidth = v34;

    style10 = [(IKViewElement *)v53 style];
    [style10 tv_maxHeight];
    self->_maxHeight = v36;

    appDocument = [(IKViewElement *)v53 appDocument];
    templateElement = [appDocument templateElement];
    tv_elementType = [templateElement tv_elementType];

    if (tv_elementType == 69)
    {
      parent = [(IKViewElement *)v53 parent];
      if (parent)
      {
        v41 = parent;
        while ([v41 tv_elementType] != 38)
        {
          parent2 = [v41 parent];

          v41 = parent2;
          if (!parent2)
          {
            goto LABEL_24;
          }
        }

        [(TVFocusableTextView *)self setMoreLabelOnNewLine:1];
      }
    }

LABEL_24:
    [(_TVZoomableTextView *)self frame];
    v44 = v43;
    v46 = v45;
    style11 = [(IKViewElement *)v53 style];
    [style11 tv_height];
    v49 = v48;

    style12 = [(IKViewElement *)v53 style];
    [style12 tv_width];
    v52 = v51;

    [(TVFocusableTextView *)self setFrame:v44, v46, v52, v49];
    [(_TVZoomableTextView *)self _clearCachedValues];
  }
}

- (void)_clearCachedValues
{
  v2 = *MEMORY[0x277CBF3A8];
  self->_cachedSizeThatFits = *MEMORY[0x277CBF3A8];
  self->_previousTargetSize = v2;
}

- (CGSize)cachedSizeThatFits
{
  width = self->_cachedSizeThatFits.width;
  height = self->_cachedSizeThatFits.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)previousTargetSize
{
  width = self->_previousTargetSize.width;
  height = self->_previousTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end