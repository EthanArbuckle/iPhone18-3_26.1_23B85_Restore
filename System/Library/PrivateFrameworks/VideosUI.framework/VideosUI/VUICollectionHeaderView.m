@interface VUICollectionHeaderView
+ (id)configureCollectionHeaderViewWithTitle:(id)a3 subtitle:(id)a4 buttonString:(id)a5 existingView:(id)a6;
- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)padding;
- (id)_buttonWithString:(id)a3 existingButton:(id)a4;
- (void)_selectButtonAction:(id)a3;
- (void)layoutSubviews;
- (void)setHeaderButton:(id)a3;
- (void)setImageView:(id)a3;
- (void)setSeparatorView:(id)a3;
- (void)setSubtitleTextView:(id)a3;
- (void)setTitleTextView:(id)a3;
- (void)tintColorDidChange;
@end

@implementation VUICollectionHeaderView

+ (id)configureCollectionHeaderViewWithTitle:(id)a3 subtitle:(id)a4 buttonString:(id)a5 existingView:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
  }

  else
  {
    v14 = [VUICollectionHeaderView alloc];
    v13 = [(VUICollectionHeaderView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v15 = v13;
  v16 = [(VUICollectionHeaderView *)v13 layout];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;

  [(VUICollectionHeaderView *)v15 setLayout:v19];
  if (v9)
  {
    v20 = [v19 titleTextLayout];
    v21 = [(VUICollectionHeaderView *)v15 titleTextView];
    v22 = [VUILabel labelWithAttributedString:v9 textLayout:v20 existingLabel:v21];

    if (v10)
    {
LABEL_9:
      v23 = [v19 subtitleTextLayout];
      v24 = [(VUICollectionHeaderView *)v15 subtitleTextView];
      v25 = [VUILabel labelWithString:v10 textLayout:v23 existingLabel:v24];

      goto LABEL_12;
    }
  }

  else
  {
    v22 = 0;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
LABEL_12:
  v26 = [(VUICollectionHeaderView *)v15 headerButton];
  v27 = [(VUICollectionHeaderView *)v15 _buttonWithString:v12 existingButton:v26];

  [(VUICollectionHeaderView *)v15 setTitleTextView:v22];
  [(VUICollectionHeaderView *)v15 setSubtitleTextView:v25];
  [(VUICollectionHeaderView *)v15 setHeaderButton:v27];

  return v15;
}

- (void)setTitleTextView:(id)a3
{
  v5 = a3;
  titleTextView = self->_titleTextView;
  if (titleTextView != v5)
  {
    v7 = v5;
    [(VUILabel *)titleTextView removeFromSuperview];
    if (v7 && ([(VUILabel *)v7 isDescendantOfView:self]& 1) == 0)
    {
      [(VUICollectionHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_titleTextView, a3);
    [(VUICollectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setSeparatorView:(id)a3
{
  v5 = a3;
  separatorView = self->_separatorView;
  if (separatorView != v5)
  {
    v7 = v5;
    [(VUISeparatorView *)separatorView removeFromSuperview];
    if (v7 && ([(VUISeparatorView *)v7 isDescendantOfView:self]& 1) == 0)
    {
      [(VUICollectionHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_separatorView, a3);
    [(VUICollectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setSubtitleTextView:(id)a3
{
  v5 = a3;
  subtitleTextView = self->_subtitleTextView;
  if (subtitleTextView != v5)
  {
    v7 = v5;
    [(VUILabel *)subtitleTextView removeFromSuperview];
    if (v7 && ([(VUILabel *)v7 isDescendantOfView:self]& 1) == 0)
    {
      [(VUICollectionHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_subtitleTextView, a3);
    [(VUICollectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setHeaderButton:(id)a3
{
  v5 = a3;
  headerButton = self->_headerButton;
  if (headerButton != v5)
  {
    v7 = v5;
    [(UIButton *)headerButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)self->_headerButton removeFromSuperview];
    if (v7 && ([(UIButton *)v7 isDescendantOfView:self]& 1) == 0)
    {
      [(VUICollectionHeaderView *)self addSubview:v7];
      [(UIButton *)v7 addTarget:self action:sel__selectButtonAction_ forControlEvents:64];
    }

    objc_storeStrong(&self->_headerButton, a3);
    [(VUICollectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  imageView = self->_imageView;
  if (imageView != v5)
  {
    v7 = v5;
    [(_TVImageView *)imageView removeFromSuperview];
    if (v7 && ([(_TVImageView *)v7 isDescendantOfView:self]& 1) == 0)
    {
      [(VUICollectionHeaderView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_imageView, a3);
    [(VUICollectionHeaderView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUICollectionHeaderView *)self _layoutWithSize:1 metricsOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(VUICollectionHeaderView *)self bounds];

  [(VUICollectionHeaderView *)self _layoutWithSize:0 metricsOnly:v3, v4];
}

- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x1E695F060];
  if (a3.width != *MEMORY[0x1E695F060] || a3.height != *(MEMORY[0x1E695F060] + 8))
  {
    p_padding = &self->_padding;
    v11 = a3.width - self->_padding.left - self->_padding.right;
    v12 = [(VUICollectionHeaderView *)self traitCollection];
    v13 = [v12 isAXEnabled];

    v14 = [(VUICollectionHeaderView *)self traitCollection];
    v15 = +[VUICollectionHeaderViewLayout maxImageContentSizeCategory];
    [VUIUtilities scaleContentSizeValue:v14 forTraitCollection:v15 maximumContentSizeCategory:40.0];
    v17 = v16;

    v19 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v176 = *(MEMORY[0x1E695F058] + 24);
    v177 = *(MEMORY[0x1E695F058] + 16);
    v172 = v18;
    v173 = width;
    if (v13)
    {
      left = p_padding->left;
      imageView = self->_imageView;
      if (imageView)
      {
        [(_TVImageView *)imageView sizeThatFits:v11, 1.79769313e308];
        v182.size.width = v22;
        v182.size.height = v23;
        v182.origin.y = v17 - v23;
        v182.origin.x = left;
        rect = v182.origin.y;
        v158 = v182.size.width;
        v165 = v182.size.height;
        MaxY = CGRectGetMaxY(v182) + 16.0;
        v161 = v176;
        v163 = v177;
        v25 = v19;
        v26 = v18;
        v27 = v25;
        v150 = v25;
        v28 = left;
      }

      else
      {
        v27 = *MEMORY[0x1E695F058];
        titleTextView = self->_titleTextView;
        if (titleTextView)
        {
          [(VUILabel *)titleTextView topMarginToLabel:0 withBaselineMargin:40.0];
          v26 = v43;
          [(VUILabel *)self->_titleTextView sizeThatFits:v11, 1.79769313e308];
          v183.size.width = v44;
          v183.size.height = v45;
          v29 = left;
          v183.origin.x = left;
          v183.origin.y = v26;
          v161 = v183.size.height;
          v163 = v183.size.width;
          MaxY = CGRectGetMaxY(v183);
          v150 = left;
          v165 = v176;
          v158 = v177;
          rect = v172;
          v28 = v27;
LABEL_15:
          subtitleTextView = self->_subtitleTextView;
          v169 = v26;
          x = v28;
          if (subtitleTextView)
          {
            v47 = v11;
            [(VUILabel *)subtitleTextView sizeThatFits:v11, 1.79769313e308];
            v49 = v48;
            v51 = v50;
            v52 = self->_subtitleTextView;
            if (self->_imageView)
            {
              [(VUILabel *)v52 topMarginWithBaselineMargin:23.0];
            }

            else
            {
              v90 = 40.0;
              if (self->_titleTextView)
              {
                v90 = 23.0;
              }

              [(VUILabel *)v52 topMarginToLabel:v90 withBaselineMargin:?];
            }

            v76 = MaxY + v53;
            v186.origin.x = v29;
            v186.origin.y = v76;
            v186.size.width = v49;
            v186.size.height = v51;
            MaxY = CGRectGetMaxY(v186);
            v77 = v29;
          }

          else
          {
            v47 = v11;
            if (self->_imageView)
            {
              v71 = [(VUICollectionHeaderView *)self traitCollection];
              v72 = +[VUICollectionHeaderViewLayout maxImageContentSizeCategory];
              [VUIUtilities scaleContentSizeValue:v71 forTraitCollection:v72 maximumContentSizeCategory:16.0];
              v73 = v29;
              v75 = v74;

              MaxY = MaxY + v75;
              v29 = v73;
            }

            v51 = v176;
            v49 = v177;
            v76 = v172;
            v77 = v27;
          }

          headerButton = self->_headerButton;
          v156 = v51;
          v157 = v49;
          v154 = v76;
          v155 = v77;
          if (headerButton)
          {
            [(UIButton *)headerButton sizeThatFits:v47, 0.0];
            v93 = v92;
            v187.size.height = v94;
            v187.origin.x = v29;
            v187.origin.y = MaxY;
            v187.size.width = v93;
            v171 = v187.size.height;
            v160 = MaxY;
            MaxY = MaxY + CGRectGetHeight(v187);
            v95 = rect;
            v96 = v150;
LABEL_48:
            v81 = v165;
            v80 = v158;
            goto LABEL_49;
          }

          v97 = self->_subtitleTextView;
          if (self->_titleTextView)
          {
            if (!v97)
            {
              v97 = self->_titleTextView;
            }

            v96 = v150;
          }

          else
          {
            v96 = v150;
            if (!v97)
            {
LABEL_47:
              v93 = v177;
              v171 = v176;
              v160 = v172;
              v29 = v27;
              v95 = rect;
              goto LABEL_48;
            }
          }

          [(VUILabel *)v97 bottomMarginWithBaselineMargin:16.0];
          MaxY = MaxY + v101;
          goto LABEL_47;
        }

        MaxY = 0.0;
        v161 = *(MEMORY[0x1E695F058] + 24);
        v163 = *(MEMORY[0x1E695F058] + 16);
        v26 = *(MEMORY[0x1E695F058] + 8);
        v28 = *MEMORY[0x1E695F058];
        v150 = *MEMORY[0x1E695F058];
        v165 = v161;
        v158 = v163;
        rect = v26;
      }

      v29 = left;
      goto LABEL_15;
    }

    if (self->_imageView)
    {
      v30 = [(VUICollectionHeaderViewLayout *)self->_layout imageViewLayout];
      [v30 decoratorSize];
      recta = v17 - v31;

      v32 = self->_headerButton;
      if (v32)
      {
        v33 = [(UIButton *)v32 titleLabel];
        [v33 sizeThatFits:{v11, 0.0}];
        v35 = v34;
        v171 = v36;

        v37 = [(UIButton *)self->_headerButton titleLabel];
        [v37 vui_heightToBaseline];
        v39 = v38;

        v151 = width - v35 - p_padding->right;
        v160 = v17 - v39;
        v166 = v35;
        v40 = v11 - v35 + -10.0;
        v41 = v40;
        if (self->_headerButton)
        {
LABEL_27:
          [(_TVImageView *)self->_imageView sizeThatFits:v41, 1.79769313e308];
          v184.size.width = v78;
          v184.size.height = v79;
          v184.origin.x = p_padding->left;
          x = v184.origin.x;
          v184.origin.y = recta;
          v80 = v184.size.width;
          v81 = v184.size.height;
          v82 = CGRectGetMaxY(v184);
          v83 = self->_subtitleTextView;
          if (v83)
          {
            if (!self->_headerButton)
            {
              v40 = v11;
            }

            [(VUILabel *)v83 sizeThatFits:v40, 1.79769313e308];
            v85 = v84;
            v86 = p_padding->left;
            [(VUILabel *)self->_subtitleTextView topMarginWithBaselineMargin:23.0];
            v185.origin.y = v82 + v87;
            v154 = v82 + v87;
            v155 = v86;
            v185.origin.x = v86;
            v156 = v85;
            v157 = v40;
            v185.size.width = v40;
            v185.size.height = v85;
            v88 = CGRectGetMaxY(v185);
            [(VUILabel *)self->_subtitleTextView bottomMarginWithBaselineMargin:16.0];
            MaxY = v88 + v89;
            v161 = v176;
            v163 = v177;
            v169 = v172;
          }

          else
          {
            [(_TVImageView *)self->_imageView bottomMarginWithBaselineMargin:16.0];
            MaxY = v82 + v98;
            v156 = v176;
            v157 = v177;
            v154 = v172;
            v155 = v19;
            v161 = v176;
            v163 = v177;
            v169 = v172;
          }

          v96 = v19;
          v29 = v151;
          v95 = recta;
          v93 = v166;
LABEL_49:
          v102 = x;
          if (!a4)
          {
LABEL_50:
            v175 = v102;
            v159 = v80;
            if ([(VUICollectionHeaderView *)self effectiveUserInterfaceLayoutDirection]== 1)
            {
              [(VUICollectionHeaderView *)self bounds];
              VUIRectWithFlippedOriginRelativeToBoundingRect();
              v104 = v103;
              v170 = v105;
              v162 = v107;
              v164 = v106;
              [(VUICollectionHeaderView *)self bounds];
              VUIRectWithFlippedOriginRelativeToBoundingRect();
              v154 = v109;
              v155 = v108;
              v156 = v111;
              v157 = v110;
              [(VUICollectionHeaderView *)self bounds];
              VUIRectWithFlippedOriginRelativeToBoundingRect();
              v152 = v112;
              v160 = v113;
              v168 = v114;
              v171 = v115;
              [(VUICollectionHeaderView *)self bounds];
              VUIRectWithFlippedOriginRelativeToBoundingRect();
              v117 = v116;
              rectb = v118;
              v120 = v119;
              v81 = v121;
              [(VUICollectionHeaderView *)self bounds];
              VUIRectWithFlippedOriginRelativeToBoundingRect();
              v123 = v122;
              v124 = v104;
              v126 = v125;
              v127 = v170;
              v129 = v128;
              v131 = v130;
              v133 = v162;
              v132 = v164;
            }

            else
            {
              v124 = v96;
              v123 = 0.0;
              rectb = v95;
              v126 = height + -1.0;
              v131 = 1.0;
              v168 = v93;
              v152 = v29;
              v129 = v173;
              v117 = v175;
              v127 = v169;
              v133 = v161;
              v132 = v163;
              v120 = v159;
            }

            [(VUILabel *)self->_titleTextView setFrame:v124, v127, v132, v133];
            [(VUILabel *)self->_subtitleTextView setFrame:v155, v154, v157, v156];
            [(UIButton *)self->_headerButton setFrame:v152, v160, v168, v171];
            [(_TVImageView *)self->_imageView setFrame:v117, rectb, v120, v81];
            [(VUISeparatorView *)self->_separatorView setFrame:v123, v126, v129, v131];
          }

LABEL_54:
          height = ceil(MaxY);
          width = v173;
          goto LABEL_55;
        }
      }

      else
      {
        v40 = v11 - v6 + -10.0;
        v151 = v19;
        v160 = v18;
        v166 = v177;
        v171 = v176;
      }

      v41 = v11;
      goto LABEL_27;
    }

    v54 = self->_titleTextView;
    v149 = *MEMORY[0x1E695F058];
    if (!v54)
    {
      v70 = *(MEMORY[0x1E695F058] + 16);
      v171 = *(MEMORY[0x1E695F058] + 24);
      v167 = v70;
      v160 = *(MEMORY[0x1E695F058] + 8);
      v29 = *MEMORY[0x1E695F058];
      v99 = v171;
      v100 = *MEMORY[0x1E695F058];
      v56 = v160;
      goto LABEL_59;
    }

    [(VUILabel *)v54 topMarginToLabel:0 withBaselineMargin:40.0];
    v29 = v19;
    v56 = v55;
    v57 = self->_headerButton;
    v58 = v18;
    v60 = v176;
    v59 = v177;
    if (v57)
    {
      v61 = [(UIButton *)v57 titleLabel:v177];
      [v61 sizeThatFits:{v11, 0.0}];
      v6 = v62;
      v171 = v63;

      v64 = [(UIButton *)self->_headerButton titleLabel];
      [v64 vui_heightToBaseline];
      v66 = v65;

      v67 = width - v6 - p_padding->right;
      [(UILabel *)self->_titleTextView vui_heightToBaseline];
      v69 = v56 + v68;
      v58 = v69 - v66;
      if (self->_headerButton)
      {
        v160 = v69 - v66;
        v167 = v6;
        v29 = v67;
        v70 = v11 - v6 + -10.0;
LABEL_58:
        [(VUILabel *)self->_titleTextView sizeThatFits:v70, 1.79769313e308, v58];
        v99 = v136;
        v100 = p_padding->left;
LABEL_59:
        v153 = v100;
        v169 = v56;
        v137 = v56;
        v163 = v70;
        v138 = v70;
        v139 = v99;
        MaxY = CGRectGetMaxY(*&v100);
        v140 = self->_subtitleTextView;
        if (v140)
        {
          if (self->_headerButton)
          {
            v11 = v11 - v6 + -10.0;
          }

          [(VUILabel *)v140 sizeThatFits:v11, 1.79769313e308];
          v142 = v141;
          v143 = p_padding->left;
          v144 = 40.0;
          if (self->_titleTextView)
          {
            v144 = 23.0;
          }

          [(VUILabel *)self->_subtitleTextView topMarginToLabel:v144 withBaselineMargin:?];
          v188.origin.y = MaxY + v145;
          v154 = MaxY + v145;
          v155 = v143;
          v188.origin.x = v143;
          v157 = v11;
          v188.size.width = v11;
          v188.size.height = v142;
          MaxY = CGRectGetMaxY(v188);
          v146 = v149;
        }

        else
        {
          v142 = v176;
          v157 = v177;
          v146 = v149;
          v154 = v172;
          v155 = v149;
        }

        v93 = v167;
        v147 = self->_subtitleTextView;
        v161 = v99;
        v156 = v142;
        if (self->_titleTextView)
        {
          if (!v147)
          {
            v147 = self->_titleTextView;
          }
        }

        else if (!v147)
        {
          goto LABEL_72;
        }

        [(VUILabel *)v147 bottomMarginWithBaselineMargin:16.0];
        MaxY = MaxY + v148;
LABEL_72:
        v81 = v176;
        v80 = v177;
        v95 = v172;
        v102 = v146;
        v96 = v153;
        if (!a4)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

      v59 = v6;
      v29 = v67;
      v60 = v171;
    }

    v160 = v58;
    v171 = v60;
    v167 = v59;
    v70 = v11;
    goto LABEL_58;
  }

LABEL_55:
  v134 = width;
  v135 = height;
  result.height = v135;
  result.width = v134;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = VUICollectionHeaderView;
  [(VUICollectionHeaderView *)&v4 tintColorDidChange];
  if (self->_headerButton)
  {
    if ([(VUICollectionHeaderView *)self tintAdjustmentMode]== 2)
    {
      [MEMORY[0x1E69DC888] systemMidGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] vui_keyColor];
    }
    v3 = ;
    [(UIButton *)self->_headerButton setTitleColor:v3 forState:0];
  }
}

- (id)_buttonWithString:(id)a3 existingButton:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E69DC888] vui_keyColor];
    [v8 setTitleColor:v9 forState:0];

    v10 = [v8 titleLabel];
    v11 = [MEMORY[0x1E69DB878] vui_fontFromTextStyle:13 fontWeight:0 fontSize:0 fontWidth:0 symbolicTraits:0.0];
    [v10 setFont:v11];

    v12 = [v8 titleLabel];
    [v12 setNumberOfLines:1];

    v13 = [v8 titleLabel];
    [v13 setAdjustsFontForContentSizeCategory:1];

    [v8 setTitle:v5 forState:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_selectButtonAction:(id)a3
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2](selectionHandler, a3);
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end