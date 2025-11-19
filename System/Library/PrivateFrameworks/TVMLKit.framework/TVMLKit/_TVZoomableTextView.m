@interface _TVZoomableTextView
- (CGSize)cachedSizeThatFits;
- (CGSize)previousTargetSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TVZoomableTextView)initWithFrame:(CGRect)a3;
- (void)_clearCachedValues;
- (void)dealloc;
- (void)updateWithViewElement:(id)a3;
@end

@implementation _TVZoomableTextView

- (_TVZoomableTextView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v13.receiver = self;
  v13.super_class = _TVZoomableTextView;
  v5 = [(TVFocusableTextView *)&v13 initWithFrame:a3.origin.x, a3.origin.y];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVZoomableTextView;
  [(_TVZoomableTextView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  maxWidth = self->_maxWidth;
  v5 = fmin(a3.width, maxWidth);
  if (maxWidth <= 0.0)
  {
    width = a3.width;
  }

  else
  {
    width = v5;
  }

  maxHeight = self->_maxHeight;
  v8 = fmin(a3.height, maxHeight);
  if (maxHeight <= 0.0)
  {
    height = a3.height;
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

- (void)updateWithViewElement:(id)a3
{
  v5 = a3;
  viewElement = self->_viewElement;
  v53 = v5;
  if (viewElement != v5 || [(IKViewElement *)viewElement updateType])
  {
    objc_storeStrong(&self->_viewElement, a3);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v53;
    if (isKindOfClass)
    {
      v9 = [(IKViewElement *)v53 style];
      -[TVFocusableTextView setDescriptionTextAlignment:](self, "setDescriptionTextAlignment:", [v9 tv_textAlignment]);

      v10 = [(IKViewElement *)v53 style];
      v11 = [v10 tv_tintColor];
      v12 = [v11 color];

      if (v12)
      {
        [(TVFocusableTextView *)self setMoreLabelTextColor:v12];
      }

      v13 = v53;
      v14 = [(IKViewElement *)v13 tv_attributedString];
      [(TVFocusableTextView *)self setDescriptionText:v14];
      v15 = [(IKViewElement *)v13 style];
      v16 = [v15 tv_backgroundHighlightStyle];

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = @"show-on-highlight";
      }

      [(TVFocusableTextView *)self setAlwaysShowBackground:[(__CFString *)v17 isEqualToString:@"always"]];
      v18 = [(IKViewElement *)v13 style];
      v19 = [v18 tv_highlightColor];
      v20 = [v19 color];

      if (v20)
      {
        v21 = [(IKViewElement *)v13 style];
        v22 = [v21 tv_color];
        v23 = [v22 color];
        [(TVFocusableTextView *)self setDescriptionTextColor:v23];

        v24 = self;
        v25 = v20;
      }

      else
      {
        v24 = self;
        v25 = 0;
      }

      [(TVFocusableTextView *)v24 setDescriptionTextHighlightColor:v25];
      v26 = [(IKViewElement *)v13 style];
      v27 = [v26 tv_backgroundHighlightColor];
      v28 = [v27 color];

      if (v28)
      {
        [(TVFocusableTextView *)self setHighlightBackgroundColor:v28];
      }

      v29 = [(IKViewElement *)v13 style];
      v30 = [v29 tv_backgroundColor];
      v31 = [v30 color];

      if (v31)
      {
        [(TVFocusableTextView *)self setBackgroundColor:v31];
      }

      v8 = v53;
    }

    v32 = [(IKViewElement *)v8 style];
    -[TVFocusableTextView setMaximumNumberOfLines:](self, "setMaximumNumberOfLines:", [v32 tv_maxTextLines]);

    v33 = [(IKViewElement *)v53 style];
    [v33 tv_maxWidth];
    self->_maxWidth = v34;

    v35 = [(IKViewElement *)v53 style];
    [v35 tv_maxHeight];
    self->_maxHeight = v36;

    v37 = [(IKViewElement *)v53 appDocument];
    v38 = [v37 templateElement];
    v39 = [v38 tv_elementType];

    if (v39 == 69)
    {
      v40 = [(IKViewElement *)v53 parent];
      if (v40)
      {
        v41 = v40;
        while ([v41 tv_elementType] != 38)
        {
          v42 = [v41 parent];

          v41 = v42;
          if (!v42)
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
    v47 = [(IKViewElement *)v53 style];
    [v47 tv_height];
    v49 = v48;

    v50 = [(IKViewElement *)v53 style];
    [v50 tv_width];
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