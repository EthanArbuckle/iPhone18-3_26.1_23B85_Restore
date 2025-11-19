@interface BFFLinkLabelFooterView
+ (void)initialize;
- (BFFLinkLabelFooterView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 shouldSetSize:(BOOL)a4;
- (UIEdgeInsets)margins;
- (void)addFooterLinkWithAttributedTitle:(id)a3 handler:(id)a4;
- (void)addLinkWithTitle:(id)a3 textStyle:(id)a4 handler:(id)a5;
- (void)layoutSubviews;
- (void)removeAllLinks;
- (void)removeLinkAtIndex:(unint64_t)a3;
- (void)setAttributedSubtitleText:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLabelText:(id)a3;
- (void)setTopLineColor:(id)a3;
@end

@implementation BFFLinkLabelFooterView

+ (void)initialize
{
  v2 = BFFIsiPad();
  v3 = 1.0;
  if (v2)
  {
    v3 = 11.0;
  }

  v4 = 12.0;
  if (v2)
  {
    v4 = 17.0;
  }

  MinimumVerticalMarginBeforeTopLink = *&v3;
  MinimumVerticalMarginBeforeSoloLink = *&v3;
  if (v2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 10.0;
  }

  MinimumVerticalMarginAfterTopLink = *&v4;
  MinimumHorizontalMargin = *&v5;
  MinimumVerticalMarginAfterLabel = 0x4018000000000000;
  MinimumVerticalMarginAfterBottomLink = 0x4018000000000000;
}

- (BFFLinkLabelFooterView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = BFFLinkLabelFooterView;
  v3 = [(BFFLinkLabelFooterView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D4DA70]);
  featureFlags = v3->_featureFlags;
  v3->_featureFlags = v4;

  v6 = *MEMORY[0x277D76918];
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  label = v3->_label;
  v3->_label = v7;

  [(UILabel *)v3->_label setNumberOfLines:0];
  v9 = v3->_label;
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  [(UILabel *)v9 setFont:v10];

  v11 = +[BFFStyle sharedStyle];
  [v11 applyThemeToLabel:v3->_label];

  if ([(BuddyFeatureFlags *)v3->_featureFlags isSolariumEnabled])
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  [(UILabel *)v3->_label setTextAlignment:v12];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = v3->_subtitleLabel;
  v3->_subtitleLabel = v13;

  [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
  v15 = v3->_subtitleLabel;
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
  [(UILabel *)v15 setFont:v16];

  v17 = +[BFFStyle sharedStyle];
  [v17 applyThemeToLabel:v3->_subtitleLabel];

  v18 = [(BuddyFeatureFlags *)v3->_featureFlags isSolariumEnabled];
  if (v18)
  {
    v19 = 408;
  }

  else
  {
    v19 = 416;
  }

  if (v18)
  {
    v20 = 4;
  }

  else
  {
    v20 = 1;
  }

  [*(&v3->super.super.super.isa + v19) setTextAlignment:v20];
  v21 = objc_opt_new();
  linkHandlers = v3->_linkHandlers;
  v3->_linkHandlers = v21;

  return v3;
}

- (void)setLabelText:(id)a3
{
  v6 = a3;
  v4 = [(BFFLinkLabelFooterView *)self labelText];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_label setText:v6];
    [(UILabel *)self->_label removeFromSuperview];
    if ([v6 length])
    {
      [(BFFLinkLabelFooterView *)self addSubview:self->_label];
    }

    [(BFFLinkLabelFooterView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setAttributedSubtitleText:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToAttributedString:self->_attributedSubtitleText] & 1) == 0)
  {
    objc_storeStrong(&self->_attributedSubtitleText, a3);
    [(UILabel *)self->_subtitleLabel setAttributedText:v5];
    [(UILabel *)self->_subtitleLabel removeFromSuperview];
    if ([v5 length])
    {
      [(BFFLinkLabelFooterView *)self addSubview:self->_subtitleLabel];
    }

    [(BFFLinkLabelFooterView *)self setNeedsLayout];
  }
}

- (void)addLinkWithTitle:(id)a3 textStyle:(id)a4 handler:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if ([(BFFLinkLabelFooterView *)self numberOfLinks]<= 1)
  {
    v10 = objc_opt_new();
    [v10 setHandler:v9];
    v11 = [v10 button];
    [v11 setTitle:v16 forState:0];

    v12 = [v10 button];
    v13 = [v12 titleLabel];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:v8];
    [v13 setFont:v14];

    [(NSMutableArray *)self->_linkHandlers addObject:v10];
    if ([v16 length])
    {
      v15 = [v10 button];
      [(BFFLinkLabelFooterView *)self addSubview:v15];
    }
  }
}

- (void)addFooterLinkWithAttributedTitle:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(BFFLinkLabelFooterView *)self numberOfLinks]<= 1)
  {
    v7 = objc_opt_new();
    [v7 setHandler:v6];
    v8 = [v7 button];
    [v8 setAttributedTitle:v10 forState:0];

    [(NSMutableArray *)self->_linkHandlers addObject:v7];
    if ([v10 length])
    {
      v9 = [v7 button];
      [(BFFLinkLabelFooterView *)self addSubview:v9];
    }
  }
}

- (void)removeLinkAtIndex:(unint64_t)a3
{
  v6 = [(NSMutableArray *)self->_linkHandlers objectAtIndexedSubscript:?];
  v5 = [v6 button];
  [v5 removeFromSuperview];

  [(NSMutableArray *)self->_linkHandlers removeObjectAtIndex:a3];
}

- (void)removeAllLinks
{
  for (i = self->_linkHandlers; [(NSMutableArray *)i count]; i = self->_linkHandlers)
  {
    [(BFFLinkLabelFooterView *)self removeLinkAtIndex:0];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_linkHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) button];
        [v9 setEnabled:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setTopLineColor:(id)a3
{
  v10 = a3;
  v4 = [(UIView *)self->_topLine backgroundColor];

  v5 = v10;
  if (v4 != v10)
  {
    [(UIView *)self->_topLine removeFromSuperview];
    if (v10)
    {
      topLine = self->_topLine;
      if (!topLine)
      {
        v7 = objc_alloc(MEMORY[0x277D75D18]);
        v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v9 = self->_topLine;
        self->_topLine = v8;

        topLine = self->_topLine;
      }

      [(BFFLinkLabelFooterView *)self addSubview:topLine];
    }

    [(UIView *)self->_topLine setBackgroundColor:v10];
    [(BFFLinkLabelFooterView *)self setNeedsLayout];
    v5 = v10;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 shouldSetSize:(BOOL)a4
{
  v148 = a4;
  width = a3.width;
  v154 = *MEMORY[0x277D85DE8];
  [(BFFLinkLabelFooterView *)self margins:a3.width];
  v7 = v6;
  [(BFFLinkLabelFooterView *)self margins];
  if (v7 < *&MinimumHorizontalMargin)
  {
    v7 = *&MinimumHorizontalMargin;
  }

  if (v8 >= *&MinimumHorizontalMargin)
  {
    v9 = v8;
  }

  else
  {
    v9 = *&MinimumHorizontalMargin;
  }

  v146 = v7;
  if ([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled])
  {
    v10 = width;
  }

  else
  {
    v10 = width - v7 - v9;
  }

  v11 = [(BFFLinkLabelFooterView *)self wantsSideBySideLayout];
  v12 = MEMORY[0x277CBF3A0];
  v147 = v10;
  if (v11 && [(BFFLinkLabelFooterView *)self numberOfLinks]== 2)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = [(NSMutableArray *)self->_linkHandlers objectAtIndexedSubscript:0];
    v16 = [(NSMutableArray *)self->_linkHandlers objectAtIndexedSubscript:1];
    v17 = [v15 button];
    v18 = [v17 titleLabel];
    [v18 textRectForBounds:0 limitedToNumberOfLines:{v13, v14, v10, 1.79769313e308}];
    v20 = v19;

    v21 = [v16 button];
    v22 = [v21 titleLabel];
    [v22 textRectForBounds:0 limitedToNumberOfLines:{v13, v14, v10, 1.79769313e308}];
    v24 = v23;

    if (v20 > 0.0 && v24 > 0.0 && v20 + v24 + *&MinimumHorizontalMargin < v10)
    {
      v25 = width;
      if ([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled])
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v146;
      }

      v27 = *&MinimumVerticalMarginBeforeSoloLink;
      [(BFFLinkLabelFooterView *)self margins];
      v29 = BFFRoundRectToPixel(v26, v27 + v28);
      v33 = v32;
      if (v148)
      {
        v34 = v29;
        v35 = v30;
        v36 = v31;
        v37 = [v15 button];
        [v37 setFrame:{v34, v35, v36, v33}];
      }

      v38 = [(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled];
      width = v25;
      v39 = v25 - v9;
      if (v38)
      {
        v39 = v25;
      }

      v40 = v39 - v24;
      v41 = *&MinimumVerticalMarginBeforeSoloLink;
      [(BFFLinkLabelFooterView *)self margins];
      v43 = BFFRoundRectToPixel(v40, v41 + v42);
      if (v148)
      {
        v47 = v43;
        v48 = v44;
        v49 = v45;
        v50 = v46;
        v51 = [v16 button];
        [v51 setFrame:{v47, v48, v49, v50}];
      }

      v52 = v33 + *&MinimumVerticalMarginAfterBottomLink;
      [(BFFLinkLabelFooterView *)self margins];
      v54 = v52 + v53;
      [(BFFLinkLabelFooterView *)self margins];
      v56 = v54 + v55 + 0.0;

      goto LABEL_70;
    }
  }

  v57 = 408;
  v58 = [(UILabel *)self->_label text];
  v59 = [v58 length];

  if (v59)
  {
    v60 = [(UILabel *)self->_label text];
    v61 = [(UILabel *)self->_label font];
    [v60 _legacy_sizeWithFont:v61 constrainedToSize:-[UILabel lineBreakMode](self->_label lineBreakMode:{"lineBreakMode"), v10, 1.79769313e308}];

    if ([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled])
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v146;
    }

    v63 = *&MinimumVerticalMarginAfterLabel;
    [(BFFLinkLabelFooterView *)self margins];
    v65 = BFFRoundRectToPixel(v62, v63 + v64);
    v67 = v66;
    v69 = v68;
    if (v148)
    {
      [(UILabel *)self->_label setFrame:v65, v66];
    }

    v70 = v67 + v69 + *&MinimumVerticalMarginAfterLabel;
    [(BFFLinkLabelFooterView *)self flexibleHeight];
    v72 = v70 + v71;
    [(BFFLinkLabelFooterView *)self margins];
    v74 = v72 + v73;
    [(BFFLinkLabelFooterView *)self margins];
    v56 = v74 + v75;
    v10 = v147;
  }

  else
  {
    v56 = 0.0;
  }

  v76 = [(UILabel *)self->_subtitleLabel attributedText];
  v77 = [v76 length];

  if (v77)
  {
    [(UILabel *)self->_subtitleLabel sizeThatFits:v10, 1.79769313e308];
    v79 = v78;
    if (([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled]& 1) != 0)
    {
      v80 = *v12;
    }

    else
    {
      v80 = v146;
      if (v79 < v10)
      {
        v80 = v146 + (v10 - v79) * 0.5;
      }
    }

    v81 = *&MinimumVerticalMarginAfterLabel;
    [(BFFLinkLabelFooterView *)self margins];
    v83 = v81 + v82;
    [(UILabel *)self->_label _lastLineBaseline];
    v85 = BFFRoundRectToPixel(v80, v83 + v84);
    v87 = v86;
    v89 = v88;
    if (v148)
    {
      [(UILabel *)self->_subtitleLabel setFrame:v85, v86];
    }

    v90 = v87 + v89 + *&MinimumVerticalMarginAfterLabel;
    [(BFFLinkLabelFooterView *)self flexibleHeight];
    v92 = v90 + v91;
    [(BFFLinkLabelFooterView *)self margins];
    v94 = v92 + v93;
    [(BFFLinkLabelFooterView *)self margins];
    v56 = v94 + v95;
    v10 = v147;
  }

  v96 = 424;
  if ([(NSMutableArray *)self->_linkHandlers count])
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    obj = self->_linkHandlers;
    v97 = [(NSMutableArray *)obj countByEnumeratingWithState:&v149 objects:v153 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v150;
      v100 = *v12;
      v101 = v12[1];
      do
      {
        v102 = 0;
        v144 = v98;
        do
        {
          if (*v150 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v103 = *(*(&v149 + 1) + 8 * v102);
          v104 = [v103 button];
          v105 = [v104 titleLabel];

          [v105 textRectForBounds:0 limitedToNumberOfLines:{v100, v101, v10, 1.79769313e308}];
          v107 = v106;
          v109 = v108;
          if (([(BuddyFeatureFlags *)self->_featureFlags isSolariumEnabled]& 1) == 0)
          {
            v107 = v146;
            if (v109 < v10)
            {
              v107 = v146 + (v10 - v109) * 0.5;
            }
          }

          v110 = [*(&self->super.super.super.isa + v96) firstObject];
          v111 = v110;
          if (v103 == v110)
          {
            v113 = v99;
            v114 = v96;
            v115 = v57;
            v116 = [*(&self->super.super.super.isa + v57) text];
            if ([v116 length])
            {

              v112 = v56;
              v57 = v115;
              v96 = v114;
              v99 = v113;
              v98 = v144;
            }

            else
            {
              v117 = [(UILabel *)self->_subtitleLabel attributedText];
              v143 = [v117 length];

              v112 = v56;
              v57 = v115;
              v96 = v114;
              v99 = v113;
              v98 = v144;
              if (!v143)
              {
                if ([(BFFLinkLabelFooterView *)self wantsFromBottomLayout])
                {
                  [(BFFLinkLabelFooterView *)self bounds];
                  MaxY = CGRectGetMaxY(v156);
                  [(BFFLinkLabelFooterView *)self margins];
                  v120 = MaxY - v119;
                  [v105 _lastLineBaseline];
                  v122 = v120 - v121;
                  [v105 bounds];
                  v112 = v122 - v123;
                }

                else
                {
                  v124 = [*(&self->super.super.super.isa + v96) count];
                  v125 = &MinimumVerticalMarginBeforeSoloLink;
                  if (v124 != 1)
                  {
                    v125 = &MinimumVerticalMarginBeforeTopLink;
                  }

                  v126 = *v125;
                  [(BFFLinkLabelFooterView *)self margins];
                  v112 = v126 + v127;
                }
              }
            }
          }

          else
          {

            v112 = v56;
          }

          v128 = BFFRoundRectToPixel(v107, v112);
          v131 = v130;
          v133 = v132;
          if (v148)
          {
            v134 = v128;
            v135 = v129;
            v136 = [v103 button];
            [v136 setFrame:{v134, v131, v135, v133}];
          }

          v137 = [*(&self->super.super.super.isa + v96) firstObject];

          if (v103 == v137)
          {
            v10 = v147;
            if ([(BFFLinkLabelFooterView *)self wantsFromBottomLayout])
            {
              [(BFFLinkLabelFooterView *)self bounds];
              v56 = CGRectGetMaxY(v157) - v131;
            }

            else
            {
              v138 = v131 + v133 + *&MinimumVerticalMarginAfterTopLink;
              [(BFFLinkLabelFooterView *)self flexibleHeight];
              v56 = v138 + v139;
            }
          }

          else
          {
            v56 = v56 + v133 + *&MinimumVerticalMarginAfterBottomLink;
            v10 = v147;
          }

          ++v102;
        }

        while (v98 != v102);
        v98 = [(NSMutableArray *)obj countByEnumeratingWithState:&v149 objects:v153 count:16];
      }

      while (v98);
    }
  }

LABEL_70:
  if (v148)
  {
    v140 = [(BFFLinkLabelFooterView *)self topLineColor];

    if (v140)
    {
      UICeilToViewScale();
      [(BFFLinkLabelFooterView *)self bounds];
      [(UIView *)self->_topLine setFrame:0.0, 0.0];
    }
  }

  v141 = width;
  v142 = v56;
  result.height = v142;
  result.width = v141;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(BFFLinkLabelFooterView *)self sizeThatFits:0 shouldSetSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = BFFLinkLabelFooterView;
  [(BFFLinkLabelFooterView *)&v5 layoutSubviews];
  [(BFFLinkLabelFooterView *)self bounds];
  [(BFFLinkLabelFooterView *)self sizeThatFits:1 shouldSetSize:v3, v4];
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end