@interface TUICandidateCell
+ (UIEdgeInsets)outsetsForText:(id)text font:(id)font;
+ (double)widthForCandidate:(id)candidate showCandidateNumber:(BOOL)number style:(id)style;
+ (double)widthForText:(id)text font:(id)font layoutOrientation:(int64_t)orientation;
- (TUICandidateCell)initWithCoder:(id)coder;
- (TUICandidateCell)initWithFrame:(CGRect)frame;
- (TUICandidateLabel)alternativeTextLabel;
- (TUICandidateLabel)annotationTextLabel;
- (TUICandidateLabel)textLabel;
- (UILabel)candidateNumberLabel;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)_computeImageViewFrame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)commonInit;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)rotateBy90DegreesForFrame:(CGRect *)frame;
- (void)setAlignment:(int64_t)alignment;
- (void)setCandidate:(id)candidate;
- (void)setCandidateNumber:(unint64_t)number;
- (void)setCustomView:(id)view;
- (void)setImage:(id)image;
- (void)setRowSelected:(BOOL)selected;
- (void)setShouldShowCandidateNumber:(BOOL)number;
- (void)setStyle:(id)style;
- (void)updateColors;
- (void)updateLabels;
- (void)updateStyle;
@end

@implementation TUICandidateCell

- (id)cellBackgroundColor
{
  if (([(TUICandidateCell *)self isSelected]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(TUICandidateCell *)self isHighlighted];
  }

  candidate = [(TUICandidateCell *)self candidate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (-[TUICandidateCell candidate](self, "candidate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isTransliterationCandidate], v6, !(isHighlighted & 1 | ((v7 & 1) == 0))))
  {
    style = [(TUICandidateBaseCell *)self style];
    transliterationCandidateBackgroundColor = [style transliterationCandidateBackgroundColor];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUICandidateCell;
    transliterationCandidateBackgroundColor = [(TUICandidateBaseCell *)&v11 cellBackgroundColor];
  }

  return transliterationCandidateBackgroundColor;
}

- (id)cellBackgroundImage
{
  if (([(TUICandidateCell *)self isSelected]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(TUICandidateCell *)self isHighlighted];
  }

  candidate = [(TUICandidateCell *)self candidate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (-[TUICandidateCell candidate](self, "candidate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isTransliterationCandidate], v6, !(isHighlighted & 1 | ((v7 & 1) == 0))))
  {
    style = [(TUICandidateBaseCell *)self style];
    transliterationCandidateBackgroundImage = [style transliterationCandidateBackgroundImage];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUICandidateCell;
    transliterationCandidateBackgroundImage = [(TUICandidateBaseCell *)&v11 cellBackgroundImage];
  }

  return transliterationCandidateBackgroundImage;
}

- (void)updateColors
{
  v22.receiver = self;
  v22.super_class = TUICandidateCell;
  [(TUICandidateBaseCell *)&v22 updateColors];
  if (([(TUICandidateCell *)self isSelected]& 1) != 0 || ([(TUICandidateCell *)self isHighlighted]& 1) != 0)
  {
    style = [(TUICandidateBaseCell *)self style];
    highlightedTextColor = [style highlightedTextColor];
    [(TUICandidateLabel *)self->_textLabel setTextColor:highlightedTextColor];

    style2 = [(TUICandidateBaseCell *)self style];
    highlightedCandidateNumberColor = [style2 highlightedCandidateNumberColor];
    [(UILabel *)self->_candidateNumberLabel setTextColor:highlightedCandidateNumberColor];

    style3 = [(TUICandidateBaseCell *)self style];
    highlightedAlternativeTextColor = [style3 highlightedAlternativeTextColor];
    [(TUICandidateLabel *)self->_alternativeTextLabel setTextColor:highlightedAlternativeTextColor];

    style4 = [(TUICandidateBaseCell *)self style];
    highlightedTextColor2 = [style4 highlightedTextColor];
  }

  else
  {
    style5 = [(TUICandidateBaseCell *)self style];
    textColor = [style5 textColor];
    [(TUICandidateLabel *)self->_textLabel setTextColor:textColor];

    style6 = [(TUICandidateBaseCell *)self style];
    candidateNumberColor = [style6 candidateNumberColor];
    [(UILabel *)self->_candidateNumberLabel setTextColor:candidateNumberColor];

    style7 = [(TUICandidateBaseCell *)self style];
    alternativeTextColor = [style7 alternativeTextColor];
    [(TUICandidateLabel *)self->_alternativeTextLabel setTextColor:alternativeTextColor];

    style4 = [(TUICandidateBaseCell *)self style];
    highlightedTextColor2 = [style4 textColor];
  }

  v17 = highlightedTextColor2;
  [(TUICandidateLabel *)self->_annotationTextLabel setTextColor:highlightedTextColor2];

  style8 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    style9 = [(TUICandidateBaseCell *)self style];
    showCellBorderForSpaceConfirmationCandidate = [style9 showCellBorderForSpaceConfirmationCandidate];

    if (!showCellBorderForSpaceConfirmationCandidate)
    {
      return;
    }

    style8 = [(TUICandidateCell *)self layer];
    [style8 setBorderWidth:0.0];
    if (([(TUICandidateCell *)self isHighlighted]& 1) == 0)
    {
      if ([(TUICandidateCell *)self isSelected])
      {
        [style8 setBorderWidth:1.0];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [style8 setBorderColor:{objc_msgSend(secondaryLabelColor, "CGColor")}];
      }
    }
  }
}

- (void)rotateBy90DegreesForFrame:(CGRect *)frame
{
  v3 = vextq_s8(frame->size, frame->size, 8uLL);
  frame->origin = vextq_s8(frame->origin, frame->origin, 8uLL);
  frame->size = v3;
}

- (void)updateLabels
{
  candidate = [(TUICandidateCell *)self candidate];

  if (!candidate)
  {
    return;
  }

  [(TUICandidateCell *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  style = [(TUICandidateBaseCell *)self style];
  [style extraCellPadding];
  x = v5 + v13;
  y = v7 + v15;
  width = v9 - (v13 + v17);
  v162.origin.x = x;
  v162.origin.y = y;
  height = v11 - (v15 + v19);
  v162.size.width = width;
  v162.size.height = height;

  style2 = [(TUICandidateBaseCell *)self style];
  layoutOrientation = [style2 layoutOrientation];

  if (layoutOrientation == 1)
  {
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v162];
    x = v162.origin.x;
    y = v162.origin.y;
    width = v162.size.width;
    height = v162.size.height;
  }

  v163.origin.x = x;
  v163.origin.y = y;
  v163.size.width = width;
  v163.size.height = height;
  v23 = CGRectGetHeight(v163);
  v140 = CGRectGetWidth(v162);
  style3 = [(TUICandidateBaseCell *)self style];
  [style3 minimumCellPadding];
  v26 = v25;

  MinY = CGRectGetMinY(v162);
  v28 = objc_opt_class();
  text = [(TUICandidateLabel *)self->_textLabel text];
  font = [(TUICandidateLabel *)self->_textLabel font];
  style4 = [(TUICandidateBaseCell *)self style];
  [v28 widthForText:text font:font layoutOrientation:{objc_msgSend(style4, "layoutOrientation")}];
  v33 = v32;
  v161.origin.x = 0.0;
  v161.size.width = v32;

  [(TUICandidateCell *)self minimumTextLabelHeight];
  if (v23 >= v34)
  {
    v35 = v23;
  }

  else
  {
    v35 = v34;
  }

  v161.size.height = v35;
  v36 = CGRectGetMinY(v162);
  v164.origin.x = 0.0;
  v164.origin.y = MinY;
  v164.size.width = v33;
  v164.size.height = v35;
  v161.origin.y = v36 + ceil((v23 - CGRectGetHeight(v164)) * 0.5);
  v37 = CGRectGetMinY(v162);
  text2 = [(UILabel *)self->_candidateNumberLabel text];
  font2 = [(UILabel *)self->_candidateNumberLabel font];
  [text2 tui_optimizedSizeWithFont:font2];
  v157 = 0.0;
  v158 = v37;
  v159 = v40;
  rect = v23;

  v141 = CGRectGetMinY(v162);
  v41 = objc_opt_class();
  text3 = [(TUICandidateLabel *)self->_alternativeTextLabel text];
  font3 = [(TUICandidateLabel *)self->_alternativeTextLabel font];
  style5 = [(TUICandidateBaseCell *)self style];
  [v41 widthForText:text3 font:font3 layoutOrientation:{objc_msgSend(style5, "layoutOrientation")}];
  v139 = v45;
  v153 = 0.0;
  v154 = v141;
  v155 = v45;
  v135 = v23;
  v156 = v23;

  v46 = CGRectGetMinY(v162);
  text4 = [(TUICandidateLabel *)self->_annotationTextLabel text];
  font4 = [(TUICandidateLabel *)self->_annotationTextLabel font];
  [text4 tui_optimizedSizeWithFont:font4];
  v50 = v49;
  font5 = [(TUICandidateLabel *)self->_annotationTextLabel font];
  [font5 lineHeight];
  v149 = 0.0;
  v150 = v46;
  v151 = v50;
  v144 = v52;
  v152 = v52;

  imageView = [(TUICandidateCell *)self imageView];
  [imageView frame];
  v55 = v54;
  v57 = v56;
  v142 = v58;
  v143 = v59;
  v145 = v58;
  v146 = v59;
  v147 = v54;
  v148 = v56;

  image = [(TUICandidateCell *)self image];
  v61 = v161.size.width <= 0.00000011920929 || image == 0;
  v62 = 6.0;
  if (v61)
  {
    v62 = 0.0;
  }

  v136 = v62;

  text5 = [(UILabel *)self->_candidateNumberLabel text];
  v64 = [text5 length];

  if (v64)
  {
    style6 = [(TUICandidateBaseCell *)self style];
    layoutOrientation2 = [style6 layoutOrientation];

    style7 = [(TUICandidateBaseCell *)self style];
    candidateNumberFont = [style7 candidateNumberFont];
    [@"0" _legacy_sizeWithFont:candidateNumberFont];
    if (layoutOrientation2)
    {
      v71 = v70;
      v159 = v70;

      v72 = v71;
    }

    else
    {
      v72 = v69;
      v159 = v69;
    }
  }

  else
  {
    v72 = v159;
  }

  v165.origin.x = v142;
  v165.origin.y = v143;
  v137 = v55;
  v138 = v57;
  v165.size.width = v55;
  v165.size.height = v57;
  if (CGRectGetWidth(v165) == 0.0)
  {
    v73 = v26 + v26;
  }

  else
  {
    v73 = v26 + v26 + v136;
  }

  v166.origin.x = v157;
  v166.origin.y = v158;
  v166.size.height = rect;
  v166.size.width = v72;
  if (CGRectGetWidth(v166) != 0.0)
  {
    v73 = v73 + 5.0;
  }

  v167.origin.x = 0.0;
  v167.origin.y = v46;
  v167.size.width = v50;
  v167.size.height = v144;
  if (CGRectGetWidth(v167) == 0.0)
  {
    v74 = v73;
  }

  else
  {
    v74 = v73 + 5.0;
  }

  v168.origin.x = 0.0;
  v168.origin.y = v141;
  v168.size.width = v139;
  v168.size.height = v135;
  if (CGRectGetWidth(v168) != 0.0)
  {
    style8 = [(TUICandidateBaseCell *)self style];
    v76 = objc_opt_respondsToSelector();

    if (v76)
    {
      style9 = [(TUICandidateBaseCell *)self style];
      [style9 alternativeTextLeftSpacing];
      v74 = v74 + v78;
    }

    else
    {
      v74 = v74 + 5.0;
    }
  }

  rect = v135;
  v156 = v135;
  style10 = [(TUICandidateBaseCell *)self style];
  layoutOrientation3 = [style10 layoutOrientation];

  if (layoutOrientation3 == 1)
  {
    v81 = v162.origin.y + (v162.size.height - v144) * 0.5;
  }

  else
  {
    v81 = v162.origin.y + 4.0;
  }

  v150 = v81;
  v169.origin.x = 0.0;
  v169.origin.y = v141;
  v82 = v139;
  v169.size.width = v139;
  v169.size.height = v135;
  v83 = CGRectGetWidth(v169) > 0.0;
  v170.origin.x = v142;
  v170.origin.y = v143;
  v170.size.width = v137;
  v170.size.height = v57;
  v84 = v74 + CGRectGetWidth(v170);
  v85 = v84 + CGRectGetWidth(v161);
  v171.origin.x = v157;
  v171.origin.y = v158;
  v171.size.width = v72;
  v171.size.height = v135;
  v86 = v85 + CGRectGetWidth(v171);
  v172.origin.x = 0.0;
  v172.origin.y = v141;
  v172.size.width = v139;
  v172.size.height = v135;
  v87 = v86 + CGRectGetWidth(v172);
  v173.origin.x = 0.0;
  v133 = v50;
  v134 = v81;
  v173.origin.y = v81;
  v173.size.width = v50;
  v173.size.height = v144;
  v88 = v87 + CGRectGetWidth(v173);
  if (v88 <= v140)
  {
    v89 = 0;
    v90 = v72;
    v91 = v26;
  }

  else
  {
    v174.origin.x = 0.0;
    v174.origin.y = v141;
    v174.size.width = v139;
    v174.size.height = v135;
    v89 = 1;
    v90 = v72;
    v91 = v26;
    if (CGRectGetWidth(v174) != 0.0 && v88 - v140 > 1.0)
    {
      style11 = [(TUICandidateBaseCell *)self style];
      v93 = objc_opt_respondsToSelector();

      if (v93)
      {
        style12 = [(TUICandidateBaseCell *)self style];
        [style12 alternativeTextLeftSpacing];
        v96 = v95;
        v175.origin.x = 0.0;
        v175.origin.y = v141;
        v175.size.width = v139;
        v175.size.height = v135;
        v97 = v96 + CGRectGetWidth(v175);
      }

      else
      {
        v176.origin.x = 0.0;
        v176.origin.y = v141;
        v176.size.width = v139;
        v176.size.height = v135;
        v97 = CGRectGetWidth(v176) + 5.0;
      }

      v88 = v88 - v97;
      if (v88 <= v140)
      {
        v89 = 0;
      }

      v83 = 0;
      v91 = v26;
      v82 = v139;
    }
  }

  v98 = [(TUICandidateBaseCell *)self style:*&v161.origin.y];
  if (objc_opt_respondsToSelector())
  {
    style13 = [(TUICandidateBaseCell *)self style];
    v100 = [style13 alternativeTextAlignment] == 2;
  }

  else
  {
    v100 = 0;
  }

  if ((v89 | v100) != 1)
  {
    alignment = self->_alignment;
    if (alignment == 2)
    {
      v91 = v91 + v140 - v88;
      v104 = v137;
      v103 = v138;
    }

    else
    {
      v104 = v137;
      v103 = v138;
      if (alignment == 1)
      {
        v91 = v91 + (v140 - v88) * 0.5;
      }
    }

    v182.origin.x = v157;
    v182.origin.y = v158;
    v182.size.width = v90;
    v182.size.height = v135;
    if (CGRectGetWidth(v182) != 0.0)
    {
      v157 = v91;
      v183.origin.x = v91;
      v183.origin.y = v158;
      v183.size.width = v90;
      v183.size.height = v135;
      v91 = v91 + CGRectGetWidth(v183) + 5.0;
    }

    v184.origin.x = v142;
    v184.origin.y = v143;
    v184.size.width = v104;
    v184.size.height = v103;
    if (CGRectGetWidth(v184) != 0.0)
    {
      v145 = v91;
      v185.origin.x = v91;
      v185.origin.y = v143;
      v185.size.width = v104;
      v185.size.height = v103;
      v91 = v91 + v136 + CGRectGetWidth(v185);
    }

    v113 = objc_opt_class();
    text6 = [(TUICandidateLabel *)self->_textLabel text];
    font6 = [(TUICandidateLabel *)self->_textLabel font];
    [v113 outsetsForText:text6 font:font6];
    v161.origin.x = v91 + ceil(v116);

    v186.origin.x = v161.origin.x;
    v186.origin.y = v131;
    v186.size.height = v132;
    v186.size.width = v161.size.width;
    v117 = v91 + CGRectGetWidth(v186);
    v187.origin.x = 0.0;
    v187.origin.y = v134;
    v187.size.width = v133;
    v187.size.height = v144;
    if (CGRectGetWidth(v187) != 0.0)
    {
      v188.origin.x = v117 + 5.0;
      v149 = v117 + 5.0;
      v188.origin.y = v134;
      v188.size.width = v133;
      v188.size.height = v144;
      v117 = v117 + CGRectGetWidth(v188) + 5.0;
    }

    if (v83)
    {
      style14 = [(TUICandidateBaseCell *)self style];
      v119 = objc_opt_respondsToSelector();

      if (v119)
      {
        style15 = [(TUICandidateBaseCell *)self style];
        [style15 alternativeTextLeftSpacing];
        v153 = v117 + v121;
      }

      else
      {
        v153 = v117 + 5.0;
      }
    }

    goto LABEL_81;
  }

  v177.origin.x = v157;
  v177.origin.y = v158;
  v177.size.width = v90;
  v177.size.height = v135;
  if (CGRectGetWidth(v177) == 0.0)
  {
    v101 = v91;
  }

  else
  {
    v157 = v91;
    v178.origin.x = v91;
    v178.origin.y = v158;
    v178.size.width = v90;
    v178.size.height = v135;
    v101 = v91 + CGRectGetWidth(v178) + 5.0;
  }

  v179.origin.x = v142;
  v179.origin.y = v143;
  v179.size.width = v137;
  v179.size.height = v138;
  if (CGRectGetWidth(v179) != 0.0)
  {
    v145 = v101;
    v180.origin.x = v101;
    v180.origin.y = v143;
    v180.size.width = v137;
    v180.size.height = v138;
    v101 = v101 + v136 + CGRectGetWidth(v180);
  }

  v105 = v140 - v91;
  if (v83)
  {
    style16 = [(TUICandidateBaseCell *)self style];
    if (objc_opt_respondsToSelector())
    {
      style17 = [(TUICandidateBaseCell *)self style];
      alternativeTextAlignment = [style17 alternativeTextAlignment];

      v109 = v141;
      if (alternativeTextAlignment == 2)
      {
        v181.origin.x = 0.0;
        v181.origin.y = v141;
        v181.size.width = v82;
        v181.size.height = v135;
        v153 = v105 - CGRectGetWidth(v181);
LABEL_75:
        v112 = v144;
        v111 = v133;
        v110 = v134;
        goto LABEL_76;
      }
    }

    else
    {

      v109 = v141;
    }

    v189.origin.x = 0.0;
    v189.origin.y = v109;
    v189.size.width = v82;
    v189.size.height = v135;
    v153 = v105 - CGRectGetWidth(v189);
    style18 = [(TUICandidateBaseCell *)self style];
    v123 = objc_opt_respondsToSelector();

    v190.origin.x = v153;
    v190.origin.y = v109;
    v190.size.width = v82;
    v190.size.height = v135;
    v124 = CGRectGetWidth(v190);
    if (v123)
    {
      style19 = [(TUICandidateBaseCell *)self style];
      [style19 alternativeTextLeftSpacing];
      v105 = v105 - (v124 + v126);
    }

    else
    {
      v105 = v105 - (v124 + 5.0);
    }

    goto LABEL_75;
  }

  v111 = v133;
  v110 = v134;
  v112 = v144;
LABEL_76:
  v191.origin.x = 0.0;
  v191.origin.y = v110;
  v191.size.width = v111;
  v191.size.height = v112;
  if (CGRectGetWidth(v191) != 0.0)
  {
    v192.origin.x = 0.0;
    v192.origin.y = v110;
    v192.size.width = v111;
    v192.size.height = v112;
    v193.origin.x = v105 - CGRectGetWidth(v192);
    v149 = v193.origin.x;
    v193.origin.y = v110;
    v193.size.width = v111;
    v193.size.height = v112;
    v105 = v105 - (CGRectGetWidth(v193) + 5.0);
  }

  v127 = v105 - v101;
  if (v105 - v101 < 0.0)
  {
    v127 = 0.0;
  }

  v161.origin.x = v101;
  v161.size.width = v127;
LABEL_81:
  style20 = [(TUICandidateBaseCell *)self style];
  layoutOrientation4 = [style20 layoutOrientation];

  if (layoutOrientation4 == 1)
  {
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v161];
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v157];
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v145];
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v153];
    [(TUICandidateCell *)self rotateBy90DegreesForFrame:&v149];
  }

  if ([(TUICandidateCell *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    [(TUICandidateCell *)self flipHorizontallyForFrame:&v161];
    [(TUICandidateCell *)self flipHorizontallyForFrame:&v157];
    [(TUICandidateCell *)self flipHorizontallyForFrame:&v145];
    [(TUICandidateCell *)self flipHorizontallyForFrame:&v153];
    [(TUICandidateCell *)self flipHorizontallyForFrame:&v149];
  }

  v130 = TUIScreenScaleForView(self);
  [(TUICandidateLabel *)self->_textLabel setFrame:TUIRectIntegralWithScale(v161.origin.x, v161.origin.y, v161.size.width, v161.size.height, v130)];
  [(UILabel *)self->_candidateNumberLabel setFrame:TUIRectIntegralWithScale(v157, v158, v159, rect, v130)];
  [(UIImageView *)self->_imageView setFrame:TUIRectIntegralWithScale(v145, v146, v147, v148, v130)];
  [(TUICandidateLabel *)self->_alternativeTextLabel setHidden:!v83];
  [(TUICandidateLabel *)self->_alternativeTextLabel setFrame:TUIRectIntegralWithScale(v153, v154, v155, v156, v130)];
  [(TUICandidateLabel *)self->_annotationTextLabel setFrame:TUIRectIntegralWithScale(v149, v150, v151, v152, v130)];
}

- (void)updateStyle
{
  if (self->_candidateNumberLabel)
  {
    style = [(TUICandidateBaseCell *)self style];
    candidateNumberFont = [style candidateNumberFont];
    [(UILabel *)self->_candidateNumberLabel setFont:candidateNumberFont];
  }

  if (self->_annotationTextLabel)
  {
    style2 = [(TUICandidateBaseCell *)self style];
    annotationTextFont = [style2 annotationTextFont];
    [(TUICandidateLabel *)self->_annotationTextLabel setFont:annotationTextFont];
  }

  if (self->_alternativeTextLabel)
  {
    style3 = [(TUICandidateBaseCell *)self style];
    alternativeTextFont = [style3 alternativeTextFont];
    [(TUICandidateLabel *)self->_alternativeTextLabel setFont:alternativeTextFont];

    style4 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_alternativeTextLabel, "setLayoutOrientation:", [style4 layoutOrientation]);
  }

  style5 = [(TUICandidateBaseCell *)self style];
  layoutOrientation = [style5 layoutOrientation];
  textLabel = [(TUICandidateCell *)self textLabel];
  [textLabel setLayoutOrientation:layoutOrientation];

  style6 = [(TUICandidateBaseCell *)self style];
  lineBreakMode = [style6 lineBreakMode];
  textLabel2 = [(TUICandidateCell *)self textLabel];
  [textLabel2 setLineBreakMode:lineBreakMode];

  candidate = [(TUICandidateCell *)self candidate];
  isSupplementalItemCandidate = [candidate isSupplementalItemCandidate];
  if (isSupplementalItemCandidate && (-[TUICandidateBaseCell style](self, "style"), v34 = objc_claimAutoreleasedReturnValue(), [v34 supplementalLexiconCandidateFont], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    style7 = [(TUICandidateBaseCell *)self style];
    supplementalLexiconCandidateFont = [style7 supplementalLexiconCandidateFont];
    v23 = 0;
    v24 = 1;
  }

  else
  {
    style8 = [(TUICandidateBaseCell *)self style];
    supplementalLexiconCandidateFont = [style8 candidateFont];
    v24 = 0;
    v21 = 0;
    v23 = 1;
  }

  textLabel3 = [(TUICandidateCell *)self textLabel];
  [textLabel3 setFont:supplementalLexiconCandidateFont];

  if (v23)
  {
  }

  if (v24)
  {
  }

  if (isSupplementalItemCandidate)
  {
  }

  textLabel4 = [(TUICandidateCell *)self textLabel];
  font = [textLabel4 font];
  [font pointSize];
  v29 = 16.0 / v28;

  if (v29 > 0.9)
  {
    v29 = 0.9;
  }

  textLabel5 = [(TUICandidateCell *)self textLabel];
  [textLabel5 setMinimumScaleFactor:v29];

  style9 = [(TUICandidateBaseCell *)self style];
  [style9 cellCornerRadius];
  v32 = v31;
  layer = [(TUICandidateCell *)self layer];
  [layer setCornerRadius:v32];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUICandidateCell;
  [(TUICandidateBaseCell *)&v3 layoutSubviews];
  [(TUICandidateCell *)self updateStyle];
  [(TUICandidateCell *)self updateColors];
  [(TUICandidateCell *)self _computeImageViewFrame];
  [(TUICandidateCell *)self updateLabels];
}

- (void)_computeImageViewFrame
{
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView frame];
    image = [(TUICandidateCell *)self image];
    [image size];

    style = [(TUICandidateBaseCell *)self style];
    if (objc_opt_respondsToSelector())
    {
      style2 = [(TUICandidateBaseCell *)self style];
      [style2 maximumIconWidth];
    }

    [(TUICandidateCell *)self bounds];
    style3 = [(TUICandidateBaseCell *)self style];
    [style3 extraCellPadding];
    UIRectCenteredYInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    imageView = [(TUICandidateCell *)self imageView];
    [imageView setFrame:{v9, v11, v13, v15}];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = TUICandidateCell;
  attributesCopy = attributes;
  [(TUICandidateCell *)&v8 applyLayoutAttributes:attributesCopy];
  [attributesCopy contentAlpha];
  v6 = v5;

  contentView = [(TUICandidateCell *)self contentView];
  [contentView setAlpha:v6];

  [(TUICandidateCell *)self layoutIfNeeded];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  style = [(TUICandidateBaseCell *)self style];
  v6 = [style isEqual:styleCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TUICandidateCell;
    [(TUICandidateBaseCell *)&v7 setStyle:styleCopy];
    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setRowSelected:(BOOL)selected
{
  if (self->_rowSelected != selected)
  {
    self->_rowSelected = selected;
    [(TUICandidateCell *)self updateColors];
  }
}

- (void)setShouldShowCandidateNumber:(BOOL)number
{
  if (self->_shouldShowCandidateNumber != number)
  {
    numberCopy = number;
    self->_shouldShowCandidateNumber = number;
    candidateNumberLabel = [(TUICandidateCell *)self candidateNumberLabel];
    [candidateNumberLabel setHidden:!numberCopy];

    if (!self->_shouldShowCandidateNumber)
    {
      style = [(TUICandidateBaseCell *)self style];
      layoutOrientation = [style layoutOrientation];

      if (layoutOrientation == 1)
      {
        candidateNumberLabel2 = [(TUICandidateCell *)self candidateNumberLabel];
        [candidateNumberLabel2 setText:0];

        [(TUICandidateCell *)self setNeedsLayout];
      }
    }
  }
}

- (void)setCandidateNumber:(unint64_t)number
{
  if (self->_candidateNumber != number)
  {
    self->_candidateNumber = number;
    if (number - 1 > 8)
    {
      if ([(TUICandidateCell *)self shouldShowCandidateNumber])
      {
        style = [(TUICandidateBaseCell *)self style];
        layoutOrientation = [style layoutOrientation];

        if (layoutOrientation == 1)
        {
          v8 = @" ";
        }

        else
        {
          v8 = 0;
        }

        stringValue = v8;
      }

      else
      {
        stringValue = 0;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      stringValue = [v5 stringValue];
    }

    candidateNumberLabel = [(TUICandidateCell *)self candidateNumberLabel];
    [candidateNumberLabel setText:stringValue];

    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = self->_candidate;
  if (candidate == candidateCopy)
  {
    goto LABEL_22;
  }

  v24 = candidateCopy;
  if (([(TIKeyboardCandidate *)candidate isEqual:?]& 1) != 0)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&self->_candidate, candidate);
  if (objc_opt_respondsToSelector())
  {
    icon = [(TIKeyboardCandidate *)v24 icon];
    [(TUICandidateCell *)self setImage:icon];
  }

  label = [(TIKeyboardCandidate *)v24 label];
  if ([label length])
  {
  }

  else
  {
    textLabel = self->_textLabel;

    v10 = v24;
    if (!textLabel)
    {
      goto LABEL_9;
    }
  }

  label2 = [(TIKeyboardCandidate *)v24 label];
  textLabel = [(TUICandidateCell *)self textLabel];
  [textLabel setText:label2];

  v10 = v24;
LABEL_9:
  alternativeText = [(TIKeyboardCandidate *)v10 alternativeText];
  if ([alternativeText length])
  {

LABEL_12:
    alternativeText2 = [(TIKeyboardCandidate *)v24 alternativeText];
    alternativeTextLabel = [(TUICandidateCell *)self alternativeTextLabel];
    [alternativeTextLabel setText:alternativeText2];

    v15 = v24;
    goto LABEL_13;
  }

  alternativeTextLabel = self->_alternativeTextLabel;

  v15 = v24;
  if (alternativeTextLabel)
  {
    goto LABEL_12;
  }

LABEL_13:
  annotationText = [(TIKeyboardCandidate *)v15 annotationText];
  v19 = [annotationText length];

  if (v19)
  {
    annotationText2 = [(TIKeyboardCandidate *)v24 annotationText];
    v21 = UIKeyboardLocalizedString();
  }

  else
  {
    v21 = 0;
  }

  if ([v21 length] || self->_annotationTextLabel)
  {
    annotationTextLabel = [(TUICandidateCell *)self annotationTextLabel];
    [annotationTextLabel setText:v21];
  }

  if (objc_opt_respondsToSelector())
  {
    customView = [(TIKeyboardCandidate *)v24 customView];
    [(TUICandidateCell *)self setCustomView:customView];
  }

  [(TUICandidateCell *)self setNeedsLayout];

LABEL_22:

  MEMORY[0x1EEE66BE0]();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUICandidateCell;
  [(TUICandidateCell *)&v4 prepareForReuse];
  candidate = self->_candidate;
  self->_candidate = 0;

  [(TUICandidateCell *)self setCandidateNumber:0];
  [(TUICandidateCell *)self setShouldShowCandidateNumber:0];
  [(TUICandidateCell *)self setRowSelected:0];
  [(TUICandidateCell *)self setImage:0];
}

- (TUICandidateLabel)annotationTextLabel
{
  annotationTextLabel = self->_annotationTextLabel;
  if (!annotationTextLabel)
  {
    v4 = [TUICandidateLabel alloc];
    v5 = [(TUICandidateLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_annotationTextLabel;
    self->_annotationTextLabel = v5;

    [(TUICandidateLabel *)self->_annotationTextLabel setAlpha:0.4];
    contentView = [(TUICandidateCell *)self contentView];
    [contentView addSubview:self->_annotationTextLabel];

    annotationTextLabel = self->_annotationTextLabel;
  }

  return annotationTextLabel;
}

- (UILabel)candidateNumberLabel
{
  candidateNumberLabel = self->_candidateNumberLabel;
  if (!candidateNumberLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_candidateNumberLabel;
    self->_candidateNumberLabel = v5;

    [(UILabel *)self->_candidateNumberLabel setHidden:[(TUICandidateCell *)self shouldShowCandidateNumber]^ 1];
    [(UILabel *)self->_candidateNumberLabel setTextAlignment:1];
    contentView = [(TUICandidateCell *)self contentView];
    [contentView addSubview:self->_candidateNumberLabel];

    candidateNumberLabel = self->_candidateNumberLabel;
  }

  return candidateNumberLabel;
}

- (TUICandidateLabel)alternativeTextLabel
{
  alternativeTextLabel = self->_alternativeTextLabel;
  if (!alternativeTextLabel)
  {
    v4 = [TUICandidateLabel alloc];
    v5 = [(TUICandidateLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_alternativeTextLabel;
    self->_alternativeTextLabel = v5;

    [(TUICandidateLabel *)self->_alternativeTextLabel setAdjustsFontSizeToFitWidth:1];
    [(TUICandidateLabel *)self->_alternativeTextLabel setMinimumScaleFactor:0.9];
    style = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_alternativeTextLabel, "setLayoutOrientation:", [style layoutOrientation]);

    contentView = [(TUICandidateCell *)self contentView];
    [contentView addSubview:self->_alternativeTextLabel];

    alternativeTextLabel = self->_alternativeTextLabel;
  }

  return alternativeTextLabel;
}

- (TUICandidateLabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = [TUICandidateLabel alloc];
    [(TUICandidateCell *)self bounds];
    v5 = [(TUICandidateLabel *)v4 initWithFrame:0.0, 0.0, CGRectGetWidth(v12), 42.0];
    v6 = self->_textLabel;
    self->_textLabel = v5;

    [(TUICandidateLabel *)self->_textLabel setAdjustsFontSizeToFitWidth:1];
    style = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLineBreakMode:](self->_textLabel, "setLineBreakMode:", [style lineBreakMode]);

    style2 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_textLabel, "setLayoutOrientation:", [style2 layoutOrientation]);

    contentView = [(TUICandidateCell *)self contentView];
    [contentView addSubview:self->_textLabel];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (void)setCustomView:(id)view
{
  viewCopy = view;
  customView = [(TUICandidateCell *)self customView];

  v6 = viewCopy;
  if (customView != viewCopy)
  {
    v7 = self->_customView;
    objc_storeStrong(&self->_customView, view);
    [(UIView *)v7 removeFromSuperview];
    if (viewCopy)
    {
      contentView = [(TUICandidateCell *)self contentView];
      [contentView addSubview:viewCopy];

      [(TUICandidateCell *)self setNeedsLayout];
    }

    v6 = viewCopy;
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(TUICandidateCell *)self image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    imageView = self->_imageView;
    if (imageCopy)
    {
      if (!imageView)
      {
        v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v10 = self->_imageView;
        self->_imageView = v9;

        contentView = [(TUICandidateCell *)self contentView];
        [contentView addSubview:self->_imageView];

        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:imageCopy];
      setNeedsLayout = [(TUICandidateCell *)self setNeedsLayout];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v12 = self->_imageView;
      self->_imageView = 0;
    }

    v6 = imageCopy;
  }

  MEMORY[0x1EEE66BB8](setNeedsLayout, v6);
}

- (TUICandidateCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateCell;
  v3 = [(TUICandidateCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateCell *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  self->_alignment = 1;
  [(TUICandidateCell *)self _setFocusStyle:1];

  [(TUICandidateCell *)self setMinimumTextLabelHeight:42.0];
}

+ (UIEdgeInsets)outsetsForText:(id)text font:(id)font
{
  [text tui_languageAwareOutsetsForFont:font];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

+ (double)widthForText:(id)text font:(id)font layoutOrientation:(int64_t)orientation
{
  if (orientation)
  {
    [TUICandidateLabel lineWidthForText:text font:font layoutOrientation:orientation];
  }

  else
  {
    [text tui_optimizedSizeWithFont:font];
  }

  v8 = v7;
  [objc_opt_class() outsetsForText:text font:font];
  v10 = v9;
  v12 = v11;

  return v8 + ceil(v10 + v12);
}

+ (double)widthForCandidate:(id)candidate showCandidateNumber:(BOOL)number style:(id)style
{
  numberCopy = number;
  candidateCopy = candidate;
  styleCopy = style;
  if ([candidateCopy isSupplementalItemCandidate] && (objc_msgSend(styleCopy, "supplementalLexiconCandidateFont"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    supplementalLexiconCandidateFont = [styleCopy supplementalLexiconCandidateFont];
  }

  else
  {
    supplementalLexiconCandidateFont = [styleCopy candidateFont];
  }

  v12 = objc_opt_class();
  label = [candidateCopy label];
  [v12 widthForText:label font:supplementalLexiconCandidateFont layoutOrientation:{objc_msgSend(styleCopy, "layoutOrientation")}];
  v15 = v14;

  v16 = objc_opt_class();
  alternativeText = [candidateCopy alternativeText];
  alternativeTextFont = [styleCopy alternativeTextFont];
  [v16 widthForText:alternativeText font:alternativeTextFont layoutOrientation:{objc_msgSend(styleCopy, "layoutOrientation")}];
  v20 = v19;

  v21 = objc_opt_class();
  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
  [v21 widthForText:v23 font:supplementalLexiconCandidateFont layoutOrientation:{objc_msgSend(styleCopy, "layoutOrientation")}];
  v25 = v24;

  annotationText = [candidateCopy annotationText];
  v27 = [annotationText length];

  if (v27)
  {
    annotationText2 = [candidateCopy annotationText];
    v29 = UIKeyboardLocalizedString();
    annotationTextFont = [styleCopy annotationTextFont];
    [v29 tui_optimizedSizeWithFont:annotationTextFont];
    v32 = v31;
  }

  else
  {
    v32 = *MEMORY[0x1E695F060];
  }

  if (([candidateCopy candidateProperty] & 0x80) == 0)
  {
    if (v20 <= 0.0)
    {
      v25 = v15;
    }

    else
    {
      v33 = objc_opt_respondsToSelector();
      v34 = 5.0;
      if (v33)
      {
        [styleCopy alternativeTextLeftSpacing];
      }

      v25 = v15 + v20 + v34;
    }
  }

  [styleCopy minimumCellPadding];
  v36 = v25 + v35 * 2.0;
  if (v32 <= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = v32 + 5.0 + v36;
  }

  if (numberCopy)
  {
    layoutOrientation = [styleCopy layoutOrientation];
    candidateNumberFont = [styleCopy candidateNumberFont];
    [@"0" _legacy_sizeWithFont:candidateNumberFont];
    v41 = v40;
    v43 = v42;

    if (layoutOrientation)
    {
      v37 = v37 + v43 + 5.0;
    }

    else
    {
      v37 = v37 + v41 + 5.0;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    icon = [candidateCopy icon];

    if (icon)
    {
      icon2 = [candidateCopy icon];
      [icon2 size];
      v47 = v46;

      v48 = objc_opt_respondsToSelector();
      v49 = 20.0;
      if (v48)
      {
        [styleCopy maximumIconWidth];
      }

      if (v47 < v49)
      {
        v49 = v47;
      }

      v37 = v37 + v49 + 6.0;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    customView = [candidateCopy customView];

    if (customView)
    {
      customView2 = [candidateCopy customView];
      [customView2 intrinsicContentSize];
      v37 = v52;
    }
  }

  [styleCopy minimumCellWidth];
  if (v37 < v53)
  {
    v37 = v53;
  }

  return v37;
}

@end