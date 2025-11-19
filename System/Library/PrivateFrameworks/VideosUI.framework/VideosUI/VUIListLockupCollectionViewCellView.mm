@interface VUIListLockupCollectionViewCellView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIListLockupCollectionViewCellView)initWithFrame:(CGRect)a3;
- (void)setDescriptionTextView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageView:(id)a3;
- (void)setPrimaryButton:(id)a3;
- (void)setSecondaryButton:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSubTitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)vui_prepareForReuse;
- (void)vui_setHighlighted:(BOOL)a3;
@end

@implementation VUIListLockupCollectionViewCellView

- (VUIListLockupCollectionViewCellView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = VUIListLockupCollectionViewCellView;
  v3 = [(VUIListLockupCollectionViewCellView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [VUISeparatorView alloc];
    v5 = [(VUISeparatorView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    separatorView = v3->_separatorView;
    v3->_separatorView = v5;

    [(VUIListLockupCollectionViewCellView *)v3 addSubview:v3->_separatorView];
  }

  return v3;
}

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  if (self->_titleLabel != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_titleLabel, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setSubTitleLabel:(id)a3
{
  v5 = a3;
  if (self->_subTitleLabel != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_subTitleLabel, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setDescriptionTextView:(id)a3
{
  v5 = a3;
  if (self->_descriptionTextView != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_descriptionTextView, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setPrimaryButton:(id)a3
{
  v5 = a3;
  if (self->_primaryButton != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_primaryButton, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setSecondaryButton:(id)a3
{
  v5 = a3;
  if (self->_secondaryButton != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_secondaryButton, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  if (self->_imageView != v5)
  {
    v6 = v5;
    [(VUIListLockupCollectionViewCellView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_imageView, a3);
    [(VUIListLockupCollectionViewCellView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = VUIListLockupCollectionViewCellView;
  [(VUIListLockupCollectionViewCellView *)&v5 setSemanticContentAttribute:?];
  [(VUILabel *)self->_subTitleLabel setSemanticContentAttribute:a3];
  [(VUILabel *)self->_titleLabel setSemanticContentAttribute:a3];
  [(FocusableTextView *)self->_descriptionTextView setSemanticContentAttribute:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIListLockupCollectionViewCellView;
  [(VUIListLockupCollectionViewCellView *)&v5 setHighlighted:?];
  [(VUIListLockupCollectionViewCellView *)self vui_setHighlighted:v3];
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v3 = a3;
  [(VUILabel *)self->_titleLabel setHighlighted:?];
  [(VUILabel *)self->_subTitleLabel setHighlighted:v3];
  descriptionTextView = self->_descriptionTextView;

  [(FocusableTextView *)descriptionTextView setHighlighted:v3];
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (a3.width == *MEMORY[0x1E695F060] && a3.height == *(MEMORY[0x1E695F060] + 8))
  {
    goto LABEL_92;
  }

  imagePosition = self->_imagePosition;
  if (imagePosition == 2)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 16.0;
  }

  [(VUISeparatorView *)self->_separatorView lineHeight];
  v164 = v10;
  v11 = [(VUIListLockupCollectionViewCellView *)self vuiTraitCollection];
  v12 = [v11 isAXEnabled];

  v14 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  imageView = self->_imageView;
  v186 = *MEMORY[0x1E695F058];
  v163 = v12;
  v192 = v16;
  if (!v12)
  {
    v21 = *(MEMORY[0x1E695F058] + 24);
    v22 = *(MEMORY[0x1E695F058] + 16);
    if (imageView)
    {
      [(UIView *)imageView vui_sizeThatFits:width, height];
      v22 = v23;
      v21 = v24;
    }

    v170 = v9;
    v25 = v14;
    v26 = v13;
    v27 = v22;
    v190 = v21;
    v218.origin.x = v14;
    v218.origin.y = v13;
    rect = v15;
    v218.size.width = v15;
    v218.size.height = v16;
    v28 = CGRectEqualToRect(*(&v21 - 3), v218);
    v29 = 8.0;
    if (v28)
    {
      v29 = v13;
    }

    y = v29;
    v30 = 0.0;
    if (v28)
    {
      v30 = v14;
    }

    v189 = v30;
    v31 = v13;
    v32 = width;
    if (!v28 && imagePosition != 2)
    {
      [(VUIListLockupCollectionViewCellView *)self bounds];
      CGRectGetHeight(v195);
      v196.origin.x = 0.0;
      v189 = 0.0;
      v196.origin.y = v13;
      v196.size.width = v22;
      v196.size.height = v190;
      CGRectGetHeight(v196);
      VUIRoundValue();
      v197.origin.y = v33;
      v197.origin.x = 0.0;
      y = v197.origin.y;
      v197.size.width = v22;
      v197.size.height = v190;
      v32 = width - (CGRectGetWidth(v197) + 10.0);
    }

    primaryButton = self->_primaryButton;
    if (primaryButton)
    {
      [(UIView *)primaryButton vui_sizeThatFits:width, 1.79769313e308];
      v36 = v35;
      v38 = v37;
      v198.origin.x = v14;
      v198.origin.y = v31;
      v198.size.width = v36;
      v198.size.height = v38;
      v39 = CGRectGetWidth(v198);
      v40 = width - v39;
      v174 = v38;
      v176 = v36;
      v173 = width - v39;
      if (imagePosition == 2)
      {
        v41 = 0.0;
        v172 = 8.0;
LABEL_43:
        v187 = v22;
        titleLabel = self->_titleLabel;
        v191 = v32;
        if (titleLabel)
        {
          [(UIView *)titleLabel vui_sizeThatFits:v32, 1.79769313e308];
          v76 = v75;
          v159 = 0.0;
          if (imagePosition == 2)
          {
            [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:28.0];
            v159 = v77;
          }

          v208.origin.x = v41;
          v208.origin.y = v31;
          v208.size.width = v32;
          v183 = v76;
          v208.size.height = v76;
          v78 = CGRectGetHeight(v208) + 0.0;
          v45 = self->_titleLabel;
          v79 = v32;
          v80 = v41;
          v81 = rect;
          v14 = v186;
        }

        else
        {
          v45 = 0;
          v159 = 0.0;
          v78 = 0.0;
          v183 = v192;
          v81 = rect;
          v79 = rect;
          v80 = v14;
        }

        v165 = v80;
        v182 = v79;
        subTitleLabel = self->_subTitleLabel;
        if (subTitleLabel)
        {
          [(UIView *)subTitleLabel vui_sizeThatFits:v191, 1.79769313e308];
          v209.size.height = v83;
          v209.origin.x = v41;
          v209.origin.y = v31;
          v209.size.width = v191;
          v181 = v209.size.height;
          v78 = v78 + CGRectGetHeight(v209);
          if (v45)
          {
            [(VUILabel *)self->_subTitleLabel topMarginToLabel:v45 withBaselineMargin:v170];
            v78 = v78 + v84;
          }

          v86 = self->_subTitleLabel;

          v45 = v86;
          v85 = v191;
          v14 = v41;
        }

        else
        {
          v181 = v192;
          v85 = v81;
        }

        v179 = v85;
        v180 = v14;
        descriptionTextView = self->_descriptionTextView;
        if (descriptionTextView)
        {
          [(UIView *)descriptionTextView vui_sizeThatFits:v191, 1.79769313e308];
          v210.size.height = v88;
          v210.origin.x = v41;
          v210.origin.y = v31;
          v210.size.width = v191;
          v178 = v210.size.height;
          v78 = v78 + CGRectGetHeight(v210);
          if (v45)
          {
            [(FocusableTextView *)self->_descriptionTextView topMarginToLabel:v45 withBaselineMargin:v170];
            v78 = v78 + v89;
          }

          v91 = [(FocusableTextView *)self->_descriptionTextView computationLabel];

          v45 = v91;
          v90 = v41;
        }

        else
        {
          v178 = v192;
          v191 = v81;
          v90 = v186;
        }

        secondaryButton = self->_secondaryButton;
        if (secondaryButton)
        {
          [(UIView *)secondaryButton vui_sizeThatFits:width, 1.79769313e308];
          v211.size.width = v93;
          v211.size.height = v94;
          v211.origin.x = v41;
          v211.origin.y = v31;
          v161 = v211.size.width;
          v168 = v211.size.height;
          v78 = v78 + CGRectGetHeight(v211);
          if (v45)
          {
            [(VUIButton *)self->_secondaryButton topMarginToLabel:v45 withBaselineMargin:18.0];
            v78 = v78 + v95;
          }
        }

        else
        {
          v168 = v192;
          v161 = v81;
          v41 = v186;
        }

        if (imagePosition == 2)
        {
          v212.origin.y = y;
          v212.origin.x = v189;
          v212.size.width = v187;
          v212.size.height = v190;
          CGRectGetMaxY(v212);
        }

        else
        {
          VUIRoundValue();
        }

        if (self->_titleLabel)
        {
          VUIRoundValue();
          recta = v96;
          v97 = self->_titleLabel;
          v98 = v165;
          v81 = v182;
          v192 = v183;
        }

        else
        {
          v97 = 0;
          v98 = v186;
          recta = v31;
        }

        if (self->_subTitleLabel)
        {
          v99 = recta;
          v100 = v81;
          v101 = v192;
          CGRectGetMaxY(*&v98);
          VUIRoundValue();
          v103 = v102;
          v104 = self->_subTitleLabel;

          v97 = v104;
          v81 = v179;
          v98 = v14;
          v192 = v181;
          v105 = v103;
        }

        else
        {
          v103 = recta;
          v105 = v31;
        }

        v167 = v105;
        if (self->_descriptionTextView)
        {
          v106 = v103;
          v107 = v81;
          v108 = v192;
          CGRectGetMaxY(*&v98);
          VUIRoundValue();
          v103 = v109;
          v110 = self->_descriptionTextView;

          v97 = v110;
          v98 = v90;
          v81 = v191;
          v192 = v178;
          v111 = v103;
        }

        else
        {
          v111 = v31;
        }

        v166 = v111;
        v162 = v41;
        if (self->_secondaryButton)
        {
          v112 = v103;
          v113 = v81;
          v114 = v192;
          CGRectGetMaxY(*&v98);
          VUIRoundValue();
          v116 = v115;
          v117 = self->_secondaryButton;

          v97 = v117;
          v13 = v31;
        }

        else
        {
          v13 = v31;
          v116 = v31;
        }

        v72 = v174;
        v171 = v90;
        v160 = v116;
        if (imagePosition == 2)
        {
          v213.origin.y = y;
          v213.origin.x = v189;
          v213.size.width = v187;
          v213.size.height = v190;
          v118 = v159 + v78 + CGRectGetHeight(v213) + 8.0;
          [(VUILabel *)v97 bottomMarginWithBaselineMargin:10.0];
          height = v119 + v118;
        }

        else
        {
          height = fmax(v78, 80.0);
        }

        v63 = v168;
        goto LABEL_81;
      }

      v204.origin.x = width - v39;
      v204.origin.y = v31;
      v204.size.width = v36;
      v204.size.height = v38;
      v32 = v32 - (CGRectGetWidth(v204) + 10.0);
      [(VUIListLockupCollectionViewCellView *)self bounds];
      CGRectGetHeight(v205);
      v206.origin.y = v31;
      v206.size.width = v36;
      v206.origin.x = v40;
      v206.size.height = v38;
      CGRectGetHeight(v206);
      VUIRoundValue();
      v172 = v73;
    }

    else
    {
      v172 = v13;
      v173 = v14;
      v41 = 0.0;
      v176 = v15;
      v174 = v192;
      if (imagePosition == 2)
      {
        goto LABEL_43;
      }
    }

    v207.origin.y = y;
    v207.origin.x = v189;
    v207.size.width = v22;
    v207.size.height = v190;
    v41 = CGRectGetMaxX(v207) + 10.0;
    goto LABEL_43;
  }

  if (imageView)
  {
    [(UIView *)imageView vui_sizeThatFits:width, height];
    v194.size.width = v18;
    v20 = v19;
    v194.origin.x = 0.0;
    v189 = 0.0;
    v194.origin.y = 8.0;
    v187 = v194.size.width;
    v194.size.height = v20;
    y = 8.0;
    height = CGRectGetMaxY(v194) + 8.0;
  }

  else
  {
    height = 0.0;
    v20 = *(MEMORY[0x1E695F058] + 24);
    v187 = *(MEMORY[0x1E695F058] + 16);
    y = *(MEMORY[0x1E695F058] + 8);
    v189 = *MEMORY[0x1E695F058];
  }

  v42 = self->_titleLabel;
  if (v42)
  {
    v43 = v15;
    [(UIView *)v42 vui_sizeThatFits:width, 1.79769313e308];
    v199.size.height = v44;
    v199.origin.x = 0.0;
    v165 = 0.0;
    v199.origin.y = height;
    v199.size.width = width;
    v183 = v199.size.height;
    recta = height;
    height = height + CGRectGetHeight(v199);
    v45 = self->_titleLabel;
    v15 = width;
  }

  else
  {
    v45 = 0;
    v183 = v16;
    recta = v13;
    v43 = v15;
    v165 = v14;
  }

  v182 = v15;
  v46 = self->_subTitleLabel;
  if (v46)
  {
    [(UIView *)v46 vui_sizeThatFits:width, 1.79769313e308];
    v48 = v47;
    [(VUILabel *)self->_subTitleLabel topMarginToLabel:v45 withBaselineMargin:v9];
    v50 = height + v49;
    v200.origin.x = 0.0;
    v180 = 0.0;
    v181 = v48;
    v200.origin.y = v50;
    v200.size.width = width;
    v200.size.height = v48;
    v167 = v50;
    height = v50 + CGRectGetHeight(v200);
    v51 = self->_subTitleLabel;

    v45 = v51;
    v52 = width;
  }

  else
  {
    v180 = v14;
    v181 = v192;
    v52 = v43;
    v167 = v13;
  }

  v179 = v52;
  v190 = v20;
  v53 = self->_descriptionTextView;
  if (v53)
  {
    [(UIView *)v53 vui_sizeThatFits:width, 1.79769313e308];
    v55 = v54;
    [(FocusableTextView *)self->_descriptionTextView topMarginToLabel:v45 withBaselineMargin:v9];
    v57 = height + v56;
    v201.origin.x = 0.0;
    v171 = 0.0;
    v201.origin.y = v57;
    v201.size.width = width;
    v201.size.height = v55;
    v166 = v57;
    height = v57 + CGRectGetHeight(v201);
    v58 = [(FocusableTextView *)self->_descriptionTextView computationLabel];

    v45 = v58;
    v191 = width;
  }

  else
  {
    v55 = v192;
    v191 = v43;
    v166 = v13;
    v171 = v14;
  }

  v59 = self->_secondaryButton;
  if (v59)
  {
    [(UIView *)v59 vui_sizeThatFits:width, 1.79769313e308];
    v61 = v60;
    v63 = v62;
    [(VUIButton *)self->_secondaryButton topMarginToLabel:v45 withBaselineMargin:18.0];
    v65 = height + v64;
    v66 = 0.0;
    v202.origin.x = 0.0;
    v202.origin.y = v65;
    v161 = v61;
    v202.size.width = v61;
    v202.size.height = v63;
    v160 = v65;
    height = v65 + CGRectGetHeight(v202);
    v67 = v43;
    v68 = v192;
  }

  else
  {
    v68 = v192;
    v63 = v192;
    v67 = v43;
    v160 = v13;
    v161 = v43;
    v66 = v186;
  }

  v178 = v55;
  v162 = v66;
  v69 = self->_primaryButton;
  if (v69)
  {
    [(UIView *)v69 vui_sizeThatFits:width, 1.79769313e308];
    v203.size.width = v70;
    v72 = v71;
    v203.origin.x = 0.0;
    v173 = 0.0;
    v203.origin.y = height;
    v176 = v203.size.width;
    v203.size.height = v72;
    v172 = height;
    height = height + CGRectGetHeight(v203) + 8.0;
  }

  else
  {
    v72 = v68;
    v176 = v67;
    v172 = v13;
    v173 = v186;
  }

LABEL_81:

  if (!a4)
  {
    v169 = v63;
    if ([(VUIListLockupCollectionViewCellView *)self vuiIsRTL])
    {
      [(VUIListLockupCollectionViewCellView *)self bounds];
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      y = v121;
      v189 = v120;
      v187 = v122;
      v190 = v123;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v125 = v124;
      v183 = v127;
      recta = v126;
      v182 = v128;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v179 = v130;
      v180 = v129;
      v167 = v131;
      v181 = v132;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v171 = v133;
      v166 = v134;
      v191 = v135;
      v178 = v136;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v172 = v138;
      v173 = v137;
      v175 = v140;
      v176 = v139;
      v141 = v125;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v143 = v142;
      v145 = v144;
      v147 = v146;
      v149 = v148;
    }

    else
    {
      v147 = v161;
      v143 = v162;
      v141 = v165;
      v175 = v72;
      v149 = v169;
      v145 = v160;
    }

    [(UIView *)self->_imageView setFrame:v189, y, v187, v190, *&v13];
    [(VUILabel *)self->_titleLabel setFrame:v141, recta, v182, v183];
    [(VUILabel *)self->_subTitleLabel setFrame:v180, v167, v179, v181];
    [(FocusableTextView *)self->_descriptionTextView setFrame:v171, v166, v191, v178];
    [(VUIButton *)self->_primaryButton setFrame:v173, v172, v176, v175];
    [(VUIButton *)self->_secondaryButton setFrame:v143, v145, v147, v149];
    if (imagePosition == 2)
    {
      v150 = 1;
    }

    else
    {
      v150 = v163;
    }

    if (v150 == 1)
    {
      [(VUIListLockupCollectionViewCellView *)self bounds];
      v151 = v164;
      v152 = CGRectGetHeight(v214) - v164;
      v153 = 0.0;
      v154 = width;
    }

    else
    {
      v215.origin.x = v189;
      v215.origin.y = y;
      v215.size.width = v187;
      v215.size.height = v190;
      v154 = width - CGRectGetWidth(v215) + -10.0;
      v216.origin.x = v186;
      v216.origin.y = v158;
      v216.size.width = v154;
      v151 = v164;
      v216.size.height = v164;
      v153 = width - CGRectGetWidth(v216);
      [(VUIListLockupCollectionViewCellView *)self bounds];
      CGRectGetHeight(v217);
      VUIRoundValue();
      v152 = v155;
    }

    [(VUISeparatorView *)self->_separatorView setFrame:v153, v152, v154, v151];
  }

LABEL_92:
  v156 = width;
  v157 = height;
  result.height = v157;
  result.width = v156;
  return result;
}

- (void)vui_prepareForReuse
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_imageView setImage:0];
  }

  [(VUILabel *)self->_titleLabel setVuiText:0];
  [(VUILabel *)self->_subTitleLabel setVuiText:0];
  [(FocusableTextView *)self->_descriptionTextView setDescriptionText:0];
  [(VUIButton *)self->_primaryButton vui_prepareForReuse];
  secondaryButton = self->_secondaryButton;

  [(VUIButton *)secondaryButton vui_prepareForReuse];
}

@end