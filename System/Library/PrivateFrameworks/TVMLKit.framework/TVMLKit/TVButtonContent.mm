@interface TVButtonContent
- (CGSize)sizeThatFits:(CGSize)fits;
- (TVButtonContent)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled;
- (double)_imageMarginFromText;
- (void)_setFocused:(BOOL)focused animationCoordinator:(id)coordinator;
- (void)_updateBackgroundColorForState:(unint64_t)state;
- (void)_updateFloaingViewFocusState:(BOOL)state coordinator:(id)coordinator;
- (void)_updateFocusStateWithCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setCornerRadius:(double)radius;
- (void)setFocusSizeIncrease:(double)increase;
- (void)setHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageView:(id)view;
- (void)setTextContentView:(id)view;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TVButtonContent

- (TVButtonContent)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled
{
  v10.receiver = self;
  v10.super_class = TVButtonContent;
  v7 = [(_UIFloatingContentView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_focused = 0;
    v7->_backdropStyle = style;
    v7->_blurEnabled = enabled;
    [(TVButtonContent *)v7 setUserInteractionEnabled:0];
  }

  return v8;
}

- (void)setFocusSizeIncrease:(double)increase
{
  if (self->_focusSizeIncrease != increase)
  {
    self->_focusSizeIncrease = increase;
    if (+[TVMLUtilities _isSolariumMetricsEnabled])
    {

      [(_UIFloatingContentView *)self setAsymmetricFocusedSizeIncrease:increase, increase];
    }

    else
    {

      [(_UIFloatingContentView *)self setFocusedSizeIncrease:increase];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = TVButtonContent;
  colorCopy = color;
  [(TVButtonContent *)&v7 setBackgroundColor:colorCopy];
  v5 = [colorCopy copy];

  backgroundColor = self->__backgroundColor;
  self->__backgroundColor = v5;
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_highlightColor, color);
    colorCopy = v6;
  }
}

- (void)_updateBackgroundColorForState:(unint64_t)state
{
  v3 = &OBJC_IVAR___TVButtonContent__highlightColor;
  if ((state & 0xD) == 0)
  {
    v3 = &OBJC_IVAR___TVButtonContent___backgroundColor;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);
  v5.receiver = self;
  v5.super_class = TVButtonContent;
  [(TVButtonContent *)&v5 setBackgroundColor:v4];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    layer = [(TVButtonContent *)self layer];
    [layer setCornerRadius:radius];

    [(TVButtonContent *)self setNeedsLayout];
  }
}

- (void)setTextContentView:(id)view
{
  viewCopy = view;
  textContentView = self->_textContentView;
  v7 = viewCopy;
  if (textContentView != viewCopy)
  {
    [(UILabel *)textContentView removeFromSuperview];
    objc_storeStrong(&self->_textContentView, view);
    if (self->_textContentView)
    {
      [(TVButtonContent *)self addSubview:?];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  v7 = viewCopy;
  if (imageView != viewCopy)
  {
    [(_TVImageView *)imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    if (self->_imageView)
    {
      [(TVButtonContent *)self addSubview:?];
      [(_TVImageView *)self->_imageView setUserInteractionEnabled:0];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  v7 = viewCopy;
  if (accessoryView != viewCopy)
  {
    [(_TVImageView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    if (self->_accessoryView)
    {
      [(TVButtonContent *)self addSubview:?];
      [(_TVImageView *)v7 setUserInteractionEnabled:0];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self tv_itemWidth:fits.width];
  v56 = v4;
  [(UIView *)self tv_itemHeight];
  v55 = v5;
  [(UIView *)self tv_minWidth];
  v54 = v6;
  [(UIView *)self tv_minHeight];
  v53 = v7;
  [(UIView *)self tv_maxWidth];
  v9 = v8;
  [(UIView *)self tv_maxHeight];
  v11 = v10;
  [(UIView *)self tv_padding];
  v51 = v13;
  v52 = v12;
  v15 = v14;
  v50 = v16;
  accessoryView = [(TVButtonContent *)self accessoryView];
  [accessoryView tv_margin];
  v47 = v19;
  v48 = v18;

  imageView = [(TVButtonContent *)self imageView];
  v21 = *MEMORY[0x277CBF3A8];
  v22 = *(MEMORY[0x277CBF3A8] + 8);
  [imageView sizeThatFits:{*MEMORY[0x277CBF3A8], v22}];
  v49 = v23;

  [(TVButtonContent *)self _imageMarginFromText];
  v25 = v24;
  textContentView = [(TVButtonContent *)self textContentView];
  [textContentView sizeThatFits:{v21, v22}];
  v28 = v27;
  v30 = v29;

  accessoryView2 = [(TVButtonContent *)self accessoryView];
  [accessoryView2 sizeThatFits:{v21, v22}];
  v33 = v32;

  accessoryView3 = [(TVButtonContent *)self accessoryView];

  if (accessoryView3)
  {
    accessoryView4 = [(TVButtonContent *)self accessoryView];
    tv_alignment = [accessoryView4 tv_alignment];

    if (tv_alignment == 1)
    {
      v37 = v15;
    }

    else
    {
      v37 = v50;
    }

    v38 = v49 + v25 + v28 + fmax(v47 + v48 + v33 + v37, fmax(v15, v50)) * 2.0;
  }

  else
  {
    v38 = v50 + v15 + v49 + v25 + v28;
  }

  v39 = v51 + v52 + v30;
  v40 = 20.0;
  if (v53 != 0.0)
  {
    v40 = v53;
  }

  if (v38 <= v9 || v9 <= 0.0)
  {
    v42 = v38;
  }

  else
  {
    v42 = v9;
  }

  if (v38 >= v54)
  {
    v43 = v42;
  }

  else
  {
    v43 = v54;
  }

  if (v39 <= v11 || v11 <= 0.0)
  {
    v45 = v51 + v52 + v30;
  }

  else
  {
    v45 = v11;
  }

  if (v39 >= v40)
  {
    v46 = v45;
  }

  else
  {
    v46 = v40;
  }

  if (v56 > 0.0)
  {
    v43 = v56;
  }

  if (v55 > 0.0)
  {
    v46 = v55;
  }

  result.height = v46;
  result.width = v43;
  return result;
}

- (void)layoutSubviews
{
  v115.receiver = self;
  v115.super_class = TVButtonContent;
  [(_UIFloatingContentView *)&v115 layoutSubviews];
  [(TVButtonContent *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self tv_padding];
  v12 = v11;
  v14 = v13;
  v101 = v10;
  v102 = v6;
  v111 = v10 - (v15 + v16);
  v112 = v6 + v15;
  textContentView = [(TVButtonContent *)self textContentView];
  tv_alignment = [textContentView tv_alignment];

  accessoryView = [(TVButtonContent *)self accessoryView];
  tv_alignment2 = [accessoryView tv_alignment];

  accessoryView2 = [(TVButtonContent *)self accessoryView];

  v22 = MEMORY[0x277CBF3A8];
  v109 = v8;
  if (accessoryView2)
  {
    accessoryView3 = [(TVButtonContent *)self accessoryView];
    [accessoryView3 sizeThatFits:{*v22, v22[1]}];
    v25 = v24;
    v27 = v26;

    accessoryView4 = [(TVButtonContent *)self accessoryView];
    [accessoryView4 tv_margin];
    v30 = v29;
    v32 = v31;

    if (tv_alignment2 == 1)
    {
      v33 = v12 + v30;
    }

    else
    {
      v116.origin.x = v4;
      v116.size.height = v101;
      v116.origin.y = v102;
      v116.size.width = v8;
      v33 = CGRectGetWidth(v116) - v14 - v25 - v32;
    }

    v35 = v32 + v25 + v30;
    v36 = v12 + v35;
    v37 = v14 + v35;
    v38 = tv_alignment & 0xFFFFFFFFFFFFFFFDLL;
    if (tv_alignment2 == 1)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    v40 = fmax(v39, fmax(v12, v14));
    v41 = fmax(v36, v12);
    if (tv_alignment2 != 1)
    {
      v41 = v12;
    }

    v42 = fmax(v37, v14);
    if (tv_alignment2 == 1)
    {
      v42 = v14;
    }

    v43 = v41 + v42;
    if (v38 == 1)
    {
      v12 = v41;
    }

    else
    {
      v12 = v40;
    }

    if (v38 == 1)
    {
      v34 = v43;
    }

    else
    {
      v34 = v40 + v40;
    }

    accessoryView5 = [(TVButtonContent *)self accessoryView];
    [accessoryView5 setFrame:{v33, v112 + floor((v111 - v27) * 0.5), v25, v27}];

    v8 = v109;
  }

  else
  {
    v34 = v12 + v14;
  }

  imageView = [(TVButtonContent *)self imageView];
  v106 = v8 - v34;
  if (imageView)
  {
    textContentView2 = [(TVButtonContent *)self textContentView];
    if (textContentView2)
    {
      v47 = ![(TVButtonContent *)self imageTrailsTextContent];
    }

    else
    {
      v47 = 1;
    }
  }

  else
  {
    v47 = 1;
  }

  v99 = v4;
  v105 = v4 + v12;

  [(TVButtonContent *)self _imageMarginFromText];
  v110 = v48;
  v49 = *MEMORY[0x277CBF3A0];
  v50 = *(MEMORY[0x277CBF3A0] + 8);
  textContentView3 = [(TVButtonContent *)self textContentView];
  [textContentView3 tv_alignmentInsetsForExpectedWidth:0.0];
  v107 = v52;
  v103 = v53;

  imageView2 = [(TVButtonContent *)self imageView];
  v55 = *v22;
  v56 = v22[1];
  [imageView2 sizeThatFits:{*v22, v56}];
  v58 = v57;
  v60 = v59;

  v117.origin.x = v49;
  v117.origin.y = v50;
  v117.size.width = v58;
  v117.size.height = v60;
  v61 = v112 + floor((v111 - CGRectGetHeight(v117)) * 0.5);
  textContentView4 = [(TVButtonContent *)self textContentView];
  [textContentView4 sizeThatFits:{v55, v56}];
  v64 = v63;
  v66 = v65;

  v118.origin.x = v49;
  v118.origin.y = v50;
  v118.size.width = v64;
  v118.size.height = v66;
  Width = CGRectGetWidth(v118);
  v119.origin.x = v49;
  v68 = v61;
  v119.origin.y = v61;
  rect = v58;
  v119.size.width = v58;
  v104 = v60;
  v119.size.height = v60;
  v120.size.width = fmin(Width, v106 - (v110 + CGRectGetWidth(v119)));
  v69 = v49;
  v120.origin.x = v49;
  v120.origin.y = v50;
  v70 = v120.size.width;
  v113 = v66;
  v120.size.height = v66;
  Height = CGRectGetHeight(v120);
  v73 = v111;
  v72 = v112;
  v74 = v112 + floor((v111 - (Height - (v107 + v103))) * 0.5) - v107;
  v108 = v74;
  if (tv_alignment == 3)
  {
    v81 = v105;
    v82 = v106;
    v83 = CGRectGetWidth(*(&v72 - 1));
    v122.origin.x = v69;
    v122.origin.y = v74;
    v122.size.width = v70;
    v122.size.height = v113;
    v84 = v105 + v83 - CGRectGetWidth(v122);
    if (v47)
    {
      x = v84 + 0.0;
      v123.origin.x = v69;
      v77 = v68;
      v123.origin.y = v68;
      v123.size.width = rect;
      v76 = v104;
      v123.size.height = v104;
      v85 = -(v110 + CGRectGetWidth(v123));
    }

    else
    {
      v127.origin.x = v69;
      v77 = v68;
      v127.origin.y = v68;
      v127.size.width = rect;
      v76 = v104;
      v127.size.height = v104;
      v128.origin.x = v84 - (v110 + CGRectGetWidth(v127));
      v128.origin.y = v74;
      x = v128.origin.x;
      v128.size.width = v70;
      v128.size.height = v113;
      v85 = v110 + CGRectGetWidth(v128);
    }

    v80 = x + v85;
  }

  else if (tv_alignment == 1)
  {
    v75 = 0.0;
    v76 = v60;
    v77 = v68;
    if (v47)
    {
      v121.origin.x = v69;
      v121.origin.y = v68;
      v121.size.width = v58;
      v121.size.height = v104;
      v75 = v110 + CGRectGetWidth(v121);
    }

    x = v105 + v75;
    v79 = v110 + v70;
    if (v47)
    {
      v79 = 0.0;
    }

    v80 = v105 + v79;
  }

  else
  {
    v124.origin.x = v69;
    v124.origin.y = v74;
    v124.size.width = v70;
    v124.size.height = v113;
    v86 = CGRectGetWidth(v124);
    v125.origin.x = v69;
    v77 = v68;
    v125.origin.y = v68;
    v125.size.width = rect;
    v76 = v104;
    v125.size.height = v104;
    v87 = v105 + floor((v106 - (v110 + v86 + CGRectGetWidth(v125))) * 0.5);
    if (v47)
    {
      v126.origin.x = v69;
      v126.origin.y = v68;
      v126.size.width = rect;
      v126.size.height = v104;
      x = v87 + v110 + CGRectGetWidth(v126);
      v88 = 0.0;
    }

    else
    {
      v129.origin.x = v87 + 0.0;
      v129.origin.y = v74;
      v129.size.width = v70;
      v129.size.height = v113;
      v88 = v110 + CGRectGetWidth(v129);
      x = v87 + 0.0;
    }

    v80 = v87 + v88;
  }

  if ([(TVButtonContent *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v89 = _TVMLRectWithFlippedOriginRelativeToBoundingRect(x, v108, v70, v113, v100, v102, v109, v101);
    v91 = v90;
    v113 = v92;
    v70 = v93;
    x = v89;
    v80 = _TVMLRectWithFlippedOriginRelativeToBoundingRect(v80, v77, rect, v76, v100, v102, v109, v101);
    v77 = v94;
    rect = v95;
    v76 = v96;
  }

  else
  {
    v91 = v108;
  }

  textContentView5 = [(TVButtonContent *)self textContentView];
  [textContentView5 setFrame:{x, v91, v70, v113}];

  imageView3 = [(TVButtonContent *)self imageView];
  [imageView3 setFrame:{v80, v77, rect, v76}];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    traitCollection = [(TVButtonContent *)self traitCollection];
    if ([traitCollection userInterfaceStyle])
    {
      [changeCopy userInterfaceStyle];
      traitCollection2 = [(TVButtonContent *)self traitCollection];
      [traitCollection2 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButtonContent;
  [(_UIFloatingContentView *)&v7 traitCollectionDidChange:changeCopy];
}

- (double)_imageMarginFromText
{
  imageView = [(TVButtonContent *)self imageView];
  v4 = 0.0;
  if (imageView)
  {
    v5 = imageView;
    textContentView = [(TVButtonContent *)self textContentView];

    if (textContentView)
    {
      imageTrailsTextContent = [(TVButtonContent *)self imageTrailsTextContent];
      imageView2 = [(TVButtonContent *)self imageView];
      [imageView2 tv_margin];
      v10 = v9;
      v12 = v11;

      textContentView2 = [(TVButtonContent *)self textContentView];
      [textContentView2 tv_margin];
      v15 = v14;
      v17 = v16;

      v18 = fmax(v17, v10);
      v19 = fmax(v12, v15);
      if (imageTrailsTextContent)
      {
        return v18;
      }

      else
      {
        return v19;
      }
    }
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = TVButtonContent;
  [(UIView *)&v5 setHighlighted:?];
  [(TVButtonContent *)self setSelected:highlightedCopy animated:0];
}

- (void)_setFocused:(BOOL)focused animationCoordinator:(id)coordinator
{
  if (self->_focused != focused)
  {
    self->_focused = focused;
    [(TVButtonContent *)self _updateFocusStateWithCoordinator:coordinator];
  }
}

- (void)_updateFloaingViewFocusState:(BOOL)state coordinator:(id)coordinator
{
  if (state)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  [(_UIFloatingContentView *)self setControlState:v4 withAnimationCoordinator:coordinator];
}

- (void)_updateFocusStateWithCoordinator:(id)coordinator
{
  isFocused = [(TVButtonContent *)self isFocused];
  if (isFocused)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  [(TVButtonContent *)self _updateBackgroundColorForState:v6];
  textContentView = [(TVButtonContent *)self textContentView];
  [textContentView setHighlighted:isFocused];

  textContentView2 = [(TVButtonContent *)self textContentView];
  [textContentView2 setMarqueeEnabled:isFocused];

  textContentView3 = [(TVButtonContent *)self textContentView];
  [textContentView3 setMarqueeRunning:isFocused];

  if (isFocused)
  {
    v10 = 0.2;
  }

  else
  {
    textContentView4 = [(TVButtonContent *)self textContentView];
    [textContentView4 setLineBreakMode:4];

    v10 = 1.0;
  }

  imageView = [(TVButtonContent *)self imageView];
  [imageView setSelected:isFocused animated:0];

  accessoryView = [(TVButtonContent *)self accessoryView];
  [accessoryView setSelected:isFocused animated:0];

  v14 = 0.37;
  v15[1] = 3221225472;
  v15[0] = MEMORY[0x277D85DD0];
  v15[2] = __52__TVButtonContent__updateFocusStateWithCoordinator___block_invoke;
  v15[3] = &unk_279D6E8B8;
  if (!coordinator)
  {
    v14 = 0.0;
  }

  v15[4] = self;
  *&v15[5] = v10;
  [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v15 options:0 animations:v14 completion:?];
}

void __52__TVButtonContent__updateFocusStateWithCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textContentView];
  [v2 setAlpha:*(a1 + 40)];

  v3 = [*(a1 + 32) imageView];
  [v3 setAlpha:*(a1 + 40)];

  v4 = [*(a1 + 32) accessoryView];
  [v4 setAlpha:*(a1 + 40)];
}

@end