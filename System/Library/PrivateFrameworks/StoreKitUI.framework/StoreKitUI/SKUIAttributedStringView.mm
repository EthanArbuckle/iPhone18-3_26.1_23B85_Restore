@interface SKUIAttributedStringView
+ (CGSize)sizeWithLayout:(id)a3 treatment:(int64_t)a4;
- (BOOL)_touchInsideLinkText:(CGPoint)a3 linkTextRange:(_NSRange *)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (SKUIAttributedStringView)initWithFrame:(CGRect)a3;
- (SKUILinkHandler)linkDelegate;
- (void)_reloadTopInset;
- (void)_setTouchInside:(BOOL)a3;
- (void)_setTrackingTouch:(BOOL)a3;
- (void)_setupTapLocatorContainer;
- (void)drawRect:(CGRect)a3;
- (void)setBadgePlacement:(int64_t)a3;
- (void)setFirstLineTopInset:(int64_t)a3;
- (void)setLayout:(id)a3;
- (void)setRequiredBadges:(id)a3;
- (void)setStringTreatment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)setTextColorFollowsTintColor:(BOOL)a3;
- (void)setTreatmentColor:(id)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)viewWasRecycled;
@end

@implementation SKUIAttributedStringView

- (SKUIAttributedStringView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAttributedStringView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIAttributedStringView;
  v8 = [(SKUIAttributedStringView *)&v11 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIAttributedStringView *)v8 setContentMode:3];
  }

  return v9;
}

- (void)viewWasRecycled
{
  layout = self->_layout;
  self->_layout = 0;

  layoutManager = self->_layoutManager;
  self->_layoutManager = 0;

  requiredBadges = self->_requiredBadges;
  self->_requiredBadges = 0;

  textColor = self->_textColor;
  self->_textColor = 0;

  textContainer = self->_textContainer;
  self->_textContainer = 0;

  textStorage = self->_textStorage;
  self->_textStorage = 0;

  treatmentColor = self->_treatmentColor;
  self->_treatmentColor = 0;
}

+ (CGSize)sizeWithLayout:(id)a3 treatment:(int64_t)a4
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIAttributedStringView sizeWithLayout:treatment:];
  }

  [v5 boundingSize];
  v8 = v6;
  v9 = v7;
  if (a4 == 1)
  {
    v8 = v6 + 14.0;
    v10 = v7 + 6.0;
    v11 = v5;
    v12 = [v11 attributedString];
    v13 = [v12 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

    [v11 baselineOffset];
    v15 = v14;
    [v13 capHeight];
    v17 = v15 - v16;
    [v13 _bodyLeading];
    v19 = v17 - v18 * ([v11 numberOfLines] - 1);
    [v11 topInset];
    v21 = v20;

    v22 = v21 + v19;
    v23 = ceilf(v22);

    v9 = v10 - v23;
  }

  v24 = v8;
  v25 = v9;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)setBadgePlacement:(int64_t)a3
{
  if (self->_badgePlacement != a3)
  {
    self->_badgePlacement = a3;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setFirstLineTopInset:(int64_t)a3
{
  if (self->_firstLineTopInset != a3)
  {
    self->_firstLineTopInset = a3;
    [(SKUIAttributedStringView *)self _reloadTopInset];

    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  if (self->_layout != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_layout, a3);
    textStorage = self->_textStorage;
    if (textStorage)
    {
      if (v8)
      {
        v7 = [(SKUIAttributedStringLayout *)v8 attributedString];
        [(NSTextStorage *)textStorage setAttributedString:v7];
      }

      else
      {
        [(NSTextStorage *)textStorage deleteCharactersInRange:0, [(NSTextStorage *)textStorage length]];
      }
    }

    [(SKUIAttributedStringView *)self _reloadTopInset];
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    v5 = v8;
  }
}

- (void)setRequiredBadges:(id)a3
{
  if (self->_requiredBadges != a3)
  {
    v4 = [a3 copy];
    requiredBadges = self->_requiredBadges;
    self->_requiredBadges = v4;

    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setStringTreatment:(int64_t)a3
{
  if (self->_stringTreatment != a3)
  {
    self->_stringTreatment = a3;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setTextColorFollowsTintColor:(BOOL)a3
{
  if (self->_textColorFollowsTintColor != a3)
  {
    self->_textColorFollowsTintColor = a3;
    if (!self->_textColor)
    {
      [(SKUIAttributedStringView *)self setNeedsDisplay];
    }
  }
}

- (void)setTreatmentColor:(id)a3
{
  v5 = a3;
  if (self->_treatmentColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_treatmentColor, a3);
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (NSString)description
{
  v3 = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  v4 = [v3 string];

  v5 = [v4 length];
  v6 = MEMORY[0x277CCACA8];
  if (v5 > 0x13)
  {
    v11.receiver = self;
    v11.super_class = SKUIAttributedStringView;
    v7 = [(SKUIAttributedStringView *)&v11 description];
    v9 = [v4 substringToIndex:20];
    v8 = [v6 stringWithFormat:@"%@: %@...", v7, v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SKUIAttributedStringView;
    v7 = [(SKUIAttributedStringView *)&v12 description];
    v8 = [v6 stringWithFormat:@"%@: %@", v7, v4];
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  [v8 locationInView:self];
  if ([(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?])
  {
    [(SKUIAttributedStringView *)self _setTrackingTouch:1];
    [(SKUIAttributedStringView *)self _setTouchInside:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v9 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if (self->_trackingTouch)
  {
    v5 = [a3 anyObject];
    [v5 locationInView:self];
    [(SKUIAttributedStringView *)self _setTouchInside:[(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?]];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v6 touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_trackingTouch)
  {
    v8 = [a3 anyObject];
    [v8 locationInView:self];
    if ([(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?])
    {
      WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);
      v6 = [WeakRetained conformsToProtocol:&unk_282999BF8];

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_linkDelegate);
        [v7 linkTapped:self range:{self->_trackingRange.location, self->_trackingRange.length}];
      }
    }

    [(SKUIAttributedStringView *)self _setTrackingTouch:0];
    [(SKUIAttributedStringView *)self _setTouchInside:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v9 touchesEnded:a3 withEvent:a4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if (self->_trackingTouch)
  {
    [(SKUIAttributedStringView *)self _setTrackingTouch:0, a4];

    [(SKUIAttributedStringView *)self _setTouchInside:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v5 touchesCancelled:a3 withEvent:a4];
  }
}

- (void)drawRect:(CGRect)a3
{
  v192 = *MEMORY[0x277D85DE8];
  [(SKUIAttributedStringView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  rect.origin.x = *MEMORY[0x277CBF3A0];
  v13 = v7 + self->_calculatedTopInset;
  [(SKUIAttributedStringLayout *)self->_layout topInset];
  v15 = v13 + v14;
  [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
  v17.f64[1] = v16;
  v19.f64[1] = v18;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, *MEMORY[0x277D768C8]), vceqq_f64(v19, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
    v15 = v15 + v20;
    [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
    rect.origin.x = rect.origin.x + v21;
  }

  [(SKUIAttributedStringLayout *)self->_layout boundingSize];
  v24 = self->_badgePlacement == 1;
  if (v11 < v23 || self->_badgePlacement == 1)
  {
    v23 = v11;
  }

  v169 = v23;
  if (v9 < v22)
  {
    v24 = 1;
  }

  if (v24)
  {
    v26 = v9;
  }

  else
  {
    v26 = v22;
  }

  if (self->_stringTreatment == 1)
  {
    treatmentColor = self->_treatmentColor;
    if (treatmentColor)
    {
      [(UIColor *)treatmentColor set];
      v28 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, 6.0}];
      [v28 fill];

      v29 = self->_layout;
      v30 = [(SKUIAttributedStringLayout *)v29 attributedString];
      v31 = [v30 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      [(SKUIAttributedStringLayout *)v29 baselineOffset];
      v33 = v32;
      [v31 capHeight];
      v35 = v33 - v34;
      [v31 _bodyLeading];
      v37 = v35 - v36 * ([(SKUIAttributedStringLayout *)v29 numberOfLines]- 1);
      [(SKUIAttributedStringLayout *)v29 topInset];
      v39 = v38;

      v40 = v39 + v37;
      v41 = ceilf(v40);

      [(SKUIAttributedStringLayout *)self->_layout topInset];
      *&v42 = v42 + (v11 - (v169 - v41)) * 0.5 - v41 * 0.5;
      v15 = floorf(*&v42);
      rect.origin.x = 7.0;
    }
  }

  v43 = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  if (v43)
  {
    v44 = v43;
    v45 = [(NSArray *)self->_requiredBadges count];
    v167 = v45;
    v170 = v26;
    if (v45 < 1)
    {
      v46 = *MEMORY[0x277CBF3A8];
      v51 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      rect.origin.y = v5;
      v46 = ((v45 - 1) * 4.0);
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v47 = self->_requiredBadges;
      v48 = [(NSArray *)v47 countByEnumeratingWithState:&v184 objects:v191 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v185;
        v51 = 0.0;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v185 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [*(*(&v184 + 1) + 8 * i) badgeSize];
            if (v51 < v54)
            {
              v51 = v54;
            }

            v46 = v46 + v53;
          }

          v49 = [(NSArray *)v47 countByEnumeratingWithState:&v184 objects:v191 count:16];
        }

        while (v49);
      }

      else
      {
        v51 = 0.0;
      }

      if (!self->_badgePlacement)
      {
        [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
        v57 = v56;
        v58 = v170;
        v59 = v9;
        if (v170 >= v9 - v46 + -4.0 - rect.origin.x)
        {
          v58 = v9 - v46 + -4.0 - rect.origin.x;
        }

        v170 = v58;
        if (ShouldReverseLayoutDirection)
        {
          y = rect.origin.y;
          v61 = v7;
          v62 = v11;
          MaxX = CGRectGetMaxX(*(&v59 - 2));
          v194.origin.x = rect.origin.x;
          v194.origin.y = v15;
          v194.size.width = v58;
          v194.size.height = v169;
          rect.origin.y = MaxX - CGRectGetWidth(v194);
          v195.origin.x = rect.origin.x;
          v195.origin.y = v15;
          v195.size.width = v58;
          v64 = v169;
          v195.size.height = v169;
          rect.origin.x = rect.origin.y - CGRectGetMinX(v195);
        }

        else
        {
          v64 = v169;
        }

        if (v51 > v57)
        {
          v65 = v51 - v57 + 3.0;
          v15 = v15 + ceilf(v65);
        }

        v55 = v64;
        goto LABEL_40;
      }
    }

    v55 = v169;
LABEL_40:
    if (self->_textColorFollowsTintColor)
    {
      v66 = [(SKUIAttributedStringView *)self tintColor];
    }

    else
    {
      v66 = self->_textColor;
    }

    v67 = v66;
    if (v66)
    {
      v68 = [v44 mutableCopy];
      [v68 addAttribute:*MEMORY[0x277D740C0] value:v67 range:{0, objc_msgSend(v68, "length")}];

      v44 = v68;
    }

    if (self->_containsLinks)
    {
      v69 = [v44 mutableCopy];
      v70 = [v44 length];
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __37__SKUIAttributedStringView_drawRect___block_invoke;
      v182[3] = &unk_2781FFEB8;
      v182[4] = self;
      v71 = v69;
      v183 = v71;
      [v44 enumerateAttributesInRange:0 options:v70 usingBlock:{0, v182}];
      v72 = v71;

      self->_textBounds.origin.x = rect.origin.x;
      self->_textBounds.origin.y = v15;
      self->_textBounds.size.width = v170 + 10.0;
      self->_textBounds.size.height = v55;
      textContainer = self->_textContainer;
      if (textContainer)
      {
        [(NSTextContainer *)textContainer setContainerSize:?];
      }
    }

    else
    {
      v72 = v44;
    }

    v74 = [(SKUIAttributedStringLayout *)self->_layout shadow];
    v168 = v15;
    if (v74)
    {
      v75 = [v72 mutableCopy];
      [v75 removeAttribute:*MEMORY[0x277D74138] range:{0, objc_msgSend(v75, "length")}];

      CurrentContext = UIGraphicsGetCurrentContext();
      [v74 shadowOffset];
      v77 = v55;
      v79 = v78;
      v81 = v80;
      [v74 shadowBlurRadius];
      v83 = v82;
      v84 = [v74 shadowColor];
      v85 = [v84 CGColor];
      v193.width = v79;
      v55 = v77;
      v193.height = v81;
      v86 = v83;
      v15 = v168;
      CGContextSetShadowWithColor(CurrentContext, v193, v86, v85);

      v72 = v75;
    }

    if (self->_badgePlacement == 1)
    {
      v87 = [v72 mutableCopy];
      v180 = 0;
      v181 = [v72 length];
      v88 = [v87 length] - 1;
      v89 = [v87 attribute:*MEMORY[0x277D740A8] atIndex:v88 effectiveRange:&v180];
      v162 = v89;
      if (v89)
      {
        [v89 descender];
      }

      else
      {
        v90 = 0.0;
      }

      rect.origin.y = v90;
      v94 = *MEMORY[0x277D74118];
      v95 = [v87 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:&v180];
      v163 = v74;
      v164 = v72;
      v161 = v95;
      if (v95 && (v96 = v95, [v95 lineBreakMode]))
      {
        v97 = [v96 lineBreakMode];
        v98 = [v96 mutableCopy];
        [v98 setLineBreakMode:0];
        [v87 addAttribute:v94 value:v98 range:{v180, v181}];

        v99 = 1;
      }

      else
      {
        v99 = 0;
        v97 = 4;
      }

      v165 = v67;
      v166 = v9;
      v100 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:v87];
      v101 = objc_alloc_init(MEMORY[0x277D74238]);
      v160 = v100;
      [v100 addLayoutManager:v101];
      v102 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{v170, v55}];
      [v102 setLineFragmentPadding:0.0];
      if (v99)
      {
        [v102 setLineBreakMode:v97];
      }

      [v101 addTextContainer:v102];
      v103 = [v101 glyphRangeForTextContainer:v102];
      v105 = v104;
      v179[0] = v103;
      v179[1] = v104;
      [v101 lineFragmentUsedRectForGlyphAtIndex:v88 effectiveRange:v179];
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      [v101 locationForGlyphAtIndex:v88];
      v115 = v114;
      v196.origin.x = v107;
      v196.origin.y = v109;
      v159 = v111;
      v196.size.width = v111;
      v196.size.height = v113;
      MaxY = CGRectGetMaxY(v196);
      v197.size.width = v170;
      v197.origin.x = rect.origin.x;
      v197.origin.y = v168;
      v197.size.height = v55;
      if (v46 > CGRectGetMaxX(v197) - v115)
      {
        v198.origin.x = rect.origin.x;
        v157 = v107;
        v198.size.height = v169;
        v198.origin.y = v168;
        v198.size.width = v170;
        v158 = CGRectGetMaxX(v198) - (v46 + 4.0);
        v199.origin.x = v107;
        v199.origin.y = v109;
        v199.size.width = v159;
        v199.size.height = v113;
        v116 = rect.origin.y + CGRectGetMaxY(v199) - v51;
        v200.origin.x = rect.origin.x;
        v200.origin.y = v168;
        v200.size.height = v169;
        v200.size.width = v170;
        v55 = v169;
        v117 = [MEMORY[0x277D75208] bezierPathWithRect:{v158, v116, CGRectGetMaxX(v200) - v158, v51}];
        v190 = v117;
        v118 = [MEMORY[0x277CBEA60] arrayWithObjects:&v190 count:1];
        [v102 setExclusionPaths:v118];

        v115 = v158 + -4.0;
      }

      v92 = v115;
      [v101 drawGlyphsForGlyphRange:v103 atPoint:{v105, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *&v157}];

      v9 = v166;
      v15 = v168;
      v93 = v170;
      v67 = v165;
      v74 = v163;
      v72 = v164;
    }

    else
    {
      v92 = *MEMORY[0x277CBF348];
      MaxY = *(MEMORY[0x277CBF348] + 8);
      v87 = [(SKUIAttributedStringLayout *)self->_layout stringDrawingContext];
      v93 = v170;
      [v72 drawWithRect:33 options:v87 context:{rect.origin.x, v15, v170, v55}];
      rect.origin.y = 0.0;
    }

    if (v167 >= 1)
    {
      if (self->_badgePlacement == 1)
      {
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v119 = self->_requiredBadges;
        v120 = [(NSArray *)v119 countByEnumeratingWithState:&v175 objects:v189 count:16];
        if (v120)
        {
          v121 = v120;
          v122 = v72;
          v123 = v92 + 4.0;
          v124 = *v176;
          do
          {
            for (j = 0; j != v121; ++j)
            {
              if (*v176 != v124)
              {
                objc_enumerationMutation(v119);
              }

              v126 = *(*(&v175 + 1) + 8 * j);
              [v126 badgeSize];
              v128 = v127;
              v130 = v129;
              v131 = [v126 image];
              if (v131)
              {
                v132 = v123;
                v133 = roundf(v132);
                v134 = [MEMORY[0x277D759A0] mainScreen];
                [v134 scale];
                *&v135 = rect.origin.y + MaxY - v130 + 1.0 / v135;
                v136 = roundf(*&v135);

                [v131 drawInRect:{v133, v136, v128, v130}];
              }

              v123 = v123 + v128 + 4.0;
            }

            v121 = [(NSArray *)v119 countByEnumeratingWithState:&v175 objects:v189 count:16];
          }

          while (v121);
          v72 = v122;
        }
      }

      else
      {
        [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
        v138 = v137;
        if (ShouldReverseLayoutDirection)
        {
          v201.origin.x = rect.origin.x;
          v201.origin.y = v15;
          v201.size.width = v93;
          v201.size.height = v55;
          v139 = fmax(CGRectGetMinX(v201) + -4.0 - v46, 0.0);
        }

        else
        {
          v202.size.height = v55;
          v139 = v9 - v46;
          v202.origin.x = rect.origin.x;
          v202.origin.y = v15;
          v202.size.width = v93;
          v140 = CGRectGetMaxX(v202) + 4.0;
          if (v9 - v46 >= v140)
          {
            v139 = v140;
          }
        }

        v173 = 0u;
        v174 = 0u;
        rect.size = 0u;
        v172 = 0u;
        v119 = self->_requiredBadges;
        v141 = [(NSArray *)v119 countByEnumeratingWithState:&rect.size objects:v188 count:16];
        if (v141)
        {
          v142 = v141;
          v143 = v74;
          v144 = v72;
          v145 = *v172;
          v146 = v15 + v138;
          do
          {
            for (k = 0; k != v142; ++k)
            {
              if (*v172 != v145)
              {
                objc_enumerationMutation(v119);
              }

              v148 = *(*&rect.size.height + 8 * k);
              [v148 badgeSize];
              v150 = v149;
              v152 = v151;
              v153 = [v148 image];
              v154 = v153;
              if (v153)
              {
                v155 = v146 - v152;
                [v153 drawInRect:{v139, roundf(v155), v150, v152}];
              }

              v156 = v150 + 4.0;
              if (ShouldReverseLayoutDirection)
              {
                v156 = -(v46 + -4.0);
              }

              v139 = v139 + v156;
            }

            v142 = [(NSArray *)v119 countByEnumeratingWithState:&rect.size objects:v188 count:16];
          }

          while (v142);
          v72 = v144;
          v74 = v143;
        }
      }
    }
  }
}

void __37__SKUIAttributedStringView_drawRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = [v14 objectForKey:@"SKUILinkAttributeName"];

  if (v7)
  {
    if ((v8 = *(a1 + 32), *(v8 + 456) != 1) || *(v8 + 480) != 1 || ((v9 = (v8 + 464), v11 = *v9, v10 = v9[1], a3 == v11) ? (v12 = a4 == v10) : (v12 = 0), !v12))
    {
      v13 = [v14 objectForKey:@"SKUILinkColorAttributeName"];
      if (!v13)
      {
        v13 = [*(a1 + 32) tintColor];
      }

      [*(a1 + 40) addAttribute:*MEMORY[0x277D740C0] value:v13 range:{a3, a4}];
    }
  }
}

- (void)_setupTapLocatorContainer
{
  if (!self->_textContainer)
  {
    v3 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{self->_textBounds.size.width, self->_textBounds.size.height}];
    textContainer = self->_textContainer;
    self->_textContainer = v3;

    v5 = objc_alloc_init(MEMORY[0x277D74238]);
    layoutManager = self->_layoutManager;
    self->_layoutManager = v5;

    [(NSLayoutManager *)self->_layoutManager addTextContainer:self->_textContainer];
    v7 = objc_alloc_init(MEMORY[0x277D742D8]);
    textStorage = self->_textStorage;
    self->_textStorage = v7;

    [(NSTextStorage *)self->_textStorage addLayoutManager:self->_layoutManager];
    v9 = objc_alloc(MEMORY[0x277CCAB48]);
    v10 = [(SKUIAttributedStringLayout *)self->_layout attributedString];
    v13 = [v9 initWithAttributedString:v10];

    v11 = objc_alloc_init(MEMORY[0x277D74240]);
    v12 = [v13 length];
    [v13 addAttribute:*MEMORY[0x277D74118] value:v11 range:{0, v12}];
    [(NSTextStorage *)self->_textStorage setAttributedString:v13];
  }
}

- (BOOL)_touchInsideLinkText:(CGPoint)a3 linkTextRange:(_NSRange *)a4
{
  if (!self->_containsLinks)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  [(SKUIAttributedStringView *)self bounds];
  v16.x = x;
  v16.y = y;
  if (!CGRectContainsPoint(v17, v16))
  {
    return 0;
  }

  v8 = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  v9 = [v8 length];
  if (v9 < 1)
  {
    v14 = 0;
  }

  else
  {
    v10 = v9;
    [(SKUIAttributedStringView *)self _setupTapLocatorContainer];
    [(NSLayoutManager *)self->_layoutManager enumerateLineFragmentsForGlyphRange:0 usingBlock:v10, &__block_literal_global_54];
    v11 = self->_textBounds.origin.y;
    v12 = y + v11;
    if (v11 == 0.0)
    {
      v12 = y;
    }

    v13 = [v8 attribute:@"SKUILinkAttributeName" atIndex:-[NSLayoutManager characterIndexForGlyphAtIndex:](self->_layoutManager longestEffectiveRange:"characterIndexForGlyphAtIndex:" inRange:{-[NSLayoutManager glyphIndexForPoint:inTextContainer:](self->_layoutManager, "glyphIndexForPoint:inTextContainer:", self->_textContainer, x, v12)), a4, 0, v10}];

    v14 = v13 != 0;
  }

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v42 = *MEMORY[0x277D85DE8];
  layout = self->_layout;
  if (layout)
  {
    [(SKUIAttributedStringLayout *)layout boundingSize:a3.width];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5 + self->_calculatedTopInset;
  if (self->_stringTreatment == 1)
  {
    v7 = v7 + 14.0;
    v9 = v8 + 6.0;
    v10 = self->_layout;
    v11 = [(SKUIAttributedStringLayout *)v10 attributedString];
    v12 = [v11 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

    [(SKUIAttributedStringLayout *)v10 baselineOffset];
    v14 = v13;
    [v12 capHeight];
    v16 = v14 - v15;
    [v12 _bodyLeading];
    v18 = v16 - v17 * ([(SKUIAttributedStringLayout *)v10 numberOfLines]- 1);
    [(SKUIAttributedStringLayout *)v10 topInset];
    v20 = v19;

    v21 = v20 + v18;
    v22 = ceilf(v21);

    v8 = v9 - v22;
  }

  v23 = [(NSArray *)self->_requiredBadges count];
  if (v23 >= 1)
  {
    v24 = v23;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = self->_requiredBadges;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      v29 = 0.0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v37 + 1) + 8 * i) badgeSize];
          v7 = v7 + v32;
          if (v29 < v31)
          {
            v29 = v31;
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v27);
    }

    else
    {
      v29 = 0.0;
    }

    v7 = v7 + (v24 * 4.0);
    if (self->_badgePlacement != 1)
    {
      [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
      if (v29 > v33)
      {
        v34 = v29 - v33 + 3.0;
        v8 = v8 + ceilf(v34);
      }
    }
  }

  v35 = v7;
  v36 = v8;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SKUIAttributedStringView;
  [(SKUIAttributedStringView *)&v3 tintColorDidChange];
  if (self->_textColorFollowsTintColor)
  {
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)_reloadTopInset
{
  self->_calculatedTopInset = 0.0;
  layout = self->_layout;
  if (layout)
  {
    if (self->_firstLineTopInset)
    {
      v4 = layout;
      v5 = [(SKUIAttributedStringLayout *)v4 attributedString];
      v6 = [v5 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      [(SKUIAttributedStringLayout *)v4 baselineOffset];
      v8 = v7;
      [v6 capHeight];
      v10 = v8 - v9;
      [v6 _bodyLeading];
      v12 = v10 - v11 * ([(SKUIAttributedStringLayout *)v4 numberOfLines]- 1);
      [(SKUIAttributedStringLayout *)v4 topInset];
      v14 = v13;

      v15 = v14 + v12;
      v16 = ceilf(v15);

      self->_calculatedTopInset = self->_firstLineTopInset - v16;
    }
  }
}

- (void)_setTrackingTouch:(BOOL)a3
{
  if (self->_trackingTouch != a3)
  {
    self->_trackingTouch = a3;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)_setTouchInside:(BOOL)a3
{
  if (self->_touchInside != a3)
  {
    self->_touchInside = a3;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (SKUILinkHandler)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAttributedStringView initWithFrame:]";
}

+ (void)sizeWithLayout:treatment:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAttributedStringView sizeWithLayout:treatment:]";
}

@end