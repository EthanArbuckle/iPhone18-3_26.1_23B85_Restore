@interface BFFPaneHeaderView
- (BFFPaneHeaderView)initWithFrame:(CGRect)a3;
- (CGSize)iconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_labelsAndLinksBaselineOffsetForView:(id)a3;
- (double)heightForWidth:(double)a3 inView:(id)a4;
- (void)_linkButtonPressed;
- (void)layoutSubviews;
- (void)setBottomLineColor:(id)a3;
- (void)setIcon:(id)a3;
- (void)setIconAccessibilityLabel:(id)a3;
- (void)setIconInheritsTint:(BOOL)a3;
- (void)setIconSize:(CGSize)a3;
- (void)setLinkText:(id)a3 handler:(id)a4;
- (void)setTitleText:(id)a3;
- (void)tintColorDidChange;
@end

@implementation BFFPaneHeaderView

- (BFFPaneHeaderView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = BFFPaneHeaderView;
  v3 = [(BFFPaneHeaderView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[BFFStyle sharedStyle];
    [v4 edgeInsetsForHeaderView:v3];
    [(BFFPaneHeaderView *)v3 setLayoutMargins:?];

    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    textLabel = v3->_textLabel;
    v3->_textLabel = v10;

    [(UILabel *)v3->_textLabel setNumberOfLines:0];
    v12 = +[BFFStyle sharedStyle];
    [v12 applyThemeToTitleLabel:v3->_textLabel];

    [(BFFPaneHeaderView *)v3 addSubview:v3->_textLabel];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    detailTextLabel = v3->_detailTextLabel;
    v3->_detailTextLabel = v13;

    [(UILabel *)v3->_detailTextLabel setNumberOfLines:0];
    v15 = +[BFFStyle sharedStyle];
    [v15 applyThemeToLabel:v3->_detailTextLabel];

    [(UILabel *)v3->_detailTextLabel setTextAlignment:1];
    v16 = MEMORY[0x277D74300];
    v17 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v18 = [v17 fontDescriptorWithSymbolicTraits:0x8000];
    v19 = [v16 fontWithDescriptor:v18 size:0.0];
    [(UILabel *)v3->_detailTextLabel setFont:v19];

    [(BFFPaneHeaderView *)v3 addSubview:v3->_detailTextLabel];
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    subLabel = v3->_subLabel;
    v3->_subLabel = v20;

    [(UILabel *)v3->_subLabel setNumberOfLines:0];
    v22 = +[BFFStyle sharedStyle];
    [v22 applyThemeToLabel:v3->_subLabel];

    [(UILabel *)v3->_subLabel setTextAlignment:1];
    v23 = [(UILabel *)v3->_detailTextLabel font];
    [(UILabel *)v3->_subLabel setFont:v23];

    [(BFFPaneHeaderView *)v3 addSubview:v3->_subLabel];
    [(BFFPaneHeaderView *)v3 setCustomTopPadding:-1.0];
  }

  return v3;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  if (self->_icon != v4)
  {
    obj = v4;
    if ([(BFFPaneHeaderView *)self iconInheritsTint]&& ([(BFFPaneHeaderView *)self tintColor], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(BFFPaneHeaderView *)self tintColor];
      v7 = [(UIImage *)obj _flatImageWithColor:v6];

      v8 = v7;
    }

    else
    {
      v8 = obj;
    }

    obja = v8;
    objc_storeStrong(&self->_icon, v8);
    iconView = self->_iconView;
    if (self->_icon)
    {
      if (!iconView)
      {
        v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_icon];
        v11 = self->_iconView;
        self->_iconView = v10;

        if (self->_iconSize.width != *MEMORY[0x277CBF3A8] || self->_iconSize.height != *(MEMORY[0x277CBF3A8] + 8))
        {
          [(UIImageView *)self->_iconView frame];
          [(UIImageView *)self->_iconView setFrame:?];
        }

        [(BFFPaneHeaderView *)self addSubview:self->_iconView];
        goto LABEL_17;
      }
    }

    else if (iconView)
    {
      [(UIImageView *)iconView removeFromSuperview];
      v13 = self->_iconView;
      self->_iconView = 0;

LABEL_17:
      [(BFFPaneHeaderView *)self setNeedsLayout];
      v4 = obja;
      goto LABEL_18;
    }

    [(UIImageView *)iconView setImage:?];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)setIconAccessibilityLabel:(id)a3
{
  iconView = self->_iconView;
  v5 = a3 != 0;
  v6 = a3;
  [(UIImageView *)iconView setIsAccessibilityElement:v5];
  [(UIImageView *)self->_iconView setAccessibilityLabel:v6];
}

- (void)setIconSize:(CGSize)a3
{
  p_iconSize = &self->_iconSize;
  if (a3.width != self->_iconSize.width || a3.height != self->_iconSize.height)
  {
    p_iconSize->width = a3.width;
    self->_iconSize.height = a3.height;
    [(UIImageView *)self->_iconView frame];
    v7 = v6;
    v9 = v8;
    width = p_iconSize->width;
    height = p_iconSize->height;
    v12 = *(MEMORY[0x277CBF3A8] + 8);
    if (p_iconSize->width == *MEMORY[0x277CBF3A8] && height == v12)
    {
      [(UIImage *)self->_icon size:*MEMORY[0x277CBF3A8]];
      width = v14;
      height = v15;
    }

    iconView = self->_iconView;

    [(UIImageView *)iconView setFrame:v7, v9, width, height];
  }
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(UIImage *)self->_icon size:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setIconInheritsTint:(BOOL)a3
{
  if (self->_iconInheritsTint != a3)
  {
    self->_iconInheritsTint = a3;
    [(BFFPaneHeaderView *)self tintColorDidChange];
  }
}

- (void)tintColorDidChange
{
  v8.receiver = self;
  v8.super_class = BFFPaneHeaderView;
  [(BFFPaneHeaderView *)&v8 tintColorDidChange];
  if ([(BFFPaneHeaderView *)self iconInheritsTint])
  {
    v3 = [(BFFPaneHeaderView *)self tintColor];

    if (v3)
    {
      iconView = self->_iconView;
      v5 = [(UIImageView *)iconView image];
      v6 = [(BFFPaneHeaderView *)self tintColor];
      v7 = [v5 _flatImageWithColor:v6];
      [(UIImageView *)iconView setImage:v7];
    }
  }
}

- (void)_linkButtonPressed
{
  linkHandler = self->_linkHandler;
  if (linkHandler)
  {
    linkHandler[2]();
  }
}

- (void)setTitleText:(id)a3
{
  [(UILabel *)self->_textLabel setText:a3];
  v4 = +[BFFStyle sharedStyle];
  [v4 applyThemeToTitleLabel:self->_textLabel];

  [(BFFPaneHeaderView *)self setNeedsLayout];
}

- (void)setLinkText:(id)a3 handler:(id)a4
{
  v19 = a3;
  v6 = a4;
  [(UIButton *)self->_linkButton removeFromSuperview];
  v7 = [v19 length];
  if (v6 && v7)
  {
    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    linkButton = self->_linkButton;
    self->_linkButton = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v11 = [(UIButton *)self->_linkButton titleLabel];
    [v11 setFont:v10];

    v12 = [(UIButton *)self->_linkButton titleLabel];
    [v12 setLineBreakMode:0];

    v13 = [(UIButton *)self->_linkButton titleLabel];
    [v13 setNumberOfLines:0];

    v14 = [(UIButton *)self->_linkButton titleLabel];
    [v14 setTextAlignment:1];

    [(UIButton *)self->_linkButton setTitle:v19 forState:0];
    [(UIButton *)self->_linkButton addTarget:self action:sel__linkButtonPressed forControlEvents:0x2000];
    v15 = _Block_copy(v6);
    linkHandler = self->_linkHandler;
    self->_linkHandler = v15;

    [(BFFPaneHeaderView *)self addSubview:self->_linkButton];
  }

  else
  {
    v17 = self->_linkButton;
    self->_linkButton = 0;

    v18 = self->_linkHandler;
    self->_linkHandler = 0;
  }

  [(BFFPaneHeaderView *)self setNeedsLayout];
}

- (void)setBottomLineColor:(id)a3
{
  v10 = a3;
  v4 = [(UIView *)self->_bottomLine backgroundColor];

  v5 = v10;
  if (v4 != v10)
  {
    [(UIView *)self->_bottomLine removeFromSuperview];
    if (v10)
    {
      bottomLine = self->_bottomLine;
      if (!bottomLine)
      {
        v7 = objc_alloc(MEMORY[0x277D75D18]);
        v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v9 = self->_bottomLine;
        self->_bottomLine = v8;

        bottomLine = self->_bottomLine;
      }

      [(BFFPaneHeaderView *)self addSubview:bottomLine];
    }

    [(UIView *)self->_bottomLine setBackgroundColor:v10];
    [(BFFPaneHeaderView *)self setNeedsLayout];
    v5 = v10;
  }
}

- (double)_labelsAndLinksBaselineOffsetForView:(id)a3
{
  v3 = MEMORY[0x277D75520];
  v4 = *MEMORY[0x277D76918];
  v5 = a3;
  v6 = [v3 metricsForTextStyle:v4];
  v7 = [v5 traitCollection];

  v8 = [v7 horizontalSizeClass];
  v9 = 34.0;
  if (v8 == 1)
  {
    v9 = 30.0;
  }

  [v6 scaledValueForValue:v9];
  v11 = v10;

  return v11;
}

- (void)layoutSubviews
{
  v104.receiver = self;
  v104.super_class = BFFPaneHeaderView;
  [(BFFPaneHeaderView *)&v104 layoutSubviews];
  [(BFFPaneHeaderView *)self _labelsAndLinksBaselineOffsetForView:self];
  v4 = v3;
  iconView = self->_iconView;
  [(BFFPaneHeaderView *)self bounds];
  v7 = v6;
  v8 = +[BFFStyle sharedStyle];
  [v8 horizontalInsetsForContainingInView:self width:v7];
  v10 = v9;

  v11 = [(BFFPaneHeaderView *)self superview];
  [v11 safeAreaInsets];
  v13 = v12;

  if (iconView)
  {
    [(UIImageView *)self->_iconView frame];
    v15 = v14;
    v17 = v16;
    v18 = v4;
    v19 = BFFRoundToPixel((v7 - v14) * 0.5);
    v20 = +[BFFStyle sharedStyle];
    [(BFFPaneHeaderView *)self iconSize];
    [v20 headerYOffsetForIconSize:self inView:?];
    v22 = v21;

    if ([(BFFPaneHeaderView *)self useMinimumTopPadding]&& v22 < 12.0)
    {
      v23 = 12.0;
    }

    else
    {
      v23 = v22;
    }

    v24 = v19;
    v4 = v18;
    [(UIImageView *)self->_iconView setFrame:v24, v23, v15, v17];
  }

  v25 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [(BFFPaneHeaderView *)self customTopPadding];
  if (v26 >= 0.0)
  {
    v30 = MEMORY[0x277D75520];
    v27 = _BFFHeaderTextStyle();
    v31 = [v30 metricsForTextStyle:v27];
    [(BFFPaneHeaderView *)self customTopPadding];
    [v31 scaledValueForValue:?];
    v29 = v32;
  }

  else
  {
    v27 = +[BFFStyle sharedStyle];
    [(BFFPaneHeaderView *)self iconSize];
    [v27 headerTitleBaselineOffsetForView:self iconSize:?];
    v29 = v28;
  }

  v33 = v10 + v13;

  [(UILabel *)self->_detailTextLabel _firstBaselineOffsetFromTop];
  v35 = v34;
  [(UILabel *)self->_textLabel frame];
  v37 = v36;
  v39 = v38;
  v103 = v40;
  v101 = v41;
  v42 = [(UILabel *)self->_textLabel text];
  v43 = [v42 length];

  if (v43)
  {
    v37 = BFFRoundToPixel(v33);
    v44 = [(BFFPaneHeaderView *)self isTextLabelAlignedByLastBaseline];
    textLabel = self->_textLabel;
    if (v44)
    {
      [(UILabel *)textLabel _lastLineBaseline];
    }

    else
    {
      [(UILabel *)textLabel _firstBaselineOffsetFromTop];
    }

    v48 = BFFRoundToPixel(v29 - v46);
    v49 = fmaxf(v48, 0.0);
    [(BFFPaneHeaderView *)self frame];
    if (v103 + v37 > v50)
    {
      [(BFFPaneHeaderView *)self frame];
      v103 = v51 + v37 * -2.0;
    }

    [(UILabel *)self->_textLabel _lastLineBaseline];
    v102 = v49;
    v53 = v52 + v49;
    v54 = +[BFFStyle sharedStyle];
    [v54 headerSubheaderBaselineSpacingForView:self];
    [v25 scaledValueForValue:?];
    v47 = v53 + v55;
  }

  else
  {
    v102 = v39;
    v47 = v29 - v35;
  }

  [(UILabel *)self->_detailTextLabel frame];
  v57 = v56;
  v59 = v58;
  v98 = v61;
  v99 = v60;
  v62 = [(UILabel *)self->_detailTextLabel text];
  v100 = v37;
  if ([v62 length])
  {

LABEL_20:
    v65 = v7;
    v57 = BFFRoundToPixel(v33);
    [(UILabel *)self->_detailTextLabel _firstBaselineOffsetFromTop];
    v59 = BFFRoundToPixel(v47 - v66);
    [(UILabel *)self->_detailTextLabel _lastLineBaseline];
    v47 = v4 + v59 + v67;
    goto LABEL_21;
  }

  v63 = [(UILabel *)self->_detailTextLabel attributedText];
  v64 = [v63 length];

  if (v64)
  {
    goto LABEL_20;
  }

  v65 = v7;
LABEL_21:
  [(UILabel *)self->_subLabel frame];
  v69 = v68;
  v71 = v70;
  v95 = v73;
  v96 = v72;
  v74 = [(UILabel *)self->_subLabel text];
  v75 = [v74 length];

  v97 = v57;
  if (v75)
  {
    v69 = BFFRoundToPixel(v33);
    [(UILabel *)self->_subLabel _firstBaselineOffsetFromTop];
    v71 = BFFRoundToPixel(v47 - v76);
    [(UILabel *)self->_subLabel _lastLineBaseline];
    v47 = v4 + v71 + v77;
  }

  [(UIButton *)self->_linkButton frame];
  v81 = v80;
  v93 = v82;
  linkButton = self->_linkButton;
  if (linkButton)
  {
    [(UIButton *)linkButton layoutSubviews];
    v84 = BFFRoundToPixel((v65 - v81) * 0.5);
    v85 = [(UIButton *)self->_linkButton titleLabel];
    [v85 _firstLineBaselineOffsetFromBoundsTop];
    v87 = v47 - v86;
  }

  else
  {
    v84 = v78;
    v87 = v79;
  }

  v88 = v102;
  v89 = [(BFFPaneHeaderView *)self bottomLineColor];

  if (v89)
  {
    UICeilToViewScale();
    v91 = v90;
    [(BFFPaneHeaderView *)self bounds];
    v92 = CGRectGetMaxY(v105) - v91;
    [(BFFPaneHeaderView *)self bounds];
    v88 = v102;
    [(UIView *)self->_bottomLine setFrame:0.0, v92];
  }

  [(UILabel *)self->_detailTextLabel setFrame:v97, v59, v99, v98];
  [(UILabel *)self->_subLabel setFrame:v69, v71, v96, v95];
  [(UILabel *)self->_textLabel setFrame:v100, v88, v103, v101];
  [(UIButton *)self->_linkButton setFrame:v84, v87, v81, v94];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(BFFPaneHeaderView *)self heightForWidth:self inView:a3.width, a3.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)heightForWidth:(double)a3 inView:(id)a4
{
  v6 = a4;
  v7 = [v6 traitCollection];
  v95 = [v7 horizontalSizeClass];

  v8 = +[BFFStyle sharedStyle];
  [v8 horizontalInsetsForContainingInView:v6 width:a3];
  v10 = v9;
  v12 = v11;

  v13 = [(BFFPaneHeaderView *)self superview];
  [v13 safeAreaInsets];
  v15 = a3 - v10 - v12 - v14;
  v16 = [(BFFPaneHeaderView *)self superview];
  [v16 safeAreaInsets];
  v18 = v17;

  v99 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [(BFFPaneHeaderView *)self _labelsAndLinksBaselineOffsetForView:v6];
  v20 = v19;
  iconView = self->_iconView;
  v22 = [(UILabel *)self->_textLabel text];
  v96 = [v22 length];

  v23 = [(UILabel *)self->_detailTextLabel text];
  if ([v23 length])
  {
    v97 = 1;
  }

  else
  {
    v24 = [(UILabel *)self->_detailTextLabel attributedText];
    v97 = [v24 length] != 0;
  }

  v25 = v15 - v18;

  v26 = [(UILabel *)self->_subLabel text];
  v27 = [v26 length];

  linkButton = self->_linkButton;
  v28 = +[BFFStyle sharedStyle];
  [(BFFPaneHeaderView *)self iconSize];
  [v28 headerTitleBaselineOffsetForView:v6 iconSize:?];
  v30 = v29;

  if (!iconView)
  {
    v42 = v97;
    if (v96)
    {
      goto LABEL_17;
    }

LABEL_24:
    v60 = linkButton;
    v59 = v99;
    v57 = v30 + 0.0;
    if (v27)
    {
      v65 = 1;
    }

    else
    {
      v65 = v42;
    }

    if ((v65 & 1) != 0 || linkButton)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v94 = v20;
  [(UIImageView *)self->_iconView frame];
  v32 = v31;
  v34 = v33;
  p_iconSize = &self->_iconSize;
  v36 = *MEMORY[0x277CBF3A8];
  v37 = *(MEMORY[0x277CBF3A8] + 8);
  v38 = self->_iconView;
  if (self->_iconSize.width == *MEMORY[0x277CBF3A8] && self->_iconSize.height == v37)
  {
    [(UIImageView *)v38 sizeToFit];
    [(UIImageView *)self->_iconView frame];
    v32 = v40;
    v34 = v41;
  }

  else
  {
    [(UIImageView *)v38 setBounds:0.0, 0.0];
    width = p_iconSize->width;
  }

  if (width < a3)
  {
    a3 = width;
  }

  v43 = [(UIImageView *)self->_iconView image];
  [v43 size];
  v45 = a3 * v44;
  v46 = [(UIImageView *)self->_iconView image];
  [v46 size];
  v48 = v45 / v47;

  if (a3 != v36 || v48 != v37)
  {
    p_iconSize->width = a3;
    self->_iconSize.height = v48;
  }

  [(UIImageView *)self->_iconView setFrame:v32, v34, a3, v48];
  v20 = v94;
  v42 = v97;
  if (!v96)
  {
    v63 = +[BFFStyle sharedStyle];
    [(BFFPaneHeaderView *)self iconSize];
    [v63 headerYOffsetForIconSize:v6 inView:?];
    v30 = v64;

    goto LABEL_24;
  }

LABEL_17:
  [(UILabel *)self->_textLabel frame];
  v50 = v49;
  v52 = v51;
  [(UILabel *)self->_textLabel sizeThatFits:v25, 1.79769313e308];
  [(UILabel *)self->_textLabel setFrame:v50, v52, v25, v53];
  [(UILabel *)self->_textLabel setNeedsDisplay];
  [(UILabel *)self->_textLabel _lastLineBaseline];
  v55 = v54;
  [(UILabel *)self->_textLabel _firstBaselineOffsetFromTop];
  v57 = v30 + v55 - v56 + 0.0;
  if (v27)
  {
    v58 = 1;
  }

  else
  {
    v58 = v42;
  }

  v60 = linkButton;
  v59 = v99;
  if ((v58 & 1) != 0 || linkButton)
  {
    v61 = +[BFFStyle sharedStyle];
    [v61 headerSubheaderBaselineSpacingForView:v6];
    [v99 scaledValueForValue:?];
    v57 = v57 + v62;

    goto LABEL_32;
  }

LABEL_29:
  v66 = 56.0;
  if (v95 == 1)
  {
    v66 = 37.0;
  }

  [v59 scaledValueForValue:v66];
  v57 = v57 + v67;
LABEL_32:
  if (v42)
  {
    [(UILabel *)self->_detailTextLabel frame];
    v69 = v68;
    v71 = v70;
    [(UILabel *)self->_detailTextLabel sizeThatFits:v25, 1.79769313e308];
    [(UILabel *)self->_detailTextLabel setFrame:v69, v71, v25, v72];
    [(UILabel *)self->_detailTextLabel setNeedsDisplay];
    [(UILabel *)self->_detailTextLabel _lastLineBaseline];
    v74 = v73;
    [(UILabel *)self->_detailTextLabel _firstBaselineOffsetFromTop];
    v57 = v57 + v20 + v74 - v75;
  }

  if (v27)
  {
    [(UILabel *)self->_subLabel frame];
    v77 = v76;
    v79 = v78;
    [(UILabel *)self->_subLabel sizeThatFits:v25, 1.79769313e308];
    [(UILabel *)self->_subLabel setFrame:v77, v79, v25, v80];
    [(UILabel *)self->_subLabel setNeedsDisplay];
    [(UILabel *)self->_subLabel _lastLineBaseline];
    v82 = v81;
    [(UILabel *)self->_subLabel _firstBaselineOffsetFromTop];
    v57 = v57 + v20 + v82 - v83;
  }

  if (v60)
  {
    [(UIButton *)self->_linkButton frame];
    v85 = v84;
    v87 = v86;
    v88 = [(UIButton *)self->_linkButton titleLabel];
    [v88 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, v25, 1.79769313e308}];
    v90 = v89;
    v92 = v91;

    [(UIButton *)self->_linkButton setFrame:v85, v87, v90, v92];
    v57 = v20 + v57;
  }

  return v57;
}

@end