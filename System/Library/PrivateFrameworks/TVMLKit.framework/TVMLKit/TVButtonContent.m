@interface TVButtonContent
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVButtonContent)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5;
- (double)_imageMarginFromText;
- (void)_setFocused:(BOOL)a3 animationCoordinator:(id)a4;
- (void)_updateBackgroundColorForState:(unint64_t)a3;
- (void)_updateFloaingViewFocusState:(BOOL)a3 coordinator:(id)a4;
- (void)_updateFocusStateWithCoordinator:(id)a3;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setFocusSizeIncrease:(double)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageView:(id)a3;
- (void)setTextContentView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TVButtonContent

- (TVButtonContent)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 blurEnabled:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = TVButtonContent;
  v7 = [(_UIFloatingContentView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_focused = 0;
    v7->_backdropStyle = a4;
    v7->_blurEnabled = a5;
    [(TVButtonContent *)v7 setUserInteractionEnabled:0];
  }

  return v8;
}

- (void)setFocusSizeIncrease:(double)a3
{
  if (self->_focusSizeIncrease != a3)
  {
    self->_focusSizeIncrease = a3;
    if (+[TVMLUtilities _isSolariumMetricsEnabled])
    {

      [(_UIFloatingContentView *)self setAsymmetricFocusedSizeIncrease:a3, a3];
    }

    else
    {

      [(_UIFloatingContentView *)self setFocusedSizeIncrease:a3];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = TVButtonContent;
  v4 = a3;
  [(TVButtonContent *)&v7 setBackgroundColor:v4];
  v5 = [v4 copy];

  backgroundColor = self->__backgroundColor;
  self->__backgroundColor = v5;
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  if (self->_highlightColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightColor, a3);
    v5 = v6;
  }
}

- (void)_updateBackgroundColorForState:(unint64_t)a3
{
  v3 = &OBJC_IVAR___TVButtonContent__highlightColor;
  if ((a3 & 0xD) == 0)
  {
    v3 = &OBJC_IVAR___TVButtonContent___backgroundColor;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);
  v5.receiver = self;
  v5.super_class = TVButtonContent;
  [(TVButtonContent *)&v5 setBackgroundColor:v4];
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    v5 = [(TVButtonContent *)self layer];
    [v5 setCornerRadius:a3];

    [(TVButtonContent *)self setNeedsLayout];
  }
}

- (void)setTextContentView:(id)a3
{
  v5 = a3;
  textContentView = self->_textContentView;
  v7 = v5;
  if (textContentView != v5)
  {
    [(UILabel *)textContentView removeFromSuperview];
    objc_storeStrong(&self->_textContentView, a3);
    if (self->_textContentView)
    {
      [(TVButtonContent *)self addSubview:?];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  imageView = self->_imageView;
  v7 = v5;
  if (imageView != v5)
  {
    [(_TVImageView *)imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, a3);
    if (self->_imageView)
    {
      [(TVButtonContent *)self addSubview:?];
      [(_TVImageView *)self->_imageView setUserInteractionEnabled:0];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  v7 = v5;
  if (accessoryView != v5)
  {
    [(_TVImageView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    if (self->_accessoryView)
    {
      [(TVButtonContent *)self addSubview:?];
      [(_TVImageView *)v7 setUserInteractionEnabled:0];
    }
  }

  [(TVButtonContent *)self _updateFocusStateWithCoordinator:0];
  [(TVButtonContent *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self tv_itemWidth:a3.width];
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
  v17 = [(TVButtonContent *)self accessoryView];
  [v17 tv_margin];
  v47 = v19;
  v48 = v18;

  v20 = [(TVButtonContent *)self imageView];
  v21 = *MEMORY[0x277CBF3A8];
  v22 = *(MEMORY[0x277CBF3A8] + 8);
  [v20 sizeThatFits:{*MEMORY[0x277CBF3A8], v22}];
  v49 = v23;

  [(TVButtonContent *)self _imageMarginFromText];
  v25 = v24;
  v26 = [(TVButtonContent *)self textContentView];
  [v26 sizeThatFits:{v21, v22}];
  v28 = v27;
  v30 = v29;

  v31 = [(TVButtonContent *)self accessoryView];
  [v31 sizeThatFits:{v21, v22}];
  v33 = v32;

  v34 = [(TVButtonContent *)self accessoryView];

  if (v34)
  {
    v35 = [(TVButtonContent *)self accessoryView];
    v36 = [v35 tv_alignment];

    if (v36 == 1)
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
  v17 = [(TVButtonContent *)self textContentView];
  v18 = [v17 tv_alignment];

  v19 = [(TVButtonContent *)self accessoryView];
  v20 = [v19 tv_alignment];

  v21 = [(TVButtonContent *)self accessoryView];

  v22 = MEMORY[0x277CBF3A8];
  v109 = v8;
  if (v21)
  {
    v23 = [(TVButtonContent *)self accessoryView];
    [v23 sizeThatFits:{*v22, v22[1]}];
    v25 = v24;
    v27 = v26;

    v28 = [(TVButtonContent *)self accessoryView];
    [v28 tv_margin];
    v30 = v29;
    v32 = v31;

    if (v20 == 1)
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
    v38 = v18 & 0xFFFFFFFFFFFFFFFDLL;
    if (v20 == 1)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    v40 = fmax(v39, fmax(v12, v14));
    v41 = fmax(v36, v12);
    if (v20 != 1)
    {
      v41 = v12;
    }

    v42 = fmax(v37, v14);
    if (v20 == 1)
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

    v44 = [(TVButtonContent *)self accessoryView];
    [v44 setFrame:{v33, v112 + floor((v111 - v27) * 0.5), v25, v27}];

    v8 = v109;
  }

  else
  {
    v34 = v12 + v14;
  }

  v45 = [(TVButtonContent *)self imageView];
  v106 = v8 - v34;
  if (v45)
  {
    v46 = [(TVButtonContent *)self textContentView];
    if (v46)
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
  v51 = [(TVButtonContent *)self textContentView];
  [v51 tv_alignmentInsetsForExpectedWidth:0.0];
  v107 = v52;
  v103 = v53;

  v54 = [(TVButtonContent *)self imageView];
  v55 = *v22;
  v56 = v22[1];
  [v54 sizeThatFits:{*v22, v56}];
  v58 = v57;
  v60 = v59;

  v117.origin.x = v49;
  v117.origin.y = v50;
  v117.size.width = v58;
  v117.size.height = v60;
  v61 = v112 + floor((v111 - CGRectGetHeight(v117)) * 0.5);
  v62 = [(TVButtonContent *)self textContentView];
  [v62 sizeThatFits:{v55, v56}];
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
  if (v18 == 3)
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

  else if (v18 == 1)
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

  v97 = [(TVButtonContent *)self textContentView];
  [v97 setFrame:{x, v91, v70, v113}];

  v98 = [(TVButtonContent *)self imageView];
  [v98 setFrame:{v80, v77, rect, v76}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TVButtonContent *)self traitCollection];
    if ([v5 userInterfaceStyle])
    {
      [v4 userInterfaceStyle];
      v6 = [(TVButtonContent *)self traitCollection];
      [v6 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButtonContent;
  [(_UIFloatingContentView *)&v7 traitCollectionDidChange:v4];
}

- (double)_imageMarginFromText
{
  v3 = [(TVButtonContent *)self imageView];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = [(TVButtonContent *)self textContentView];

    if (v6)
    {
      v7 = [(TVButtonContent *)self imageTrailsTextContent];
      v8 = [(TVButtonContent *)self imageView];
      [v8 tv_margin];
      v10 = v9;
      v12 = v11;

      v13 = [(TVButtonContent *)self textContentView];
      [v13 tv_margin];
      v15 = v14;
      v17 = v16;

      v18 = fmax(v17, v10);
      v19 = fmax(v12, v15);
      if (v7)
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TVButtonContent;
  [(UIView *)&v5 setHighlighted:?];
  [(TVButtonContent *)self setSelected:v3 animated:0];
}

- (void)_setFocused:(BOOL)a3 animationCoordinator:(id)a4
{
  if (self->_focused != a3)
  {
    self->_focused = a3;
    [(TVButtonContent *)self _updateFocusStateWithCoordinator:a4];
  }
}

- (void)_updateFloaingViewFocusState:(BOOL)a3 coordinator:(id)a4
{
  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  [(_UIFloatingContentView *)self setControlState:v4 withAnimationCoordinator:a4];
}

- (void)_updateFocusStateWithCoordinator:(id)a3
{
  v5 = [(TVButtonContent *)self isFocused];
  if (v5)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  [(TVButtonContent *)self _updateBackgroundColorForState:v6];
  v7 = [(TVButtonContent *)self textContentView];
  [v7 setHighlighted:v5];

  v8 = [(TVButtonContent *)self textContentView];
  [v8 setMarqueeEnabled:v5];

  v9 = [(TVButtonContent *)self textContentView];
  [v9 setMarqueeRunning:v5];

  if (v5)
  {
    v10 = 0.2;
  }

  else
  {
    v11 = [(TVButtonContent *)self textContentView];
    [v11 setLineBreakMode:4];

    v10 = 1.0;
  }

  v12 = [(TVButtonContent *)self imageView];
  [v12 setSelected:v5 animated:0];

  v13 = [(TVButtonContent *)self accessoryView];
  [v13 setSelected:v5 animated:0];

  v14 = 0.37;
  v15[1] = 3221225472;
  v15[0] = MEMORY[0x277D85DD0];
  v15[2] = __52__TVButtonContent__updateFocusStateWithCoordinator___block_invoke;
  v15[3] = &unk_279D6E8B8;
  if (!a3)
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