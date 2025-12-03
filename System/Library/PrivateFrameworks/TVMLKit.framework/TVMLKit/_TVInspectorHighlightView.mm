@interface _TVInspectorHighlightView
- (UIWindow)targetWindow;
- (_TVInspectorHighlightView)initWithFrame:(CGRect)frame;
- (void)highlightView:(id)view;
- (void)layoutSubviews;
- (void)setBorderColor:(id)color;
@end

@implementation _TVInspectorHighlightView

- (_TVInspectorHighlightView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v21.receiver = self;
  v21.super_class = _TVInspectorHighlightView;
  v5 = [(_TVInspectorHighlightView *)&v21 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height}];
    highlightView = v5->_highlightView;
    v5->_highlightView = v7;

    [(UIView *)v5->_highlightView setAlpha:0.5];
    v9 = v5->_highlightView;
    greenColor = [MEMORY[0x277D75348] greenColor];
    [(UIView *)v9 setBackgroundColor:greenColor];

    [(_TVInspectorHighlightView *)v5 addSubview:v5->_highlightView];
    [(_TVInspectorHighlightView *)v5 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_TVInspectorHighlightView *)v5 setBackgroundColor:clearColor];

    [(_TVInspectorHighlightView *)v5 setOpaque:0];
    [(_TVInspectorHighlightView *)v5 setAlpha:1.0];
    v12 = [_TVInspectorHighlightMetadataView alloc];
    v13 = [(_TVInspectorHighlightMetadataView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    metadataView = v5->_metadataView;
    v5->_metadataView = v13;

    v15 = v5->_metadataView;
    v16 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.980392157 blue:0.803921569 alpha:1.0];
    [(_TVInspectorHighlightMetadataView *)v15 setBackgroundColor:v16];

    layer = [(_TVInspectorHighlightMetadataView *)v5->_metadataView layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setBorderColor:{objc_msgSend(blackColor, "CGColor")}];

    layer2 = [(_TVInspectorHighlightMetadataView *)v5->_metadataView layer];
    [layer2 setBorderWidth:1.0];

    [(_TVInspectorHighlightView *)v5 addSubview:v5->_metadataView];
  }

  return v5;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (self->_borderColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_borderColor, color);
    layer = [(UIView *)self->_highlightView layer];
    [layer setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];

    layer2 = [(UIView *)self->_highlightView layer];
    [layer2 setBorderWidth:1.0];

    colorCopy = v8;
  }
}

- (void)highlightView:(id)view
{
  viewCopy = view;
  [(_TVInspectorHighlightView *)self removeFromSuperview];
  v4 = viewCopy;
  if (viewCopy)
  {
    window = [(_TVInspectorHighlightView *)self window];
    v6 = window;
    if (window)
    {
      window2 = window;
    }

    else
    {
      window2 = [viewCopy window];
    }

    v8 = window2;

    superview = [viewCopy superview];
    [viewCopy frame];
    [superview convertRect:v8 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v8 addSubview:self];
    [v8 bringSubviewToFront:self];
    [(_TVInspectorHighlightView *)self setFrame:v11, v13, v15, v17];
    [(_TVInspectorHighlightView *)self setNeedsLayout];

    v4 = viewCopy;
  }
}

- (void)layoutSubviews
{
  v87.receiver = self;
  v87.super_class = _TVInspectorHighlightView;
  [(_TVInspectorHighlightView *)&v87 layoutSubviews];
  [(_TVInspectorHighlightView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  highlightView = self->_highlightView;
  [(_TVInspectorHighlightView *)self bounds];
  [(UIView *)highlightView setFrame:?];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g x %g", *&v8, *&v10];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12];
  v14 = *MEMORY[0x277D740A8];
  v15 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:15.0 weight:0.0];
  [v13 addAttribute:v14 value:v15 range:{0, objc_msgSend(v12, "length")}];

  v16 = *MEMORY[0x277D740C0];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [v13 addAttribute:v16 value:lightGrayColor range:{0, objc_msgSend(v12, "length")}];

  blackColor = [MEMORY[0x277D75348] blackColor];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g ", *&v8];
  v20 = [v12 rangeOfString:v19];
  [v13 addAttribute:v16 value:blackColor range:{v20, v21}];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@" %g", *&v10];
  v24 = [v12 rangeOfString:v23];
  [v13 addAttribute:v16 value:blackColor2 range:{v24, v25}];

  frameLabel = [(_TVInspectorHighlightMetadataView *)self->_metadataView frameLabel];
  [frameLabel setAttributedText:v13];

  v82 = 20.0;
  [(_TVInspectorHighlightMetadataView *)self->_metadataView sizeThatFits:1.79769313e308];
  v28 = v27;
  v88.origin.x = v4;
  v88.origin.y = v6;
  v88.size.width = v8;
  v88.size.height = v10;
  v29 = CGRectGetHeight(v88) + 5.0;
  superview = [(_TVInspectorHighlightView *)self superview];
  [superview bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  superview2 = [(_TVInspectorHighlightView *)self superview];
  v83 = v29;
  v84 = v28;
  [(_TVInspectorHighlightView *)self convertRect:superview2 toView:0.0, v29, v28, 20.0];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v89.origin.x = v41;
  rect = v43;
  v89.origin.y = v43;
  v48 = v45;
  v89.size.width = v45;
  v89.size.height = v47;
  v49 = CGRectGetMaxX(v89) + 5.0;
  v90.origin.x = v32;
  v90.origin.y = v34;
  v90.size.width = v36;
  v90.size.height = v38;
  v80 = v36;
  v81 = v32;
  if (v49 <= CGRectGetWidth(v90))
  {
    v53 = v34;
    v54 = v38;
    v56 = v48;
    v57 = rect;
    v55 = 0.0;
  }

  else
  {
    v91.origin.x = v41;
    v91.origin.y = rect;
    v78 = v48;
    v91.size.width = v48;
    v91.size.height = v47;
    Width = CGRectGetWidth(v91);
    v92.origin.x = v32;
    v92.origin.y = v34;
    v92.size.width = v36;
    v92.size.height = v38;
    v51 = CGRectGetWidth(v92);
    v93.origin.x = v32;
    v93.origin.y = v34;
    v93.size.width = v36;
    v93.size.height = v38;
    v52 = CGRectGetWidth(v93);
    v53 = v34;
    v54 = v38;
    if (Width <= v51)
    {
      v58 = v52 + -5.0;
      v94.origin.x = v41;
      v94.origin.y = rect;
      v56 = v78;
      v94.size.width = v78;
      v94.size.height = v47;
      v41 = v58 - CGRectGetWidth(v94);
      superview3 = [(_TVInspectorHighlightView *)self superview];
      [superview3 convertRect:self toView:{v41, rect, v78, v47}];
      v55 = v60;
      v83 = v61;
      v84 = v62;
      v82 = v63;
    }

    else
    {
      v84 = v52;
      v55 = 0.0;
      v56 = v78;
    }

    v57 = rect;
  }

  v95.origin.x = v41;
  v95.origin.y = v57;
  v95.size.width = v56;
  v95.size.height = v47;
  v64 = CGRectGetMaxY(v95) + 5.0;
  v96.size.width = v80;
  v96.origin.x = v81;
  v96.origin.y = v53;
  v96.size.height = v54;
  if (v64 <= CGRectGetHeight(v96))
  {
    v68 = v55;
    v69 = v82;
    v70 = v83;
    v67 = v84;
  }

  else
  {
    recta = v57;
    v79 = v41;
    v65 = v53;
    [(_TVInspectorHighlightView *)self frame];
    MinY = CGRectGetMinY(v97);
    v98.origin.x = v55;
    v98.origin.y = v83;
    v67 = v84;
    v98.size.width = v84;
    v68 = v55;
    v69 = v82;
    v98.size.height = v82;
    if (MinY - CGRectGetHeight(v98) + -5.0 + -5.0 <= 0.0)
    {
      v100.size.width = v80;
      v100.origin.x = v81;
      v100.origin.y = v65;
      v100.size.height = v54;
      Height = CGRectGetHeight(v100);
      v101.origin.x = v79;
      v101.origin.y = recta;
      v101.size.width = v56;
      v101.size.height = v47;
      v72 = Height - CGRectGetHeight(v101) + -5.0;
      superview4 = [(_TVInspectorHighlightView *)self superview];
      [superview4 convertRect:self toView:{v79, v72, v56, v47}];
      v68 = v74;
      v70 = v75;
      v67 = v76;
      v69 = v77;
    }

    else
    {
      v99.origin.x = v68;
      v99.origin.y = v83;
      v99.size.width = v84;
      v99.size.height = v82;
      v70 = -5.0 - CGRectGetHeight(v99);
    }
  }

  [(_TVInspectorHighlightMetadataView *)self->_metadataView setFrame:v68, v70, v67, v69];
  [(_TVInspectorHighlightMetadataView *)self->_metadataView setNeedsLayout];
}

- (UIWindow)targetWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_targetWindow);

  return WeakRetained;
}

@end