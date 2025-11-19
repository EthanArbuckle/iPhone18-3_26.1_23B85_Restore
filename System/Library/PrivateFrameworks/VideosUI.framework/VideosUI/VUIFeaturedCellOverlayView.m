@interface VUIFeaturedCellOverlayView
- (CGRect)getRTLFrame:(CGRect)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)_layoutSubviews;
- (void)setAppleTVChannelLogoView:(id)a3;
- (void)setButtons:(id)a3;
- (void)setDisclaimerLabel:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation VUIFeaturedCellOverlayView

- (void)setAppleTVChannelLogoView:(id)a3
{
  v5 = a3;
  if (self->_appleTVChannelLogoView != v5)
  {
    v6 = v5;
    [(VUIFeaturedCellOverlayView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_appleTVChannelLogoView, a3);
    [(VUIFeaturedCellOverlayView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  if (self->_titleLabel != v5)
  {
    v6 = v5;
    [(VUIFeaturedCellOverlayView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_titleLabel, a3);
    [(VUIFeaturedCellOverlayView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setSubtitleLabel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_subtitleLabel != v5)
  {
    [(VUIFeaturedCellOverlayView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_subtitleLabel, a3);
  }

  [(VUIFeaturedCellOverlayView *)self vui_setNeedsLayout];
}

- (void)setDisclaimerLabel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_disclaimerLabel != v5)
  {
    [(VUIFeaturedCellOverlayView *)self vui_addSubview:v5 oldView:?];
    objc_storeStrong(&self->_disclaimerLabel, a3);
  }

  [(VUIFeaturedCellOverlayView *)self vui_setNeedsLayout];
}

- (void)setButtons:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] || -[NSArray count](self->_buttons, "count"))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_buttons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_buttons, a3);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_buttons;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * j);
          [v16 vui_setNeedsLayout];
          [(VUIFeaturedCellOverlayView *)self vui_addSubview:v16 oldView:0];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [(VUIFeaturedCellOverlayView *)self vui_setNeedsLayout];
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = VUIFeaturedCellOverlayView;
  [(VUIFeaturedCellOverlayView *)&v12 vui_layoutSubviews:a3.width computationOnly:a3.height];
  v7 = v6;
  v9 = v8;
  if (!a4)
  {
    [(VUIFeaturedCellOverlayView *)self _layoutSubviews];
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_layoutSubviews
{
  v200 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  [MEMORY[0x1E69DD2E8] vui_padding];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [v8 bounds];
  Width = CGRectGetWidth(v201);

  [(VUIFeaturedCellOverlayView *)self bounds];
  v10 = CGRectGetWidth(v202);
  [(VUIFeaturedCellOverlayView *)self bounds];
  Height = CGRectGetHeight(v203);
  v12 = 28.0;
  v13 = 16.0;
  if (v3 == 7)
  {
    v12 = 16.0;
  }

  if (v3 < 3)
  {
    v12 = 24.0;
  }

  v179 = v12;
  if (!self->_usesDefaultOverlayType)
  {
    if (v3 < 3)
    {
      v151 = 0.0;
      v17 = 18.0;
      v18 = 1;
      v19 = 108.0;
      v152 = 18.0;
      v20 = 18.0;
      v154 = 0.0;
      v15 = 0.0;
      v176 = 16.0;
      v16 = 16.0;
LABEL_25:
      v14 = v19;
      goto LABEL_28;
    }

    v151 = 0.0;
    if (v3 == 7)
    {
      v18 = 1;
      v20 = 62.0;
      v19 = 410.0;
      v13 = 80.0;
      v152 = 72.0;
      v17 = 50.0;
    }

    else
    {
      v17 = 20.0;
      v18 = 1;
      v19 = 154.0;
      v13 = 32.0;
      v152 = 20.0;
      v20 = 20.0;
    }

    v154 = 0.0;
    v15 = 0.0;
    goto LABEL_23;
  }

  if (v3 > 2)
  {
    if (v3 == 7)
    {
      if (v10 == Width)
      {
        v13 = 70.0;
      }

      else
      {
        v13 = 80.0;
      }

      v21 = _os_feature_enabled_impl();
      v15 = 30.0;
      v22 = v13 + 30.0;
      if (v21)
      {
        v22 = v13;
      }

      v176 = v22;
      v18 = 1;
      v20 = 64.0;
      v19 = 410.0;
      v152 = 54.0;
      v17 = 50.0;
      v151 = 48.0;
      v154 = 48.0;
      goto LABEL_24;
    }

    v15 = 0.0;
    v18 = 1;
    v151 = 20.0;
    v152 = 26.0;
    v17 = 24.0;
    v19 = 248.0;
    v13 = 48.0;
    v20 = 26.0;
    v154 = 26.0;
LABEL_23:
    v176 = v13;
LABEL_24:
    v16 = v13;
    goto LABEL_25;
  }

  if (v10 == Width)
  {
    v14 = Width - v5 - v7;
    v15 = 8.0;
    v16 = 20.0;
  }

  else
  {
    [(VUIFeaturedCellOverlayView *)self bounds];
    v14 = CGRectGetWidth(v204);
    v15 = v5 * 0.5 + 30.0;
    v16 = v5 * 0.5 + 20.0;
  }

  v18 = 0;
  v19 = v14 + v16 * -2.0;
  v13 = 0.0;
  v20 = 28.0;
  v151 = 20.0;
  v152 = 26.0;
  v17 = 24.0;
  v154 = 20.0;
  v176 = v15;
LABEL_28:
  buttons = self->_buttons;
  if (!buttons)
  {
    v26 = _os_feature_enabled_impl();
    v174 = 0;
LABEL_34:
    v153 = 0.0;
    goto LABEL_35;
  }

  v24 = [(NSArray *)buttons count];
  v25 = _os_feature_enabled_impl();
  v26 = v25;
  v174 = 0;
  if (v24 < 2 || (v25 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (v3 == 7)
  {
    v26 = 0;
    v153 = 24.0;
    v174 = 1;
    v17 = 64.0;
  }

  else
  {
    v26 = 0;
    if (v3 >= 3)
    {
      v20 = 34.0;
    }

    v81 = v154;
    if (v3 >= 3)
    {
      v81 = 34.0;
    }

    v17 = 26.0;
    v153 = 20.0;
    v154 = v81;
    v174 = 1;
  }

LABEL_35:
  v27 = MEMORY[0x1E695F058];
  if (_os_feature_enabled_impl())
  {
    [(VUIFeaturedCellOverlayView *)self maxTitleWidth];
    v20 = 12.0;
    v153 = 6.0;
    if (v28 <= 0.0)
    {
      v161 = 6.0;
      v154 = 12.0;
      v156 = v14;
    }

    else
    {
      [(VUIFeaturedCellOverlayView *)self maxTitleWidth];
      v19 = v29;
      v161 = 6.0;
      v154 = 12.0;
      v156 = v29;
    }
  }

  else
  {
    v161 = v17;
    v156 = v14;
  }

  v30 = v27[1];
  v31 = v27[2];
  disclaimerLabel = self->_disclaimerLabel;
  MaxX = 0.0;
  v167 = v27[3];
  v163 = v20;
  v164 = *v27;
  rect = v30;
  if (disclaimerLabel)
  {
    v33 = v26;
    v34 = [(VUILabel *)disclaimerLabel vuiText];
    if ([v34 length])
    {
      v35 = v174;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      v36 = 0;
      v37 = v30;
      v38 = 0.0;
      v169 = v167;
      v170 = v37;
      v165 = v164;
      v166 = v31;
    }

    else
    {
      [(VUILabel *)self->_disclaimerLabel bottomMarginWithBaselineMargin:0.0];
      v40 = v39;
      [(VUILabel *)self->_disclaimerLabel sizeThatFits:v19, 1.79769313e308];
      v205.size.height = v41;
      v205.origin.x = v16;
      v205.origin.y = v30;
      v205.size.width = v19;
      v169 = v205.size.height;
      Height = Height - (v40 + CGRectGetHeight(v205));
      v36 = self->_disclaimerLabel;
      v38 = v161;
      v165 = v16;
      v166 = v19;
      v170 = Height;
    }

    v26 = v33;
  }

  else
  {
    v36 = 0;
    v38 = 0.0;
    v169 = v27[3];
    v170 = v27[1];
    v165 = *v27;
    v166 = v27[2];
  }

  v178 = [MEMORY[0x1E695DF70] array];
  v42 = self->_buttons;
  v184 = self;
  if (v42 && [(NSArray *)v42 count])
  {
    v43 = _os_feature_enabled_impl();
    v44 = self->_buttons;
    if (v43)
    {
      v45 = v44;
    }

    else
    {
      v46 = [(NSArray *)v44 reverseObjectEnumerator];
      v45 = [v46 allObjects];
    }

    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    obj = v45;
    v47 = [(NSArray *)obj countByEnumeratingWithState:&v193 objects:v199 count:16];
    if (v47)
    {
      v48 = v47;
      v149 = v18;
      v157 = v16;
      v159 = v13;
      v150 = v19;
      v49 = *v194;
      v183 = v156 + v15 * -2.0;
      MaxX = 0.0;
      v168 = 0.0;
      v50 = v31;
      v51 = v167;
      while (1)
      {
        v52 = 0;
        v53 = v36;
        do
        {
          if (*v194 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v193 + 1) + 8 * v52);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v53;
            if ((_os_feature_enabled_impl() & 1) == 0)
            {
              [(VUILabel *)v55 topMarginWithBaselineMargin:v38];
              v38 = v56;
            }

            v57 = v38;
          }

          else
          {
            objc_opt_class();
            v57 = 0.0;
            if (objc_opt_isKindOfClass())
            {
              [(VUILabel *)v53 topMarginWithBaselineMargin:v38];
              v57 = v58;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 vui_sizeThatFits:{v183, 0.0}];
            v60 = v59;
            v62 = v61;
            v63 = v54;
          }

          else
          {
            v63 = 0;
            v62 = v51;
            v60 = v31;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            if (v63)
            {
              if ([v63 buttonType])
              {
                if ([v63 buttonType] == 3 && v3 < 3)
                {
                  goto LABEL_79;
                }
              }

              else if (v3 <= 2)
              {
LABEL_79:
                [(VUIFeaturedCellOverlayView *)v184 bounds];
                v67 = (CGRectGetWidth(v207) - v60) * 0.5;
                goto LABEL_84;
              }
            }

            v60 = v183;
            v67 = v176;
            goto LABEL_84;
          }

          if (!v26)
          {
            v67 = v176;
            v50 = v183;
            goto LABEL_87;
          }

          if (isKindOfClass)
          {
            v65 = [MEMORY[0x1E69DF6F0] isTV];
            v66 = 12.0;
            if (v65)
            {
              v66 = 24.0;
            }

            v67 = v176 + v50 + v66;
            v206.origin.x = v67;
            v206.origin.y = rect;
            v206.size.width = v60;
            v206.size.height = v62;
            MaxX = CGRectGetMaxX(v206);
LABEL_84:
            if ((v26 & isKindOfClass) == 1)
            {
              v50 = v60;
              goto LABEL_92;
            }

            goto LABEL_86;
          }

          v67 = v176;
          v208.origin.x = v176;
          v208.origin.y = rect;
          v208.size.width = v60;
          v208.size.height = v62;
          MaxX = CGRectGetMaxX(v208);
          v168 = v176;
LABEL_86:
          v50 = v60;
LABEL_87:
          if ((v174 & 1) == 0)
          {
            if (_os_feature_enabled_impl())
            {
              v68 = v184->_disclaimerLabel;
              if (v68)
              {
                [(VUILabel *)v68 sizeThatFits:v50, 1.79769313e308];
                v69 = Height;
                v70 = v31;
                v72 = v71;
                v74 = v73;
                v209.origin.x = v67;
                v209.origin.y = rect;
                v209.size.width = v50;
                v209.size.height = v62;
                MidX = CGRectGetMidX(v209);
                v166 = v72;
                v76 = v72 * -0.5;
                v31 = v70;
                v77 = v69;
                v51 = v167;
                v165 = MidX + v76;
                v78 = v74 - v169;
                v79 = v170 - (v74 - v169);
                v169 = v74;
                v170 = v79;
                Height = v77 - v78;
              }
            }
          }

          v210.origin.x = v67;
          v210.origin.y = rect;
          v210.size.width = v50;
          v210.size.height = v62;
          Height = Height - (v57 + CGRectGetHeight(v210));
LABEL_92:
          v36 = v54;

          v80 = [MEMORY[0x1E696B098] valueWithCGRect:{v67, Height, v50, v62}];
          [v178 addObject:v80];

          ++v52;
          v38 = v179;
          v53 = v36;
        }

        while (v48 != v52);
        v48 = [(NSArray *)obj countByEnumeratingWithState:&v193 objects:v199 count:16];
        v38 = v179;
        if (!v48)
        {
          v38 = v179;
          self = v184;
          v16 = v157;
          v13 = v159;
          v19 = v150;
          v18 = v149;
          goto LABEL_101;
        }
      }
    }

    MaxX = 0.0;
    v168 = 0.0;
LABEL_101:
  }

  else
  {
    obj = 0;
    v168 = 0.0;
  }

  v82 = self->_disclaimerLabel;
  if (!v82)
  {
    goto LABEL_108;
  }

  v83 = [(VUILabel *)v82 vuiText];
  v84 = [v83 length];

  v85 = v174 ^ 1;
  if (!v84)
  {
    v85 = 1;
  }

  if (v85)
  {
LABEL_108:
    v161 = v38;
    v86 = v163;
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v86 = v163;
      v87 = v153;
    }

    else
    {
      [(VUILabel *)self->_disclaimerLabel bottomMarginWithBaselineMargin:v153];
      v87 = v88;
      v86 = v163;
    }

    [(VUILabel *)self->_disclaimerLabel sizeThatFits:v19, 1.79769313e308];
    v211.size.height = v89;
    v211.origin.x = v16;
    v211.origin.y = v170;
    v211.size.width = v19;
    v169 = v211.size.height;
    Height = Height - (v87 + CGRectGetHeight(v211));
    v90 = self->_disclaimerLabel;

    v36 = v90;
    v165 = v16;
    v166 = v19;
    v170 = Height;
  }

  if (self->_subtitleLabel)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUILabel *)v36 topMarginToLabel:self->_subtitleLabel withBaselineMargin:v161];
    }

    else
    {
      [(VUILabel *)self->_subtitleLabel bottomMarginWithBaselineMargin:v151];
    }

    v94 = v91;
    [(VUILabel *)self->_subtitleLabel sizeThatFits:v19, 1.79769313e308];
    v212.size.height = v95;
    v212.origin.x = v16;
    v212.origin.y = rect;
    v212.size.width = v19;
    v180 = v212.size.height;
    Height = Height - (v94 + CGRectGetHeight(v212));
    v96 = self->_subtitleLabel;

    v36 = v96;
    v175 = v16;
    v177 = v19;
    v172 = Height;
    v92 = v152;
    v93 = v164;
  }

  else
  {
    v92 = v161;
    v180 = v167;
    v172 = rect;
    v93 = v164;
    v175 = v164;
    v177 = v31;
  }

  if (self->_titleLabel)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v97 = v36;
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        [(VUILabel *)v97 topMarginToLabel:self->_titleLabel withBaselineMargin:v92];
        v92 = v98;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      v92 = v154;
    }

    else
    {
      [(VUILabel *)self->_titleLabel bottomMarginWithBaselineMargin:v154];
      v92 = v99;
    }

    [(VUILabel *)self->_titleLabel sizeThatFits:v19, 1.79769313e308];
    v213.size.height = v100;
    v213.origin.x = v16;
    v213.origin.y = rect;
    v213.size.width = v19;
    v162 = v213.size.height;
    Height = Height - (v92 + CGRectGetHeight(v213));
    v101 = self->_titleLabel;

    v92 = v86;
    v36 = v101;
    v155 = Height;
    v93 = v164;
  }

  else
  {
    v162 = v167;
    v19 = v31;
    v155 = rect;
    v16 = v93;
  }

  appleTVChannelLogoView = self->_appleTVChannelLogoView;
  if (appleTVChannelLogoView)
  {
    [(UIView *)appleTVChannelLogoView vui_sizeThatFits:v156, 0.0];
    v31 = v103;
    v167 = v104;
    if (!_os_feature_enabled_impl() || v3 <= 2)
    {
      v214.origin.x = v164;
      v214.origin.y = rect;
      v214.size.width = v31;
      v214.size.height = v167;
      CGRectGetWidth(v214);
      VUIRoundValue();
      v13 = v13 + v105;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUILabel *)v36 topMarginWithBaselineMargin:v92];
      v107 = v106;
      v108 = _os_feature_enabled_impl();
      v109 = v163;
      if (!v108)
      {
        v109 = v107;
      }

      v86 = v109;
    }

    v215.origin.x = v13;
    v215.origin.y = rect;
    v215.size.width = v31;
    v215.size.height = v167;
    v110 = Height - (v86 + CGRectGetHeight(v215));
  }

  else
  {
    v13 = v93;
    v110 = rect;
  }

  v158 = v16;
  v160 = v13;
  v111 = 18.0;
  if (v18)
  {
    VUIRoundValue();
    v111 = v112;
  }

  v113 = [MEMORY[0x1E695DF70] array];
  v114 = 0.0;
  v115 = v165;
  recta = v110;
  if ((([v178 count] != 0) & v26) == 1 && v3 <= 2 && MaxX >= 0.0)
  {
    [(VUIFeaturedCellOverlayView *)self bounds];
    v116 = (CGRectGetWidth(v216) - (MaxX - v168)) * 0.5;
    v117 = [v178 firstObject];
    [v117 CGRectValue];
    v119 = v118;
    v121 = v120;
    v122 = v31;
    v123 = v19;
    v125 = v124;
    v127 = v126;

    v114 = v116 - v119;
    v217.origin.x = v119 + v114;
    v217.origin.y = v121;
    v217.size.width = v125;
    v19 = v123;
    v31 = v122;
    v217.size.height = v127;
    v115 = CGRectGetMidX(v217) - v166 * 0.5;
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v128 = v178;
  v129 = [v128 countByEnumeratingWithState:&v189 objects:v198 count:16];
  if (v129)
  {
    v130 = v129;
    v131 = *v190;
    do
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v190 != v131)
        {
          objc_enumerationMutation(v128);
        }

        [*(*(&v189 + 1) + 8 * i) CGRectValue];
        v135 = [MEMORY[0x1E696B098] valueWithCGRect:{v114 + v134, v133 - v111}];
        [v113 addObject:v135];
      }

      v130 = [v128 countByEnumeratingWithState:&v189 objects:v198 count:16];
    }

    while (v130);
  }

  v136 = [v113 copy];
  v137 = v184->_appleTVChannelLogoView;
  [(VUIFeaturedCellOverlayView *)v184 getRTLFrame:v160, recta - v111, v31, v167];
  [(UIView *)v137 setFrame:?];
  titleLabel = v184->_titleLabel;
  [(VUIFeaturedCellOverlayView *)v184 getRTLFrame:v158, v155 - v111, v19, v162];
  [(VUILabel *)titleLabel setFrame:?];
  subtitleLabel = v184->_subtitleLabel;
  [(VUIFeaturedCellOverlayView *)v184 getRTLFrame:v175, v172 - v111, v177, v180];
  [(VUILabel *)subtitleLabel setFrame:?];
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v140 = obj;
  v141 = [(NSArray *)v140 countByEnumeratingWithState:&v185 objects:v197 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = 0;
    v144 = *v186;
    do
    {
      for (j = 0; j != v142; ++j)
      {
        if (*v186 != v144)
        {
          objc_enumerationMutation(v140);
        }

        v146 = *(*(&v185 + 1) + 8 * j);
        v147 = [v136 objectAtIndex:v143];
        [v147 CGRectValue];
        [(VUIFeaturedCellOverlayView *)v184 getRTLFrame:?];
        [v146 setFrame:?];
        ++v143;
      }

      v142 = [(NSArray *)v140 countByEnumeratingWithState:&v185 objects:v197 count:16];
    }

    while (v142);
  }

  v148 = v184->_disclaimerLabel;
  [(VUIFeaturedCellOverlayView *)v184 getRTLFrame:v115, v170 - v111, v166, v169];
  [(VUILabel *)v148 setFrame:?];
}

- (CGRect)getRTLFrame:(CGRect)a3
{
  [(VUIFeaturedCellOverlayView *)self bounds];
  [(VUIFeaturedCellOverlayView *)self vuiIsRTL];

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end