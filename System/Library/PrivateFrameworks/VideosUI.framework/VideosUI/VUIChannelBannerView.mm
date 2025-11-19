@interface VUIChannelBannerView
- (BOOL)_isSubscribed;
- (CGSize)_layoutSubviewsWithSize:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIChannelBannerView)initWithFrame:(CGRect)a3;
- (double)_subscribeButtonHeight;
- (double)topThreshold;
- (void)_layoutLabels:(id)a3 withOrigin:(CGPoint)a4 maxWidth:(double)a5;
- (void)setAppleTVChannelLogoView:(id)a3;
- (void)setBgColorView:(id)a3;
- (void)setBgImageView:(id)a3;
- (void)setDescriptionTextView:(id)a3;
- (void)setDisclaimerTextLabel:(id)a3;
- (void)setHeight:(double)a3;
- (void)setSeparatorView:(id)a3;
- (void)setSubscribeButton:(id)a3;
- (void)setTextLabels:(id)a3;
- (void)setVuiBackgroundColor:(id)a3;
@end

@implementation VUIChannelBannerView

- (VUIChannelBannerView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = VUIChannelBannerView;
  v3 = [(VUIChannelBannerView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUISeparatorView);
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 nativeScale];
    v7 = 1.0 / v6;

    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(VUISeparatorView *)v4 setDarkColor:v8];

    [(VUISeparatorView *)v4 setLineHeight:v7];
    [(VUIChannelBannerView *)v3 setSeparatorView:v4];
    v9 = objc_opt_new();
    [(VUIChannelBannerView *)v3 setBgColorView:v9];
  }

  return v3;
}

- (void)setVuiBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIChannelBannerView;
  v4 = a3;
  [(VUIChannelBannerView *)&v5 setVuiBackgroundColor:v4];
  [(UIView *)self->_bgColorView setVuiBackgroundColor:v4, v5.receiver, v5.super_class];
}

- (void)setBgColorView:(id)a3
{
  v5 = a3;
  bgColorView = self->_bgColorView;
  if (bgColorView != v5)
  {
    v7 = v5;
    [(UIView *)bgColorView removeFromSuperview];
    if (v7 && ![(UIView *)v7 isDescendantOfView:self])
    {
      [(VUIChannelBannerView *)self addSubview:v7];
    }

    objc_storeStrong(&self->_bgColorView, a3);
    [(VUIChannelBannerView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setAppleTVChannelLogoView:(id)a3
{
  v5 = a3;
  [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:self->_appleTVChannelLogoView];
  if (self->_appleTVChannelLogoView != v5)
  {
    objc_storeStrong(&self->_appleTVChannelLogoView, a3);
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setSeparatorView:(id)a3
{
  v5 = a3;
  [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:self->_separatorView];
  if (self->_separatorView != v5)
  {
    objc_storeStrong(&self->_separatorView, a3);
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setTextLabels:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] || -[NSArray count](self->_textLabels, "count"))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_textLabels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v10++) vui_removeFromSuperView];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_textLabels, a3);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_textLabels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(VUIChannelBannerView *)self vui_addSubview:*(*(&v16 + 1) + 8 * v15++) oldView:0, v16];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setDescriptionTextView:(id)a3
{
  v5 = a3;
  [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:self->_descriptionTextView];
  if (self->_descriptionTextView != v5)
  {
    objc_storeStrong(&self->_descriptionTextView, a3);
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setSubscribeButton:(id)a3
{
  v5 = a3;
  [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:self->_subscribeButton];
  if (self->_subscribeButton != v5)
  {
    objc_storeStrong(&self->_subscribeButton, a3);
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setDisclaimerTextLabel:(id)a3
{
  v5 = a3;
  [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:self->_disclaimerTextLabel];
  if (self->_disclaimerTextLabel != v5)
  {
    objc_storeStrong(&self->_disclaimerTextLabel, a3);
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (void)setBgImageView:(id)a3
{
  v5 = a3;
  if (self->_bgImageView != v5)
  {
    v6 = v5;
    [(VUIChannelBannerView *)self vui_addSubview:v5 oldView:?];
    if (self->_bgImageView != v6)
    {
      objc_storeStrong(&self->_bgImageView, a3);
    }

    [(VUIChannelBannerView *)self vui_sendSubviewToBack:v6];
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
    v5 = v6;
  }
}

- (void)setHeight:(double)a3
{
  if (self->_height != a3)
  {
    self->_height = a3;
    [(VUIChannelBannerView *)self vui_setNeedsLayout];
  }
}

- (double)topThreshold
{
  [(UIView *)self->_appleTVChannelLogoView frame];

  return CGRectGetMinY(*&v2);
}

- (CGSize)_layoutSubviewsWithSize:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v280 = *MEMORY[0x1E69E9840];
  v7 = [(VUIChannelBannerView *)self vuiTraitCollection];
  v8 = [v7 isAXEnabled];

  v9 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:width];
  v10 = [MEMORY[0x1E69DF6F0] isMac];
  v11 = v10;
  v12 = (v9 < 3) | v8;
  if (v10)
  {
    v13 = 20.0;
  }

  else
  {
    v13 = 16.0;
  }

  v14 = v10 ^ 1;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:width];
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x1E69DF6F0] isTV];
  v20 = v19;
  v253 = v16;
  v21 = width - v16;
  v22 = 36.0;
  if ((v12 & v14) != 0)
  {
    v22 = 40.0;
  }

  if (v19)
  {
    v23 = 68.0;
  }

  else
  {
    v23 = v22;
  }

  if (v19)
  {
    v24 = 38.0;
  }

  else
  {
    v24 = v13;
  }

  if (v11 | v19)
  {
    v25 = 32.0;
  }

  else
  {
    v25 = 28.0;
  }

  [(VUISeparatorView *)self->_separatorView lineHeight];
  v251 = v26;
  if (v20)
  {
    v27 = [(VUIChannelBannerView *)self _isSubscribed];
    v28 = !v27;
    v29 = 58.0;
    v30 = 44.0;
    if (v27)
    {
      v29 = 44.0;
    }

    v262 = v29;
    v31 = 50.0;
  }

  else
  {
    v28 = (v12 & v14 & 1) == 0;
    v32 = 32.0;
    if (v12 & v14)
    {
      v32 = 28.0;
    }

    v262 = v32;
    v31 = 80.0;
    v30 = 115.0;
  }

  if (v28)
  {
    v33 = v31;
  }

  else
  {
    v33 = v30;
  }

  v219 = v18;
  v34 = v21 - v18;
  v35 = *MEMORY[0x1E695F058];
  v250 = *(MEMORY[0x1E695F058] + 16);
  v248 = *(MEMORY[0x1E695F058] + 8);
  v249 = *(MEMORY[0x1E695F058] + 24);
  v264 = *MEMORY[0x1E695EFF8];
  v235 = *(MEMORY[0x1E695EFF8] + 8);
  [(VUIChannelBannerView *)self logoHeight];
  v37 = v36;
  v229 = width;
  if ([(VUIChannelBannerView *)self _isSubscribed])
  {
    appleTVChannelLogoView = self->_appleTVChannelLogoView;
    if (appleTVChannelLogoView)
    {
      [(UIView *)appleTVChannelLogoView vui_sizeThatFits:v34, v37];
      rect_16 = v39;
      rect_24 = v40;
      v240 = v33;
      v241 = v249;
      v236 = v35;
      v237 = v250;
      v41 = v248;
      v242 = v248;
      rect = v253 + (v34 - v39) * 0.5;
      v252 = v249;
      v230 = v250;
      v231 = v249;
      v233 = v248;
      x = v35;
      v238 = v262 + v33 + v40;
      v239 = v250;
      y = v248;
      v223 = v250;
      v259 = v35;
      v227 = v35;
      v228 = v249;
      rect_8 = v248;
      v34 = 0.0;
    }

    else
    {
      v238 = 0.0;
      v236 = v35;
      v237 = v250;
      v41 = v248;
      v241 = v249;
      v242 = v248;
      v252 = v249;
      v230 = v250;
      v231 = v249;
      v233 = v248;
      x = v35;
      y = v248;
      v223 = v250;
      v259 = v35;
      v227 = v35;
      v228 = v249;
      v239 = v250;
      v240 = v248;
      rect_8 = v248;
      rect_16 = v250;
      rect_24 = v249;
      v34 = 0.0;
      rect = v35;
    }

    goto LABEL_151;
  }

  v234 = v33;
  v226 = v35;
  v218 = v24;
  if ((v12 & v14 & 1) == 0)
  {
    if (v9 == 3)
    {
      v50 = 3;
    }

    else
    {
      v50 = 6;
    }

    if (v9 == 3)
    {
      v51 = 3.0;
    }

    else
    {
      v51 = 4.0;
    }

    [MEMORY[0x1E69DD2E8] vui_collectionInteritemSpace:v50 gridType:0 windowWidth:width];
    v53 = floor((v34 - (v51 + -1.0) * v52) / v51);
    v54 = self->_appleTVChannelLogoView;
    v224 = v34 - v53 - v52;
    if (v54)
    {
      [(UIView *)v54 vui_sizeThatFits:?];
      v56 = v55;
      v58 = v57;
      v59 = v234;
      v60 = v234 + v58;
      v61 = v253;
    }

    else
    {
      v60 = 0.0;
      v58 = v249;
      v56 = v250;
      v59 = v248;
      v61 = v226;
    }

    rect = v61;
    v240 = v59;
    rect_16 = v56;
    rect_24 = v58;
    CGRectGetMaxY(*&v61);
    VUIRoundValue();
    v260 = v68;
    if (self->_descriptionTextView)
    {
      v69 = 0;
    }

    else
    {
      v69 = self->_textLabels == 0;
    }

    v238 = v25 + v60;
    [(VUISeparatorView *)self->_separatorView setHidden:v69];
    separatorView = self->_separatorView;
    v108 = 0.0;
    if (separatorView)
    {
      v109 = [(VUISeparatorView *)separatorView isHidden];
      v110 = v250;
      if ((v109 & 1) == 0)
      {
        v286.size.height = 0.0;
        v286.origin.x = v253;
        v286.origin.y = v260;
        v286.size.width = v34;
        MaxY = CGRectGetMaxY(v286);
        v117 = self->_separatorView;
        v110 = v250;
        v111 = v117;
        v108 = v25;
        v112 = v251;
        v238 = v251 + v238;
        v257 = v251;
        v260 = MaxY;
        v113 = v34;
        v114 = MaxY;
        v115 = v253;
        goto LABEL_79;
      }

      v111 = 0;
      v257 = 0.0;
      v112 = v249;
    }

    else
    {
      v111 = 0;
      v257 = 0.0;
      v112 = v249;
      v110 = v250;
    }

    v113 = v110;
    v114 = v248;
    v115 = v226;
LABEL_79:
    v232 = v25;
    v227 = v115;
    v228 = v112;
    v239 = v113;
    disclaimerTextLabel = self->_disclaimerTextLabel;
    rect_8a = v114;
    if (disclaimerTextLabel)
    {
      [(VUILabel *)disclaimerTextLabel sizeThatFits:v53, 0.0];
      v120 = v119;
      v121 = width - v53 - v219;
      v122 = 50.0;
      if (!v11)
      {
        v122 = v232;
      }

      [(VUILabel *)self->_disclaimerTextLabel bottomMarginWithBaselineMargin:v122];
      v287.origin.x = v253;
      v287.size.height = v257;
      v287.origin.y = v260;
      v287.size.width = v34;
      CGRectGetMinY(v287);
      v288.origin.x = width - v53 - v219;
      v288.origin.y = v248;
      v288.size.width = v53;
      v288.size.height = v120;
      CGRectGetHeight(v288);
      VUIRoundValue();
      v124 = v123;
      v125 = self->_disclaimerTextLabel;

      v114 = rect_8a;
      v126 = rect_16;
      v111 = v125;
      v241 = v120;
      v257 = v120;
      v260 = v124;
      v127 = v218;
      v34 = v53;
      v236 = v121;
      v237 = v53;
      v255 = v121;
      v128 = rect_24;
      v129 = v249;
    }

    else
    {
      v127 = v108;
      v255 = v253;
      v124 = v248;
      v129 = v249;
      v241 = v249;
      v236 = v226;
      v237 = v110;
      v126 = rect_16;
      v128 = rect_24;
    }

    v242 = v124;
    if (self->_subscribeButton)
    {
      [(VUIChannelBannerView *)self _subscribeButtonHeight:v128];
      v131 = v130;
      x = v229 - v53 - v219;
      v289.origin.x = v255;
      v289.size.height = v257;
      v289.origin.y = v260;
      v289.size.width = v34;
      CGRectGetMinY(v289);
      [v111 topMarginWithBaselineMargin:v127];
      v290.origin.x = x;
      v290.origin.y = v248;
      v290.size.width = v53;
      v290.size.height = v131;
      CGRectGetHeight(v290);
      VUIRoundValue();
      v133 = v132;
      if (self->_subscribeButton && (v291.origin.x = v229 - v53 - v219, v291.origin.y = v133, v291.size.width = v53, v291.size.height = v131, CGRectGetMinY(v291) < v234))
      {
        v292.origin.x = v229 - v53 - v219;
        v292.origin.y = v133;
        v292.size.width = v53;
        v292.size.height = v131;
        v134 = v234 - CGRectGetMinY(v292);
        v293.origin.x = v229 - v53 - v219;
        v233 = v133 + v134;
        v293.origin.y = v133 + v134;
        v293.size.width = v53;
        v293.size.height = v131;
        v135 = CGRectGetMaxY(v293);
        if (self->_disclaimerTextLabel)
        {
          v34 = v237;
          v294.origin.x = v236;
          v294.origin.y = v242 + v134;
          v294.size.width = v237;
          v294.size.height = v241;
          v135 = CGRectGetMaxY(v294);
          v255 = v236;
          v257 = v241;
          v260 = v242 + v134;
          v242 = v242 + v134;
        }

        v238 = v232 + v135;
        v136 = self->_separatorView;
        if (v136)
        {
          if (([(VUISeparatorView *)v136 isHidden]& 1) != 0)
          {
            v230 = v53;
            v126 = rect_16;
            v128 = rect_24;
            v114 = rect_8a;
          }

          else
          {
            v299.origin.x = v255;
            v299.size.height = v257;
            v299.origin.y = v260;
            v299.size.width = v34;
            CGRectGetMaxY(v299);
            VUIRoundValue();
            v114 = v159;
            v238 = v251 + v238;
            v230 = v53;
            v126 = rect_16;
            v128 = rect_24;
          }
        }

        else
        {
          v230 = v53;
          v126 = rect_16;
          v128 = rect_24;
          v114 = rect_8a;
        }

        v129 = v249;
        v137 = v250;
      }

      else
      {
        v233 = v133;
        v230 = v53;
        v126 = rect_16;
        v128 = rect_24;
        v114 = rect_8a;
        v137 = v250;
      }
    }

    else
    {
      x = v226;
      v137 = v250;
      v230 = v250;
      v131 = v129;
      v233 = v248;
    }

    if (self->_appleTVChannelLogoView)
    {
      v160 = self->_separatorView;
      if (v160)
      {
        v161 = v228;
      }

      else
      {
        v161 = v128;
      }

      v162 = v240;
      if (v160)
      {
        v34 = v239;
      }

      else
      {
        v34 = v126;
      }

      if (v160)
      {
        v162 = v114;
      }

      v257 = v161;
      v260 = v162;
      v128 = rect;
      v126 = v227;
      if (v160)
      {
        v128 = v227;
      }

      v255 = v128;
    }

    rect_8 = v114;
    descriptionTextView = self->_descriptionTextView;
    if (descriptionTextView)
    {
      [(UIView *)descriptionTextView setHidden:0, v128, v126];
      [(UIView *)self->_descriptionTextView vui_sizeThatFits:v224, 1.79769313e308];
      v137 = v164;
      v129 = v165;
      v166 = 10.0;
      if (!+[VUIUtilities isSUIEnabled])
      {
        [(UIView *)self->_descriptionTextView topMarginWithBaselineMargin:v23];
        v166 = v167;
      }

      v300.origin.x = v255;
      v300.size.height = v257;
      v300.origin.y = v260;
      v300.size.width = v34;
      CGRectGetMaxY(v300);
      VUIRoundValue();
      v301.origin.y = v168;
      v301.origin.x = v253;
      y = v301.origin.y;
      v301.size.width = v137;
      v301.size.height = v129;
      v169 = v166 + CGRectGetHeight(v301);
      [(UIView *)self->_descriptionTextView bottomMarginWithBaselineMargin:v262];
      v238 = v238 + v169 + v170;
    }

    else
    {
      y = v248;
      v253 = v226;
    }

    v252 = v131;
    textLabels = self->_textLabels;
    v231 = v129;
    v223 = v137;
    if (textLabels)
    {
      v215 = v111;
      v217 = a4;
      v172 = v235;
      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v173 = textLabels;
      v174 = [(NSArray *)v173 countByEnumeratingWithState:&v265 objects:v277 count:16];
      if (v174)
      {
        v175 = v174;
        v176 = v34;
        v177 = 0;
        v178 = *v266;
        v179 = 0.0;
        do
        {
          v180 = 0;
          v181 = v177;
          do
          {
            if (*v266 != v178)
            {
              objc_enumerationMutation(v173);
            }

            v182 = *(*(&v265 + 1) + 8 * v180);
            [v182 setHidden:{0, v215}];
            v183 = [v182 textLayout];
            [v183 margin];
            v185 = v184;
            v186 = [(NSArray *)self->_textLabels firstObject];

            if (v186 == v182)
            {
              v187 = v23;
            }

            else
            {
              v187 = v185;
            }

            [v182 topMarginToLabel:v181 withBaselineMargin:v187];
            v189 = v188;
            [v182 sizeThatFits:{v53, 0.0}];
            v191 = v190;
            v192 = [(NSArray *)self->_textLabels firstObject];

            if (v192 == v182)
            {
              v302.origin.x = v255;
              v302.size.height = v257;
              v302.origin.y = v260;
              v302.size.width = v176;
              v172 = v189 + CGRectGetMaxY(v302);
              v264 = v229 - v53 - v219;
            }

            else
            {
              v179 = v179 + v189;
            }

            v177 = v182;

            v179 = v191 + v179;
            v193 = [(NSArray *)self->_textLabels lastObject];

            if (v193 == v177)
            {
              [v177 bottomMarginWithBaselineMargin:v262];
              v179 = v179 + v194;
            }

            ++v180;
            v181 = v177;
          }

          while (v175 != v180);
          v175 = [(NSArray *)v173 countByEnumeratingWithState:&v265 objects:v277 count:16];
        }

        while (v175);
      }

      else
      {
        v177 = 0;
        v179 = 0.0;
      }

      v235 = v172;
      v195 = v238;
      if (v238 < v179 + v172)
      {
        v195 = v179 + v172;
      }

      v238 = v195;

      width = v229;
      a4 = v217;
      v111 = v215;
    }

    else
    {
      width = v229;
    }

    v259 = v253;
    v34 = v53;
    goto LABEL_150;
  }

  v43 = v25;
  v44 = self->_appleTVChannelLogoView;
  if (v44)
  {
    [(UIView *)v44 vui_sizeThatFits:v34, v37];
    rect_16 = v45;
    rect_24 = v46;
    rect = v253 + (v34 - v45) * 0.5;
    v47 = v234;
    v48 = v234 + v46;
    p_super = self->_appleTVChannelLogoView;
  }

  else
  {
    p_super = 0;
    v48 = 0.0;
    rect_16 = v250;
    rect_24 = v249;
    v47 = v248;
    rect = v35;
  }

  v62 = self->_separatorView;
  v240 = v47;
  if (v62)
  {
    [(VUISeparatorView *)v62 setHidden:0];
    v282.origin.x = rect;
    v282.origin.y = v47;
    v282.size.width = rect_16;
    v282.size.height = rect_24;
    CGRectGetMaxY(v282);
    v63 = v43;
    VUIRoundValue();
    v65 = v64;
    v66 = self->_separatorView;

    p_super = &v66->super.super;
    v254 = v253;
    v256 = v34;
    v48 = v63 + v251 + v48;
    v227 = v253;
    v228 = v251;
    v239 = v34;
    v67 = v65;
    rect_8 = v65;
  }

  else
  {
    v251 = rect_24;
    v67 = v47;
    v254 = rect;
    v256 = rect_16;
    v239 = v250;
    rect_8 = v248;
    v227 = v226;
    v228 = v249;
  }

  if ([(VUIChannelBannerView *)self isDescriptionPreferredOnPhoneSizeClass]&& (v70 = self->_descriptionTextView) != 0)
  {
    [(UIView *)v70 setHidden:0];
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v71 = self->_textLabels;
    v72 = [(NSArray *)v71 countByEnumeratingWithState:&v273 objects:v279 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v274;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v274 != v74)
          {
            objc_enumerationMutation(v71);
          }

          [*(*(&v273 + 1) + 8 * i) setHidden:1];
        }

        v73 = [(NSArray *)v71 countByEnumeratingWithState:&v273 objects:v279 count:16];
      }

      while (v73);
    }

    [(UIView *)self->_descriptionTextView vui_sizeThatFits:v34, 1.79769313e308];
    v77 = v76;
    v79 = v78;
    [(UIView *)self->_descriptionTextView topMarginWithBaselineMargin:v23];
    v81 = v80;
    v283.origin.x = v254;
    v283.size.width = v256;
    v283.origin.y = v67;
    v283.size.height = v251;
    CGRectGetMaxY(v283);
    VUIRoundValue();
    v83 = v82;
    v84 = self->_descriptionTextView;

    v85 = v253;
    v284.origin.x = v253;
    v284.origin.y = v83;
    v284.size.width = v77;
    v284.size.height = v79;
    p_super = v84;
    v231 = v79;
    v251 = v79;
    v48 = v48 + v81 + CGRectGetHeight(v284);
    v223 = v77;
    v254 = v253;
    v256 = v77;
    v67 = v83;
    width = v229;
  }

  else if (self->_textLabels)
  {
    v216 = a4;
    v86 = v235;
    [(UIView *)self->_descriptionTextView setHidden:1];
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    v261 = self->_textLabels;
    v87 = [(NSArray *)v261 countByEnumeratingWithState:&v269 objects:v278 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = 0;
      v90 = *v270;
      v91 = 0.0;
      do
      {
        for (j = 0; j != v88; ++j)
        {
          if (*v270 != v90)
          {
            objc_enumerationMutation(v261);
          }

          v93 = *(*(&v269 + 1) + 8 * j);
          [v93 setHidden:0];
          v94 = [v93 textLayout];
          [v94 margin];
          v96 = v95;
          v97 = [(NSArray *)self->_textLabels firstObject];

          if (v97 == v93)
          {
            v98 = v23;
          }

          else
          {
            v98 = v96;
          }

          [v93 topMarginToLabel:v89 withBaselineMargin:v98];
          v100 = v99;
          v101 = v34;
          [v93 sizeThatFits:{v34, 0.0}];
          v103 = v102;
          v104 = [(NSArray *)self->_textLabels firstObject];

          if (v104 == v93)
          {
            v285.origin.x = v254;
            v285.size.width = v256;
            v285.origin.y = v67;
            v285.size.height = v251;
            CGRectGetMaxY(v285);
            VUIRoundValue();
            v86 = v105;
            v48 = v48 + v100;
            v264 = v253;
          }

          else
          {
            v91 = v91 + v100;
          }

          v106 = v93;

          v91 = v103 + v91;
          v89 = v106;

          p_super = v89;
          v34 = v101;
        }

        v88 = [(NSArray *)v261 countByEnumeratingWithState:&v269 objects:v278 count:16];
        p_super = v89;
      }

      while (v88);
    }

    else
    {
      v89 = 0;
      v91 = 0.0;
    }

    v48 = v91 + v48;
    v251 = v91;
    v67 = v86;
    v235 = v86;
    v254 = v264;
    v256 = v34;
    v231 = v249;
    v223 = v250;
    v83 = v248;
    v85 = v226;
    width = v229;
    a4 = v216;
  }

  else
  {
    v231 = v249;
    v223 = v250;
    v83 = v248;
    v85 = v226;
  }

  v259 = v85;
  y = v83;
  if (self->_subscribeButton)
  {
    [(VUIChannelBannerView *)self _subscribeButtonHeight];
    v139 = v138;
    objc_opt_class();
    v140 = v34;
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_subscribeButton width];
      if (v141 == 0.0)
      {
        v140 = v34;
      }

      else
      {
        v140 = v141;
      }
    }

    x = v253 + (v34 - v140) * 0.5;
    [(UIView *)p_super bottomMarginWithBaselineMargin:30.0];
    v143 = v48 + v142;
    v295.origin.x = v254;
    v295.size.width = v256;
    v295.origin.y = v67;
    v295.size.height = v251;
    CGRectGetMaxY(v295);
    VUIRoundValue();
    v145 = v144;
    v296.origin.x = x;
    v296.origin.y = v145;
    v296.size.width = v140;
    v296.size.height = v139;
    v48 = v143 + CGRectGetHeight(v296);
    v230 = v140;
    v254 = x;
    v256 = v140;
    v252 = v139;
    v67 = v145;
    v233 = v145;
    v146 = v226;
    v147 = v248;
    v148 = v249;
    v149 = v250;
  }

  else
  {
    v149 = v250;
    v139 = v251;
    v147 = v248;
    v148 = v249;
    v252 = v249;
    v230 = v250;
    v233 = v248;
    v146 = v226;
    x = v226;
  }

  v150 = self->_disclaimerTextLabel;
  v241 = v148;
  v242 = v147;
  if (v150)
  {
    [(VUILabel *)v150 sizeThatFits:v34, 0.0, v149];
    v220 = x;
    v152 = v151;
    [(VUILabel *)self->_disclaimerTextLabel topMarginWithBaselineMargin:v218];
    v154 = v153;
    v297.origin.x = v254;
    v297.size.width = v256;
    v297.origin.y = v67;
    v297.size.height = v139;
    CGRectGetMaxY(v297);
    VUIRoundValue();
    v156 = v155;
    [(VUILabel *)self->_disclaimerTextLabel bottomMarginWithBaselineMargin:24.0];
    v158 = v157;
    v298.origin.x = v253;
    v241 = v152;
    v242 = v156;
    v298.origin.y = v156;
    v298.size.width = v34;
    v298.size.height = v152;
    x = v220;
    v262 = v158 + v154 + CGRectGetHeight(v298);
    v149 = v34;
    v146 = v253;
  }

  v236 = v146;
  v237 = v149;
  v238 = v48 + v262;

LABEL_150:
  v35 = v226;
  v41 = v248;
LABEL_151:
  [(VUIChannelBannerView *)self height];
  v263 = v34;
  if (v196 <= 0.0)
  {
    v198 = v235;
    v197 = v238;
  }

  else
  {
    v197 = v196;
    if (a4)
    {
      v198 = v235;
    }

    else
    {
      v199 = width;
      v200 = v196 - v238;
      v303.origin.x = rect;
      v303.origin.y = v240;
      v303.size.width = rect_16;
      v303.size.height = rect_24;
      v304 = CGRectOffset(v303, 0.0, v197 - v238);
      rect = v304.origin.x;
      v240 = v304.origin.y;
      rect_16 = v304.size.width;
      rect_24 = v304.size.height;
      v304.origin.x = x;
      v304.origin.y = v233;
      v304.size.width = v230;
      v304.size.height = v252;
      v305 = CGRectOffset(v304, 0.0, v200);
      x = v305.origin.x;
      v233 = v305.origin.y;
      v230 = v305.size.width;
      v252 = v305.size.height;
      v305.origin.x = v236;
      v305.size.width = v237;
      v305.size.height = v241;
      v305.origin.y = v242;
      v306 = CGRectOffset(v305, 0.0, v200);
      v236 = v306.origin.x;
      v237 = v306.size.width;
      v241 = v306.size.height;
      v242 = v306.origin.y;
      v306.origin.x = v227;
      v306.size.height = v228;
      v306.origin.y = rect_8;
      v306.size.width = v239;
      v307 = CGRectOffset(v306, 0.0, v200);
      v227 = v307.origin.x;
      v228 = v307.size.height;
      rect_8 = v307.origin.y;
      v239 = v307.size.width;
      v198 = v235 + v200;
      v307.origin.x = v259;
      v307.origin.y = y;
      v307.size.width = v223;
      v307.size.height = v231;
      v201 = v200;
      width = v199;
      v308 = CGRectOffset(v307, 0.0, v201);
      v259 = v308.origin.x;
      y = v308.origin.y;
      v223 = v308.size.width;
      v231 = v308.size.height;
    }
  }

  bgImageView = self->_bgImageView;
  if (v197 >= height)
  {
    v203 = v197;
  }

  else
  {
    v203 = height;
  }

  if (bgImageView)
  {
    v204 = 0.0;
  }

  else
  {
    v204 = v35;
  }

  if (bgImageView)
  {
    v205 = 0.0;
  }

  else
  {
    v205 = v41;
  }

  if (bgImageView)
  {
    v206 = width;
  }

  else
  {
    v206 = v250;
  }

  if (bgImageView)
  {
    v207 = v203;
  }

  else
  {
    v207 = v249;
  }

  if (!a4)
  {
    if (v197 >= height)
    {
      v221 = x;
      v209 = v227;
      v210 = v228;
      v211 = y;
      v212 = v223;
    }

    else
    {
      v208 = v205;
      v309.origin.x = rect;
      v309.origin.y = v240;
      v258 = v204;
      v309.size.width = rect_16;
      v309.size.height = rect_24;
      v310 = CGRectOffset(v309, 0.0, height - v197);
      rect = v310.origin.x;
      v240 = v310.origin.y;
      rect_16 = v310.size.width;
      rect_24 = v310.size.height;
      v310.origin.x = x;
      v310.origin.y = v233;
      v310.size.width = v230;
      v310.size.height = v252;
      v311 = CGRectOffset(v310, 0.0, height - v197);
      v221 = v311.origin.x;
      v233 = v311.origin.y;
      v230 = v311.size.width;
      v252 = v311.size.height;
      v311.origin.x = v236;
      v311.size.width = v237;
      v311.size.height = v241;
      v311.origin.y = v242;
      v312 = CGRectOffset(v311, 0.0, height - v197);
      v236 = v312.origin.x;
      v237 = v312.size.width;
      v241 = v312.size.height;
      v242 = v312.origin.y;
      v312.origin.x = v227;
      v312.size.height = v228;
      v312.origin.y = rect_8;
      v312.size.width = v239;
      v313 = CGRectOffset(v312, 0.0, height - v197);
      v209 = v313.origin.x;
      rect_8 = v313.origin.y;
      v239 = v313.size.width;
      v210 = v313.size.height;
      v198 = v198 + height - v197;
      v313.origin.x = v259;
      v313.origin.y = y;
      v313.size.width = v223;
      v313.size.height = v231;
      v314 = CGRectOffset(v313, 0.0, height - v197);
      v205 = v208;
      v259 = v314.origin.x;
      v211 = v314.origin.y;
      v212 = v314.size.width;
      v231 = v314.size.height;
      v204 = v258;
      bgImageView = self->_bgImageView;
    }

    [(VUIProductUberBackgroundView *)bgImageView setFrame:v204, v205, v206, v207];
    [(UIView *)self->_appleTVChannelLogoView setFrame:rect, v240, rect_16, rect_24];
    [(UIView *)self->_subscribeButton setFrame:v221, v233, v230, v252];
    [(VUILabel *)self->_disclaimerTextLabel setFrame:v236, v242, v237, v241];
    [(VUISeparatorView *)self->_separatorView setFrame:v209, rect_8, v239, v210];
    [(VUIChannelBannerView *)self _layoutLabels:self->_textLabels withOrigin:v264 maxWidth:v198, v263];
    [(UIView *)self->_descriptionTextView setFrame:v259, v211, v212, v231];
    width = v229;
  }

  v213 = width;
  v214 = v197;
  result.height = v214;
  result.width = v213;
  return result;
}

- (BOOL)_isSubscribed
{
  if (self->_descriptionTextView)
  {
    return 0;
  }

  textLabels = self->_textLabels;
  return (!textLabels || ![(NSArray *)textLabels count]) && !self->_subscribeButton && self->_disclaimerTextLabel == 0;
}

- (double)_subscribeButtonHeight
{
  if (!+[VUIUtilities isSUIEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_subscribeButton;
      v5 = [(UIView *)v4 textContentView];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 textLayout];
        v8 = [v7 maximumContentSizeCategory];

LABEL_10:
        v9 = MEMORY[0x1E69DF6D0];
        [(UIView *)v4 height];
        v11 = v10;
        v12 = [(VUIChannelBannerView *)self vuiTraitCollection];
        [v9 scaleContentSizeValue:v12 forTraitCollection:v8 maximumContentSizeCategory:v11];
        v14 = v13;

        return v14;
      }
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_10;
  }

  [(VUIChannelBannerView *)self subscribeButtonHeight];
  return result;
}

- (void)_layoutLabels:(id)a3 withOrigin:(CGPoint)a4 maxWidth:(double)a5
{
  y = a4.y;
  x = a4.x;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    v13 = y;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v26 + 1) + 8 * v14);
        v17 = [v16 textLayout];
        [v17 margin];
        v19 = v18;
        [v16 vui_sizeThatFits:{a5, 0.0}];
        v21 = v20;
        v22 = [v8 firstObject];

        if (v22 == v16)
        {
          v24 = y;
        }

        else
        {
          if (v15)
          {
            [v16 topMarginToLabel:v15 withBaselineMargin:v19];
          }

          else
          {
            [v16 topMarginWithBaselineMargin:v19];
          }

          v13 = v13 + v23;
          VUIRoundValue();
          v24 = v25;
        }

        [v16 setFrame:{x, v24, a5, v21}];
        v11 = v16;

        v13 = v21 + v13;
        ++v14;
        v15 = v11;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }
}

@end